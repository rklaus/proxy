SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_custom_form_tool_entity',
    'Should have foreign table loan_pro_chorus_sandbox._custom_form_tool_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_custom_form_tool_entity',
    'Table loan_pro_chorus_sandbox._custom_form_tool_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_custom_form_tool_entity'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'custom_form_id'::name,
    'pdf_output'::name,
    'query'::name,
    'done'::name,
    'file_name'::name,
    'url'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'user_id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'user_id', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'user_id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'user_id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'custom_form_id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.custom_form_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'custom_form_id', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.custom_form_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'custom_form_id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.custom_form_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'custom_form_id', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.custom_form_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'pdf_output', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.pdf_output should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'pdf_output', 'character varying(100)', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.pdf_output should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'pdf_output', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.pdf_output should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'pdf_output', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.pdf_output should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'query', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.query should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'query', 'text', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.query should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'query', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.query should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'query', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.query should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'done', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.done should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'done', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.done should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'done', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.done should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'done', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.done should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'file_name', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.file_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'file_name', 'text', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.file_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'file_name', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'file_name', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.file_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'url', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.url should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'url', 'text', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.url should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'url', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.url should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'url', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.url should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_tool_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_form_tool_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
