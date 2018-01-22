SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'time_at_address',
    'Should have foreign table bsf_prod_common.time_at_address'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'time_at_address',
    'Table bsf_prod_common.time_at_address should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'time_at_address'::name, ARRAY[
    'time_at_address_id'::name,
    'time_at_address'::name
]);

SELECT has_column(       'bsf_prod_common', 'time_at_address', 'time_at_address_id', 'Column bsf_prod_common.time_at_address.time_at_address_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'time_at_address', 'time_at_address_id', 'integer', 'Column bsf_prod_common.time_at_address.time_at_address_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'time_at_address', 'time_at_address_id', 'Column bsf_prod_common.time_at_address.time_at_address_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'time_at_address', 'time_at_address_id', 'Column bsf_prod_common.time_at_address.time_at_address_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'time_at_address', 'time_at_address', 'Column bsf_prod_common.time_at_address.time_at_address should exist');
SELECT col_type_is(      'bsf_prod_common', 'time_at_address', 'time_at_address', 'text', 'Column bsf_prod_common.time_at_address.time_at_address should be type text');
SELECT col_is_null(      'bsf_prod_common', 'time_at_address', 'time_at_address', 'Column bsf_prod_common.time_at_address.time_at_address should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'time_at_address', 'time_at_address', 'Column bsf_prod_common.time_at_address.time_at_address should not  have a default');

SELECT * FROM finish();
ROLLBACK;
