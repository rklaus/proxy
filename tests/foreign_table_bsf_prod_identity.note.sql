SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'bsf_prod_identity', 'note',
    'Should have foreign table bsf_prod_identity.note'
);

SELECT hasnt_pk(
    'bsf_prod_identity', 'note',
    'Table bsf_prod_identity.note should have a primary key'
);

SELECT columns_are('bsf_prod_identity'::name, 'note'::name, ARRAY[
    'note_key'::name,
    'note_id'::name,
    'user_account_id'::name,
    'application_id'::name,
    'note_description'::name,
    'note_category_id'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_identity', 'note', 'note_key', 'Column bsf_prod_identity.note.note_key should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'note_key', 'integer', 'Column bsf_prod_identity.note.note_key should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'note_key', 'Column bsf_prod_identity.note.note_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'note_key', 'Column bsf_prod_identity.note.note_key should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'note_id', 'Column bsf_prod_identity.note.note_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'note_id', 'bigint', 'Column bsf_prod_identity.note.note_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'note_id', 'Column bsf_prod_identity.note.note_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'note_id', 'Column bsf_prod_identity.note.note_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'user_account_id', 'Column bsf_prod_identity.note.user_account_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'user_account_id', 'bigint', 'Column bsf_prod_identity.note.user_account_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'user_account_id', 'Column bsf_prod_identity.note.user_account_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'user_account_id', 'Column bsf_prod_identity.note.user_account_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'application_id', 'Column bsf_prod_identity.note.application_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'application_id', 'bigint', 'Column bsf_prod_identity.note.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'application_id', 'Column bsf_prod_identity.note.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'application_id', 'Column bsf_prod_identity.note.application_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'note_description', 'Column bsf_prod_identity.note.note_description should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'note_description', 'text', 'Column bsf_prod_identity.note.note_description should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'note_description', 'Column bsf_prod_identity.note.note_description should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'note_description', 'Column bsf_prod_identity.note.note_description should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'note_category_id', 'Column bsf_prod_identity.note.note_category_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'note_category_id', 'integer', 'Column bsf_prod_identity.note.note_category_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'note_category_id', 'Column bsf_prod_identity.note.note_category_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'note_category_id', 'Column bsf_prod_identity.note.note_category_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'last_updated', 'Column bsf_prod_identity.note.last_updated should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_identity.note.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'last_updated', 'Column bsf_prod_identity.note.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'last_updated', 'Column bsf_prod_identity.note.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'effective', 'Column bsf_prod_identity.note.effective should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.note.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'effective', 'Column bsf_prod_identity.note.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'effective', 'Column bsf_prod_identity.note.effective should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'asserted', 'Column bsf_prod_identity.note.asserted should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.note.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'asserted', 'Column bsf_prod_identity.note.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'asserted', 'Column bsf_prod_identity.note.asserted should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'note', 'row_created_at', 'Column bsf_prod_identity.note.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_identity', 'note', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_identity.note.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'note', 'row_created_at', 'Column bsf_prod_identity.note.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'note', 'row_created_at', 'Column bsf_prod_identity.note.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
