SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'address_priority',
    'Should have foreign table bsf_prod_common.address_priority'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'address_priority',
    'Table bsf_prod_common.address_priority should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'address_priority'::name, ARRAY[
    'address_priority_id'::name,
    'address_priority'::name
]);

SELECT has_column(       'bsf_prod_common', 'address_priority', 'address_priority_id', 'Column bsf_prod_common.address_priority.address_priority_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'address_priority', 'address_priority_id', 'integer', 'Column bsf_prod_common.address_priority.address_priority_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'address_priority', 'address_priority_id', 'Column bsf_prod_common.address_priority.address_priority_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'address_priority', 'address_priority_id', 'Column bsf_prod_common.address_priority.address_priority_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'address_priority', 'address_priority', 'Column bsf_prod_common.address_priority.address_priority should exist');
SELECT col_type_is(      'bsf_prod_common', 'address_priority', 'address_priority', 'text', 'Column bsf_prod_common.address_priority.address_priority should be type text');
SELECT col_is_null(      'bsf_prod_common', 'address_priority', 'address_priority', 'Column bsf_prod_common.address_priority.address_priority should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'address_priority', 'address_priority', 'Column bsf_prod_common.address_priority.address_priority should not  have a default');

SELECT * FROM finish();
ROLLBACK;
