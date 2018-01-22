SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'phone_type',
    'Should have foreign table bsf_prod_common.phone_type'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'phone_type',
    'Table bsf_prod_common.phone_type should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'phone_type'::name, ARRAY[
    'phone_type_id'::name,
    'phone_type'::name
]);

SELECT has_column(       'bsf_prod_common', 'phone_type', 'phone_type_id', 'Column bsf_prod_common.phone_type.phone_type_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'phone_type', 'phone_type_id', 'integer', 'Column bsf_prod_common.phone_type.phone_type_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'phone_type', 'phone_type_id', 'Column bsf_prod_common.phone_type.phone_type_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'phone_type', 'phone_type_id', 'Column bsf_prod_common.phone_type.phone_type_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'phone_type', 'phone_type', 'Column bsf_prod_common.phone_type.phone_type should exist');
SELECT col_type_is(      'bsf_prod_common', 'phone_type', 'phone_type', 'text', 'Column bsf_prod_common.phone_type.phone_type should be type text');
SELECT col_is_null(      'bsf_prod_common', 'phone_type', 'phone_type', 'Column bsf_prod_common.phone_type.phone_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'phone_type', 'phone_type', 'Column bsf_prod_common.phone_type.phone_type should not  have a default');

SELECT * FROM finish();
ROLLBACK;
