SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan__recurrent_charge',
    'Should have foreign table loan_pro_chorus_fdw._loan__recurrent_charge'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan__recurrent_charge',
    'Table loan_pro_chorus_fdw._loan__recurrent_charge should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan__recurrent_charge'::name, ARRAY[
    'loan_id'::name,
    'recurrent_charge_id'::name,
    'enabled'::name,
    'fixed_amount'::name,
    'percentage'::name,
    'percentage_base'::name,
    'contingency_bracket_id'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'loan_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'loan_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'loan_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'recurrent_charge_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.recurrent_charge_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'recurrent_charge_id', 'integer', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.recurrent_charge_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'recurrent_charge_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.recurrent_charge_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'recurrent_charge_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.recurrent_charge_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'enabled', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'enabled', 'integer', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'enabled', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'enabled', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'fixed_amount', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.fixed_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'fixed_amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.fixed_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'fixed_amount', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.fixed_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'fixed_amount', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.fixed_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'percentage', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.percentage should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'percentage', 'numeric(5,2)', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.percentage should be type numeric(5,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'percentage', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.percentage should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'percentage', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.percentage should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'percentage_base', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.percentage_base should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'percentage_base', 'character(36)', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.percentage_base should be type character(36)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'percentage_base', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.percentage_base should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'percentage_base', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.percentage_base should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'contingency_bracket_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.contingency_bracket_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'contingency_bracket_id', 'character(33)', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.contingency_bracket_id should be type character(33)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'contingency_bracket_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.contingency_bracket_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'contingency_bracket_id', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.contingency_bracket_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'created', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'created', 'text', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'created', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'created', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'deleted', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__recurrent_charge', 'deleted', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__recurrent_charge', 'deleted', 'Column loan_pro_chorus_fdw._loan__recurrent_charge.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
