SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(87);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_custom_field',
    'Should have foreign table loan_pro_chorus_sandbox._custom_field'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_custom_field',
    'Table loan_pro_chorus_sandbox._custom_field should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_custom_field'::name, ARRAY[
    'id'::name,
    'name'::name,
    'description'::name,
    'type'::name,
    'auto_calculate'::name,
    'auto_calculate_operation_type'::name,
    'credit_report_enabled'::name,
    'required'::name,
    'active'::name,
    'max_length'::name,
    'searchable'::name,
    'report_enabled'::name,
    'archive_enable'::name,
    'summary_enabled'::name,
    'default_value'::name,
    'entity_type'::name,
    'section_identifier'::name,
    'display_order'::name,
    'select_options'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'id', 'Column loan_pro_chorus_sandbox._custom_field.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'id', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'id', 'Column loan_pro_chorus_sandbox._custom_field.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'id', 'Column loan_pro_chorus_sandbox._custom_field.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'name', 'Column loan_pro_chorus_sandbox._custom_field.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'name', 'character varying(50)', 'Column loan_pro_chorus_sandbox._custom_field.name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'name', 'Column loan_pro_chorus_sandbox._custom_field.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'name', 'Column loan_pro_chorus_sandbox._custom_field.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'description', 'Column loan_pro_chorus_sandbox._custom_field.description should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'description', 'text', 'Column loan_pro_chorus_sandbox._custom_field.description should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'description', 'Column loan_pro_chorus_sandbox._custom_field.description should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'description', 'Column loan_pro_chorus_sandbox._custom_field.description should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'type', 'Column loan_pro_chorus_sandbox._custom_field.type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'type', 'character(100)', 'Column loan_pro_chorus_sandbox._custom_field.type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'type', 'Column loan_pro_chorus_sandbox._custom_field.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'type', 'Column loan_pro_chorus_sandbox._custom_field.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'auto_calculate', 'Column loan_pro_chorus_sandbox._custom_field.auto_calculate should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'auto_calculate', 'character(100)', 'Column loan_pro_chorus_sandbox._custom_field.auto_calculate should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'auto_calculate', 'Column loan_pro_chorus_sandbox._custom_field.auto_calculate should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'auto_calculate', 'Column loan_pro_chorus_sandbox._custom_field.auto_calculate should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'auto_calculate_operation_type', 'Column loan_pro_chorus_sandbox._custom_field.auto_calculate_operation_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'auto_calculate_operation_type', 'character(100)', 'Column loan_pro_chorus_sandbox._custom_field.auto_calculate_operation_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'auto_calculate_operation_type', 'Column loan_pro_chorus_sandbox._custom_field.auto_calculate_operation_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'auto_calculate_operation_type', 'Column loan_pro_chorus_sandbox._custom_field.auto_calculate_operation_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'credit_report_enabled', 'Column loan_pro_chorus_sandbox._custom_field.credit_report_enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'credit_report_enabled', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.credit_report_enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'credit_report_enabled', 'Column loan_pro_chorus_sandbox._custom_field.credit_report_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'credit_report_enabled', 'Column loan_pro_chorus_sandbox._custom_field.credit_report_enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'required', 'Column loan_pro_chorus_sandbox._custom_field.required should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'required', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.required should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'required', 'Column loan_pro_chorus_sandbox._custom_field.required should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'required', 'Column loan_pro_chorus_sandbox._custom_field.required should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'active', 'Column loan_pro_chorus_sandbox._custom_field.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'active', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'active', 'Column loan_pro_chorus_sandbox._custom_field.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'active', 'Column loan_pro_chorus_sandbox._custom_field.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'max_length', 'Column loan_pro_chorus_sandbox._custom_field.max_length should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'max_length', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.max_length should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'max_length', 'Column loan_pro_chorus_sandbox._custom_field.max_length should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'max_length', 'Column loan_pro_chorus_sandbox._custom_field.max_length should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'searchable', 'Column loan_pro_chorus_sandbox._custom_field.searchable should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'searchable', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.searchable should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'searchable', 'Column loan_pro_chorus_sandbox._custom_field.searchable should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'searchable', 'Column loan_pro_chorus_sandbox._custom_field.searchable should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'report_enabled', 'Column loan_pro_chorus_sandbox._custom_field.report_enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'report_enabled', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.report_enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'report_enabled', 'Column loan_pro_chorus_sandbox._custom_field.report_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'report_enabled', 'Column loan_pro_chorus_sandbox._custom_field.report_enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'archive_enable', 'Column loan_pro_chorus_sandbox._custom_field.archive_enable should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'archive_enable', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.archive_enable should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'archive_enable', 'Column loan_pro_chorus_sandbox._custom_field.archive_enable should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'archive_enable', 'Column loan_pro_chorus_sandbox._custom_field.archive_enable should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'summary_enabled', 'Column loan_pro_chorus_sandbox._custom_field.summary_enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'summary_enabled', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.summary_enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'summary_enabled', 'Column loan_pro_chorus_sandbox._custom_field.summary_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'summary_enabled', 'Column loan_pro_chorus_sandbox._custom_field.summary_enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'default_value', 'Column loan_pro_chorus_sandbox._custom_field.default_value should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'default_value', 'text', 'Column loan_pro_chorus_sandbox._custom_field.default_value should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'default_value', 'Column loan_pro_chorus_sandbox._custom_field.default_value should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'default_value', 'Column loan_pro_chorus_sandbox._custom_field.default_value should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'entity_type', 'Column loan_pro_chorus_sandbox._custom_field.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'entity_type', 'character(100)', 'Column loan_pro_chorus_sandbox._custom_field.entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'entity_type', 'Column loan_pro_chorus_sandbox._custom_field.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'entity_type', 'Column loan_pro_chorus_sandbox._custom_field.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'section_identifier', 'Column loan_pro_chorus_sandbox._custom_field.section_identifier should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'section_identifier', 'character(50)', 'Column loan_pro_chorus_sandbox._custom_field.section_identifier should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'section_identifier', 'Column loan_pro_chorus_sandbox._custom_field.section_identifier should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'section_identifier', 'Column loan_pro_chorus_sandbox._custom_field.section_identifier should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'display_order', 'Column loan_pro_chorus_sandbox._custom_field.display_order should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'display_order', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.display_order should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'display_order', 'Column loan_pro_chorus_sandbox._custom_field.display_order should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'display_order', 'Column loan_pro_chorus_sandbox._custom_field.display_order should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'select_options', 'Column loan_pro_chorus_sandbox._custom_field.select_options should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'select_options', 'text', 'Column loan_pro_chorus_sandbox._custom_field.select_options should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'select_options', 'Column loan_pro_chorus_sandbox._custom_field.select_options should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'select_options', 'Column loan_pro_chorus_sandbox._custom_field.select_options should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'deleted', 'Column loan_pro_chorus_sandbox._custom_field.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._custom_field.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'deleted', 'Column loan_pro_chorus_sandbox._custom_field.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'deleted', 'Column loan_pro_chorus_sandbox._custom_field.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_custom_field', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_field.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_custom_field', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._custom_field.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_custom_field', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_field.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_custom_field', 'lastupdated', 'Column loan_pro_chorus_sandbox._custom_field.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
