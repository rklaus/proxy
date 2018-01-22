SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_email_template_entity',
    'Should have foreign table loan_pro_chorus_sandbox._email_template_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_email_template_entity',
    'Table loan_pro_chorus_sandbox._email_template_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_email_template_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'email_subject'::name,
    'email_content'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_template_entity', 'id', 'Column loan_pro_chorus_sandbox._email_template_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_template_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._email_template_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_template_entity', 'id', 'Column loan_pro_chorus_sandbox._email_template_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_template_entity', 'id', 'Column loan_pro_chorus_sandbox._email_template_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_template_entity', 'name', 'Column loan_pro_chorus_sandbox._email_template_entity.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_template_entity', 'name', 'character varying(100)', 'Column loan_pro_chorus_sandbox._email_template_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_template_entity', 'name', 'Column loan_pro_chorus_sandbox._email_template_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_template_entity', 'name', 'Column loan_pro_chorus_sandbox._email_template_entity.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_template_entity', 'email_subject', 'Column loan_pro_chorus_sandbox._email_template_entity.email_subject should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_template_entity', 'email_subject', 'text', 'Column loan_pro_chorus_sandbox._email_template_entity.email_subject should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_template_entity', 'email_subject', 'Column loan_pro_chorus_sandbox._email_template_entity.email_subject should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_template_entity', 'email_subject', 'Column loan_pro_chorus_sandbox._email_template_entity.email_subject should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_template_entity', 'email_content', 'Column loan_pro_chorus_sandbox._email_template_entity.email_content should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_template_entity', 'email_content', 'text', 'Column loan_pro_chorus_sandbox._email_template_entity.email_content should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_template_entity', 'email_content', 'Column loan_pro_chorus_sandbox._email_template_entity.email_content should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_template_entity', 'email_content', 'Column loan_pro_chorus_sandbox._email_template_entity.email_content should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_template_entity', 'deleted', 'Column loan_pro_chorus_sandbox._email_template_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_template_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._email_template_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_template_entity', 'deleted', 'Column loan_pro_chorus_sandbox._email_template_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_template_entity', 'deleted', 'Column loan_pro_chorus_sandbox._email_template_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_template_entity', 'created', 'Column loan_pro_chorus_sandbox._email_template_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_template_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._email_template_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_template_entity', 'created', 'Column loan_pro_chorus_sandbox._email_template_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_template_entity', 'created', 'Column loan_pro_chorus_sandbox._email_template_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_email_template_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._email_template_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_email_template_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._email_template_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_email_template_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._email_template_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_email_template_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._email_template_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
