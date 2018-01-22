SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_collection_item',
    'Should have foreign table loan_pro_sandbox._collection_item'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_collection_item',
    'Table loan_pro_sandbox._collection_item should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_collection_item'::name, ARRAY[
    'id'::name,
    'role_id'::name,
    'item_label'::name,
    'item_value'::name,
    'collection_id'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_collection_item', 'id', 'Column loan_pro_sandbox._collection_item.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collection_item', 'id', 'character varying(100)', 'Column loan_pro_sandbox._collection_item.id should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collection_item', 'id', 'Column loan_pro_sandbox._collection_item.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collection_item', 'id', 'Column loan_pro_sandbox._collection_item.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collection_item', 'role_id', 'Column loan_pro_sandbox._collection_item.role_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collection_item', 'role_id', 'integer', 'Column loan_pro_sandbox._collection_item.role_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collection_item', 'role_id', 'Column loan_pro_sandbox._collection_item.role_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collection_item', 'role_id', 'Column loan_pro_sandbox._collection_item.role_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collection_item', 'item_label', 'Column loan_pro_sandbox._collection_item.item_label should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collection_item', 'item_label', 'character varying(100)', 'Column loan_pro_sandbox._collection_item.item_label should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collection_item', 'item_label', 'Column loan_pro_sandbox._collection_item.item_label should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collection_item', 'item_label', 'Column loan_pro_sandbox._collection_item.item_label should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collection_item', 'item_value', 'Column loan_pro_sandbox._collection_item.item_value should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collection_item', 'item_value', 'character varying(100)', 'Column loan_pro_sandbox._collection_item.item_value should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collection_item', 'item_value', 'Column loan_pro_sandbox._collection_item.item_value should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collection_item', 'item_value', 'Column loan_pro_sandbox._collection_item.item_value should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collection_item', 'collection_id', 'Column loan_pro_sandbox._collection_item.collection_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collection_item', 'collection_id', 'character varying(100)', 'Column loan_pro_sandbox._collection_item.collection_id should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collection_item', 'collection_id', 'Column loan_pro_sandbox._collection_item.collection_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collection_item', 'collection_id', 'Column loan_pro_sandbox._collection_item.collection_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collection_item', 'created', 'Column loan_pro_sandbox._collection_item.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collection_item', 'created', 'text', 'Column loan_pro_sandbox._collection_item.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_collection_item', 'created', 'Column loan_pro_sandbox._collection_item.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collection_item', 'created', 'Column loan_pro_sandbox._collection_item.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collection_item', 'lastupdated', 'Column loan_pro_sandbox._collection_item.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collection_item', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._collection_item.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_collection_item', 'lastupdated', 'Column loan_pro_sandbox._collection_item.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collection_item', 'lastupdated', 'Column loan_pro_sandbox._collection_item.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
