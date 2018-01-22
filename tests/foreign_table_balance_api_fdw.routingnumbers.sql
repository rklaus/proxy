SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'balance_api_fdw', 'routingnumbers',
    'Should have foreign table balance_api_fdw.routingnumbers'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'routingnumbers',
    'Table balance_api_fdw.routingnumbers should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'routingnumbers'::name, ARRAY[
    'id'::name,
    'label'::name
]);

SELECT has_column(       'balance_api_fdw', 'routingnumbers', 'id', 'Column balance_api_fdw.routingnumbers.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'routingnumbers', 'id', 'integer', 'Column balance_api_fdw.routingnumbers.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'routingnumbers', 'id', 'Column balance_api_fdw.routingnumbers.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'routingnumbers', 'id', 'Column balance_api_fdw.routingnumbers.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'routingnumbers', 'label', 'Column balance_api_fdw.routingnumbers.label should exist');
SELECT col_type_is(      'balance_api_fdw', 'routingnumbers', 'label', 'character varying(9)', 'Column balance_api_fdw.routingnumbers.label should be type character varying(9)');
SELECT col_is_null(      'balance_api_fdw', 'routingnumbers', 'label', 'Column balance_api_fdw.routingnumbers.label should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'routingnumbers', 'label', 'Column balance_api_fdw.routingnumbers.label should not  have a default');

SELECT * FROM finish();
ROLLBACK;
