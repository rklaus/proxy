SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_restriction_group_entity',
    'Should have foreign table loan_pro_chorus_sandbox._restriction_group_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_restriction_group_entity',
    'Table loan_pro_chorus_sandbox._restriction_group_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_restriction_group_entity'::name, ARRAY[
    'id'::name,
    'access'::name,
    'name'::name,
    'description'::name,
    'rule'::name,
    'ui_state'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'id', 'Column loan_pro_chorus_sandbox._restriction_group_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'id', 'Column loan_pro_chorus_sandbox._restriction_group_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'id', 'Column loan_pro_chorus_sandbox._restriction_group_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'access', 'Column loan_pro_chorus_sandbox._restriction_group_entity.access should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'access', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entity.access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'access', 'Column loan_pro_chorus_sandbox._restriction_group_entity.access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'access', 'Column loan_pro_chorus_sandbox._restriction_group_entity.access should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'name', 'Column loan_pro_chorus_sandbox._restriction_group_entity.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'name', 'character varying(100)', 'Column loan_pro_chorus_sandbox._restriction_group_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'name', 'Column loan_pro_chorus_sandbox._restriction_group_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'name', 'Column loan_pro_chorus_sandbox._restriction_group_entity.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'description', 'Column loan_pro_chorus_sandbox._restriction_group_entity.description should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'description', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entity.description should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'description', 'Column loan_pro_chorus_sandbox._restriction_group_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'description', 'Column loan_pro_chorus_sandbox._restriction_group_entity.description should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'rule', 'Column loan_pro_chorus_sandbox._restriction_group_entity.rule should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'rule', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entity.rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'rule', 'Column loan_pro_chorus_sandbox._restriction_group_entity.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'rule', 'Column loan_pro_chorus_sandbox._restriction_group_entity.rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'ui_state', 'Column loan_pro_chorus_sandbox._restriction_group_entity.ui_state should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'ui_state', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entity.ui_state should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'ui_state', 'Column loan_pro_chorus_sandbox._restriction_group_entity.ui_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'ui_state', 'Column loan_pro_chorus_sandbox._restriction_group_entity.ui_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'active', 'Column loan_pro_chorus_sandbox._restriction_group_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'active', 'Column loan_pro_chorus_sandbox._restriction_group_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'active', 'Column loan_pro_chorus_sandbox._restriction_group_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'deleted', 'Column loan_pro_chorus_sandbox._restriction_group_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'deleted', 'Column loan_pro_chorus_sandbox._restriction_group_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'deleted', 'Column loan_pro_chorus_sandbox._restriction_group_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'created', 'Column loan_pro_chorus_sandbox._restriction_group_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'created', 'Column loan_pro_chorus_sandbox._restriction_group_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'created', 'Column loan_pro_chorus_sandbox._restriction_group_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._restriction_group_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._restriction_group_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._restriction_group_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._restriction_group_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
