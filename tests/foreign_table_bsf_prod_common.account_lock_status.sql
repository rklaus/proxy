SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'account_lock_status',
    'Should have foreign table bsf_prod_common.account_lock_status'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'account_lock_status',
    'Table bsf_prod_common.account_lock_status should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'account_lock_status'::name, ARRAY[
    'account_lock_status_id'::name,
    'account_lock_status'::name
]);

SELECT has_column(       'bsf_prod_common', 'account_lock_status', 'account_lock_status_id', 'Column bsf_prod_common.account_lock_status.account_lock_status_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'account_lock_status', 'account_lock_status_id', 'integer', 'Column bsf_prod_common.account_lock_status.account_lock_status_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'account_lock_status', 'account_lock_status_id', 'Column bsf_prod_common.account_lock_status.account_lock_status_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'account_lock_status', 'account_lock_status_id', 'Column bsf_prod_common.account_lock_status.account_lock_status_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'account_lock_status', 'account_lock_status', 'Column bsf_prod_common.account_lock_status.account_lock_status should exist');
SELECT col_type_is(      'bsf_prod_common', 'account_lock_status', 'account_lock_status', 'text', 'Column bsf_prod_common.account_lock_status.account_lock_status should be type text');
SELECT col_is_null(      'bsf_prod_common', 'account_lock_status', 'account_lock_status', 'Column bsf_prod_common.account_lock_status.account_lock_status should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'account_lock_status', 'account_lock_status', 'Column bsf_prod_common.account_lock_status.account_lock_status should not  have a default');

SELECT * FROM finish();
ROLLBACK;
