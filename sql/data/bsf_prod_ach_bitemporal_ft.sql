set role to dw_owner;

drop foreign table if exists bsf_prod_ach_bitemporal.achfileheader cascade;
create foreign table bsf_prod_ach_bitemporal.achfileheader
(
  achfileheader_key int,
  achfileheader_id integer,
  immediateoriginname text,
  immediateoriginidentificationnumber bigint,
  immediatedestinationname text,
  immediatedestinationroutingnumber bigint,
  referencecode text,
  last_updated timestamptz,
  effective temporal_relationships.timeperiod,
  asserted temporal_relationships.timeperiod,
  row_created_at timestamp with time zone 
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach_bitemporal',
      table_name  'achfileheader'
    );
  grant select on bsf_prod_ach_bitemporal.achfileheader  to dw_proxy_load;  
  
  drop foreign table if exists bsf_prod_ach_bitemporal.achbatchheader cascade;
  CREATE foreign table bsf_prod_ach_bitemporal.achbatchheader
(
  achbatchheader_key integer,
  achbatchheader_id integer,
  achfileheader_id integer,
  companyname text,
  companydiscretionarydata text,
  companyidentificationnumber text,
  companyentrydescription text,
  originatingdfiroutingnumber bigint,
  last_updated timestamptz,
  effective temporal_relationships.timeperiod,
  asserted temporal_relationships.timeperiod,
  row_created_at timestamp with time zone 
) 
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach_bitemporal',
      table_name  'achbatchheader'
    );
  grant select on bsf_prod_ach_bitemporal.achbatchheader  to dw_proxy_load;  


DROP FOREIGN TABLE IF EXISTS bsf_prod_ach_bitemporal.achendpoint CASCADE;
CREATE FOREIGN TABLE bsf_prod_ach_bitemporal.achendpoint
(
  achendpoint_key int,
  achendpoint_id integer,
  endpointname text,
  endpointnameorig text,
  endpointnamepymt text,
  endpointtype text,
  loanowner text,
  loanoriginalowner text,
  state character varying(2),
  effective temporal_relationships.timeperiod,
  asserted temporal_relationships.timeperiod,
  row_created_at timestamp with time ZONE,
  filebatch text,
  achbatchheaderorig_id int4,
  achbatchheaderpymt_id int4,
  last_updated timestamptz,
  product text,
  brand text
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach_bitemporal',
      table_name  'achendpoint'
    );
GRANT SELECT ON bsf_prod_ach_bitemporal.achendpoint TO dw_proxy_load;
   
DROP FOREIGN TABLE IF EXISTS bsf_prod_ach_bitemporal.achfile CASCADE;
CREATE FOREIGN TABLE bsf_prod_ach_bitemporal.achfile
(
  achfile_key int,
  file_id integer,
  filename text,
  filetype text,
  createddate timestamp without time zone,
  generateddate timestamp without time zone,
  downloadeddate timestamp without time zone,
  effective temporal_relationships.timeperiod,
  asserted temporal_relationships.timeperiod,
  row_created_at timestamp with time zone,
  endpointtype text,
  filebatch text,
  isfilesent integer,
  last_updated timestamptz,
  isfilesentverified integer,
  product text,
  brand text
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach_bitemporal',
      table_name  'achfile'
    );
GRANT SELECT ON bsf_prod_ach_bitemporal.achfile TO dw_proxy_load;
  
drop foreign table if exists bsf_prod_ach_bitemporal.achbatchrecordqueue cascade;
CREATE foreign table bsf_prod_ach_bitemporal.achbatchrecordqueue
(
  achbatchrecordqueue_key int,
  achbatchrecord_id integer,
  loan_id integer,
  payment_id integer,
  transaction_id text,
  isorigination integer,
  loan_owner text,
  endpointtype text,
  endpointname text,
  amount numeric(18,2),
  effective_date date,
  bankname text,
  bankroutingnumber text,
  bankaccountnumber text,
  bankaccounttype text,
  firstname text,
  lastname text,
  address1 text,
  address2 text,
  city text,
  state character varying(2),
  zipcode character varying(10),
  email text,
  phone text,
  loanoriginalowner text,
  filebatch text,
  effective temporal_relationships.timeperiod,
  asserted temporal_relationships.timeperiod,
  row_created_at timestamp with time zone,
  last_updated timestamptz,
  product text,
  brand text
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach_bitemporal',
      table_name  'achbatchrecordqueue'
    );
  grant select on bsf_prod_ach_bitemporal.achbatchrecordqueue  to dw_proxy_load;  
  
drop foreign table if exists bsf_prod_ach_bitemporal.achfilerecord  cascade;
create foreign table bsf_prod_ach_bitemporal.achfilerecord 
( 
  achfilerecord_key int,
  achfilerecord_id integer,
  file_id integer,
  loan_id integer,
  payment_id integer,
  transaction_id text,
  isorigination integer,
  amount numeric(10,2),
  effectivedate date,
  bankname text,
  bankroutingnumber text,
  bankaccountnumber text,
  bankaccounttype text,
  firstname text,
  lastname text,
  address1 text,
  address2 text,
  city text,
  state character varying(2),
  zipcode character varying(10),
  email text,
  phone text,
  endpointname text,
  effective temporal_relationships.timeperiod,
  asserted temporal_relationships.timeperiod,
  row_created_at timestamp with time zone, 
  last_updated timestamptz,
  product text,
  brand text
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach_bitemporal',
      table_name  'achfilerecord'
    );
  grant select on bsf_prod_ach_bitemporal.achfilerecord  to dw_proxy_load;  
  
drop foreign table if exists bsf_prod_ach_bitemporal.returnfile cascade;
create foreign table bsf_prod_ach_bitemporal.returnfile
( 
  returnfile_key int,
  returnfile_id integer,
  filename text,
  uploaded_datetime timestamp without time zone,
  effective temporal_relationships.timeperiod,
  asserted temporal_relationships.timeperiod,
  row_created_at timestamp with time zone,
  last_updated timestamptz,
  product text,
  brand text
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach_bitemporal',
      table_name  'returnfile'
    );
  grant select on bsf_prod_ach_bitemporal.returnfile  to dw_proxy_load;  
  
drop foreign table if exists bsf_prod_ach_bitemporal.returnfilerecord cascade;
create foreign table bsf_prod_ach_bitemporal.returnfilerecord 
( 
  returnfilerecord_key int,
  returnfilerecord_id integer,
  transaction_id text,
  amount numeric(18,2),
  returncode character varying(3),
  full_name text,
  returndate date,
  processed_datetime timestamp without time zone,
  errormessage text,
  originalachrecord_id integer,
  returnfile_id integer,
  effective temporal_relationships.timeperiod,
  asserted temporal_relationships.timeperiod,
  row_created_at timestamp with time zone,
  last_updated timestamptz,
  product text,
  brand text
) 
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach_bitemporal',
      table_name  'returnfilerecord'
    );
  grant select on bsf_prod_ach_bitemporal.returnfilerecord  to dw_proxy_load;  
  
