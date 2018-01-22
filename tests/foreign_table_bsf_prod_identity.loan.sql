SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(79);

SELECT has_foreign_table(
    'bsf_prod_identity', 'loan',
    'Should have foreign table bsf_prod_identity.loan'
);

SELECT hasnt_pk(
    'bsf_prod_identity', 'loan',
    'Table bsf_prod_identity.loan should have a primary key'
);

SELECT columns_are('bsf_prod_identity'::name, 'loan'::name, ARRAY[
    'loan_key'::name,
    'user_account_id'::name,
    'loan_pro_loan_id'::name,
    'loan_status'::name,
    'loan_substatus'::name,
    'loan_effective_date'::name,
    'loan_payoff_date'::name,
    'application_id'::name,
    'last_updated'::name,
    'initial_loan_amount'::name,
    'remaining_loan_balance'::name,
    'last_payment_due_date'::name,
    'last_payment_amount'::name,
    'next_payment_due_date'::name,
    'next_payment_amount'::name,
    'product'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_identity', 'loan', 'loan_key', 'Column bsf_prod_identity.loan.loan_key should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'loan_key', 'integer', 'Column bsf_prod_identity.loan.loan_key should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'loan_key', 'Column bsf_prod_identity.loan.loan_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'loan_key', 'Column bsf_prod_identity.loan.loan_key should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'user_account_id', 'Column bsf_prod_identity.loan.user_account_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'user_account_id', 'bigint', 'Column bsf_prod_identity.loan.user_account_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'user_account_id', 'Column bsf_prod_identity.loan.user_account_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'user_account_id', 'Column bsf_prod_identity.loan.user_account_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'loan_pro_loan_id', 'Column bsf_prod_identity.loan.loan_pro_loan_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'loan_pro_loan_id', 'bigint', 'Column bsf_prod_identity.loan.loan_pro_loan_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'loan_pro_loan_id', 'Column bsf_prod_identity.loan.loan_pro_loan_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'loan_pro_loan_id', 'Column bsf_prod_identity.loan.loan_pro_loan_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'loan_status', 'Column bsf_prod_identity.loan.loan_status should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'loan_status', 'text', 'Column bsf_prod_identity.loan.loan_status should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'loan_status', 'Column bsf_prod_identity.loan.loan_status should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'loan_status', 'Column bsf_prod_identity.loan.loan_status should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'loan_substatus', 'Column bsf_prod_identity.loan.loan_substatus should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'loan_substatus', 'text', 'Column bsf_prod_identity.loan.loan_substatus should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'loan_substatus', 'Column bsf_prod_identity.loan.loan_substatus should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'loan_substatus', 'Column bsf_prod_identity.loan.loan_substatus should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'loan_effective_date', 'Column bsf_prod_identity.loan.loan_effective_date should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'loan_effective_date', 'date', 'Column bsf_prod_identity.loan.loan_effective_date should be type date');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'loan_effective_date', 'Column bsf_prod_identity.loan.loan_effective_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'loan_effective_date', 'Column bsf_prod_identity.loan.loan_effective_date should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'loan_payoff_date', 'Column bsf_prod_identity.loan.loan_payoff_date should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'loan_payoff_date', 'date', 'Column bsf_prod_identity.loan.loan_payoff_date should be type date');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'loan_payoff_date', 'Column bsf_prod_identity.loan.loan_payoff_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'loan_payoff_date', 'Column bsf_prod_identity.loan.loan_payoff_date should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'application_id', 'Column bsf_prod_identity.loan.application_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'application_id', 'integer', 'Column bsf_prod_identity.loan.application_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'application_id', 'Column bsf_prod_identity.loan.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'application_id', 'Column bsf_prod_identity.loan.application_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'last_updated', 'Column bsf_prod_identity.loan.last_updated should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_identity.loan.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'last_updated', 'Column bsf_prod_identity.loan.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'last_updated', 'Column bsf_prod_identity.loan.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'initial_loan_amount', 'Column bsf_prod_identity.loan.initial_loan_amount should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'initial_loan_amount', 'numeric(7,2)', 'Column bsf_prod_identity.loan.initial_loan_amount should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'initial_loan_amount', 'Column bsf_prod_identity.loan.initial_loan_amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'initial_loan_amount', 'Column bsf_prod_identity.loan.initial_loan_amount should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'remaining_loan_balance', 'Column bsf_prod_identity.loan.remaining_loan_balance should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'remaining_loan_balance', 'numeric(7,2)', 'Column bsf_prod_identity.loan.remaining_loan_balance should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'remaining_loan_balance', 'Column bsf_prod_identity.loan.remaining_loan_balance should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'remaining_loan_balance', 'Column bsf_prod_identity.loan.remaining_loan_balance should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'last_payment_due_date', 'Column bsf_prod_identity.loan.last_payment_due_date should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'last_payment_due_date', 'date', 'Column bsf_prod_identity.loan.last_payment_due_date should be type date');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'last_payment_due_date', 'Column bsf_prod_identity.loan.last_payment_due_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'last_payment_due_date', 'Column bsf_prod_identity.loan.last_payment_due_date should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'last_payment_amount', 'Column bsf_prod_identity.loan.last_payment_amount should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'last_payment_amount', 'numeric(7,2)', 'Column bsf_prod_identity.loan.last_payment_amount should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'last_payment_amount', 'Column bsf_prod_identity.loan.last_payment_amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'last_payment_amount', 'Column bsf_prod_identity.loan.last_payment_amount should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'next_payment_due_date', 'Column bsf_prod_identity.loan.next_payment_due_date should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'next_payment_due_date', 'date', 'Column bsf_prod_identity.loan.next_payment_due_date should be type date');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'next_payment_due_date', 'Column bsf_prod_identity.loan.next_payment_due_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'next_payment_due_date', 'Column bsf_prod_identity.loan.next_payment_due_date should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'next_payment_amount', 'Column bsf_prod_identity.loan.next_payment_amount should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'next_payment_amount', 'numeric(7,2)', 'Column bsf_prod_identity.loan.next_payment_amount should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'next_payment_amount', 'Column bsf_prod_identity.loan.next_payment_amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'next_payment_amount', 'Column bsf_prod_identity.loan.next_payment_amount should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'product', 'Column bsf_prod_identity.loan.product should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'product', 'text', 'Column bsf_prod_identity.loan.product should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'product', 'Column bsf_prod_identity.loan.product should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'product', 'Column bsf_prod_identity.loan.product should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'effective', 'Column bsf_prod_identity.loan.effective should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.loan.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'effective', 'Column bsf_prod_identity.loan.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'effective', 'Column bsf_prod_identity.loan.effective should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'asserted', 'Column bsf_prod_identity.loan.asserted should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.loan.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'asserted', 'Column bsf_prod_identity.loan.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'asserted', 'Column bsf_prod_identity.loan.asserted should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'loan', 'row_created_at', 'Column bsf_prod_identity.loan.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_identity', 'loan', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_identity.loan.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'loan', 'row_created_at', 'Column bsf_prod_identity.loan.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'loan', 'row_created_at', 'Column bsf_prod_identity.loan.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
