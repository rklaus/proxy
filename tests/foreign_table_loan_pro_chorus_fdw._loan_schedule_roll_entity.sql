SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(87);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_schedule_roll_entity',
    'Should have foreign table loan_pro_chorus_fdw._loan_schedule_roll_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_schedule_roll_entity',
    'Table loan_pro_chorus_fdw._loan_schedule_roll_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_schedule_roll_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'mod_id'::name,
    'term'::name,
    'rate'::name,
    'solve_using'::name,
    'amount'::name,
    'percent'::name,
    'advanced_terms'::name,
    'solve_for'::name,
    'balance'::name,
    'balance_set'::name,
    'difference'::name,
    'force_balloon'::name,
    'last_as_final'::name,
    'basic_revert'::name,
    'is_curtailment'::name,
    'display_order'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'mod_id', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'term', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.term should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'term', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.term should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'term', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.term should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'term', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.term should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'rate', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.rate should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'rate', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.rate should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'rate', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.rate should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'rate', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.rate should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'solve_using', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.solve_using should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'solve_using', 'character(40)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.solve_using should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'solve_using', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.solve_using should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'solve_using', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.solve_using should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'percent', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.percent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'percent', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'percent', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'percent', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'advanced_terms', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.advanced_terms should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'advanced_terms', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.advanced_terms should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'advanced_terms', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.advanced_terms should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'advanced_terms', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.advanced_terms should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'solve_for', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.solve_for should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'solve_for', 'character(40)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.solve_for should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'solve_for', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.solve_for should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'solve_for', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.solve_for should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'balance', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.balance should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'balance', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'balance', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'balance', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'balance_set', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.balance_set should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'balance_set', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.balance_set should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'balance_set', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.balance_set should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'balance_set', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.balance_set should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'difference', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.difference should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'difference', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.difference should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'difference', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.difference should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'difference', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.difference should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'force_balloon', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.force_balloon should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'force_balloon', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.force_balloon should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'force_balloon', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.force_balloon should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'force_balloon', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.force_balloon should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'last_as_final', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.last_as_final should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'last_as_final', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.last_as_final should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'last_as_final', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.last_as_final should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'last_as_final', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.last_as_final should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'basic_revert', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.basic_revert should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'basic_revert', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.basic_revert should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'basic_revert', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.basic_revert should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'basic_revert', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.basic_revert should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'is_curtailment', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.is_curtailment should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'is_curtailment', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.is_curtailment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'is_curtailment', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.is_curtailment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'is_curtailment', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.is_curtailment should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'display_order', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.display_order should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'display_order', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.display_order should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'display_order', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.display_order should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'display_order', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.display_order should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_schedule_roll_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_schedule_roll_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
