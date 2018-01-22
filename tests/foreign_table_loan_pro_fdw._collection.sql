SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_fdw', '_collection',
    'Should have foreign table loan_pro_fdw._collection'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_collection',
    'Table loan_pro_fdw._collection should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_collection'::name, ARRAY[
    'id'::name,
    'label'::name,
    'entity'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_collection', 'id', 'Column loan_pro_fdw._collection.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_collection', 'id', 'character varying(100)', 'Column loan_pro_fdw._collection.id should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_collection', 'id', 'Column loan_pro_fdw._collection.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_collection', 'id', 'Column loan_pro_fdw._collection.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_collection', 'label', 'Column loan_pro_fdw._collection.label should exist');
SELECT col_type_is(      'loan_pro_fdw', '_collection', 'label', 'character varying(100)', 'Column loan_pro_fdw._collection.label should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_collection', 'label', 'Column loan_pro_fdw._collection.label should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_collection', 'label', 'Column loan_pro_fdw._collection.label should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_collection', 'entity', 'Column loan_pro_fdw._collection.entity should exist');
SELECT col_type_is(      'loan_pro_fdw', '_collection', 'entity', 'character varying(100)', 'Column loan_pro_fdw._collection.entity should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_collection', 'entity', 'Column loan_pro_fdw._collection.entity should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_collection', 'entity', 'Column loan_pro_fdw._collection.entity should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_collection', 'deleted', 'Column loan_pro_fdw._collection.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_collection', 'deleted', 'integer', 'Column loan_pro_fdw._collection.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_collection', 'deleted', 'Column loan_pro_fdw._collection.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_collection', 'deleted', 'Column loan_pro_fdw._collection.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_collection', 'created', 'Column loan_pro_fdw._collection.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_collection', 'created', 'text', 'Column loan_pro_fdw._collection.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_collection', 'created', 'Column loan_pro_fdw._collection.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_collection', 'created', 'Column loan_pro_fdw._collection.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_collection', 'lastupdated', 'Column loan_pro_fdw._collection.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_collection', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._collection.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_collection', 'lastupdated', 'Column loan_pro_fdw._collection.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_collection', 'lastupdated', 'Column loan_pro_fdw._collection.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
