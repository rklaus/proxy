SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_due_to_date_view',
    'Should have foreign table loan_pro_chorus_sandbox._due_to_date_view'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_due_to_date_view',
    'Table loan_pro_chorus_sandbox._due_to_date_view should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_due_to_date_view'::name, ARRAY[
    'entity_id'::name,
    'due_to_date'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_due_to_date_view', 'entity_id', 'Column loan_pro_chorus_sandbox._due_to_date_view.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_due_to_date_view', 'entity_id', 'integer', 'Column loan_pro_chorus_sandbox._due_to_date_view.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_due_to_date_view', 'entity_id', 'Column loan_pro_chorus_sandbox._due_to_date_view.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_due_to_date_view', 'entity_id', 'Column loan_pro_chorus_sandbox._due_to_date_view.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_due_to_date_view', 'due_to_date', 'Column loan_pro_chorus_sandbox._due_to_date_view.due_to_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_due_to_date_view', 'due_to_date', 'numeric(36,2)', 'Column loan_pro_chorus_sandbox._due_to_date_view.due_to_date should be type numeric(36,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_due_to_date_view', 'due_to_date', 'Column loan_pro_chorus_sandbox._due_to_date_view.due_to_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_due_to_date_view', 'due_to_date', 'Column loan_pro_chorus_sandbox._due_to_date_view.due_to_date should not  have a default');

SELECT * FROM finish();
ROLLBACK;
