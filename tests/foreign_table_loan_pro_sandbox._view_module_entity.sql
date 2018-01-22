SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_view_module_entity',
    'Should have foreign table loan_pro_sandbox._view_module_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_view_module_entity',
    'Table loan_pro_sandbox._view_module_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_view_module_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'display_mode'::name,
    'display_order'::name,
    'active'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_view_module_entity', 'id', 'Column loan_pro_sandbox._view_module_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_module_entity', 'id', 'integer', 'Column loan_pro_sandbox._view_module_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_view_module_entity', 'id', 'Column loan_pro_sandbox._view_module_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_module_entity', 'id', 'Column loan_pro_sandbox._view_module_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_module_entity', 'name', 'Column loan_pro_sandbox._view_module_entity.name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_module_entity', 'name', 'text', 'Column loan_pro_sandbox._view_module_entity.name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_view_module_entity', 'name', 'Column loan_pro_sandbox._view_module_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_module_entity', 'name', 'Column loan_pro_sandbox._view_module_entity.name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_module_entity', 'display_mode', 'Column loan_pro_sandbox._view_module_entity.display_mode should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_module_entity', 'display_mode', 'text', 'Column loan_pro_sandbox._view_module_entity.display_mode should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_view_module_entity', 'display_mode', 'Column loan_pro_sandbox._view_module_entity.display_mode should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_module_entity', 'display_mode', 'Column loan_pro_sandbox._view_module_entity.display_mode should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_module_entity', 'display_order', 'Column loan_pro_sandbox._view_module_entity.display_order should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_module_entity', 'display_order', 'integer', 'Column loan_pro_sandbox._view_module_entity.display_order should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_view_module_entity', 'display_order', 'Column loan_pro_sandbox._view_module_entity.display_order should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_module_entity', 'display_order', 'Column loan_pro_sandbox._view_module_entity.display_order should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_module_entity', 'active', 'Column loan_pro_sandbox._view_module_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_module_entity', 'active', 'integer', 'Column loan_pro_sandbox._view_module_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_view_module_entity', 'active', 'Column loan_pro_sandbox._view_module_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_module_entity', 'active', 'Column loan_pro_sandbox._view_module_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_module_entity', 'created', 'Column loan_pro_sandbox._view_module_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_module_entity', 'created', 'text', 'Column loan_pro_sandbox._view_module_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_view_module_entity', 'created', 'Column loan_pro_sandbox._view_module_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_module_entity', 'created', 'Column loan_pro_sandbox._view_module_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_module_entity', 'lastupdated', 'Column loan_pro_sandbox._view_module_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_module_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._view_module_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_view_module_entity', 'lastupdated', 'Column loan_pro_sandbox._view_module_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_module_entity', 'lastupdated', 'Column loan_pro_sandbox._view_module_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_module_entity', 'deleted', 'Column loan_pro_sandbox._view_module_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_module_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._view_module_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_view_module_entity', 'deleted', 'Column loan_pro_sandbox._view_module_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_module_entity', 'deleted', 'Column loan_pro_sandbox._view_module_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
