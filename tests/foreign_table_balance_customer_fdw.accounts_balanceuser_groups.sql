SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'balance_customer_fdw', 'accounts_balanceuser_groups',
    'Should have foreign table balance_customer_fdw.accounts_balanceuser_groups'
);

SELECT hasnt_pk(
    'balance_customer_fdw', 'accounts_balanceuser_groups',
    'Table balance_customer_fdw.accounts_balanceuser_groups should have a primary key'
);

SELECT columns_are('balance_customer_fdw'::name, 'accounts_balanceuser_groups'::name, ARRAY[
    'id'::name,
    'balanceuser_id'::name,
    'group_id'::name
]);

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser_groups', 'id', 'Column balance_customer_fdw.accounts_balanceuser_groups.id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser_groups', 'id', 'integer', 'Column balance_customer_fdw.accounts_balanceuser_groups.id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser_groups', 'id', 'Column balance_customer_fdw.accounts_balanceuser_groups.id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser_groups', 'id', 'Column balance_customer_fdw.accounts_balanceuser_groups.id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser_groups', 'balanceuser_id', 'Column balance_customer_fdw.accounts_balanceuser_groups.balanceuser_id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser_groups', 'balanceuser_id', 'integer', 'Column balance_customer_fdw.accounts_balanceuser_groups.balanceuser_id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser_groups', 'balanceuser_id', 'Column balance_customer_fdw.accounts_balanceuser_groups.balanceuser_id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser_groups', 'balanceuser_id', 'Column balance_customer_fdw.accounts_balanceuser_groups.balanceuser_id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser_groups', 'group_id', 'Column balance_customer_fdw.accounts_balanceuser_groups.group_id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser_groups', 'group_id', 'integer', 'Column balance_customer_fdw.accounts_balanceuser_groups.group_id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser_groups', 'group_id', 'Column balance_customer_fdw.accounts_balanceuser_groups.group_id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser_groups', 'group_id', 'Column balance_customer_fdw.accounts_balanceuser_groups.group_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
