SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'balance_api_fdw', 'pricingtiers',
    'Should have foreign table balance_api_fdw.pricingtiers'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'pricingtiers',
    'Table balance_api_fdw.pricingtiers should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'pricingtiers'::name, ARRAY[
    'id'::name,
    'label'::name,
    'expiration'::name,
    'description'::name,
    'priority'::name
]);

SELECT has_column(       'balance_api_fdw', 'pricingtiers', 'id', 'Column balance_api_fdw.pricingtiers.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'pricingtiers', 'id', 'integer', 'Column balance_api_fdw.pricingtiers.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'pricingtiers', 'id', 'Column balance_api_fdw.pricingtiers.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'pricingtiers', 'id', 'Column balance_api_fdw.pricingtiers.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'pricingtiers', 'label', 'Column balance_api_fdw.pricingtiers.label should exist');
SELECT col_type_is(      'balance_api_fdw', 'pricingtiers', 'label', 'character varying(250)', 'Column balance_api_fdw.pricingtiers.label should be type character varying(250)');
SELECT col_is_null(      'balance_api_fdw', 'pricingtiers', 'label', 'Column balance_api_fdw.pricingtiers.label should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'pricingtiers', 'label', 'Column balance_api_fdw.pricingtiers.label should not  have a default');

SELECT has_column(       'balance_api_fdw', 'pricingtiers', 'expiration', 'Column balance_api_fdw.pricingtiers.expiration should exist');
SELECT col_type_is(      'balance_api_fdw', 'pricingtiers', 'expiration', 'date', 'Column balance_api_fdw.pricingtiers.expiration should be type date');
SELECT col_is_null(      'balance_api_fdw', 'pricingtiers', 'expiration', 'Column balance_api_fdw.pricingtiers.expiration should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'pricingtiers', 'expiration', 'Column balance_api_fdw.pricingtiers.expiration should not  have a default');

SELECT has_column(       'balance_api_fdw', 'pricingtiers', 'description', 'Column balance_api_fdw.pricingtiers.description should exist');
SELECT col_type_is(      'balance_api_fdw', 'pricingtiers', 'description', 'character varying(1000)', 'Column balance_api_fdw.pricingtiers.description should be type character varying(1000)');
SELECT col_is_null(      'balance_api_fdw', 'pricingtiers', 'description', 'Column balance_api_fdw.pricingtiers.description should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'pricingtiers', 'description', 'Column balance_api_fdw.pricingtiers.description should not  have a default');

SELECT has_column(       'balance_api_fdw', 'pricingtiers', 'priority', 'Column balance_api_fdw.pricingtiers.priority should exist');
SELECT col_type_is(      'balance_api_fdw', 'pricingtiers', 'priority', 'integer', 'Column balance_api_fdw.pricingtiers.priority should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'pricingtiers', 'priority', 'Column balance_api_fdw.pricingtiers.priority should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'pricingtiers', 'priority', 'Column balance_api_fdw.pricingtiers.priority should not  have a default');

SELECT * FROM finish();
ROLLBACK;
