SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_defaults_escrow_calculator',
    'Should have foreign table loan_pro_chorus_sandbox._defaults_escrow_calculator'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_defaults_escrow_calculator',
    'Table loan_pro_chorus_sandbox._defaults_escrow_calculator should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_defaults_escrow_calculator'::name, ARRAY[
    'id'::name,
    'parent_type'::name,
    'loan_default_id'::name,
    'subset'::name,
    'term'::name,
    'total'::name,
    'percent'::name,
    'first_period'::name,
    'regular_period'::name,
    'percent_base'::name,
    'prorate_first'::name,
    'extend_final'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'id', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'id', 'integer', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'id', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'id', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'parent_type', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.parent_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'parent_type', 'character(26)', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.parent_type should be type character(26)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'parent_type', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.parent_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'parent_type', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.parent_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'loan_default_id', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.loan_default_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'loan_default_id', 'integer', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.loan_default_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'loan_default_id', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.loan_default_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'loan_default_id', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.loan_default_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'subset', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.subset should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'subset', 'integer', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.subset should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'subset', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.subset should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'subset', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.subset should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'term', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.term should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'term', 'integer', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.term should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'term', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.term should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'term', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.term should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'total', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.total should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'total', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.total should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'total', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.total should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'total', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.total should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'percent', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.percent should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'percent', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'percent', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'percent', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'first_period', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.first_period should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'first_period', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.first_period should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'first_period', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.first_period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'first_period', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.first_period should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'regular_period', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.regular_period should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'regular_period', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.regular_period should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'regular_period', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.regular_period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'regular_period', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.regular_period should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'percent_base', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.percent_base should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'percent_base', 'character(40)', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.percent_base should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'percent_base', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.percent_base should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'percent_base', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.percent_base should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'prorate_first', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.prorate_first should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'prorate_first', 'character(40)', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.prorate_first should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'prorate_first', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.prorate_first should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'prorate_first', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.prorate_first should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'extend_final', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.extend_final should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'extend_final', 'integer', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.extend_final should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'extend_final', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.extend_final should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'extend_final', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.extend_final should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'deleted', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'deleted', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'deleted', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'lastupdated', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'lastupdated', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_escrow_calculator', 'lastupdated', 'Column loan_pro_chorus_sandbox._defaults_escrow_calculator.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
