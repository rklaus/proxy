SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'loan_pro_fdw', '_search_index_error_log',
    'Should have foreign table loan_pro_fdw._search_index_error_log'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_search_index_error_log',
    'Table loan_pro_fdw._search_index_error_log should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_search_index_error_log'::name, ARRAY[
    'entity_id'::name,
    'entity_type'::name,
    'date'::name,
    'error'::name
]);

SELECT has_column(       'loan_pro_fdw', '_search_index_error_log', 'entity_id', 'Column loan_pro_fdw._search_index_error_log.entity_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_search_index_error_log', 'entity_id', 'integer', 'Column loan_pro_fdw._search_index_error_log.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_search_index_error_log', 'entity_id', 'Column loan_pro_fdw._search_index_error_log.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_search_index_error_log', 'entity_id', 'Column loan_pro_fdw._search_index_error_log.entity_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_search_index_error_log', 'entity_type', 'Column loan_pro_fdw._search_index_error_log.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_search_index_error_log', 'entity_type', 'character varying(45)', 'Column loan_pro_fdw._search_index_error_log.entity_type should be type character varying(45)');
SELECT col_is_null(      'loan_pro_fdw', '_search_index_error_log', 'entity_type', 'Column loan_pro_fdw._search_index_error_log.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_search_index_error_log', 'entity_type', 'Column loan_pro_fdw._search_index_error_log.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_search_index_error_log', 'date', 'Column loan_pro_fdw._search_index_error_log.date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_search_index_error_log', 'date', 'text', 'Column loan_pro_fdw._search_index_error_log.date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_search_index_error_log', 'date', 'Column loan_pro_fdw._search_index_error_log.date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_search_index_error_log', 'date', 'Column loan_pro_fdw._search_index_error_log.date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_search_index_error_log', 'error', 'Column loan_pro_fdw._search_index_error_log.error should exist');
SELECT col_type_is(      'loan_pro_fdw', '_search_index_error_log', 'error', 'text', 'Column loan_pro_fdw._search_index_error_log.error should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_search_index_error_log', 'error', 'Column loan_pro_fdw._search_index_error_log.error should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_search_index_error_log', 'error', 'Column loan_pro_fdw._search_index_error_log.error should not  have a default');

SELECT * FROM finish();
ROLLBACK;
