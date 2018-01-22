/*
 * Installation of foreign Data Wrappers & FDW extentions
 * This is creates an abstraction layer between the create server
 * code and the FDW implementation. This allows the loading code
 * to be used in production and a testing environement where
 * the dummy_fdw can be used instead.
 *
 * Copyright 2016 Scale Genius, Inc
 * Licensed to Balanced Credit per contract.
*/
\pset pager off
\echo "Installing Foreign data wrappers"
begin;
-- Important: handles the unset variable case
\set CI  :'CI'

create schema "$$fdw_check$$";
set local search_path = '$$fdw_check$$','public';

create type fdw_configuration as (
    fdwname name
  , has_extension boolean
  , production_handler name
  , production_validator name
  , ci_handler name
  , ci_validator name)
;

drop table IF exists fdw_configurations;
create temp table fdw_configurations of fdw_configuration ;

\ir fdw_config.sql

-- validate_fdw:
-- Uses true SQL trivalue logic
--  return code - meaning
--  true        - compelte success
--  false       - misconfigured fdw
--  null        - missing fdw
CREATE OR REPLACE 
FUNCTION validate_fdw(fdw_name name, handler_name name,  validator_name name)
RETURNS boolean language plpgsql as $f$
DECLARE
  fdwrec record;
  fdw_h_exists boolean DEFAULT false;
  fdw_v_exists boolean DEFAULT false;
  fdw_exists boolean DEFAULT false;
BEGIN
    raise notice 'validate_fdw';
    SELECT fdw.fdwname, pg_catalog.pg_get_userbyid(fdw.fdwowner) AS "owner"
          , h.proname AS "handler", h.oid  as h_oid
          ,v.proname AS "validator", v.oid  as v_oid
    INTO fdwrec
    FROM pg_catalog.pg_foreign_data_wrapper fdw
        left outer join pg_proc h on fdw.fdwhandler = h.oid
        left outer join pg_proc v on fdw.fdwvalidator = v.oid
    WHERE fdw.fdwname = fdw_name ;
    IF NOT FOUND THEN
      RETURN null; -- missing FDW
    END IF;
    fdw_exists := true;
    IF coalesce(fdwrec.handler,'') = coalesce(handler_name,'') THEN
       fdw_h_exists:= true;
    END IF;
    IF coalesce(fdwrec.validator,'') = coalesce(validator_name,'') THEN
       fdw_v_exists:= true;
    END IF;
   RETURN (fdw_exists and fdw_h_exists and fdw_v_exists);
END;
$f$;

CREATE OR REPLACE
FUNCTION create_fdw_stmt(fdw_name name, handler_name name,  validator_name name)
RETURNS text language plpgsql as $f$
DECLARE
   r record;
   create_stmt text;
   handler_stmt text;
   validator_stmt text;
BEGIN
    raise notice 'create_fdw_stmt';
    create_stmt := 'CREATE FOREIGN DATA WRAPPER' ;
    IF validator_name is not null THEN
      validator_stmt := format('VALIDATOR %I',validator_name);
    END IF;
    IF handler_name is not null THEN
      handler_stmt := format('HANDLER %I',handler_name);
    END IF;
    RETURN format('%s %I %s %s',create_stmt, fdw_name, handler_stmt, validator_stmt);
END;
$f$;
CREATE OR REPLACE
FUNCTION create_fdw(fdw_name name, handler_name name,  validator_name name)
RETURNS text language plpgsql as $f$
DECLARE
   r record;
   stmt text DEFAULT '';
   validation boolean;
   drop_stmt text DEFAULT '';
   create_stmt text;
BEGIN
    raise notice 'create_fdw';

    validation := validate_fdw(fdw_name, handler_name, validator_name);
    IF validation is null or not validation THEN
      create_stmt := create_fdw_stmt(fdw_name, handler_name, validator_name);
      IF not validation THEN
        RAISE NOTICE 'Dropping & Recreating FDW "%".', fdw_name;
        PERFORM * from pg_extension where extname = fdw_name;
        IF FOUND THEN
          drop_stmt := format('DROP EXTENSION %I cascade;', fdw_name);
        ELSE
          drop_stmt := format('DROP FOREIGN DATA WRAPPER %I CASCADE;', fdw_name);
        END IF;
      END IF;
    END IF;
    stmt := format('%s%s', drop_stmt, create_stmt);
    return stmt;
END;
$f$;

CREATE OR REPLACE
FUNCTION use_extension(has_extension boolean, handler name, validator name)
RETURNS boolean language plpgsql as $f$
BEGIN
  If has_extension THEN
     IF handler is null and validator is null THEN
        RETURN true;
     END IF;
  END IF;
  RETURN false;
END;
$f$;

CREATE OR REPLACE
FUNCTION use_extension_ci(r fdw_configuration)
returns boolean language sql as $f$
  select use_extension(r.has_extension ,r.ci_handler ,r.ci_validator );
$f$;

CREATE OR REPLACE
FUNCTION use_extension_production(r fdw_configuration)
RETURNS boolean language sql as $f$
  select use_extension( r.has_extension, r.production_handler ,r.production_validator );
$f$;

-- true on full success, false on misconfigured and null on missing
CREATE OR REPLACE
FUNCTION validate_extension_fdw(name)
RETURNS boolean LANGUAGE plpgsql as $f$
DECLARE
  rec record;
  fdwrec record;
  n int;
  fdw_extname ALIAS for $1;
  ext_exists boolean := false;
  fdw_exists boolean := false;
  fdw_v_exists boolean := false;
  fdw_h_exists boolean := false;
BEGIN
    raise notice 'validate_extension_fdw';
    PERFORM * from pg_extension where extname = fdw_extname;
    IF NOT FOUND THEN
      RETURN null;
    END IF;
    ext_exists := true;
    select oid, * into fdwrec from pg_foreign_data_wrapper where fdwname = fdw_extname;
    -- unnest(array[oid, fdwhandler, fdwvalidator])
    IF NOT FOUND THEN
       RETURN false;
    END IF;
    fdw_exists := true;

    FOR rec IN
        select
          d.objid as obj_oid
        , o.type as obj_type, o.schema as obj_schema, o.name as obj_name
        , r.type as ref_type, r.schema as ref_schema, r.name as ref_name
        , d.refobjid as ref_oid
          from pg_depend d
          join pg_extension e on e.oid = d.refobjid
        , pg_identify_object(d.classid,d.objid,d.objsubid) o
        , pg_identify_object(d.refclassid,d.refobjid,d.refobjsubid) r
          where deptype = 'e' and e.extname  = fdw_extname
        and d.objid in ( fdwrec.oid , fdwrec.fdwhandler, fdwrec.fdwvalidator)
    LOOP
        CASE rec.obj_type
          when 'function' THEN
            IF rec.obj_oid = fdwrec.fdwvalidator THEN
                fdw_v_exists := true;
            END IF;
            IF rec.obj_oid = fdwrec.fdwhandler THEN
                fdw_h_exists := true;
            END IF;
          when 'foreign-data wrapper' THEN
            IF rec.obj_oid = fdwrec.oid THEN
                fdw_exists := true;
            END IF;
        END CASE;
    END LOOP;
    return (ext_exists and fdw_exists and fdw_h_exists and fdw_v_exists);
END;
$f$;


CREATE OR REPLACE
FUNCTION create_extension(fdw_name name)
RETURNS text LANGUAGE plpgsql as $f$
DECLARE
  stmt text;
  validation boolean;
BEGIN
    raise notice 'create_extension';
    validation := validate_extension_fdw(fdw_name);
    IF validation is null or not validation THEN
      stmt := format('CREATE EXTENSION %I WITH SCHEMA "public"', fdw_name );
      IF not validation THEN
        RAISE NOTICE 'Dropping & Recreating extension "%".', fdw_name;
        stmt := format('DROP extension %I CASCADE;%s', fdw_name, stmt);
      END IF;
    END IF;
    RETURN stmt;
END;
$f$;

CREATE OR REPLACE
FUNCTION load_fdw(r fdw_configuration, ci_env boolean )
RETURNS text LANGUAGE plpgsql as $f$
DECLARE
   stmt text DEFAULT '';
   create_stmt text ;
   drop_stmt text ;
BEGIN
    raise notice 'load_fdw';
    IF ci_env THEN
        IF use_extension_ci(r) THEN
            stmt := create_extension(r.fdwname);
        ELSE
            stmt := create_fdw(r.fdwname, r.ci_handler, r.ci_validator);
        END IF;
    ELSE
        IF use_extension_production(r) THEN
            stmt := create_extension(r.fdwname);
        ELSE
            stmt := create_fdw(r.fdwname, r.production_handler, r.production_validator);
        END IF;
    END IF;
    return stmt;
END;
$f$;

CREATE OR REPLACE
FUNCTION print_path() returns void
language plpgsql as $$
DECLARE
  t text;
BEGIN
    raise notice 'validate_fdw';
   select setting into t from pg_settings where name = 'search_path';
   raise NOTICE 'search_path is %', t ;
END;
$$;

CREATE OR REPLACE
FUNCTION load_ext(ci_env boolean, OUT fdw_name text, OUT status text)
RETURNS SETOF record
LANGUAGE plpgsql as $$
DECLARE
  r fdw_configuration;
  load_stmt text;
  stmt text;
  grant_stmt text;
  t text;
BEGIN
    raise notice 'load_ext';
  IF ci_env THEN
      RAISE NOTICE 'Using CI environment FDW' ;
  ELSE
      RAISE NOTICE 'Using Production environment FDW' ;
  END IF;
  FOR r in select * from fdw_configurations
  LOOP
    load_stmt := load_fdw(r, ci_env);
    grant_stmt := format('grant usage on foreign data wrapper %I to dw_owner', r.fdwname );
    begin
      fdw_name := r.fdwname::text;
      IF load_stmt = '' THEN
        status :=  'ok';
      ELSE
        status := 'rebuild';
      END IF;
      stmt := format('%s;%s;', load_stmt, grant_stmt);
--      raise NOTICE 'DEBUG %', stmt ;
      execute stmt;
      RETURN NEXt ;
    EXCEPTION
      WHEN OTHERS THEN
        fdw_name := r.fdwname::text;
        status := format('failed: %s', SQLERRM)::text;
        RETURN NEXT;
    END;
  END loop;
  return;
END;
$$;

-- only run CI IF explictly set to true
CREATE OR REPLACE
FUNCTION load_ext(x text, OUT fdw_name text, OUT status text)
RETURNS SETOF record
language plpgsql as $$
DECLARE
  a boolean;
BEGIN
    raise notice 'load_ext';
    begin
      -- a := cast(x as boolean);
      a := cast(trim(both '''' from x) as boolean );
    EXCEPTION
       WHEN OTHERS THEN
          a := false;
    END;
    RETURN QUERY select * from load_ext(a);
END;
$$;

-- Main call to check and install FDWs
select * from "$$fdw_check$$".load_ext(:'CI');

DROP TABLE fdw_configurations;
DROP SCHEMA "$$fdw_check$$" CASCADE;
COMMIT;

\echo "Installed Extensions."
\dx
\echo "Installed FDWs."
\dew
