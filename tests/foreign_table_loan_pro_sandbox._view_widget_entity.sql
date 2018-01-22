SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_view_widget_entity',
    'Should have foreign table loan_pro_sandbox._view_widget_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_view_widget_entity',
    'Table loan_pro_sandbox._view_widget_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_view_widget_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'description'::name,
    'type'::name,
    'data_source'::name,
    'display_order'::name,
    'view_module_id'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'id', 'Column loan_pro_sandbox._view_widget_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'id', 'integer', 'Column loan_pro_sandbox._view_widget_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'id', 'Column loan_pro_sandbox._view_widget_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'id', 'Column loan_pro_sandbox._view_widget_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'name', 'Column loan_pro_sandbox._view_widget_entity.name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'name', 'text', 'Column loan_pro_sandbox._view_widget_entity.name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'name', 'Column loan_pro_sandbox._view_widget_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'name', 'Column loan_pro_sandbox._view_widget_entity.name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'description', 'Column loan_pro_sandbox._view_widget_entity.description should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'description', 'text', 'Column loan_pro_sandbox._view_widget_entity.description should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'description', 'Column loan_pro_sandbox._view_widget_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'description', 'Column loan_pro_sandbox._view_widget_entity.description should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'type', 'Column loan_pro_sandbox._view_widget_entity.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'type', 'text', 'Column loan_pro_sandbox._view_widget_entity.type should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'type', 'Column loan_pro_sandbox._view_widget_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'type', 'Column loan_pro_sandbox._view_widget_entity.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'data_source', 'Column loan_pro_sandbox._view_widget_entity.data_source should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'data_source', 'text', 'Column loan_pro_sandbox._view_widget_entity.data_source should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'data_source', 'Column loan_pro_sandbox._view_widget_entity.data_source should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'data_source', 'Column loan_pro_sandbox._view_widget_entity.data_source should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'display_order', 'Column loan_pro_sandbox._view_widget_entity.display_order should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'display_order', 'integer', 'Column loan_pro_sandbox._view_widget_entity.display_order should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'display_order', 'Column loan_pro_sandbox._view_widget_entity.display_order should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'display_order', 'Column loan_pro_sandbox._view_widget_entity.display_order should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'view_module_id', 'Column loan_pro_sandbox._view_widget_entity.view_module_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'view_module_id', 'integer', 'Column loan_pro_sandbox._view_widget_entity.view_module_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'view_module_id', 'Column loan_pro_sandbox._view_widget_entity.view_module_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'view_module_id', 'Column loan_pro_sandbox._view_widget_entity.view_module_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'deleted', 'Column loan_pro_sandbox._view_widget_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._view_widget_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'deleted', 'Column loan_pro_sandbox._view_widget_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'deleted', 'Column loan_pro_sandbox._view_widget_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'created', 'Column loan_pro_sandbox._view_widget_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'created', 'text', 'Column loan_pro_sandbox._view_widget_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'created', 'Column loan_pro_sandbox._view_widget_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'created', 'Column loan_pro_sandbox._view_widget_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_view_widget_entity', 'lastupdated', 'Column loan_pro_sandbox._view_widget_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_view_widget_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._view_widget_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_view_widget_entity', 'lastupdated', 'Column loan_pro_sandbox._view_widget_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_view_widget_entity', 'lastupdated', 'Column loan_pro_sandbox._view_widget_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
