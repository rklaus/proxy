SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_collateral_field_entity',
    'Should have foreign table loan_pro_chorus_sandbox._collateral_field_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_collateral_field_entity',
    'Table loan_pro_chorus_sandbox._collateral_field_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_collateral_field_entity'::name, ARRAY[
    'id'::name,
    'collateral_type'::name,
    'data_type'::name,
    'max_length'::name,
    'label'::name,
    'required'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'id', 'Column loan_pro_chorus_sandbox._collateral_field_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'id', 'character(50)', 'Column loan_pro_chorus_sandbox._collateral_field_entity.id should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'id', 'Column loan_pro_chorus_sandbox._collateral_field_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'id', 'Column loan_pro_chorus_sandbox._collateral_field_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'collateral_type', 'Column loan_pro_chorus_sandbox._collateral_field_entity.collateral_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'collateral_type', 'character(50)', 'Column loan_pro_chorus_sandbox._collateral_field_entity.collateral_type should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'collateral_type', 'Column loan_pro_chorus_sandbox._collateral_field_entity.collateral_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'collateral_type', 'Column loan_pro_chorus_sandbox._collateral_field_entity.collateral_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'data_type', 'Column loan_pro_chorus_sandbox._collateral_field_entity.data_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'data_type', 'text', 'Column loan_pro_chorus_sandbox._collateral_field_entity.data_type should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'data_type', 'Column loan_pro_chorus_sandbox._collateral_field_entity.data_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'data_type', 'Column loan_pro_chorus_sandbox._collateral_field_entity.data_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'max_length', 'Column loan_pro_chorus_sandbox._collateral_field_entity.max_length should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'max_length', 'integer', 'Column loan_pro_chorus_sandbox._collateral_field_entity.max_length should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'max_length', 'Column loan_pro_chorus_sandbox._collateral_field_entity.max_length should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'max_length', 'Column loan_pro_chorus_sandbox._collateral_field_entity.max_length should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'label', 'Column loan_pro_chorus_sandbox._collateral_field_entity.label should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'label', 'text', 'Column loan_pro_chorus_sandbox._collateral_field_entity.label should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'label', 'Column loan_pro_chorus_sandbox._collateral_field_entity.label should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'label', 'Column loan_pro_chorus_sandbox._collateral_field_entity.label should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'required', 'Column loan_pro_chorus_sandbox._collateral_field_entity.required should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'required', 'integer', 'Column loan_pro_chorus_sandbox._collateral_field_entity.required should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'required', 'Column loan_pro_chorus_sandbox._collateral_field_entity.required should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'required', 'Column loan_pro_chorus_sandbox._collateral_field_entity.required should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'created', 'Column loan_pro_chorus_sandbox._collateral_field_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._collateral_field_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'created', 'Column loan_pro_chorus_sandbox._collateral_field_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'created', 'Column loan_pro_chorus_sandbox._collateral_field_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._collateral_field_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._collateral_field_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._collateral_field_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._collateral_field_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_collateral_field_entity', 'deleted', 'Column loan_pro_chorus_sandbox._collateral_field_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._collateral_field_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_collateral_field_entity', 'deleted', 'Column loan_pro_chorus_sandbox._collateral_field_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_collateral_field_entity', 'deleted', 'Column loan_pro_chorus_sandbox._collateral_field_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
