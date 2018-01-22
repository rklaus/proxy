SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_fdw', '_file_attachment_entity',
    'Should have foreign table loan_pro_fdw._file_attachment_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_file_attachment_entity',
    'Table loan_pro_fdw._file_attachment_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_file_attachment_entity'::name, ARRAY[
    'id'::name,
    'parent_type'::name,
    'parent_id'::name,
    'file_name'::name,
    'file_original_name'::name,
    'file_size'::name,
    'file_mime'::name,
    'deleted'::name,
    'active'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'id', 'Column loan_pro_fdw._file_attachment_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'id', 'integer', 'Column loan_pro_fdw._file_attachment_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'id', 'Column loan_pro_fdw._file_attachment_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'id', 'Column loan_pro_fdw._file_attachment_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'parent_type', 'Column loan_pro_fdw._file_attachment_entity.parent_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'parent_type', 'character(100)', 'Column loan_pro_fdw._file_attachment_entity.parent_type should be type character(100)');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'parent_type', 'Column loan_pro_fdw._file_attachment_entity.parent_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'parent_type', 'Column loan_pro_fdw._file_attachment_entity.parent_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'parent_id', 'Column loan_pro_fdw._file_attachment_entity.parent_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'parent_id', 'integer', 'Column loan_pro_fdw._file_attachment_entity.parent_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'parent_id', 'Column loan_pro_fdw._file_attachment_entity.parent_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'parent_id', 'Column loan_pro_fdw._file_attachment_entity.parent_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'file_name', 'Column loan_pro_fdw._file_attachment_entity.file_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'file_name', 'text', 'Column loan_pro_fdw._file_attachment_entity.file_name should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'file_name', 'Column loan_pro_fdw._file_attachment_entity.file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'file_name', 'Column loan_pro_fdw._file_attachment_entity.file_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'file_original_name', 'Column loan_pro_fdw._file_attachment_entity.file_original_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'file_original_name', 'text', 'Column loan_pro_fdw._file_attachment_entity.file_original_name should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'file_original_name', 'Column loan_pro_fdw._file_attachment_entity.file_original_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'file_original_name', 'Column loan_pro_fdw._file_attachment_entity.file_original_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'file_size', 'Column loan_pro_fdw._file_attachment_entity.file_size should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'file_size', 'integer', 'Column loan_pro_fdw._file_attachment_entity.file_size should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'file_size', 'Column loan_pro_fdw._file_attachment_entity.file_size should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'file_size', 'Column loan_pro_fdw._file_attachment_entity.file_size should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'file_mime', 'Column loan_pro_fdw._file_attachment_entity.file_mime should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'file_mime', 'text', 'Column loan_pro_fdw._file_attachment_entity.file_mime should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'file_mime', 'Column loan_pro_fdw._file_attachment_entity.file_mime should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'file_mime', 'Column loan_pro_fdw._file_attachment_entity.file_mime should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'deleted', 'Column loan_pro_fdw._file_attachment_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'deleted', 'integer', 'Column loan_pro_fdw._file_attachment_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'deleted', 'Column loan_pro_fdw._file_attachment_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'deleted', 'Column loan_pro_fdw._file_attachment_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'active', 'Column loan_pro_fdw._file_attachment_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'active', 'integer', 'Column loan_pro_fdw._file_attachment_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'active', 'Column loan_pro_fdw._file_attachment_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'active', 'Column loan_pro_fdw._file_attachment_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'created', 'Column loan_pro_fdw._file_attachment_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'created', 'text', 'Column loan_pro_fdw._file_attachment_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'created', 'Column loan_pro_fdw._file_attachment_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'created', 'Column loan_pro_fdw._file_attachment_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_file_attachment_entity', 'lastupdated', 'Column loan_pro_fdw._file_attachment_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_file_attachment_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._file_attachment_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_file_attachment_entity', 'lastupdated', 'Column loan_pro_fdw._file_attachment_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_file_attachment_entity', 'lastupdated', 'Column loan_pro_fdw._file_attachment_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
