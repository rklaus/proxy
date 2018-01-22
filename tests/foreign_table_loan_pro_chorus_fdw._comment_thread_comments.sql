SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_comment_thread_comments',
    'Should have foreign table loan_pro_chorus_fdw._comment_thread_comments'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_comment_thread_comments',
    'Table loan_pro_chorus_fdw._comment_thread_comments should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_comment_thread_comments'::name, ARRAY[
    'id'::name,
    'topic_id'::name,
    'body'::name,
    'created_by'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_comment_thread_comments', 'id', 'Column loan_pro_chorus_fdw._comment_thread_comments.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'id', 'integer', 'Column loan_pro_chorus_fdw._comment_thread_comments.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'id', 'Column loan_pro_chorus_fdw._comment_thread_comments.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_comment_thread_comments', 'id', 'Column loan_pro_chorus_fdw._comment_thread_comments.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_comment_thread_comments', 'topic_id', 'Column loan_pro_chorus_fdw._comment_thread_comments.topic_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'topic_id', 'integer', 'Column loan_pro_chorus_fdw._comment_thread_comments.topic_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'topic_id', 'Column loan_pro_chorus_fdw._comment_thread_comments.topic_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_comment_thread_comments', 'topic_id', 'Column loan_pro_chorus_fdw._comment_thread_comments.topic_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_comment_thread_comments', 'body', 'Column loan_pro_chorus_fdw._comment_thread_comments.body should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'body', 'text', 'Column loan_pro_chorus_fdw._comment_thread_comments.body should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'body', 'Column loan_pro_chorus_fdw._comment_thread_comments.body should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_comment_thread_comments', 'body', 'Column loan_pro_chorus_fdw._comment_thread_comments.body should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_comment_thread_comments', 'created_by', 'Column loan_pro_chorus_fdw._comment_thread_comments.created_by should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'created_by', 'integer', 'Column loan_pro_chorus_fdw._comment_thread_comments.created_by should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'created_by', 'Column loan_pro_chorus_fdw._comment_thread_comments.created_by should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_comment_thread_comments', 'created_by', 'Column loan_pro_chorus_fdw._comment_thread_comments.created_by should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_comment_thread_comments', 'active', 'Column loan_pro_chorus_fdw._comment_thread_comments.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'active', 'integer', 'Column loan_pro_chorus_fdw._comment_thread_comments.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'active', 'Column loan_pro_chorus_fdw._comment_thread_comments.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_comment_thread_comments', 'active', 'Column loan_pro_chorus_fdw._comment_thread_comments.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_comment_thread_comments', 'deleted', 'Column loan_pro_chorus_fdw._comment_thread_comments.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._comment_thread_comments.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'deleted', 'Column loan_pro_chorus_fdw._comment_thread_comments.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_comment_thread_comments', 'deleted', 'Column loan_pro_chorus_fdw._comment_thread_comments.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_comment_thread_comments', 'created', 'Column loan_pro_chorus_fdw._comment_thread_comments.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'created', 'text', 'Column loan_pro_chorus_fdw._comment_thread_comments.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'created', 'Column loan_pro_chorus_fdw._comment_thread_comments.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_comment_thread_comments', 'created', 'Column loan_pro_chorus_fdw._comment_thread_comments.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_comment_thread_comments', 'lastupdated', 'Column loan_pro_chorus_fdw._comment_thread_comments.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._comment_thread_comments.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_comment_thread_comments', 'lastupdated', 'Column loan_pro_chorus_fdw._comment_thread_comments.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_comment_thread_comments', 'lastupdated', 'Column loan_pro_chorus_fdw._comment_thread_comments.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
