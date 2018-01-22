SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_email_tool_entity',
    'Should have foreign table loan_pro_chorus_sandbox._email_tool_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_email_tool_entity',
    'Table loan_pro_chorus_sandbox._email_tool_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_email_tool_entity'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'company_email_id'::name,
    'email_subject'::name,
    'email_content'::name,
    'query'::name,
    'sent'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'id', 'Column loan_pro_chorus_sandbox._email_tool_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._email_tool_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'id', 'Column loan_pro_chorus_sandbox._email_tool_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'id', 'Column loan_pro_chorus_sandbox._email_tool_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'user_id', 'Column loan_pro_chorus_sandbox._email_tool_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'user_id', 'integer', 'Column loan_pro_chorus_sandbox._email_tool_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'user_id', 'Column loan_pro_chorus_sandbox._email_tool_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'user_id', 'Column loan_pro_chorus_sandbox._email_tool_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'company_email_id', 'Column loan_pro_chorus_sandbox._email_tool_entity.company_email_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'company_email_id', 'integer', 'Column loan_pro_chorus_sandbox._email_tool_entity.company_email_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'company_email_id', 'Column loan_pro_chorus_sandbox._email_tool_entity.company_email_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'company_email_id', 'Column loan_pro_chorus_sandbox._email_tool_entity.company_email_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'email_subject', 'Column loan_pro_chorus_sandbox._email_tool_entity.email_subject should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'email_subject', 'text', 'Column loan_pro_chorus_sandbox._email_tool_entity.email_subject should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'email_subject', 'Column loan_pro_chorus_sandbox._email_tool_entity.email_subject should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'email_subject', 'Column loan_pro_chorus_sandbox._email_tool_entity.email_subject should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'email_content', 'Column loan_pro_chorus_sandbox._email_tool_entity.email_content should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'email_content', 'text', 'Column loan_pro_chorus_sandbox._email_tool_entity.email_content should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'email_content', 'Column loan_pro_chorus_sandbox._email_tool_entity.email_content should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'email_content', 'Column loan_pro_chorus_sandbox._email_tool_entity.email_content should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'query', 'Column loan_pro_chorus_sandbox._email_tool_entity.query should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'query', 'text', 'Column loan_pro_chorus_sandbox._email_tool_entity.query should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'query', 'Column loan_pro_chorus_sandbox._email_tool_entity.query should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'query', 'Column loan_pro_chorus_sandbox._email_tool_entity.query should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'sent', 'Column loan_pro_chorus_sandbox._email_tool_entity.sent should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'sent', 'integer', 'Column loan_pro_chorus_sandbox._email_tool_entity.sent should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'sent', 'Column loan_pro_chorus_sandbox._email_tool_entity.sent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'sent', 'Column loan_pro_chorus_sandbox._email_tool_entity.sent should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'active', 'Column loan_pro_chorus_sandbox._email_tool_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._email_tool_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'active', 'Column loan_pro_chorus_sandbox._email_tool_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'active', 'Column loan_pro_chorus_sandbox._email_tool_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'deleted', 'Column loan_pro_chorus_sandbox._email_tool_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._email_tool_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'deleted', 'Column loan_pro_chorus_sandbox._email_tool_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'deleted', 'Column loan_pro_chorus_sandbox._email_tool_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'created', 'Column loan_pro_chorus_sandbox._email_tool_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._email_tool_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'created', 'Column loan_pro_chorus_sandbox._email_tool_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'created', 'Column loan_pro_chorus_sandbox._email_tool_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_tool_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._email_tool_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._email_tool_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_tool_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._email_tool_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_tool_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._email_tool_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
