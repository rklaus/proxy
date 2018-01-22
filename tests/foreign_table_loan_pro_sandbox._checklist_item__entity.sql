SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_checklist_item__entity',
    'Should have foreign table loan_pro_sandbox._checklist_item__entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_checklist_item__entity',
    'Table loan_pro_sandbox._checklist_item__entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_checklist_item__entity'::name, ARRAY[
    'entity_id'::name,
    'entity_type'::name,
    'checklist_id'::name,
    'checklist_item_id'::name,
    'checklist_item_value'::name,
    'deleted'::name,
    'id'::name,
    'last_updated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_checklist_item__entity', 'entity_id', 'Column loan_pro_sandbox._checklist_item__entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_checklist_item__entity', 'entity_id', 'integer', 'Column loan_pro_sandbox._checklist_item__entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_checklist_item__entity', 'entity_id', 'Column loan_pro_sandbox._checklist_item__entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_checklist_item__entity', 'entity_id', 'Column loan_pro_sandbox._checklist_item__entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_checklist_item__entity', 'entity_type', 'Column loan_pro_sandbox._checklist_item__entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_checklist_item__entity', 'entity_type', 'character(100)', 'Column loan_pro_sandbox._checklist_item__entity.entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_checklist_item__entity', 'entity_type', 'Column loan_pro_sandbox._checklist_item__entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_checklist_item__entity', 'entity_type', 'Column loan_pro_sandbox._checklist_item__entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_checklist_item__entity', 'checklist_id', 'Column loan_pro_sandbox._checklist_item__entity.checklist_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_checklist_item__entity', 'checklist_id', 'integer', 'Column loan_pro_sandbox._checklist_item__entity.checklist_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_checklist_item__entity', 'checklist_id', 'Column loan_pro_sandbox._checklist_item__entity.checklist_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_checklist_item__entity', 'checklist_id', 'Column loan_pro_sandbox._checklist_item__entity.checklist_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_checklist_item__entity', 'checklist_item_id', 'Column loan_pro_sandbox._checklist_item__entity.checklist_item_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_checklist_item__entity', 'checklist_item_id', 'integer', 'Column loan_pro_sandbox._checklist_item__entity.checklist_item_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_checklist_item__entity', 'checklist_item_id', 'Column loan_pro_sandbox._checklist_item__entity.checklist_item_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_checklist_item__entity', 'checklist_item_id', 'Column loan_pro_sandbox._checklist_item__entity.checklist_item_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_checklist_item__entity', 'checklist_item_value', 'Column loan_pro_sandbox._checklist_item__entity.checklist_item_value should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_checklist_item__entity', 'checklist_item_value', 'integer', 'Column loan_pro_sandbox._checklist_item__entity.checklist_item_value should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_checklist_item__entity', 'checklist_item_value', 'Column loan_pro_sandbox._checklist_item__entity.checklist_item_value should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_checklist_item__entity', 'checklist_item_value', 'Column loan_pro_sandbox._checklist_item__entity.checklist_item_value should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_checklist_item__entity', 'deleted', 'Column loan_pro_sandbox._checklist_item__entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_checklist_item__entity', 'deleted', 'integer', 'Column loan_pro_sandbox._checklist_item__entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_checklist_item__entity', 'deleted', 'Column loan_pro_sandbox._checklist_item__entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_checklist_item__entity', 'deleted', 'Column loan_pro_sandbox._checklist_item__entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_checklist_item__entity', 'id', 'Column loan_pro_sandbox._checklist_item__entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_checklist_item__entity', 'id', 'integer', 'Column loan_pro_sandbox._checklist_item__entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_checklist_item__entity', 'id', 'Column loan_pro_sandbox._checklist_item__entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_checklist_item__entity', 'id', 'Column loan_pro_sandbox._checklist_item__entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_checklist_item__entity', 'last_updated', 'Column loan_pro_sandbox._checklist_item__entity.last_updated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_checklist_item__entity', 'last_updated', 'text', 'Column loan_pro_sandbox._checklist_item__entity.last_updated should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_checklist_item__entity', 'last_updated', 'Column loan_pro_sandbox._checklist_item__entity.last_updated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_checklist_item__entity', 'last_updated', 'Column loan_pro_sandbox._checklist_item__entity.last_updated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
