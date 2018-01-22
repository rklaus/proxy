SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'balance_api_fdw', 'locations',
    'Should have foreign table balance_api_fdw.locations'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'locations',
    'Table balance_api_fdw.locations should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'locations'::name, ARRAY[
    'id'::name,
    'label'::name,
    'city'::name,
    'state'::name,
    'zipcode'::name
]);

SELECT has_column(       'balance_api_fdw', 'locations', 'id', 'Column balance_api_fdw.locations.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'locations', 'id', 'integer', 'Column balance_api_fdw.locations.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'locations', 'id', 'Column balance_api_fdw.locations.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'locations', 'id', 'Column balance_api_fdw.locations.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'locations', 'label', 'Column balance_api_fdw.locations.label should exist');
SELECT col_type_is(      'balance_api_fdw', 'locations', 'label', 'character varying(250)', 'Column balance_api_fdw.locations.label should be type character varying(250)');
SELECT col_is_null(      'balance_api_fdw', 'locations', 'label', 'Column balance_api_fdw.locations.label should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'locations', 'label', 'Column balance_api_fdw.locations.label should not  have a default');

SELECT has_column(       'balance_api_fdw', 'locations', 'city', 'Column balance_api_fdw.locations.city should exist');
SELECT col_type_is(      'balance_api_fdw', 'locations', 'city', 'character varying(100)', 'Column balance_api_fdw.locations.city should be type character varying(100)');
SELECT col_is_null(      'balance_api_fdw', 'locations', 'city', 'Column balance_api_fdw.locations.city should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'locations', 'city', 'Column balance_api_fdw.locations.city should not  have a default');

SELECT has_column(       'balance_api_fdw', 'locations', 'state', 'Column balance_api_fdw.locations.state should exist');
SELECT col_type_is(      'balance_api_fdw', 'locations', 'state', 'character varying(2)', 'Column balance_api_fdw.locations.state should be type character varying(2)');
SELECT col_is_null(      'balance_api_fdw', 'locations', 'state', 'Column balance_api_fdw.locations.state should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'locations', 'state', 'Column balance_api_fdw.locations.state should not  have a default');

SELECT has_column(       'balance_api_fdw', 'locations', 'zipcode', 'Column balance_api_fdw.locations.zipcode should exist');
SELECT col_type_is(      'balance_api_fdw', 'locations', 'zipcode', 'character varying(5)', 'Column balance_api_fdw.locations.zipcode should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'locations', 'zipcode', 'Column balance_api_fdw.locations.zipcode should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'locations', 'zipcode', 'Column balance_api_fdw.locations.zipcode should not  have a default');

SELECT * FROM finish();
ROLLBACK;
