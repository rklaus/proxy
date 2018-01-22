SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(83);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_funding_entity',
    'Should have foreign table loan_pro_chorus_fdw._loan_funding_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_funding_entity',
    'Table loan_pro_chorus_fdw._loan_funding_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_funding_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'status'::name,
    'who_entity_type'::name,
    'who_entity_id'::name,
    'cash_drawer_id'::name,
    'cash_drawer_tx_id'::name,
    'payment_account_id'::name,
    'payment_processor'::name,
    'merchant_tx_id'::name,
    'payment_id'::name,
    'agent'::name,
    'authorization_type'::name,
    'method'::name,
    'amount'::name,
    'date'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'id', 'Column loan_pro_chorus_fdw._loan_funding_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'id', 'Column loan_pro_chorus_fdw._loan_funding_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'id', 'Column loan_pro_chorus_fdw._loan_funding_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'loan_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'loan_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'loan_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'status', 'Column loan_pro_chorus_fdw._loan_funding_entity.status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'status', 'character varying(45)', 'Column loan_pro_chorus_fdw._loan_funding_entity.status should be type character varying(45)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'status', 'Column loan_pro_chorus_fdw._loan_funding_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'status', 'Column loan_pro_chorus_fdw._loan_funding_entity.status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'who_entity_type', 'Column loan_pro_chorus_fdw._loan_funding_entity.who_entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'who_entity_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._loan_funding_entity.who_entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'who_entity_type', 'Column loan_pro_chorus_fdw._loan_funding_entity.who_entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'who_entity_type', 'Column loan_pro_chorus_fdw._loan_funding_entity.who_entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'who_entity_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.who_entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'who_entity_id', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.who_entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'who_entity_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.who_entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'who_entity_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.who_entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'cash_drawer_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.cash_drawer_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'cash_drawer_id', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.cash_drawer_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'cash_drawer_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.cash_drawer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'cash_drawer_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.cash_drawer_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'cash_drawer_tx_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.cash_drawer_tx_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'cash_drawer_tx_id', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.cash_drawer_tx_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'cash_drawer_tx_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.cash_drawer_tx_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'cash_drawer_tx_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.cash_drawer_tx_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_account_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_account_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_account_id', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_account_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_account_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_account_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_account_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_processor', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_processor should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_processor', 'text', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_processor should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_processor', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_processor should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_processor', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_processor should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'merchant_tx_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.merchant_tx_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'merchant_tx_id', 'character varying(45)', 'Column loan_pro_chorus_fdw._loan_funding_entity.merchant_tx_id should be type character varying(45)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'merchant_tx_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.merchant_tx_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'merchant_tx_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.merchant_tx_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_id', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'payment_id', 'Column loan_pro_chorus_fdw._loan_funding_entity.payment_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'agent', 'Column loan_pro_chorus_fdw._loan_funding_entity.agent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'agent', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.agent should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'agent', 'Column loan_pro_chorus_fdw._loan_funding_entity.agent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'agent', 'Column loan_pro_chorus_fdw._loan_funding_entity.agent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'authorization_type', 'Column loan_pro_chorus_fdw._loan_funding_entity.authorization_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'authorization_type', 'character(23)', 'Column loan_pro_chorus_fdw._loan_funding_entity.authorization_type should be type character(23)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'authorization_type', 'Column loan_pro_chorus_fdw._loan_funding_entity.authorization_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'authorization_type', 'Column loan_pro_chorus_fdw._loan_funding_entity.authorization_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'method', 'Column loan_pro_chorus_fdw._loan_funding_entity.method should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'method', 'character(31)', 'Column loan_pro_chorus_fdw._loan_funding_entity.method should be type character(31)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'method', 'Column loan_pro_chorus_fdw._loan_funding_entity.method should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'method', 'Column loan_pro_chorus_fdw._loan_funding_entity.method should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_funding_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_funding_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_funding_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_funding_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'date', 'Column loan_pro_chorus_fdw._loan_funding_entity.date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'date', 'text', 'Column loan_pro_chorus_fdw._loan_funding_entity.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'date', 'Column loan_pro_chorus_fdw._loan_funding_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'date', 'Column loan_pro_chorus_fdw._loan_funding_entity.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'created', 'Column loan_pro_chorus_fdw._loan_funding_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._loan_funding_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'created', 'Column loan_pro_chorus_fdw._loan_funding_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'created', 'Column loan_pro_chorus_fdw._loan_funding_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_funding_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan_funding_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_funding_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_funding_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'active', 'Column loan_pro_chorus_fdw._loan_funding_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'active', 'Column loan_pro_chorus_fdw._loan_funding_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'active', 'Column loan_pro_chorus_fdw._loan_funding_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_funding_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_funding_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_funding_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_funding_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_funding_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_funding_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_funding_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
