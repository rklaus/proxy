SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'bank_account_type',
    'Should have foreign table bsf_prod_common.bank_account_type'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'bank_account_type',
    'Table bsf_prod_common.bank_account_type should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'bank_account_type'::name, ARRAY[
    'bank_account_type_id'::name,
    'bank_account_type'::name
]);

SELECT has_column(       'bsf_prod_common', 'bank_account_type', 'bank_account_type_id', 'Column bsf_prod_common.bank_account_type.bank_account_type_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'bank_account_type', 'bank_account_type_id', 'integer', 'Column bsf_prod_common.bank_account_type.bank_account_type_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'bank_account_type', 'bank_account_type_id', 'Column bsf_prod_common.bank_account_type.bank_account_type_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'bank_account_type', 'bank_account_type_id', 'Column bsf_prod_common.bank_account_type.bank_account_type_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'bank_account_type', 'bank_account_type', 'Column bsf_prod_common.bank_account_type.bank_account_type should exist');
SELECT col_type_is(      'bsf_prod_common', 'bank_account_type', 'bank_account_type', 'text', 'Column bsf_prod_common.bank_account_type.bank_account_type should be type text');
SELECT col_is_null(      'bsf_prod_common', 'bank_account_type', 'bank_account_type', 'Column bsf_prod_common.bank_account_type.bank_account_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'bank_account_type', 'bank_account_type', 'Column bsf_prod_common.bank_account_type.bank_account_type should not  have a default');

SELECT * FROM finish();
ROLLBACK;
