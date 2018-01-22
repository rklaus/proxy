SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(167);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan_autopay_entity',
    'Should have foreign table loan_pro_chorus_sandbox._loan_autopay_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan_autopay_entity',
    'Table loan_pro_chorus_sandbox._loan_autopay_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan_autopay_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'name'::name,
    'type'::name,
    'status'::name,
    'apply_date'::name,
    'process_datetime'::name,
    'original_process_datetime'::name,
    'original_apply_date'::name,
    'amount_type'::name,
    'amount'::name,
    'payment_type_id'::name,
    'process_current'::name,
    'charge_service_fee'::name,
    'retry_days'::name,
    'retry_count'::name,
    'post_payment_update_apply_date'::name,
    'recurring_frequency'::name,
    'recurring_periods'::name,
    'recurring_date_option'::name,
    'scheduling_type'::name,
    'last_dom_enabled'::name,
    'days_in_period'::name,
    'payment_extra_towards'::name,
    'payment_fee'::name,
    'primary_payment_method_id'::name,
    'secondary_payment_method_id'::name,
    'additional_payment_method_id'::name,
    'payment_method_auth_type'::name,
    'payoff_adjustment'::name,
    'process_zero_or_negative_balance'::name,
    'charge_off_recovery'::name,
    'mc_processor'::name,
    'cc_processor'::name,
    'ba_processor'::name,
    'deleted'::name,
    'created'::name,
    'last_updated'::name,
    'active'::name,
    'queued'::name,
    'last_payment_extra_towards'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'loan_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'loan_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'loan_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'loan_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'name', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'name', 'text', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'name', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'name', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'type', 'character(100)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'status', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.status should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'status', 'character(100)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.status should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'status', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'status', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.status should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.apply_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'apply_date', 'text', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.apply_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.apply_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_datetime', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_datetime should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_datetime', 'text', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_datetime should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_datetime', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_datetime', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_datetime should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'original_process_datetime', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.original_process_datetime should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'original_process_datetime', 'text', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.original_process_datetime should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'original_process_datetime', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.original_process_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'original_process_datetime', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.original_process_datetime should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'original_apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.original_apply_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'original_apply_date', 'text', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.original_apply_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'original_apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.original_apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'original_apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.original_apply_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'amount_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.amount_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'amount_type', 'character(100)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.amount_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'amount_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.amount_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'amount_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.amount_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'amount', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'amount', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'amount', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'amount', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_type_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_type_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_type_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_type_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_type_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_type_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_type_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_type_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_current', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_current should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_current', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_current should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_current', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_current should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_current', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_current should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'charge_service_fee', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.charge_service_fee should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'charge_service_fee', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.charge_service_fee should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'charge_service_fee', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.charge_service_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'charge_service_fee', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.charge_service_fee should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'retry_days', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.retry_days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'retry_days', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.retry_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'retry_days', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.retry_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'retry_days', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.retry_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'retry_count', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.retry_count should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'retry_count', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.retry_count should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'retry_count', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.retry_count should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'retry_count', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.retry_count should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'post_payment_update_apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.post_payment_update_apply_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'post_payment_update_apply_date', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.post_payment_update_apply_date should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'post_payment_update_apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.post_payment_update_apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'post_payment_update_apply_date', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.post_payment_update_apply_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_frequency', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_frequency', 'character(100)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_frequency', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_frequency', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_periods', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_periods should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_periods', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_periods should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_periods', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_periods should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_periods', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_periods should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_date_option', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_date_option should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_date_option', 'character(64)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_date_option should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_date_option', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_date_option should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'recurring_date_option', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.recurring_date_option should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'scheduling_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.scheduling_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'scheduling_type', 'character(64)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.scheduling_type should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'scheduling_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.scheduling_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'scheduling_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.scheduling_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_dom_enabled', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_dom_enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_dom_enabled', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_dom_enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_dom_enabled', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_dom_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_dom_enabled', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_dom_enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'days_in_period', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.days_in_period should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'days_in_period', 'character(100)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.days_in_period should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'days_in_period', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.days_in_period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'days_in_period', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.days_in_period should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_extra_towards', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_extra_towards should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_extra_towards', 'character(100)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_extra_towards should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_extra_towards', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_extra_towards should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_extra_towards', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_extra_towards should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_fee', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_fee should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_fee', 'numeric(6,2)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_fee should be type numeric(6,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_fee', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_fee', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_fee should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'primary_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.primary_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'primary_payment_method_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.primary_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'primary_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.primary_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'primary_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.primary_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'secondary_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.secondary_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'secondary_payment_method_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.secondary_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'secondary_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.secondary_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'secondary_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.secondary_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'additional_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.additional_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'additional_payment_method_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.additional_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'additional_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.additional_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'additional_payment_method_id', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.additional_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_method_auth_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_method_auth_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_method_auth_type', 'character(100)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_method_auth_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_method_auth_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_method_auth_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payment_method_auth_type', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payment_method_auth_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payoff_adjustment', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payoff_adjustment should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payoff_adjustment', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payoff_adjustment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payoff_adjustment', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payoff_adjustment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'payoff_adjustment', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.payoff_adjustment should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_zero_or_negative_balance', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_zero_or_negative_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_zero_or_negative_balance', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_zero_or_negative_balance should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_zero_or_negative_balance', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_zero_or_negative_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'process_zero_or_negative_balance', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.process_zero_or_negative_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'charge_off_recovery', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.charge_off_recovery should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'charge_off_recovery', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.charge_off_recovery should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'charge_off_recovery', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.charge_off_recovery should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'charge_off_recovery', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.charge_off_recovery should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'mc_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.mc_processor should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'mc_processor', 'text', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.mc_processor should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'mc_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.mc_processor should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'mc_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.mc_processor should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'cc_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.cc_processor should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'cc_processor', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.cc_processor should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'cc_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.cc_processor should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'cc_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.cc_processor should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'ba_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.ba_processor should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'ba_processor', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.ba_processor should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'ba_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.ba_processor should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'ba_processor', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.ba_processor should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_updated', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_updated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_updated', 'text', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_updated should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_updated', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_updated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_updated', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_updated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'active', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'active', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'active', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'queued', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.queued should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'queued', 'integer', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.queued should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'queued', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.queued should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'queued', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.queued should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_payment_extra_towards', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_payment_extra_towards should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_payment_extra_towards', 'character varying(100)', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_payment_extra_towards should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_payment_extra_towards', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_payment_extra_towards should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_autopay_entity', 'last_payment_extra_towards', 'Column loan_pro_chorus_sandbox._loan_autopay_entity.last_payment_extra_towards should not  have a default');

SELECT * FROM finish();
ROLLBACK;
