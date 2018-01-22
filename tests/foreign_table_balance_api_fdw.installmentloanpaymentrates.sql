SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'balance_api_fdw', 'installmentloanpaymentrates',
    'Should have foreign table balance_api_fdw.installmentloanpaymentrates'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'installmentloanpaymentrates',
    'Table balance_api_fdw.installmentloanpaymentrates should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'installmentloanpaymentrates'::name, ARRAY[
    'id'::name,
    'parent_id'::name,
    'apr'::name,
    'number_of_payments'::name,
    'cso_apr'::name,
    'cso_fee'::name
]);

SELECT has_column(       'balance_api_fdw', 'installmentloanpaymentrates', 'id', 'Column balance_api_fdw.installmentloanpaymentrates.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloanpaymentrates', 'id', 'integer', 'Column balance_api_fdw.installmentloanpaymentrates.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloanpaymentrates', 'id', 'Column balance_api_fdw.installmentloanpaymentrates.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloanpaymentrates', 'id', 'Column balance_api_fdw.installmentloanpaymentrates.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloanpaymentrates', 'parent_id', 'Column balance_api_fdw.installmentloanpaymentrates.parent_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloanpaymentrates', 'parent_id', 'integer', 'Column balance_api_fdw.installmentloanpaymentrates.parent_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloanpaymentrates', 'parent_id', 'Column balance_api_fdw.installmentloanpaymentrates.parent_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloanpaymentrates', 'parent_id', 'Column balance_api_fdw.installmentloanpaymentrates.parent_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloanpaymentrates', 'apr', 'Column balance_api_fdw.installmentloanpaymentrates.apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloanpaymentrates', 'apr', 'numeric(6,2)', 'Column balance_api_fdw.installmentloanpaymentrates.apr should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloanpaymentrates', 'apr', 'Column balance_api_fdw.installmentloanpaymentrates.apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloanpaymentrates', 'apr', 'Column balance_api_fdw.installmentloanpaymentrates.apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloanpaymentrates', 'number_of_payments', 'Column balance_api_fdw.installmentloanpaymentrates.number_of_payments should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloanpaymentrates', 'number_of_payments', 'integer', 'Column balance_api_fdw.installmentloanpaymentrates.number_of_payments should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'installmentloanpaymentrates', 'number_of_payments', 'Column balance_api_fdw.installmentloanpaymentrates.number_of_payments should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloanpaymentrates', 'number_of_payments', 'Column balance_api_fdw.installmentloanpaymentrates.number_of_payments should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloanpaymentrates', 'cso_apr', 'Column balance_api_fdw.installmentloanpaymentrates.cso_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloanpaymentrates', 'cso_apr', 'numeric(6,2)', 'Column balance_api_fdw.installmentloanpaymentrates.cso_apr should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloanpaymentrates', 'cso_apr', 'Column balance_api_fdw.installmentloanpaymentrates.cso_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloanpaymentrates', 'cso_apr', 'Column balance_api_fdw.installmentloanpaymentrates.cso_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'installmentloanpaymentrates', 'cso_fee', 'Column balance_api_fdw.installmentloanpaymentrates.cso_fee should exist');
SELECT col_type_is(      'balance_api_fdw', 'installmentloanpaymentrates', 'cso_fee', 'numeric(6,2)', 'Column balance_api_fdw.installmentloanpaymentrates.cso_fee should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'installmentloanpaymentrates', 'cso_fee', 'Column balance_api_fdw.installmentloanpaymentrates.cso_fee should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'installmentloanpaymentrates', 'cso_fee', 'Column balance_api_fdw.installmentloanpaymentrates.cso_fee should not  have a default');

SELECT * FROM finish();
ROLLBACK;
