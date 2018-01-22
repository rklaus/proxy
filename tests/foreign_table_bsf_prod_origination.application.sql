SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(219);

SELECT has_foreign_table(
    'bsf_prod_origination', 'application',
    'Should have foreign table bsf_prod_origination.application'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'application',
    'Table bsf_prod_origination.application should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'application'::name, ARRAY[
    'application_key'::name,
    'application_id'::name,
    'email_address'::name,
    'user_account_id'::name,
    'primary_addr_city'::name,
    'primary_addr_state_id'::name,
    'primary_addr_line1'::name,
    'primary_addr_line2'::name,
    'primary_addr_zip'::name,
    'primary_phone'::name,
    'primary_phone_type_id'::name,
    'secondary_phone'::name,
    'secondary_phone_type_id'::name,
    'ssn'::name,
    'dob'::name,
    'first_name'::name,
    'last_name'::name,
    'middle_initial'::name,
    'own_property'::name,
    'rent'::name,
    'loan_purpose_id'::name,
    'desired_loan_amount'::name,
    'income_source_id'::name,
    'employer_name'::name,
    'employer_phone'::name,
    'take_home_amount'::name,
    'employment_duration_id'::name,
    'payment_frequency_id'::name,
    'pay_dates'::name,
    'bank_account_type_id'::name,
    'time_at_address_id'::name,
    'product'::name,
    'brand'::name,
    'match_1_status'::name,
    'match_2_status'::name,
    'application_sub_status_id'::name,
    'last_updated'::name,
    'final_disclosure_at'::name,
    'final_disclosure_flag'::name,
    'bank_name'::name,
    'name_on_account'::name,
    'is_checking'::name,
    'routing_number'::name,
    'account_number'::name,
    'account_number_confirm'::name,
    'selected_offer_id'::name,
    'offer_selected_at'::name,
    'campaign'::name,
    'expiration_date'::name,
    'selected_preapproval_id'::name,
    'payment_method_id'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_origination', 'application', 'application_key', 'Column bsf_prod_origination.application.application_key should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'application_key', 'integer', 'Column bsf_prod_origination.application.application_key should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'application_key', 'Column bsf_prod_origination.application.application_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'application_key', 'Column bsf_prod_origination.application.application_key should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'application_id', 'Column bsf_prod_origination.application.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'application_id', 'bigint', 'Column bsf_prod_origination.application.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'application_id', 'Column bsf_prod_origination.application.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'application_id', 'Column bsf_prod_origination.application.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'email_address', 'Column bsf_prod_origination.application.email_address should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'email_address', 'text', 'Column bsf_prod_origination.application.email_address should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'email_address', 'Column bsf_prod_origination.application.email_address should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'email_address', 'Column bsf_prod_origination.application.email_address should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'user_account_id', 'Column bsf_prod_origination.application.user_account_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'user_account_id', 'integer', 'Column bsf_prod_origination.application.user_account_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'user_account_id', 'Column bsf_prod_origination.application.user_account_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'user_account_id', 'Column bsf_prod_origination.application.user_account_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'primary_addr_city', 'Column bsf_prod_origination.application.primary_addr_city should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'primary_addr_city', 'text', 'Column bsf_prod_origination.application.primary_addr_city should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'primary_addr_city', 'Column bsf_prod_origination.application.primary_addr_city should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'primary_addr_city', 'Column bsf_prod_origination.application.primary_addr_city should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'primary_addr_state_id', 'Column bsf_prod_origination.application.primary_addr_state_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'primary_addr_state_id', 'integer', 'Column bsf_prod_origination.application.primary_addr_state_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'primary_addr_state_id', 'Column bsf_prod_origination.application.primary_addr_state_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'primary_addr_state_id', 'Column bsf_prod_origination.application.primary_addr_state_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'primary_addr_line1', 'Column bsf_prod_origination.application.primary_addr_line1 should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'primary_addr_line1', 'text', 'Column bsf_prod_origination.application.primary_addr_line1 should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'primary_addr_line1', 'Column bsf_prod_origination.application.primary_addr_line1 should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'primary_addr_line1', 'Column bsf_prod_origination.application.primary_addr_line1 should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'primary_addr_line2', 'Column bsf_prod_origination.application.primary_addr_line2 should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'primary_addr_line2', 'text', 'Column bsf_prod_origination.application.primary_addr_line2 should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'primary_addr_line2', 'Column bsf_prod_origination.application.primary_addr_line2 should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'primary_addr_line2', 'Column bsf_prod_origination.application.primary_addr_line2 should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'primary_addr_zip', 'Column bsf_prod_origination.application.primary_addr_zip should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'primary_addr_zip', 'text', 'Column bsf_prod_origination.application.primary_addr_zip should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'primary_addr_zip', 'Column bsf_prod_origination.application.primary_addr_zip should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'primary_addr_zip', 'Column bsf_prod_origination.application.primary_addr_zip should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'primary_phone', 'Column bsf_prod_origination.application.primary_phone should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'primary_phone', 'text', 'Column bsf_prod_origination.application.primary_phone should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'primary_phone', 'Column bsf_prod_origination.application.primary_phone should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'primary_phone', 'Column bsf_prod_origination.application.primary_phone should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'primary_phone_type_id', 'Column bsf_prod_origination.application.primary_phone_type_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'primary_phone_type_id', 'integer', 'Column bsf_prod_origination.application.primary_phone_type_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'primary_phone_type_id', 'Column bsf_prod_origination.application.primary_phone_type_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'primary_phone_type_id', 'Column bsf_prod_origination.application.primary_phone_type_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'secondary_phone', 'Column bsf_prod_origination.application.secondary_phone should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'secondary_phone', 'text', 'Column bsf_prod_origination.application.secondary_phone should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'secondary_phone', 'Column bsf_prod_origination.application.secondary_phone should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'secondary_phone', 'Column bsf_prod_origination.application.secondary_phone should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'secondary_phone_type_id', 'Column bsf_prod_origination.application.secondary_phone_type_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'secondary_phone_type_id', 'integer', 'Column bsf_prod_origination.application.secondary_phone_type_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'secondary_phone_type_id', 'Column bsf_prod_origination.application.secondary_phone_type_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'secondary_phone_type_id', 'Column bsf_prod_origination.application.secondary_phone_type_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'ssn', 'Column bsf_prod_origination.application.ssn should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'ssn', 'character varying(9)', 'Column bsf_prod_origination.application.ssn should be type character varying(9)');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'ssn', 'Column bsf_prod_origination.application.ssn should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'ssn', 'Column bsf_prod_origination.application.ssn should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'dob', 'Column bsf_prod_origination.application.dob should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'dob', 'date', 'Column bsf_prod_origination.application.dob should be type date');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'dob', 'Column bsf_prod_origination.application.dob should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'dob', 'Column bsf_prod_origination.application.dob should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'first_name', 'Column bsf_prod_origination.application.first_name should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'first_name', 'text', 'Column bsf_prod_origination.application.first_name should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'first_name', 'Column bsf_prod_origination.application.first_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'first_name', 'Column bsf_prod_origination.application.first_name should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'last_name', 'Column bsf_prod_origination.application.last_name should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'last_name', 'text', 'Column bsf_prod_origination.application.last_name should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'last_name', 'Column bsf_prod_origination.application.last_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'last_name', 'Column bsf_prod_origination.application.last_name should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'middle_initial', 'Column bsf_prod_origination.application.middle_initial should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'middle_initial', 'character(1)', 'Column bsf_prod_origination.application.middle_initial should be type character(1)');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'middle_initial', 'Column bsf_prod_origination.application.middle_initial should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'middle_initial', 'Column bsf_prod_origination.application.middle_initial should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'own_property', 'Column bsf_prod_origination.application.own_property should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'own_property', 'boolean', 'Column bsf_prod_origination.application.own_property should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'own_property', 'Column bsf_prod_origination.application.own_property should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'own_property', 'Column bsf_prod_origination.application.own_property should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'rent', 'Column bsf_prod_origination.application.rent should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'rent', 'boolean', 'Column bsf_prod_origination.application.rent should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'rent', 'Column bsf_prod_origination.application.rent should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'rent', 'Column bsf_prod_origination.application.rent should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'loan_purpose_id', 'Column bsf_prod_origination.application.loan_purpose_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'loan_purpose_id', 'integer', 'Column bsf_prod_origination.application.loan_purpose_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'loan_purpose_id', 'Column bsf_prod_origination.application.loan_purpose_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'loan_purpose_id', 'Column bsf_prod_origination.application.loan_purpose_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'desired_loan_amount', 'Column bsf_prod_origination.application.desired_loan_amount should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'desired_loan_amount', 'numeric(7,2)', 'Column bsf_prod_origination.application.desired_loan_amount should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'desired_loan_amount', 'Column bsf_prod_origination.application.desired_loan_amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'desired_loan_amount', 'Column bsf_prod_origination.application.desired_loan_amount should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'income_source_id', 'Column bsf_prod_origination.application.income_source_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'income_source_id', 'integer', 'Column bsf_prod_origination.application.income_source_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'income_source_id', 'Column bsf_prod_origination.application.income_source_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'income_source_id', 'Column bsf_prod_origination.application.income_source_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'employer_name', 'Column bsf_prod_origination.application.employer_name should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'employer_name', 'text', 'Column bsf_prod_origination.application.employer_name should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'employer_name', 'Column bsf_prod_origination.application.employer_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'employer_name', 'Column bsf_prod_origination.application.employer_name should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'employer_phone', 'Column bsf_prod_origination.application.employer_phone should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'employer_phone', 'text', 'Column bsf_prod_origination.application.employer_phone should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'employer_phone', 'Column bsf_prod_origination.application.employer_phone should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'employer_phone', 'Column bsf_prod_origination.application.employer_phone should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'take_home_amount', 'Column bsf_prod_origination.application.take_home_amount should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'take_home_amount', 'numeric(7,2)', 'Column bsf_prod_origination.application.take_home_amount should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'take_home_amount', 'Column bsf_prod_origination.application.take_home_amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'take_home_amount', 'Column bsf_prod_origination.application.take_home_amount should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'employment_duration_id', 'Column bsf_prod_origination.application.employment_duration_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'employment_duration_id', 'integer', 'Column bsf_prod_origination.application.employment_duration_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'employment_duration_id', 'Column bsf_prod_origination.application.employment_duration_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'employment_duration_id', 'Column bsf_prod_origination.application.employment_duration_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'payment_frequency_id', 'Column bsf_prod_origination.application.payment_frequency_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'payment_frequency_id', 'integer', 'Column bsf_prod_origination.application.payment_frequency_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'payment_frequency_id', 'Column bsf_prod_origination.application.payment_frequency_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'payment_frequency_id', 'Column bsf_prod_origination.application.payment_frequency_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'pay_dates', 'Column bsf_prod_origination.application.pay_dates should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'pay_dates', 'text', 'Column bsf_prod_origination.application.pay_dates should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'pay_dates', 'Column bsf_prod_origination.application.pay_dates should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'pay_dates', 'Column bsf_prod_origination.application.pay_dates should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'bank_account_type_id', 'Column bsf_prod_origination.application.bank_account_type_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'bank_account_type_id', 'integer', 'Column bsf_prod_origination.application.bank_account_type_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'bank_account_type_id', 'Column bsf_prod_origination.application.bank_account_type_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'bank_account_type_id', 'Column bsf_prod_origination.application.bank_account_type_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'time_at_address_id', 'Column bsf_prod_origination.application.time_at_address_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'time_at_address_id', 'integer', 'Column bsf_prod_origination.application.time_at_address_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'time_at_address_id', 'Column bsf_prod_origination.application.time_at_address_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'time_at_address_id', 'Column bsf_prod_origination.application.time_at_address_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'product', 'Column bsf_prod_origination.application.product should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'product', 'text', 'Column bsf_prod_origination.application.product should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'product', 'Column bsf_prod_origination.application.product should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'product', 'Column bsf_prod_origination.application.product should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'brand', 'Column bsf_prod_origination.application.brand should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'brand', 'text', 'Column bsf_prod_origination.application.brand should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'brand', 'Column bsf_prod_origination.application.brand should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'brand', 'Column bsf_prod_origination.application.brand should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'match_1_status', 'Column bsf_prod_origination.application.match_1_status should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'match_1_status', 'text', 'Column bsf_prod_origination.application.match_1_status should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'match_1_status', 'Column bsf_prod_origination.application.match_1_status should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'match_1_status', 'Column bsf_prod_origination.application.match_1_status should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'match_2_status', 'Column bsf_prod_origination.application.match_2_status should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'match_2_status', 'text', 'Column bsf_prod_origination.application.match_2_status should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'match_2_status', 'Column bsf_prod_origination.application.match_2_status should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'match_2_status', 'Column bsf_prod_origination.application.match_2_status should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'application_sub_status_id', 'Column bsf_prod_origination.application.application_sub_status_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'application_sub_status_id', 'integer', 'Column bsf_prod_origination.application.application_sub_status_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'application_sub_status_id', 'Column bsf_prod_origination.application.application_sub_status_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'application_sub_status_id', 'Column bsf_prod_origination.application.application_sub_status_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'last_updated', 'Column bsf_prod_origination.application.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.application.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'last_updated', 'Column bsf_prod_origination.application.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'last_updated', 'Column bsf_prod_origination.application.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'final_disclosure_at', 'Column bsf_prod_origination.application.final_disclosure_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'final_disclosure_at', 'timestamp with time zone', 'Column bsf_prod_origination.application.final_disclosure_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'final_disclosure_at', 'Column bsf_prod_origination.application.final_disclosure_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'final_disclosure_at', 'Column bsf_prod_origination.application.final_disclosure_at should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'final_disclosure_flag', 'Column bsf_prod_origination.application.final_disclosure_flag should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'final_disclosure_flag', 'boolean', 'Column bsf_prod_origination.application.final_disclosure_flag should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'final_disclosure_flag', 'Column bsf_prod_origination.application.final_disclosure_flag should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'final_disclosure_flag', 'Column bsf_prod_origination.application.final_disclosure_flag should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'bank_name', 'Column bsf_prod_origination.application.bank_name should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'bank_name', 'text', 'Column bsf_prod_origination.application.bank_name should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'bank_name', 'Column bsf_prod_origination.application.bank_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'bank_name', 'Column bsf_prod_origination.application.bank_name should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'name_on_account', 'Column bsf_prod_origination.application.name_on_account should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'name_on_account', 'text', 'Column bsf_prod_origination.application.name_on_account should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'name_on_account', 'Column bsf_prod_origination.application.name_on_account should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'name_on_account', 'Column bsf_prod_origination.application.name_on_account should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'is_checking', 'Column bsf_prod_origination.application.is_checking should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'is_checking', 'boolean', 'Column bsf_prod_origination.application.is_checking should be type boolean');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'is_checking', 'Column bsf_prod_origination.application.is_checking should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'is_checking', 'Column bsf_prod_origination.application.is_checking should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'routing_number', 'Column bsf_prod_origination.application.routing_number should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'routing_number', 'text', 'Column bsf_prod_origination.application.routing_number should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'routing_number', 'Column bsf_prod_origination.application.routing_number should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'routing_number', 'Column bsf_prod_origination.application.routing_number should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'account_number', 'Column bsf_prod_origination.application.account_number should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'account_number', 'text', 'Column bsf_prod_origination.application.account_number should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'account_number', 'Column bsf_prod_origination.application.account_number should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'account_number', 'Column bsf_prod_origination.application.account_number should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'account_number_confirm', 'Column bsf_prod_origination.application.account_number_confirm should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'account_number_confirm', 'text', 'Column bsf_prod_origination.application.account_number_confirm should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'account_number_confirm', 'Column bsf_prod_origination.application.account_number_confirm should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'account_number_confirm', 'Column bsf_prod_origination.application.account_number_confirm should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'selected_offer_id', 'Column bsf_prod_origination.application.selected_offer_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'selected_offer_id', 'bigint', 'Column bsf_prod_origination.application.selected_offer_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'selected_offer_id', 'Column bsf_prod_origination.application.selected_offer_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'selected_offer_id', 'Column bsf_prod_origination.application.selected_offer_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'offer_selected_at', 'Column bsf_prod_origination.application.offer_selected_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'offer_selected_at', 'timestamp with time zone', 'Column bsf_prod_origination.application.offer_selected_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'offer_selected_at', 'Column bsf_prod_origination.application.offer_selected_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'offer_selected_at', 'Column bsf_prod_origination.application.offer_selected_at should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'campaign', 'Column bsf_prod_origination.application.campaign should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'campaign', 'text', 'Column bsf_prod_origination.application.campaign should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'campaign', 'Column bsf_prod_origination.application.campaign should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'campaign', 'Column bsf_prod_origination.application.campaign should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'expiration_date', 'Column bsf_prod_origination.application.expiration_date should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'expiration_date', 'date', 'Column bsf_prod_origination.application.expiration_date should be type date');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'expiration_date', 'Column bsf_prod_origination.application.expiration_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'expiration_date', 'Column bsf_prod_origination.application.expiration_date should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'selected_preapproval_id', 'Column bsf_prod_origination.application.selected_preapproval_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'selected_preapproval_id', 'bigint', 'Column bsf_prod_origination.application.selected_preapproval_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'selected_preapproval_id', 'Column bsf_prod_origination.application.selected_preapproval_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'selected_preapproval_id', 'Column bsf_prod_origination.application.selected_preapproval_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'payment_method_id', 'Column bsf_prod_origination.application.payment_method_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'payment_method_id', 'integer', 'Column bsf_prod_origination.application.payment_method_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'payment_method_id', 'Column bsf_prod_origination.application.payment_method_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'payment_method_id', 'Column bsf_prod_origination.application.payment_method_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'effective', 'Column bsf_prod_origination.application.effective should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.application.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'effective', 'Column bsf_prod_origination.application.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'effective', 'Column bsf_prod_origination.application.effective should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'asserted', 'Column bsf_prod_origination.application.asserted should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.application.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'asserted', 'Column bsf_prod_origination.application.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'asserted', 'Column bsf_prod_origination.application.asserted should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application', 'row_created_at', 'Column bsf_prod_origination.application.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_origination.application.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'application', 'row_created_at', 'Column bsf_prod_origination.application.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application', 'row_created_at', 'Column bsf_prod_origination.application.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
