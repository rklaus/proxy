SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'payment_method',
    'Should have foreign table bsf_prod_common.payment_method'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'payment_method',
    'Table bsf_prod_common.payment_method should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'payment_method'::name, ARRAY[
    'payment_method_id'::name,
    'payment_method'::name
]);

SELECT has_column(       'bsf_prod_common', 'payment_method', 'payment_method_id', 'Column bsf_prod_common.payment_method.payment_method_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'payment_method', 'payment_method_id', 'integer', 'Column bsf_prod_common.payment_method.payment_method_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'payment_method', 'payment_method_id', 'Column bsf_prod_common.payment_method.payment_method_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'payment_method', 'payment_method_id', 'Column bsf_prod_common.payment_method.payment_method_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'payment_method', 'payment_method', 'Column bsf_prod_common.payment_method.payment_method should exist');
SELECT col_type_is(      'bsf_prod_common', 'payment_method', 'payment_method', 'text', 'Column bsf_prod_common.payment_method.payment_method should be type text');
SELECT col_is_null(      'bsf_prod_common', 'payment_method', 'payment_method', 'Column bsf_prod_common.payment_method.payment_method should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'payment_method', 'payment_method', 'Column bsf_prod_common.payment_method.payment_method should not  have a default');

SELECT * FROM finish();
ROLLBACK;
