SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_view_template__view_module',
    'Should have foreign table loan_pro_chorus_sandbox._view_template__view_module'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_view_template__view_module',
    'Table loan_pro_chorus_sandbox._view_template__view_module should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_view_template__view_module'::name, ARRAY[
    'view_template_id'::name,
    'view_module_id'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_view_template__view_module', 'view_template_id', 'Column loan_pro_chorus_sandbox._view_template__view_module.view_template_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_view_template__view_module', 'view_template_id', 'integer', 'Column loan_pro_chorus_sandbox._view_template__view_module.view_template_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_view_template__view_module', 'view_template_id', 'Column loan_pro_chorus_sandbox._view_template__view_module.view_template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_view_template__view_module', 'view_template_id', 'Column loan_pro_chorus_sandbox._view_template__view_module.view_template_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_view_template__view_module', 'view_module_id', 'Column loan_pro_chorus_sandbox._view_template__view_module.view_module_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_view_template__view_module', 'view_module_id', 'integer', 'Column loan_pro_chorus_sandbox._view_template__view_module.view_module_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_view_template__view_module', 'view_module_id', 'Column loan_pro_chorus_sandbox._view_template__view_module.view_module_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_view_template__view_module', 'view_module_id', 'Column loan_pro_chorus_sandbox._view_template__view_module.view_module_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_view_template__view_module', 'deleted', 'Column loan_pro_chorus_sandbox._view_template__view_module.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_view_template__view_module', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._view_template__view_module.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_view_template__view_module', 'deleted', 'Column loan_pro_chorus_sandbox._view_template__view_module.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_view_template__view_module', 'deleted', 'Column loan_pro_chorus_sandbox._view_template__view_module.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_view_template__view_module', 'lastupdated', 'Column loan_pro_chorus_sandbox._view_template__view_module.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_view_template__view_module', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._view_template__view_module.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_view_template__view_module', 'lastupdated', 'Column loan_pro_chorus_sandbox._view_template__view_module.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_view_template__view_module', 'lastupdated', 'Column loan_pro_chorus_sandbox._view_template__view_module.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
