SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_custom_billing_theme_entity',
    'Should have foreign table loan_pro_chorus_sandbox._custom_billing_theme_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_custom_billing_theme_entity',
    'Table loan_pro_chorus_sandbox._custom_billing_theme_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_custom_billing_theme_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'source'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name,
    'custom_billing_template_id'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'id', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'name', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'name', 'character varying(100)', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'name', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'name', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'source', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.source should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'source', 'text', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.source should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'source', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.source should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'source', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.source should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'active', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'deleted', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'created', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'custom_billing_template_id', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.custom_billing_template_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'custom_billing_template_id', 'integer', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.custom_billing_template_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'custom_billing_template_id', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.custom_billing_template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_billing_theme_entity', 'custom_billing_template_id', 'Column loan_pro_chorus_sandbox._custom_billing_theme_entity.custom_billing_template_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
