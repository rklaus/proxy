SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'states',
    'Should have foreign table bsf_prod_common.states'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'states',
    'Table bsf_prod_common.states should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'states'::name, ARRAY[
    'state_id'::name,
    'state_name'::name
]);

SELECT has_column(       'bsf_prod_common', 'states', 'state_id', 'Column bsf_prod_common.states.state_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'states', 'state_id', 'integer', 'Column bsf_prod_common.states.state_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'states', 'state_id', 'Column bsf_prod_common.states.state_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'states', 'state_id', 'Column bsf_prod_common.states.state_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'states', 'state_name', 'Column bsf_prod_common.states.state_name should exist');
SELECT col_type_is(      'bsf_prod_common', 'states', 'state_name', 'text', 'Column bsf_prod_common.states.state_name should be type text');
SELECT col_is_null(      'bsf_prod_common', 'states', 'state_name', 'Column bsf_prod_common.states.state_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'states', 'state_name', 'Column bsf_prod_common.states.state_name should not  have a default');

SELECT * FROM finish();
ROLLBACK;
