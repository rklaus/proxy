SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_history_funding_report_view',
    'Should have foreign table loan_pro_chorus_fdw._history_funding_report_view'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_history_funding_report_view',
    'Table loan_pro_chorus_fdw._history_funding_report_view should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_history_funding_report_view'::name, ARRAY[
    'loan_id'::name,
    'tranwho'::name,
    'tranname'::name,
    'tranmethod'::name,
    'tranamount'::name,
    'trandate'::name,
    'trancashdrawer'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_history_funding_report_view', 'loan_id', 'Column loan_pro_chorus_fdw._history_funding_report_view.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._history_funding_report_view.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'loan_id', 'Column loan_pro_chorus_fdw._history_funding_report_view.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_history_funding_report_view', 'loan_id', 'Column loan_pro_chorus_fdw._history_funding_report_view.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranwho', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranwho should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranwho', 'character varying(14)', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranwho should be type character varying(14)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranwho', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranwho should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_history_funding_report_view', 'tranwho', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranwho should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranname', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranname should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranname', 'text', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranname should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranname', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranname should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_history_funding_report_view', 'tranname', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranname should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranmethod', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranmethod should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranmethod', 'character(31)', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranmethod should be type character(31)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranmethod', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranmethod should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_history_funding_report_view', 'tranmethod', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranmethod should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranamount', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranamount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranamount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranamount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'tranamount', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranamount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_history_funding_report_view', 'tranamount', 'Column loan_pro_chorus_fdw._history_funding_report_view.tranamount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_history_funding_report_view', 'trandate', 'Column loan_pro_chorus_fdw._history_funding_report_view.trandate should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'trandate', 'text', 'Column loan_pro_chorus_fdw._history_funding_report_view.trandate should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'trandate', 'Column loan_pro_chorus_fdw._history_funding_report_view.trandate should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_history_funding_report_view', 'trandate', 'Column loan_pro_chorus_fdw._history_funding_report_view.trandate should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_history_funding_report_view', 'trancashdrawer', 'Column loan_pro_chorus_fdw._history_funding_report_view.trancashdrawer should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'trancashdrawer', 'character varying(100)', 'Column loan_pro_chorus_fdw._history_funding_report_view.trancashdrawer should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_history_funding_report_view', 'trancashdrawer', 'Column loan_pro_chorus_fdw._history_funding_report_view.trancashdrawer should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_history_funding_report_view', 'trancashdrawer', 'Column loan_pro_chorus_fdw._history_funding_report_view.trancashdrawer should not  have a default');

SELECT * FROM finish();
ROLLBACK;
