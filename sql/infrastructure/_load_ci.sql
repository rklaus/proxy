-- Do NOT run in production

begin;

create temp table ci_granted_names ( rolname )
on commit drop
as values 
  ('hettie')
,('dw_proxy_load')
;

DO $f$
DECLARE
  rec record;
  role_comment text DEFAULT 'for CI testing';
BEGIN
  FOR rec IN 
        with users_needed as ( select rolname from ci_granted_names )
        select rolname 
         from pg_roles r right outer join users_needed n using (rolname)
         where r.rolname is null
  LOOP
    execute format('CREATE USER %I;COMMENT ON ROLE %I is %L', 
                      rec.rolname,    rec.rolname,    role_comment );
            
  END LOOP;
END; $f$;

commit;
