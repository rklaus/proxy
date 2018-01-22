SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'balance_customer_fdw', 'accounts_balanceuser_user_permissions',
    'Should have foreign table balance_customer_fdw.accounts_balanceuser_user_permissions'
);

SELECT hasnt_pk(
    'balance_customer_fdw', 'accounts_balanceuser_user_permissions',
    'Table balance_customer_fdw.accounts_balanceuser_user_permissions should have a primary key'
);

SELECT columns_are('balance_customer_fdw'::name, 'accounts_balanceuser_user_permissions'::name, ARRAY[
    'id'::name,
    'balanceuser_id'::name,
    'permission_id'::name
]);

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'id', 'integer', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'balanceuser_id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.balanceuser_id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'balanceuser_id', 'integer', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.balanceuser_id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'balanceuser_id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.balanceuser_id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'balanceuser_id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.balanceuser_id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'permission_id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.permission_id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'permission_id', 'integer', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.permission_id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'permission_id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.permission_id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser_user_permissions', 'permission_id', 'Column balance_customer_fdw.accounts_balanceuser_user_permissions.permission_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
