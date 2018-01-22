SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'balance_api_fdw', 'badbanks',
    'Should have foreign table balance_api_fdw.badbanks'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'badbanks',
    'Table balance_api_fdw.badbanks should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'badbanks'::name, ARRAY[
    'id'::name,
    'routing_number'::name,
    'name'::name,
    'is_active'::name
]);

SELECT has_column(       'balance_api_fdw', 'badbanks', 'id', 'Column balance_api_fdw.badbanks.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'badbanks', 'id', 'integer', 'Column balance_api_fdw.badbanks.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'badbanks', 'id', 'Column balance_api_fdw.badbanks.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'badbanks', 'id', 'Column balance_api_fdw.badbanks.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'badbanks', 'routing_number', 'Column balance_api_fdw.badbanks.routing_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'badbanks', 'routing_number', 'character varying(9)', 'Column balance_api_fdw.badbanks.routing_number should be type character varying(9)');
SELECT col_is_null(      'balance_api_fdw', 'badbanks', 'routing_number', 'Column balance_api_fdw.badbanks.routing_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'badbanks', 'routing_number', 'Column balance_api_fdw.badbanks.routing_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'badbanks', 'name', 'Column balance_api_fdw.badbanks.name should exist');
SELECT col_type_is(      'balance_api_fdw', 'badbanks', 'name', 'character varying(250)', 'Column balance_api_fdw.badbanks.name should be type character varying(250)');
SELECT col_is_null(      'balance_api_fdw', 'badbanks', 'name', 'Column balance_api_fdw.badbanks.name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'badbanks', 'name', 'Column balance_api_fdw.badbanks.name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'badbanks', 'is_active', 'Column balance_api_fdw.badbanks.is_active should exist');
SELECT col_type_is(      'balance_api_fdw', 'badbanks', 'is_active', 'boolean', 'Column balance_api_fdw.badbanks.is_active should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'badbanks', 'is_active', 'Column balance_api_fdw.badbanks.is_active should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'badbanks', 'is_active', 'Column balance_api_fdw.badbanks.is_active should not  have a default');

SELECT * FROM finish();
ROLLBACK;
