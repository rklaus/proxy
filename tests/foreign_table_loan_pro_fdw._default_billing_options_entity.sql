SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_fdw', '_default_billing_options_entity',
    'Should have foreign table loan_pro_fdw._default_billing_options_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_default_billing_options_entity',
    'Table loan_pro_fdw._default_billing_options_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_default_billing_options_entity'::name, ARRAY[
    'id'::name,
    'default_template_id'::name,
    'custom_text'::name,
    'pdf_output'::name,
    'header_color'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_default_billing_options_entity', 'id', 'Column loan_pro_fdw._default_billing_options_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_default_billing_options_entity', 'id', 'integer', 'Column loan_pro_fdw._default_billing_options_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_default_billing_options_entity', 'id', 'Column loan_pro_fdw._default_billing_options_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_default_billing_options_entity', 'id', 'Column loan_pro_fdw._default_billing_options_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_default_billing_options_entity', 'default_template_id', 'Column loan_pro_fdw._default_billing_options_entity.default_template_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_default_billing_options_entity', 'default_template_id', 'integer', 'Column loan_pro_fdw._default_billing_options_entity.default_template_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_default_billing_options_entity', 'default_template_id', 'Column loan_pro_fdw._default_billing_options_entity.default_template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_default_billing_options_entity', 'default_template_id', 'Column loan_pro_fdw._default_billing_options_entity.default_template_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_default_billing_options_entity', 'custom_text', 'Column loan_pro_fdw._default_billing_options_entity.custom_text should exist');
SELECT col_type_is(      'loan_pro_fdw', '_default_billing_options_entity', 'custom_text', 'text', 'Column loan_pro_fdw._default_billing_options_entity.custom_text should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_default_billing_options_entity', 'custom_text', 'Column loan_pro_fdw._default_billing_options_entity.custom_text should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_default_billing_options_entity', 'custom_text', 'Column loan_pro_fdw._default_billing_options_entity.custom_text should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_default_billing_options_entity', 'pdf_output', 'Column loan_pro_fdw._default_billing_options_entity.pdf_output should exist');
SELECT col_type_is(      'loan_pro_fdw', '_default_billing_options_entity', 'pdf_output', 'character varying(100)', 'Column loan_pro_fdw._default_billing_options_entity.pdf_output should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_default_billing_options_entity', 'pdf_output', 'Column loan_pro_fdw._default_billing_options_entity.pdf_output should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_default_billing_options_entity', 'pdf_output', 'Column loan_pro_fdw._default_billing_options_entity.pdf_output should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_default_billing_options_entity', 'header_color', 'Column loan_pro_fdw._default_billing_options_entity.header_color should exist');
SELECT col_type_is(      'loan_pro_fdw', '_default_billing_options_entity', 'header_color', 'character varying(50)', 'Column loan_pro_fdw._default_billing_options_entity.header_color should be type character varying(50)');
SELECT col_is_null(      'loan_pro_fdw', '_default_billing_options_entity', 'header_color', 'Column loan_pro_fdw._default_billing_options_entity.header_color should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_default_billing_options_entity', 'header_color', 'Column loan_pro_fdw._default_billing_options_entity.header_color should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_default_billing_options_entity', 'deleted', 'Column loan_pro_fdw._default_billing_options_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_default_billing_options_entity', 'deleted', 'integer', 'Column loan_pro_fdw._default_billing_options_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_default_billing_options_entity', 'deleted', 'Column loan_pro_fdw._default_billing_options_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_default_billing_options_entity', 'deleted', 'Column loan_pro_fdw._default_billing_options_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_default_billing_options_entity', 'created', 'Column loan_pro_fdw._default_billing_options_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_default_billing_options_entity', 'created', 'text', 'Column loan_pro_fdw._default_billing_options_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_default_billing_options_entity', 'created', 'Column loan_pro_fdw._default_billing_options_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_default_billing_options_entity', 'created', 'Column loan_pro_fdw._default_billing_options_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_default_billing_options_entity', 'lastupdated', 'Column loan_pro_fdw._default_billing_options_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_default_billing_options_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._default_billing_options_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_default_billing_options_entity', 'lastupdated', 'Column loan_pro_fdw._default_billing_options_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_default_billing_options_entity', 'lastupdated', 'Column loan_pro_fdw._default_billing_options_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
