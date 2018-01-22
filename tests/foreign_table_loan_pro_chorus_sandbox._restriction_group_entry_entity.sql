SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_restriction_group_entry_entity',
    'Should have foreign table loan_pro_chorus_sandbox._restriction_group_entry_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_restriction_group_entry_entity',
    'Table loan_pro_chorus_sandbox._restriction_group_entry_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_restriction_group_entry_entity'::name, ARRAY[
    'id'::name,
    'restriction_group_id'::name,
    'entity_type'::name,
    'access'::name,
    'rule'::name,
    'ui_state'::name,
    'error_message'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'id', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'id', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'id', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'restriction_group_id', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.restriction_group_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'restriction_group_id', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.restriction_group_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'restriction_group_id', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.restriction_group_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'restriction_group_id', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.restriction_group_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'entity_type', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.entity_type should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'access', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.access should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'access', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'access', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'access', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.access should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'rule', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.rule should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'rule', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'rule', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'rule', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'ui_state', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.ui_state should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'ui_state', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.ui_state should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'ui_state', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.ui_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'ui_state', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.ui_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'error_message', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.error_message should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'error_message', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.error_message should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'error_message', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.error_message should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'error_message', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.error_message should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'active', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'active', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'active', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'deleted', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'deleted', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'deleted', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'created', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'created', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'created', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_restriction_group_entry_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._restriction_group_entry_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
