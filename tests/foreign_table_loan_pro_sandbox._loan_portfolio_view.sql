SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_portfolio_view',
    'Should have foreign table loan_pro_sandbox._loan_portfolio_view'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_portfolio_view',
    'Table loan_pro_sandbox._loan_portfolio_view should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_portfolio_view'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'title'::name,
    'active'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_portfolio_view', 'id', 'Column loan_pro_sandbox._loan_portfolio_view.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_portfolio_view', 'id', 'integer', 'Column loan_pro_sandbox._loan_portfolio_view.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_portfolio_view', 'id', 'Column loan_pro_sandbox._loan_portfolio_view.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_portfolio_view', 'id', 'Column loan_pro_sandbox._loan_portfolio_view.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_portfolio_view', 'loan_id', 'Column loan_pro_sandbox._loan_portfolio_view.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_portfolio_view', 'loan_id', 'integer', 'Column loan_pro_sandbox._loan_portfolio_view.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_portfolio_view', 'loan_id', 'Column loan_pro_sandbox._loan_portfolio_view.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_portfolio_view', 'loan_id', 'Column loan_pro_sandbox._loan_portfolio_view.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_portfolio_view', 'title', 'Column loan_pro_sandbox._loan_portfolio_view.title should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_portfolio_view', 'title', 'text', 'Column loan_pro_sandbox._loan_portfolio_view.title should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_portfolio_view', 'title', 'Column loan_pro_sandbox._loan_portfolio_view.title should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_portfolio_view', 'title', 'Column loan_pro_sandbox._loan_portfolio_view.title should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_portfolio_view', 'active', 'Column loan_pro_sandbox._loan_portfolio_view.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_portfolio_view', 'active', 'integer', 'Column loan_pro_sandbox._loan_portfolio_view.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_portfolio_view', 'active', 'Column loan_pro_sandbox._loan_portfolio_view.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_portfolio_view', 'active', 'Column loan_pro_sandbox._loan_portfolio_view.active should not  have a default');

SELECT * FROM finish();
ROLLBACK;
