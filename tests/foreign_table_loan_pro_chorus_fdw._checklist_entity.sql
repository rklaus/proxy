SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_checklist_entity',
    'Should have foreign table loan_pro_chorus_fdw._checklist_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_checklist_entity',
    'Table loan_pro_chorus_fdw._checklist_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_checklist_entity'::name, ARRAY[
    'id'::name,
    'entity_type'::name,
    'title'::name,
    'description'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_checklist_entity', 'id', 'Column loan_pro_chorus_fdw._checklist_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_checklist_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._checklist_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_checklist_entity', 'id', 'Column loan_pro_chorus_fdw._checklist_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_checklist_entity', 'id', 'Column loan_pro_chorus_fdw._checklist_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_checklist_entity', 'entity_type', 'Column loan_pro_chorus_fdw._checklist_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_checklist_entity', 'entity_type', 'character(100)', 'Column loan_pro_chorus_fdw._checklist_entity.entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_checklist_entity', 'entity_type', 'Column loan_pro_chorus_fdw._checklist_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_checklist_entity', 'entity_type', 'Column loan_pro_chorus_fdw._checklist_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_checklist_entity', 'title', 'Column loan_pro_chorus_fdw._checklist_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_checklist_entity', 'title', 'text', 'Column loan_pro_chorus_fdw._checklist_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_checklist_entity', 'title', 'Column loan_pro_chorus_fdw._checklist_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_checklist_entity', 'title', 'Column loan_pro_chorus_fdw._checklist_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_checklist_entity', 'description', 'Column loan_pro_chorus_fdw._checklist_entity.description should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_checklist_entity', 'description', 'text', 'Column loan_pro_chorus_fdw._checklist_entity.description should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_checklist_entity', 'description', 'Column loan_pro_chorus_fdw._checklist_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_checklist_entity', 'description', 'Column loan_pro_chorus_fdw._checklist_entity.description should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_checklist_entity', 'created', 'Column loan_pro_chorus_fdw._checklist_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_checklist_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._checklist_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_checklist_entity', 'created', 'Column loan_pro_chorus_fdw._checklist_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_checklist_entity', 'created', 'Column loan_pro_chorus_fdw._checklist_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_checklist_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._checklist_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_checklist_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._checklist_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_checklist_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._checklist_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_checklist_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._checklist_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_checklist_entity', 'active', 'Column loan_pro_chorus_fdw._checklist_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_checklist_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._checklist_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_checklist_entity', 'active', 'Column loan_pro_chorus_fdw._checklist_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_checklist_entity', 'active', 'Column loan_pro_chorus_fdw._checklist_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_checklist_entity', 'deleted', 'Column loan_pro_chorus_fdw._checklist_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_checklist_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._checklist_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_checklist_entity', 'deleted', 'Column loan_pro_chorus_fdw._checklist_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_checklist_entity', 'deleted', 'Column loan_pro_chorus_fdw._checklist_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
