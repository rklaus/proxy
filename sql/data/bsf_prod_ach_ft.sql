create foreign table bsf_prod_ach.achfileheader
(
  achfileheader_id integer ,
  immediateoriginname text,
  immediateoriginidentificationnumber bigint,
  immediatedestinationname text,
  immediatedestinationroutingnumber bigint,
  referencecode text)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach',
      table_name  'achfileheader'
    );
  grant select on bsf_prod_ach.achfileheader  to dw_proxy_load;  
  
  CREATE foreign table bsf_prod_ach.achbatchheader
(
  achbatchheader_id integer NOT NULL,
  achfileheader_id integer,
  companyname text,
  companydiscretionarydata text,
  companyidentificationnumber text,
  companyentrydescription text,
  originatingdfiroutingnumber bigint
     ) 
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach',
      table_name  'achbatchheader'
    );
  grant select on bsf_prod_ach.achbatchheader  to dw_proxy_load;  



create  foreign table bsf_prod_ach.achendpoint
(achendpoint_id integer NOT NULL,
  endpointname text,
  endpointnameorig text,
  endpointnamepymt text,
  endpointtype text,
  loanowner text,
  loanoriginalowner text,
  filebatch text,
  state character varying(2),
  achbatchheaderorig_id integer,
  achbatchheaderpymt_id integer
) 
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach',
      table_name  'achendpoint'
    );
  grant select on bsf_prod_ach.achendpoint  to dw_proxy_load; 
   
drop foreign table if exists bsf_prod_ach.achfile  cascade; 
create foreign table bsf_prod_ach.achfile 
  (file_id integer NOT NULL,
  filename text,
  filetype text,
  createddate timestamp without time zone,
  generateddate timestamp without time zone,
  downloadeddate timestamp without time zone,
  endpointtype text,
  filebatch text,
  isfilesent integer   
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach',
      table_name  'achfile'
    );
  grant select on bsf_prod_ach.achfile  to dw_proxy_load;  
  

CREATE foreign table bsf_prod_ach.achbatchrecordqueue
(
  achbatchrecord_id integer NOT NULL,
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
  filebatch text
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach',
      table_name  'achbatchrecordqueue'
    );
  grant select on bsf_prod_ach.achbatchrecordqueue  to dw_proxy_load;  
  

create foreign table bsf_prod_ach.achfilerecord 
(  achfilerecord_id integer,
   file_id   int    ,
   loan_id   int    ,
   payment_id   int    ,
   transaction_id   text   ,
   isorigination   integer    ,
   amount   numeric (18, 2)   ,
   effectivedate   date    ,
   bankname   text   ,
   bankroutingnumber   text   ,
   bankaccountnumber   text   ,
   bankaccounttype   text   ,
   firstname   text   ,
   lastname   text   ,
   address1   text   ,
   address2   text   ,
   city   text   ,
   state   varchar (2)   ,
   zipcode   varchar (10)   ,
   email   text   ,
   phone   text   ,
   endpointname text) 
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach',
      table_name  'achfilerecord'
    );
  grant select on bsf_prod_ach.achfilerecord  to dw_proxy_load;  
  

create foreign table bsf_prod_ach.returnfile
( returnfile_id integer,
  filename  text  ,
  uploaded_datetime  timestamp
)
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach',
      table_name  'returnfile'
    );
  grant select on bsf_prod_ach.returnfile  to dw_proxy_load;  
  

create foreign table bsf_prod_ach.returnfilerecord 
( returnfilerecord_id integer,
   transaction_id   text   ,
   amount   numeric (18, 2)   ,
   returncode   varchar (3)   ,
   full_name   text   ,
   returndate   date    ,
   processed_datetime  timestamp   ,
   errormessage   text   ,
   originalachrecord_id   int    ,
   returnfile_id   int 
) 
  SERVER "bsf_prod_server"
    OPTIONS (
      schema_name 'ach',
      table_name  'returnfilerecord'
    );
  grant select on bsf_prod_ach.returnfilerecord  to dw_proxy_load;  
  
