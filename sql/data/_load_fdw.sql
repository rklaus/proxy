begin;
drop schema if exists loan_pro_fdw cascade;
create schema if not exists loan_pro_fdw authorization dw_owner;
grant usage on schema loan_pro_fdw to dw_proxy_load ;
ALTER DEFAULT PRIVILEGES IN SCHEMA loan_pro_fdw
    GRANT SELECT ON TABLES
    TO dw_proxy_load;


grant usage on schema loan_pro_fdw to enterprise_dw_read_only ;

set local search_path to loan_pro_fdw;
set local role dw_owner;

drop server if exists loan_pro_server cascade;
create server loan_pro_server
    foreign data wrapper mysql_fdw
  options(
      host 'sunupfinancialrds.cqmq6t3b5tdf.us-east-1.rds.amazonaws.com'
  );

drop user mapping if exists for public server loan_pro_server;
create user mapping for public
  SERVER loan_pro_server
  OPTIONS (username 'dw_proxy_user', password 'CVbSSK4U6pJpRE2MuMHExVq2xHVppym');


grant usage on foreign server loan_pro_server to public;

\set LP_SERVER loan_pro_server
\set LP_DBNAME $$sunupfinancial$$
\ir loan_pro_ft.sql
\set LP_SCHEMA_NAME loan_pro_fdw
\ir _system_note_customer_email.sql

commit;

begin;
drop schema if exists loan_pro_chorus_fdw cascade;
create schema if not exists loan_pro_chorus_fdw authorization dw_owner;
grant usage on schema loan_pro_chorus_fdw to dw_proxy_load ;
ALTER DEFAULT PRIVILEGES IN SCHEMA loan_pro_chorus_fdw
    GRANT SELECT ON TABLES
    TO dw_proxy_load;


grant usage on schema loan_pro_chorus_fdw to enterprise_dw_read_only ;

set local search_path to loan_pro_chorus_fdw;
set local role dw_owner;

drop server if exists loan_pro_chorus_server cascade;
create server loan_pro_chorus_server
    foreign data wrapper mysql_fdw
  options(
      host 'sunupfinancialrds.cqmq6t3b5tdf.us-east-1.rds.amazonaws.com'
  );

drop user mapping if exists for public server loan_pro_chorus_server;
create user mapping for public
  SERVER loan_pro_chorus_server
  OPTIONS (username 'dw_proxy_user', password 'CVbSSK4U6pJpRE2MuMHExVq2xHVppym');


grant usage on foreign server loan_pro_chorus_server to public;

\set LP_DBNAME $$db_6101c1217286d724_choruscreditllc$$
\set LP_SERVER loan_pro_chorus_server
\ir loan_pro_ft.sql
\set LP_SCHEMA_NAME loan_pro_chorus_fdw
\ir _system_note_customer_email.sql

commit;

-- LP Sandboxes
begin;
drop schema if exists loan_pro_sandbox cascade;
create schema if not exists loan_pro_sandbox authorization dw_owner;
grant usage on schema loan_pro_sandbox to dw_proxy_load ;
ALTER DEFAULT PRIVILEGES IN SCHEMA loan_pro_sandbox
    GRANT SELECT ON TABLES
    TO dw_proxy_load;

grant usage on schema loan_pro_sandbox to enterprise_dw_read_only ;

set local search_path to loan_pro_sandbox;
set local role dw_owner;

drop server if exists loan_pro_sandbox_server cascade;
create server loan_pro_sandbox_server
    foreign data wrapper mysql_fdw
  options(
      host 'sunupfinancialrds.cqmq6t3b5tdf.us-east-1.rds.amazonaws.com'
  );

drop user mapping if exists for public server loan_pro_sandbox_server;
create user mapping for public
  SERVER loan_pro_sandbox_server
  OPTIONS (username 'sunupfinancial', password 'gRiH&5T;8@3W');

\set LP_DBNAME $$sunupfinancial_API_Sandbox$$
\set LP_SERVER loan_pro_sandbox_server
\ir loan_pro_ft.sql
commit;

begin;
drop schema if exists loan_pro_chorus_sandbox cascade;
create schema if not exists loan_pro_chorus_sandbox authorization dw_owner;
grant usage on schema loan_pro_chorus_sandbox to dw_proxy_load ;
ALTER DEFAULT PRIVILEGES IN SCHEMA loan_pro_chorus_sandbox
    GRANT SELECT ON TABLES
    TO dw_proxy_load;

grant usage on schema loan_pro_chorus_sandbox to enterprise_dw_read_only ;

set local search_path to loan_pro_chorus_sandbox;
set local role dw_owner;

drop server if exists loan_pro_ch_sandbox_server cascade;
create server loan_pro_ch_sandbox_server
   foreign data wrapper mysql_fdw
 options(
     host 'sunupfinancialrds.cqmq6t3b5tdf.us-east-1.rds.amazonaws.com'
 );

drop user mapping if exists for public server loan_pro_ch_sandbox_server;
create user mapping for public
 SERVER loan_pro_ch_sandbox_server
 OPTIONS (username 'sunupsandbox', password 's@ndB0xD3v');

\set LP_DBNAME $$db_9b8f3f02f710a844_choruscreditsandbox$$
\set LP_SERVER loan_pro_ch_sandbox_server
\ir loan_pro_ft.sql
commit;

--
begin;
drop schema if exists balance_api_fdw cascade;
create schema if not exists balance_api_fdw authorization dw_owner;
grant usage on schema balance_api_fdw to enterprise_dw_read_only ;
grant usage on schema balance_api_fdw to dw_proxy_load ;
ALTER DEFAULT PRIVILEGES IN SCHEMA balance_api_fdw
    GRANT SELECT ON TABLES
    TO dw_proxy_load;


set local search_path to balance_api_fdw;
set local role dw_owner;

drop server if exists balance_api_server cascade;
create server balance_api_server FOREIGN DATA WRAPPER postgres_fdw options 
(host 'customer-site-prod.cjtyz5l7zjct.us-east-1.rds.amazonaws.com',
  port '5432', dbname 'balance_api')
;

drop user mapping if exists for public server balance_api_server;
create user mapping for public
  SERVER balance_api_server
  OPTIONS (user 'dw_stage_load', password 'j4nUEZgf#TeKs%ZD*UKs');


grant usage on foreign server balance_api_server to public;

\ir bapi_fdw_ft.sql

commit;
--

begin;
drop schema if exists balance_customer_fdw cascade;
create schema if not exists balance_customer_fdw authorization dw_owner;
grant usage on schema balance_customer_fdw to enterprise_dw_read_only ;
grant usage on schema balance_customer_fdw to dw_proxy_load ;
ALTER DEFAULT PRIVILEGES IN SCHEMA balance_customer_fdw
    GRANT SELECT ON TABLES
    TO dw_proxy_load;
set local search_path to balance_customer_fdw;
set local role dw_owner;

drop server if exists balance_customer_server cascade;
create server balance_customer_server FOREIGN DATA WRAPPER postgres_fdw options 
(host 'customer-site-prod.cjtyz5l7zjct.us-east-1.rds.amazonaws.com',
  port '5432', dbname 'balance_customer_site')
;

drop user mapping if exists for public server balance_customer_server;
create user mapping for public
  SERVER balance_customer_server
  OPTIONS (user 'dw_stage_load', password 'j4nUEZgf#TeKs%ZD*UKs');


grant usage on foreign server balance_customer_server to public;

\ir bacust_fdw_ft.sql

commit;
--


begin;

drop schema if exists gds_fdw cascade;
create schema if not exists gds_fdw authorization dw_owner;

grant usage on schema gds_fdw to enterprise_dw_read_only;
grant usage on schema gds_fdw to dw_proxy_load ;
ALTER DEFAULT PRIVILEGES IN SCHEMA gds_fdw
    GRANT SELECT ON TABLES
    TO dw_proxy_load;


set local search_path to gds_fdw;
set local role dw_owner;

drop server if exists gds_server cascade;
create server gds_server
    foreign data wrapper jdbc_fdw
  options(
    jarfile    'jtds.jar',
    drivername 'net.sourceforge.jtds.jdbc.Driver',
    url 'jdbc:jtds:sqlserver://34.199.238.105:1434/sourcepoint',
    maxheapsize '1024'
  );

drop user mapping if exists for public server gds_server;
create user mapping for public
  SERVER gds_server
  OPTIONS (username 'datawarehouse', password 'Experian#01');

grant usage on foreign server gds_server to public;

\ir gds_fdw_ft.sql

commit;

begin;

drop schema if exists epic_fdw cascade;
create schema if not exists epic_fdw authorization dw_owner;

grant usage on schema epic_fdw to enterprise_dw_read_only;

set local search_path to epic_fdw;
set local role dw_owner;

drop server if exists epic_server cascade;
create server epic_server
    foreign data wrapper jdbc_fdw
  options(
    jarfile    'jtds.jar',
    drivername 'net.sourceforge.jtds.jdbc.Driver',
    url 'jdbc:jtds:sqlserver://balance_db.epicloansystems.com:3413/EpicLoan_090S;ssl=require',
    maxheapsize '1024'
  );

drop user mapping if exists for public server epic_server;
create user mapping for public
  SERVER epic_server
  OPTIONS (username 'BALANCEUser', password 'yQTi$hc#H36EtHlR');


grant usage on foreign server epic_server to public;


\ir epic_fdw_ft.sql

commit;

---
-- b

begin;

drop schema if exists amazon_s3_fdw cascade;
create schema amazon_s3_fdw authorization dw_owner;


set local search_path to amazon_s3_fdw;
set local role dw_owner;

drop server if exists amazon_s3 cascade;
create server amazon_s3 foreign data wrapper multicorn
options (
  wrapper 's3fdw.s3fdw.S3Fdw'
);

drop user mapping if exists for public server amazon_s3;
CREATE USER MAPPING FOR public SERVER amazon_s3
OPTIONS (
-- "bctest01",
  amazon_access_key 'AKIAIRCQ2P4DEXLA53JQ',
  amazon_secret_key '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'
);

grant usage on foreign server amazon_s3 to public;

\ir amazon_s3_ft.sql

commit;

/*reverse data feed from EDW to BALANCE*/

--
begin;

drop schema if exists edw_new_fdw cascade;
create schema if not exists edw_new_fdw authorization dw_owner;
grant usage on schema edw_new_fdw to enterprise_dw_read_only ;

set local search_path to edw_new_fdw;
set local role dw_owner;

drop server if exists edw_new_server cascade;
create server edw_new_server FOREIGN DATA WRAPPER postgres_fdw options 
(host 'edw-prod.cjtyz5l7zjct.us-east-1.rds.amazonaws.com',
  port '5432', dbname 'enterprise_dw')
;

drop user mapping if exists for public server edw_new_server;
create user mapping for public
  SERVER edw_new_server
  OPTIONS (user 'dw_stage_load', password 'j4nUEZgf#TeKs%ZD*UKs');


grant usage on foreign server edw_new_server to public;

\ir edw_new_fdw_ft.sql

commit;

begin;
drop schema if exists edw_prod_to_stage_fdw cascade;
create schema if not exists edw_prod_to_stage_fdw authorization dw_owner;
grant usage on schema edw_prod_to_stage_fdw to enterprise_dw_read_only ;

set local role dw_owner;
set local search_path to edw_prod_to_stage_fdw;


\ir edw_prod_to_stage_fdw_ft.sql

commit;

begin;

drop schema if exists bsf_prod_ach cascade;
create schema bsf_prod_ach  authorization dw_owner;
set local search_path to bsf_prod_ach;
grant all on schema bsf_prod_ach to dw_proxy_load;

drop schema if exists bsf_prod_ach_bitemporal cascade;
create schema bsf_prod_ach_bitemporal  authorization dw_owner;
set local search_path to bsf_prod_ach_bitemporal;
grant all on schema bsf_prod_ach to dw_proxy_load;

drop schema if exists bsf_prod_common cascade;
create schema bsf_prod_common  authorization dw_owner;
set local search_path to bsf_prod_common;
grant all on schema bsf_prod_common to dw_proxy_load;

drop schema if exists bsf_prod_dm_chorus cascade;
create schema bsf_prod_dm_chorus  authorization dw_owner;
set local search_path to bsf_prod_dm_chorus;
grant all on schema bsf_prod_dm_chorus to dw_proxy_load;

drop schema if exists bsf_prod_identity cascade;
create schema bsf_prod_identity  authorization dw_owner;
set local search_path to bsf_prod_identity;
grant all on schema bsf_prod_identity to dw_proxy_load;

drop schema if exists bsf_prod_origination cascade;
create schema bsf_prod_origination  authorization dw_owner;
set local search_path to bsf_prod_origination;
grant all on schema bsf_prod_origination to dw_proxy_load;

drop schema if exists bsf_prod_catalog cascade;
create schema bsf_prod_catalog  authorization dw_owner;
set local search_path to bsf_prod_catalog;
grant all on schema bsf_prod_catalog to dw_proxy_load;

set local role dw_owner;

drop server if exists bsf_prod_server cascade;
create server bsf_prod_server FOREIGN DATA WRAPPER postgres_fdw options 
(host 'sunup-ecs-prod.cjtyz5l7zjct.us-east-1.rds.amazonaws.com',
  port '5432', dbname 'bsf')
;

drop user mapping if exists for public server bsf_prod_server;
create user mapping for public
  SERVER bsf_prod_server
  OPTIONS (user 'dw_stage_load', password 'j4nUEZgf#TeKs%ZD*UKs');

\ir  bsf_prod_ach_ft.sql

\ir  bsf_prod_ach_bitemporal_ft.sql

\ir  bsf_prod_common_ft.sql

\ir  bsf_prod_dm_chorus_ft.sql

\ir  bsf_prod_identity_ft.sql

\ir  bsf_prod_origination_ft.sql
   
\ir  bsf_prod_catalog_ft.sql

commit;

