SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'balance_customer_fdw', 'auth_group',
    'Should have foreign table balance_customer_fdw.auth_group'
);

SELECT hasnt_pk(
    'balance_customer_fdw', 'auth_group',
    'Table balance_customer_fdw.auth_group should have a primary key'
);

SELECT columns_are('balance_customer_fdw'::name, 'auth_group'::name, ARRAY[
    'id'::name,
    'name'::name
]);

SELECT has_column(       'balance_customer_fdw', 'auth_group', 'id', 'Column balance_customer_fdw.auth_group.id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'auth_group', 'id', 'integer', 'Column balance_customer_fdw.auth_group.id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'auth_group', 'id', 'Column balance_customer_fdw.auth_group.id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'auth_group', 'id', 'Column balance_customer_fdw.auth_group.id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'auth_group', 'name', 'Column balance_customer_fdw.auth_group.name should exist');
SELECT col_type_is(      'balance_customer_fdw', 'auth_group', 'name', 'character varying(80)', 'Column balance_customer_fdw.auth_group.name should be type character varying(80)');
SELECT col_is_null(      'balance_customer_fdw', 'auth_group', 'name', 'Column balance_customer_fdw.auth_group.name should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'auth_group', 'name', 'Column balance_customer_fdw.auth_group.name should not  have a default');

SELECT * FROM finish();
ROLLBACK;
