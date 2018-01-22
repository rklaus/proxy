SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(123);

SELECT has_foreign_table(
    'bsf_prod_origination', 'ev2',
    'Should have foreign table bsf_prod_origination.ev2'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'ev2',
    'Table bsf_prod_origination.ev2 should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'ev2'::name, ARRAY[
    'ev2_key'::name,
    'ev2_id'::name,
    'application_id'::name,
    'customer_identifier'::name,
    'account_number_input'::name,
    'routing_number_input'::name,
    'institution_name'::name,
    'first_name_input'::name,
    'last_name_input'::name,
    'amount_input'::name,
    'is_login_valid'::name,
    'account_number_confidence'::name,
    'is_account_number_match'::name,
    'account_number_found'::name,
    'name_confidence'::name,
    'is_name_match'::name,
    'name_found'::name,
    'is_amount_verified'::name,
    'current_balance_found'::name,
    'available_balance_found'::name,
    'is_verified'::name,
    'bank_type'::name,
    'total_deposits'::name,
    'total_withdrawals'::name,
    'transactions_from_date'::name,
    'transactions_to_date'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_origination', 'ev2', 'ev2_key', 'Column bsf_prod_origination.ev2.ev2_key should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'ev2_key', 'integer', 'Column bsf_prod_origination.ev2.ev2_key should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'ev2_key', 'Column bsf_prod_origination.ev2.ev2_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'ev2_key', 'Column bsf_prod_origination.ev2.ev2_key should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'ev2_id', 'Column bsf_prod_origination.ev2.ev2_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'ev2_id', 'bigint', 'Column bsf_prod_origination.ev2.ev2_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'ev2_id', 'Column bsf_prod_origination.ev2.ev2_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'ev2_id', 'Column bsf_prod_origination.ev2.ev2_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'application_id', 'Column bsf_prod_origination.ev2.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'application_id', 'bigint', 'Column bsf_prod_origination.ev2.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'application_id', 'Column bsf_prod_origination.ev2.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'application_id', 'Column bsf_prod_origination.ev2.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'customer_identifier', 'Column bsf_prod_origination.ev2.customer_identifier should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'customer_identifier', 'text', 'Column bsf_prod_origination.ev2.customer_identifier should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'customer_identifier', 'Column bsf_prod_origination.ev2.customer_identifier should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'customer_identifier', 'Column bsf_prod_origination.ev2.customer_identifier should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'account_number_input', 'Column bsf_prod_origination.ev2.account_number_input should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'account_number_input', 'text', 'Column bsf_prod_origination.ev2.account_number_input should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'account_number_input', 'Column bsf_prod_origination.ev2.account_number_input should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'account_number_input', 'Column bsf_prod_origination.ev2.account_number_input should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'routing_number_input', 'Column bsf_prod_origination.ev2.routing_number_input should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'routing_number_input', 'text', 'Column bsf_prod_origination.ev2.routing_number_input should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'routing_number_input', 'Column bsf_prod_origination.ev2.routing_number_input should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'routing_number_input', 'Column bsf_prod_origination.ev2.routing_number_input should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'institution_name', 'Column bsf_prod_origination.ev2.institution_name should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'institution_name', 'text', 'Column bsf_prod_origination.ev2.institution_name should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'institution_name', 'Column bsf_prod_origination.ev2.institution_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'institution_name', 'Column bsf_prod_origination.ev2.institution_name should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'first_name_input', 'Column bsf_prod_origination.ev2.first_name_input should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'first_name_input', 'text', 'Column bsf_prod_origination.ev2.first_name_input should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'first_name_input', 'Column bsf_prod_origination.ev2.first_name_input should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'first_name_input', 'Column bsf_prod_origination.ev2.first_name_input should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'last_name_input', 'Column bsf_prod_origination.ev2.last_name_input should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'last_name_input', 'text', 'Column bsf_prod_origination.ev2.last_name_input should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'last_name_input', 'Column bsf_prod_origination.ev2.last_name_input should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'last_name_input', 'Column bsf_prod_origination.ev2.last_name_input should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'amount_input', 'Column bsf_prod_origination.ev2.amount_input should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'amount_input', 'numeric', 'Column bsf_prod_origination.ev2.amount_input should be type numeric');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'amount_input', 'Column bsf_prod_origination.ev2.amount_input should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'amount_input', 'Column bsf_prod_origination.ev2.amount_input should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'is_login_valid', 'Column bsf_prod_origination.ev2.is_login_valid should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'is_login_valid', 'boolean', 'Column bsf_prod_origination.ev2.is_login_valid should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'is_login_valid', 'Column bsf_prod_origination.ev2.is_login_valid should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'is_login_valid', 'Column bsf_prod_origination.ev2.is_login_valid should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'account_number_confidence', 'Column bsf_prod_origination.ev2.account_number_confidence should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'account_number_confidence', 'integer', 'Column bsf_prod_origination.ev2.account_number_confidence should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'account_number_confidence', 'Column bsf_prod_origination.ev2.account_number_confidence should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'account_number_confidence', 'Column bsf_prod_origination.ev2.account_number_confidence should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'is_account_number_match', 'Column bsf_prod_origination.ev2.is_account_number_match should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'is_account_number_match', 'boolean', 'Column bsf_prod_origination.ev2.is_account_number_match should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'is_account_number_match', 'Column bsf_prod_origination.ev2.is_account_number_match should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'is_account_number_match', 'Column bsf_prod_origination.ev2.is_account_number_match should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'account_number_found', 'Column bsf_prod_origination.ev2.account_number_found should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'account_number_found', 'text', 'Column bsf_prod_origination.ev2.account_number_found should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'account_number_found', 'Column bsf_prod_origination.ev2.account_number_found should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'account_number_found', 'Column bsf_prod_origination.ev2.account_number_found should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'name_confidence', 'Column bsf_prod_origination.ev2.name_confidence should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'name_confidence', 'integer', 'Column bsf_prod_origination.ev2.name_confidence should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'name_confidence', 'Column bsf_prod_origination.ev2.name_confidence should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'name_confidence', 'Column bsf_prod_origination.ev2.name_confidence should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'is_name_match', 'Column bsf_prod_origination.ev2.is_name_match should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'is_name_match', 'boolean', 'Column bsf_prod_origination.ev2.is_name_match should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'is_name_match', 'Column bsf_prod_origination.ev2.is_name_match should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'is_name_match', 'Column bsf_prod_origination.ev2.is_name_match should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'name_found', 'Column bsf_prod_origination.ev2.name_found should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'name_found', 'text', 'Column bsf_prod_origination.ev2.name_found should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'name_found', 'Column bsf_prod_origination.ev2.name_found should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'name_found', 'Column bsf_prod_origination.ev2.name_found should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'is_amount_verified', 'Column bsf_prod_origination.ev2.is_amount_verified should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'is_amount_verified', 'boolean', 'Column bsf_prod_origination.ev2.is_amount_verified should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'is_amount_verified', 'Column bsf_prod_origination.ev2.is_amount_verified should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'is_amount_verified', 'Column bsf_prod_origination.ev2.is_amount_verified should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'current_balance_found', 'Column bsf_prod_origination.ev2.current_balance_found should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'current_balance_found', 'numeric', 'Column bsf_prod_origination.ev2.current_balance_found should be type numeric');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'current_balance_found', 'Column bsf_prod_origination.ev2.current_balance_found should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'current_balance_found', 'Column bsf_prod_origination.ev2.current_balance_found should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'available_balance_found', 'Column bsf_prod_origination.ev2.available_balance_found should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'available_balance_found', 'numeric', 'Column bsf_prod_origination.ev2.available_balance_found should be type numeric');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'available_balance_found', 'Column bsf_prod_origination.ev2.available_balance_found should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'available_balance_found', 'Column bsf_prod_origination.ev2.available_balance_found should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'is_verified', 'Column bsf_prod_origination.ev2.is_verified should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'is_verified', 'boolean', 'Column bsf_prod_origination.ev2.is_verified should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'is_verified', 'Column bsf_prod_origination.ev2.is_verified should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'is_verified', 'Column bsf_prod_origination.ev2.is_verified should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'bank_type', 'Column bsf_prod_origination.ev2.bank_type should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'bank_type', 'text', 'Column bsf_prod_origination.ev2.bank_type should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'bank_type', 'Column bsf_prod_origination.ev2.bank_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'bank_type', 'Column bsf_prod_origination.ev2.bank_type should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'total_deposits', 'Column bsf_prod_origination.ev2.total_deposits should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'total_deposits', 'numeric', 'Column bsf_prod_origination.ev2.total_deposits should be type numeric');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'total_deposits', 'Column bsf_prod_origination.ev2.total_deposits should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'total_deposits', 'Column bsf_prod_origination.ev2.total_deposits should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'total_withdrawals', 'Column bsf_prod_origination.ev2.total_withdrawals should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'total_withdrawals', 'numeric', 'Column bsf_prod_origination.ev2.total_withdrawals should be type numeric');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'total_withdrawals', 'Column bsf_prod_origination.ev2.total_withdrawals should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'total_withdrawals', 'Column bsf_prod_origination.ev2.total_withdrawals should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'transactions_from_date', 'Column bsf_prod_origination.ev2.transactions_from_date should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'transactions_from_date', 'timestamp with time zone', 'Column bsf_prod_origination.ev2.transactions_from_date should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'transactions_from_date', 'Column bsf_prod_origination.ev2.transactions_from_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'transactions_from_date', 'Column bsf_prod_origination.ev2.transactions_from_date should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'transactions_to_date', 'Column bsf_prod_origination.ev2.transactions_to_date should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'transactions_to_date', 'timestamp with time zone', 'Column bsf_prod_origination.ev2.transactions_to_date should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'transactions_to_date', 'Column bsf_prod_origination.ev2.transactions_to_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'transactions_to_date', 'Column bsf_prod_origination.ev2.transactions_to_date should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'last_updated', 'Column bsf_prod_origination.ev2.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.ev2.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'last_updated', 'Column bsf_prod_origination.ev2.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'last_updated', 'Column bsf_prod_origination.ev2.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'effective', 'Column bsf_prod_origination.ev2.effective should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.ev2.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'effective', 'Column bsf_prod_origination.ev2.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'effective', 'Column bsf_prod_origination.ev2.effective should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'asserted', 'Column bsf_prod_origination.ev2.asserted should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.ev2.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'asserted', 'Column bsf_prod_origination.ev2.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'asserted', 'Column bsf_prod_origination.ev2.asserted should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'ev2', 'row_created_at', 'Column bsf_prod_origination.ev2.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'ev2', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_origination.ev2.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'ev2', 'row_created_at', 'Column bsf_prod_origination.ev2.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'ev2', 'row_created_at', 'Column bsf_prod_origination.ev2.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
