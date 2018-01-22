SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(215);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_defaults_system_loan',
    'Should have foreign table loan_pro_chorus_fdw._defaults_system_loan'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_defaults_system_loan',
    'Table loan_pro_chorus_fdw._defaults_system_loan should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_defaults_system_loan'::name, ARRAY[
    'id'::name,
    'loan_class'::name,
    'loan_type'::name,
    'is_primary'::name,
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
    'smooth_payments'::name,
    'round_decimals'::name,
    'last_as_final'::name,
    'ndd_calc'::name,
    'end_interest'::name,
    'fixed_term_pmt'::name,
    'latefee_percent_base'::name,
    'schedule_template'::name,
    'curtailment_template'::name,
    'fees_paid_by'::name,
    'use_interest_tiers'::name,
    'loan_rate_type'::name,
    'apr_force_single_freq'::name,
    'due_date_on_last_dom'::name,
    'due_dates_on_business_days'::name,
    'autopay_enabled'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'id', 'Column loan_pro_chorus_fdw._defaults_system_loan.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'id', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'id', 'Column loan_pro_chorus_fdw._defaults_system_loan.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'id', 'Column loan_pro_chorus_fdw._defaults_system_loan.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_class should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_class', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_class should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_class should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_class should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'is_primary', 'Column loan_pro_chorus_fdw._defaults_system_loan.is_primary should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'is_primary', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.is_primary should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'is_primary', 'Column loan_pro_chorus_fdw._defaults_system_loan.is_primary should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'is_primary', 'Column loan_pro_chorus_fdw._defaults_system_loan.is_primary should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'grace_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.grace_days should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'grace_days', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.grace_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'grace_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.grace_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'grace_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.grace_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_amount', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_amount', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_amount', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_percent', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_percent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_percent', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_percent', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_percent', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_calc should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_calc', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_calc should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'late_fee_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.late_fee_calc should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_amount', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_amount', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_amount', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_percent', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_percent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_percent', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_percent', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'card_fee_percent', 'Column loan_pro_chorus_fdw._defaults_system_loan.card_fee_percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'agent', 'Column loan_pro_chorus_fdw._defaults_system_loan.agent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'agent', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.agent should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'agent', 'Column loan_pro_chorus_fdw._defaults_system_loan.agent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'agent', 'Column loan_pro_chorus_fdw._defaults_system_loan.agent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'source_company', 'Column loan_pro_chorus_fdw._defaults_system_loan.source_company should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'source_company', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.source_company should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'source_company', 'Column loan_pro_chorus_fdw._defaults_system_loan.source_company should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'source_company', 'Column loan_pro_chorus_fdw._defaults_system_loan.source_company should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_status', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_status should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_sub_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_sub_status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_sub_status', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_sub_status should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_sub_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_sub_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_sub_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_sub_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'ebilling', 'Column loan_pro_chorus_fdw._defaults_system_loan.ebilling should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'ebilling', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.ebilling should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'ebilling', 'Column loan_pro_chorus_fdw._defaults_system_loan.ebilling should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'ebilling', 'Column loan_pro_chorus_fdw._defaults_system_loan.ebilling should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'ecoa_code', 'Column loan_pro_chorus_fdw._defaults_system_loan.ecoa_code should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'ecoa_code', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.ecoa_code should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'ecoa_code', 'Column loan_pro_chorus_fdw._defaults_system_loan.ecoa_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'ecoa_code', 'Column loan_pro_chorus_fdw._defaults_system_loan.ecoa_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'co_ecoa_code', 'Column loan_pro_chorus_fdw._defaults_system_loan.co_ecoa_code should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'co_ecoa_code', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.co_ecoa_code should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'co_ecoa_code', 'Column loan_pro_chorus_fdw._defaults_system_loan.co_ecoa_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'co_ecoa_code', 'Column loan_pro_chorus_fdw._defaults_system_loan.co_ecoa_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'portfolio', 'Column loan_pro_chorus_fdw._defaults_system_loan.portfolio should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'portfolio', 'text', 'Column loan_pro_chorus_fdw._defaults_system_loan.portfolio should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'portfolio', 'Column loan_pro_chorus_fdw._defaults_system_loan.portfolio should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'portfolio', 'Column loan_pro_chorus_fdw._defaults_system_loan.portfolio should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'credit_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.credit_status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'credit_status', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.credit_status should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'credit_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.credit_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'credit_status', 'Column loan_pro_chorus_fdw._defaults_system_loan.credit_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'credit_bureau', 'Column loan_pro_chorus_fdw._defaults_system_loan.credit_bureau should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'credit_bureau', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.credit_bureau should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'credit_bureau', 'Column loan_pro_chorus_fdw._defaults_system_loan.credit_bureau should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'credit_bureau', 'Column loan_pro_chorus_fdw._defaults_system_loan.credit_bureau should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'reporting_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.reporting_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'reporting_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.reporting_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'reporting_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.reporting_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'reporting_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.reporting_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'discount_split', 'Column loan_pro_chorus_fdw._defaults_system_loan.discount_split should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'discount_split', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.discount_split should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'discount_split', 'Column loan_pro_chorus_fdw._defaults_system_loan.discount_split should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'discount_split', 'Column loan_pro_chorus_fdw._defaults_system_loan.discount_split should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'payment_frequency', 'Column loan_pro_chorus_fdw._defaults_system_loan.payment_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'payment_frequency', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.payment_frequency should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'payment_frequency', 'Column loan_pro_chorus_fdw._defaults_system_loan.payment_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'payment_frequency', 'Column loan_pro_chorus_fdw._defaults_system_loan.payment_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'calc_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.calc_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'calc_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.calc_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'calc_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.calc_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'calc_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.calc_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'days_in_year', 'Column loan_pro_chorus_fdw._defaults_system_loan.days_in_year should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'days_in_year', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.days_in_year should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'days_in_year', 'Column loan_pro_chorus_fdw._defaults_system_loan.days_in_year should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'days_in_year', 'Column loan_pro_chorus_fdw._defaults_system_loan.days_in_year should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'interest_application', 'Column loan_pro_chorus_fdw._defaults_system_loan.interest_application should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'interest_application', 'character(50)', 'Column loan_pro_chorus_fdw._defaults_system_loan.interest_application should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'interest_application', 'Column loan_pro_chorus_fdw._defaults_system_loan.interest_application should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'interest_application', 'Column loan_pro_chorus_fdw._defaults_system_loan.interest_application should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'beg_end', 'Column loan_pro_chorus_fdw._defaults_system_loan.beg_end should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'beg_end', 'character(20)', 'Column loan_pro_chorus_fdw._defaults_system_loan.beg_end should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'beg_end', 'Column loan_pro_chorus_fdw._defaults_system_loan.beg_end should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'beg_end', 'Column loan_pro_chorus_fdw._defaults_system_loan.beg_end should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'first_period_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.first_period_days should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'first_period_days', 'character(40)', 'Column loan_pro_chorus_fdw._defaults_system_loan.first_period_days should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'first_period_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.first_period_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'first_period_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.first_period_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'first_day_interest', 'Column loan_pro_chorus_fdw._defaults_system_loan.first_day_interest should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'first_day_interest', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.first_day_interest should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'first_day_interest', 'Column loan_pro_chorus_fdw._defaults_system_loan.first_day_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'first_day_interest', 'Column loan_pro_chorus_fdw._defaults_system_loan.first_day_interest should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'discount_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.discount_calc should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'discount_calc', 'character(40)', 'Column loan_pro_chorus_fdw._defaults_system_loan.discount_calc should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'discount_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.discount_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'discount_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.discount_calc should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'diy_alt', 'Column loan_pro_chorus_fdw._defaults_system_loan.diy_alt should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'diy_alt', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.diy_alt should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'diy_alt', 'Column loan_pro_chorus_fdw._defaults_system_loan.diy_alt should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'diy_alt', 'Column loan_pro_chorus_fdw._defaults_system_loan.diy_alt should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'payment_date_app', 'Column loan_pro_chorus_fdw._defaults_system_loan.payment_date_app should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'payment_date_app', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.payment_date_app should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'payment_date_app', 'Column loan_pro_chorus_fdw._defaults_system_loan.payment_date_app should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'payment_date_app', 'Column loan_pro_chorus_fdw._defaults_system_loan.payment_date_app should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'days_in_period', 'Column loan_pro_chorus_fdw._defaults_system_loan.days_in_period should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'days_in_period', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.days_in_period should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'days_in_period', 'Column loan_pro_chorus_fdw._defaults_system_loan.days_in_period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'days_in_period', 'Column loan_pro_chorus_fdw._defaults_system_loan.days_in_period should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'smooth_payments', 'Column loan_pro_chorus_fdw._defaults_system_loan.smooth_payments should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'smooth_payments', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.smooth_payments should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'smooth_payments', 'Column loan_pro_chorus_fdw._defaults_system_loan.smooth_payments should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'smooth_payments', 'Column loan_pro_chorus_fdw._defaults_system_loan.smooth_payments should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'round_decimals', 'Column loan_pro_chorus_fdw._defaults_system_loan.round_decimals should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'round_decimals', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.round_decimals should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'round_decimals', 'Column loan_pro_chorus_fdw._defaults_system_loan.round_decimals should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'round_decimals', 'Column loan_pro_chorus_fdw._defaults_system_loan.round_decimals should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'last_as_final', 'Column loan_pro_chorus_fdw._defaults_system_loan.last_as_final should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'last_as_final', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.last_as_final should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'last_as_final', 'Column loan_pro_chorus_fdw._defaults_system_loan.last_as_final should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'last_as_final', 'Column loan_pro_chorus_fdw._defaults_system_loan.last_as_final should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'ndd_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.ndd_calc should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'ndd_calc', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.ndd_calc should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'ndd_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.ndd_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'ndd_calc', 'Column loan_pro_chorus_fdw._defaults_system_loan.ndd_calc should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'end_interest', 'Column loan_pro_chorus_fdw._defaults_system_loan.end_interest should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'end_interest', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.end_interest should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'end_interest', 'Column loan_pro_chorus_fdw._defaults_system_loan.end_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'end_interest', 'Column loan_pro_chorus_fdw._defaults_system_loan.end_interest should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'fixed_term_pmt', 'Column loan_pro_chorus_fdw._defaults_system_loan.fixed_term_pmt should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'fixed_term_pmt', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.fixed_term_pmt should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'fixed_term_pmt', 'Column loan_pro_chorus_fdw._defaults_system_loan.fixed_term_pmt should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'fixed_term_pmt', 'Column loan_pro_chorus_fdw._defaults_system_loan.fixed_term_pmt should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'latefee_percent_base', 'Column loan_pro_chorus_fdw._defaults_system_loan.latefee_percent_base should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'latefee_percent_base', 'character(40)', 'Column loan_pro_chorus_fdw._defaults_system_loan.latefee_percent_base should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'latefee_percent_base', 'Column loan_pro_chorus_fdw._defaults_system_loan.latefee_percent_base should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'latefee_percent_base', 'Column loan_pro_chorus_fdw._defaults_system_loan.latefee_percent_base should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'schedule_template', 'Column loan_pro_chorus_fdw._defaults_system_loan.schedule_template should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'schedule_template', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.schedule_template should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'schedule_template', 'Column loan_pro_chorus_fdw._defaults_system_loan.schedule_template should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'schedule_template', 'Column loan_pro_chorus_fdw._defaults_system_loan.schedule_template should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'curtailment_template', 'Column loan_pro_chorus_fdw._defaults_system_loan.curtailment_template should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'curtailment_template', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.curtailment_template should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'curtailment_template', 'Column loan_pro_chorus_fdw._defaults_system_loan.curtailment_template should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'curtailment_template', 'Column loan_pro_chorus_fdw._defaults_system_loan.curtailment_template should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'fees_paid_by', 'Column loan_pro_chorus_fdw._defaults_system_loan.fees_paid_by should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'fees_paid_by', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.fees_paid_by should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'fees_paid_by', 'Column loan_pro_chorus_fdw._defaults_system_loan.fees_paid_by should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'fees_paid_by', 'Column loan_pro_chorus_fdw._defaults_system_loan.fees_paid_by should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'use_interest_tiers', 'Column loan_pro_chorus_fdw._defaults_system_loan.use_interest_tiers should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'use_interest_tiers', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.use_interest_tiers should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'use_interest_tiers', 'Column loan_pro_chorus_fdw._defaults_system_loan.use_interest_tiers should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'use_interest_tiers', 'Column loan_pro_chorus_fdw._defaults_system_loan.use_interest_tiers should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_rate_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_rate_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_rate_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_rate_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_rate_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_rate_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'loan_rate_type', 'Column loan_pro_chorus_fdw._defaults_system_loan.loan_rate_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'apr_force_single_freq', 'Column loan_pro_chorus_fdw._defaults_system_loan.apr_force_single_freq should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'apr_force_single_freq', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.apr_force_single_freq should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'apr_force_single_freq', 'Column loan_pro_chorus_fdw._defaults_system_loan.apr_force_single_freq should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'apr_force_single_freq', 'Column loan_pro_chorus_fdw._defaults_system_loan.apr_force_single_freq should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'due_date_on_last_dom', 'Column loan_pro_chorus_fdw._defaults_system_loan.due_date_on_last_dom should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'due_date_on_last_dom', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.due_date_on_last_dom should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'due_date_on_last_dom', 'Column loan_pro_chorus_fdw._defaults_system_loan.due_date_on_last_dom should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'due_date_on_last_dom', 'Column loan_pro_chorus_fdw._defaults_system_loan.due_date_on_last_dom should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'due_dates_on_business_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.due_dates_on_business_days should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'due_dates_on_business_days', 'character varying(40)', 'Column loan_pro_chorus_fdw._defaults_system_loan.due_dates_on_business_days should be type character varying(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'due_dates_on_business_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.due_dates_on_business_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'due_dates_on_business_days', 'Column loan_pro_chorus_fdw._defaults_system_loan.due_dates_on_business_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'autopay_enabled', 'Column loan_pro_chorus_fdw._defaults_system_loan.autopay_enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'autopay_enabled', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.autopay_enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'autopay_enabled', 'Column loan_pro_chorus_fdw._defaults_system_loan.autopay_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'autopay_enabled', 'Column loan_pro_chorus_fdw._defaults_system_loan.autopay_enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'deleted', 'Column loan_pro_chorus_fdw._defaults_system_loan.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._defaults_system_loan.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'deleted', 'Column loan_pro_chorus_fdw._defaults_system_loan.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'deleted', 'Column loan_pro_chorus_fdw._defaults_system_loan.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_system_loan', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_system_loan.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._defaults_system_loan.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_system_loan', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_system_loan.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_system_loan', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_system_loan.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
