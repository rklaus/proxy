SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_fdw', '_loan_future_stats_view',
    'Should have foreign table loan_pro_fdw._loan_future_stats_view'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_loan_future_stats_view',
    'Table loan_pro_fdw._loan_future_stats_view should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_loan_future_stats_view'::name, ARRAY[
    'entity_id'::name,
    'paymentinterest'::name,
    'paymentfees'::name,
    'paymentprincipal'::name,
    'paymentdiscount'::name,
    'paymentescrow'::name
]);

SELECT has_column(       'loan_pro_fdw', '_loan_future_stats_view', 'entity_id', 'Column loan_pro_fdw._loan_future_stats_view.entity_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_future_stats_view', 'entity_id', 'integer', 'Column loan_pro_fdw._loan_future_stats_view.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_future_stats_view', 'entity_id', 'Column loan_pro_fdw._loan_future_stats_view.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_future_stats_view', 'entity_id', 'Column loan_pro_fdw._loan_future_stats_view.entity_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_future_stats_view', 'paymentinterest', 'Column loan_pro_fdw._loan_future_stats_view.paymentinterest should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentinterest', 'numeric(32,2)', 'Column loan_pro_fdw._loan_future_stats_view.paymentinterest should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentinterest', 'Column loan_pro_fdw._loan_future_stats_view.paymentinterest should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_future_stats_view', 'paymentinterest', 'Column loan_pro_fdw._loan_future_stats_view.paymentinterest should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_future_stats_view', 'paymentfees', 'Column loan_pro_fdw._loan_future_stats_view.paymentfees should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentfees', 'numeric(32,2)', 'Column loan_pro_fdw._loan_future_stats_view.paymentfees should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentfees', 'Column loan_pro_fdw._loan_future_stats_view.paymentfees should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_future_stats_view', 'paymentfees', 'Column loan_pro_fdw._loan_future_stats_view.paymentfees should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_future_stats_view', 'paymentprincipal', 'Column loan_pro_fdw._loan_future_stats_view.paymentprincipal should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentprincipal', 'numeric(32,2)', 'Column loan_pro_fdw._loan_future_stats_view.paymentprincipal should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentprincipal', 'Column loan_pro_fdw._loan_future_stats_view.paymentprincipal should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_future_stats_view', 'paymentprincipal', 'Column loan_pro_fdw._loan_future_stats_view.paymentprincipal should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_future_stats_view', 'paymentdiscount', 'Column loan_pro_fdw._loan_future_stats_view.paymentdiscount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentdiscount', 'numeric(32,2)', 'Column loan_pro_fdw._loan_future_stats_view.paymentdiscount should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentdiscount', 'Column loan_pro_fdw._loan_future_stats_view.paymentdiscount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_future_stats_view', 'paymentdiscount', 'Column loan_pro_fdw._loan_future_stats_view.paymentdiscount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_future_stats_view', 'paymentescrow', 'Column loan_pro_fdw._loan_future_stats_view.paymentescrow should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentescrow', 'numeric(32,2)', 'Column loan_pro_fdw._loan_future_stats_view.paymentescrow should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_future_stats_view', 'paymentescrow', 'Column loan_pro_fdw._loan_future_stats_view.paymentescrow should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_future_stats_view', 'paymentescrow', 'Column loan_pro_fdw._loan_future_stats_view.paymentescrow should not  have a default');

SELECT * FROM finish();
ROLLBACK;
