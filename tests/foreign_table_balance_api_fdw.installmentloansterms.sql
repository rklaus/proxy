SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'balance_api_fdw', 'installmentloansterms',
    'Should have foreign table balance_api_fdw.installmentloansterms'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'installmentloansterms',
    'Table balance_api_fdw.installmentloansterms should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'installmentloansterms'::name, ARRAY[
    'id'::name,
    'state_code'::name,
    'loan_amount'::name,
    'payment_number'::name,
    'bi_weekly_payment'::name,
    'semi_monthly_payment'::name,
    'record_date'::name
]);

SELECT has_column(       'balance_api_fdw', 'installmentloansterms', 'id', 'Column balance_api_fdw.installmentloansterms.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloansterms', 'id', 'integer', 'Column balance_api_fdw.installmentloansterms.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloansterms', 'id', 'Column balance_api_fdw.installmentloansterms.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloansterms', 'id', 'Column balance_api_fdw.installmentloansterms.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloansterms', 'state_code', 'Column balance_api_fdw.installmentloansterms.state_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloansterms', 'state_code', 'character varying(5)', 'Column balance_api_fdw.installmentloansterms.state_code should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloansterms', 'state_code', 'Column balance_api_fdw.installmentloansterms.state_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloansterms', 'state_code', 'Column balance_api_fdw.installmentloansterms.state_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloansterms', 'loan_amount', 'Column balance_api_fdw.installmentloansterms.loan_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloansterms', 'loan_amount', 'integer', 'Column balance_api_fdw.installmentloansterms.loan_amount should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloansterms', 'loan_amount', 'Column balance_api_fdw.installmentloansterms.loan_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloansterms', 'loan_amount', 'Column balance_api_fdw.installmentloansterms.loan_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloansterms', 'payment_number', 'Column balance_api_fdw.installmentloansterms.payment_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloansterms', 'payment_number', 'integer', 'Column balance_api_fdw.installmentloansterms.payment_number should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloansterms', 'payment_number', 'Column balance_api_fdw.installmentloansterms.payment_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloansterms', 'payment_number', 'Column balance_api_fdw.installmentloansterms.payment_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloansterms', 'bi_weekly_payment', 'Column balance_api_fdw.installmentloansterms.bi_weekly_payment should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloansterms', 'bi_weekly_payment', 'numeric(6,2)', 'Column balance_api_fdw.installmentloansterms.bi_weekly_payment should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloansterms', 'bi_weekly_payment', 'Column balance_api_fdw.installmentloansterms.bi_weekly_payment should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloansterms', 'bi_weekly_payment', 'Column balance_api_fdw.installmentloansterms.bi_weekly_payment should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloansterms', 'semi_monthly_payment', 'Column balance_api_fdw.installmentloansterms.semi_monthly_payment should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloansterms', 'semi_monthly_payment', 'numeric(6,2)', 'Column balance_api_fdw.installmentloansterms.semi_monthly_payment should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloansterms', 'semi_monthly_payment', 'Column balance_api_fdw.installmentloansterms.semi_monthly_payment should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloansterms', 'semi_monthly_payment', 'Column balance_api_fdw.installmentloansterms.semi_monthly_payment should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloansterms', 'record_date', 'Column balance_api_fdw.installmentloansterms.record_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloansterms', 'record_date', 'date', 'Column balance_api_fdw.installmentloansterms.record_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'installmentloansterms', 'record_date', 'Column balance_api_fdw.installmentloansterms.record_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloansterms', 'record_date', 'Column balance_api_fdw.installmentloansterms.record_date should not  have a default');

SELECT * FROM finish();
ROLLBACK;
