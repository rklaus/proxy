SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_work_item__questions',
    'Should have foreign table loan_pro_chorus_fdw._work_item__questions'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_work_item__questions',
    'Table loan_pro_chorus_fdw._work_item__questions should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_work_item__questions'::name, ARRAY[
    'question_id'::name,
    'work_item_id'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_work_item__questions', 'question_id', 'Column loan_pro_chorus_fdw._work_item__questions.question_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_work_item__questions', 'question_id', 'integer', 'Column loan_pro_chorus_fdw._work_item__questions.question_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_work_item__questions', 'question_id', 'Column loan_pro_chorus_fdw._work_item__questions.question_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_work_item__questions', 'question_id', 'Column loan_pro_chorus_fdw._work_item__questions.question_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_work_item__questions', 'work_item_id', 'Column loan_pro_chorus_fdw._work_item__questions.work_item_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_work_item__questions', 'work_item_id', 'integer', 'Column loan_pro_chorus_fdw._work_item__questions.work_item_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_work_item__questions', 'work_item_id', 'Column loan_pro_chorus_fdw._work_item__questions.work_item_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_work_item__questions', 'work_item_id', 'Column loan_pro_chorus_fdw._work_item__questions.work_item_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_work_item__questions', 'lastupdated', 'Column loan_pro_chorus_fdw._work_item__questions.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_work_item__questions', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._work_item__questions.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_work_item__questions', 'lastupdated', 'Column loan_pro_chorus_fdw._work_item__questions.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_work_item__questions', 'lastupdated', 'Column loan_pro_chorus_fdw._work_item__questions.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
