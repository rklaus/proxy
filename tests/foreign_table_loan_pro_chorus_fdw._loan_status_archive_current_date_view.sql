SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(207);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view',
    'Should have foreign table loan_pro_chorus_fdw._loan_status_archive_current_date_view'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view',
    'Table loan_pro_chorus_fdw._loan_status_archive_current_date_view should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_status_archive_current_date_view'::name, ARRAY[
    'loan_id'::name,
    'date'::name,
    'amount_due'::name,
    'due_interest'::name,
    'due_principal'::name,
    'due_discount'::name,
    'due_escrow'::name,
    'due_escrow_breakdown'::name,
    'due_fees'::name,
    'due_pni'::name,
    'payoff_fees'::name,
    'next_payment_date'::name,
    'next_payment_amount'::name,
    'last_payment_date'::name,
    'last_payment_amount'::name,
    'principal_balance'::name,
    'amount_past_due_30'::name,
    'days_past_due'::name,
    'date_last_current'::name,
    'date_last_current_30'::name,
    'payoff'::name,
    'perdiem'::name,
    'interest_accrued_today'::name,
    'available_credit'::name,
    'credit_limit'::name,
    'period_start'::name,
    'period_end'::name,
    'periods_remaining'::name,
    'escrow_balance'::name,
    'escrow_balance_breakdown'::name,
    'discount_remaining'::name,
    'loan_status_id'::name,
    'loan_status_text'::name,
    'loan_sub_status_id'::name,
    'loan_sub_status_text'::name,
    'credit_status'::name,
    'loan_age'::name,
    'loan_recency'::name,
    'last_human_activity'::name,
    'stoplight'::name,
    'final_payment_date'::name,
    'final_payment_amount'::name,
    'net_charge_off'::name,
    'first_delinquency_date'::name,
    'unique_delinquencies'::name,
    'delinquency_percent'::name,
    'delinquent_days'::name,
    'calced_ecoa'::name,
    'calced_ecoa_cobuyer'::name,
    'deleted'::name,
    'custom_fields_breakdown'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'amount_due', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.amount_due should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'amount_due', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.amount_due should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'amount_due', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.amount_due should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'amount_due', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.amount_due should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_interest', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_interest should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_interest', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_interest should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_interest', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_interest', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_interest should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_principal', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_principal should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_principal', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_principal should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_principal', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_principal should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_principal', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_principal should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_discount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_discount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_discount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_discount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_discount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_discount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_discount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_discount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_escrow', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_escrow should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_escrow', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_escrow should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_escrow', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_escrow should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_escrow', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_escrow should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_escrow_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_escrow_breakdown should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_escrow_breakdown', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_escrow_breakdown should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_escrow_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_escrow_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_escrow_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_escrow_breakdown should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_fees', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_fees should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_fees', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_fees should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_fees', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_fees should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_fees', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_fees should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_pni', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_pni should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_pni', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_pni should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_pni', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_pni should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'due_pni', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.due_pni should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'payoff_fees', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.payoff_fees should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'payoff_fees', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.payoff_fees should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'payoff_fees', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.payoff_fees should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'payoff_fees', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.payoff_fees should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'next_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.next_payment_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'next_payment_date', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.next_payment_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'next_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.next_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'next_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.next_payment_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'next_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.next_payment_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'next_payment_amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.next_payment_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'next_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.next_payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'next_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.next_payment_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_payment_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_payment_date', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_payment_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_payment_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_payment_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_payment_amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_payment_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_payment_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'principal_balance', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.principal_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'principal_balance', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.principal_balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'principal_balance', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'principal_balance', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.principal_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'amount_past_due_30', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.amount_past_due_30 should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'amount_past_due_30', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.amount_past_due_30 should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'amount_past_due_30', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.amount_past_due_30 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'amount_past_due_30', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.amount_past_due_30 should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'days_past_due', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.days_past_due should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'days_past_due', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.days_past_due should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'days_past_due', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.days_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'days_past_due', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.days_past_due should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date_last_current', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date_last_current should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date_last_current', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date_last_current should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date_last_current', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date_last_current should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date_last_current', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date_last_current should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date_last_current_30', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date_last_current_30 should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date_last_current_30', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date_last_current_30 should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date_last_current_30', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date_last_current_30 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'date_last_current_30', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.date_last_current_30 should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'payoff', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.payoff should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'payoff', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.payoff should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'payoff', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.payoff should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'payoff', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.payoff should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'perdiem', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.perdiem should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'perdiem', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.perdiem should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'perdiem', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.perdiem should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'perdiem', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.perdiem should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'interest_accrued_today', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.interest_accrued_today should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'interest_accrued_today', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.interest_accrued_today should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'interest_accrued_today', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.interest_accrued_today should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'interest_accrued_today', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.interest_accrued_today should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'available_credit', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.available_credit should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'available_credit', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.available_credit should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'available_credit', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.available_credit should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'available_credit', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.available_credit should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'credit_limit', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.credit_limit should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'credit_limit', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.credit_limit should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'credit_limit', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.credit_limit should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'credit_limit', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.credit_limit should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'period_start', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.period_start should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'period_start', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.period_start should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'period_start', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.period_start should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'period_start', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.period_start should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'period_end', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.period_end should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'period_end', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.period_end should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'period_end', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.period_end should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'period_end', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.period_end should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'periods_remaining', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.periods_remaining should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'periods_remaining', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.periods_remaining should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'periods_remaining', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.periods_remaining should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'periods_remaining', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.periods_remaining should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'escrow_balance', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.escrow_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'escrow_balance', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.escrow_balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'escrow_balance', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.escrow_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'escrow_balance', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.escrow_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'escrow_balance_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.escrow_balance_breakdown should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'escrow_balance_breakdown', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.escrow_balance_breakdown should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'escrow_balance_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.escrow_balance_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'escrow_balance_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.escrow_balance_breakdown should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'discount_remaining', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.discount_remaining should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'discount_remaining', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.discount_remaining should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'discount_remaining', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.discount_remaining should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'discount_remaining', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.discount_remaining should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_status_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_status_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_status_id', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_status_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_status_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_status_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_status_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_status_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_status_text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_status_text should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_status_text', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_status_text should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_status_text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_status_text should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_status_text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_status_text should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_sub_status_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_sub_status_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_sub_status_id', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_sub_status_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_sub_status_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_sub_status_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_sub_status_id', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_sub_status_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_sub_status_text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_sub_status_text should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_sub_status_text', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_sub_status_text should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_sub_status_text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_sub_status_text should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_sub_status_text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_sub_status_text should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'credit_status', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.credit_status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'credit_status', 'character(30)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.credit_status should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'credit_status', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.credit_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'credit_status', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.credit_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_age', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_age should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_age', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_age should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_age', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_age should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_age', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_age should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_recency', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_recency should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_recency', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_recency should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_recency', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_recency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'loan_recency', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.loan_recency should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_human_activity', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_human_activity should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_human_activity', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_human_activity should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_human_activity', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_human_activity should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'last_human_activity', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.last_human_activity should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'stoplight', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.stoplight should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'stoplight', 'character(30)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.stoplight should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'stoplight', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.stoplight should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'stoplight', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.stoplight should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'final_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.final_payment_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'final_payment_date', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.final_payment_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'final_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.final_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'final_payment_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.final_payment_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'final_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.final_payment_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'final_payment_amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.final_payment_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'final_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.final_payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'final_payment_amount', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.final_payment_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'net_charge_off', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.net_charge_off should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'net_charge_off', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.net_charge_off should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'net_charge_off', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.net_charge_off should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'net_charge_off', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.net_charge_off should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'first_delinquency_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.first_delinquency_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'first_delinquency_date', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.first_delinquency_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'first_delinquency_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.first_delinquency_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'first_delinquency_date', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.first_delinquency_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'unique_delinquencies', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.unique_delinquencies should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'unique_delinquencies', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.unique_delinquencies should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'unique_delinquencies', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.unique_delinquencies should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'unique_delinquencies', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.unique_delinquencies should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'delinquency_percent', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.delinquency_percent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'delinquency_percent', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.delinquency_percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'delinquency_percent', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.delinquency_percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'delinquency_percent', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.delinquency_percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'delinquent_days', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.delinquent_days should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'delinquent_days', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.delinquent_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'delinquent_days', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.delinquent_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'delinquent_days', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.delinquent_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'calced_ecoa', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.calced_ecoa should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'calced_ecoa', 'character(20)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.calced_ecoa should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'calced_ecoa', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.calced_ecoa should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'calced_ecoa', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.calced_ecoa should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'calced_ecoa_cobuyer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.calced_ecoa_cobuyer should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'calced_ecoa_cobuyer', 'character(20)', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.calced_ecoa_cobuyer should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'calced_ecoa_cobuyer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.calced_ecoa_cobuyer should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'calced_ecoa_cobuyer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.calced_ecoa_cobuyer should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'deleted', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'deleted', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'deleted', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'custom_fields_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.custom_fields_breakdown should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'custom_fields_breakdown', 'text', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.custom_fields_breakdown should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'custom_fields_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.custom_fields_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_status_archive_current_date_view', 'custom_fields_breakdown', 'Column loan_pro_chorus_fdw._loan_status_archive_current_date_view.custom_fields_breakdown should not  have a default');

SELECT * FROM finish();
ROLLBACK;
