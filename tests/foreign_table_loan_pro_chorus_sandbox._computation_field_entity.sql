SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_computation_field_entity',
    'Should have foreign table loan_pro_chorus_sandbox._computation_field_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_computation_field_entity',
    'Table loan_pro_chorus_sandbox._computation_field_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_computation_field_entity'::name, ARRAY[
    'id'::name,
    'title'::name,
    'round'::name,
    'format'::name,
    'display'::name,
    'rule'::name,
    'state'::name,
    'entity_type'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'id', 'Column loan_pro_chorus_sandbox._computation_field_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._computation_field_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'id', 'Column loan_pro_chorus_sandbox._computation_field_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'id', 'Column loan_pro_chorus_sandbox._computation_field_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'title', 'Column loan_pro_chorus_sandbox._computation_field_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'title', 'character varying(100)', 'Column loan_pro_chorus_sandbox._computation_field_entity.title should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'title', 'Column loan_pro_chorus_sandbox._computation_field_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'title', 'Column loan_pro_chorus_sandbox._computation_field_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'round', 'Column loan_pro_chorus_sandbox._computation_field_entity.round should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'round', 'character varying(100)', 'Column loan_pro_chorus_sandbox._computation_field_entity.round should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'round', 'Column loan_pro_chorus_sandbox._computation_field_entity.round should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'round', 'Column loan_pro_chorus_sandbox._computation_field_entity.round should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'format', 'Column loan_pro_chorus_sandbox._computation_field_entity.format should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'format', 'character varying(100)', 'Column loan_pro_chorus_sandbox._computation_field_entity.format should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'format', 'Column loan_pro_chorus_sandbox._computation_field_entity.format should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'format', 'Column loan_pro_chorus_sandbox._computation_field_entity.format should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'display', 'Column loan_pro_chorus_sandbox._computation_field_entity.display should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'display', 'character varying(100)', 'Column loan_pro_chorus_sandbox._computation_field_entity.display should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'display', 'Column loan_pro_chorus_sandbox._computation_field_entity.display should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'display', 'Column loan_pro_chorus_sandbox._computation_field_entity.display should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'rule', 'Column loan_pro_chorus_sandbox._computation_field_entity.rule should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'rule', 'text', 'Column loan_pro_chorus_sandbox._computation_field_entity.rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'rule', 'Column loan_pro_chorus_sandbox._computation_field_entity.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'rule', 'Column loan_pro_chorus_sandbox._computation_field_entity.rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'state', 'Column loan_pro_chorus_sandbox._computation_field_entity.state should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'state', 'text', 'Column loan_pro_chorus_sandbox._computation_field_entity.state should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'state', 'Column loan_pro_chorus_sandbox._computation_field_entity.state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'state', 'Column loan_pro_chorus_sandbox._computation_field_entity.state should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._computation_field_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._computation_field_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._computation_field_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._computation_field_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'active', 'Column loan_pro_chorus_sandbox._computation_field_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._computation_field_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'active', 'Column loan_pro_chorus_sandbox._computation_field_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'active', 'Column loan_pro_chorus_sandbox._computation_field_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'deleted', 'Column loan_pro_chorus_sandbox._computation_field_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._computation_field_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'deleted', 'Column loan_pro_chorus_sandbox._computation_field_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'deleted', 'Column loan_pro_chorus_sandbox._computation_field_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'created', 'Column loan_pro_chorus_sandbox._computation_field_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._computation_field_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'created', 'Column loan_pro_chorus_sandbox._computation_field_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'created', 'Column loan_pro_chorus_sandbox._computation_field_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_computation_field_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._computation_field_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._computation_field_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_computation_field_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._computation_field_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_computation_field_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._computation_field_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
