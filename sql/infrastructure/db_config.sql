DO LANGUAGE plpgsql $proc$
BEGIN
execute $$alter database $$
        || current_database() 
        || $$ set search_path to '$user',$$ 
        || 'public,reports'
;END
$proc$;

\echo "Database configuration"
select datname as db ,setconfig as config 
from pg_database db 
join pg_db_role_setting s on db.oid = s.setdatabase  
where datname = current_database();
