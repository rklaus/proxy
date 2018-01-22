SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(179);

SELECT has_foreign_table(
    'bsf_prod_catalog', 'columns',
    'Should have foreign table bsf_prod_catalog.columns'
);

SELECT hasnt_pk(
    'bsf_prod_catalog', 'columns',
    'Table bsf_prod_catalog.columns should have a primary key'
);

SELECT columns_are('bsf_prod_catalog'::name, 'columns'::name, ARRAY[
    'table_catalog'::name,
    'table_schema'::name,
    'table_name'::name,
    'column_name'::name,
    'ordinal_position'::name,
    'column_default'::name,
    'is_nullable'::name,
    'data_type'::name,
    'character_maximum_length'::name,
    'character_octet_length'::name,
    'numeric_precision'::name,
    'numeric_precision_radix'::name,
    'numeric_scale'::name,
    'datetime_precision'::name,
    'interval_type'::name,
    'interval_precision'::name,
    'character_set_catalog'::name,
    'character_set_schema'::name,
    'character_set_name'::name,
    'collation_catalog'::name,
    'collation_schema'::name,
    'collation_name'::name,
    'domain_catalog'::name,
    'domain_schema'::name,
    'domain_name'::name,
    'udt_catalog'::name,
    'udt_schema'::name,
    'udt_name'::name,
    'scope_catalog'::name,
    'scope_schema'::name,
    'scope_name'::name,
    'maximum_cardinality'::name,
    'dtd_identifier'::name,
    'is_self_referencing'::name,
    'is_identity'::name,
    'identity_generation'::name,
    'identity_start'::name,
    'identity_increment'::name,
    'identity_maximum'::name,
    'identity_minimum'::name,
    'identity_cycle'::name,
    'is_generated'::name,
    'generation_expression'::name,
    'is_updatable'::name
]);

SELECT has_column(       'bsf_prod_catalog', 'columns', 'table_catalog', 'Column bsf_prod_catalog.columns.table_catalog should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'table_catalog', 'text', 'Column bsf_prod_catalog.columns.table_catalog should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'table_catalog', 'Column bsf_prod_catalog.columns.table_catalog should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'table_catalog', 'Column bsf_prod_catalog.columns.table_catalog should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'table_schema', 'Column bsf_prod_catalog.columns.table_schema should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'table_schema', 'text', 'Column bsf_prod_catalog.columns.table_schema should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'table_schema', 'Column bsf_prod_catalog.columns.table_schema should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'table_schema', 'Column bsf_prod_catalog.columns.table_schema should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'table_name', 'Column bsf_prod_catalog.columns.table_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'table_name', 'text', 'Column bsf_prod_catalog.columns.table_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'table_name', 'Column bsf_prod_catalog.columns.table_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'table_name', 'Column bsf_prod_catalog.columns.table_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'column_name', 'Column bsf_prod_catalog.columns.column_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'column_name', 'text', 'Column bsf_prod_catalog.columns.column_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'column_name', 'Column bsf_prod_catalog.columns.column_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'column_name', 'Column bsf_prod_catalog.columns.column_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'ordinal_position', 'Column bsf_prod_catalog.columns.ordinal_position should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'ordinal_position', 'integer', 'Column bsf_prod_catalog.columns.ordinal_position should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'ordinal_position', 'Column bsf_prod_catalog.columns.ordinal_position should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'ordinal_position', 'Column bsf_prod_catalog.columns.ordinal_position should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'column_default', 'Column bsf_prod_catalog.columns.column_default should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'column_default', 'text', 'Column bsf_prod_catalog.columns.column_default should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'column_default', 'Column bsf_prod_catalog.columns.column_default should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'column_default', 'Column bsf_prod_catalog.columns.column_default should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'is_nullable', 'Column bsf_prod_catalog.columns.is_nullable should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'is_nullable', 'text', 'Column bsf_prod_catalog.columns.is_nullable should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'is_nullable', 'Column bsf_prod_catalog.columns.is_nullable should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'is_nullable', 'Column bsf_prod_catalog.columns.is_nullable should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'data_type', 'Column bsf_prod_catalog.columns.data_type should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'data_type', 'text', 'Column bsf_prod_catalog.columns.data_type should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'data_type', 'Column bsf_prod_catalog.columns.data_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'data_type', 'Column bsf_prod_catalog.columns.data_type should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'character_maximum_length', 'Column bsf_prod_catalog.columns.character_maximum_length should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'character_maximum_length', 'integer', 'Column bsf_prod_catalog.columns.character_maximum_length should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'character_maximum_length', 'Column bsf_prod_catalog.columns.character_maximum_length should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'character_maximum_length', 'Column bsf_prod_catalog.columns.character_maximum_length should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'character_octet_length', 'Column bsf_prod_catalog.columns.character_octet_length should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'character_octet_length', 'integer', 'Column bsf_prod_catalog.columns.character_octet_length should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'character_octet_length', 'Column bsf_prod_catalog.columns.character_octet_length should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'character_octet_length', 'Column bsf_prod_catalog.columns.character_octet_length should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'numeric_precision', 'Column bsf_prod_catalog.columns.numeric_precision should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'numeric_precision', 'integer', 'Column bsf_prod_catalog.columns.numeric_precision should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'numeric_precision', 'Column bsf_prod_catalog.columns.numeric_precision should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'numeric_precision', 'Column bsf_prod_catalog.columns.numeric_precision should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'numeric_precision_radix', 'Column bsf_prod_catalog.columns.numeric_precision_radix should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'numeric_precision_radix', 'integer', 'Column bsf_prod_catalog.columns.numeric_precision_radix should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'numeric_precision_radix', 'Column bsf_prod_catalog.columns.numeric_precision_radix should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'numeric_precision_radix', 'Column bsf_prod_catalog.columns.numeric_precision_radix should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'numeric_scale', 'Column bsf_prod_catalog.columns.numeric_scale should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'numeric_scale', 'integer', 'Column bsf_prod_catalog.columns.numeric_scale should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'numeric_scale', 'Column bsf_prod_catalog.columns.numeric_scale should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'numeric_scale', 'Column bsf_prod_catalog.columns.numeric_scale should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'datetime_precision', 'Column bsf_prod_catalog.columns.datetime_precision should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'datetime_precision', 'integer', 'Column bsf_prod_catalog.columns.datetime_precision should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'datetime_precision', 'Column bsf_prod_catalog.columns.datetime_precision should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'datetime_precision', 'Column bsf_prod_catalog.columns.datetime_precision should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'interval_type', 'Column bsf_prod_catalog.columns.interval_type should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'interval_type', 'text', 'Column bsf_prod_catalog.columns.interval_type should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'interval_type', 'Column bsf_prod_catalog.columns.interval_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'interval_type', 'Column bsf_prod_catalog.columns.interval_type should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'interval_precision', 'Column bsf_prod_catalog.columns.interval_precision should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'interval_precision', 'integer', 'Column bsf_prod_catalog.columns.interval_precision should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'interval_precision', 'Column bsf_prod_catalog.columns.interval_precision should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'interval_precision', 'Column bsf_prod_catalog.columns.interval_precision should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'character_set_catalog', 'Column bsf_prod_catalog.columns.character_set_catalog should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'character_set_catalog', 'text', 'Column bsf_prod_catalog.columns.character_set_catalog should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'character_set_catalog', 'Column bsf_prod_catalog.columns.character_set_catalog should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'character_set_catalog', 'Column bsf_prod_catalog.columns.character_set_catalog should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'character_set_schema', 'Column bsf_prod_catalog.columns.character_set_schema should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'character_set_schema', 'text', 'Column bsf_prod_catalog.columns.character_set_schema should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'character_set_schema', 'Column bsf_prod_catalog.columns.character_set_schema should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'character_set_schema', 'Column bsf_prod_catalog.columns.character_set_schema should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'character_set_name', 'Column bsf_prod_catalog.columns.character_set_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'character_set_name', 'text', 'Column bsf_prod_catalog.columns.character_set_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'character_set_name', 'Column bsf_prod_catalog.columns.character_set_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'character_set_name', 'Column bsf_prod_catalog.columns.character_set_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'collation_catalog', 'Column bsf_prod_catalog.columns.collation_catalog should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'collation_catalog', 'text', 'Column bsf_prod_catalog.columns.collation_catalog should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'collation_catalog', 'Column bsf_prod_catalog.columns.collation_catalog should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'collation_catalog', 'Column bsf_prod_catalog.columns.collation_catalog should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'collation_schema', 'Column bsf_prod_catalog.columns.collation_schema should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'collation_schema', 'text', 'Column bsf_prod_catalog.columns.collation_schema should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'collation_schema', 'Column bsf_prod_catalog.columns.collation_schema should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'collation_schema', 'Column bsf_prod_catalog.columns.collation_schema should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'collation_name', 'Column bsf_prod_catalog.columns.collation_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'collation_name', 'text', 'Column bsf_prod_catalog.columns.collation_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'collation_name', 'Column bsf_prod_catalog.columns.collation_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'collation_name', 'Column bsf_prod_catalog.columns.collation_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'domain_catalog', 'Column bsf_prod_catalog.columns.domain_catalog should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'domain_catalog', 'text', 'Column bsf_prod_catalog.columns.domain_catalog should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'domain_catalog', 'Column bsf_prod_catalog.columns.domain_catalog should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'domain_catalog', 'Column bsf_prod_catalog.columns.domain_catalog should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'domain_schema', 'Column bsf_prod_catalog.columns.domain_schema should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'domain_schema', 'text', 'Column bsf_prod_catalog.columns.domain_schema should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'domain_schema', 'Column bsf_prod_catalog.columns.domain_schema should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'domain_schema', 'Column bsf_prod_catalog.columns.domain_schema should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'domain_name', 'Column bsf_prod_catalog.columns.domain_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'domain_name', 'text', 'Column bsf_prod_catalog.columns.domain_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'domain_name', 'Column bsf_prod_catalog.columns.domain_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'domain_name', 'Column bsf_prod_catalog.columns.domain_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'udt_catalog', 'Column bsf_prod_catalog.columns.udt_catalog should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'udt_catalog', 'text', 'Column bsf_prod_catalog.columns.udt_catalog should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'udt_catalog', 'Column bsf_prod_catalog.columns.udt_catalog should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'udt_catalog', 'Column bsf_prod_catalog.columns.udt_catalog should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'udt_schema', 'Column bsf_prod_catalog.columns.udt_schema should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'udt_schema', 'text', 'Column bsf_prod_catalog.columns.udt_schema should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'udt_schema', 'Column bsf_prod_catalog.columns.udt_schema should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'udt_schema', 'Column bsf_prod_catalog.columns.udt_schema should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'udt_name', 'Column bsf_prod_catalog.columns.udt_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'udt_name', 'text', 'Column bsf_prod_catalog.columns.udt_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'udt_name', 'Column bsf_prod_catalog.columns.udt_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'udt_name', 'Column bsf_prod_catalog.columns.udt_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'scope_catalog', 'Column bsf_prod_catalog.columns.scope_catalog should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'scope_catalog', 'text', 'Column bsf_prod_catalog.columns.scope_catalog should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'scope_catalog', 'Column bsf_prod_catalog.columns.scope_catalog should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'scope_catalog', 'Column bsf_prod_catalog.columns.scope_catalog should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'scope_schema', 'Column bsf_prod_catalog.columns.scope_schema should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'scope_schema', 'text', 'Column bsf_prod_catalog.columns.scope_schema should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'scope_schema', 'Column bsf_prod_catalog.columns.scope_schema should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'scope_schema', 'Column bsf_prod_catalog.columns.scope_schema should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'scope_name', 'Column bsf_prod_catalog.columns.scope_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'scope_name', 'text', 'Column bsf_prod_catalog.columns.scope_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'scope_name', 'Column bsf_prod_catalog.columns.scope_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'scope_name', 'Column bsf_prod_catalog.columns.scope_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'maximum_cardinality', 'Column bsf_prod_catalog.columns.maximum_cardinality should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'maximum_cardinality', 'integer', 'Column bsf_prod_catalog.columns.maximum_cardinality should be type integer');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'maximum_cardinality', 'Column bsf_prod_catalog.columns.maximum_cardinality should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'maximum_cardinality', 'Column bsf_prod_catalog.columns.maximum_cardinality should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'dtd_identifier', 'Column bsf_prod_catalog.columns.dtd_identifier should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'dtd_identifier', 'text', 'Column bsf_prod_catalog.columns.dtd_identifier should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'dtd_identifier', 'Column bsf_prod_catalog.columns.dtd_identifier should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'dtd_identifier', 'Column bsf_prod_catalog.columns.dtd_identifier should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'is_self_referencing', 'Column bsf_prod_catalog.columns.is_self_referencing should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'is_self_referencing', 'text', 'Column bsf_prod_catalog.columns.is_self_referencing should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'is_self_referencing', 'Column bsf_prod_catalog.columns.is_self_referencing should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'is_self_referencing', 'Column bsf_prod_catalog.columns.is_self_referencing should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'is_identity', 'Column bsf_prod_catalog.columns.is_identity should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'is_identity', 'text', 'Column bsf_prod_catalog.columns.is_identity should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'is_identity', 'Column bsf_prod_catalog.columns.is_identity should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'is_identity', 'Column bsf_prod_catalog.columns.is_identity should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'identity_generation', 'Column bsf_prod_catalog.columns.identity_generation should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'identity_generation', 'text', 'Column bsf_prod_catalog.columns.identity_generation should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'identity_generation', 'Column bsf_prod_catalog.columns.identity_generation should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'identity_generation', 'Column bsf_prod_catalog.columns.identity_generation should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'identity_start', 'Column bsf_prod_catalog.columns.identity_start should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'identity_start', 'text', 'Column bsf_prod_catalog.columns.identity_start should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'identity_start', 'Column bsf_prod_catalog.columns.identity_start should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'identity_start', 'Column bsf_prod_catalog.columns.identity_start should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'identity_increment', 'Column bsf_prod_catalog.columns.identity_increment should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'identity_increment', 'text', 'Column bsf_prod_catalog.columns.identity_increment should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'identity_increment', 'Column bsf_prod_catalog.columns.identity_increment should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'identity_increment', 'Column bsf_prod_catalog.columns.identity_increment should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'identity_maximum', 'Column bsf_prod_catalog.columns.identity_maximum should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'identity_maximum', 'text', 'Column bsf_prod_catalog.columns.identity_maximum should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'identity_maximum', 'Column bsf_prod_catalog.columns.identity_maximum should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'identity_maximum', 'Column bsf_prod_catalog.columns.identity_maximum should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'identity_minimum', 'Column bsf_prod_catalog.columns.identity_minimum should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'identity_minimum', 'text', 'Column bsf_prod_catalog.columns.identity_minimum should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'identity_minimum', 'Column bsf_prod_catalog.columns.identity_minimum should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'identity_minimum', 'Column bsf_prod_catalog.columns.identity_minimum should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'identity_cycle', 'Column bsf_prod_catalog.columns.identity_cycle should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'identity_cycle', 'text', 'Column bsf_prod_catalog.columns.identity_cycle should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'identity_cycle', 'Column bsf_prod_catalog.columns.identity_cycle should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'identity_cycle', 'Column bsf_prod_catalog.columns.identity_cycle should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'is_generated', 'Column bsf_prod_catalog.columns.is_generated should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'is_generated', 'text', 'Column bsf_prod_catalog.columns.is_generated should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'is_generated', 'Column bsf_prod_catalog.columns.is_generated should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'is_generated', 'Column bsf_prod_catalog.columns.is_generated should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'generation_expression', 'Column bsf_prod_catalog.columns.generation_expression should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'generation_expression', 'text', 'Column bsf_prod_catalog.columns.generation_expression should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'generation_expression', 'Column bsf_prod_catalog.columns.generation_expression should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'generation_expression', 'Column bsf_prod_catalog.columns.generation_expression should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'columns', 'is_updatable', 'Column bsf_prod_catalog.columns.is_updatable should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'columns', 'is_updatable', 'text', 'Column bsf_prod_catalog.columns.is_updatable should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'columns', 'is_updatable', 'Column bsf_prod_catalog.columns.is_updatable should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'columns', 'is_updatable', 'Column bsf_prod_catalog.columns.is_updatable should not  have a default');

SELECT * FROM finish();
ROLLBACK;
