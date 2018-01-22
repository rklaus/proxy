SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity',
    'Should have foreign table loan_pro_chorus_fdw._holding_account_transaction_category_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity',
    'Table loan_pro_chorus_fdw._holding_account_transaction_category_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_holding_account_transaction_category_entity'::name, ARRAY[
    'id'::name,
    'category_name'::name,
    'transaction_type'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'category_name', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.category_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'category_name', 'text', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.category_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'category_name', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.category_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'category_name', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.category_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'transaction_type', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.transaction_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'transaction_type', 'text', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.transaction_type should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'transaction_type', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.transaction_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'transaction_type', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.transaction_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'active', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'active', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'active', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_category_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_transaction_category_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
