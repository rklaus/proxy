SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(163);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_next_autopay_view',
    'Should have foreign table loan_pro_sandbox._next_autopay_view'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_next_autopay_view',
    'Table loan_pro_sandbox._next_autopay_view should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_next_autopay_view'::name, ARRAY[
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
    'queued'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'id', 'Column loan_pro_sandbox._next_autopay_view.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'id', 'integer', 'Column loan_pro_sandbox._next_autopay_view.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'id', 'Column loan_pro_sandbox._next_autopay_view.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'id', 'Column loan_pro_sandbox._next_autopay_view.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'loan_id', 'Column loan_pro_sandbox._next_autopay_view.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'loan_id', 'integer', 'Column loan_pro_sandbox._next_autopay_view.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'loan_id', 'Column loan_pro_sandbox._next_autopay_view.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'loan_id', 'Column loan_pro_sandbox._next_autopay_view.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'name', 'Column loan_pro_sandbox._next_autopay_view.name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'name', 'text', 'Column loan_pro_sandbox._next_autopay_view.name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'name', 'Column loan_pro_sandbox._next_autopay_view.name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'name', 'Column loan_pro_sandbox._next_autopay_view.name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'type', 'Column loan_pro_sandbox._next_autopay_view.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'type', 'character(100)', 'Column loan_pro_sandbox._next_autopay_view.type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'type', 'Column loan_pro_sandbox._next_autopay_view.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'type', 'Column loan_pro_sandbox._next_autopay_view.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'status', 'Column loan_pro_sandbox._next_autopay_view.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'status', 'character(100)', 'Column loan_pro_sandbox._next_autopay_view.status should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'status', 'Column loan_pro_sandbox._next_autopay_view.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'status', 'Column loan_pro_sandbox._next_autopay_view.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'apply_date', 'Column loan_pro_sandbox._next_autopay_view.apply_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'apply_date', 'text', 'Column loan_pro_sandbox._next_autopay_view.apply_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'apply_date', 'Column loan_pro_sandbox._next_autopay_view.apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'apply_date', 'Column loan_pro_sandbox._next_autopay_view.apply_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'process_datetime', 'Column loan_pro_sandbox._next_autopay_view.process_datetime should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'process_datetime', 'text', 'Column loan_pro_sandbox._next_autopay_view.process_datetime should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'process_datetime', 'Column loan_pro_sandbox._next_autopay_view.process_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'process_datetime', 'Column loan_pro_sandbox._next_autopay_view.process_datetime should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'original_process_datetime', 'Column loan_pro_sandbox._next_autopay_view.original_process_datetime should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'original_process_datetime', 'text', 'Column loan_pro_sandbox._next_autopay_view.original_process_datetime should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'original_process_datetime', 'Column loan_pro_sandbox._next_autopay_view.original_process_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'original_process_datetime', 'Column loan_pro_sandbox._next_autopay_view.original_process_datetime should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'original_apply_date', 'Column loan_pro_sandbox._next_autopay_view.original_apply_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'original_apply_date', 'text', 'Column loan_pro_sandbox._next_autopay_view.original_apply_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'original_apply_date', 'Column loan_pro_sandbox._next_autopay_view.original_apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'original_apply_date', 'Column loan_pro_sandbox._next_autopay_view.original_apply_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'amount_type', 'Column loan_pro_sandbox._next_autopay_view.amount_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'amount_type', 'character(100)', 'Column loan_pro_sandbox._next_autopay_view.amount_type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'amount_type', 'Column loan_pro_sandbox._next_autopay_view.amount_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'amount_type', 'Column loan_pro_sandbox._next_autopay_view.amount_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'amount', 'Column loan_pro_sandbox._next_autopay_view.amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'amount', 'numeric(10,2)', 'Column loan_pro_sandbox._next_autopay_view.amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'amount', 'Column loan_pro_sandbox._next_autopay_view.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'amount', 'Column loan_pro_sandbox._next_autopay_view.amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'payment_type_id', 'Column loan_pro_sandbox._next_autopay_view.payment_type_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'payment_type_id', 'integer', 'Column loan_pro_sandbox._next_autopay_view.payment_type_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'payment_type_id', 'Column loan_pro_sandbox._next_autopay_view.payment_type_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'payment_type_id', 'Column loan_pro_sandbox._next_autopay_view.payment_type_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'process_current', 'Column loan_pro_sandbox._next_autopay_view.process_current should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'process_current', 'integer', 'Column loan_pro_sandbox._next_autopay_view.process_current should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'process_current', 'Column loan_pro_sandbox._next_autopay_view.process_current should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'process_current', 'Column loan_pro_sandbox._next_autopay_view.process_current should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'charge_service_fee', 'Column loan_pro_sandbox._next_autopay_view.charge_service_fee should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'charge_service_fee', 'integer', 'Column loan_pro_sandbox._next_autopay_view.charge_service_fee should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'charge_service_fee', 'Column loan_pro_sandbox._next_autopay_view.charge_service_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'charge_service_fee', 'Column loan_pro_sandbox._next_autopay_view.charge_service_fee should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'retry_days', 'Column loan_pro_sandbox._next_autopay_view.retry_days should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'retry_days', 'integer', 'Column loan_pro_sandbox._next_autopay_view.retry_days should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'retry_days', 'Column loan_pro_sandbox._next_autopay_view.retry_days should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'retry_days', 'Column loan_pro_sandbox._next_autopay_view.retry_days should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'retry_count', 'Column loan_pro_sandbox._next_autopay_view.retry_count should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'retry_count', 'integer', 'Column loan_pro_sandbox._next_autopay_view.retry_count should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'retry_count', 'Column loan_pro_sandbox._next_autopay_view.retry_count should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'retry_count', 'Column loan_pro_sandbox._next_autopay_view.retry_count should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'post_payment_update_apply_date', 'Column loan_pro_sandbox._next_autopay_view.post_payment_update_apply_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'post_payment_update_apply_date', 'integer', 'Column loan_pro_sandbox._next_autopay_view.post_payment_update_apply_date should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'post_payment_update_apply_date', 'Column loan_pro_sandbox._next_autopay_view.post_payment_update_apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'post_payment_update_apply_date', 'Column loan_pro_sandbox._next_autopay_view.post_payment_update_apply_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'recurring_frequency', 'Column loan_pro_sandbox._next_autopay_view.recurring_frequency should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'recurring_frequency', 'character(100)', 'Column loan_pro_sandbox._next_autopay_view.recurring_frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'recurring_frequency', 'Column loan_pro_sandbox._next_autopay_view.recurring_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'recurring_frequency', 'Column loan_pro_sandbox._next_autopay_view.recurring_frequency should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'recurring_periods', 'Column loan_pro_sandbox._next_autopay_view.recurring_periods should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'recurring_periods', 'integer', 'Column loan_pro_sandbox._next_autopay_view.recurring_periods should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'recurring_periods', 'Column loan_pro_sandbox._next_autopay_view.recurring_periods should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'recurring_periods', 'Column loan_pro_sandbox._next_autopay_view.recurring_periods should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'recurring_date_option', 'Column loan_pro_sandbox._next_autopay_view.recurring_date_option should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'recurring_date_option', 'character(64)', 'Column loan_pro_sandbox._next_autopay_view.recurring_date_option should be type character(64)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'recurring_date_option', 'Column loan_pro_sandbox._next_autopay_view.recurring_date_option should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'recurring_date_option', 'Column loan_pro_sandbox._next_autopay_view.recurring_date_option should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'scheduling_type', 'Column loan_pro_sandbox._next_autopay_view.scheduling_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'scheduling_type', 'character(64)', 'Column loan_pro_sandbox._next_autopay_view.scheduling_type should be type character(64)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'scheduling_type', 'Column loan_pro_sandbox._next_autopay_view.scheduling_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'scheduling_type', 'Column loan_pro_sandbox._next_autopay_view.scheduling_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'last_dom_enabled', 'Column loan_pro_sandbox._next_autopay_view.last_dom_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'last_dom_enabled', 'integer', 'Column loan_pro_sandbox._next_autopay_view.last_dom_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'last_dom_enabled', 'Column loan_pro_sandbox._next_autopay_view.last_dom_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'last_dom_enabled', 'Column loan_pro_sandbox._next_autopay_view.last_dom_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'days_in_period', 'Column loan_pro_sandbox._next_autopay_view.days_in_period should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'days_in_period', 'character(100)', 'Column loan_pro_sandbox._next_autopay_view.days_in_period should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'days_in_period', 'Column loan_pro_sandbox._next_autopay_view.days_in_period should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'days_in_period', 'Column loan_pro_sandbox._next_autopay_view.days_in_period should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'payment_extra_towards', 'Column loan_pro_sandbox._next_autopay_view.payment_extra_towards should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'payment_extra_towards', 'character(100)', 'Column loan_pro_sandbox._next_autopay_view.payment_extra_towards should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'payment_extra_towards', 'Column loan_pro_sandbox._next_autopay_view.payment_extra_towards should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'payment_extra_towards', 'Column loan_pro_sandbox._next_autopay_view.payment_extra_towards should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'payment_fee', 'Column loan_pro_sandbox._next_autopay_view.payment_fee should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'payment_fee', 'numeric(6,2)', 'Column loan_pro_sandbox._next_autopay_view.payment_fee should be type numeric(6,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'payment_fee', 'Column loan_pro_sandbox._next_autopay_view.payment_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'payment_fee', 'Column loan_pro_sandbox._next_autopay_view.payment_fee should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'primary_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.primary_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'primary_payment_method_id', 'integer', 'Column loan_pro_sandbox._next_autopay_view.primary_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'primary_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.primary_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'primary_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.primary_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'secondary_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.secondary_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'secondary_payment_method_id', 'integer', 'Column loan_pro_sandbox._next_autopay_view.secondary_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'secondary_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.secondary_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'secondary_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.secondary_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'additional_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.additional_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'additional_payment_method_id', 'integer', 'Column loan_pro_sandbox._next_autopay_view.additional_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'additional_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.additional_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'additional_payment_method_id', 'Column loan_pro_sandbox._next_autopay_view.additional_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'payment_method_auth_type', 'Column loan_pro_sandbox._next_autopay_view.payment_method_auth_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'payment_method_auth_type', 'character(100)', 'Column loan_pro_sandbox._next_autopay_view.payment_method_auth_type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'payment_method_auth_type', 'Column loan_pro_sandbox._next_autopay_view.payment_method_auth_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'payment_method_auth_type', 'Column loan_pro_sandbox._next_autopay_view.payment_method_auth_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'payoff_adjustment', 'Column loan_pro_sandbox._next_autopay_view.payoff_adjustment should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'payoff_adjustment', 'integer', 'Column loan_pro_sandbox._next_autopay_view.payoff_adjustment should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'payoff_adjustment', 'Column loan_pro_sandbox._next_autopay_view.payoff_adjustment should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'payoff_adjustment', 'Column loan_pro_sandbox._next_autopay_view.payoff_adjustment should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'process_zero_or_negative_balance', 'Column loan_pro_sandbox._next_autopay_view.process_zero_or_negative_balance should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'process_zero_or_negative_balance', 'integer', 'Column loan_pro_sandbox._next_autopay_view.process_zero_or_negative_balance should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'process_zero_or_negative_balance', 'Column loan_pro_sandbox._next_autopay_view.process_zero_or_negative_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'process_zero_or_negative_balance', 'Column loan_pro_sandbox._next_autopay_view.process_zero_or_negative_balance should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'charge_off_recovery', 'Column loan_pro_sandbox._next_autopay_view.charge_off_recovery should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'charge_off_recovery', 'integer', 'Column loan_pro_sandbox._next_autopay_view.charge_off_recovery should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'charge_off_recovery', 'Column loan_pro_sandbox._next_autopay_view.charge_off_recovery should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'charge_off_recovery', 'Column loan_pro_sandbox._next_autopay_view.charge_off_recovery should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'mc_processor', 'Column loan_pro_sandbox._next_autopay_view.mc_processor should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'mc_processor', 'text', 'Column loan_pro_sandbox._next_autopay_view.mc_processor should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'mc_processor', 'Column loan_pro_sandbox._next_autopay_view.mc_processor should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'mc_processor', 'Column loan_pro_sandbox._next_autopay_view.mc_processor should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'cc_processor', 'Column loan_pro_sandbox._next_autopay_view.cc_processor should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'cc_processor', 'integer', 'Column loan_pro_sandbox._next_autopay_view.cc_processor should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'cc_processor', 'Column loan_pro_sandbox._next_autopay_view.cc_processor should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'cc_processor', 'Column loan_pro_sandbox._next_autopay_view.cc_processor should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'ba_processor', 'Column loan_pro_sandbox._next_autopay_view.ba_processor should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'ba_processor', 'integer', 'Column loan_pro_sandbox._next_autopay_view.ba_processor should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'ba_processor', 'Column loan_pro_sandbox._next_autopay_view.ba_processor should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'ba_processor', 'Column loan_pro_sandbox._next_autopay_view.ba_processor should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'deleted', 'Column loan_pro_sandbox._next_autopay_view.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'deleted', 'integer', 'Column loan_pro_sandbox._next_autopay_view.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'deleted', 'Column loan_pro_sandbox._next_autopay_view.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'deleted', 'Column loan_pro_sandbox._next_autopay_view.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'created', 'Column loan_pro_sandbox._next_autopay_view.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'created', 'text', 'Column loan_pro_sandbox._next_autopay_view.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'created', 'Column loan_pro_sandbox._next_autopay_view.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'created', 'Column loan_pro_sandbox._next_autopay_view.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'last_updated', 'Column loan_pro_sandbox._next_autopay_view.last_updated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'last_updated', 'text', 'Column loan_pro_sandbox._next_autopay_view.last_updated should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'last_updated', 'Column loan_pro_sandbox._next_autopay_view.last_updated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'last_updated', 'Column loan_pro_sandbox._next_autopay_view.last_updated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'active', 'Column loan_pro_sandbox._next_autopay_view.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'active', 'integer', 'Column loan_pro_sandbox._next_autopay_view.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'active', 'Column loan_pro_sandbox._next_autopay_view.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'active', 'Column loan_pro_sandbox._next_autopay_view.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_next_autopay_view', 'queued', 'Column loan_pro_sandbox._next_autopay_view.queued should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_next_autopay_view', 'queued', 'integer', 'Column loan_pro_sandbox._next_autopay_view.queued should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_next_autopay_view', 'queued', 'Column loan_pro_sandbox._next_autopay_view.queued should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_next_autopay_view', 'queued', 'Column loan_pro_sandbox._next_autopay_view.queued should not  have a default');

SELECT * FROM finish();
ROLLBACK;
