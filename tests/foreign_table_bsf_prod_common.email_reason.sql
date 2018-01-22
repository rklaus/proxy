SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'email_reason',
    'Should have foreign table bsf_prod_common.email_reason'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'email_reason',
    'Table bsf_prod_common.email_reason should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'email_reason'::name, ARRAY[
    'email_reason_id'::name,
    'email_reason'::name
]);

SELECT has_column(       'bsf_prod_common', 'email_reason', 'email_reason_id', 'Column bsf_prod_common.email_reason.email_reason_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'email_reason', 'email_reason_id', 'integer', 'Column bsf_prod_common.email_reason.email_reason_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'email_reason', 'email_reason_id', 'Column bsf_prod_common.email_reason.email_reason_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'email_reason', 'email_reason_id', 'Column bsf_prod_common.email_reason.email_reason_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'email_reason', 'email_reason', 'Column bsf_prod_common.email_reason.email_reason should exist');
SELECT col_type_is(      'bsf_prod_common', 'email_reason', 'email_reason', 'text', 'Column bsf_prod_common.email_reason.email_reason should be type text');
SELECT col_is_null(      'bsf_prod_common', 'email_reason', 'email_reason', 'Column bsf_prod_common.email_reason.email_reason should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'email_reason', 'email_reason', 'Column bsf_prod_common.email_reason.email_reason should not  have a default');

SELECT * FROM finish();
ROLLBACK;
