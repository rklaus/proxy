SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_chargeoff__transactions',
    'Should have foreign table loan_pro_sandbox._loan_chargeoff__transactions'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_chargeoff__transactions',
    'Table loan_pro_sandbox._loan_chargeoff__transactions should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_chargeoff__transactions'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'payment_id'::name,
    'credit_id'::name,
    'date'::name,
    'type'::name,
    'charge_off_amount'::name,
    'recovery_amount'::name,
    'charge_off_balance'::name,
    'sort_order'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'id', 'integer', 'Column loan_pro_sandbox._loan_chargeoff__transactions.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'entity_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.entity_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'entity_id', 'integer', 'Column loan_pro_sandbox._loan_chargeoff__transactions.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'entity_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'entity_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.entity_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'entity_type', 'Column loan_pro_sandbox._loan_chargeoff__transactions.entity_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'entity_type', 'character varying(100)', 'Column loan_pro_sandbox._loan_chargeoff__transactions.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'entity_type', 'Column loan_pro_sandbox._loan_chargeoff__transactions.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'entity_type', 'Column loan_pro_sandbox._loan_chargeoff__transactions.entity_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'payment_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.payment_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'payment_id', 'integer', 'Column loan_pro_sandbox._loan_chargeoff__transactions.payment_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'payment_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'payment_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.payment_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'credit_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.credit_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'credit_id', 'integer', 'Column loan_pro_sandbox._loan_chargeoff__transactions.credit_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'credit_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.credit_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'credit_id', 'Column loan_pro_sandbox._loan_chargeoff__transactions.credit_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'date', 'Column loan_pro_sandbox._loan_chargeoff__transactions.date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'date', 'text', 'Column loan_pro_sandbox._loan_chargeoff__transactions.date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'date', 'Column loan_pro_sandbox._loan_chargeoff__transactions.date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'date', 'Column loan_pro_sandbox._loan_chargeoff__transactions.date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'type', 'Column loan_pro_sandbox._loan_chargeoff__transactions.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'type', 'character(30)', 'Column loan_pro_sandbox._loan_chargeoff__transactions.type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'type', 'Column loan_pro_sandbox._loan_chargeoff__transactions.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'type', 'Column loan_pro_sandbox._loan_chargeoff__transactions.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'charge_off_amount', 'Column loan_pro_sandbox._loan_chargeoff__transactions.charge_off_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'charge_off_amount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_chargeoff__transactions.charge_off_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'charge_off_amount', 'Column loan_pro_sandbox._loan_chargeoff__transactions.charge_off_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'charge_off_amount', 'Column loan_pro_sandbox._loan_chargeoff__transactions.charge_off_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'recovery_amount', 'Column loan_pro_sandbox._loan_chargeoff__transactions.recovery_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'recovery_amount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_chargeoff__transactions.recovery_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'recovery_amount', 'Column loan_pro_sandbox._loan_chargeoff__transactions.recovery_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'recovery_amount', 'Column loan_pro_sandbox._loan_chargeoff__transactions.recovery_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'charge_off_balance', 'Column loan_pro_sandbox._loan_chargeoff__transactions.charge_off_balance should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'charge_off_balance', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_chargeoff__transactions.charge_off_balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'charge_off_balance', 'Column loan_pro_sandbox._loan_chargeoff__transactions.charge_off_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'charge_off_balance', 'Column loan_pro_sandbox._loan_chargeoff__transactions.charge_off_balance should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'sort_order', 'Column loan_pro_sandbox._loan_chargeoff__transactions.sort_order should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'sort_order', 'integer', 'Column loan_pro_sandbox._loan_chargeoff__transactions.sort_order should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'sort_order', 'Column loan_pro_sandbox._loan_chargeoff__transactions.sort_order should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'sort_order', 'Column loan_pro_sandbox._loan_chargeoff__transactions.sort_order should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'deleted', 'Column loan_pro_sandbox._loan_chargeoff__transactions.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'deleted', 'integer', 'Column loan_pro_sandbox._loan_chargeoff__transactions.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'deleted', 'Column loan_pro_sandbox._loan_chargeoff__transactions.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'deleted', 'Column loan_pro_sandbox._loan_chargeoff__transactions.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_chargeoff__transactions', 'lastupdated', 'Column loan_pro_sandbox._loan_chargeoff__transactions.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._loan_chargeoff__transactions.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_chargeoff__transactions', 'lastupdated', 'Column loan_pro_sandbox._loan_chargeoff__transactions.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_chargeoff__transactions', 'lastupdated', 'Column loan_pro_sandbox._loan_chargeoff__transactions.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
