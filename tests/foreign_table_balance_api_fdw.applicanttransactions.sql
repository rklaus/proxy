SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'balance_api_fdw', 'applicanttransactions',
    'Should have foreign table balance_api_fdw.applicanttransactions'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'applicanttransactions',
    'Table balance_api_fdw.applicanttransactions should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'applicanttransactions'::name, ARRAY[
    'transaction_number'::name,
    'applicant_transaction_number_id'::name,
    'transaction_request'::name,
    'transaction_response'::name,
    'transaction_date'::name,
    'transaction_time'::name,
    'created_at'::name,
    'updated_at'::name
]);

SELECT has_column(       'balance_api_fdw', 'applicanttransactions', 'transaction_number', 'Column balance_api_fdw.applicanttransactions.transaction_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicanttransactions', 'transaction_number', 'integer', 'Column balance_api_fdw.applicanttransactions.transaction_number should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicanttransactions', 'transaction_number', 'Column balance_api_fdw.applicanttransactions.transaction_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicanttransactions', 'transaction_number', 'Column balance_api_fdw.applicanttransactions.transaction_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicanttransactions', 'applicant_transaction_number_id', 'Column balance_api_fdw.applicanttransactions.applicant_transaction_number_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicanttransactions', 'applicant_transaction_number_id', 'integer', 'Column balance_api_fdw.applicanttransactions.applicant_transaction_number_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicanttransactions', 'applicant_transaction_number_id', 'Column balance_api_fdw.applicanttransactions.applicant_transaction_number_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicanttransactions', 'applicant_transaction_number_id', 'Column balance_api_fdw.applicanttransactions.applicant_transaction_number_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicanttransactions', 'transaction_request', 'Column balance_api_fdw.applicanttransactions.transaction_request should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicanttransactions', 'transaction_request', 'text', 'Column balance_api_fdw.applicanttransactions.transaction_request should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicanttransactions', 'transaction_request', 'Column balance_api_fdw.applicanttransactions.transaction_request should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicanttransactions', 'transaction_request', 'Column balance_api_fdw.applicanttransactions.transaction_request should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicanttransactions', 'transaction_response', 'Column balance_api_fdw.applicanttransactions.transaction_response should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicanttransactions', 'transaction_response', 'text', 'Column balance_api_fdw.applicanttransactions.transaction_response should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicanttransactions', 'transaction_response', 'Column balance_api_fdw.applicanttransactions.transaction_response should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicanttransactions', 'transaction_response', 'Column balance_api_fdw.applicanttransactions.transaction_response should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicanttransactions', 'transaction_date', 'Column balance_api_fdw.applicanttransactions.transaction_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicanttransactions', 'transaction_date', 'date', 'Column balance_api_fdw.applicanttransactions.transaction_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicanttransactions', 'transaction_date', 'Column balance_api_fdw.applicanttransactions.transaction_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicanttransactions', 'transaction_date', 'Column balance_api_fdw.applicanttransactions.transaction_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicanttransactions', 'transaction_time', 'Column balance_api_fdw.applicanttransactions.transaction_time should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicanttransactions', 'transaction_time', 'time without time zone', 'Column balance_api_fdw.applicanttransactions.transaction_time should be type time without time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicanttransactions', 'transaction_time', 'Column balance_api_fdw.applicanttransactions.transaction_time should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicanttransactions', 'transaction_time', 'Column balance_api_fdw.applicanttransactions.transaction_time should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicanttransactions', 'created_at', 'Column balance_api_fdw.applicanttransactions.created_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicanttransactions', 'created_at', 'timestamp with time zone', 'Column balance_api_fdw.applicanttransactions.created_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicanttransactions', 'created_at', 'Column balance_api_fdw.applicanttransactions.created_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicanttransactions', 'created_at', 'Column balance_api_fdw.applicanttransactions.created_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicanttransactions', 'updated_at', 'Column balance_api_fdw.applicanttransactions.updated_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicanttransactions', 'updated_at', 'timestamp with time zone', 'Column balance_api_fdw.applicanttransactions.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicanttransactions', 'updated_at', 'Column balance_api_fdw.applicanttransactions.updated_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicanttransactions', 'updated_at', 'Column balance_api_fdw.applicanttransactions.updated_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
