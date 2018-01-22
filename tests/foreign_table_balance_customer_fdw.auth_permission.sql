SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'balance_customer_fdw', 'auth_permission',
    'Should have foreign table balance_customer_fdw.auth_permission'
);

SELECT hasnt_pk(
    'balance_customer_fdw', 'auth_permission',
    'Table balance_customer_fdw.auth_permission should have a primary key'
);

SELECT columns_are('balance_customer_fdw'::name, 'auth_permission'::name, ARRAY[
    'id'::name,
    'name'::name,
    'content_type_id'::name,
    'codename'::name
]);

SELECT has_column(       'balance_customer_fdw', 'auth_permission', 'id', 'Column balance_customer_fdw.auth_permission.id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'auth_permission', 'id', 'integer', 'Column balance_customer_fdw.auth_permission.id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'auth_permission', 'id', 'Column balance_customer_fdw.auth_permission.id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'auth_permission', 'id', 'Column balance_customer_fdw.auth_permission.id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'auth_permission', 'name', 'Column balance_customer_fdw.auth_permission.name should exist');
SELECT col_type_is(      'balance_customer_fdw', 'auth_permission', 'name', 'character varying(255)', 'Column balance_customer_fdw.auth_permission.name should be type character varying(255)');
SELECT col_is_null(      'balance_customer_fdw', 'auth_permission', 'name', 'Column balance_customer_fdw.auth_permission.name should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'auth_permission', 'name', 'Column balance_customer_fdw.auth_permission.name should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'auth_permission', 'content_type_id', 'Column balance_customer_fdw.auth_permission.content_type_id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'auth_permission', 'content_type_id', 'integer', 'Column balance_customer_fdw.auth_permission.content_type_id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'auth_permission', 'content_type_id', 'Column balance_customer_fdw.auth_permission.content_type_id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'auth_permission', 'content_type_id', 'Column balance_customer_fdw.auth_permission.content_type_id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'auth_permission', 'codename', 'Column balance_customer_fdw.auth_permission.codename should exist');
SELECT col_type_is(      'balance_customer_fdw', 'auth_permission', 'codename', 'character varying(100)', 'Column balance_customer_fdw.auth_permission.codename should be type character varying(100)');
SELECT col_is_null(      'balance_customer_fdw', 'auth_permission', 'codename', 'Column balance_customer_fdw.auth_permission.codename should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'auth_permission', 'codename', 'Column balance_customer_fdw.auth_permission.codename should not  have a default');

SELECT * FROM finish();
ROLLBACK;
