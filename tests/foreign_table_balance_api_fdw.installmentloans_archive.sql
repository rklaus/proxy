SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'balance_api_fdw', 'installmentloans_archive',
    'Should have foreign table balance_api_fdw.installmentloans_archive'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'installmentloans_archive',
    'Table balance_api_fdw.installmentloans_archive should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'installmentloans_archive'::name, ARRAY[
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

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'id', 'Column balance_api_fdw.installmentloans_archive.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'id', 'integer', 'Column balance_api_fdw.installmentloans_archive.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'id', 'Column balance_api_fdw.installmentloans_archive.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'id', 'Column balance_api_fdw.installmentloans_archive.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'state_code', 'Column balance_api_fdw.installmentloans_archive.state_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'state_code', 'character varying(5)', 'Column balance_api_fdw.installmentloans_archive.state_code should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'state_code', 'Column balance_api_fdw.installmentloans_archive.state_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'state_code', 'Column balance_api_fdw.installmentloans_archive.state_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'loan_amount', 'Column balance_api_fdw.installmentloans_archive.loan_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'loan_amount', 'integer', 'Column balance_api_fdw.installmentloans_archive.loan_amount should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'loan_amount', 'Column balance_api_fdw.installmentloans_archive.loan_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'loan_amount', 'Column balance_api_fdw.installmentloans_archive.loan_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'loan_apr', 'Column balance_api_fdw.installmentloans_archive.loan_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'loan_apr', 'numeric(6,2)', 'Column balance_api_fdw.installmentloans_archive.loan_apr should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'loan_apr', 'Column balance_api_fdw.installmentloans_archive.loan_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'loan_apr', 'Column balance_api_fdw.installmentloans_archive.loan_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'min_payments', 'Column balance_api_fdw.installmentloans_archive.min_payments should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'min_payments', 'integer', 'Column balance_api_fdw.installmentloans_archive.min_payments should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'min_payments', 'Column balance_api_fdw.installmentloans_archive.min_payments should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'min_payments', 'Column balance_api_fdw.installmentloans_archive.min_payments should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'max_payments', 'Column balance_api_fdw.installmentloans_archive.max_payments should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'max_payments', 'integer', 'Column balance_api_fdw.installmentloans_archive.max_payments should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'max_payments', 'Column balance_api_fdw.installmentloans_archive.max_payments should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'max_payments', 'Column balance_api_fdw.installmentloans_archive.max_payments should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'default_payment', 'Column balance_api_fdw.installmentloans_archive.default_payment should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'default_payment', 'integer', 'Column balance_api_fdw.installmentloans_archive.default_payment should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'default_payment', 'Column balance_api_fdw.installmentloans_archive.default_payment should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'default_payment', 'Column balance_api_fdw.installmentloans_archive.default_payment should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'pay_frequency', 'Column balance_api_fdw.installmentloans_archive.pay_frequency should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'pay_frequency', 'character varying(5)', 'Column balance_api_fdw.installmentloans_archive.pay_frequency should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'pay_frequency', 'Column balance_api_fdw.installmentloans_archive.pay_frequency should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'pay_frequency', 'Column balance_api_fdw.installmentloans_archive.pay_frequency should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'record_date', 'Column balance_api_fdw.installmentloans_archive.record_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'record_date', 'date', 'Column balance_api_fdw.installmentloans_archive.record_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'record_date', 'Column balance_api_fdw.installmentloans_archive.record_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'record_date', 'Column balance_api_fdw.installmentloans_archive.record_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'is_active', 'Column balance_api_fdw.installmentloans_archive.is_active should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'is_active', 'boolean', 'Column balance_api_fdw.installmentloans_archive.is_active should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'is_active', 'Column balance_api_fdw.installmentloans_archive.is_active should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'is_active', 'Column balance_api_fdw.installmentloans_archive.is_active should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'cso_apr', 'Column balance_api_fdw.installmentloans_archive.cso_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'cso_apr', 'numeric(6,2)', 'Column balance_api_fdw.installmentloans_archive.cso_apr should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'cso_apr', 'Column balance_api_fdw.installmentloans_archive.cso_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'cso_apr', 'Column balance_api_fdw.installmentloans_archive.cso_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'cso_fee', 'Column balance_api_fdw.installmentloans_archive.cso_fee should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'cso_fee', 'numeric(6,2)', 'Column balance_api_fdw.installmentloans_archive.cso_fee should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'cso_fee', 'Column balance_api_fdw.installmentloans_archive.cso_fee should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'cso_fee', 'Column balance_api_fdw.installmentloans_archive.cso_fee should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloans_archive', 'pricing_tier_id', 'Column balance_api_fdw.installmentloans_archive.pricing_tier_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloans_archive', 'pricing_tier_id', 'integer', 'Column balance_api_fdw.installmentloans_archive.pricing_tier_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloans_archive', 'pricing_tier_id', 'Column balance_api_fdw.installmentloans_archive.pricing_tier_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloans_archive', 'pricing_tier_id', 'Column balance_api_fdw.installmentloans_archive.pricing_tier_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
