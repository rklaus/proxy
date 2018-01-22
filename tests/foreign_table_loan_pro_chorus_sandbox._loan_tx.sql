SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(171);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan_tx',
    'Should have foreign table loan_pro_chorus_sandbox._loan_tx'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan_tx',
    'Table loan_pro_chorus_sandbox._loan_tx should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan_tx'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'tx_id'::name,
    'mod_id'::name,
    'date'::name,
    'period'::name,
    'period_start'::name,
    'period_end'::name,
    'title'::name,
    'type'::name,
    'info_only'::name,
    'info_details'::name,
    'payment_id'::name,
    'payment_display_id'::name,
    'payment_amount'::name,
    'payment_i'::name,
    'payment_p'::name,
    'payment_d'::name,
    'payment_f'::name,
    'payment_e'::name,
    'payment_e_breakdown'::name,
    'fees_paid_details'::name,
    'charge_amount'::name,
    'charge_i'::name,
    'charge_p'::name,
    'charge_d'::name,
    'charge_f'::name,
    'charge_e'::name,
    'charge_e_breakdown'::name,
    'future'::name,
    'principalonly'::name,
    'advancement'::name,
    'payoff_fee'::name,
    'charge_off'::name,
    'payment_type'::name,
    'adb_days'::name,
    'adb'::name,
    'principal_balance'::name,
    'displayorder'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'id', 'Column loan_pro_chorus_sandbox._loan_tx.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'id', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'id', 'Column loan_pro_chorus_sandbox._loan_tx.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'id', 'Column loan_pro_chorus_sandbox._loan_tx.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_tx.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'entity_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_tx.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_tx.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_tx.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._loan_tx.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_tx.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_tx.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'tx_id', 'Column loan_pro_chorus_sandbox._loan_tx.tx_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'tx_id', 'character(40)', 'Column loan_pro_chorus_sandbox._loan_tx.tx_id should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'tx_id', 'Column loan_pro_chorus_sandbox._loan_tx.tx_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'tx_id', 'Column loan_pro_chorus_sandbox._loan_tx.tx_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_tx.mod_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'mod_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_tx.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_tx.mod_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'date', 'Column loan_pro_chorus_sandbox._loan_tx.date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'date', 'text', 'Column loan_pro_chorus_sandbox._loan_tx.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'date', 'Column loan_pro_chorus_sandbox._loan_tx.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'date', 'Column loan_pro_chorus_sandbox._loan_tx.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'period', 'Column loan_pro_chorus_sandbox._loan_tx.period should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'period', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.period should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'period', 'Column loan_pro_chorus_sandbox._loan_tx.period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'period', 'Column loan_pro_chorus_sandbox._loan_tx.period should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'period_start', 'Column loan_pro_chorus_sandbox._loan_tx.period_start should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'period_start', 'text', 'Column loan_pro_chorus_sandbox._loan_tx.period_start should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'period_start', 'Column loan_pro_chorus_sandbox._loan_tx.period_start should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'period_start', 'Column loan_pro_chorus_sandbox._loan_tx.period_start should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'period_end', 'Column loan_pro_chorus_sandbox._loan_tx.period_end should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'period_end', 'text', 'Column loan_pro_chorus_sandbox._loan_tx.period_end should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'period_end', 'Column loan_pro_chorus_sandbox._loan_tx.period_end should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'period_end', 'Column loan_pro_chorus_sandbox._loan_tx.period_end should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'title', 'Column loan_pro_chorus_sandbox._loan_tx.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'title', 'text', 'Column loan_pro_chorus_sandbox._loan_tx.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'title', 'Column loan_pro_chorus_sandbox._loan_tx.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'title', 'Column loan_pro_chorus_sandbox._loan_tx.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'type', 'Column loan_pro_chorus_sandbox._loan_tx.type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'type', 'character(20)', 'Column loan_pro_chorus_sandbox._loan_tx.type should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'type', 'Column loan_pro_chorus_sandbox._loan_tx.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'type', 'Column loan_pro_chorus_sandbox._loan_tx.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'info_only', 'Column loan_pro_chorus_sandbox._loan_tx.info_only should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'info_only', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.info_only should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'info_only', 'Column loan_pro_chorus_sandbox._loan_tx.info_only should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'info_only', 'Column loan_pro_chorus_sandbox._loan_tx.info_only should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'info_details', 'Column loan_pro_chorus_sandbox._loan_tx.info_details should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'info_details', 'text', 'Column loan_pro_chorus_sandbox._loan_tx.info_details should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'info_details', 'Column loan_pro_chorus_sandbox._loan_tx.info_details should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'info_details', 'Column loan_pro_chorus_sandbox._loan_tx.info_details should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_id', 'Column loan_pro_chorus_sandbox._loan_tx.payment_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_id', 'bigint', 'Column loan_pro_chorus_sandbox._loan_tx.payment_id should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_id', 'Column loan_pro_chorus_sandbox._loan_tx.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_id', 'Column loan_pro_chorus_sandbox._loan_tx.payment_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_display_id', 'Column loan_pro_chorus_sandbox._loan_tx.payment_display_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_display_id', 'bigint', 'Column loan_pro_chorus_sandbox._loan_tx.payment_display_id should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_display_id', 'Column loan_pro_chorus_sandbox._loan_tx.payment_display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_display_id', 'Column loan_pro_chorus_sandbox._loan_tx.payment_display_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_amount', 'Column loan_pro_chorus_sandbox._loan_tx.payment_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_amount', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.payment_amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_amount', 'Column loan_pro_chorus_sandbox._loan_tx.payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_amount', 'Column loan_pro_chorus_sandbox._loan_tx.payment_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_i', 'Column loan_pro_chorus_sandbox._loan_tx.payment_i should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_i', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.payment_i should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_i', 'Column loan_pro_chorus_sandbox._loan_tx.payment_i should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_i', 'Column loan_pro_chorus_sandbox._loan_tx.payment_i should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_p', 'Column loan_pro_chorus_sandbox._loan_tx.payment_p should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_p', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.payment_p should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_p', 'Column loan_pro_chorus_sandbox._loan_tx.payment_p should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_p', 'Column loan_pro_chorus_sandbox._loan_tx.payment_p should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_d', 'Column loan_pro_chorus_sandbox._loan_tx.payment_d should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_d', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.payment_d should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_d', 'Column loan_pro_chorus_sandbox._loan_tx.payment_d should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_d', 'Column loan_pro_chorus_sandbox._loan_tx.payment_d should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_f', 'Column loan_pro_chorus_sandbox._loan_tx.payment_f should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_f', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.payment_f should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_f', 'Column loan_pro_chorus_sandbox._loan_tx.payment_f should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_f', 'Column loan_pro_chorus_sandbox._loan_tx.payment_f should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_e', 'Column loan_pro_chorus_sandbox._loan_tx.payment_e should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_e', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.payment_e should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_e', 'Column loan_pro_chorus_sandbox._loan_tx.payment_e should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_e', 'Column loan_pro_chorus_sandbox._loan_tx.payment_e should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_e_breakdown', 'Column loan_pro_chorus_sandbox._loan_tx.payment_e_breakdown should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_e_breakdown', 'text', 'Column loan_pro_chorus_sandbox._loan_tx.payment_e_breakdown should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_e_breakdown', 'Column loan_pro_chorus_sandbox._loan_tx.payment_e_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_e_breakdown', 'Column loan_pro_chorus_sandbox._loan_tx.payment_e_breakdown should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'fees_paid_details', 'Column loan_pro_chorus_sandbox._loan_tx.fees_paid_details should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'fees_paid_details', 'text', 'Column loan_pro_chorus_sandbox._loan_tx.fees_paid_details should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'fees_paid_details', 'Column loan_pro_chorus_sandbox._loan_tx.fees_paid_details should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'fees_paid_details', 'Column loan_pro_chorus_sandbox._loan_tx.fees_paid_details should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'charge_amount', 'Column loan_pro_chorus_sandbox._loan_tx.charge_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_amount', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.charge_amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_amount', 'Column loan_pro_chorus_sandbox._loan_tx.charge_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'charge_amount', 'Column loan_pro_chorus_sandbox._loan_tx.charge_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'charge_i', 'Column loan_pro_chorus_sandbox._loan_tx.charge_i should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_i', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.charge_i should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_i', 'Column loan_pro_chorus_sandbox._loan_tx.charge_i should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'charge_i', 'Column loan_pro_chorus_sandbox._loan_tx.charge_i should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'charge_p', 'Column loan_pro_chorus_sandbox._loan_tx.charge_p should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_p', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.charge_p should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_p', 'Column loan_pro_chorus_sandbox._loan_tx.charge_p should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'charge_p', 'Column loan_pro_chorus_sandbox._loan_tx.charge_p should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'charge_d', 'Column loan_pro_chorus_sandbox._loan_tx.charge_d should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_d', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.charge_d should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_d', 'Column loan_pro_chorus_sandbox._loan_tx.charge_d should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'charge_d', 'Column loan_pro_chorus_sandbox._loan_tx.charge_d should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'charge_f', 'Column loan_pro_chorus_sandbox._loan_tx.charge_f should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_f', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.charge_f should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_f', 'Column loan_pro_chorus_sandbox._loan_tx.charge_f should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'charge_f', 'Column loan_pro_chorus_sandbox._loan_tx.charge_f should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'charge_e', 'Column loan_pro_chorus_sandbox._loan_tx.charge_e should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_e', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.charge_e should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_e', 'Column loan_pro_chorus_sandbox._loan_tx.charge_e should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'charge_e', 'Column loan_pro_chorus_sandbox._loan_tx.charge_e should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'charge_e_breakdown', 'Column loan_pro_chorus_sandbox._loan_tx.charge_e_breakdown should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_e_breakdown', 'text', 'Column loan_pro_chorus_sandbox._loan_tx.charge_e_breakdown should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_e_breakdown', 'Column loan_pro_chorus_sandbox._loan_tx.charge_e_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'charge_e_breakdown', 'Column loan_pro_chorus_sandbox._loan_tx.charge_e_breakdown should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'future', 'Column loan_pro_chorus_sandbox._loan_tx.future should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'future', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.future should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'future', 'Column loan_pro_chorus_sandbox._loan_tx.future should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'future', 'Column loan_pro_chorus_sandbox._loan_tx.future should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'principalonly', 'Column loan_pro_chorus_sandbox._loan_tx.principalonly should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'principalonly', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.principalonly should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'principalonly', 'Column loan_pro_chorus_sandbox._loan_tx.principalonly should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'principalonly', 'Column loan_pro_chorus_sandbox._loan_tx.principalonly should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'advancement', 'Column loan_pro_chorus_sandbox._loan_tx.advancement should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'advancement', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.advancement should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'advancement', 'Column loan_pro_chorus_sandbox._loan_tx.advancement should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'advancement', 'Column loan_pro_chorus_sandbox._loan_tx.advancement should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payoff_fee', 'Column loan_pro_chorus_sandbox._loan_tx.payoff_fee should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payoff_fee', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.payoff_fee should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payoff_fee', 'Column loan_pro_chorus_sandbox._loan_tx.payoff_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payoff_fee', 'Column loan_pro_chorus_sandbox._loan_tx.payoff_fee should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'charge_off', 'Column loan_pro_chorus_sandbox._loan_tx.charge_off should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_off', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.charge_off should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'charge_off', 'Column loan_pro_chorus_sandbox._loan_tx.charge_off should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'charge_off', 'Column loan_pro_chorus_sandbox._loan_tx.charge_off should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'payment_type', 'Column loan_pro_chorus_sandbox._loan_tx.payment_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_type', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.payment_type should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'payment_type', 'Column loan_pro_chorus_sandbox._loan_tx.payment_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'payment_type', 'Column loan_pro_chorus_sandbox._loan_tx.payment_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'adb_days', 'Column loan_pro_chorus_sandbox._loan_tx.adb_days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'adb_days', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.adb_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'adb_days', 'Column loan_pro_chorus_sandbox._loan_tx.adb_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'adb_days', 'Column loan_pro_chorus_sandbox._loan_tx.adb_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'adb', 'Column loan_pro_chorus_sandbox._loan_tx.adb should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'adb', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.adb should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'adb', 'Column loan_pro_chorus_sandbox._loan_tx.adb should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'adb', 'Column loan_pro_chorus_sandbox._loan_tx.adb should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'principal_balance', 'Column loan_pro_chorus_sandbox._loan_tx.principal_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'principal_balance', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.principal_balance should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'principal_balance', 'Column loan_pro_chorus_sandbox._loan_tx.principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'principal_balance', 'Column loan_pro_chorus_sandbox._loan_tx.principal_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'displayorder', 'Column loan_pro_chorus_sandbox._loan_tx.displayorder should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'displayorder', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_tx.displayorder should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'displayorder', 'Column loan_pro_chorus_sandbox._loan_tx.displayorder should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'displayorder', 'Column loan_pro_chorus_sandbox._loan_tx.displayorder should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'deleted', 'Column loan_pro_chorus_sandbox._loan_tx.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._loan_tx.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'deleted', 'Column loan_pro_chorus_sandbox._loan_tx.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'deleted', 'Column loan_pro_chorus_sandbox._loan_tx.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_tx', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_tx.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_tx', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._loan_tx.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_tx', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_tx.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_tx', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_tx.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
