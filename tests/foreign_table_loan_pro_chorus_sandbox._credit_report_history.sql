SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_credit_report_history',
    'Should have foreign table loan_pro_chorus_sandbox._credit_report_history'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_credit_report_history',
    'Table loan_pro_chorus_sandbox._credit_report_history should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_credit_report_history'::name, ARRAY[
    'id'::name,
    'time_completed'::name,
    'archive_password'::name,
    'created_by'::name,
    'ip'::name,
    'file_name'::name,
    'file_size'::name,
    'file_link'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'id', 'Column loan_pro_chorus_sandbox._credit_report_history.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'id', 'integer', 'Column loan_pro_chorus_sandbox._credit_report_history.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'id', 'Column loan_pro_chorus_sandbox._credit_report_history.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'id', 'Column loan_pro_chorus_sandbox._credit_report_history.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'time_completed', 'Column loan_pro_chorus_sandbox._credit_report_history.time_completed should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'time_completed', 'text', 'Column loan_pro_chorus_sandbox._credit_report_history.time_completed should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'time_completed', 'Column loan_pro_chorus_sandbox._credit_report_history.time_completed should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'time_completed', 'Column loan_pro_chorus_sandbox._credit_report_history.time_completed should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'archive_password', 'Column loan_pro_chorus_sandbox._credit_report_history.archive_password should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'archive_password', 'text', 'Column loan_pro_chorus_sandbox._credit_report_history.archive_password should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'archive_password', 'Column loan_pro_chorus_sandbox._credit_report_history.archive_password should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'archive_password', 'Column loan_pro_chorus_sandbox._credit_report_history.archive_password should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'created_by', 'Column loan_pro_chorus_sandbox._credit_report_history.created_by should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'created_by', 'character varying(100)', 'Column loan_pro_chorus_sandbox._credit_report_history.created_by should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'created_by', 'Column loan_pro_chorus_sandbox._credit_report_history.created_by should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'created_by', 'Column loan_pro_chorus_sandbox._credit_report_history.created_by should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'ip', 'Column loan_pro_chorus_sandbox._credit_report_history.ip should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'ip', 'character varying(46)', 'Column loan_pro_chorus_sandbox._credit_report_history.ip should be type character varying(46)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'ip', 'Column loan_pro_chorus_sandbox._credit_report_history.ip should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'ip', 'Column loan_pro_chorus_sandbox._credit_report_history.ip should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'file_name', 'Column loan_pro_chorus_sandbox._credit_report_history.file_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'file_name', 'character varying(50)', 'Column loan_pro_chorus_sandbox._credit_report_history.file_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'file_name', 'Column loan_pro_chorus_sandbox._credit_report_history.file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'file_name', 'Column loan_pro_chorus_sandbox._credit_report_history.file_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'file_size', 'Column loan_pro_chorus_sandbox._credit_report_history.file_size should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'file_size', 'character varying(15)', 'Column loan_pro_chorus_sandbox._credit_report_history.file_size should be type character varying(15)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'file_size', 'Column loan_pro_chorus_sandbox._credit_report_history.file_size should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'file_size', 'Column loan_pro_chorus_sandbox._credit_report_history.file_size should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'file_link', 'Column loan_pro_chorus_sandbox._credit_report_history.file_link should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'file_link', 'text', 'Column loan_pro_chorus_sandbox._credit_report_history.file_link should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'file_link', 'Column loan_pro_chorus_sandbox._credit_report_history.file_link should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'file_link', 'Column loan_pro_chorus_sandbox._credit_report_history.file_link should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_report_history', 'deleted', 'Column loan_pro_chorus_sandbox._credit_report_history.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_report_history', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._credit_report_history.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_report_history', 'deleted', 'Column loan_pro_chorus_sandbox._credit_report_history.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_report_history', 'deleted', 'Column loan_pro_chorus_sandbox._credit_report_history.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
