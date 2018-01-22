SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_escrow_tx_view',
    'Should have foreign table loan_pro_sandbox._loan_escrow_tx_view'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_escrow_tx_view',
    'Table loan_pro_sandbox._loan_escrow_tx_view should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_escrow_tx_view'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'disclosure_lnamt_add'::name,
    'payment_application'::name,
    'payoff_option'::name,
    'apr_include'::name,
    'schedule_include'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_escrow_tx_view', 'id', 'Column loan_pro_sandbox._loan_escrow_tx_view.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'id', 'integer', 'Column loan_pro_sandbox._loan_escrow_tx_view.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'id', 'Column loan_pro_sandbox._loan_escrow_tx_view.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_escrow_tx_view', 'id', 'Column loan_pro_sandbox._loan_escrow_tx_view.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_escrow_tx_view', 'loan_id', 'Column loan_pro_sandbox._loan_escrow_tx_view.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'loan_id', 'integer', 'Column loan_pro_sandbox._loan_escrow_tx_view.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'loan_id', 'Column loan_pro_sandbox._loan_escrow_tx_view.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_escrow_tx_view', 'loan_id', 'Column loan_pro_sandbox._loan_escrow_tx_view.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_escrow_tx_view', 'disclosure_lnamt_add', 'Column loan_pro_sandbox._loan_escrow_tx_view.disclosure_lnamt_add should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'disclosure_lnamt_add', 'integer', 'Column loan_pro_sandbox._loan_escrow_tx_view.disclosure_lnamt_add should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'disclosure_lnamt_add', 'Column loan_pro_sandbox._loan_escrow_tx_view.disclosure_lnamt_add should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_escrow_tx_view', 'disclosure_lnamt_add', 'Column loan_pro_sandbox._loan_escrow_tx_view.disclosure_lnamt_add should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_escrow_tx_view', 'payment_application', 'Column loan_pro_sandbox._loan_escrow_tx_view.payment_application should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'payment_application', 'character varying(30)', 'Column loan_pro_sandbox._loan_escrow_tx_view.payment_application should be type character varying(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'payment_application', 'Column loan_pro_sandbox._loan_escrow_tx_view.payment_application should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_escrow_tx_view', 'payment_application', 'Column loan_pro_sandbox._loan_escrow_tx_view.payment_application should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_escrow_tx_view', 'payoff_option', 'Column loan_pro_sandbox._loan_escrow_tx_view.payoff_option should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'payoff_option', 'character varying(50)', 'Column loan_pro_sandbox._loan_escrow_tx_view.payoff_option should be type character varying(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'payoff_option', 'Column loan_pro_sandbox._loan_escrow_tx_view.payoff_option should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_escrow_tx_view', 'payoff_option', 'Column loan_pro_sandbox._loan_escrow_tx_view.payoff_option should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_escrow_tx_view', 'apr_include', 'Column loan_pro_sandbox._loan_escrow_tx_view.apr_include should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'apr_include', 'integer', 'Column loan_pro_sandbox._loan_escrow_tx_view.apr_include should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'apr_include', 'Column loan_pro_sandbox._loan_escrow_tx_view.apr_include should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_escrow_tx_view', 'apr_include', 'Column loan_pro_sandbox._loan_escrow_tx_view.apr_include should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_escrow_tx_view', 'schedule_include', 'Column loan_pro_sandbox._loan_escrow_tx_view.schedule_include should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'schedule_include', 'integer', 'Column loan_pro_sandbox._loan_escrow_tx_view.schedule_include should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_escrow_tx_view', 'schedule_include', 'Column loan_pro_sandbox._loan_escrow_tx_view.schedule_include should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_escrow_tx_view', 'schedule_include', 'Column loan_pro_sandbox._loan_escrow_tx_view.schedule_include should not  have a default');

SELECT * FROM finish();
ROLLBACK;
