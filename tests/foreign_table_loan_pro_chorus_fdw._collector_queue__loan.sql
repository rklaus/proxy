SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_collector_queue__loan',
    'Should have foreign table loan_pro_chorus_fdw._collector_queue__loan'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_collector_queue__loan',
    'Table loan_pro_chorus_fdw._collector_queue__loan should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_collector_queue__loan'::name, ARRAY[
    'collector_queue_id'::name,
    'loan_id'::name,
    'position'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue__loan', 'collector_queue_id', 'Column loan_pro_chorus_fdw._collector_queue__loan.collector_queue_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue__loan', 'collector_queue_id', 'integer', 'Column loan_pro_chorus_fdw._collector_queue__loan.collector_queue_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue__loan', 'collector_queue_id', 'Column loan_pro_chorus_fdw._collector_queue__loan.collector_queue_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue__loan', 'collector_queue_id', 'Column loan_pro_chorus_fdw._collector_queue__loan.collector_queue_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue__loan', 'loan_id', 'Column loan_pro_chorus_fdw._collector_queue__loan.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue__loan', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._collector_queue__loan.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue__loan', 'loan_id', 'Column loan_pro_chorus_fdw._collector_queue__loan.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue__loan', 'loan_id', 'Column loan_pro_chorus_fdw._collector_queue__loan.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue__loan', 'position', 'Column loan_pro_chorus_fdw._collector_queue__loan."position" should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue__loan', 'position', 'bigint', 'Column loan_pro_chorus_fdw._collector_queue__loan."position" should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue__loan', 'position', 'Column loan_pro_chorus_fdw._collector_queue__loan."position" should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue__loan', 'position', 'Column loan_pro_chorus_fdw._collector_queue__loan."position" should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue__loan', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue__loan.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue__loan', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._collector_queue__loan.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue__loan', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue__loan.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue__loan', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue__loan.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
