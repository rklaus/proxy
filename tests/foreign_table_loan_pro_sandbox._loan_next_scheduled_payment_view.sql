SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(167);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_next_scheduled_payment_view',
    'Should have foreign table loan_pro_sandbox._loan_next_scheduled_payment_view'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_next_scheduled_payment_view',
    'Table loan_pro_sandbox._loan_next_scheduled_payment_view should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_next_scheduled_payment_view'::name, ARRAY[
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
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'id', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'entity_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.entity_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'entity_id', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'entity_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'entity_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.entity_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'entity_type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.entity_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'entity_type', 'character varying(100)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'entity_type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'entity_type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.entity_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'tx_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.tx_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'tx_id', 'character(40)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.tx_id should be type character(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'tx_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.tx_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'tx_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.tx_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'mod_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.mod_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'mod_id', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'mod_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'mod_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.mod_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'date', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'date', 'text', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'date', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'date', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period_start', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period_start should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period_start', 'text', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period_start should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period_start', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period_start should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period_start', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period_start should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period_end', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period_end should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period_end', 'text', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period_end should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period_end', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period_end should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'period_end', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.period_end should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'title', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.title should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'title', 'text', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.title should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'title', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.title should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'title', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.title should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'type', 'character(20)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.type should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'info_only', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.info_only should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'info_only', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.info_only should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'info_only', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.info_only should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'info_only', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.info_only should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'info_details', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.info_details should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'info_details', 'text', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.info_details should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'info_details', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.info_details should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'info_details', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.info_details should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_id', 'bigint', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_id should be type bigint');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_display_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_display_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_display_id', 'bigint', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_display_id should be type bigint');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_display_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_display_id', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_display_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_amount', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_amount', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_amount', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_amount', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_i', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_i should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_i', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_i should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_i', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_i should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_i', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_i should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_p', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_p should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_p', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_p should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_p', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_p should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_p', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_p should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_d', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_d should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_d', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_d should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_d', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_d should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_d', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_d should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_f', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_f should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_f', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_f should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_f', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_f should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_f', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_f should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_e', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_e should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_e', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_e should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_e', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_e should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_e', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_e should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_e_breakdown', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_e_breakdown should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_e_breakdown', 'text', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_e_breakdown should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_e_breakdown', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_e_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_e_breakdown', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_e_breakdown should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'fees_paid_details', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.fees_paid_details should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'fees_paid_details', 'text', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.fees_paid_details should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'fees_paid_details', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.fees_paid_details should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'fees_paid_details', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.fees_paid_details should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_amount', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_amount', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_amount', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_amount', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_i', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_i should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_i', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_i should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_i', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_i should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_i', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_i should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_p', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_p should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_p', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_p should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_p', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_p should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_p', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_p should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_d', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_d should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_d', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_d should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_d', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_d should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_d', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_d should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_f', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_f should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_f', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_f should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_f', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_f should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_f', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_f should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_e', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_e should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_e', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_e should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_e', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_e should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_e', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_e should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_e_breakdown', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_e_breakdown should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_e_breakdown', 'text', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_e_breakdown should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_e_breakdown', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_e_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_e_breakdown', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_e_breakdown should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'future', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.future should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'future', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.future should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'future', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.future should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'future', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.future should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'principalonly', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.principalonly should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'principalonly', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.principalonly should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'principalonly', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.principalonly should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'principalonly', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.principalonly should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'advancement', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.advancement should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'advancement', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.advancement should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'advancement', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.advancement should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'advancement', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.advancement should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payoff_fee', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payoff_fee should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payoff_fee', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payoff_fee should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payoff_fee', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payoff_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payoff_fee', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payoff_fee should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_off', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_off should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_off', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_off should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_off', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_off should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'charge_off', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.charge_off should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_type', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_type should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'payment_type', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.payment_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'adb_days', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.adb_days should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'adb_days', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.adb_days should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'adb_days', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.adb_days should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'adb_days', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.adb_days should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'adb', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.adb should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'adb', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.adb should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'adb', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.adb should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'adb', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.adb should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'principal_balance', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.principal_balance should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'principal_balance', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.principal_balance should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'principal_balance', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'principal_balance', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.principal_balance should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'displayorder', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.displayorder should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'displayorder', 'numeric(10,2)', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.displayorder should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'displayorder', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.displayorder should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'displayorder', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.displayorder should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'deleted', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'deleted', 'integer', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'deleted', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_next_scheduled_payment_view', 'deleted', 'Column loan_pro_sandbox._loan_next_scheduled_payment_view.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
