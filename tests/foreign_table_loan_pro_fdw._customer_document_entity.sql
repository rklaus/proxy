SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(63);

SELECT has_foreign_table(
    'loan_pro_fdw', '_customer_document_entity',
    'Should have foreign table loan_pro_fdw._customer_document_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_customer_document_entity',
    'Table loan_pro_fdw._customer_document_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_customer_document_entity'::name, ARRAY[
    'id'::name,
    'customer_id'::name,
    'section_id'::name,
    'user_id'::name,
    'user_name'::name,
    'remote_addr'::name,
    'file_name'::name,
    'description'::name,
    'size'::name,
    'file_attachment_id'::name,
    'archived'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'id', 'Column loan_pro_fdw._customer_document_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'id', 'integer', 'Column loan_pro_fdw._customer_document_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'id', 'Column loan_pro_fdw._customer_document_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'id', 'Column loan_pro_fdw._customer_document_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'customer_id', 'Column loan_pro_fdw._customer_document_entity.customer_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'customer_id', 'integer', 'Column loan_pro_fdw._customer_document_entity.customer_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'customer_id', 'Column loan_pro_fdw._customer_document_entity.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'customer_id', 'Column loan_pro_fdw._customer_document_entity.customer_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'section_id', 'Column loan_pro_fdw._customer_document_entity.section_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'section_id', 'integer', 'Column loan_pro_fdw._customer_document_entity.section_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'section_id', 'Column loan_pro_fdw._customer_document_entity.section_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'section_id', 'Column loan_pro_fdw._customer_document_entity.section_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'user_id', 'Column loan_pro_fdw._customer_document_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'user_id', 'integer', 'Column loan_pro_fdw._customer_document_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'user_id', 'Column loan_pro_fdw._customer_document_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'user_id', 'Column loan_pro_fdw._customer_document_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'user_name', 'Column loan_pro_fdw._customer_document_entity.user_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'user_name', 'text', 'Column loan_pro_fdw._customer_document_entity.user_name should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'user_name', 'Column loan_pro_fdw._customer_document_entity.user_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'user_name', 'Column loan_pro_fdw._customer_document_entity.user_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'remote_addr', 'Column loan_pro_fdw._customer_document_entity.remote_addr should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'remote_addr', 'character(20)', 'Column loan_pro_fdw._customer_document_entity.remote_addr should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'remote_addr', 'Column loan_pro_fdw._customer_document_entity.remote_addr should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'remote_addr', 'Column loan_pro_fdw._customer_document_entity.remote_addr should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'file_name', 'Column loan_pro_fdw._customer_document_entity.file_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'file_name', 'text', 'Column loan_pro_fdw._customer_document_entity.file_name should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'file_name', 'Column loan_pro_fdw._customer_document_entity.file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'file_name', 'Column loan_pro_fdw._customer_document_entity.file_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'description', 'Column loan_pro_fdw._customer_document_entity.description should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'description', 'text', 'Column loan_pro_fdw._customer_document_entity.description should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'description', 'Column loan_pro_fdw._customer_document_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'description', 'Column loan_pro_fdw._customer_document_entity.description should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'size', 'Column loan_pro_fdw._customer_document_entity.size should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'size', 'integer', 'Column loan_pro_fdw._customer_document_entity.size should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'size', 'Column loan_pro_fdw._customer_document_entity.size should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'size', 'Column loan_pro_fdw._customer_document_entity.size should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'file_attachment_id', 'Column loan_pro_fdw._customer_document_entity.file_attachment_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'file_attachment_id', 'integer', 'Column loan_pro_fdw._customer_document_entity.file_attachment_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'file_attachment_id', 'Column loan_pro_fdw._customer_document_entity.file_attachment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'file_attachment_id', 'Column loan_pro_fdw._customer_document_entity.file_attachment_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'archived', 'Column loan_pro_fdw._customer_document_entity.archived should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'archived', 'integer', 'Column loan_pro_fdw._customer_document_entity.archived should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'archived', 'Column loan_pro_fdw._customer_document_entity.archived should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'archived', 'Column loan_pro_fdw._customer_document_entity.archived should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'active', 'Column loan_pro_fdw._customer_document_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'active', 'integer', 'Column loan_pro_fdw._customer_document_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'active', 'Column loan_pro_fdw._customer_document_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'active', 'Column loan_pro_fdw._customer_document_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'deleted', 'Column loan_pro_fdw._customer_document_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'deleted', 'integer', 'Column loan_pro_fdw._customer_document_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'deleted', 'Column loan_pro_fdw._customer_document_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'deleted', 'Column loan_pro_fdw._customer_document_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'created', 'Column loan_pro_fdw._customer_document_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'created', 'text', 'Column loan_pro_fdw._customer_document_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'created', 'Column loan_pro_fdw._customer_document_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'created', 'Column loan_pro_fdw._customer_document_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_document_entity', 'lastupdated', 'Column loan_pro_fdw._customer_document_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_document_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._customer_document_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_customer_document_entity', 'lastupdated', 'Column loan_pro_fdw._customer_document_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_document_entity', 'lastupdated', 'Column loan_pro_fdw._customer_document_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
