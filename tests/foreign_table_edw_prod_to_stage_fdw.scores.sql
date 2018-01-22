SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'scores',
    'Should have foreign table edw_prod_to_stage_fdw.scores'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'scores',
    'Table edw_prod_to_stage_fdw.scores should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'scores'::name, ARRAY[
    'requestcode'::name,
    'score'::name,
    'created_at'::name,
    'scored_at'::name,
    'grade'::name,
    'decision'::name,
    'no_tran_flag'::name,
    'loan_activity_flag'::name,
    'low_balance_flag'::name,
    'pay_freq_mismatch_flag'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'requestcode', 'Column edw_prod_to_stage_fdw.scores.requestcode should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'requestcode', 'text', 'Column edw_prod_to_stage_fdw.scores.requestcode should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'requestcode', 'Column edw_prod_to_stage_fdw.scores.requestcode should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'requestcode', 'Column edw_prod_to_stage_fdw.scores.requestcode should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'score', 'Column edw_prod_to_stage_fdw.scores.score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'score', 'numeric', 'Column edw_prod_to_stage_fdw.scores.score should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'score', 'Column edw_prod_to_stage_fdw.scores.score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'score', 'Column edw_prod_to_stage_fdw.scores.score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'created_at', 'Column edw_prod_to_stage_fdw.scores.created_at should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'created_at', 'timestamp with time zone', 'Column edw_prod_to_stage_fdw.scores.created_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'created_at', 'Column edw_prod_to_stage_fdw.scores.created_at should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'created_at', 'Column edw_prod_to_stage_fdw.scores.created_at should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'scored_at', 'Column edw_prod_to_stage_fdw.scores.scored_at should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'scored_at', 'timestamp with time zone', 'Column edw_prod_to_stage_fdw.scores.scored_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'scored_at', 'Column edw_prod_to_stage_fdw.scores.scored_at should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'scored_at', 'Column edw_prod_to_stage_fdw.scores.scored_at should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'grade', 'Column edw_prod_to_stage_fdw.scores.grade should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'grade', 'text', 'Column edw_prod_to_stage_fdw.scores.grade should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'grade', 'Column edw_prod_to_stage_fdw.scores.grade should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'grade', 'Column edw_prod_to_stage_fdw.scores.grade should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'decision', 'Column edw_prod_to_stage_fdw.scores.decision should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'decision', 'text', 'Column edw_prod_to_stage_fdw.scores.decision should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'decision', 'Column edw_prod_to_stage_fdw.scores.decision should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'decision', 'Column edw_prod_to_stage_fdw.scores.decision should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'no_tran_flag', 'Column edw_prod_to_stage_fdw.scores.no_tran_flag should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'no_tran_flag', 'text', 'Column edw_prod_to_stage_fdw.scores.no_tran_flag should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'no_tran_flag', 'Column edw_prod_to_stage_fdw.scores.no_tran_flag should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'no_tran_flag', 'Column edw_prod_to_stage_fdw.scores.no_tran_flag should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'loan_activity_flag', 'Column edw_prod_to_stage_fdw.scores.loan_activity_flag should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'loan_activity_flag', 'text', 'Column edw_prod_to_stage_fdw.scores.loan_activity_flag should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'loan_activity_flag', 'Column edw_prod_to_stage_fdw.scores.loan_activity_flag should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'loan_activity_flag', 'Column edw_prod_to_stage_fdw.scores.loan_activity_flag should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'low_balance_flag', 'Column edw_prod_to_stage_fdw.scores.low_balance_flag should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'low_balance_flag', 'text', 'Column edw_prod_to_stage_fdw.scores.low_balance_flag should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'low_balance_flag', 'Column edw_prod_to_stage_fdw.scores.low_balance_flag should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'low_balance_flag', 'Column edw_prod_to_stage_fdw.scores.low_balance_flag should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'scores', 'pay_freq_mismatch_flag', 'Column edw_prod_to_stage_fdw.scores.pay_freq_mismatch_flag should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'scores', 'pay_freq_mismatch_flag', 'text', 'Column edw_prod_to_stage_fdw.scores.pay_freq_mismatch_flag should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'scores', 'pay_freq_mismatch_flag', 'Column edw_prod_to_stage_fdw.scores.pay_freq_mismatch_flag should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'scores', 'pay_freq_mismatch_flag', 'Column edw_prod_to_stage_fdw.scores.pay_freq_mismatch_flag should not  have a default');

SELECT * FROM finish();
ROLLBACK;
