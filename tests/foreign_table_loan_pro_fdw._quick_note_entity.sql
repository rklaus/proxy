SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_fdw', '_quick_note_entity',
    'Should have foreign table loan_pro_fdw._quick_note_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_quick_note_entity',
    'Table loan_pro_fdw._quick_note_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_quick_note_entity'::name, ARRAY[
    'id'::name,
    'note_name'::name,
    'note_category_id'::name,
    'note_content'::name,
    'entity_type'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'id', 'Column loan_pro_fdw._quick_note_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'id', 'integer', 'Column loan_pro_fdw._quick_note_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'id', 'Column loan_pro_fdw._quick_note_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'id', 'Column loan_pro_fdw._quick_note_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'note_name', 'Column loan_pro_fdw._quick_note_entity.note_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'note_name', 'text', 'Column loan_pro_fdw._quick_note_entity.note_name should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'note_name', 'Column loan_pro_fdw._quick_note_entity.note_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'note_name', 'Column loan_pro_fdw._quick_note_entity.note_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'note_category_id', 'Column loan_pro_fdw._quick_note_entity.note_category_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'note_category_id', 'integer', 'Column loan_pro_fdw._quick_note_entity.note_category_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'note_category_id', 'Column loan_pro_fdw._quick_note_entity.note_category_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'note_category_id', 'Column loan_pro_fdw._quick_note_entity.note_category_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'note_content', 'Column loan_pro_fdw._quick_note_entity.note_content should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'note_content', 'text', 'Column loan_pro_fdw._quick_note_entity.note_content should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'note_content', 'Column loan_pro_fdw._quick_note_entity.note_content should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'note_content', 'Column loan_pro_fdw._quick_note_entity.note_content should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'entity_type', 'Column loan_pro_fdw._quick_note_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'entity_type', 'character(64)', 'Column loan_pro_fdw._quick_note_entity.entity_type should be type character(64)');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'entity_type', 'Column loan_pro_fdw._quick_note_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'entity_type', 'Column loan_pro_fdw._quick_note_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'active', 'Column loan_pro_fdw._quick_note_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'active', 'integer', 'Column loan_pro_fdw._quick_note_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'active', 'Column loan_pro_fdw._quick_note_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'active', 'Column loan_pro_fdw._quick_note_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'deleted', 'Column loan_pro_fdw._quick_note_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'deleted', 'integer', 'Column loan_pro_fdw._quick_note_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'deleted', 'Column loan_pro_fdw._quick_note_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'deleted', 'Column loan_pro_fdw._quick_note_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'created', 'Column loan_pro_fdw._quick_note_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'created', 'text', 'Column loan_pro_fdw._quick_note_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'created', 'Column loan_pro_fdw._quick_note_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'created', 'Column loan_pro_fdw._quick_note_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_quick_note_entity', 'lastupdated', 'Column loan_pro_fdw._quick_note_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_quick_note_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._quick_note_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_quick_note_entity', 'lastupdated', 'Column loan_pro_fdw._quick_note_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_quick_note_entity', 'lastupdated', 'Column loan_pro_fdw._quick_note_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
