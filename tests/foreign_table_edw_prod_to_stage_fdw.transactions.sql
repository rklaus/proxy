SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'transactions',
    'Should have foreign table edw_prod_to_stage_fdw.transactions'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'transactions',
    'Table edw_prod_to_stage_fdw.transactions should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'transactions'::name, ARRAY[
    'requestcode'::name,
    'accountid'::name,
    'amount'::name,
    'category'::name,
    'description'::name,
    'isrefresh'::name,
    'runningbalance'::name,
    'status'::name,
    'transactiondate'::name,
    'typecodes'::name,
    'id'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'requestcode', 'Column edw_prod_to_stage_fdw.transactions.requestcode should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'requestcode', 'text', 'Column edw_prod_to_stage_fdw.transactions.requestcode should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'requestcode', 'Column edw_prod_to_stage_fdw.transactions.requestcode should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'requestcode', 'Column edw_prod_to_stage_fdw.transactions.requestcode should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'accountid', 'Column edw_prod_to_stage_fdw.transactions.accountid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'accountid', 'integer', 'Column edw_prod_to_stage_fdw.transactions.accountid should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'accountid', 'Column edw_prod_to_stage_fdw.transactions.accountid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'accountid', 'Column edw_prod_to_stage_fdw.transactions.accountid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'amount', 'Column edw_prod_to_stage_fdw.transactions.amount should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'amount', 'numeric', 'Column edw_prod_to_stage_fdw.transactions.amount should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'amount', 'Column edw_prod_to_stage_fdw.transactions.amount should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'amount', 'Column edw_prod_to_stage_fdw.transactions.amount should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'category', 'Column edw_prod_to_stage_fdw.transactions.category should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'category', 'text', 'Column edw_prod_to_stage_fdw.transactions.category should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'category', 'Column edw_prod_to_stage_fdw.transactions.category should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'category', 'Column edw_prod_to_stage_fdw.transactions.category should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'description', 'Column edw_prod_to_stage_fdw.transactions.description should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'description', 'text', 'Column edw_prod_to_stage_fdw.transactions.description should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'description', 'Column edw_prod_to_stage_fdw.transactions.description should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'description', 'Column edw_prod_to_stage_fdw.transactions.description should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'isrefresh', 'Column edw_prod_to_stage_fdw.transactions.isrefresh should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'isrefresh', 'boolean', 'Column edw_prod_to_stage_fdw.transactions.isrefresh should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'isrefresh', 'Column edw_prod_to_stage_fdw.transactions.isrefresh should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'isrefresh', 'Column edw_prod_to_stage_fdw.transactions.isrefresh should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'runningbalance', 'Column edw_prod_to_stage_fdw.transactions.runningbalance should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'runningbalance', 'numeric', 'Column edw_prod_to_stage_fdw.transactions.runningbalance should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'runningbalance', 'Column edw_prod_to_stage_fdw.transactions.runningbalance should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'runningbalance', 'Column edw_prod_to_stage_fdw.transactions.runningbalance should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'status', 'Column edw_prod_to_stage_fdw.transactions.status should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'status', 'text', 'Column edw_prod_to_stage_fdw.transactions.status should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'status', 'Column edw_prod_to_stage_fdw.transactions.status should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'status', 'Column edw_prod_to_stage_fdw.transactions.status should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'transactiondate', 'Column edw_prod_to_stage_fdw.transactions.transactiondate should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'transactiondate', 'date', 'Column edw_prod_to_stage_fdw.transactions.transactiondate should be type date');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'transactiondate', 'Column edw_prod_to_stage_fdw.transactions.transactiondate should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'transactiondate', 'Column edw_prod_to_stage_fdw.transactions.transactiondate should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'typecodes', 'Column edw_prod_to_stage_fdw.transactions.typecodes should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'typecodes', 'text', 'Column edw_prod_to_stage_fdw.transactions.typecodes should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'typecodes', 'Column edw_prod_to_stage_fdw.transactions.typecodes should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'typecodes', 'Column edw_prod_to_stage_fdw.transactions.typecodes should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transactions', 'id', 'Column edw_prod_to_stage_fdw.transactions.id should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transactions', 'id', 'integer', 'Column edw_prod_to_stage_fdw.transactions.id should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transactions', 'id', 'Column edw_prod_to_stage_fdw.transactions.id should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transactions', 'id', 'Column edw_prod_to_stage_fdw.transactions.id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
