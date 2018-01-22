SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan_modification_entity',
    'Should have foreign table loan_pro_chorus_sandbox._loan_modification_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan_modification_entity',
    'Table loan_pro_chorus_sandbox._loan_modification_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan_modification_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'created'::name,
    'lastupdated'::name,
    'date'::name,
    'parent'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_modification_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_modification_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._loan_modification_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_modification_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_modification_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_modification_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_modification_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_modification_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_modification_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_modification_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_modification_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_modification_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_modification_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_modification_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._loan_modification_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_modification_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_modification_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_modification_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_modification_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_modification_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._loan_modification_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_modification_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_modification_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_modification_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_modification_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_modification_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._loan_modification_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_modification_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_modification_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_modification_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_modification_entity', 'date', 'Column loan_pro_chorus_sandbox._loan_modification_entity.date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'date', 'text', 'Column loan_pro_chorus_sandbox._loan_modification_entity.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'date', 'Column loan_pro_chorus_sandbox._loan_modification_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_modification_entity', 'date', 'Column loan_pro_chorus_sandbox._loan_modification_entity.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_modification_entity', 'parent', 'Column loan_pro_chorus_sandbox._loan_modification_entity.parent should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'parent', 'integer', 'Column loan_pro_chorus_sandbox._loan_modification_entity.parent should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'parent', 'Column loan_pro_chorus_sandbox._loan_modification_entity.parent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_modification_entity', 'parent', 'Column loan_pro_chorus_sandbox._loan_modification_entity.parent should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_modification_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_modification_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._loan_modification_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_modification_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_modification_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_modification_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_modification_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
