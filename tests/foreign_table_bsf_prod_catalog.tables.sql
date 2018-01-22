SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'bsf_prod_catalog', 'tables',
    'Should have foreign table bsf_prod_catalog.tables'
);

SELECT hasnt_pk(
    'bsf_prod_catalog', 'tables',
    'Table bsf_prod_catalog.tables should have a primary key'
);

SELECT columns_are('bsf_prod_catalog'::name, 'tables'::name, ARRAY[
    'table_catalog'::name,
    'table_schema'::name,
    'table_name'::name,
    'table_type'::name,
    'self_referencing_column_name'::name,
    'reference_generation'::name,
    'user_defined_type_catalog'::name,
    'user_defined_type_schema'::name,
    'user_defined_type_name'::name,
    'is_insertable_into'::name,
    'is_typed'::name,
    'commit_action'::name
]);

SELECT has_column(       'bsf_prod_catalog', 'tables', 'table_catalog', 'Column bsf_prod_catalog.tables.table_catalog should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'table_catalog', 'text', 'Column bsf_prod_catalog.tables.table_catalog should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'table_catalog', 'Column bsf_prod_catalog.tables.table_catalog should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'table_catalog', 'Column bsf_prod_catalog.tables.table_catalog should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'table_schema', 'Column bsf_prod_catalog.tables.table_schema should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'table_schema', 'text', 'Column bsf_prod_catalog.tables.table_schema should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'table_schema', 'Column bsf_prod_catalog.tables.table_schema should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'table_schema', 'Column bsf_prod_catalog.tables.table_schema should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'table_name', 'Column bsf_prod_catalog.tables.table_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'table_name', 'text', 'Column bsf_prod_catalog.tables.table_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'table_name', 'Column bsf_prod_catalog.tables.table_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'table_name', 'Column bsf_prod_catalog.tables.table_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'table_type', 'Column bsf_prod_catalog.tables.table_type should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'table_type', 'text', 'Column bsf_prod_catalog.tables.table_type should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'table_type', 'Column bsf_prod_catalog.tables.table_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'table_type', 'Column bsf_prod_catalog.tables.table_type should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'self_referencing_column_name', 'Column bsf_prod_catalog.tables.self_referencing_column_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'self_referencing_column_name', 'text', 'Column bsf_prod_catalog.tables.self_referencing_column_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'self_referencing_column_name', 'Column bsf_prod_catalog.tables.self_referencing_column_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'self_referencing_column_name', 'Column bsf_prod_catalog.tables.self_referencing_column_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'reference_generation', 'Column bsf_prod_catalog.tables.reference_generation should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'reference_generation', 'text', 'Column bsf_prod_catalog.tables.reference_generation should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'reference_generation', 'Column bsf_prod_catalog.tables.reference_generation should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'reference_generation', 'Column bsf_prod_catalog.tables.reference_generation should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'user_defined_type_catalog', 'Column bsf_prod_catalog.tables.user_defined_type_catalog should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'user_defined_type_catalog', 'text', 'Column bsf_prod_catalog.tables.user_defined_type_catalog should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'user_defined_type_catalog', 'Column bsf_prod_catalog.tables.user_defined_type_catalog should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'user_defined_type_catalog', 'Column bsf_prod_catalog.tables.user_defined_type_catalog should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'user_defined_type_schema', 'Column bsf_prod_catalog.tables.user_defined_type_schema should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'user_defined_type_schema', 'text', 'Column bsf_prod_catalog.tables.user_defined_type_schema should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'user_defined_type_schema', 'Column bsf_prod_catalog.tables.user_defined_type_schema should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'user_defined_type_schema', 'Column bsf_prod_catalog.tables.user_defined_type_schema should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'user_defined_type_name', 'Column bsf_prod_catalog.tables.user_defined_type_name should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'user_defined_type_name', 'text', 'Column bsf_prod_catalog.tables.user_defined_type_name should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'user_defined_type_name', 'Column bsf_prod_catalog.tables.user_defined_type_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'user_defined_type_name', 'Column bsf_prod_catalog.tables.user_defined_type_name should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'is_insertable_into', 'Column bsf_prod_catalog.tables.is_insertable_into should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'is_insertable_into', 'text', 'Column bsf_prod_catalog.tables.is_insertable_into should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'is_insertable_into', 'Column bsf_prod_catalog.tables.is_insertable_into should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'is_insertable_into', 'Column bsf_prod_catalog.tables.is_insertable_into should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'is_typed', 'Column bsf_prod_catalog.tables.is_typed should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'is_typed', 'text', 'Column bsf_prod_catalog.tables.is_typed should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'is_typed', 'Column bsf_prod_catalog.tables.is_typed should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'is_typed', 'Column bsf_prod_catalog.tables.is_typed should not  have a default');

SELECT has_column(       'bsf_prod_catalog', 'tables', 'commit_action', 'Column bsf_prod_catalog.tables.commit_action should exist');
SELECT col_type_is(      'bsf_prod_catalog', 'tables', 'commit_action', 'text', 'Column bsf_prod_catalog.tables.commit_action should be type text');
SELECT col_is_null(      'bsf_prod_catalog', 'tables', 'commit_action', 'Column bsf_prod_catalog.tables.commit_action should allow NULL');
SELECT col_hasnt_default('bsf_prod_catalog', 'tables', 'commit_action', 'Column bsf_prod_catalog.tables.commit_action should not  have a default');

SELECT * FROM finish();
ROLLBACK;
