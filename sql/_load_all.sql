\echo Start Database load
\set ON_ERROR_STOP on
\pset pager off
--\timing on
set client_min_messages to warning;


-- Acquire an exclusive lock to force sequential deploys
DO $func$
 DECLARE
   lock_acquired boolean;
 BEGIN
    SELECT pg_try_advisory_lock(hashtext('dataload')) INTO lock_acquired;
    IF NOT lock_acquired THEN
       RAISE EXCEPTION 'Deploy Failed! Can not acquire exclusive lock';
    ELSE
       RAISE NOTICE 'Deploy acquired exclusive lock.' ;
    END IF;
END;
$func$;

\ir infrastructure/_load.sql
\ir data/_load.sql

--\ir grants.sql

-- Release deploy lock
DO $func$
BEGIN
    PERFORM pg_advisory_unlock(hashtext('dataload'));
END;
$func$;

