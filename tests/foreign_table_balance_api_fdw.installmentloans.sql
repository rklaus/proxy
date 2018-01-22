SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'balance_api_fdw', 'installmentloans',
    'Should have foreign table balance_api_fdw.installmentloans'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'installmentloans',
    'Table balance_api_fdw.installmentloans should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'installmentloans'::name, ARRAY[
    'id'::name,
    'state_code'::name,
    'loan_amount'::name,
    'loan_apr'::name,
    'min_payments'::name,
    'max_payments'::name,
    'default_payment'::name,
    'pay_frequency'::name,
    'record_date'::name,
    'is_active'::name,
    'cso_apr'::name,
    'cso_fee'::name,
    'pricing_tier_id'::name
]);

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'id', 'Column balance_api_fdw.installmentloans.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'id', 'integer', 'Column balance_api_fdw.installmentloans.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'id', 'Column balance_api_fdw.installmentloans.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'id', 'Column balance_api_fdw.installmentloans.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'state_code', 'Column balance_api_fdw.installmentloans.state_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'state_code', 'character varying(5)', 'Column balance_api_fdw.installmentloans.state_code should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'state_code', 'Column balance_api_fdw.installmentloans.state_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'state_code', 'Column balance_api_fdw.installmentloans.state_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'loan_amount', 'Column balance_api_fdw.installmentloans.loan_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'loan_amount', 'integer', 'Column balance_api_fdw.installmentloans.loan_amount should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'loan_amount', 'Column balance_api_fdw.installmentloans.loan_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'loan_amount', 'Column balance_api_fdw.installmentloans.loan_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'loan_apr', 'Column balance_api_fdw.installmentloans.loan_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'loan_apr', 'numeric(6,2)', 'Column balance_api_fdw.installmentloans.loan_apr should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'loan_apr', 'Column balance_api_fdw.installmentloans.loan_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'loan_apr', 'Column balance_api_fdw.installmentloans.loan_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'min_payments', 'Column balance_api_fdw.installmentloans.min_payments should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'min_payments', 'integer', 'Column balance_api_fdw.installmentloans.min_payments should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'min_payments', 'Column balance_api_fdw.installmentloans.min_payments should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'min_payments', 'Column balance_api_fdw.installmentloans.min_payments should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'max_payments', 'Column balance_api_fdw.installmentloans.max_payments should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'max_payments', 'integer', 'Column balance_api_fdw.installmentloans.max_payments should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'max_payments', 'Column balance_api_fdw.installmentloans.max_payments should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'max_payments', 'Column balance_api_fdw.installmentloans.max_payments should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'default_payment', 'Column balance_api_fdw.installmentloans.default_payment should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'default_payment', 'integer', 'Column balance_api_fdw.installmentloans.default_payment should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'default_payment', 'Column balance_api_fdw.installmentloans.default_payment should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'default_payment', 'Column balance_api_fdw.installmentloans.default_payment should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'pay_frequency', 'Column balance_api_fdw.installmentloans.pay_frequency should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'pay_frequency', 'character varying(5)', 'Column balance_api_fdw.installmentloans.pay_frequency should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'pay_frequency', 'Column balance_api_fdw.installmentloans.pay_frequency should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'pay_frequency', 'Column balance_api_fdw.installmentloans.pay_frequency should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'record_date', 'Column balance_api_fdw.installmentloans.record_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'record_date', 'date', 'Column balance_api_fdw.installmentloans.record_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'record_date', 'Column balance_api_fdw.installmentloans.record_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'record_date', 'Column balance_api_fdw.installmentloans.record_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'is_active', 'Column balance_api_fdw.installmentloans.is_active should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'is_active', 'boolean', 'Column balance_api_fdw.installmentloans.is_active should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'is_active', 'Column balance_api_fdw.installmentloans.is_active should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'is_active', 'Column balance_api_fdw.installmentloans.is_active should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'cso_apr', 'Column balance_api_fdw.installmentloans.cso_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'cso_apr', 'numeric(6,2)', 'Column balance_api_fdw.installmentloans.cso_apr should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'cso_apr', 'Column balance_api_fdw.installmentloans.cso_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'cso_apr', 'Column balance_api_fdw.installmentloans.cso_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'cso_fee', 'Column balance_api_fdw.installmentloans.cso_fee should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'cso_fee', 'numeric(6,2)', 'Column balance_api_fdw.installmentloans.cso_fee should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'cso_fee', 'Column balance_api_fdw.installmentloans.cso_fee should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'cso_fee', 'Column balance_api_fdw.installmentloans.cso_fee should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans', 'pricing_tier_id', 'Column balance_api_fdw.installmentloans.pricing_tier_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans', 'pricing_tier_id', 'integer', 'Column balance_api_fdw.installmentloans.pricing_tier_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans', 'pricing_tier_id', 'Column balance_api_fdw.installmentloans.pricing_tier_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans', 'pricing_tier_id', 'Column balance_api_fdw.installmentloans.pricing_tier_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
