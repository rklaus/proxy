SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(87);

SELECT has_foreign_table(
    'balance_api_fdw', 'loaninformation',
    'Should have foreign table balance_api_fdw.loaninformation'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'loaninformation',
    'Table balance_api_fdw.loaninformation should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'loaninformation'::name, ARRAY[
    'id'::name,
    'social_security_number'::name,
    'lms_name'::name,
    'lms_id'::name,
    'status'::name,
    'apr'::name,
    'amount_principal'::name,
    'amount_revenue'::name,
    'is_vip'::name,
    'is_bad_loan'::name,
    'is_include_best'::name,
    'is_returning'::name,
    'payoff_cleared_date'::name,
    'calculated_price_tier_id'::name,
    'payoff_effective_date'::name,
    'payoff_entered_date'::name,
    'payoff_payment_method'::name,
    'created_at'::name,
    'state'::name,
    'updated_at'::name,
    'is_active'::name
]);

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'id', 'Column balance_api_fdw.loaninformation.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'id', 'integer', 'Column balance_api_fdw.loaninformation.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'id', 'Column balance_api_fdw.loaninformation.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'id', 'Column balance_api_fdw.loaninformation.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'social_security_number', 'Column balance_api_fdw.loaninformation.social_security_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'social_security_number', 'character varying(32)', 'Column balance_api_fdw.loaninformation.social_security_number should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'social_security_number', 'Column balance_api_fdw.loaninformation.social_security_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'social_security_number', 'Column balance_api_fdw.loaninformation.social_security_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'lms_name', 'Column balance_api_fdw.loaninformation.lms_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'lms_name', 'character varying(10)', 'Column balance_api_fdw.loaninformation.lms_name should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'lms_name', 'Column balance_api_fdw.loaninformation.lms_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'lms_name', 'Column balance_api_fdw.loaninformation.lms_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'lms_id', 'Column balance_api_fdw.loaninformation.lms_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'lms_id', 'integer', 'Column balance_api_fdw.loaninformation.lms_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'lms_id', 'Column balance_api_fdw.loaninformation.lms_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'lms_id', 'Column balance_api_fdw.loaninformation.lms_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'status', 'Column balance_api_fdw.loaninformation.status should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'status', 'character varying(64)', 'Column balance_api_fdw.loaninformation.status should be type character varying(64)');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'status', 'Column balance_api_fdw.loaninformation.status should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'status', 'Column balance_api_fdw.loaninformation.status should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'apr', 'Column balance_api_fdw.loaninformation.apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'apr', 'numeric(10,2)', 'Column balance_api_fdw.loaninformation.apr should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'apr', 'Column balance_api_fdw.loaninformation.apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'apr', 'Column balance_api_fdw.loaninformation.apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'amount_principal', 'Column balance_api_fdw.loaninformation.amount_principal should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'amount_principal', 'numeric(10,2)', 'Column balance_api_fdw.loaninformation.amount_principal should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'amount_principal', 'Column balance_api_fdw.loaninformation.amount_principal should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'amount_principal', 'Column balance_api_fdw.loaninformation.amount_principal should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'amount_revenue', 'Column balance_api_fdw.loaninformation.amount_revenue should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'amount_revenue', 'numeric(10,2)', 'Column balance_api_fdw.loaninformation.amount_revenue should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'amount_revenue', 'Column balance_api_fdw.loaninformation.amount_revenue should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'amount_revenue', 'Column balance_api_fdw.loaninformation.amount_revenue should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'is_vip', 'Column balance_api_fdw.loaninformation.is_vip should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'is_vip', 'boolean', 'Column balance_api_fdw.loaninformation.is_vip should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'is_vip', 'Column balance_api_fdw.loaninformation.is_vip should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'is_vip', 'Column balance_api_fdw.loaninformation.is_vip should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'is_bad_loan', 'Column balance_api_fdw.loaninformation.is_bad_loan should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'is_bad_loan', 'boolean', 'Column balance_api_fdw.loaninformation.is_bad_loan should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'is_bad_loan', 'Column balance_api_fdw.loaninformation.is_bad_loan should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'is_bad_loan', 'Column balance_api_fdw.loaninformation.is_bad_loan should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'is_include_best', 'Column balance_api_fdw.loaninformation.is_include_best should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'is_include_best', 'boolean', 'Column balance_api_fdw.loaninformation.is_include_best should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'is_include_best', 'Column balance_api_fdw.loaninformation.is_include_best should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'is_include_best', 'Column balance_api_fdw.loaninformation.is_include_best should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'is_returning', 'Column balance_api_fdw.loaninformation.is_returning should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'is_returning', 'boolean', 'Column balance_api_fdw.loaninformation.is_returning should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'is_returning', 'Column balance_api_fdw.loaninformation.is_returning should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'is_returning', 'Column balance_api_fdw.loaninformation.is_returning should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'payoff_cleared_date', 'Column balance_api_fdw.loaninformation.payoff_cleared_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'payoff_cleared_date', 'date', 'Column balance_api_fdw.loaninformation.payoff_cleared_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'payoff_cleared_date', 'Column balance_api_fdw.loaninformation.payoff_cleared_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'payoff_cleared_date', 'Column balance_api_fdw.loaninformation.payoff_cleared_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'calculated_price_tier_id', 'Column balance_api_fdw.loaninformation.calculated_price_tier_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'calculated_price_tier_id', 'integer', 'Column balance_api_fdw.loaninformation.calculated_price_tier_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'calculated_price_tier_id', 'Column balance_api_fdw.loaninformation.calculated_price_tier_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'calculated_price_tier_id', 'Column balance_api_fdw.loaninformation.calculated_price_tier_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'payoff_effective_date', 'Column balance_api_fdw.loaninformation.payoff_effective_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'payoff_effective_date', 'date', 'Column balance_api_fdw.loaninformation.payoff_effective_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'payoff_effective_date', 'Column balance_api_fdw.loaninformation.payoff_effective_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'payoff_effective_date', 'Column balance_api_fdw.loaninformation.payoff_effective_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'payoff_entered_date', 'Column balance_api_fdw.loaninformation.payoff_entered_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'payoff_entered_date', 'date', 'Column balance_api_fdw.loaninformation.payoff_entered_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'payoff_entered_date', 'Column balance_api_fdw.loaninformation.payoff_entered_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'payoff_entered_date', 'Column balance_api_fdw.loaninformation.payoff_entered_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'payoff_payment_method', 'Column balance_api_fdw.loaninformation.payoff_payment_method should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'payoff_payment_method', 'character varying(32)', 'Column balance_api_fdw.loaninformation.payoff_payment_method should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'payoff_payment_method', 'Column balance_api_fdw.loaninformation.payoff_payment_method should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'payoff_payment_method', 'Column balance_api_fdw.loaninformation.payoff_payment_method should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'created_at', 'Column balance_api_fdw.loaninformation.created_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'created_at', 'timestamp with time zone', 'Column balance_api_fdw.loaninformation.created_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'created_at', 'Column balance_api_fdw.loaninformation.created_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'created_at', 'Column balance_api_fdw.loaninformation.created_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'state', 'Column balance_api_fdw.loaninformation.state should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'state', 'character varying(2)', 'Column balance_api_fdw.loaninformation.state should be type character varying(2)');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'state', 'Column balance_api_fdw.loaninformation.state should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'state', 'Column balance_api_fdw.loaninformation.state should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'updated_at', 'Column balance_api_fdw.loaninformation.updated_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'updated_at', 'timestamp with time zone', 'Column balance_api_fdw.loaninformation.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'updated_at', 'Column balance_api_fdw.loaninformation.updated_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'updated_at', 'Column balance_api_fdw.loaninformation.updated_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loaninformation', 'is_active', 'Column balance_api_fdw.loaninformation.is_active should exist');
SELECT col_type_is(      'balance_api_fdw', 'loaninformation', 'is_active', 'boolean', 'Column balance_api_fdw.loaninformation.is_active should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'loaninformation', 'is_active', 'Column balance_api_fdw.loaninformation.is_active should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loaninformation', 'is_active', 'Column balance_api_fdw.loaninformation.is_active should not  have a default');

SELECT * FROM finish();
ROLLBACK;
