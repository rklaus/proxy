SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(239);

SELECT has_foreign_table(
    'balance_api_fdw', 'leads',
    'Should have foreign table balance_api_fdw.leads'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'leads',
    'Table balance_api_fdw.leads should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'leads'::name, ARRAY[
    'id'::name,
    'applicant_id'::name,
    'token'::name,
    'email'::name,
    'first_name'::name,
    'last_name'::name,
    'home_phone'::name,
    'cell_phone'::name,
    'dob_day'::name,
    'dob_month'::name,
    'dob_year'::name,
    'date_of_birth'::name,
    'drivers_license_number'::name,
    'drivers_license_state'::name,
    'social_security_number'::name,
    'employer_name'::name,
    'employer_phone'::name,
    'bank_account_number'::name,
    'bank_account_type'::name,
    'aba_routing_number'::name,
    'account_usage_length'::name,
    'bank_name'::name,
    'bank_phone'::name,
    'housing_type'::name,
    'income_frequency'::name,
    'length_at_address'::name,
    'length_at_employer'::name,
    'loan_reason'::name,
    'loan_requested_amount'::name,
    'promo_code'::name,
    'state_issued'::name,
    'address_line1'::name,
    'address_line2'::name,
    'city'::name,
    'state_code'::name,
    'zip_code'::name,
    'take_home_amount'::name,
    'type_of_income'::name,
    'payment_day'::name,
    'next_regular_payday'::name,
    'payday_date_of_the_month'::name,
    'first_payday_of_month'::name,
    'second_payday_of_month'::name,
    'agree_electronic_communications'::name,
    'agree_privacy_notice'::name,
    'agree_confirm_accuracy'::name,
    'agree_telemarketing'::name,
    'is_military'::name,
    'ip_address'::name,
    'user_agent_string'::name,
    'failed_validation'::name,
    'validation_message'::name,
    'date_created'::name,
    'date_updated'::name,
    'date_complete'::name,
    'approved'::name,
    'approved_amount'::name,
    'incomplete'::name,
    'referral_address'::name
]);

SELECT has_column(       'balance_api_fdw', 'leads', 'id', 'Column balance_api_fdw.leads.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'id', 'integer', 'Column balance_api_fdw.leads.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'id', 'Column balance_api_fdw.leads.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'id', 'Column balance_api_fdw.leads.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'applicant_id', 'Column balance_api_fdw.leads.applicant_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'applicant_id', 'integer', 'Column balance_api_fdw.leads.applicant_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'applicant_id', 'Column balance_api_fdw.leads.applicant_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'applicant_id', 'Column balance_api_fdw.leads.applicant_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'token', 'Column balance_api_fdw.leads.token should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'token', 'character varying(36)', 'Column balance_api_fdw.leads.token should be type character varying(36)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'token', 'Column balance_api_fdw.leads.token should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'token', 'Column balance_api_fdw.leads.token should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'email', 'Column balance_api_fdw.leads.email should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'email', 'character varying(255)', 'Column balance_api_fdw.leads.email should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'email', 'Column balance_api_fdw.leads.email should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'email', 'Column balance_api_fdw.leads.email should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'first_name', 'Column balance_api_fdw.leads.first_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'first_name', 'character varying(255)', 'Column balance_api_fdw.leads.first_name should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'first_name', 'Column balance_api_fdw.leads.first_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'first_name', 'Column balance_api_fdw.leads.first_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'last_name', 'Column balance_api_fdw.leads.last_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'last_name', 'character varying(255)', 'Column balance_api_fdw.leads.last_name should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'last_name', 'Column balance_api_fdw.leads.last_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'last_name', 'Column balance_api_fdw.leads.last_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'home_phone', 'Column balance_api_fdw.leads.home_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'home_phone', 'character varying(255)', 'Column balance_api_fdw.leads.home_phone should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'home_phone', 'Column balance_api_fdw.leads.home_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'home_phone', 'Column balance_api_fdw.leads.home_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'cell_phone', 'Column balance_api_fdw.leads.cell_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'cell_phone', 'character varying(255)', 'Column balance_api_fdw.leads.cell_phone should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'cell_phone', 'Column balance_api_fdw.leads.cell_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'cell_phone', 'Column balance_api_fdw.leads.cell_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'dob_day', 'Column balance_api_fdw.leads.dob_day should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'dob_day', 'integer', 'Column balance_api_fdw.leads.dob_day should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'dob_day', 'Column balance_api_fdw.leads.dob_day should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'dob_day', 'Column balance_api_fdw.leads.dob_day should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'dob_month', 'Column balance_api_fdw.leads.dob_month should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'dob_month', 'integer', 'Column balance_api_fdw.leads.dob_month should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'dob_month', 'Column balance_api_fdw.leads.dob_month should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'dob_month', 'Column balance_api_fdw.leads.dob_month should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'dob_year', 'Column balance_api_fdw.leads.dob_year should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'dob_year', 'integer', 'Column balance_api_fdw.leads.dob_year should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'dob_year', 'Column balance_api_fdw.leads.dob_year should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'dob_year', 'Column balance_api_fdw.leads.dob_year should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'date_of_birth', 'Column balance_api_fdw.leads.date_of_birth should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'date_of_birth', 'date', 'Column balance_api_fdw.leads.date_of_birth should be type date');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'date_of_birth', 'Column balance_api_fdw.leads.date_of_birth should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'date_of_birth', 'Column balance_api_fdw.leads.date_of_birth should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'drivers_license_number', 'Column balance_api_fdw.leads.drivers_license_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'drivers_license_number', 'character varying(25)', 'Column balance_api_fdw.leads.drivers_license_number should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'drivers_license_number', 'Column balance_api_fdw.leads.drivers_license_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'drivers_license_number', 'Column balance_api_fdw.leads.drivers_license_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'drivers_license_state', 'Column balance_api_fdw.leads.drivers_license_state should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'drivers_license_state', 'character varying(2)', 'Column balance_api_fdw.leads.drivers_license_state should be type character varying(2)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'drivers_license_state', 'Column balance_api_fdw.leads.drivers_license_state should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'drivers_license_state', 'Column balance_api_fdw.leads.drivers_license_state should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'social_security_number', 'Column balance_api_fdw.leads.social_security_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'social_security_number', 'character varying(32)', 'Column balance_api_fdw.leads.social_security_number should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'social_security_number', 'Column balance_api_fdw.leads.social_security_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'social_security_number', 'Column balance_api_fdw.leads.social_security_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'employer_name', 'Column balance_api_fdw.leads.employer_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'employer_name', 'character varying(255)', 'Column balance_api_fdw.leads.employer_name should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'employer_name', 'Column balance_api_fdw.leads.employer_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'employer_name', 'Column balance_api_fdw.leads.employer_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'employer_phone', 'Column balance_api_fdw.leads.employer_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'employer_phone', 'character varying(255)', 'Column balance_api_fdw.leads.employer_phone should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'employer_phone', 'Column balance_api_fdw.leads.employer_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'employer_phone', 'Column balance_api_fdw.leads.employer_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'bank_account_number', 'Column balance_api_fdw.leads.bank_account_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'bank_account_number', 'character varying(255)', 'Column balance_api_fdw.leads.bank_account_number should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'bank_account_number', 'Column balance_api_fdw.leads.bank_account_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'bank_account_number', 'Column balance_api_fdw.leads.bank_account_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'bank_account_type', 'Column balance_api_fdw.leads.bank_account_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'bank_account_type', 'character varying(255)', 'Column balance_api_fdw.leads.bank_account_type should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'bank_account_type', 'Column balance_api_fdw.leads.bank_account_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'bank_account_type', 'Column balance_api_fdw.leads.bank_account_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'aba_routing_number', 'Column balance_api_fdw.leads.aba_routing_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'aba_routing_number', 'character varying(255)', 'Column balance_api_fdw.leads.aba_routing_number should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'aba_routing_number', 'Column balance_api_fdw.leads.aba_routing_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'aba_routing_number', 'Column balance_api_fdw.leads.aba_routing_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'account_usage_length', 'Column balance_api_fdw.leads.account_usage_length should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'account_usage_length', 'character varying(255)', 'Column balance_api_fdw.leads.account_usage_length should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'account_usage_length', 'Column balance_api_fdw.leads.account_usage_length should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'account_usage_length', 'Column balance_api_fdw.leads.account_usage_length should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'bank_name', 'Column balance_api_fdw.leads.bank_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'bank_name', 'character varying(255)', 'Column balance_api_fdw.leads.bank_name should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'bank_name', 'Column balance_api_fdw.leads.bank_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'bank_name', 'Column balance_api_fdw.leads.bank_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'bank_phone', 'Column balance_api_fdw.leads.bank_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'bank_phone', 'character varying(255)', 'Column balance_api_fdw.leads.bank_phone should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'bank_phone', 'Column balance_api_fdw.leads.bank_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'bank_phone', 'Column balance_api_fdw.leads.bank_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'housing_type', 'Column balance_api_fdw.leads.housing_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'housing_type', 'character varying(255)', 'Column balance_api_fdw.leads.housing_type should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'housing_type', 'Column balance_api_fdw.leads.housing_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'housing_type', 'Column balance_api_fdw.leads.housing_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'income_frequency', 'Column balance_api_fdw.leads.income_frequency should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'income_frequency', 'character varying(255)', 'Column balance_api_fdw.leads.income_frequency should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'income_frequency', 'Column balance_api_fdw.leads.income_frequency should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'income_frequency', 'Column balance_api_fdw.leads.income_frequency should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'length_at_address', 'Column balance_api_fdw.leads.length_at_address should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'length_at_address', 'character varying(255)', 'Column balance_api_fdw.leads.length_at_address should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'length_at_address', 'Column balance_api_fdw.leads.length_at_address should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'length_at_address', 'Column balance_api_fdw.leads.length_at_address should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'length_at_employer', 'Column balance_api_fdw.leads.length_at_employer should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'length_at_employer', 'character varying(255)', 'Column balance_api_fdw.leads.length_at_employer should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'length_at_employer', 'Column balance_api_fdw.leads.length_at_employer should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'length_at_employer', 'Column balance_api_fdw.leads.length_at_employer should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'loan_reason', 'Column balance_api_fdw.leads.loan_reason should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'loan_reason', 'character varying(255)', 'Column balance_api_fdw.leads.loan_reason should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'loan_reason', 'Column balance_api_fdw.leads.loan_reason should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'loan_reason', 'Column balance_api_fdw.leads.loan_reason should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'loan_requested_amount', 'Column balance_api_fdw.leads.loan_requested_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'loan_requested_amount', 'numeric(10,2)', 'Column balance_api_fdw.leads.loan_requested_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'loan_requested_amount', 'Column balance_api_fdw.leads.loan_requested_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'loan_requested_amount', 'Column balance_api_fdw.leads.loan_requested_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'promo_code', 'Column balance_api_fdw.leads.promo_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'promo_code', 'character varying(255)', 'Column balance_api_fdw.leads.promo_code should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'promo_code', 'Column balance_api_fdw.leads.promo_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'promo_code', 'Column balance_api_fdw.leads.promo_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'state_issued', 'Column balance_api_fdw.leads.state_issued should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'state_issued', 'character varying(255)', 'Column balance_api_fdw.leads.state_issued should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'state_issued', 'Column balance_api_fdw.leads.state_issued should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'state_issued', 'Column balance_api_fdw.leads.state_issued should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'address_line1', 'Column balance_api_fdw.leads.address_line1 should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'address_line1', 'character varying(255)', 'Column balance_api_fdw.leads.address_line1 should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'address_line1', 'Column balance_api_fdw.leads.address_line1 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'address_line1', 'Column balance_api_fdw.leads.address_line1 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'address_line2', 'Column balance_api_fdw.leads.address_line2 should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'address_line2', 'character varying(255)', 'Column balance_api_fdw.leads.address_line2 should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'address_line2', 'Column balance_api_fdw.leads.address_line2 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'address_line2', 'Column balance_api_fdw.leads.address_line2 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'city', 'Column balance_api_fdw.leads.city should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'city', 'character varying(255)', 'Column balance_api_fdw.leads.city should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'city', 'Column balance_api_fdw.leads.city should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'city', 'Column balance_api_fdw.leads.city should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'state_code', 'Column balance_api_fdw.leads.state_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'state_code', 'character varying(255)', 'Column balance_api_fdw.leads.state_code should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'state_code', 'Column balance_api_fdw.leads.state_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'state_code', 'Column balance_api_fdw.leads.state_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'zip_code', 'Column balance_api_fdw.leads.zip_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'zip_code', 'character varying(255)', 'Column balance_api_fdw.leads.zip_code should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'zip_code', 'Column balance_api_fdw.leads.zip_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'zip_code', 'Column balance_api_fdw.leads.zip_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'take_home_amount', 'Column balance_api_fdw.leads.take_home_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'take_home_amount', 'character varying(255)', 'Column balance_api_fdw.leads.take_home_amount should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'take_home_amount', 'Column balance_api_fdw.leads.take_home_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'take_home_amount', 'Column balance_api_fdw.leads.take_home_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'type_of_income', 'Column balance_api_fdw.leads.type_of_income should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'type_of_income', 'character varying(255)', 'Column balance_api_fdw.leads.type_of_income should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'type_of_income', 'Column balance_api_fdw.leads.type_of_income should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'type_of_income', 'Column balance_api_fdw.leads.type_of_income should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'payment_day', 'Column balance_api_fdw.leads.payment_day should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'payment_day', 'character varying(255)', 'Column balance_api_fdw.leads.payment_day should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'payment_day', 'Column balance_api_fdw.leads.payment_day should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'payment_day', 'Column balance_api_fdw.leads.payment_day should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'next_regular_payday', 'Column balance_api_fdw.leads.next_regular_payday should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'next_regular_payday', 'character varying(255)', 'Column balance_api_fdw.leads.next_regular_payday should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'next_regular_payday', 'Column balance_api_fdw.leads.next_regular_payday should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'next_regular_payday', 'Column balance_api_fdw.leads.next_regular_payday should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'payday_date_of_the_month', 'Column balance_api_fdw.leads.payday_date_of_the_month should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'payday_date_of_the_month', 'character varying(255)', 'Column balance_api_fdw.leads.payday_date_of_the_month should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'payday_date_of_the_month', 'Column balance_api_fdw.leads.payday_date_of_the_month should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'payday_date_of_the_month', 'Column balance_api_fdw.leads.payday_date_of_the_month should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'first_payday_of_month', 'Column balance_api_fdw.leads.first_payday_of_month should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'first_payday_of_month', 'character varying(255)', 'Column balance_api_fdw.leads.first_payday_of_month should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'first_payday_of_month', 'Column balance_api_fdw.leads.first_payday_of_month should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'first_payday_of_month', 'Column balance_api_fdw.leads.first_payday_of_month should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'second_payday_of_month', 'Column balance_api_fdw.leads.second_payday_of_month should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'second_payday_of_month', 'character varying(255)', 'Column balance_api_fdw.leads.second_payday_of_month should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'second_payday_of_month', 'Column balance_api_fdw.leads.second_payday_of_month should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'second_payday_of_month', 'Column balance_api_fdw.leads.second_payday_of_month should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'agree_electronic_communications', 'Column balance_api_fdw.leads.agree_electronic_communications should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'agree_electronic_communications', 'boolean', 'Column balance_api_fdw.leads.agree_electronic_communications should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'agree_electronic_communications', 'Column balance_api_fdw.leads.agree_electronic_communications should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'agree_electronic_communications', 'Column balance_api_fdw.leads.agree_electronic_communications should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'agree_privacy_notice', 'Column balance_api_fdw.leads.agree_privacy_notice should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'agree_privacy_notice', 'boolean', 'Column balance_api_fdw.leads.agree_privacy_notice should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'agree_privacy_notice', 'Column balance_api_fdw.leads.agree_privacy_notice should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'agree_privacy_notice', 'Column balance_api_fdw.leads.agree_privacy_notice should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'agree_confirm_accuracy', 'Column balance_api_fdw.leads.agree_confirm_accuracy should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'agree_confirm_accuracy', 'boolean', 'Column balance_api_fdw.leads.agree_confirm_accuracy should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'agree_confirm_accuracy', 'Column balance_api_fdw.leads.agree_confirm_accuracy should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'agree_confirm_accuracy', 'Column balance_api_fdw.leads.agree_confirm_accuracy should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'agree_telemarketing', 'Column balance_api_fdw.leads.agree_telemarketing should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'agree_telemarketing', 'boolean', 'Column balance_api_fdw.leads.agree_telemarketing should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'agree_telemarketing', 'Column balance_api_fdw.leads.agree_telemarketing should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'agree_telemarketing', 'Column balance_api_fdw.leads.agree_telemarketing should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'is_military', 'Column balance_api_fdw.leads.is_military should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'is_military', 'boolean', 'Column balance_api_fdw.leads.is_military should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'is_military', 'Column balance_api_fdw.leads.is_military should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'is_military', 'Column balance_api_fdw.leads.is_military should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'ip_address', 'Column balance_api_fdw.leads.ip_address should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'ip_address', 'character varying(255)', 'Column balance_api_fdw.leads.ip_address should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'ip_address', 'Column balance_api_fdw.leads.ip_address should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'ip_address', 'Column balance_api_fdw.leads.ip_address should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'user_agent_string', 'Column balance_api_fdw.leads.user_agent_string should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'user_agent_string', 'character varying(1024)', 'Column balance_api_fdw.leads.user_agent_string should be type character varying(1024)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'user_agent_string', 'Column balance_api_fdw.leads.user_agent_string should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'user_agent_string', 'Column balance_api_fdw.leads.user_agent_string should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'failed_validation', 'Column balance_api_fdw.leads.failed_validation should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'failed_validation', 'boolean', 'Column balance_api_fdw.leads.failed_validation should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'failed_validation', 'Column balance_api_fdw.leads.failed_validation should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'failed_validation', 'Column balance_api_fdw.leads.failed_validation should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'validation_message', 'Column balance_api_fdw.leads.validation_message should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'validation_message', 'character varying(500)', 'Column balance_api_fdw.leads.validation_message should be type character varying(500)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'validation_message', 'Column balance_api_fdw.leads.validation_message should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'validation_message', 'Column balance_api_fdw.leads.validation_message should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'date_created', 'Column balance_api_fdw.leads.date_created should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'date_created', 'timestamp with time zone', 'Column balance_api_fdw.leads.date_created should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'date_created', 'Column balance_api_fdw.leads.date_created should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'date_created', 'Column balance_api_fdw.leads.date_created should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'date_updated', 'Column balance_api_fdw.leads.date_updated should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'date_updated', 'timestamp with time zone', 'Column balance_api_fdw.leads.date_updated should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'date_updated', 'Column balance_api_fdw.leads.date_updated should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'date_updated', 'Column balance_api_fdw.leads.date_updated should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'date_complete', 'Column balance_api_fdw.leads.date_complete should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'date_complete', 'timestamp with time zone', 'Column balance_api_fdw.leads.date_complete should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'date_complete', 'Column balance_api_fdw.leads.date_complete should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'date_complete', 'Column balance_api_fdw.leads.date_complete should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'approved', 'Column balance_api_fdw.leads.approved should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'approved', 'boolean', 'Column balance_api_fdw.leads.approved should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'approved', 'Column balance_api_fdw.leads.approved should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'approved', 'Column balance_api_fdw.leads.approved should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'approved_amount', 'Column balance_api_fdw.leads.approved_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'approved_amount', 'numeric(10,2)', 'Column balance_api_fdw.leads.approved_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'approved_amount', 'Column balance_api_fdw.leads.approved_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'approved_amount', 'Column balance_api_fdw.leads.approved_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'incomplete', 'Column balance_api_fdw.leads.incomplete should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'incomplete', 'boolean', 'Column balance_api_fdw.leads.incomplete should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'incomplete', 'Column balance_api_fdw.leads.incomplete should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'incomplete', 'Column balance_api_fdw.leads.incomplete should not  have a default');

SELECT has_column(       'balance_api_fdw', 'leads', 'referral_address', 'Column balance_api_fdw.leads.referral_address should exist');
SELECT col_type_is(      'balance_api_fdw', 'leads', 'referral_address', 'character varying(500)', 'Column balance_api_fdw.leads.referral_address should be type character varying(500)');
SELECT col_is_null(      'balance_api_fdw', 'leads', 'referral_address', 'Column balance_api_fdw.leads.referral_address should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'leads', 'referral_address', 'Column balance_api_fdw.leads.referral_address should not  have a default');

SELECT * FROM finish();
ROLLBACK;
