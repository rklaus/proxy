SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_fdw', '_data_dump_entity',
    'Should have foreign table loan_pro_fdw._data_dump_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_data_dump_entity',
    'Table loan_pro_fdw._data_dump_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_data_dump_entity'::name, ARRAY[
    'id'::name,
    'entity_type'::name,
    'file_name'::name,
    'url'::name,
    'status'::name,
    'created'::name,
    'lastupdated'::name,
    'create_user'::name,
    'info'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'id', 'Column loan_pro_fdw._data_dump_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'id', 'integer', 'Column loan_pro_fdw._data_dump_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'id', 'Column loan_pro_fdw._data_dump_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'id', 'Column loan_pro_fdw._data_dump_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'entity_type', 'Column loan_pro_fdw._data_dump_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'entity_type', 'character(100)', 'Column loan_pro_fdw._data_dump_entity.entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'entity_type', 'Column loan_pro_fdw._data_dump_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'entity_type', 'Column loan_pro_fdw._data_dump_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'file_name', 'Column loan_pro_fdw._data_dump_entity.file_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'file_name', 'text', 'Column loan_pro_fdw._data_dump_entity.file_name should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'file_name', 'Column loan_pro_fdw._data_dump_entity.file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'file_name', 'Column loan_pro_fdw._data_dump_entity.file_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'url', 'Column loan_pro_fdw._data_dump_entity.url should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'url', 'text', 'Column loan_pro_fdw._data_dump_entity.url should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'url', 'Column loan_pro_fdw._data_dump_entity.url should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'url', 'Column loan_pro_fdw._data_dump_entity.url should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'status', 'Column loan_pro_fdw._data_dump_entity.status should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'status', 'character(100)', 'Column loan_pro_fdw._data_dump_entity.status should be type character(100)');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'status', 'Column loan_pro_fdw._data_dump_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'status', 'Column loan_pro_fdw._data_dump_entity.status should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'created', 'Column loan_pro_fdw._data_dump_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'created', 'text', 'Column loan_pro_fdw._data_dump_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'created', 'Column loan_pro_fdw._data_dump_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'created', 'Column loan_pro_fdw._data_dump_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'lastupdated', 'Column loan_pro_fdw._data_dump_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._data_dump_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'lastupdated', 'Column loan_pro_fdw._data_dump_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'lastupdated', 'Column loan_pro_fdw._data_dump_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'create_user', 'Column loan_pro_fdw._data_dump_entity.create_user should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'create_user', 'text', 'Column loan_pro_fdw._data_dump_entity.create_user should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'create_user', 'Column loan_pro_fdw._data_dump_entity.create_user should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'create_user', 'Column loan_pro_fdw._data_dump_entity.create_user should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'info', 'Column loan_pro_fdw._data_dump_entity.info should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'info', 'character varying(100)', 'Column loan_pro_fdw._data_dump_entity.info should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'info', 'Column loan_pro_fdw._data_dump_entity.info should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'info', 'Column loan_pro_fdw._data_dump_entity.info should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_data_dump_entity', 'deleted', 'Column loan_pro_fdw._data_dump_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_data_dump_entity', 'deleted', 'integer', 'Column loan_pro_fdw._data_dump_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_data_dump_entity', 'deleted', 'Column loan_pro_fdw._data_dump_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_data_dump_entity', 'deleted', 'Column loan_pro_fdw._data_dump_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
