SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_tx_payment_view',
    'Should have foreign table loan_pro_chorus_fdw._loan_tx_payment_view'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_tx_payment_view',
    'Table loan_pro_chorus_fdw._loan_tx_payment_view should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_tx_payment_view'::name, ARRAY[
    'payment_id'::name,
    'interest'::name,
    'principal'::name,
    'discount'::name,
    'fees'::name,
    'escrow'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'payment_id', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.payment_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'payment_id', 'bigint', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.payment_id should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'payment_id', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_tx_payment_view', 'payment_id', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.payment_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'interest', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.interest should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'interest', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.interest should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'interest', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.interest should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_tx_payment_view', 'interest', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.interest should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'principal', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.principal should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'principal', 'numeric(33,2)', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.principal should be type numeric(33,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'principal', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.principal should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_tx_payment_view', 'principal', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.principal should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'discount', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.discount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'discount', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.discount should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'discount', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.discount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_tx_payment_view', 'discount', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.discount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'fees', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.fees should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'fees', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.fees should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'fees', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.fees should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_tx_payment_view', 'fees', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.fees should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'escrow', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.escrow should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'escrow', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.escrow should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_tx_payment_view', 'escrow', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.escrow should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_tx_payment_view', 'escrow', 'Column loan_pro_chorus_fdw._loan_tx_payment_view.escrow should not  have a default');

SELECT * FROM finish();
ROLLBACK;
