SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_total_credits_view',
    'Should have foreign table loan_pro_sandbox._total_credits_view'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_total_credits_view',
    'Table loan_pro_sandbox._total_credits_view should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_total_credits_view'::name, ARRAY[
    'entity_id'::name,
    'total_credits'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_total_credits_view', 'entity_id', 'Column loan_pro_sandbox._total_credits_view.entity_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_total_credits_view', 'entity_id', 'integer', 'Column loan_pro_sandbox._total_credits_view.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_total_credits_view', 'entity_id', 'Column loan_pro_sandbox._total_credits_view.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_total_credits_view', 'entity_id', 'Column loan_pro_sandbox._total_credits_view.entity_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_total_credits_view', 'total_credits', 'Column loan_pro_sandbox._total_credits_view.total_credits should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_total_credits_view', 'total_credits', 'numeric(33,2)', 'Column loan_pro_sandbox._total_credits_view.total_credits should be type numeric(33,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_total_credits_view', 'total_credits', 'Column loan_pro_sandbox._total_credits_view.total_credits should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_total_credits_view', 'total_credits', 'Column loan_pro_sandbox._total_credits_view.total_credits should not  have a default');

SELECT * FROM finish();
ROLLBACK;
