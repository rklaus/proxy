SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_schedule_template_lines_entity',
    'Should have foreign table loan_pro_chorus_sandbox._schedule_template_lines_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_schedule_template_lines_entity',
    'Table loan_pro_chorus_sandbox._schedule_template_lines_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_schedule_template_lines_entity'::name, ARRAY[
    'id'::name,
    'template_id'::name,
    'term'::name,
    'rate'::name,
    'solve_for'::name,
    'solve_using'::name,
    'amount'::name,
    'balance'::name,
    'percent'::name,
    'advanced_terms'::name,
    'force_balloon'::name,
    'last_as_final'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'id', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'id', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'id', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'template_id', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.template_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'template_id', 'integer', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.template_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'template_id', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'template_id', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.template_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'term', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.term should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'term', 'integer', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.term should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'term', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.term should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'term', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.term should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'rate', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.rate should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'rate', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.rate should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'rate', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.rate should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'rate', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.rate should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'solve_for', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.solve_for should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'solve_for', 'character varying(40)', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.solve_for should be type character varying(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'solve_for', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.solve_for should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'solve_for', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.solve_for should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'solve_using', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.solve_using should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'solve_using', 'character(40)', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.solve_using should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'solve_using', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.solve_using should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'solve_using', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.solve_using should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'amount', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'amount', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'amount', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'balance', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.balance should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'balance', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'balance', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'balance', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'percent', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.percent should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'percent', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'percent', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'percent', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'advanced_terms', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.advanced_terms should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'advanced_terms', 'integer', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.advanced_terms should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'advanced_terms', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.advanced_terms should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'advanced_terms', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.advanced_terms should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'force_balloon', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.force_balloon should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'force_balloon', 'integer', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.force_balloon should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'force_balloon', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.force_balloon should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'force_balloon', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.force_balloon should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'last_as_final', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.last_as_final should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'last_as_final', 'integer', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.last_as_final should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'last_as_final', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.last_as_final should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'last_as_final', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.last_as_final should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'deleted', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'deleted', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'deleted', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_schedule_template_lines_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._schedule_template_lines_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
