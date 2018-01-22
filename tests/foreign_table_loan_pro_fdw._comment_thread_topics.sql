SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_fdw', '_comment_thread_topics',
    'Should have foreign table loan_pro_fdw._comment_thread_topics'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_comment_thread_topics',
    'Table loan_pro_fdw._comment_thread_topics should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_comment_thread_topics'::name, ARRAY[
    'id'::name,
    'topic'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_comment_thread_topics', 'id', 'Column loan_pro_fdw._comment_thread_topics.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_comment_thread_topics', 'id', 'integer', 'Column loan_pro_fdw._comment_thread_topics.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_comment_thread_topics', 'id', 'Column loan_pro_fdw._comment_thread_topics.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_comment_thread_topics', 'id', 'Column loan_pro_fdw._comment_thread_topics.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_comment_thread_topics', 'topic', 'Column loan_pro_fdw._comment_thread_topics.topic should exist');
SELECT col_type_is(      'loan_pro_fdw', '_comment_thread_topics', 'topic', 'text', 'Column loan_pro_fdw._comment_thread_topics.topic should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_comment_thread_topics', 'topic', 'Column loan_pro_fdw._comment_thread_topics.topic should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_comment_thread_topics', 'topic', 'Column loan_pro_fdw._comment_thread_topics.topic should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_comment_thread_topics', 'active', 'Column loan_pro_fdw._comment_thread_topics.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_comment_thread_topics', 'active', 'integer', 'Column loan_pro_fdw._comment_thread_topics.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_comment_thread_topics', 'active', 'Column loan_pro_fdw._comment_thread_topics.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_comment_thread_topics', 'active', 'Column loan_pro_fdw._comment_thread_topics.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_comment_thread_topics', 'deleted', 'Column loan_pro_fdw._comment_thread_topics.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_comment_thread_topics', 'deleted', 'integer', 'Column loan_pro_fdw._comment_thread_topics.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_comment_thread_topics', 'deleted', 'Column loan_pro_fdw._comment_thread_topics.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_comment_thread_topics', 'deleted', 'Column loan_pro_fdw._comment_thread_topics.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_comment_thread_topics', 'created', 'Column loan_pro_fdw._comment_thread_topics.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_comment_thread_topics', 'created', 'text', 'Column loan_pro_fdw._comment_thread_topics.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_comment_thread_topics', 'created', 'Column loan_pro_fdw._comment_thread_topics.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_comment_thread_topics', 'created', 'Column loan_pro_fdw._comment_thread_topics.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_comment_thread_topics', 'lastupdated', 'Column loan_pro_fdw._comment_thread_topics.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_comment_thread_topics', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._comment_thread_topics.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_comment_thread_topics', 'lastupdated', 'Column loan_pro_fdw._comment_thread_topics.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_comment_thread_topics', 'lastupdated', 'Column loan_pro_fdw._comment_thread_topics.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
