SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_note_entity',
    'Should have foreign table loan_pro_sandbox._note_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_note_entity',
    'Table loan_pro_sandbox._note_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_note_entity'::name, ARRAY[
    'id'::name,
    'parent_type'::name,
    'parent_id'::name,
    'category_id'::name,
    'subject'::name,
    'body'::name,
    'author_id'::name,
    'author_name'::name,
    'created'::name,
    'lastupdated'::name,
    'remote_addr'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'id', 'Column loan_pro_sandbox._note_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'id', 'integer', 'Column loan_pro_sandbox._note_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'id', 'Column loan_pro_sandbox._note_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'id', 'Column loan_pro_sandbox._note_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'parent_type', 'Column loan_pro_sandbox._note_entity.parent_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'parent_type', 'character(100)', 'Column loan_pro_sandbox._note_entity.parent_type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'parent_type', 'Column loan_pro_sandbox._note_entity.parent_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'parent_type', 'Column loan_pro_sandbox._note_entity.parent_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'parent_id', 'Column loan_pro_sandbox._note_entity.parent_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'parent_id', 'integer', 'Column loan_pro_sandbox._note_entity.parent_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'parent_id', 'Column loan_pro_sandbox._note_entity.parent_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'parent_id', 'Column loan_pro_sandbox._note_entity.parent_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'category_id', 'Column loan_pro_sandbox._note_entity.category_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'category_id', 'integer', 'Column loan_pro_sandbox._note_entity.category_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'category_id', 'Column loan_pro_sandbox._note_entity.category_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'category_id', 'Column loan_pro_sandbox._note_entity.category_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'subject', 'Column loan_pro_sandbox._note_entity.subject should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'subject', 'text', 'Column loan_pro_sandbox._note_entity.subject should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'subject', 'Column loan_pro_sandbox._note_entity.subject should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'subject', 'Column loan_pro_sandbox._note_entity.subject should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'body', 'Column loan_pro_sandbox._note_entity.body should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'body', 'text', 'Column loan_pro_sandbox._note_entity.body should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'body', 'Column loan_pro_sandbox._note_entity.body should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'body', 'Column loan_pro_sandbox._note_entity.body should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'author_id', 'Column loan_pro_sandbox._note_entity.author_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'author_id', 'integer', 'Column loan_pro_sandbox._note_entity.author_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'author_id', 'Column loan_pro_sandbox._note_entity.author_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'author_id', 'Column loan_pro_sandbox._note_entity.author_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'author_name', 'Column loan_pro_sandbox._note_entity.author_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'author_name', 'text', 'Column loan_pro_sandbox._note_entity.author_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'author_name', 'Column loan_pro_sandbox._note_entity.author_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'author_name', 'Column loan_pro_sandbox._note_entity.author_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'created', 'Column loan_pro_sandbox._note_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'created', 'text', 'Column loan_pro_sandbox._note_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'created', 'Column loan_pro_sandbox._note_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'created', 'Column loan_pro_sandbox._note_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'lastupdated', 'Column loan_pro_sandbox._note_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._note_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'lastupdated', 'Column loan_pro_sandbox._note_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'lastupdated', 'Column loan_pro_sandbox._note_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'remote_addr', 'Column loan_pro_sandbox._note_entity.remote_addr should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'remote_addr', 'character(20)', 'Column loan_pro_sandbox._note_entity.remote_addr should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'remote_addr', 'Column loan_pro_sandbox._note_entity.remote_addr should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'remote_addr', 'Column loan_pro_sandbox._note_entity.remote_addr should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_note_entity', 'deleted', 'Column loan_pro_sandbox._note_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_note_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._note_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_note_entity', 'deleted', 'Column loan_pro_sandbox._note_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_note_entity', 'deleted', 'Column loan_pro_sandbox._note_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
