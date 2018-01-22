SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_custom_form_entity',
    'Should have foreign table loan_pro_chorus_sandbox._custom_form_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_custom_form_entity',
    'Table loan_pro_chorus_sandbox._custom_form_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_custom_form_entity'::name, ARRAY[
    'id'::name,
    'entity_type'::name,
    'section_id'::name,
    'name'::name,
    'page_size'::name,
    'draft'::name,
    'docusign'::name,
    'priority'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_form_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_form_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_form_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._custom_form_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'entity_type', 'character(100)', 'Column loan_pro_chorus_sandbox._custom_form_entity.entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._custom_form_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._custom_form_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'section_id', 'Column loan_pro_chorus_sandbox._custom_form_entity.section_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'section_id', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_entity.section_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'section_id', 'Column loan_pro_chorus_sandbox._custom_form_entity.section_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'section_id', 'Column loan_pro_chorus_sandbox._custom_form_entity.section_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'name', 'Column loan_pro_chorus_sandbox._custom_form_entity.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'name', 'character varying(100)', 'Column loan_pro_chorus_sandbox._custom_form_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'name', 'Column loan_pro_chorus_sandbox._custom_form_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'name', 'Column loan_pro_chorus_sandbox._custom_form_entity.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'page_size', 'Column loan_pro_chorus_sandbox._custom_form_entity.page_size should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'page_size', 'character varying(100)', 'Column loan_pro_chorus_sandbox._custom_form_entity.page_size should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'page_size', 'Column loan_pro_chorus_sandbox._custom_form_entity.page_size should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'page_size', 'Column loan_pro_chorus_sandbox._custom_form_entity.page_size should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'draft', 'Column loan_pro_chorus_sandbox._custom_form_entity.draft should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'draft', 'text', 'Column loan_pro_chorus_sandbox._custom_form_entity.draft should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'draft', 'Column loan_pro_chorus_sandbox._custom_form_entity.draft should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'draft', 'Column loan_pro_chorus_sandbox._custom_form_entity.draft should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'docusign', 'Column loan_pro_chorus_sandbox._custom_form_entity.docusign should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'docusign', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_entity.docusign should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'docusign', 'Column loan_pro_chorus_sandbox._custom_form_entity.docusign should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'docusign', 'Column loan_pro_chorus_sandbox._custom_form_entity.docusign should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'priority', 'Column loan_pro_chorus_sandbox._custom_form_entity.priority should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'priority', 'bigint', 'Column loan_pro_chorus_sandbox._custom_form_entity.priority should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'priority', 'Column loan_pro_chorus_sandbox._custom_form_entity.priority should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'priority', 'Column loan_pro_chorus_sandbox._custom_form_entity.priority should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_form_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_form_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_form_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_form_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._custom_form_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_form_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_form_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_form_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._custom_form_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_form_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_form_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_form_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_form_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._custom_form_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_form_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_form_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_form_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_form_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
