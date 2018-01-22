SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'application_status',
    'Should have foreign table bsf_prod_common.application_status'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'application_status',
    'Table bsf_prod_common.application_status should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'application_status'::name, ARRAY[
    'application_status_id'::name,
    'application_status'::name
]);

SELECT has_column(       'bsf_prod_common', 'application_status', 'application_status_id', 'Column bsf_prod_common.application_status.application_status_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'application_status', 'application_status_id', 'integer', 'Column bsf_prod_common.application_status.application_status_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'application_status', 'application_status_id', 'Column bsf_prod_common.application_status.application_status_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'application_status', 'application_status_id', 'Column bsf_prod_common.application_status.application_status_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'application_status', 'application_status', 'Column bsf_prod_common.application_status.application_status should exist');
SELECT col_type_is(      'bsf_prod_common', 'application_status', 'application_status', 'text', 'Column bsf_prod_common.application_status.application_status should be type text');
SELECT col_is_null(      'bsf_prod_common', 'application_status', 'application_status', 'Column bsf_prod_common.application_status.application_status should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'application_status', 'application_status', 'Column bsf_prod_common.application_status.application_status should not  have a default');

SELECT * FROM finish();
ROLLBACK;
