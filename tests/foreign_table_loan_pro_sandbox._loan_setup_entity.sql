SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(307);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_setup_entity',
    'Should have foreign table loan_pro_sandbox._loan_setup_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_setup_entity',
    'Table loan_pro_sandbox._loan_setup_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_setup_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'mod_id'::name,
    'active'::name,
    'til_finance_charge'::name,
    'til_total_of_payments'::name,
    'til_loan_amount'::name,
    'til_sales_price'::name,
    'til_payment_schedule'::name,
    'regz_custom_enabled'::name,
    'regz_apr'::name,
    'regz_finance_charge'::name,
    'regz_amount_financed'::name,
    'regz_total_of_payments'::name,
    'apr'::name,
    'apr_force_single_freq'::name,
    'payment'::name,
    'orig_final_payment_date'::name,
    'orig_final_payment_amount'::name,
    'loan_amount'::name,
    'discount'::name,
    'underwriting'::name,
    'money_factor'::name,
    'residual'::name,
    'loan_rate'::name,
    'loan_rate_type'::name,
    'loan_term'::name,
    'schedule_round'::name,
    'contract_date'::name,
    'first_payment_date'::name,
    'due_date_on_last_dom'::name,
    'due_dates_on_business_days'::name,
    'amount_down'::name,
    'reserve'::name,
    'sales_price'::name,
    'gap'::name,
    'warranty'::name,
    'dealer_profit'::name,
    'taxes'::name,
    'credit_limit'::name,
    'reporting_credit_limit'::name,
    'loan_class'::name,
    'loan_type'::name,
    'discount_split'::name,
    'payment_frequency'::name,
    'calc_type'::name,
    'days_in_year'::name,
    'interest_application'::name,
    'beg_end'::name,
    'first_period_days'::name,
    'first_day_interest'::name,
    'discount_calc'::name,
    'diy_alt'::name,
    'days_in_period'::name,
    'round_decimals'::name,
    'last_as_final'::name,
    'ndd_calc'::name,
    'end_interest'::name,
    'fixed_term_pmt'::name,
    'calc_history_enabled'::name,
    'calc_dates_enabled'::name,
    'schedule_template'::name,
    'curtailment_template'::name,
    'fees_paid_by'::name,
    'use_interest_tiers'::name,
    'grace_days'::name,
    'late_fee_type'::name,
    'late_fee_amount'::name,
    'late_fee_percent'::name,
    'late_fee_calc'::name,
    'latefee_percent_base'::name,
    'roll_last_payment'::name,
    'payment_date_app'::name,
    'suspend_fc_to'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'id', 'Column loan_pro_sandbox._loan_setup_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'id', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'id', 'Column loan_pro_sandbox._loan_setup_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'id', 'Column loan_pro_sandbox._loan_setup_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'loan_id', 'Column loan_pro_sandbox._loan_setup_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_id', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_id', 'Column loan_pro_sandbox._loan_setup_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'loan_id', 'Column loan_pro_sandbox._loan_setup_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'mod_id', 'Column loan_pro_sandbox._loan_setup_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'mod_id', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'mod_id', 'Column loan_pro_sandbox._loan_setup_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'mod_id', 'Column loan_pro_sandbox._loan_setup_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'active', 'Column loan_pro_sandbox._loan_setup_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'active', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'active', 'Column loan_pro_sandbox._loan_setup_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'active', 'Column loan_pro_sandbox._loan_setup_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'til_finance_charge', 'Column loan_pro_sandbox._loan_setup_entity.til_finance_charge should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'til_finance_charge', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.til_finance_charge should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'til_finance_charge', 'Column loan_pro_sandbox._loan_setup_entity.til_finance_charge should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'til_finance_charge', 'Column loan_pro_sandbox._loan_setup_entity.til_finance_charge should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'til_total_of_payments', 'Column loan_pro_sandbox._loan_setup_entity.til_total_of_payments should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'til_total_of_payments', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.til_total_of_payments should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'til_total_of_payments', 'Column loan_pro_sandbox._loan_setup_entity.til_total_of_payments should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'til_total_of_payments', 'Column loan_pro_sandbox._loan_setup_entity.til_total_of_payments should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'til_loan_amount', 'Column loan_pro_sandbox._loan_setup_entity.til_loan_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'til_loan_amount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.til_loan_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'til_loan_amount', 'Column loan_pro_sandbox._loan_setup_entity.til_loan_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'til_loan_amount', 'Column loan_pro_sandbox._loan_setup_entity.til_loan_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'til_sales_price', 'Column loan_pro_sandbox._loan_setup_entity.til_sales_price should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'til_sales_price', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.til_sales_price should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'til_sales_price', 'Column loan_pro_sandbox._loan_setup_entity.til_sales_price should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'til_sales_price', 'Column loan_pro_sandbox._loan_setup_entity.til_sales_price should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'til_payment_schedule', 'Column loan_pro_sandbox._loan_setup_entity.til_payment_schedule should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'til_payment_schedule', 'text', 'Column loan_pro_sandbox._loan_setup_entity.til_payment_schedule should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'til_payment_schedule', 'Column loan_pro_sandbox._loan_setup_entity.til_payment_schedule should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'til_payment_schedule', 'Column loan_pro_sandbox._loan_setup_entity.til_payment_schedule should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'regz_custom_enabled', 'Column loan_pro_sandbox._loan_setup_entity.regz_custom_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_custom_enabled', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.regz_custom_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_custom_enabled', 'Column loan_pro_sandbox._loan_setup_entity.regz_custom_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'regz_custom_enabled', 'Column loan_pro_sandbox._loan_setup_entity.regz_custom_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'regz_apr', 'Column loan_pro_sandbox._loan_setup_entity.regz_apr should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_apr', 'numeric(11,4)', 'Column loan_pro_sandbox._loan_setup_entity.regz_apr should be type numeric(11,4)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_apr', 'Column loan_pro_sandbox._loan_setup_entity.regz_apr should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'regz_apr', 'Column loan_pro_sandbox._loan_setup_entity.regz_apr should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'regz_finance_charge', 'Column loan_pro_sandbox._loan_setup_entity.regz_finance_charge should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_finance_charge', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.regz_finance_charge should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_finance_charge', 'Column loan_pro_sandbox._loan_setup_entity.regz_finance_charge should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'regz_finance_charge', 'Column loan_pro_sandbox._loan_setup_entity.regz_finance_charge should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'regz_amount_financed', 'Column loan_pro_sandbox._loan_setup_entity.regz_amount_financed should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_amount_financed', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.regz_amount_financed should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_amount_financed', 'Column loan_pro_sandbox._loan_setup_entity.regz_amount_financed should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'regz_amount_financed', 'Column loan_pro_sandbox._loan_setup_entity.regz_amount_financed should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'regz_total_of_payments', 'Column loan_pro_sandbox._loan_setup_entity.regz_total_of_payments should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_total_of_payments', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.regz_total_of_payments should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'regz_total_of_payments', 'Column loan_pro_sandbox._loan_setup_entity.regz_total_of_payments should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'regz_total_of_payments', 'Column loan_pro_sandbox._loan_setup_entity.regz_total_of_payments should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'apr', 'Column loan_pro_sandbox._loan_setup_entity.apr should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'apr', 'numeric(11,4)', 'Column loan_pro_sandbox._loan_setup_entity.apr should be type numeric(11,4)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'apr', 'Column loan_pro_sandbox._loan_setup_entity.apr should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'apr', 'Column loan_pro_sandbox._loan_setup_entity.apr should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'apr_force_single_freq', 'Column loan_pro_sandbox._loan_setup_entity.apr_force_single_freq should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'apr_force_single_freq', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.apr_force_single_freq should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'apr_force_single_freq', 'Column loan_pro_sandbox._loan_setup_entity.apr_force_single_freq should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'apr_force_single_freq', 'Column loan_pro_sandbox._loan_setup_entity.apr_force_single_freq should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'payment', 'Column loan_pro_sandbox._loan_setup_entity.payment should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'payment', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.payment should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'payment', 'Column loan_pro_sandbox._loan_setup_entity.payment should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'payment', 'Column loan_pro_sandbox._loan_setup_entity.payment should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'orig_final_payment_date', 'Column loan_pro_sandbox._loan_setup_entity.orig_final_payment_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'orig_final_payment_date', 'text', 'Column loan_pro_sandbox._loan_setup_entity.orig_final_payment_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'orig_final_payment_date', 'Column loan_pro_sandbox._loan_setup_entity.orig_final_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'orig_final_payment_date', 'Column loan_pro_sandbox._loan_setup_entity.orig_final_payment_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'orig_final_payment_amount', 'Column loan_pro_sandbox._loan_setup_entity.orig_final_payment_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'orig_final_payment_amount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.orig_final_payment_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'orig_final_payment_amount', 'Column loan_pro_sandbox._loan_setup_entity.orig_final_payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'orig_final_payment_amount', 'Column loan_pro_sandbox._loan_setup_entity.orig_final_payment_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'loan_amount', 'Column loan_pro_sandbox._loan_setup_entity.loan_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_amount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.loan_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_amount', 'Column loan_pro_sandbox._loan_setup_entity.loan_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'loan_amount', 'Column loan_pro_sandbox._loan_setup_entity.loan_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'discount', 'Column loan_pro_sandbox._loan_setup_entity.discount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'discount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.discount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'discount', 'Column loan_pro_sandbox._loan_setup_entity.discount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'discount', 'Column loan_pro_sandbox._loan_setup_entity.discount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'underwriting', 'Column loan_pro_sandbox._loan_setup_entity.underwriting should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'underwriting', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.underwriting should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'underwriting', 'Column loan_pro_sandbox._loan_setup_entity.underwriting should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'underwriting', 'Column loan_pro_sandbox._loan_setup_entity.underwriting should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'money_factor', 'Column loan_pro_sandbox._loan_setup_entity.money_factor should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'money_factor', 'character(20)', 'Column loan_pro_sandbox._loan_setup_entity.money_factor should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'money_factor', 'Column loan_pro_sandbox._loan_setup_entity.money_factor should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'money_factor', 'Column loan_pro_sandbox._loan_setup_entity.money_factor should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'residual', 'Column loan_pro_sandbox._loan_setup_entity.residual should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'residual', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.residual should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'residual', 'Column loan_pro_sandbox._loan_setup_entity.residual should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'residual', 'Column loan_pro_sandbox._loan_setup_entity.residual should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'loan_rate', 'Column loan_pro_sandbox._loan_setup_entity.loan_rate should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_rate', 'numeric(11,4)', 'Column loan_pro_sandbox._loan_setup_entity.loan_rate should be type numeric(11,4)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_rate', 'Column loan_pro_sandbox._loan_setup_entity.loan_rate should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'loan_rate', 'Column loan_pro_sandbox._loan_setup_entity.loan_rate should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'loan_rate_type', 'Column loan_pro_sandbox._loan_setup_entity.loan_rate_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_rate_type', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.loan_rate_type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_rate_type', 'Column loan_pro_sandbox._loan_setup_entity.loan_rate_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'loan_rate_type', 'Column loan_pro_sandbox._loan_setup_entity.loan_rate_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'loan_term', 'Column loan_pro_sandbox._loan_setup_entity.loan_term should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_term', 'numeric(11,4)', 'Column loan_pro_sandbox._loan_setup_entity.loan_term should be type numeric(11,4)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_term', 'Column loan_pro_sandbox._loan_setup_entity.loan_term should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'loan_term', 'Column loan_pro_sandbox._loan_setup_entity.loan_term should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'schedule_round', 'Column loan_pro_sandbox._loan_setup_entity.schedule_round should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'schedule_round', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.schedule_round should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'schedule_round', 'Column loan_pro_sandbox._loan_setup_entity.schedule_round should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'schedule_round', 'Column loan_pro_sandbox._loan_setup_entity.schedule_round should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'contract_date', 'Column loan_pro_sandbox._loan_setup_entity.contract_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'contract_date', 'text', 'Column loan_pro_sandbox._loan_setup_entity.contract_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'contract_date', 'Column loan_pro_sandbox._loan_setup_entity.contract_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'contract_date', 'Column loan_pro_sandbox._loan_setup_entity.contract_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'first_payment_date', 'Column loan_pro_sandbox._loan_setup_entity.first_payment_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'first_payment_date', 'text', 'Column loan_pro_sandbox._loan_setup_entity.first_payment_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'first_payment_date', 'Column loan_pro_sandbox._loan_setup_entity.first_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'first_payment_date', 'Column loan_pro_sandbox._loan_setup_entity.first_payment_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'due_date_on_last_dom', 'Column loan_pro_sandbox._loan_setup_entity.due_date_on_last_dom should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'due_date_on_last_dom', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.due_date_on_last_dom should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'due_date_on_last_dom', 'Column loan_pro_sandbox._loan_setup_entity.due_date_on_last_dom should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'due_date_on_last_dom', 'Column loan_pro_sandbox._loan_setup_entity.due_date_on_last_dom should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'due_dates_on_business_days', 'Column loan_pro_sandbox._loan_setup_entity.due_dates_on_business_days should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'due_dates_on_business_days', 'character varying(40)', 'Column loan_pro_sandbox._loan_setup_entity.due_dates_on_business_days should be type character varying(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'due_dates_on_business_days', 'Column loan_pro_sandbox._loan_setup_entity.due_dates_on_business_days should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'due_dates_on_business_days', 'Column loan_pro_sandbox._loan_setup_entity.due_dates_on_business_days should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'amount_down', 'Column loan_pro_sandbox._loan_setup_entity.amount_down should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'amount_down', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.amount_down should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'amount_down', 'Column loan_pro_sandbox._loan_setup_entity.amount_down should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'amount_down', 'Column loan_pro_sandbox._loan_setup_entity.amount_down should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'reserve', 'Column loan_pro_sandbox._loan_setup_entity.reserve should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'reserve', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.reserve should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'reserve', 'Column loan_pro_sandbox._loan_setup_entity.reserve should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'reserve', 'Column loan_pro_sandbox._loan_setup_entity.reserve should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'sales_price', 'Column loan_pro_sandbox._loan_setup_entity.sales_price should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'sales_price', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.sales_price should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'sales_price', 'Column loan_pro_sandbox._loan_setup_entity.sales_price should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'sales_price', 'Column loan_pro_sandbox._loan_setup_entity.sales_price should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'gap', 'Column loan_pro_sandbox._loan_setup_entity.gap should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'gap', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.gap should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'gap', 'Column loan_pro_sandbox._loan_setup_entity.gap should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'gap', 'Column loan_pro_sandbox._loan_setup_entity.gap should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'warranty', 'Column loan_pro_sandbox._loan_setup_entity.warranty should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'warranty', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.warranty should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'warranty', 'Column loan_pro_sandbox._loan_setup_entity.warranty should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'warranty', 'Column loan_pro_sandbox._loan_setup_entity.warranty should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'dealer_profit', 'Column loan_pro_sandbox._loan_setup_entity.dealer_profit should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'dealer_profit', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.dealer_profit should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'dealer_profit', 'Column loan_pro_sandbox._loan_setup_entity.dealer_profit should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'dealer_profit', 'Column loan_pro_sandbox._loan_setup_entity.dealer_profit should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'taxes', 'Column loan_pro_sandbox._loan_setup_entity.taxes should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'taxes', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.taxes should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'taxes', 'Column loan_pro_sandbox._loan_setup_entity.taxes should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'taxes', 'Column loan_pro_sandbox._loan_setup_entity.taxes should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'credit_limit', 'Column loan_pro_sandbox._loan_setup_entity.credit_limit should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'credit_limit', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.credit_limit should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'credit_limit', 'Column loan_pro_sandbox._loan_setup_entity.credit_limit should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'credit_limit', 'Column loan_pro_sandbox._loan_setup_entity.credit_limit should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'reporting_credit_limit', 'Column loan_pro_sandbox._loan_setup_entity.reporting_credit_limit should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'reporting_credit_limit', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.reporting_credit_limit should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'reporting_credit_limit', 'Column loan_pro_sandbox._loan_setup_entity.reporting_credit_limit should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'reporting_credit_limit', 'Column loan_pro_sandbox._loan_setup_entity.reporting_credit_limit should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'loan_class', 'Column loan_pro_sandbox._loan_setup_entity.loan_class should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_class', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.loan_class should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_class', 'Column loan_pro_sandbox._loan_setup_entity.loan_class should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'loan_class', 'Column loan_pro_sandbox._loan_setup_entity.loan_class should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'loan_type', 'Column loan_pro_sandbox._loan_setup_entity.loan_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_type', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.loan_type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'loan_type', 'Column loan_pro_sandbox._loan_setup_entity.loan_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'loan_type', 'Column loan_pro_sandbox._loan_setup_entity.loan_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'discount_split', 'Column loan_pro_sandbox._loan_setup_entity.discount_split should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'discount_split', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.discount_split should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'discount_split', 'Column loan_pro_sandbox._loan_setup_entity.discount_split should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'discount_split', 'Column loan_pro_sandbox._loan_setup_entity.discount_split should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'payment_frequency', 'Column loan_pro_sandbox._loan_setup_entity.payment_frequency should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'payment_frequency', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.payment_frequency should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'payment_frequency', 'Column loan_pro_sandbox._loan_setup_entity.payment_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'payment_frequency', 'Column loan_pro_sandbox._loan_setup_entity.payment_frequency should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'calc_type', 'Column loan_pro_sandbox._loan_setup_entity.calc_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'calc_type', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.calc_type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'calc_type', 'Column loan_pro_sandbox._loan_setup_entity.calc_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'calc_type', 'Column loan_pro_sandbox._loan_setup_entity.calc_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'days_in_year', 'Column loan_pro_sandbox._loan_setup_entity.days_in_year should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'days_in_year', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.days_in_year should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'days_in_year', 'Column loan_pro_sandbox._loan_setup_entity.days_in_year should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'days_in_year', 'Column loan_pro_sandbox._loan_setup_entity.days_in_year should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'interest_application', 'Column loan_pro_sandbox._loan_setup_entity.interest_application should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'interest_application', 'character(50)', 'Column loan_pro_sandbox._loan_setup_entity.interest_application should be type character(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'interest_application', 'Column loan_pro_sandbox._loan_setup_entity.interest_application should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'interest_application', 'Column loan_pro_sandbox._loan_setup_entity.interest_application should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'beg_end', 'Column loan_pro_sandbox._loan_setup_entity.beg_end should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'beg_end', 'character(20)', 'Column loan_pro_sandbox._loan_setup_entity.beg_end should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'beg_end', 'Column loan_pro_sandbox._loan_setup_entity.beg_end should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'beg_end', 'Column loan_pro_sandbox._loan_setup_entity.beg_end should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'first_period_days', 'Column loan_pro_sandbox._loan_setup_entity.first_period_days should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'first_period_days', 'character(40)', 'Column loan_pro_sandbox._loan_setup_entity.first_period_days should be type character(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'first_period_days', 'Column loan_pro_sandbox._loan_setup_entity.first_period_days should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'first_period_days', 'Column loan_pro_sandbox._loan_setup_entity.first_period_days should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'first_day_interest', 'Column loan_pro_sandbox._loan_setup_entity.first_day_interest should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'first_day_interest', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.first_day_interest should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'first_day_interest', 'Column loan_pro_sandbox._loan_setup_entity.first_day_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'first_day_interest', 'Column loan_pro_sandbox._loan_setup_entity.first_day_interest should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'discount_calc', 'Column loan_pro_sandbox._loan_setup_entity.discount_calc should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'discount_calc', 'character(40)', 'Column loan_pro_sandbox._loan_setup_entity.discount_calc should be type character(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'discount_calc', 'Column loan_pro_sandbox._loan_setup_entity.discount_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'discount_calc', 'Column loan_pro_sandbox._loan_setup_entity.discount_calc should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'diy_alt', 'Column loan_pro_sandbox._loan_setup_entity.diy_alt should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'diy_alt', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.diy_alt should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'diy_alt', 'Column loan_pro_sandbox._loan_setup_entity.diy_alt should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'diy_alt', 'Column loan_pro_sandbox._loan_setup_entity.diy_alt should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'days_in_period', 'Column loan_pro_sandbox._loan_setup_entity.days_in_period should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'days_in_period', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.days_in_period should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'days_in_period', 'Column loan_pro_sandbox._loan_setup_entity.days_in_period should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'days_in_period', 'Column loan_pro_sandbox._loan_setup_entity.days_in_period should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'round_decimals', 'Column loan_pro_sandbox._loan_setup_entity.round_decimals should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'round_decimals', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.round_decimals should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'round_decimals', 'Column loan_pro_sandbox._loan_setup_entity.round_decimals should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'round_decimals', 'Column loan_pro_sandbox._loan_setup_entity.round_decimals should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'last_as_final', 'Column loan_pro_sandbox._loan_setup_entity.last_as_final should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'last_as_final', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.last_as_final should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'last_as_final', 'Column loan_pro_sandbox._loan_setup_entity.last_as_final should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'last_as_final', 'Column loan_pro_sandbox._loan_setup_entity.last_as_final should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'ndd_calc', 'Column loan_pro_sandbox._loan_setup_entity.ndd_calc should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'ndd_calc', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.ndd_calc should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'ndd_calc', 'Column loan_pro_sandbox._loan_setup_entity.ndd_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'ndd_calc', 'Column loan_pro_sandbox._loan_setup_entity.ndd_calc should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'end_interest', 'Column loan_pro_sandbox._loan_setup_entity.end_interest should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'end_interest', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.end_interest should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'end_interest', 'Column loan_pro_sandbox._loan_setup_entity.end_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'end_interest', 'Column loan_pro_sandbox._loan_setup_entity.end_interest should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'fixed_term_pmt', 'Column loan_pro_sandbox._loan_setup_entity.fixed_term_pmt should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'fixed_term_pmt', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.fixed_term_pmt should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'fixed_term_pmt', 'Column loan_pro_sandbox._loan_setup_entity.fixed_term_pmt should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'fixed_term_pmt', 'Column loan_pro_sandbox._loan_setup_entity.fixed_term_pmt should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'calc_history_enabled', 'Column loan_pro_sandbox._loan_setup_entity.calc_history_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'calc_history_enabled', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.calc_history_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'calc_history_enabled', 'Column loan_pro_sandbox._loan_setup_entity.calc_history_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'calc_history_enabled', 'Column loan_pro_sandbox._loan_setup_entity.calc_history_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'calc_dates_enabled', 'Column loan_pro_sandbox._loan_setup_entity.calc_dates_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'calc_dates_enabled', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.calc_dates_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'calc_dates_enabled', 'Column loan_pro_sandbox._loan_setup_entity.calc_dates_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'calc_dates_enabled', 'Column loan_pro_sandbox._loan_setup_entity.calc_dates_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'schedule_template', 'Column loan_pro_sandbox._loan_setup_entity.schedule_template should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'schedule_template', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.schedule_template should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'schedule_template', 'Column loan_pro_sandbox._loan_setup_entity.schedule_template should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'schedule_template', 'Column loan_pro_sandbox._loan_setup_entity.schedule_template should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'curtailment_template', 'Column loan_pro_sandbox._loan_setup_entity.curtailment_template should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'curtailment_template', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.curtailment_template should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'curtailment_template', 'Column loan_pro_sandbox._loan_setup_entity.curtailment_template should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'curtailment_template', 'Column loan_pro_sandbox._loan_setup_entity.curtailment_template should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'fees_paid_by', 'Column loan_pro_sandbox._loan_setup_entity.fees_paid_by should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'fees_paid_by', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.fees_paid_by should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'fees_paid_by', 'Column loan_pro_sandbox._loan_setup_entity.fees_paid_by should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'fees_paid_by', 'Column loan_pro_sandbox._loan_setup_entity.fees_paid_by should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'use_interest_tiers', 'Column loan_pro_sandbox._loan_setup_entity.use_interest_tiers should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'use_interest_tiers', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.use_interest_tiers should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'use_interest_tiers', 'Column loan_pro_sandbox._loan_setup_entity.use_interest_tiers should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'use_interest_tiers', 'Column loan_pro_sandbox._loan_setup_entity.use_interest_tiers should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'grace_days', 'Column loan_pro_sandbox._loan_setup_entity.grace_days should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'grace_days', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.grace_days should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'grace_days', 'Column loan_pro_sandbox._loan_setup_entity.grace_days should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'grace_days', 'Column loan_pro_sandbox._loan_setup_entity.grace_days should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_type', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_type', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_type', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'late_fee_type', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_amount', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_amount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_amount', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'late_fee_amount', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_percent', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_percent should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_percent', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_percent', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_percent should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'late_fee_percent', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_percent should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_calc', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_calc should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_calc', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_calc should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'late_fee_calc', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'late_fee_calc', 'Column loan_pro_sandbox._loan_setup_entity.late_fee_calc should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'latefee_percent_base', 'Column loan_pro_sandbox._loan_setup_entity.latefee_percent_base should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'latefee_percent_base', 'character(40)', 'Column loan_pro_sandbox._loan_setup_entity.latefee_percent_base should be type character(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'latefee_percent_base', 'Column loan_pro_sandbox._loan_setup_entity.latefee_percent_base should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'latefee_percent_base', 'Column loan_pro_sandbox._loan_setup_entity.latefee_percent_base should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'roll_last_payment', 'Column loan_pro_sandbox._loan_setup_entity.roll_last_payment should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'roll_last_payment', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.roll_last_payment should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'roll_last_payment', 'Column loan_pro_sandbox._loan_setup_entity.roll_last_payment should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'roll_last_payment', 'Column loan_pro_sandbox._loan_setup_entity.roll_last_payment should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'payment_date_app', 'Column loan_pro_sandbox._loan_setup_entity.payment_date_app should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'payment_date_app', 'character(30)', 'Column loan_pro_sandbox._loan_setup_entity.payment_date_app should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'payment_date_app', 'Column loan_pro_sandbox._loan_setup_entity.payment_date_app should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'payment_date_app', 'Column loan_pro_sandbox._loan_setup_entity.payment_date_app should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'suspend_fc_to', 'Column loan_pro_sandbox._loan_setup_entity.suspend_fc_to should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'suspend_fc_to', 'text', 'Column loan_pro_sandbox._loan_setup_entity.suspend_fc_to should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'suspend_fc_to', 'Column loan_pro_sandbox._loan_setup_entity.suspend_fc_to should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'suspend_fc_to', 'Column loan_pro_sandbox._loan_setup_entity.suspend_fc_to should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'deleted', 'Column loan_pro_sandbox._loan_setup_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._loan_setup_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'deleted', 'Column loan_pro_sandbox._loan_setup_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'deleted', 'Column loan_pro_sandbox._loan_setup_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_setup_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_setup_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_setup_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._loan_setup_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_setup_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_setup_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_setup_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_setup_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
