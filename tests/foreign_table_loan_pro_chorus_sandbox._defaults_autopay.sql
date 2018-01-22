SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(79);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_defaults_autopay',
    'Should have foreign table loan_pro_chorus_sandbox._defaults_autopay'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_defaults_autopay',
    'Table loan_pro_chorus_sandbox._defaults_autopay should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_defaults_autopay'::name, ARRAY[
    'id'::name,
    'autopay_type'::name,
    'autopay_time'::name,
    'application_date_diff'::name,
    'application_date_diff_in_bank_days'::name,
    'post_payment_update_apply_date'::name,
    'process_current'::name,
    'retry_days'::name,
    'charge_service_fee'::name,
    'payment_type_id'::name,
    'payment_method_auth_type'::name,
    'pay_extra_towards_tx'::name,
    'pay_extra_towards_periods'::name,
    'payoff_adjustment'::name,
    'process_zero_or_negative_balance'::name,
    'recurring_date_option'::name,
    'scheduling_type'::name,
    'deleted'::name,
    'last_modified'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'id', 'Column loan_pro_chorus_sandbox._defaults_autopay.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'id', 'character(100)', 'Column loan_pro_chorus_sandbox._defaults_autopay.id should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'id', 'Column loan_pro_chorus_sandbox._defaults_autopay.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'id', 'Column loan_pro_chorus_sandbox._defaults_autopay.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'autopay_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.autopay_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'autopay_type', 'character(100)', 'Column loan_pro_chorus_sandbox._defaults_autopay.autopay_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'autopay_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.autopay_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'autopay_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.autopay_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'autopay_time', 'Column loan_pro_chorus_sandbox._defaults_autopay.autopay_time should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'autopay_time', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.autopay_time should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'autopay_time', 'Column loan_pro_chorus_sandbox._defaults_autopay.autopay_time should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'autopay_time', 'Column loan_pro_chorus_sandbox._defaults_autopay.autopay_time should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'application_date_diff', 'Column loan_pro_chorus_sandbox._defaults_autopay.application_date_diff should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'application_date_diff', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.application_date_diff should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'application_date_diff', 'Column loan_pro_chorus_sandbox._defaults_autopay.application_date_diff should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'application_date_diff', 'Column loan_pro_chorus_sandbox._defaults_autopay.application_date_diff should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'application_date_diff_in_bank_days', 'Column loan_pro_chorus_sandbox._defaults_autopay.application_date_diff_in_bank_days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'application_date_diff_in_bank_days', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.application_date_diff_in_bank_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'application_date_diff_in_bank_days', 'Column loan_pro_chorus_sandbox._defaults_autopay.application_date_diff_in_bank_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'application_date_diff_in_bank_days', 'Column loan_pro_chorus_sandbox._defaults_autopay.application_date_diff_in_bank_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'post_payment_update_apply_date', 'Column loan_pro_chorus_sandbox._defaults_autopay.post_payment_update_apply_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'post_payment_update_apply_date', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.post_payment_update_apply_date should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'post_payment_update_apply_date', 'Column loan_pro_chorus_sandbox._defaults_autopay.post_payment_update_apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'post_payment_update_apply_date', 'Column loan_pro_chorus_sandbox._defaults_autopay.post_payment_update_apply_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'process_current', 'Column loan_pro_chorus_sandbox._defaults_autopay.process_current should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'process_current', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.process_current should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'process_current', 'Column loan_pro_chorus_sandbox._defaults_autopay.process_current should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'process_current', 'Column loan_pro_chorus_sandbox._defaults_autopay.process_current should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'retry_days', 'Column loan_pro_chorus_sandbox._defaults_autopay.retry_days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'retry_days', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.retry_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'retry_days', 'Column loan_pro_chorus_sandbox._defaults_autopay.retry_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'retry_days', 'Column loan_pro_chorus_sandbox._defaults_autopay.retry_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'charge_service_fee', 'Column loan_pro_chorus_sandbox._defaults_autopay.charge_service_fee should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'charge_service_fee', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.charge_service_fee should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'charge_service_fee', 'Column loan_pro_chorus_sandbox._defaults_autopay.charge_service_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'charge_service_fee', 'Column loan_pro_chorus_sandbox._defaults_autopay.charge_service_fee should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'payment_type_id', 'Column loan_pro_chorus_sandbox._defaults_autopay.payment_type_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'payment_type_id', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.payment_type_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'payment_type_id', 'Column loan_pro_chorus_sandbox._defaults_autopay.payment_type_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'payment_type_id', 'Column loan_pro_chorus_sandbox._defaults_autopay.payment_type_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'payment_method_auth_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.payment_method_auth_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'payment_method_auth_type', 'character(64)', 'Column loan_pro_chorus_sandbox._defaults_autopay.payment_method_auth_type should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'payment_method_auth_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.payment_method_auth_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'payment_method_auth_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.payment_method_auth_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'pay_extra_towards_tx', 'Column loan_pro_chorus_sandbox._defaults_autopay.pay_extra_towards_tx should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'pay_extra_towards_tx', 'character(64)', 'Column loan_pro_chorus_sandbox._defaults_autopay.pay_extra_towards_tx should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'pay_extra_towards_tx', 'Column loan_pro_chorus_sandbox._defaults_autopay.pay_extra_towards_tx should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'pay_extra_towards_tx', 'Column loan_pro_chorus_sandbox._defaults_autopay.pay_extra_towards_tx should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'pay_extra_towards_periods', 'Column loan_pro_chorus_sandbox._defaults_autopay.pay_extra_towards_periods should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'pay_extra_towards_periods', 'character(64)', 'Column loan_pro_chorus_sandbox._defaults_autopay.pay_extra_towards_periods should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'pay_extra_towards_periods', 'Column loan_pro_chorus_sandbox._defaults_autopay.pay_extra_towards_periods should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'pay_extra_towards_periods', 'Column loan_pro_chorus_sandbox._defaults_autopay.pay_extra_towards_periods should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'payoff_adjustment', 'Column loan_pro_chorus_sandbox._defaults_autopay.payoff_adjustment should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'payoff_adjustment', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.payoff_adjustment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'payoff_adjustment', 'Column loan_pro_chorus_sandbox._defaults_autopay.payoff_adjustment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'payoff_adjustment', 'Column loan_pro_chorus_sandbox._defaults_autopay.payoff_adjustment should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'process_zero_or_negative_balance', 'Column loan_pro_chorus_sandbox._defaults_autopay.process_zero_or_negative_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'process_zero_or_negative_balance', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.process_zero_or_negative_balance should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'process_zero_or_negative_balance', 'Column loan_pro_chorus_sandbox._defaults_autopay.process_zero_or_negative_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'process_zero_or_negative_balance', 'Column loan_pro_chorus_sandbox._defaults_autopay.process_zero_or_negative_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'recurring_date_option', 'Column loan_pro_chorus_sandbox._defaults_autopay.recurring_date_option should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'recurring_date_option', 'character(64)', 'Column loan_pro_chorus_sandbox._defaults_autopay.recurring_date_option should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'recurring_date_option', 'Column loan_pro_chorus_sandbox._defaults_autopay.recurring_date_option should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'recurring_date_option', 'Column loan_pro_chorus_sandbox._defaults_autopay.recurring_date_option should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'scheduling_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.scheduling_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'scheduling_type', 'character(64)', 'Column loan_pro_chorus_sandbox._defaults_autopay.scheduling_type should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'scheduling_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.scheduling_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'scheduling_type', 'Column loan_pro_chorus_sandbox._defaults_autopay.scheduling_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'deleted', 'Column loan_pro_chorus_sandbox._defaults_autopay.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._defaults_autopay.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'deleted', 'Column loan_pro_chorus_sandbox._defaults_autopay.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'deleted', 'Column loan_pro_chorus_sandbox._defaults_autopay.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_defaults_autopay', 'last_modified', 'Column loan_pro_chorus_sandbox._defaults_autopay.last_modified should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'last_modified', 'text', 'Column loan_pro_chorus_sandbox._defaults_autopay.last_modified should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_defaults_autopay', 'last_modified', 'Column loan_pro_chorus_sandbox._defaults_autopay.last_modified should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_defaults_autopay', 'last_modified', 'Column loan_pro_chorus_sandbox._defaults_autopay.last_modified should not  have a default');

SELECT * FROM finish();
ROLLBACK;
