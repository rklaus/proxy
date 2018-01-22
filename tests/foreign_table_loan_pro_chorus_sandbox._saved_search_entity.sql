SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_saved_search_entity',
    'Should have foreign table loan_pro_chorus_sandbox._saved_search_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_saved_search_entity',
    'Table loan_pro_chorus_sandbox._saved_search_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_saved_search_entity'::name, ARRAY[
    'id'::name,
    'title'::name,
    'entity_type'::name,
    'query_string'::name,
    'query_filters_string'::name,
    'owner'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'id', 'Column loan_pro_chorus_sandbox._saved_search_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._saved_search_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'id', 'Column loan_pro_chorus_sandbox._saved_search_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'id', 'Column loan_pro_chorus_sandbox._saved_search_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'title', 'Column loan_pro_chorus_sandbox._saved_search_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'title', 'text', 'Column loan_pro_chorus_sandbox._saved_search_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'title', 'Column loan_pro_chorus_sandbox._saved_search_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'title', 'Column loan_pro_chorus_sandbox._saved_search_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._saved_search_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'entity_type', 'character(50)', 'Column loan_pro_chorus_sandbox._saved_search_entity.entity_type should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._saved_search_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._saved_search_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'query_string', 'Column loan_pro_chorus_sandbox._saved_search_entity.query_string should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'query_string', 'text', 'Column loan_pro_chorus_sandbox._saved_search_entity.query_string should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'query_string', 'Column loan_pro_chorus_sandbox._saved_search_entity.query_string should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'query_string', 'Column loan_pro_chorus_sandbox._saved_search_entity.query_string should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'query_filters_string', 'Column loan_pro_chorus_sandbox._saved_search_entity.query_filters_string should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'query_filters_string', 'text', 'Column loan_pro_chorus_sandbox._saved_search_entity.query_filters_string should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'query_filters_string', 'Column loan_pro_chorus_sandbox._saved_search_entity.query_filters_string should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'query_filters_string', 'Column loan_pro_chorus_sandbox._saved_search_entity.query_filters_string should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'owner', 'Column loan_pro_chorus_sandbox._saved_search_entity.owner should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'owner', 'integer', 'Column loan_pro_chorus_sandbox._saved_search_entity.owner should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'owner', 'Column loan_pro_chorus_sandbox._saved_search_entity.owner should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'owner', 'Column loan_pro_chorus_sandbox._saved_search_entity.owner should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'deleted', 'Column loan_pro_chorus_sandbox._saved_search_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._saved_search_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'deleted', 'Column loan_pro_chorus_sandbox._saved_search_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'deleted', 'Column loan_pro_chorus_sandbox._saved_search_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'created', 'Column loan_pro_chorus_sandbox._saved_search_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._saved_search_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'created', 'Column loan_pro_chorus_sandbox._saved_search_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'created', 'Column loan_pro_chorus_sandbox._saved_search_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_saved_search_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._saved_search_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._saved_search_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_saved_search_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._saved_search_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_saved_search_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._saved_search_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
