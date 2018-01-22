SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_fdw', '_custom_field__entity',
    'Should have foreign table loan_pro_fdw._custom_field__entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_custom_field__entity',
    'Table loan_pro_fdw._custom_field__entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_custom_field__entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'custom_field_id'::name,
    'custom_field_value'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_custom_field__entity', 'id', 'Column loan_pro_fdw._custom_field__entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_custom_field__entity', 'id', 'integer', 'Column loan_pro_fdw._custom_field__entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_custom_field__entity', 'id', 'Column loan_pro_fdw._custom_field__entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_custom_field__entity', 'id', 'Column loan_pro_fdw._custom_field__entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_custom_field__entity', 'entity_id', 'Column loan_pro_fdw._custom_field__entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_custom_field__entity', 'entity_id', 'integer', 'Column loan_pro_fdw._custom_field__entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_custom_field__entity', 'entity_id', 'Column loan_pro_fdw._custom_field__entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_custom_field__entity', 'entity_id', 'Column loan_pro_fdw._custom_field__entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_custom_field__entity', 'entity_type', 'Column loan_pro_fdw._custom_field__entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_custom_field__entity', 'entity_type', 'character(100)', 'Column loan_pro_fdw._custom_field__entity.entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_fdw', '_custom_field__entity', 'entity_type', 'Column loan_pro_fdw._custom_field__entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_custom_field__entity', 'entity_type', 'Column loan_pro_fdw._custom_field__entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_custom_field__entity', 'custom_field_id', 'Column loan_pro_fdw._custom_field__entity.custom_field_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_custom_field__entity', 'custom_field_id', 'integer', 'Column loan_pro_fdw._custom_field__entity.custom_field_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_custom_field__entity', 'custom_field_id', 'Column loan_pro_fdw._custom_field__entity.custom_field_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_custom_field__entity', 'custom_field_id', 'Column loan_pro_fdw._custom_field__entity.custom_field_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_custom_field__entity', 'custom_field_value', 'Column loan_pro_fdw._custom_field__entity.custom_field_value should exist');
SELECT col_type_is(      'loan_pro_fdw', '_custom_field__entity', 'custom_field_value', 'text', 'Column loan_pro_fdw._custom_field__entity.custom_field_value should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_custom_field__entity', 'custom_field_value', 'Column loan_pro_fdw._custom_field__entity.custom_field_value should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_custom_field__entity', 'custom_field_value', 'Column loan_pro_fdw._custom_field__entity.custom_field_value should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_custom_field__entity', 'deleted', 'Column loan_pro_fdw._custom_field__entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_custom_field__entity', 'deleted', 'integer', 'Column loan_pro_fdw._custom_field__entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_custom_field__entity', 'deleted', 'Column loan_pro_fdw._custom_field__entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_custom_field__entity', 'deleted', 'Column loan_pro_fdw._custom_field__entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_custom_field__entity', 'lastupdated', 'Column loan_pro_fdw._custom_field__entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_custom_field__entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._custom_field__entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_custom_field__entity', 'lastupdated', 'Column loan_pro_fdw._custom_field__entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_custom_field__entity', 'lastupdated', 'Column loan_pro_fdw._custom_field__entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
