SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_fdw', '_user_search_settings_entity',
    'Should have foreign table loan_pro_fdw._user_search_settings_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_user_search_settings_entity',
    'Table loan_pro_fdw._user_search_settings_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_user_search_settings_entity'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'search_entity_type'::name,
    'search_settings'::name,
    'deleted'::name,
    'created'::name,
    'modified'::name
]);

SELECT has_column(       'loan_pro_fdw', '_user_search_settings_entity', 'id', 'Column loan_pro_fdw._user_search_settings_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_user_search_settings_entity', 'id', 'integer', 'Column loan_pro_fdw._user_search_settings_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_user_search_settings_entity', 'id', 'Column loan_pro_fdw._user_search_settings_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_user_search_settings_entity', 'id', 'Column loan_pro_fdw._user_search_settings_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_user_search_settings_entity', 'user_id', 'Column loan_pro_fdw._user_search_settings_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_user_search_settings_entity', 'user_id', 'integer', 'Column loan_pro_fdw._user_search_settings_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_user_search_settings_entity', 'user_id', 'Column loan_pro_fdw._user_search_settings_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_user_search_settings_entity', 'user_id', 'Column loan_pro_fdw._user_search_settings_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_user_search_settings_entity', 'search_entity_type', 'Column loan_pro_fdw._user_search_settings_entity.search_entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_user_search_settings_entity', 'search_entity_type', 'character(50)', 'Column loan_pro_fdw._user_search_settings_entity.search_entity_type should be type character(50)');
SELECT col_is_null(      'loan_pro_fdw', '_user_search_settings_entity', 'search_entity_type', 'Column loan_pro_fdw._user_search_settings_entity.search_entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_user_search_settings_entity', 'search_entity_type', 'Column loan_pro_fdw._user_search_settings_entity.search_entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_user_search_settings_entity', 'search_settings', 'Column loan_pro_fdw._user_search_settings_entity.search_settings should exist');
SELECT col_type_is(      'loan_pro_fdw', '_user_search_settings_entity', 'search_settings', 'text', 'Column loan_pro_fdw._user_search_settings_entity.search_settings should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_user_search_settings_entity', 'search_settings', 'Column loan_pro_fdw._user_search_settings_entity.search_settings should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_user_search_settings_entity', 'search_settings', 'Column loan_pro_fdw._user_search_settings_entity.search_settings should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_user_search_settings_entity', 'deleted', 'Column loan_pro_fdw._user_search_settings_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_user_search_settings_entity', 'deleted', 'integer', 'Column loan_pro_fdw._user_search_settings_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_user_search_settings_entity', 'deleted', 'Column loan_pro_fdw._user_search_settings_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_user_search_settings_entity', 'deleted', 'Column loan_pro_fdw._user_search_settings_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_user_search_settings_entity', 'created', 'Column loan_pro_fdw._user_search_settings_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_user_search_settings_entity', 'created', 'text', 'Column loan_pro_fdw._user_search_settings_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_user_search_settings_entity', 'created', 'Column loan_pro_fdw._user_search_settings_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_user_search_settings_entity', 'created', 'Column loan_pro_fdw._user_search_settings_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_user_search_settings_entity', 'modified', 'Column loan_pro_fdw._user_search_settings_entity.modified should exist');
SELECT col_type_is(      'loan_pro_fdw', '_user_search_settings_entity', 'modified', 'text', 'Column loan_pro_fdw._user_search_settings_entity.modified should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_user_search_settings_entity', 'modified', 'Column loan_pro_fdw._user_search_settings_entity.modified should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_user_search_settings_entity', 'modified', 'Column loan_pro_fdw._user_search_settings_entity.modified should not  have a default');

SELECT * FROM finish();
ROLLBACK;
