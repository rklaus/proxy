SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_credit_report_queue',
    'Should have foreign table loan_pro_sandbox._credit_report_queue'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_credit_report_queue',
    'Table loan_pro_sandbox._credit_report_queue should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_credit_report_queue'::name, ARRAY[
    'id'::name,
    'status'::name,
    'time_queue'::name,
    'time_completed'::name,
    'queued_by'::name,
    'info'::name,
    'file_name'::name,
    'file_link'::name,
    'rule'::name,
    'closed_date_restriction'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'id', 'Column loan_pro_sandbox._credit_report_queue.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'id', 'integer', 'Column loan_pro_sandbox._credit_report_queue.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'id', 'Column loan_pro_sandbox._credit_report_queue.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'id', 'Column loan_pro_sandbox._credit_report_queue.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'status', 'Column loan_pro_sandbox._credit_report_queue.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'status', 'character varying(45)', 'Column loan_pro_sandbox._credit_report_queue.status should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'status', 'Column loan_pro_sandbox._credit_report_queue.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'status', 'Column loan_pro_sandbox._credit_report_queue.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'time_queue', 'Column loan_pro_sandbox._credit_report_queue.time_queue should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'time_queue', 'text', 'Column loan_pro_sandbox._credit_report_queue.time_queue should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'time_queue', 'Column loan_pro_sandbox._credit_report_queue.time_queue should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'time_queue', 'Column loan_pro_sandbox._credit_report_queue.time_queue should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'time_completed', 'Column loan_pro_sandbox._credit_report_queue.time_completed should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'time_completed', 'text', 'Column loan_pro_sandbox._credit_report_queue.time_completed should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'time_completed', 'Column loan_pro_sandbox._credit_report_queue.time_completed should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'time_completed', 'Column loan_pro_sandbox._credit_report_queue.time_completed should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'queued_by', 'Column loan_pro_sandbox._credit_report_queue.queued_by should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'queued_by', 'character varying(100)', 'Column loan_pro_sandbox._credit_report_queue.queued_by should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'queued_by', 'Column loan_pro_sandbox._credit_report_queue.queued_by should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'queued_by', 'Column loan_pro_sandbox._credit_report_queue.queued_by should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'info', 'Column loan_pro_sandbox._credit_report_queue.info should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'info', 'text', 'Column loan_pro_sandbox._credit_report_queue.info should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'info', 'Column loan_pro_sandbox._credit_report_queue.info should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'info', 'Column loan_pro_sandbox._credit_report_queue.info should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'file_name', 'Column loan_pro_sandbox._credit_report_queue.file_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'file_name', 'character varying(50)', 'Column loan_pro_sandbox._credit_report_queue.file_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'file_name', 'Column loan_pro_sandbox._credit_report_queue.file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'file_name', 'Column loan_pro_sandbox._credit_report_queue.file_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'file_link', 'Column loan_pro_sandbox._credit_report_queue.file_link should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'file_link', 'text', 'Column loan_pro_sandbox._credit_report_queue.file_link should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'file_link', 'Column loan_pro_sandbox._credit_report_queue.file_link should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'file_link', 'Column loan_pro_sandbox._credit_report_queue.file_link should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'rule', 'Column loan_pro_sandbox._credit_report_queue.rule should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'rule', 'text', 'Column loan_pro_sandbox._credit_report_queue.rule should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'rule', 'Column loan_pro_sandbox._credit_report_queue.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'rule', 'Column loan_pro_sandbox._credit_report_queue.rule should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'closed_date_restriction', 'Column loan_pro_sandbox._credit_report_queue.closed_date_restriction should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'closed_date_restriction', 'integer', 'Column loan_pro_sandbox._credit_report_queue.closed_date_restriction should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'closed_date_restriction', 'Column loan_pro_sandbox._credit_report_queue.closed_date_restriction should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'closed_date_restriction', 'Column loan_pro_sandbox._credit_report_queue.closed_date_restriction should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_credit_report_queue', 'deleted', 'Column loan_pro_sandbox._credit_report_queue.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_credit_report_queue', 'deleted', 'integer', 'Column loan_pro_sandbox._credit_report_queue.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_credit_report_queue', 'deleted', 'Column loan_pro_sandbox._credit_report_queue.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_credit_report_queue', 'deleted', 'Column loan_pro_sandbox._credit_report_queue.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
