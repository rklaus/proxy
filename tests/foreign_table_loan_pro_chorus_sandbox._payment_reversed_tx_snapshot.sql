SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(103);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot',
    'Should have foreign table loan_pro_chorus_sandbox._payment_reversed_tx_snapshot'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot',
    'Table loan_pro_chorus_sandbox._payment_reversed_tx_snapshot should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_payment_reversed_tx_snapshot'::name, ARRAY[
    'id'::name,
    'mod_id'::name,
    'payment_id'::name,
    'date'::name,
    'period'::name,
    'period_start'::name,
    'period_end'::name,
    'title'::name,
    'payment_amount'::name,
    'payment_i'::name,
    'payment_p'::name,
    'payment_d'::name,
    'payment_f'::name,
    'payment_e'::name,
    'payment_e_breakdown'::name,
    'fees_paid_details'::name,
    'future'::name,
    'principalonly'::name,
    'charge_off'::name,
    'payment_type'::name,
    'adb_days'::name,
    'adb'::name,
    'principal_balance'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'id', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'mod_id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.mod_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'mod_id', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'mod_id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'mod_id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.mod_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_id', 'bigint', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_id should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_id', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'date', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'date', 'text', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'date', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'date', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period_start', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period_start should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period_start', 'text', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period_start should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period_start', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period_start should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period_start', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period_start should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period_end', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period_end should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period_end', 'text', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period_end should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period_end', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period_end should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'period_end', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.period_end should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'title', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'title', 'text', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'title', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'title', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_amount', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_amount', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_amount', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_amount', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_i', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_i should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_i', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_i should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_i', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_i should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_i', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_i should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_p', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_p should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_p', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_p should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_p', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_p should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_p', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_p should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_d', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_d should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_d', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_d should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_d', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_d should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_d', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_d should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_f', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_f should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_f', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_f should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_f', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_f should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_f', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_f should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_e', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_e should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_e', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_e should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_e', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_e should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_e', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_e should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_e_breakdown', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_e_breakdown should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_e_breakdown', 'text', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_e_breakdown should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_e_breakdown', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_e_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_e_breakdown', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_e_breakdown should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'fees_paid_details', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.fees_paid_details should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'fees_paid_details', 'text', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.fees_paid_details should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'fees_paid_details', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.fees_paid_details should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'fees_paid_details', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.fees_paid_details should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'future', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.future should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'future', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.future should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'future', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.future should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'future', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.future should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'principalonly', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.principalonly should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'principalonly', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.principalonly should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'principalonly', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.principalonly should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'principalonly', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.principalonly should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'charge_off', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.charge_off should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'charge_off', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.charge_off should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'charge_off', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.charge_off should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'charge_off', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.charge_off should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_type', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_type', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_type should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_type', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'payment_type', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.payment_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'adb_days', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.adb_days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'adb_days', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.adb_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'adb_days', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.adb_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'adb_days', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.adb_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'adb', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.adb should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'adb', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.adb should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'adb', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.adb should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'adb', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.adb should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'principal_balance', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.principal_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'principal_balance', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.principal_balance should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'principal_balance', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'principal_balance', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.principal_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'deleted', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'deleted', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'deleted', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'lastupdated', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'lastupdated', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_payment_reversed_tx_snapshot', 'lastupdated', 'Column loan_pro_chorus_sandbox._payment_reversed_tx_snapshot.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
