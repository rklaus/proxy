SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(139);

SELECT has_foreign_table(
    'balance_api_fdw', 'customerinformation',
    'Should have foreign table balance_api_fdw.customerinformation'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'customerinformation',
    'Table balance_api_fdw.customerinformation should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'customerinformation'::name, ARRAY[
    'id'::name,
    'social_security_number'::name,
    'last_email'::name,
    'last_pay_frequency'::name,
    'last_pay_amount'::name,
    'count_loans_paid_off'::name,
    'count_loans_vip'::name,
    'count_loans_bad'::name,
    'best_loan_amount'::name,
    'line_offer'::name,
    'is_vip'::name,
    'is_returning'::name,
    'is_pti_applicable'::name,
    'is_dm_suppressed'::name,
    'is_test'::name,
    'calculated_pti'::name,
    'current_pay_amount'::name,
    'current_pay_frequency'::name,
    'days_since_last_payoff'::name,
    'effective_pti'::name,
    'is_returning_email'::name,
    'is_returning_letter'::name,
    'is_vip_email'::name,
    'is_vip_letter'::name,
    'pti_max_line'::name,
    'pti_payment_cap'::name,
    'best_tier_id'::name,
    'count_loans_returning'::name,
    'price_tier_offer_id'::name,
    'created_at'::name,
    'state'::name,
    'updated_at'::name,
    'line_increase'::name,
    'count_loans_active'::name
]);

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'id', 'Column balance_api_fdw.customerinformation.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'id', 'integer', 'Column balance_api_fdw.customerinformation.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'id', 'Column balance_api_fdw.customerinformation.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'id', 'Column balance_api_fdw.customerinformation.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'social_security_number', 'Column balance_api_fdw.customerinformation.social_security_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'social_security_number', 'character varying(32)', 'Column balance_api_fdw.customerinformation.social_security_number should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'social_security_number', 'Column balance_api_fdw.customerinformation.social_security_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'social_security_number', 'Column balance_api_fdw.customerinformation.social_security_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'last_email', 'Column balance_api_fdw.customerinformation.last_email should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'last_email', 'character varying(256)', 'Column balance_api_fdw.customerinformation.last_email should be type character varying(256)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'last_email', 'Column balance_api_fdw.customerinformation.last_email should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'last_email', 'Column balance_api_fdw.customerinformation.last_email should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'last_pay_frequency', 'Column balance_api_fdw.customerinformation.last_pay_frequency should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'last_pay_frequency', 'character varying(5)', 'Column balance_api_fdw.customerinformation.last_pay_frequency should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'last_pay_frequency', 'Column balance_api_fdw.customerinformation.last_pay_frequency should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'last_pay_frequency', 'Column balance_api_fdw.customerinformation.last_pay_frequency should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'last_pay_amount', 'Column balance_api_fdw.customerinformation.last_pay_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'last_pay_amount', 'numeric(10,2)', 'Column balance_api_fdw.customerinformation.last_pay_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'last_pay_amount', 'Column balance_api_fdw.customerinformation.last_pay_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'last_pay_amount', 'Column balance_api_fdw.customerinformation.last_pay_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'count_loans_paid_off', 'Column balance_api_fdw.customerinformation.count_loans_paid_off should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'count_loans_paid_off', 'integer', 'Column balance_api_fdw.customerinformation.count_loans_paid_off should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'count_loans_paid_off', 'Column balance_api_fdw.customerinformation.count_loans_paid_off should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'count_loans_paid_off', 'Column balance_api_fdw.customerinformation.count_loans_paid_off should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'count_loans_vip', 'Column balance_api_fdw.customerinformation.count_loans_vip should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'count_loans_vip', 'integer', 'Column balance_api_fdw.customerinformation.count_loans_vip should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'count_loans_vip', 'Column balance_api_fdw.customerinformation.count_loans_vip should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'count_loans_vip', 'Column balance_api_fdw.customerinformation.count_loans_vip should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'count_loans_bad', 'Column balance_api_fdw.customerinformation.count_loans_bad should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'count_loans_bad', 'integer', 'Column balance_api_fdw.customerinformation.count_loans_bad should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'count_loans_bad', 'Column balance_api_fdw.customerinformation.count_loans_bad should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'count_loans_bad', 'Column balance_api_fdw.customerinformation.count_loans_bad should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'best_loan_amount', 'Column balance_api_fdw.customerinformation.best_loan_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'best_loan_amount', 'numeric(10,2)', 'Column balance_api_fdw.customerinformation.best_loan_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'best_loan_amount', 'Column balance_api_fdw.customerinformation.best_loan_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'best_loan_amount', 'Column balance_api_fdw.customerinformation.best_loan_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'line_offer', 'Column balance_api_fdw.customerinformation.line_offer should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'line_offer', 'numeric(10,2)', 'Column balance_api_fdw.customerinformation.line_offer should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'line_offer', 'Column balance_api_fdw.customerinformation.line_offer should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'line_offer', 'Column balance_api_fdw.customerinformation.line_offer should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_vip', 'Column balance_api_fdw.customerinformation.is_vip should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_vip', 'boolean', 'Column balance_api_fdw.customerinformation.is_vip should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_vip', 'Column balance_api_fdw.customerinformation.is_vip should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_vip', 'Column balance_api_fdw.customerinformation.is_vip should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_returning', 'Column balance_api_fdw.customerinformation.is_returning should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_returning', 'boolean', 'Column balance_api_fdw.customerinformation.is_returning should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_returning', 'Column balance_api_fdw.customerinformation.is_returning should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_returning', 'Column balance_api_fdw.customerinformation.is_returning should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_pti_applicable', 'Column balance_api_fdw.customerinformation.is_pti_applicable should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_pti_applicable', 'boolean', 'Column balance_api_fdw.customerinformation.is_pti_applicable should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_pti_applicable', 'Column balance_api_fdw.customerinformation.is_pti_applicable should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_pti_applicable', 'Column balance_api_fdw.customerinformation.is_pti_applicable should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_dm_suppressed', 'Column balance_api_fdw.customerinformation.is_dm_suppressed should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_dm_suppressed', 'boolean', 'Column balance_api_fdw.customerinformation.is_dm_suppressed should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_dm_suppressed', 'Column balance_api_fdw.customerinformation.is_dm_suppressed should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_dm_suppressed', 'Column balance_api_fdw.customerinformation.is_dm_suppressed should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_test', 'Column balance_api_fdw.customerinformation.is_test should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_test', 'boolean', 'Column balance_api_fdw.customerinformation.is_test should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_test', 'Column balance_api_fdw.customerinformation.is_test should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_test', 'Column balance_api_fdw.customerinformation.is_test should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'calculated_pti', 'Column balance_api_fdw.customerinformation.calculated_pti should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'calculated_pti', 'numeric(7,2)', 'Column balance_api_fdw.customerinformation.calculated_pti should be type numeric(7,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'calculated_pti', 'Column balance_api_fdw.customerinformation.calculated_pti should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'calculated_pti', 'Column balance_api_fdw.customerinformation.calculated_pti should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'current_pay_amount', 'Column balance_api_fdw.customerinformation.current_pay_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'current_pay_amount', 'numeric(10,2)', 'Column balance_api_fdw.customerinformation.current_pay_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'current_pay_amount', 'Column balance_api_fdw.customerinformation.current_pay_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'current_pay_amount', 'Column balance_api_fdw.customerinformation.current_pay_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'current_pay_frequency', 'Column balance_api_fdw.customerinformation.current_pay_frequency should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'current_pay_frequency', 'character varying(5)', 'Column balance_api_fdw.customerinformation.current_pay_frequency should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'current_pay_frequency', 'Column balance_api_fdw.customerinformation.current_pay_frequency should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'current_pay_frequency', 'Column balance_api_fdw.customerinformation.current_pay_frequency should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'days_since_last_payoff', 'Column balance_api_fdw.customerinformation.days_since_last_payoff should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'days_since_last_payoff', 'integer', 'Column balance_api_fdw.customerinformation.days_since_last_payoff should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'days_since_last_payoff', 'Column balance_api_fdw.customerinformation.days_since_last_payoff should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'days_since_last_payoff', 'Column balance_api_fdw.customerinformation.days_since_last_payoff should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'effective_pti', 'Column balance_api_fdw.customerinformation.effective_pti should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'effective_pti', 'numeric(6,2)', 'Column balance_api_fdw.customerinformation.effective_pti should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'effective_pti', 'Column balance_api_fdw.customerinformation.effective_pti should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'effective_pti', 'Column balance_api_fdw.customerinformation.effective_pti should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_returning_email', 'Column balance_api_fdw.customerinformation.is_returning_email should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_returning_email', 'boolean', 'Column balance_api_fdw.customerinformation.is_returning_email should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_returning_email', 'Column balance_api_fdw.customerinformation.is_returning_email should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_returning_email', 'Column balance_api_fdw.customerinformation.is_returning_email should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_returning_letter', 'Column balance_api_fdw.customerinformation.is_returning_letter should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_returning_letter', 'boolean', 'Column balance_api_fdw.customerinformation.is_returning_letter should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_returning_letter', 'Column balance_api_fdw.customerinformation.is_returning_letter should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_returning_letter', 'Column balance_api_fdw.customerinformation.is_returning_letter should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_vip_email', 'Column balance_api_fdw.customerinformation.is_vip_email should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_vip_email', 'boolean', 'Column balance_api_fdw.customerinformation.is_vip_email should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_vip_email', 'Column balance_api_fdw.customerinformation.is_vip_email should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_vip_email', 'Column balance_api_fdw.customerinformation.is_vip_email should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'is_vip_letter', 'Column balance_api_fdw.customerinformation.is_vip_letter should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'is_vip_letter', 'boolean', 'Column balance_api_fdw.customerinformation.is_vip_letter should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'is_vip_letter', 'Column balance_api_fdw.customerinformation.is_vip_letter should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'is_vip_letter', 'Column balance_api_fdw.customerinformation.is_vip_letter should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'pti_max_line', 'Column balance_api_fdw.customerinformation.pti_max_line should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'pti_max_line', 'numeric(6,2)', 'Column balance_api_fdw.customerinformation.pti_max_line should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'pti_max_line', 'Column balance_api_fdw.customerinformation.pti_max_line should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'pti_max_line', 'Column balance_api_fdw.customerinformation.pti_max_line should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'pti_payment_cap', 'Column balance_api_fdw.customerinformation.pti_payment_cap should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'pti_payment_cap', 'numeric(6,2)', 'Column balance_api_fdw.customerinformation.pti_payment_cap should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'pti_payment_cap', 'Column balance_api_fdw.customerinformation.pti_payment_cap should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'pti_payment_cap', 'Column balance_api_fdw.customerinformation.pti_payment_cap should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'best_tier_id', 'Column balance_api_fdw.customerinformation.best_tier_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'best_tier_id', 'integer', 'Column balance_api_fdw.customerinformation.best_tier_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'best_tier_id', 'Column balance_api_fdw.customerinformation.best_tier_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'best_tier_id', 'Column balance_api_fdw.customerinformation.best_tier_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'count_loans_returning', 'Column balance_api_fdw.customerinformation.count_loans_returning should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'count_loans_returning', 'integer', 'Column balance_api_fdw.customerinformation.count_loans_returning should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'count_loans_returning', 'Column balance_api_fdw.customerinformation.count_loans_returning should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'count_loans_returning', 'Column balance_api_fdw.customerinformation.count_loans_returning should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'price_tier_offer_id', 'Column balance_api_fdw.customerinformation.price_tier_offer_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'price_tier_offer_id', 'integer', 'Column balance_api_fdw.customerinformation.price_tier_offer_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'price_tier_offer_id', 'Column balance_api_fdw.customerinformation.price_tier_offer_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'price_tier_offer_id', 'Column balance_api_fdw.customerinformation.price_tier_offer_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'created_at', 'Column balance_api_fdw.customerinformation.created_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'created_at', 'timestamp with time zone', 'Column balance_api_fdw.customerinformation.created_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'created_at', 'Column balance_api_fdw.customerinformation.created_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'created_at', 'Column balance_api_fdw.customerinformation.created_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'state', 'Column balance_api_fdw.customerinformation.state should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'state', 'character varying(2)', 'Column balance_api_fdw.customerinformation.state should be type character varying(2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'state', 'Column balance_api_fdw.customerinformation.state should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'state', 'Column balance_api_fdw.customerinformation.state should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'updated_at', 'Column balance_api_fdw.customerinformation.updated_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'updated_at', 'timestamp with time zone', 'Column balance_api_fdw.customerinformation.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'updated_at', 'Column balance_api_fdw.customerinformation.updated_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'updated_at', 'Column balance_api_fdw.customerinformation.updated_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'line_increase', 'Column balance_api_fdw.customerinformation.line_increase should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'line_increase', 'numeric(6,2)', 'Column balance_api_fdw.customerinformation.line_increase should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'line_increase', 'Column balance_api_fdw.customerinformation.line_increase should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'line_increase', 'Column balance_api_fdw.customerinformation.line_increase should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformation', 'count_loans_active', 'Column balance_api_fdw.customerinformation.count_loans_active should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformation', 'count_loans_active', 'integer', 'Column balance_api_fdw.customerinformation.count_loans_active should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformation', 'count_loans_active', 'Column balance_api_fdw.customerinformation.count_loans_active should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformation', 'count_loans_active', 'Column balance_api_fdw.customerinformation.count_loans_active should not  have a default');

SELECT * FROM finish();
ROLLBACK;
