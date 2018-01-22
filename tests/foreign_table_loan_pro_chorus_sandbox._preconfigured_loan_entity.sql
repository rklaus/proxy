SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(299);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_preconfigured_loan_entity',
    'Should have foreign table loan_pro_chorus_sandbox._preconfigured_loan_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_preconfigured_loan_entity',
    'Table loan_pro_chorus_sandbox._preconfigured_loan_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_preconfigured_loan_entity'::name, ARRAY[
    'id'::name,
    'settings_id'::name,
    'title'::name,
    'icon'::name,
    'loan_amount'::name,
    'discount'::name,
    'underwriting'::name,
    'loan_rate'::name,
    'loan_term'::name,
    'contract_date'::name,
    'first_payment_date'::name,
    'amount_down'::name,
    'reserve'::name,
    'sales_price'::name,
    'gap'::name,
    'warranty'::name,
    'dealer_profit'::name,
    'credit_limit'::name,
    'reporting_credit_limit'::name,
    'flooring_customer'::name,
    'loan_class'::name,
    'loan_type'::name,
    'grace_days'::name,
    'late_fee_type'::name,
    'late_fee_amount'::name,
    'late_fee_percent'::name,
    'late_fee_calc'::name,
    'card_fee_amount'::name,
    'card_fee_type'::name,
    'card_fee_percent'::name,
    'agent'::name,
    'source_company'::name,
    'loan_status'::name,
    'loan_sub_status'::name,
    'ebilling'::name,
    'ecoa_code'::name,
    'co_ecoa_code'::name,
    'portfolio'::name,
    'credit_status'::name,
    'credit_bureau'::name,
    'reporting_type'::name,
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
    'payment_date_app'::name,
    'days_in_period'::name,
    'round_decimals'::name,
    'last_as_final'::name,
    'ndd_calc'::name,
    'end_interest'::name,
    'fixed_term_pmt'::name,
    'prorate_first_pmt'::name,
    'latefee_percent_base'::name,
    'schedule_template'::name,
    'curtailment_template'::name,
    'fees_paid_by'::name,
    'use_interest_tiers'::name,
    'loan_rate_type'::name,
    'smooth_payments'::name,
    'apr_force_single_freq'::name,
    'due_date_on_last_dom'::name,
    'due_dates_on_business_days'::name,
    'autopay_enabled'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'id', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'id', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'id', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'settings_id', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.settings_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'settings_id', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.settings_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'settings_id', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.settings_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'settings_id', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.settings_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'title', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'title', 'text', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'title', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'title', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'icon', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.icon should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'icon', 'character(40)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.icon should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'icon', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.icon should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'icon', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.icon should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_amount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'underwriting', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.underwriting should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'underwriting', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.underwriting should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'underwriting', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.underwriting should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'underwriting', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.underwriting should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_rate', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_rate should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_rate', 'numeric(11,4)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_rate should be type numeric(11,4)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_rate', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_rate should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_rate', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_rate should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_term', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_term should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_term', 'numeric(11,4)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_term should be type numeric(11,4)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_term', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_term should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_term', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_term should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'contract_date', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.contract_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'contract_date', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.contract_date should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'contract_date', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.contract_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'contract_date', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.contract_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_payment_date', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_payment_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_payment_date', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_payment_date should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_payment_date', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_payment_date', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_payment_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'amount_down', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.amount_down should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'amount_down', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.amount_down should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'amount_down', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.amount_down should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'amount_down', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.amount_down should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reserve', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reserve should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reserve', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reserve should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reserve', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reserve should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reserve', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reserve should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'sales_price', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.sales_price should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'sales_price', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.sales_price should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'sales_price', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.sales_price should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'sales_price', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.sales_price should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'gap', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.gap should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'gap', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.gap should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'gap', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.gap should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'gap', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.gap should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'warranty', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.warranty should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'warranty', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.warranty should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'warranty', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.warranty should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'warranty', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.warranty should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'dealer_profit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.dealer_profit should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'dealer_profit', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.dealer_profit should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'dealer_profit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.dealer_profit should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'dealer_profit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.dealer_profit should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_limit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_limit should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_limit', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_limit should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_limit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_limit should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_limit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_limit should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reporting_credit_limit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reporting_credit_limit should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reporting_credit_limit', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reporting_credit_limit should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reporting_credit_limit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reporting_credit_limit should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reporting_credit_limit', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reporting_credit_limit should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'flooring_customer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.flooring_customer should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'flooring_customer', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.flooring_customer should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'flooring_customer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.flooring_customer should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'flooring_customer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.flooring_customer should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_class', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_class should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_class', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_class should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_class', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_class should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_class', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_class should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_type', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'grace_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.grace_days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'grace_days', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.grace_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'grace_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.grace_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'grace_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.grace_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_type', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_amount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_percent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_percent should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_percent', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_percent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_percent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_calc should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_calc', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_calc should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'late_fee_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.late_fee_calc should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_amount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_amount', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_type', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_percent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_percent should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_percent', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_percent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'card_fee_percent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.card_fee_percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'agent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.agent should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'agent', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.agent should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'agent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.agent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'agent', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.agent should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'source_company', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.source_company should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'source_company', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.source_company should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'source_company', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.source_company should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'source_company', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.source_company should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_status should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_status', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_status should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_sub_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_sub_status should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_sub_status', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_sub_status should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_sub_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_sub_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_sub_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_sub_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ebilling', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ebilling should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ebilling', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ebilling should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ebilling', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ebilling should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ebilling', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ebilling should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ecoa_code', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ecoa_code should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ecoa_code', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ecoa_code should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ecoa_code', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ecoa_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ecoa_code', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ecoa_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'co_ecoa_code', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.co_ecoa_code should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'co_ecoa_code', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.co_ecoa_code should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'co_ecoa_code', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.co_ecoa_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'co_ecoa_code', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.co_ecoa_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'portfolio', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.portfolio should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'portfolio', 'text', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.portfolio should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'portfolio', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.portfolio should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'portfolio', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.portfolio should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_status should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_status', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_status should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_status', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_bureau', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_bureau should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_bureau', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_bureau should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_bureau', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_bureau should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'credit_bureau', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.credit_bureau should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reporting_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reporting_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reporting_type', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reporting_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reporting_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reporting_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'reporting_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.reporting_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount_split', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount_split should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount_split', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount_split should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount_split', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount_split should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount_split', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount_split should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'payment_frequency', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.payment_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'payment_frequency', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.payment_frequency should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'payment_frequency', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.payment_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'payment_frequency', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.payment_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'calc_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.calc_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'calc_type', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.calc_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'calc_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.calc_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'calc_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.calc_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'days_in_year', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.days_in_year should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'days_in_year', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.days_in_year should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'days_in_year', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.days_in_year should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'days_in_year', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.days_in_year should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'interest_application', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.interest_application should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'interest_application', 'character(50)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.interest_application should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'interest_application', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.interest_application should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'interest_application', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.interest_application should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'beg_end', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.beg_end should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'beg_end', 'character(20)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.beg_end should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'beg_end', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.beg_end should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'beg_end', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.beg_end should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_period_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_period_days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_period_days', 'character(40)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_period_days should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_period_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_period_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_period_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_period_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_day_interest', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_day_interest should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_day_interest', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_day_interest should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_day_interest', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_day_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'first_day_interest', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.first_day_interest should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount_calc should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount_calc', 'character(40)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount_calc should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'discount_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.discount_calc should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'diy_alt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.diy_alt should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'diy_alt', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.diy_alt should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'diy_alt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.diy_alt should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'diy_alt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.diy_alt should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'payment_date_app', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.payment_date_app should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'payment_date_app', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.payment_date_app should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'payment_date_app', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.payment_date_app should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'payment_date_app', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.payment_date_app should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'days_in_period', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.days_in_period should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'days_in_period', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.days_in_period should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'days_in_period', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.days_in_period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'days_in_period', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.days_in_period should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'round_decimals', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.round_decimals should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'round_decimals', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.round_decimals should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'round_decimals', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.round_decimals should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'round_decimals', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.round_decimals should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'last_as_final', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.last_as_final should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'last_as_final', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.last_as_final should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'last_as_final', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.last_as_final should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'last_as_final', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.last_as_final should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ndd_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ndd_calc should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ndd_calc', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ndd_calc should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ndd_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ndd_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'ndd_calc', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.ndd_calc should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'end_interest', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.end_interest should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'end_interest', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.end_interest should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'end_interest', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.end_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'end_interest', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.end_interest should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'fixed_term_pmt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.fixed_term_pmt should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'fixed_term_pmt', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.fixed_term_pmt should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'fixed_term_pmt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.fixed_term_pmt should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'fixed_term_pmt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.fixed_term_pmt should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'prorate_first_pmt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.prorate_first_pmt should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'prorate_first_pmt', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.prorate_first_pmt should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'prorate_first_pmt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.prorate_first_pmt should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'prorate_first_pmt', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.prorate_first_pmt should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'latefee_percent_base', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.latefee_percent_base should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'latefee_percent_base', 'character(40)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.latefee_percent_base should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'latefee_percent_base', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.latefee_percent_base should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'latefee_percent_base', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.latefee_percent_base should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'schedule_template', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.schedule_template should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'schedule_template', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.schedule_template should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'schedule_template', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.schedule_template should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'schedule_template', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.schedule_template should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'curtailment_template', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.curtailment_template should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'curtailment_template', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.curtailment_template should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'curtailment_template', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.curtailment_template should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'curtailment_template', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.curtailment_template should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'fees_paid_by', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.fees_paid_by should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'fees_paid_by', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.fees_paid_by should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'fees_paid_by', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.fees_paid_by should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'fees_paid_by', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.fees_paid_by should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'use_interest_tiers', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.use_interest_tiers should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'use_interest_tiers', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.use_interest_tiers should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'use_interest_tiers', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.use_interest_tiers should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'use_interest_tiers', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.use_interest_tiers should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_rate_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_rate_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_rate_type', 'character(30)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_rate_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_rate_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_rate_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'loan_rate_type', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.loan_rate_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'smooth_payments', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.smooth_payments should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'smooth_payments', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.smooth_payments should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'smooth_payments', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.smooth_payments should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'smooth_payments', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.smooth_payments should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'apr_force_single_freq', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.apr_force_single_freq should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'apr_force_single_freq', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.apr_force_single_freq should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'apr_force_single_freq', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.apr_force_single_freq should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'apr_force_single_freq', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.apr_force_single_freq should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'due_date_on_last_dom', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.due_date_on_last_dom should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'due_date_on_last_dom', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.due_date_on_last_dom should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'due_date_on_last_dom', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.due_date_on_last_dom should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'due_date_on_last_dom', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.due_date_on_last_dom should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'due_dates_on_business_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.due_dates_on_business_days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'due_dates_on_business_days', 'character varying(40)', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.due_dates_on_business_days should be type character varying(40)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'due_dates_on_business_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.due_dates_on_business_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'due_dates_on_business_days', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.due_dates_on_business_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'autopay_enabled', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.autopay_enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'autopay_enabled', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.autopay_enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'autopay_enabled', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.autopay_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'autopay_enabled', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.autopay_enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'created', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'created', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'created', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'active', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'active', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'active', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'deleted', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'deleted', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_preconfigured_loan_entity', 'deleted', 'Column loan_pro_chorus_sandbox._preconfigured_loan_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
