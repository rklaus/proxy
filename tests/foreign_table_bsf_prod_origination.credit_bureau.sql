SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'bsf_prod_origination', 'credit_bureau',
    'Should have foreign table bsf_prod_origination.credit_bureau'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'credit_bureau',
    'Table bsf_prod_origination.credit_bureau should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'credit_bureau'::name, ARRAY[
    'application_id'::name,
    'response_type'::name,
    'last_updated'::name,
    'credit_bureau_data'::name
]);

SELECT has_column(       'bsf_prod_origination', 'credit_bureau', 'application_id', 'Column bsf_prod_origination.credit_bureau.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'credit_bureau', 'application_id', 'bigint', 'Column bsf_prod_origination.credit_bureau.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'credit_bureau', 'application_id', 'Column bsf_prod_origination.credit_bureau.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'credit_bureau', 'application_id', 'Column bsf_prod_origination.credit_bureau.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'credit_bureau', 'response_type', 'Column bsf_prod_origination.credit_bureau.response_type should exist');
SELECT col_type_is(      'bsf_prod_origination', 'credit_bureau', 'response_type', 'smallint', 'Column bsf_prod_origination.credit_bureau.response_type should be type smallint');
SELECT col_is_null(      'bsf_prod_origination', 'credit_bureau', 'response_type', 'Column bsf_prod_origination.credit_bureau.response_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'credit_bureau', 'response_type', 'Column bsf_prod_origination.credit_bureau.response_type should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'credit_bureau', 'last_updated', 'Column bsf_prod_origination.credit_bureau.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'credit_bureau', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.credit_bureau.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'credit_bureau', 'last_updated', 'Column bsf_prod_origination.credit_bureau.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'credit_bureau', 'last_updated', 'Column bsf_prod_origination.credit_bureau.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'credit_bureau', 'credit_bureau_data', 'Column bsf_prod_origination.credit_bureau.credit_bureau_data should exist');
SELECT col_type_is(      'bsf_prod_origination', 'credit_bureau', 'credit_bureau_data', 'text', 'Column bsf_prod_origination.credit_bureau.credit_bureau_data should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'credit_bureau', 'credit_bureau_data', 'Column bsf_prod_origination.credit_bureau.credit_bureau_data should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'credit_bureau', 'credit_bureau_data', 'Column bsf_prod_origination.credit_bureau.credit_bureau_data should not  have a default');

SELECT * FROM finish();
ROLLBACK;
