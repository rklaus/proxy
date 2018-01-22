SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_collector_queue_question_entity',
    'Should have foreign table loan_pro_sandbox._collector_queue_question_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_collector_queue_question_entity',
    'Table loan_pro_sandbox._collector_queue_question_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_collector_queue_question_entity'::name, ARRAY[
    'id'::name,
    'question'::name,
    'score'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_collector_queue_question_entity', 'id', 'Column loan_pro_sandbox._collector_queue_question_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collector_queue_question_entity', 'id', 'integer', 'Column loan_pro_sandbox._collector_queue_question_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collector_queue_question_entity', 'id', 'Column loan_pro_sandbox._collector_queue_question_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collector_queue_question_entity', 'id', 'Column loan_pro_sandbox._collector_queue_question_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collector_queue_question_entity', 'question', 'Column loan_pro_sandbox._collector_queue_question_entity.question should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collector_queue_question_entity', 'question', 'text', 'Column loan_pro_sandbox._collector_queue_question_entity.question should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_collector_queue_question_entity', 'question', 'Column loan_pro_sandbox._collector_queue_question_entity.question should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collector_queue_question_entity', 'question', 'Column loan_pro_sandbox._collector_queue_question_entity.question should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collector_queue_question_entity', 'score', 'Column loan_pro_sandbox._collector_queue_question_entity.score should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collector_queue_question_entity', 'score', 'integer', 'Column loan_pro_sandbox._collector_queue_question_entity.score should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collector_queue_question_entity', 'score', 'Column loan_pro_sandbox._collector_queue_question_entity.score should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collector_queue_question_entity', 'score', 'Column loan_pro_sandbox._collector_queue_question_entity.score should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collector_queue_question_entity', 'active', 'Column loan_pro_sandbox._collector_queue_question_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collector_queue_question_entity', 'active', 'integer', 'Column loan_pro_sandbox._collector_queue_question_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collector_queue_question_entity', 'active', 'Column loan_pro_sandbox._collector_queue_question_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collector_queue_question_entity', 'active', 'Column loan_pro_sandbox._collector_queue_question_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collector_queue_question_entity', 'deleted', 'Column loan_pro_sandbox._collector_queue_question_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collector_queue_question_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._collector_queue_question_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collector_queue_question_entity', 'deleted', 'Column loan_pro_sandbox._collector_queue_question_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collector_queue_question_entity', 'deleted', 'Column loan_pro_sandbox._collector_queue_question_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collector_queue_question_entity', 'created', 'Column loan_pro_sandbox._collector_queue_question_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collector_queue_question_entity', 'created', 'text', 'Column loan_pro_sandbox._collector_queue_question_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_collector_queue_question_entity', 'created', 'Column loan_pro_sandbox._collector_queue_question_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collector_queue_question_entity', 'created', 'Column loan_pro_sandbox._collector_queue_question_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collector_queue_question_entity', 'lastupdated', 'Column loan_pro_sandbox._collector_queue_question_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collector_queue_question_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._collector_queue_question_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_collector_queue_question_entity', 'lastupdated', 'Column loan_pro_sandbox._collector_queue_question_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collector_queue_question_entity', 'lastupdated', 'Column loan_pro_sandbox._collector_queue_question_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
