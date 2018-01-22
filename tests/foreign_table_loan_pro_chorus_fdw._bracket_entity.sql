SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_bracket_entity',
    'Should have foreign table loan_pro_chorus_fdw._bracket_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_bracket_entity',
    'Table loan_pro_chorus_fdw._bracket_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_bracket_entity'::name, ARRAY[
    'id'::name,
    'parent_id'::name,
    'label'::name,
    'description'::name,
    'has_additional_value'::name,
    'deleted'::name,
    'active'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'id', 'Column loan_pro_chorus_fdw._bracket_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'id', 'character(100)', 'Column loan_pro_chorus_fdw._bracket_entity.id should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'id', 'Column loan_pro_chorus_fdw._bracket_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'id', 'Column loan_pro_chorus_fdw._bracket_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'parent_id', 'Column loan_pro_chorus_fdw._bracket_entity.parent_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'parent_id', 'character(100)', 'Column loan_pro_chorus_fdw._bracket_entity.parent_id should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'parent_id', 'Column loan_pro_chorus_fdw._bracket_entity.parent_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'parent_id', 'Column loan_pro_chorus_fdw._bracket_entity.parent_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'label', 'Column loan_pro_chorus_fdw._bracket_entity.label should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'label', 'text', 'Column loan_pro_chorus_fdw._bracket_entity.label should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'label', 'Column loan_pro_chorus_fdw._bracket_entity.label should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'label', 'Column loan_pro_chorus_fdw._bracket_entity.label should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'description', 'Column loan_pro_chorus_fdw._bracket_entity.description should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'description', 'text', 'Column loan_pro_chorus_fdw._bracket_entity.description should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'description', 'Column loan_pro_chorus_fdw._bracket_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'description', 'Column loan_pro_chorus_fdw._bracket_entity.description should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'has_additional_value', 'Column loan_pro_chorus_fdw._bracket_entity.has_additional_value should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'has_additional_value', 'integer', 'Column loan_pro_chorus_fdw._bracket_entity.has_additional_value should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'has_additional_value', 'Column loan_pro_chorus_fdw._bracket_entity.has_additional_value should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'has_additional_value', 'Column loan_pro_chorus_fdw._bracket_entity.has_additional_value should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'deleted', 'Column loan_pro_chorus_fdw._bracket_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._bracket_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'deleted', 'Column loan_pro_chorus_fdw._bracket_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'deleted', 'Column loan_pro_chorus_fdw._bracket_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'active', 'Column loan_pro_chorus_fdw._bracket_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._bracket_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'active', 'Column loan_pro_chorus_fdw._bracket_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'active', 'Column loan_pro_chorus_fdw._bracket_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'created', 'Column loan_pro_chorus_fdw._bracket_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._bracket_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'created', 'Column loan_pro_chorus_fdw._bracket_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'created', 'Column loan_pro_chorus_fdw._bracket_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_bracket_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._bracket_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_bracket_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._bracket_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_bracket_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._bracket_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_bracket_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._bracket_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
