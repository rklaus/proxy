SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_admin_tool_entity',
    'Should have foreign table loan_pro_sandbox._admin_tool_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_admin_tool_entity',
    'Table loan_pro_sandbox._admin_tool_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_admin_tool_entity'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'tool_definition'::name,
    'status'::name,
    'done'::name,
    'query'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_admin_tool_entity', 'id', 'Column loan_pro_sandbox._admin_tool_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_admin_tool_entity', 'id', 'integer', 'Column loan_pro_sandbox._admin_tool_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_admin_tool_entity', 'id', 'Column loan_pro_sandbox._admin_tool_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_admin_tool_entity', 'id', 'Column loan_pro_sandbox._admin_tool_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_admin_tool_entity', 'user_id', 'Column loan_pro_sandbox._admin_tool_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_admin_tool_entity', 'user_id', 'integer', 'Column loan_pro_sandbox._admin_tool_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_admin_tool_entity', 'user_id', 'Column loan_pro_sandbox._admin_tool_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_admin_tool_entity', 'user_id', 'Column loan_pro_sandbox._admin_tool_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_admin_tool_entity', 'tool_definition', 'Column loan_pro_sandbox._admin_tool_entity.tool_definition should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_admin_tool_entity', 'tool_definition', 'text', 'Column loan_pro_sandbox._admin_tool_entity.tool_definition should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_admin_tool_entity', 'tool_definition', 'Column loan_pro_sandbox._admin_tool_entity.tool_definition should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_admin_tool_entity', 'tool_definition', 'Column loan_pro_sandbox._admin_tool_entity.tool_definition should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_admin_tool_entity', 'status', 'Column loan_pro_sandbox._admin_tool_entity.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_admin_tool_entity', 'status', 'character varying(100)', 'Column loan_pro_sandbox._admin_tool_entity.status should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_admin_tool_entity', 'status', 'Column loan_pro_sandbox._admin_tool_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_admin_tool_entity', 'status', 'Column loan_pro_sandbox._admin_tool_entity.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_admin_tool_entity', 'done', 'Column loan_pro_sandbox._admin_tool_entity.done should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_admin_tool_entity', 'done', 'integer', 'Column loan_pro_sandbox._admin_tool_entity.done should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_admin_tool_entity', 'done', 'Column loan_pro_sandbox._admin_tool_entity.done should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_admin_tool_entity', 'done', 'Column loan_pro_sandbox._admin_tool_entity.done should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_admin_tool_entity', 'query', 'Column loan_pro_sandbox._admin_tool_entity.query should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_admin_tool_entity', 'query', 'text', 'Column loan_pro_sandbox._admin_tool_entity.query should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_admin_tool_entity', 'query', 'Column loan_pro_sandbox._admin_tool_entity.query should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_admin_tool_entity', 'query', 'Column loan_pro_sandbox._admin_tool_entity.query should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_admin_tool_entity', 'lastupdated', 'Column loan_pro_sandbox._admin_tool_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_admin_tool_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._admin_tool_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_admin_tool_entity', 'lastupdated', 'Column loan_pro_sandbox._admin_tool_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_admin_tool_entity', 'lastupdated', 'Column loan_pro_sandbox._admin_tool_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_admin_tool_entity', 'deleted', 'Column loan_pro_sandbox._admin_tool_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_admin_tool_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._admin_tool_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_admin_tool_entity', 'deleted', 'Column loan_pro_sandbox._admin_tool_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_admin_tool_entity', 'deleted', 'Column loan_pro_sandbox._admin_tool_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
