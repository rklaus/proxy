
DROP FOREIGN TABLE IF EXISTS bsf_prod_catalog.tables;
CREATE FOREIGN TABLE bsf_prod_catalog.tables 
(
    table_catalog text NULL,
    table_schema text NULL,
    table_name text NULL,
    table_type text NULL,
    self_referencing_column_name text NULL,
    reference_generation text NULL,
    user_defined_type_catalog text NULL,
    user_defined_type_schema text NULL,
    user_defined_type_name text NULL,
    is_insertable_into text NULL,
    is_typed text NULL,
    commit_action text NULL
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'information_schema',
      table_name  'tables'
    );


DROP FOREIGN TABLE IF EXISTS bsf_prod_catalog.columns;
CREATE FOREIGN TABLE bsf_prod_catalog.columns 
(
    table_catalog text NULL,
    table_schema text NULL,
    table_name text NULL,
    column_name text NULL,
    ordinal_position integer NULL,
    column_default text NULL,
    is_nullable text NULL,
    data_type text NULL,
    character_maximum_length integer NULL,
    character_octet_length integer NULL,
    numeric_precision integer NULL,
    numeric_precision_radix integer NULL,
    numeric_scale integer NULL,
    datetime_precision integer NULL,
    interval_type text NULL,
    interval_precision integer NULL,
    character_set_catalog text NULL,
    character_set_schema text NULL,
    character_set_name text NULL,
    collation_catalog text NULL,
    collation_schema text NULL,
    collation_name text NULL,
    domain_catalog text NULL,
    domain_schema text NULL,
    domain_name text NULL,
    udt_catalog text NULL,
    udt_schema text NULL,
    udt_name text NULL,
    scope_catalog text NULL,
    scope_schema text NULL,
    scope_name text NULL,
    maximum_cardinality integer NULL,
    dtd_identifier text NULL,
    is_self_referencing text NULL,
    is_identity text NULL,
    identity_generation text NULL,
    identity_start text NULL,
    identity_increment text NULL,
    identity_maximum text NULL,
    identity_minimum text NULL,
    identity_cycle text NULL,
    is_generated text NULL,
    generation_expression text NULL,
    is_updatable text NULL
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'information_schema',
      table_name  'columns'
    );
