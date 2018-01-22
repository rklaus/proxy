SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'balance_api_fdw', 'achendpoints',
    'Should have foreign table balance_api_fdw.achendpoints'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'achendpoints',
    'Table balance_api_fdw.achendpoints should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'achendpoints'::name, ARRAY[
    'id'::name,
    'endpoint_name'::name,
    'endpoint_type'::name,
    'loan_owner'::name,
    'state_code'::name,
    'loan_original_owner'::name,
    'endpoint_name_orig'::name,
    'endpoint_name_pymt'::name,
    'file_batch'::name
]);

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'id', 'Column balance_api_fdw.achendpoints.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'id', 'integer', 'Column balance_api_fdw.achendpoints.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'id', 'Column balance_api_fdw.achendpoints.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'id', 'Column balance_api_fdw.achendpoints.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'endpoint_name', 'Column balance_api_fdw.achendpoints.endpoint_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'endpoint_name', 'character varying(255)', 'Column balance_api_fdw.achendpoints.endpoint_name should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'endpoint_name', 'Column balance_api_fdw.achendpoints.endpoint_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'endpoint_name', 'Column balance_api_fdw.achendpoints.endpoint_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'endpoint_type', 'Column balance_api_fdw.achendpoints.endpoint_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'endpoint_type', 'character varying(255)', 'Column balance_api_fdw.achendpoints.endpoint_type should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'endpoint_type', 'Column balance_api_fdw.achendpoints.endpoint_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'endpoint_type', 'Column balance_api_fdw.achendpoints.endpoint_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'loan_owner', 'Column balance_api_fdw.achendpoints.loan_owner should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'loan_owner', 'character varying(255)', 'Column balance_api_fdw.achendpoints.loan_owner should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'loan_owner', 'Column balance_api_fdw.achendpoints.loan_owner should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'loan_owner', 'Column balance_api_fdw.achendpoints.loan_owner should not  have a default');

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'state_code', 'Column balance_api_fdw.achendpoints.state_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'state_code', 'character varying(2)', 'Column balance_api_fdw.achendpoints.state_code should be type character varying(2)');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'state_code', 'Column balance_api_fdw.achendpoints.state_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'state_code', 'Column balance_api_fdw.achendpoints.state_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'loan_original_owner', 'Column balance_api_fdw.achendpoints.loan_original_owner should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'loan_original_owner', 'character varying(255)', 'Column balance_api_fdw.achendpoints.loan_original_owner should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'loan_original_owner', 'Column balance_api_fdw.achendpoints.loan_original_owner should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'loan_original_owner', 'Column balance_api_fdw.achendpoints.loan_original_owner should not  have a default');

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'endpoint_name_orig', 'Column balance_api_fdw.achendpoints.endpoint_name_orig should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'endpoint_name_orig', 'character varying(255)', 'Column balance_api_fdw.achendpoints.endpoint_name_orig should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'endpoint_name_orig', 'Column balance_api_fdw.achendpoints.endpoint_name_orig should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'endpoint_name_orig', 'Column balance_api_fdw.achendpoints.endpoint_name_orig should not  have a default');

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'endpoint_name_pymt', 'Column balance_api_fdw.achendpoints.endpoint_name_pymt should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'endpoint_name_pymt', 'character varying(255)', 'Column balance_api_fdw.achendpoints.endpoint_name_pymt should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'endpoint_name_pymt', 'Column balance_api_fdw.achendpoints.endpoint_name_pymt should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'endpoint_name_pymt', 'Column balance_api_fdw.achendpoints.endpoint_name_pymt should not  have a default');

SELECT has_column(       'balance_api_fdw', 'achendpoints', 'file_batch', 'Column balance_api_fdw.achendpoints.file_batch should exist');
SELECT col_type_is(      'balance_api_fdw', 'achendpoints', 'file_batch', 'character varying(255)', 'Column balance_api_fdw.achendpoints.file_batch should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'achendpoints', 'file_batch', 'Column balance_api_fdw.achendpoints.file_batch should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'achendpoints', 'file_batch', 'Column balance_api_fdw.achendpoints.file_batch should not  have a default');

SELECT * FROM finish();
ROLLBACK;
