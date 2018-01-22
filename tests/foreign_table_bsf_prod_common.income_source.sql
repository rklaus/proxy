SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'income_source',
    'Should have foreign table bsf_prod_common.income_source'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'income_source',
    'Table bsf_prod_common.income_source should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'income_source'::name, ARRAY[
    'income_source_id'::name,
    'income_source'::name
]);

SELECT has_column(       'bsf_prod_common', 'income_source', 'income_source_id', 'Column bsf_prod_common.income_source.income_source_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'income_source', 'income_source_id', 'integer', 'Column bsf_prod_common.income_source.income_source_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'income_source', 'income_source_id', 'Column bsf_prod_common.income_source.income_source_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'income_source', 'income_source_id', 'Column bsf_prod_common.income_source.income_source_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'income_source', 'income_source', 'Column bsf_prod_common.income_source.income_source should exist');
SELECT col_type_is(      'bsf_prod_common', 'income_source', 'income_source', 'text', 'Column bsf_prod_common.income_source.income_source should be type text');
SELECT col_is_null(      'bsf_prod_common', 'income_source', 'income_source', 'Column bsf_prod_common.income_source.income_source should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'income_source', 'income_source', 'Column bsf_prod_common.income_source.income_source should not  have a default');

SELECT * FROM finish();
ROLLBACK;
