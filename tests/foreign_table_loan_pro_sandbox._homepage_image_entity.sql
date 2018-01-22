SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_homepage_image_entity',
    'Should have foreign table loan_pro_sandbox._homepage_image_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_homepage_image_entity',
    'Table loan_pro_sandbox._homepage_image_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_homepage_image_entity'::name, ARRAY[
    'id'::name,
    'caption'::name,
    'sub_caption'::name,
    'user_name'::name,
    'remote_addr'::name,
    'file_name'::name,
    'description'::name,
    'size'::name,
    'file_attachment_id'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'id', 'Column loan_pro_sandbox._homepage_image_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'id', 'integer', 'Column loan_pro_sandbox._homepage_image_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'id', 'Column loan_pro_sandbox._homepage_image_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'id', 'Column loan_pro_sandbox._homepage_image_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'caption', 'Column loan_pro_sandbox._homepage_image_entity.caption should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'caption', 'text', 'Column loan_pro_sandbox._homepage_image_entity.caption should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'caption', 'Column loan_pro_sandbox._homepage_image_entity.caption should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'caption', 'Column loan_pro_sandbox._homepage_image_entity.caption should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'sub_caption', 'Column loan_pro_sandbox._homepage_image_entity.sub_caption should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'sub_caption', 'text', 'Column loan_pro_sandbox._homepage_image_entity.sub_caption should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'sub_caption', 'Column loan_pro_sandbox._homepage_image_entity.sub_caption should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'sub_caption', 'Column loan_pro_sandbox._homepage_image_entity.sub_caption should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'user_name', 'Column loan_pro_sandbox._homepage_image_entity.user_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'user_name', 'text', 'Column loan_pro_sandbox._homepage_image_entity.user_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'user_name', 'Column loan_pro_sandbox._homepage_image_entity.user_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'user_name', 'Column loan_pro_sandbox._homepage_image_entity.user_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'remote_addr', 'Column loan_pro_sandbox._homepage_image_entity.remote_addr should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'remote_addr', 'character(20)', 'Column loan_pro_sandbox._homepage_image_entity.remote_addr should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'remote_addr', 'Column loan_pro_sandbox._homepage_image_entity.remote_addr should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'remote_addr', 'Column loan_pro_sandbox._homepage_image_entity.remote_addr should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'file_name', 'Column loan_pro_sandbox._homepage_image_entity.file_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'file_name', 'text', 'Column loan_pro_sandbox._homepage_image_entity.file_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'file_name', 'Column loan_pro_sandbox._homepage_image_entity.file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'file_name', 'Column loan_pro_sandbox._homepage_image_entity.file_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'description', 'Column loan_pro_sandbox._homepage_image_entity.description should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'description', 'text', 'Column loan_pro_sandbox._homepage_image_entity.description should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'description', 'Column loan_pro_sandbox._homepage_image_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'description', 'Column loan_pro_sandbox._homepage_image_entity.description should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'size', 'Column loan_pro_sandbox._homepage_image_entity.size should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'size', 'integer', 'Column loan_pro_sandbox._homepage_image_entity.size should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'size', 'Column loan_pro_sandbox._homepage_image_entity.size should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'size', 'Column loan_pro_sandbox._homepage_image_entity.size should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'file_attachment_id', 'Column loan_pro_sandbox._homepage_image_entity.file_attachment_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'file_attachment_id', 'integer', 'Column loan_pro_sandbox._homepage_image_entity.file_attachment_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'file_attachment_id', 'Column loan_pro_sandbox._homepage_image_entity.file_attachment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'file_attachment_id', 'Column loan_pro_sandbox._homepage_image_entity.file_attachment_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'active', 'Column loan_pro_sandbox._homepage_image_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'active', 'integer', 'Column loan_pro_sandbox._homepage_image_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'active', 'Column loan_pro_sandbox._homepage_image_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'active', 'Column loan_pro_sandbox._homepage_image_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'deleted', 'Column loan_pro_sandbox._homepage_image_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._homepage_image_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'deleted', 'Column loan_pro_sandbox._homepage_image_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'deleted', 'Column loan_pro_sandbox._homepage_image_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'created', 'Column loan_pro_sandbox._homepage_image_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'created', 'text', 'Column loan_pro_sandbox._homepage_image_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'created', 'Column loan_pro_sandbox._homepage_image_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'created', 'Column loan_pro_sandbox._homepage_image_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_homepage_image_entity', 'lastupdated', 'Column loan_pro_sandbox._homepage_image_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_homepage_image_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._homepage_image_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_homepage_image_entity', 'lastupdated', 'Column loan_pro_sandbox._homepage_image_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_homepage_image_entity', 'lastupdated', 'Column loan_pro_sandbox._homepage_image_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
