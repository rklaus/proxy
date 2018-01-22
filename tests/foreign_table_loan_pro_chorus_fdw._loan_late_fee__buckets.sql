SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_late_fee__buckets',
    'Should have foreign table loan_pro_chorus_fdw._loan_late_fee__buckets'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_late_fee__buckets',
    'Table loan_pro_chorus_fdw._loan_late_fee__buckets should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_late_fee__buckets'::name, ARRAY[
    'loan_id'::name,
    'subset'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'loan_id', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'loan_id', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'loan_id', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'subset', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.subset should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'subset', 'integer', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.subset should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'subset', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.subset should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'subset', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.subset should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'created', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'created', 'text', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'created', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'created', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'deleted', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'deleted', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_late_fee__buckets', 'deleted', 'Column loan_pro_chorus_fdw._loan_late_fee__buckets.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
