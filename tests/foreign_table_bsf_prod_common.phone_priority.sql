SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'phone_priority',
    'Should have foreign table bsf_prod_common.phone_priority'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'phone_priority',
    'Table bsf_prod_common.phone_priority should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'phone_priority'::name, ARRAY[
    'phone_priority_id'::name,
    'phone_priority'::name
]);

SELECT has_column(       'bsf_prod_common', 'phone_priority', 'phone_priority_id', 'Column bsf_prod_common.phone_priority.phone_priority_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'phone_priority', 'phone_priority_id', 'integer', 'Column bsf_prod_common.phone_priority.phone_priority_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'phone_priority', 'phone_priority_id', 'Column bsf_prod_common.phone_priority.phone_priority_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'phone_priority', 'phone_priority_id', 'Column bsf_prod_common.phone_priority.phone_priority_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'phone_priority', 'phone_priority', 'Column bsf_prod_common.phone_priority.phone_priority should exist');
SELECT col_type_is(      'bsf_prod_common', 'phone_priority', 'phone_priority', 'text', 'Column bsf_prod_common.phone_priority.phone_priority should be type text');
SELECT col_is_null(      'bsf_prod_common', 'phone_priority', 'phone_priority', 'Column bsf_prod_common.phone_priority.phone_priority should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'phone_priority', 'phone_priority', 'Column bsf_prod_common.phone_priority.phone_priority should not  have a default');

SELECT * FROM finish();
ROLLBACK;
