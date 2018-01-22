SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_reverse_calc_settings',
    'Should have foreign table loan_pro_chorus_fdw._loan_reverse_calc_settings'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_reverse_calc_settings',
    'Table loan_pro_chorus_fdw._loan_reverse_calc_settings should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_reverse_calc_settings'::name, ARRAY[
    'id'::name,
    'query'::name,
    'loans'::name,
    'running'::name,
    'updated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'id', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'id', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'id', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'query', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.query should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'query', 'text', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.query should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'query', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.query should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'query', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.query should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'loans', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.loans should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'loans', 'text', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.loans should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'loans', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.loans should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'loans', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.loans should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'running', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.running should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'running', 'integer', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.running should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'running', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.running should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'running', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.running should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'updated', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.updated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'updated', 'text', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.updated should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'updated', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.updated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'updated', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.updated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'deleted', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'deleted', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_reverse_calc_settings', 'deleted', 'Column loan_pro_chorus_fdw._loan_reverse_calc_settings.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
