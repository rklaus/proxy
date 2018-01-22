SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(67);

SELECT has_foreign_table(
    'loan_pro_fdw', '_escrow__transactions',
    'Should have foreign table loan_pro_fdw._escrow__transactions'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_escrow__transactions',
    'Table loan_pro_fdw._escrow__transactions should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_escrow__transactions'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'tx_id'::name,
    'subset'::name,
    'category'::name,
    'description'::name,
    'date'::name,
    'type'::name,
    'from_payment'::name,
    'escrow_transaction_id'::name,
    'deposit_amount'::name,
    'withdrawal_amount'::name,
    'balance'::name,
    'sort_order'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'id', 'Column loan_pro_fdw._escrow__transactions.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'id', 'integer', 'Column loan_pro_fdw._escrow__transactions.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'id', 'Column loan_pro_fdw._escrow__transactions.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'id', 'Column loan_pro_fdw._escrow__transactions.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'loan_id', 'Column loan_pro_fdw._escrow__transactions.loan_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'loan_id', 'integer', 'Column loan_pro_fdw._escrow__transactions.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'loan_id', 'Column loan_pro_fdw._escrow__transactions.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'loan_id', 'Column loan_pro_fdw._escrow__transactions.loan_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'tx_id', 'Column loan_pro_fdw._escrow__transactions.tx_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'tx_id', 'character(30)', 'Column loan_pro_fdw._escrow__transactions.tx_id should be type character(30)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'tx_id', 'Column loan_pro_fdw._escrow__transactions.tx_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'tx_id', 'Column loan_pro_fdw._escrow__transactions.tx_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'subset', 'Column loan_pro_fdw._escrow__transactions.subset should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'subset', 'integer', 'Column loan_pro_fdw._escrow__transactions.subset should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'subset', 'Column loan_pro_fdw._escrow__transactions.subset should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'subset', 'Column loan_pro_fdw._escrow__transactions.subset should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'category', 'Column loan_pro_fdw._escrow__transactions.category should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'category', 'integer', 'Column loan_pro_fdw._escrow__transactions.category should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'category', 'Column loan_pro_fdw._escrow__transactions.category should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'category', 'Column loan_pro_fdw._escrow__transactions.category should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'description', 'Column loan_pro_fdw._escrow__transactions.description should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'description', 'text', 'Column loan_pro_fdw._escrow__transactions.description should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'description', 'Column loan_pro_fdw._escrow__transactions.description should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'description', 'Column loan_pro_fdw._escrow__transactions.description should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'date', 'Column loan_pro_fdw._escrow__transactions.date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'date', 'text', 'Column loan_pro_fdw._escrow__transactions.date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'date', 'Column loan_pro_fdw._escrow__transactions.date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'date', 'Column loan_pro_fdw._escrow__transactions.date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'type', 'Column loan_pro_fdw._escrow__transactions.type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'type', 'character(30)', 'Column loan_pro_fdw._escrow__transactions.type should be type character(30)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'type', 'Column loan_pro_fdw._escrow__transactions.type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'type', 'Column loan_pro_fdw._escrow__transactions.type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'from_payment', 'Column loan_pro_fdw._escrow__transactions.from_payment should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'from_payment', 'integer', 'Column loan_pro_fdw._escrow__transactions.from_payment should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'from_payment', 'Column loan_pro_fdw._escrow__transactions.from_payment should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'from_payment', 'Column loan_pro_fdw._escrow__transactions.from_payment should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'escrow_transaction_id', 'Column loan_pro_fdw._escrow__transactions.escrow_transaction_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'escrow_transaction_id', 'integer', 'Column loan_pro_fdw._escrow__transactions.escrow_transaction_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'escrow_transaction_id', 'Column loan_pro_fdw._escrow__transactions.escrow_transaction_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'escrow_transaction_id', 'Column loan_pro_fdw._escrow__transactions.escrow_transaction_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'deposit_amount', 'Column loan_pro_fdw._escrow__transactions.deposit_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'deposit_amount', 'numeric(11,2)', 'Column loan_pro_fdw._escrow__transactions.deposit_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'deposit_amount', 'Column loan_pro_fdw._escrow__transactions.deposit_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'deposit_amount', 'Column loan_pro_fdw._escrow__transactions.deposit_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'withdrawal_amount', 'Column loan_pro_fdw._escrow__transactions.withdrawal_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'withdrawal_amount', 'numeric(11,2)', 'Column loan_pro_fdw._escrow__transactions.withdrawal_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'withdrawal_amount', 'Column loan_pro_fdw._escrow__transactions.withdrawal_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'withdrawal_amount', 'Column loan_pro_fdw._escrow__transactions.withdrawal_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'balance', 'Column loan_pro_fdw._escrow__transactions.balance should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'balance', 'numeric(11,2)', 'Column loan_pro_fdw._escrow__transactions.balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'balance', 'Column loan_pro_fdw._escrow__transactions.balance should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'balance', 'Column loan_pro_fdw._escrow__transactions.balance should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'sort_order', 'Column loan_pro_fdw._escrow__transactions.sort_order should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'sort_order', 'integer', 'Column loan_pro_fdw._escrow__transactions.sort_order should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'sort_order', 'Column loan_pro_fdw._escrow__transactions.sort_order should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'sort_order', 'Column loan_pro_fdw._escrow__transactions.sort_order should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'deleted', 'Column loan_pro_fdw._escrow__transactions.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'deleted', 'integer', 'Column loan_pro_fdw._escrow__transactions.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'deleted', 'Column loan_pro_fdw._escrow__transactions.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'deleted', 'Column loan_pro_fdw._escrow__transactions.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow__transactions', 'lastupdated', 'Column loan_pro_fdw._escrow__transactions.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow__transactions', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._escrow__transactions.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_escrow__transactions', 'lastupdated', 'Column loan_pro_fdw._escrow__transactions.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow__transactions', 'lastupdated', 'Column loan_pro_fdw._escrow__transactions.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
