SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_report_cache',
    'Should have foreign table loan_pro_sandbox._report_cache'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_report_cache',
    'Table loan_pro_sandbox._report_cache should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_report_cache'::name, ARRAY[
    'user_id'::name,
    'report'::name,
    'query'::name,
    'ids'::name,
    'date'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_report_cache', 'user_id', 'Column loan_pro_sandbox._report_cache.user_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_report_cache', 'user_id', 'text', 'Column loan_pro_sandbox._report_cache.user_id should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_report_cache', 'user_id', 'Column loan_pro_sandbox._report_cache.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_report_cache', 'user_id', 'Column loan_pro_sandbox._report_cache.user_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_report_cache', 'report', 'Column loan_pro_sandbox._report_cache.report should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_report_cache', 'report', 'character varying(100)', 'Column loan_pro_sandbox._report_cache.report should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_report_cache', 'report', 'Column loan_pro_sandbox._report_cache.report should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_report_cache', 'report', 'Column loan_pro_sandbox._report_cache.report should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_report_cache', 'query', 'Column loan_pro_sandbox._report_cache.query should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_report_cache', 'query', 'text', 'Column loan_pro_sandbox._report_cache.query should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_report_cache', 'query', 'Column loan_pro_sandbox._report_cache.query should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_report_cache', 'query', 'Column loan_pro_sandbox._report_cache.query should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_report_cache', 'ids', 'Column loan_pro_sandbox._report_cache.ids should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_report_cache', 'ids', 'text', 'Column loan_pro_sandbox._report_cache.ids should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_report_cache', 'ids', 'Column loan_pro_sandbox._report_cache.ids should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_report_cache', 'ids', 'Column loan_pro_sandbox._report_cache.ids should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_report_cache', 'date', 'Column loan_pro_sandbox._report_cache.date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_report_cache', 'date', 'text', 'Column loan_pro_sandbox._report_cache.date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_report_cache', 'date', 'Column loan_pro_sandbox._report_cache.date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_report_cache', 'date', 'Column loan_pro_sandbox._report_cache.date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_report_cache', 'lastupdated', 'Column loan_pro_sandbox._report_cache.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_report_cache', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._report_cache.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_report_cache', 'lastupdated', 'Column loan_pro_sandbox._report_cache.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_report_cache', 'lastupdated', 'Column loan_pro_sandbox._report_cache.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
