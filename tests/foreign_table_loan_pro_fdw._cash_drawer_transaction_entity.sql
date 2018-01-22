SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_fdw', '_cash_drawer_transaction_entity',
    'Should have foreign table loan_pro_fdw._cash_drawer_transaction_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_cash_drawer_transaction_entity',
    'Table loan_pro_fdw._cash_drawer_transaction_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_cash_drawer_transaction_entity'::name, ARRAY[
    'id'::name,
    'cash_drawer_id'::name,
    'loan_id'::name,
    'payment_id'::name,
    'description'::name,
    'category'::name,
    'type'::name,
    'amount'::name,
    'balance'::name,
    'date'::name,
    'is_reconciled'::name,
    'reconciliation_date'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'id', 'integer', 'Column loan_pro_fdw._cash_drawer_transaction_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'cash_drawer_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.cash_drawer_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'cash_drawer_id', 'integer', 'Column loan_pro_fdw._cash_drawer_transaction_entity.cash_drawer_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'cash_drawer_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.cash_drawer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'cash_drawer_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.cash_drawer_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'loan_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'loan_id', 'integer', 'Column loan_pro_fdw._cash_drawer_transaction_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'loan_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'loan_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'payment_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.payment_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'payment_id', 'integer', 'Column loan_pro_fdw._cash_drawer_transaction_entity.payment_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'payment_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'payment_id', 'Column loan_pro_fdw._cash_drawer_transaction_entity.payment_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'description', 'Column loan_pro_fdw._cash_drawer_transaction_entity.description should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'description', 'text', 'Column loan_pro_fdw._cash_drawer_transaction_entity.description should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'description', 'Column loan_pro_fdw._cash_drawer_transaction_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'description', 'Column loan_pro_fdw._cash_drawer_transaction_entity.description should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'category', 'Column loan_pro_fdw._cash_drawer_transaction_entity.category should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'category', 'integer', 'Column loan_pro_fdw._cash_drawer_transaction_entity.category should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'category', 'Column loan_pro_fdw._cash_drawer_transaction_entity.category should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'category', 'Column loan_pro_fdw._cash_drawer_transaction_entity.category should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'type', 'Column loan_pro_fdw._cash_drawer_transaction_entity.type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'type', 'character(30)', 'Column loan_pro_fdw._cash_drawer_transaction_entity.type should be type character(30)');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'type', 'Column loan_pro_fdw._cash_drawer_transaction_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'type', 'Column loan_pro_fdw._cash_drawer_transaction_entity.type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'amount', 'Column loan_pro_fdw._cash_drawer_transaction_entity.amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_fdw._cash_drawer_transaction_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'amount', 'Column loan_pro_fdw._cash_drawer_transaction_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'amount', 'Column loan_pro_fdw._cash_drawer_transaction_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'balance', 'Column loan_pro_fdw._cash_drawer_transaction_entity.balance should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'balance', 'numeric(11,2)', 'Column loan_pro_fdw._cash_drawer_transaction_entity.balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'balance', 'Column loan_pro_fdw._cash_drawer_transaction_entity.balance should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'balance', 'Column loan_pro_fdw._cash_drawer_transaction_entity.balance should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'date', 'Column loan_pro_fdw._cash_drawer_transaction_entity.date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'date', 'text', 'Column loan_pro_fdw._cash_drawer_transaction_entity.date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'date', 'Column loan_pro_fdw._cash_drawer_transaction_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'date', 'Column loan_pro_fdw._cash_drawer_transaction_entity.date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'is_reconciled', 'Column loan_pro_fdw._cash_drawer_transaction_entity.is_reconciled should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'is_reconciled', 'integer', 'Column loan_pro_fdw._cash_drawer_transaction_entity.is_reconciled should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'is_reconciled', 'Column loan_pro_fdw._cash_drawer_transaction_entity.is_reconciled should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'is_reconciled', 'Column loan_pro_fdw._cash_drawer_transaction_entity.is_reconciled should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'reconciliation_date', 'Column loan_pro_fdw._cash_drawer_transaction_entity.reconciliation_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'reconciliation_date', 'text', 'Column loan_pro_fdw._cash_drawer_transaction_entity.reconciliation_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'reconciliation_date', 'Column loan_pro_fdw._cash_drawer_transaction_entity.reconciliation_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'reconciliation_date', 'Column loan_pro_fdw._cash_drawer_transaction_entity.reconciliation_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'deleted', 'Column loan_pro_fdw._cash_drawer_transaction_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'deleted', 'integer', 'Column loan_pro_fdw._cash_drawer_transaction_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'deleted', 'Column loan_pro_fdw._cash_drawer_transaction_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'deleted', 'Column loan_pro_fdw._cash_drawer_transaction_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_cash_drawer_transaction_entity', 'lastupdated', 'Column loan_pro_fdw._cash_drawer_transaction_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._cash_drawer_transaction_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_cash_drawer_transaction_entity', 'lastupdated', 'Column loan_pro_fdw._cash_drawer_transaction_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_cash_drawer_transaction_entity', 'lastupdated', 'Column loan_pro_fdw._cash_drawer_transaction_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
