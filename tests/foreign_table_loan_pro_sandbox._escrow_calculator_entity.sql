SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(63);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_escrow_calculator_entity',
    'Should have foreign table loan_pro_sandbox._escrow_calculator_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_escrow_calculator_entity',
    'Table loan_pro_sandbox._escrow_calculator_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_escrow_calculator_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'mod_id'::name,
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

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'id', 'Column loan_pro_sandbox._escrow_calculator_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'id', 'integer', 'Column loan_pro_sandbox._escrow_calculator_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'id', 'Column loan_pro_sandbox._escrow_calculator_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'id', 'Column loan_pro_sandbox._escrow_calculator_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'entity_id', 'Column loan_pro_sandbox._escrow_calculator_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'entity_id', 'integer', 'Column loan_pro_sandbox._escrow_calculator_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'entity_id', 'Column loan_pro_sandbox._escrow_calculator_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'entity_id', 'Column loan_pro_sandbox._escrow_calculator_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'entity_type', 'Column loan_pro_sandbox._escrow_calculator_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_sandbox._escrow_calculator_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'entity_type', 'Column loan_pro_sandbox._escrow_calculator_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'entity_type', 'Column loan_pro_sandbox._escrow_calculator_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'mod_id', 'Column loan_pro_sandbox._escrow_calculator_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'mod_id', 'integer', 'Column loan_pro_sandbox._escrow_calculator_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'mod_id', 'Column loan_pro_sandbox._escrow_calculator_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'mod_id', 'Column loan_pro_sandbox._escrow_calculator_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'subset', 'Column loan_pro_sandbox._escrow_calculator_entity.subset should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'subset', 'integer', 'Column loan_pro_sandbox._escrow_calculator_entity.subset should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'subset', 'Column loan_pro_sandbox._escrow_calculator_entity.subset should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'subset', 'Column loan_pro_sandbox._escrow_calculator_entity.subset should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'term', 'Column loan_pro_sandbox._escrow_calculator_entity.term should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'term', 'integer', 'Column loan_pro_sandbox._escrow_calculator_entity.term should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'term', 'Column loan_pro_sandbox._escrow_calculator_entity.term should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'term', 'Column loan_pro_sandbox._escrow_calculator_entity.term should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'total', 'Column loan_pro_sandbox._escrow_calculator_entity.total should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'total', 'numeric(11,2)', 'Column loan_pro_sandbox._escrow_calculator_entity.total should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'total', 'Column loan_pro_sandbox._escrow_calculator_entity.total should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'total', 'Column loan_pro_sandbox._escrow_calculator_entity.total should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'percent', 'Column loan_pro_sandbox._escrow_calculator_entity.percent should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'percent', 'numeric(11,2)', 'Column loan_pro_sandbox._escrow_calculator_entity.percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'percent', 'Column loan_pro_sandbox._escrow_calculator_entity.percent should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'percent', 'Column loan_pro_sandbox._escrow_calculator_entity.percent should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'first_period', 'Column loan_pro_sandbox._escrow_calculator_entity.first_period should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'first_period', 'numeric(11,2)', 'Column loan_pro_sandbox._escrow_calculator_entity.first_period should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'first_period', 'Column loan_pro_sandbox._escrow_calculator_entity.first_period should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'first_period', 'Column loan_pro_sandbox._escrow_calculator_entity.first_period should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'regular_period', 'Column loan_pro_sandbox._escrow_calculator_entity.regular_period should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'regular_period', 'numeric(11,2)', 'Column loan_pro_sandbox._escrow_calculator_entity.regular_period should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'regular_period', 'Column loan_pro_sandbox._escrow_calculator_entity.regular_period should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'regular_period', 'Column loan_pro_sandbox._escrow_calculator_entity.regular_period should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'percent_base', 'Column loan_pro_sandbox._escrow_calculator_entity.percent_base should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'percent_base', 'character(40)', 'Column loan_pro_sandbox._escrow_calculator_entity.percent_base should be type character(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'percent_base', 'Column loan_pro_sandbox._escrow_calculator_entity.percent_base should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'percent_base', 'Column loan_pro_sandbox._escrow_calculator_entity.percent_base should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'prorate_first', 'Column loan_pro_sandbox._escrow_calculator_entity.prorate_first should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'prorate_first', 'character(40)', 'Column loan_pro_sandbox._escrow_calculator_entity.prorate_first should be type character(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'prorate_first', 'Column loan_pro_sandbox._escrow_calculator_entity.prorate_first should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'prorate_first', 'Column loan_pro_sandbox._escrow_calculator_entity.prorate_first should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'extend_final', 'Column loan_pro_sandbox._escrow_calculator_entity.extend_final should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'extend_final', 'integer', 'Column loan_pro_sandbox._escrow_calculator_entity.extend_final should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'extend_final', 'Column loan_pro_sandbox._escrow_calculator_entity.extend_final should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'extend_final', 'Column loan_pro_sandbox._escrow_calculator_entity.extend_final should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'deleted', 'Column loan_pro_sandbox._escrow_calculator_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._escrow_calculator_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'deleted', 'Column loan_pro_sandbox._escrow_calculator_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'deleted', 'Column loan_pro_sandbox._escrow_calculator_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_escrow_calculator_entity', 'lastupdated', 'Column loan_pro_sandbox._escrow_calculator_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_escrow_calculator_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._escrow_calculator_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_escrow_calculator_entity', 'lastupdated', 'Column loan_pro_sandbox._escrow_calculator_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_escrow_calculator_entity', 'lastupdated', 'Column loan_pro_sandbox._escrow_calculator_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
