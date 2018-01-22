SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'bsf_prod_origination', 'rmodel_raw_output',
    'Should have foreign table bsf_prod_origination.rmodel_raw_output'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'rmodel_raw_output',
    'Table bsf_prod_origination.rmodel_raw_output should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'rmodel_raw_output'::name, ARRAY[
    'rmodel_raw_output_id'::name,
    'application_id'::name,
    'response_type_id'::name,
    'error_type'::name,
    'error_message'::name,
    'runnable_version'::name,
    'raw_output'::name,
    'last_updated'::name
]);

SELECT has_column(       'bsf_prod_origination', 'rmodel_raw_output', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_raw_output.rmodel_raw_output_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_raw_output', 'rmodel_raw_output_id', 'integer', 'Column bsf_prod_origination.rmodel_raw_output.rmodel_raw_output_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_raw_output', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_raw_output.rmodel_raw_output_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_raw_output', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_raw_output.rmodel_raw_output_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_raw_output', 'application_id', 'Column bsf_prod_origination.rmodel_raw_output.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_raw_output', 'application_id', 'bigint', 'Column bsf_prod_origination.rmodel_raw_output.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_raw_output', 'application_id', 'Column bsf_prod_origination.rmodel_raw_output.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_raw_output', 'application_id', 'Column bsf_prod_origination.rmodel_raw_output.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_raw_output', 'response_type_id', 'Column bsf_prod_origination.rmodel_raw_output.response_type_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_raw_output', 'response_type_id', 'bigint', 'Column bsf_prod_origination.rmodel_raw_output.response_type_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_raw_output', 'response_type_id', 'Column bsf_prod_origination.rmodel_raw_output.response_type_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_raw_output', 'response_type_id', 'Column bsf_prod_origination.rmodel_raw_output.response_type_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_raw_output', 'error_type', 'Column bsf_prod_origination.rmodel_raw_output.error_type should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_raw_output', 'error_type', 'text', 'Column bsf_prod_origination.rmodel_raw_output.error_type should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_raw_output', 'error_type', 'Column bsf_prod_origination.rmodel_raw_output.error_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_raw_output', 'error_type', 'Column bsf_prod_origination.rmodel_raw_output.error_type should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_raw_output', 'error_message', 'Column bsf_prod_origination.rmodel_raw_output.error_message should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_raw_output', 'error_message', 'text', 'Column bsf_prod_origination.rmodel_raw_output.error_message should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_raw_output', 'error_message', 'Column bsf_prod_origination.rmodel_raw_output.error_message should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_raw_output', 'error_message', 'Column bsf_prod_origination.rmodel_raw_output.error_message should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_raw_output', 'runnable_version', 'Column bsf_prod_origination.rmodel_raw_output.runnable_version should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_raw_output', 'runnable_version', 'text', 'Column bsf_prod_origination.rmodel_raw_output.runnable_version should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_raw_output', 'runnable_version', 'Column bsf_prod_origination.rmodel_raw_output.runnable_version should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_raw_output', 'runnable_version', 'Column bsf_prod_origination.rmodel_raw_output.runnable_version should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_raw_output', 'raw_output', 'Column bsf_prod_origination.rmodel_raw_output.raw_output should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_raw_output', 'raw_output', 'text', 'Column bsf_prod_origination.rmodel_raw_output.raw_output should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_raw_output', 'raw_output', 'Column bsf_prod_origination.rmodel_raw_output.raw_output should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_raw_output', 'raw_output', 'Column bsf_prod_origination.rmodel_raw_output.raw_output should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_raw_output', 'last_updated', 'Column bsf_prod_origination.rmodel_raw_output.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_raw_output', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.rmodel_raw_output.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_raw_output', 'last_updated', 'Column bsf_prod_origination.rmodel_raw_output.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_raw_output', 'last_updated', 'Column bsf_prod_origination.rmodel_raw_output.last_updated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
