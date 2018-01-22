SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_holding_account_transaction_entity',
    'Should have foreign table loan_pro_chorus_fdw._holding_account_transaction_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_holding_account_transaction_entity',
    'Table loan_pro_chorus_fdw._holding_account_transaction_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_holding_account_transaction_entity'::name, ARRAY[
    'id'::name,
    'holding_account_id'::name,
    'amount'::name,
    'balance'::name,
    'type'::name,
    'sub_type'::name,
    'category_id'::name,
    'date'::name,
    'description'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'holding_account_id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.holding_account_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'holding_account_id', 'integer', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.holding_account_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'holding_account_id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.holding_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'holding_account_id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.holding_account_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'amount', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'amount', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'amount', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'balance', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.balance should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'balance', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'balance', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'balance', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'type', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'type', 'character varying(100)', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'type', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'type', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'sub_type', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.sub_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'sub_type', 'character(64)', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.sub_type should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'sub_type', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.sub_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'sub_type', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.sub_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'category_id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.category_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'category_id', 'integer', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.category_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'category_id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.category_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'category_id', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.category_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'date', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'date', 'text', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'date', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'date', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'description', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.description should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'description', 'text', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.description should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'description', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'description', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.description should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'created', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'created', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'created', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_transaction_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_transaction_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
