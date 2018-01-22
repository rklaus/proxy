SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(63);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_system_note_entity',
    'Should have foreign table loan_pro_chorus_fdw._system_note_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_system_note_entity',
    'Table loan_pro_chorus_fdw._system_note_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_system_note_entity'::name, ARRAY[
    'id'::name,
    'entity_type'::name,
    'entity_id'::name,
    'reference_type'::name,
    'reference_id'::name,
    'operation_type'::name,
    'operation_sub_type'::name,
    'create_user'::name,
    'create_user_name'::name,
    'created'::name,
    'lastupdated'::name,
    'remote_addr'::name,
    'note_title'::name,
    'note_data'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'id', 'Column loan_pro_chorus_fdw._system_note_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._system_note_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'id', 'Column loan_pro_chorus_fdw._system_note_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'id', 'Column loan_pro_chorus_fdw._system_note_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'entity_type', 'Column loan_pro_chorus_fdw._system_note_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'entity_type', 'character(50)', 'Column loan_pro_chorus_fdw._system_note_entity.entity_type should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'entity_type', 'Column loan_pro_chorus_fdw._system_note_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'entity_type', 'Column loan_pro_chorus_fdw._system_note_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'entity_id', 'Column loan_pro_chorus_fdw._system_note_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_fdw._system_note_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'entity_id', 'Column loan_pro_chorus_fdw._system_note_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'entity_id', 'Column loan_pro_chorus_fdw._system_note_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'reference_type', 'Column loan_pro_chorus_fdw._system_note_entity.reference_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'reference_type', 'character(50)', 'Column loan_pro_chorus_fdw._system_note_entity.reference_type should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'reference_type', 'Column loan_pro_chorus_fdw._system_note_entity.reference_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'reference_type', 'Column loan_pro_chorus_fdw._system_note_entity.reference_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'reference_id', 'Column loan_pro_chorus_fdw._system_note_entity.reference_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'reference_id', 'integer', 'Column loan_pro_chorus_fdw._system_note_entity.reference_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'reference_id', 'Column loan_pro_chorus_fdw._system_note_entity.reference_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'reference_id', 'Column loan_pro_chorus_fdw._system_note_entity.reference_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'operation_type', 'Column loan_pro_chorus_fdw._system_note_entity.operation_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'operation_type', 'text', 'Column loan_pro_chorus_fdw._system_note_entity.operation_type should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'operation_type', 'Column loan_pro_chorus_fdw._system_note_entity.operation_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'operation_type', 'Column loan_pro_chorus_fdw._system_note_entity.operation_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'operation_sub_type', 'Column loan_pro_chorus_fdw._system_note_entity.operation_sub_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'operation_sub_type', 'character(100)', 'Column loan_pro_chorus_fdw._system_note_entity.operation_sub_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'operation_sub_type', 'Column loan_pro_chorus_fdw._system_note_entity.operation_sub_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'operation_sub_type', 'Column loan_pro_chorus_fdw._system_note_entity.operation_sub_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'create_user', 'Column loan_pro_chorus_fdw._system_note_entity.create_user should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'create_user', 'integer', 'Column loan_pro_chorus_fdw._system_note_entity.create_user should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'create_user', 'Column loan_pro_chorus_fdw._system_note_entity.create_user should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'create_user', 'Column loan_pro_chorus_fdw._system_note_entity.create_user should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'create_user_name', 'Column loan_pro_chorus_fdw._system_note_entity.create_user_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'create_user_name', 'text', 'Column loan_pro_chorus_fdw._system_note_entity.create_user_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'create_user_name', 'Column loan_pro_chorus_fdw._system_note_entity.create_user_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'create_user_name', 'Column loan_pro_chorus_fdw._system_note_entity.create_user_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'created', 'Column loan_pro_chorus_fdw._system_note_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._system_note_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'created', 'Column loan_pro_chorus_fdw._system_note_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'created', 'Column loan_pro_chorus_fdw._system_note_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._system_note_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._system_note_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._system_note_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._system_note_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'remote_addr', 'Column loan_pro_chorus_fdw._system_note_entity.remote_addr should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'remote_addr', 'character(20)', 'Column loan_pro_chorus_fdw._system_note_entity.remote_addr should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'remote_addr', 'Column loan_pro_chorus_fdw._system_note_entity.remote_addr should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'remote_addr', 'Column loan_pro_chorus_fdw._system_note_entity.remote_addr should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'note_title', 'Column loan_pro_chorus_fdw._system_note_entity.note_title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'note_title', 'text', 'Column loan_pro_chorus_fdw._system_note_entity.note_title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'note_title', 'Column loan_pro_chorus_fdw._system_note_entity.note_title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'note_title', 'Column loan_pro_chorus_fdw._system_note_entity.note_title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'note_data', 'Column loan_pro_chorus_fdw._system_note_entity.note_data should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'note_data', 'text', 'Column loan_pro_chorus_fdw._system_note_entity.note_data should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'note_data', 'Column loan_pro_chorus_fdw._system_note_entity.note_data should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'note_data', 'Column loan_pro_chorus_fdw._system_note_entity.note_data should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_system_note_entity', 'deleted', 'Column loan_pro_chorus_fdw._system_note_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_system_note_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._system_note_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_system_note_entity', 'deleted', 'Column loan_pro_chorus_fdw._system_note_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_system_note_entity', 'deleted', 'Column loan_pro_chorus_fdw._system_note_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
