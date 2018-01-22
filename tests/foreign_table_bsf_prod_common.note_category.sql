SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'note_category',
    'Should have foreign table bsf_prod_common.note_category'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'note_category',
    'Table bsf_prod_common.note_category should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'note_category'::name, ARRAY[
    'note_category_id'::name,
    'note_category'::name
]);

SELECT has_column(       'bsf_prod_common', 'note_category', 'note_category_id', 'Column bsf_prod_common.note_category.note_category_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'note_category', 'note_category_id', 'bigint', 'Column bsf_prod_common.note_category.note_category_id should be type bigint');
SELECT col_is_null(      'bsf_prod_common', 'note_category', 'note_category_id', 'Column bsf_prod_common.note_category.note_category_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'note_category', 'note_category_id', 'Column bsf_prod_common.note_category.note_category_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'note_category', 'note_category', 'Column bsf_prod_common.note_category.note_category should exist');
SELECT col_type_is(      'bsf_prod_common', 'note_category', 'note_category', 'text', 'Column bsf_prod_common.note_category.note_category should be type text');
SELECT col_is_null(      'bsf_prod_common', 'note_category', 'note_category', 'Column bsf_prod_common.note_category.note_category should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'note_category', 'note_category', 'Column bsf_prod_common.note_category.note_category should not  have a default');

SELECT * FROM finish();
ROLLBACK;
