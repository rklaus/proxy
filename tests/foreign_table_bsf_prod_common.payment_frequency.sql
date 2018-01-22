SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'payment_frequency',
    'Should have foreign table bsf_prod_common.payment_frequency'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'payment_frequency',
    'Table bsf_prod_common.payment_frequency should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'payment_frequency'::name, ARRAY[
    'payment_frequency_id'::name,
    'payment_frequency'::name
]);

SELECT has_column(       'bsf_prod_common', 'payment_frequency', 'payment_frequency_id', 'Column bsf_prod_common.payment_frequency.payment_frequency_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'payment_frequency', 'payment_frequency_id', 'integer', 'Column bsf_prod_common.payment_frequency.payment_frequency_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'payment_frequency', 'payment_frequency_id', 'Column bsf_prod_common.payment_frequency.payment_frequency_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'payment_frequency', 'payment_frequency_id', 'Column bsf_prod_common.payment_frequency.payment_frequency_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'payment_frequency', 'payment_frequency', 'Column bsf_prod_common.payment_frequency.payment_frequency should exist');
SELECT col_type_is(      'bsf_prod_common', 'payment_frequency', 'payment_frequency', 'text', 'Column bsf_prod_common.payment_frequency.payment_frequency should be type text');
SELECT col_is_null(      'bsf_prod_common', 'payment_frequency', 'payment_frequency', 'Column bsf_prod_common.payment_frequency.payment_frequency should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'payment_frequency', 'payment_frequency', 'Column bsf_prod_common.payment_frequency.payment_frequency should not  have a default');

SELECT * FROM finish();
ROLLBACK;
