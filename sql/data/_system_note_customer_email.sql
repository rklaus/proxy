DROP VIEW IF EXISTS :LP_SCHEMA_NAME."_system_note_customer_email";

create or replace view :LP_SCHEMA_NAME._system_note_customer_email as
select * from :LP_SCHEMA_NAME.system_note_entity where
entity_type='Entity.Customer'
and operation_sub_type = 'systemNote.operationSubtype.email';
alter view :LP_SCHEMA_NAME._system_note_customer_email  owner to dw_owner;
grant select on :LP_SCHEMA_NAME._system_note_customer_email  to dw_proxy_load;
