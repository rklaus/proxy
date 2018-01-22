SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan_duedate_change_entity',
    'Should have foreign table loan_pro_chorus_sandbox._loan_duedate_change_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan_duedate_change_entity',
    'Table loan_pro_chorus_sandbox._loan_duedate_change_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan_duedate_change_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'mod_id'::name,
    'original_date'::name,
    'new_date'::name,
    'changed_date'::name,
    'due_date_on_last_dom'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'mod_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'original_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.original_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'original_date', 'text', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.original_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'original_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.original_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'original_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.original_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'new_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.new_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'new_date', 'text', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.new_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'new_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.new_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'new_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.new_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'changed_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.changed_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'changed_date', 'text', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.changed_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'changed_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.changed_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'changed_date', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.changed_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'due_date_on_last_dom', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.due_date_on_last_dom should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'due_date_on_last_dom', 'integer', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.due_date_on_last_dom should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'due_date_on_last_dom', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.due_date_on_last_dom should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'due_date_on_last_dom', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.due_date_on_last_dom should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_duedate_change_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_duedate_change_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
