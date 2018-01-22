SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_yearly_stats_view',
    'Should have foreign table loan_pro_chorus_fdw._loan_yearly_stats_view'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_yearly_stats_view',
    'Table loan_pro_chorus_fdw._loan_yearly_stats_view should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_yearly_stats_view'::name, ARRAY[
    'entity_id'::name,
    'interest'::name,
    'principal'::name,
    'discount'::name,
    'fees'::name,
    'escrow'::name,
    'total'::name,
    'year'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'entity_id', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'entity_id', 'integer', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'entity_id', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'entity_id', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'interest', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.interest should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'interest', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.interest should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'interest', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.interest should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'interest', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.interest should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'principal', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.principal should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'principal', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.principal should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'principal', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.principal should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'principal', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.principal should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'discount', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.discount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'discount', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.discount should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'discount', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.discount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'discount', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.discount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'fees', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.fees should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'fees', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.fees should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'fees', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.fees should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'fees', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.fees should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'escrow', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.escrow should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'escrow', 'numeric(32,2)', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.escrow should be type numeric(32,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'escrow', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.escrow should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'escrow', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.escrow should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'total', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.total should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'total', 'numeric(36,2)', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.total should be type numeric(36,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'total', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.total should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'total', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.total should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'year', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.year should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'year', 'integer', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.year should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'year', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.year should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_yearly_stats_view', 'year', 'Column loan_pro_chorus_fdw._loan_yearly_stats_view.year should not  have a default');

SELECT * FROM finish();
ROLLBACK;
