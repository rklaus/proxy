SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(67);

SELECT has_foreign_table(
    'bsf_prod_origination', 'offer',
    'Should have foreign table bsf_prod_origination.offer'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'offer',
    'Table bsf_prod_origination.offer should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'offer'::name, ARRAY[
    'offer_key'::name,
    'offer_id'::name,
    'take_home_amount'::name,
    'loan_apr'::name,
    'origination_fee'::name,
    'loan_amount'::name,
    'loan_duration_months'::name,
    'regular_payment'::name,
    'last_payment'::name,
    'interest_rate'::name,
    'finance_charge'::name,
    'total_repayment'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_origination', 'offer', 'offer_key', 'Column bsf_prod_origination.offer.offer_key should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'offer_key', 'integer', 'Column bsf_prod_origination.offer.offer_key should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'offer_key', 'Column bsf_prod_origination.offer.offer_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'offer_key', 'Column bsf_prod_origination.offer.offer_key should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'offer_id', 'Column bsf_prod_origination.offer.offer_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'offer_id', 'bigint', 'Column bsf_prod_origination.offer.offer_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'offer_id', 'Column bsf_prod_origination.offer.offer_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'offer_id', 'Column bsf_prod_origination.offer.offer_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'take_home_amount', 'Column bsf_prod_origination.offer.take_home_amount should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'take_home_amount', 'numeric(7,2)', 'Column bsf_prod_origination.offer.take_home_amount should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'take_home_amount', 'Column bsf_prod_origination.offer.take_home_amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'take_home_amount', 'Column bsf_prod_origination.offer.take_home_amount should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'loan_apr', 'Column bsf_prod_origination.offer.loan_apr should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'loan_apr', 'numeric(9,4)', 'Column bsf_prod_origination.offer.loan_apr should be type numeric(9,4)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'loan_apr', 'Column bsf_prod_origination.offer.loan_apr should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'loan_apr', 'Column bsf_prod_origination.offer.loan_apr should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'origination_fee', 'Column bsf_prod_origination.offer.origination_fee should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'origination_fee', 'numeric(7,2)', 'Column bsf_prod_origination.offer.origination_fee should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'origination_fee', 'Column bsf_prod_origination.offer.origination_fee should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'origination_fee', 'Column bsf_prod_origination.offer.origination_fee should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'loan_amount', 'Column bsf_prod_origination.offer.loan_amount should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'loan_amount', 'numeric(7,2)', 'Column bsf_prod_origination.offer.loan_amount should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'loan_amount', 'Column bsf_prod_origination.offer.loan_amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'loan_amount', 'Column bsf_prod_origination.offer.loan_amount should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'loan_duration_months', 'Column bsf_prod_origination.offer.loan_duration_months should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'loan_duration_months', 'integer', 'Column bsf_prod_origination.offer.loan_duration_months should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'loan_duration_months', 'Column bsf_prod_origination.offer.loan_duration_months should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'loan_duration_months', 'Column bsf_prod_origination.offer.loan_duration_months should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'regular_payment', 'Column bsf_prod_origination.offer.regular_payment should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'regular_payment', 'numeric(7,2)', 'Column bsf_prod_origination.offer.regular_payment should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'regular_payment', 'Column bsf_prod_origination.offer.regular_payment should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'regular_payment', 'Column bsf_prod_origination.offer.regular_payment should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'last_payment', 'Column bsf_prod_origination.offer.last_payment should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'last_payment', 'numeric(7,2)', 'Column bsf_prod_origination.offer.last_payment should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'last_payment', 'Column bsf_prod_origination.offer.last_payment should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'last_payment', 'Column bsf_prod_origination.offer.last_payment should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'interest_rate', 'Column bsf_prod_origination.offer.interest_rate should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'interest_rate', 'numeric(9,4)', 'Column bsf_prod_origination.offer.interest_rate should be type numeric(9,4)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'interest_rate', 'Column bsf_prod_origination.offer.interest_rate should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'interest_rate', 'Column bsf_prod_origination.offer.interest_rate should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'finance_charge', 'Column bsf_prod_origination.offer.finance_charge should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'finance_charge', 'numeric(7,2)', 'Column bsf_prod_origination.offer.finance_charge should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'finance_charge', 'Column bsf_prod_origination.offer.finance_charge should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'finance_charge', 'Column bsf_prod_origination.offer.finance_charge should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'total_repayment', 'Column bsf_prod_origination.offer.total_repayment should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'total_repayment', 'numeric(7,2)', 'Column bsf_prod_origination.offer.total_repayment should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'total_repayment', 'Column bsf_prod_origination.offer.total_repayment should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'total_repayment', 'Column bsf_prod_origination.offer.total_repayment should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'last_updated', 'Column bsf_prod_origination.offer.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.offer.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'last_updated', 'Column bsf_prod_origination.offer.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'last_updated', 'Column bsf_prod_origination.offer.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'effective', 'Column bsf_prod_origination.offer.effective should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.offer.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'effective', 'Column bsf_prod_origination.offer.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'effective', 'Column bsf_prod_origination.offer.effective should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'asserted', 'Column bsf_prod_origination.offer.asserted should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.offer.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'asserted', 'Column bsf_prod_origination.offer.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'asserted', 'Column bsf_prod_origination.offer.asserted should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'offer', 'row_created_at', 'Column bsf_prod_origination.offer.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'offer', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_origination.offer.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'offer', 'row_created_at', 'Column bsf_prod_origination.offer.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'offer', 'row_created_at', 'Column bsf_prod_origination.offer.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
