SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'loan_pro_fdw', '_special_report_entity',
    'Should have foreign table loan_pro_fdw._special_report_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_special_report_entity',
    'Table loan_pro_fdw._special_report_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_special_report_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'description'::name,
    'query'::name,
    'query_filters'::name,
    'template'::name,
    'format'::name,
    'separator'::name,
    'headers'::name,
    'summary_file'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'id', 'Column loan_pro_fdw._special_report_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'id', 'integer', 'Column loan_pro_fdw._special_report_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'id', 'Column loan_pro_fdw._special_report_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'id', 'Column loan_pro_fdw._special_report_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'name', 'Column loan_pro_fdw._special_report_entity.name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'name', 'character varying(100)', 'Column loan_pro_fdw._special_report_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'name', 'Column loan_pro_fdw._special_report_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'name', 'Column loan_pro_fdw._special_report_entity.name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'description', 'Column loan_pro_fdw._special_report_entity.description should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'description', 'text', 'Column loan_pro_fdw._special_report_entity.description should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'description', 'Column loan_pro_fdw._special_report_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'description', 'Column loan_pro_fdw._special_report_entity.description should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'query', 'Column loan_pro_fdw._special_report_entity.query should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'query', 'text', 'Column loan_pro_fdw._special_report_entity.query should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'query', 'Column loan_pro_fdw._special_report_entity.query should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'query', 'Column loan_pro_fdw._special_report_entity.query should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'query_filters', 'Column loan_pro_fdw._special_report_entity.query_filters should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'query_filters', 'text', 'Column loan_pro_fdw._special_report_entity.query_filters should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'query_filters', 'Column loan_pro_fdw._special_report_entity.query_filters should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'query_filters', 'Column loan_pro_fdw._special_report_entity.query_filters should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'template', 'Column loan_pro_fdw._special_report_entity.template should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'template', 'text', 'Column loan_pro_fdw._special_report_entity.template should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'template', 'Column loan_pro_fdw._special_report_entity.template should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'template', 'Column loan_pro_fdw._special_report_entity.template should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'format', 'Column loan_pro_fdw._special_report_entity.format should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'format', 'character(3)', 'Column loan_pro_fdw._special_report_entity.format should be type character(3)');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'format', 'Column loan_pro_fdw._special_report_entity.format should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'format', 'Column loan_pro_fdw._special_report_entity.format should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'separator', 'Column loan_pro_fdw._special_report_entity.separator should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'separator', 'character(1)', 'Column loan_pro_fdw._special_report_entity.separator should be type character(1)');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'separator', 'Column loan_pro_fdw._special_report_entity.separator should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'separator', 'Column loan_pro_fdw._special_report_entity.separator should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'headers', 'Column loan_pro_fdw._special_report_entity.headers should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'headers', 'integer', 'Column loan_pro_fdw._special_report_entity.headers should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'headers', 'Column loan_pro_fdw._special_report_entity.headers should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'headers', 'Column loan_pro_fdw._special_report_entity.headers should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'summary_file', 'Column loan_pro_fdw._special_report_entity.summary_file should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'summary_file', 'integer', 'Column loan_pro_fdw._special_report_entity.summary_file should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'summary_file', 'Column loan_pro_fdw._special_report_entity.summary_file should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'summary_file', 'Column loan_pro_fdw._special_report_entity.summary_file should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'deleted', 'Column loan_pro_fdw._special_report_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'deleted', 'integer', 'Column loan_pro_fdw._special_report_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'deleted', 'Column loan_pro_fdw._special_report_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'deleted', 'Column loan_pro_fdw._special_report_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'created', 'Column loan_pro_fdw._special_report_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'created', 'text', 'Column loan_pro_fdw._special_report_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'created', 'Column loan_pro_fdw._special_report_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'created', 'Column loan_pro_fdw._special_report_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_special_report_entity', 'lastupdated', 'Column loan_pro_fdw._special_report_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_special_report_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._special_report_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_special_report_entity', 'lastupdated', 'Column loan_pro_fdw._special_report_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_special_report_entity', 'lastupdated', 'Column loan_pro_fdw._special_report_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
