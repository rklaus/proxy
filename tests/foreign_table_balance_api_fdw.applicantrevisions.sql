SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(339);

SELECT has_foreign_table(
    'balance_api_fdw', 'applicantrevisions',
    'Should have foreign table balance_api_fdw.applicantrevisions'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'applicantrevisions',
    'Table balance_api_fdw.applicantrevisions should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'applicantrevisions'::name, ARRAY[
    'applicant_id'::name,
    'pricing_tier_id'::name,
    'preapproved_id'::name,
    'id'::name,
    'applicant_transaction_date'::name,
    'applicant_transaction_time'::name,
    'applicant_requested_date'::name,
    'applicant_effective_date'::name,
    'applicant_promo_code'::name,
    'first_name'::name,
    'last_name'::name,
    'previous_customer'::name,
    'ip_address'::name,
    'user_agent_string'::name,
    'address_line1'::name,
    'address_line2'::name,
    'city'::name,
    'country'::name,
    'zip_code'::name,
    'state_code'::name,
    'address_len_years'::name,
    'address_len_months'::name,
    'cell_phone'::name,
    'home_phone'::name,
    'email'::name,
    'social_security_number'::name,
    'date_of_birth'::name,
    'eighteen_years_old'::name,
    'driver_sid_num'::name,
    'driver_sid_state'::name,
    'is_military'::name,
    'housing_type'::name,
    'employer_name'::name,
    'income_type'::name,
    'employer_phone'::name,
    'employer_len_years'::name,
    'employer_len_months'::name,
    'employer_benefit_startdate'::name,
    'income_frequency'::name,
    'pay_type'::name,
    'employer_periodicity'::name,
    'last_payday'::name,
    'next_payday'::name,
    'second_payday'::name,
    'last_check'::name,
    'bank_account_type'::name,
    'bank_account_len_years'::name,
    'bank_account_len_months'::name,
    'aba_routing_number'::name,
    'bank_account_number'::name,
    'bank_name'::name,
    'bank_phone'::name,
    'bank_country'::name,
    'loan_reason'::name,
    'first_payday_of_month'::name,
    'second_payday_of_month'::name,
    'day_of_week_paid'::name,
    'enhanced_verification'::name,
    'gds_submit_timestamp'::name,
    'gds_return_timestamp'::name,
    'epic_submit_timestamp'::name,
    'epic_return_timestamp'::name,
    'cso_apr'::name,
    'cso_fee'::name,
    'gds_key'::name,
    'epic_key'::name,
    'loan_requested_amount'::name,
    'loan_approved_amount'::name,
    'loan_actual_amount'::name,
    'loan_apr'::name,
    'loan_number_of_payments'::name,
    'payment_method'::name,
    'current_status'::name,
    'lms'::name,
    'los'::name,
    'agree_electronic_communications'::name,
    'agree_privacy_notice'::name,
    'agree_confirm_accuracy'::name,
    'agree_telemarketing'::name,
    'exit_intent_eligible'::name,
    'exit_intent_shown'::name,
    'latest_campaign'::name,
    'date_created'::name,
    'last_error'::name
]);

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'applicant_id', 'Column balance_api_fdw.applicantrevisions.applicant_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'applicant_id', 'integer', 'Column balance_api_fdw.applicantrevisions.applicant_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'applicant_id', 'Column balance_api_fdw.applicantrevisions.applicant_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'applicant_id', 'Column balance_api_fdw.applicantrevisions.applicant_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'pricing_tier_id', 'Column balance_api_fdw.applicantrevisions.pricing_tier_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'pricing_tier_id', 'integer', 'Column balance_api_fdw.applicantrevisions.pricing_tier_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'pricing_tier_id', 'Column balance_api_fdw.applicantrevisions.pricing_tier_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'pricing_tier_id', 'Column balance_api_fdw.applicantrevisions.pricing_tier_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'preapproved_id', 'Column balance_api_fdw.applicantrevisions.preapproved_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'preapproved_id', 'integer', 'Column balance_api_fdw.applicantrevisions.preapproved_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'preapproved_id', 'Column balance_api_fdw.applicantrevisions.preapproved_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'preapproved_id', 'Column balance_api_fdw.applicantrevisions.preapproved_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'id', 'Column balance_api_fdw.applicantrevisions.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'id', 'integer', 'Column balance_api_fdw.applicantrevisions.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'id', 'Column balance_api_fdw.applicantrevisions.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'id', 'Column balance_api_fdw.applicantrevisions.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'applicant_transaction_date', 'Column balance_api_fdw.applicantrevisions.applicant_transaction_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'applicant_transaction_date', 'date', 'Column balance_api_fdw.applicantrevisions.applicant_transaction_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'applicant_transaction_date', 'Column balance_api_fdw.applicantrevisions.applicant_transaction_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'applicant_transaction_date', 'Column balance_api_fdw.applicantrevisions.applicant_transaction_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'applicant_transaction_time', 'Column balance_api_fdw.applicantrevisions.applicant_transaction_time should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'applicant_transaction_time', 'time without time zone', 'Column balance_api_fdw.applicantrevisions.applicant_transaction_time should be type time without time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'applicant_transaction_time', 'Column balance_api_fdw.applicantrevisions.applicant_transaction_time should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'applicant_transaction_time', 'Column balance_api_fdw.applicantrevisions.applicant_transaction_time should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'applicant_requested_date', 'Column balance_api_fdw.applicantrevisions.applicant_requested_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'applicant_requested_date', 'date', 'Column balance_api_fdw.applicantrevisions.applicant_requested_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'applicant_requested_date', 'Column balance_api_fdw.applicantrevisions.applicant_requested_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'applicant_requested_date', 'Column balance_api_fdw.applicantrevisions.applicant_requested_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'applicant_effective_date', 'Column balance_api_fdw.applicantrevisions.applicant_effective_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'applicant_effective_date', 'date', 'Column balance_api_fdw.applicantrevisions.applicant_effective_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'applicant_effective_date', 'Column balance_api_fdw.applicantrevisions.applicant_effective_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'applicant_effective_date', 'Column balance_api_fdw.applicantrevisions.applicant_effective_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'applicant_promo_code', 'Column balance_api_fdw.applicantrevisions.applicant_promo_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'applicant_promo_code', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.applicant_promo_code should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'applicant_promo_code', 'Column balance_api_fdw.applicantrevisions.applicant_promo_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'applicant_promo_code', 'Column balance_api_fdw.applicantrevisions.applicant_promo_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'first_name', 'Column balance_api_fdw.applicantrevisions.first_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'first_name', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.first_name should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'first_name', 'Column balance_api_fdw.applicantrevisions.first_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'first_name', 'Column balance_api_fdw.applicantrevisions.first_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'last_name', 'Column balance_api_fdw.applicantrevisions.last_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'last_name', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.last_name should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'last_name', 'Column balance_api_fdw.applicantrevisions.last_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'last_name', 'Column balance_api_fdw.applicantrevisions.last_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'previous_customer', 'Column balance_api_fdw.applicantrevisions.previous_customer should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'previous_customer', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.previous_customer should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'previous_customer', 'Column balance_api_fdw.applicantrevisions.previous_customer should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'previous_customer', 'Column balance_api_fdw.applicantrevisions.previous_customer should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'ip_address', 'Column balance_api_fdw.applicantrevisions.ip_address should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'ip_address', 'character varying(255)', 'Column balance_api_fdw.applicantrevisions.ip_address should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'ip_address', 'Column balance_api_fdw.applicantrevisions.ip_address should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'ip_address', 'Column balance_api_fdw.applicantrevisions.ip_address should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'user_agent_string', 'Column balance_api_fdw.applicantrevisions.user_agent_string should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'user_agent_string', 'character varying(1024)', 'Column balance_api_fdw.applicantrevisions.user_agent_string should be type character varying(1024)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'user_agent_string', 'Column balance_api_fdw.applicantrevisions.user_agent_string should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'user_agent_string', 'Column balance_api_fdw.applicantrevisions.user_agent_string should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'address_line1', 'Column balance_api_fdw.applicantrevisions.address_line1 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'address_line1', 'character varying(255)', 'Column balance_api_fdw.applicantrevisions.address_line1 should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'address_line1', 'Column balance_api_fdw.applicantrevisions.address_line1 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'address_line1', 'Column balance_api_fdw.applicantrevisions.address_line1 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'address_line2', 'Column balance_api_fdw.applicantrevisions.address_line2 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'address_line2', 'character varying(255)', 'Column balance_api_fdw.applicantrevisions.address_line2 should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'address_line2', 'Column balance_api_fdw.applicantrevisions.address_line2 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'address_line2', 'Column balance_api_fdw.applicantrevisions.address_line2 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'city', 'Column balance_api_fdw.applicantrevisions.city should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'city', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.city should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'city', 'Column balance_api_fdw.applicantrevisions.city should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'city', 'Column balance_api_fdw.applicantrevisions.city should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'country', 'Column balance_api_fdw.applicantrevisions.country should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'country', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.country should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'country', 'Column balance_api_fdw.applicantrevisions.country should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'country', 'Column balance_api_fdw.applicantrevisions.country should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'zip_code', 'Column balance_api_fdw.applicantrevisions.zip_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'zip_code', 'character varying(10)', 'Column balance_api_fdw.applicantrevisions.zip_code should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'zip_code', 'Column balance_api_fdw.applicantrevisions.zip_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'zip_code', 'Column balance_api_fdw.applicantrevisions.zip_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'state_code', 'Column balance_api_fdw.applicantrevisions.state_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'state_code', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.state_code should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'state_code', 'Column balance_api_fdw.applicantrevisions.state_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'state_code', 'Column balance_api_fdw.applicantrevisions.state_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'address_len_years', 'Column balance_api_fdw.applicantrevisions.address_len_years should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'address_len_years', 'integer', 'Column balance_api_fdw.applicantrevisions.address_len_years should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'address_len_years', 'Column balance_api_fdw.applicantrevisions.address_len_years should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'address_len_years', 'Column balance_api_fdw.applicantrevisions.address_len_years should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'address_len_months', 'Column balance_api_fdw.applicantrevisions.address_len_months should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'address_len_months', 'integer', 'Column balance_api_fdw.applicantrevisions.address_len_months should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'address_len_months', 'Column balance_api_fdw.applicantrevisions.address_len_months should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'address_len_months', 'Column balance_api_fdw.applicantrevisions.address_len_months should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'cell_phone', 'Column balance_api_fdw.applicantrevisions.cell_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'cell_phone', 'character varying(14)', 'Column balance_api_fdw.applicantrevisions.cell_phone should be type character varying(14)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'cell_phone', 'Column balance_api_fdw.applicantrevisions.cell_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'cell_phone', 'Column balance_api_fdw.applicantrevisions.cell_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'home_phone', 'Column balance_api_fdw.applicantrevisions.home_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'home_phone', 'character varying(14)', 'Column balance_api_fdw.applicantrevisions.home_phone should be type character varying(14)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'home_phone', 'Column balance_api_fdw.applicantrevisions.home_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'home_phone', 'Column balance_api_fdw.applicantrevisions.home_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'email', 'Column balance_api_fdw.applicantrevisions.email should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'email', 'character varying(255)', 'Column balance_api_fdw.applicantrevisions.email should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'email', 'Column balance_api_fdw.applicantrevisions.email should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'email', 'Column balance_api_fdw.applicantrevisions.email should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'social_security_number', 'Column balance_api_fdw.applicantrevisions.social_security_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'social_security_number', 'character varying(32)', 'Column balance_api_fdw.applicantrevisions.social_security_number should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'social_security_number', 'Column balance_api_fdw.applicantrevisions.social_security_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'social_security_number', 'Column balance_api_fdw.applicantrevisions.social_security_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'date_of_birth', 'Column balance_api_fdw.applicantrevisions.date_of_birth should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'date_of_birth', 'date', 'Column balance_api_fdw.applicantrevisions.date_of_birth should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'date_of_birth', 'Column balance_api_fdw.applicantrevisions.date_of_birth should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'date_of_birth', 'Column balance_api_fdw.applicantrevisions.date_of_birth should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'eighteen_years_old', 'Column balance_api_fdw.applicantrevisions.eighteen_years_old should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'eighteen_years_old', 'character varying(10)', 'Column balance_api_fdw.applicantrevisions.eighteen_years_old should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'eighteen_years_old', 'Column balance_api_fdw.applicantrevisions.eighteen_years_old should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'eighteen_years_old', 'Column balance_api_fdw.applicantrevisions.eighteen_years_old should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'driver_sid_num', 'Column balance_api_fdw.applicantrevisions.driver_sid_num should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'driver_sid_num', 'character varying(32)', 'Column balance_api_fdw.applicantrevisions.driver_sid_num should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'driver_sid_num', 'Column balance_api_fdw.applicantrevisions.driver_sid_num should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'driver_sid_num', 'Column balance_api_fdw.applicantrevisions.driver_sid_num should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'driver_sid_state', 'Column balance_api_fdw.applicantrevisions.driver_sid_state should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'driver_sid_state', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.driver_sid_state should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'driver_sid_state', 'Column balance_api_fdw.applicantrevisions.driver_sid_state should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'driver_sid_state', 'Column balance_api_fdw.applicantrevisions.driver_sid_state should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'is_military', 'Column balance_api_fdw.applicantrevisions.is_military should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'is_military', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.is_military should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'is_military', 'Column balance_api_fdw.applicantrevisions.is_military should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'is_military', 'Column balance_api_fdw.applicantrevisions.is_military should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'housing_type', 'Column balance_api_fdw.applicantrevisions.housing_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'housing_type', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.housing_type should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'housing_type', 'Column balance_api_fdw.applicantrevisions.housing_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'housing_type', 'Column balance_api_fdw.applicantrevisions.housing_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'employer_name', 'Column balance_api_fdw.applicantrevisions.employer_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'employer_name', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.employer_name should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'employer_name', 'Column balance_api_fdw.applicantrevisions.employer_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'employer_name', 'Column balance_api_fdw.applicantrevisions.employer_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'income_type', 'Column balance_api_fdw.applicantrevisions.income_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'income_type', 'character varying(10)', 'Column balance_api_fdw.applicantrevisions.income_type should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'income_type', 'Column balance_api_fdw.applicantrevisions.income_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'income_type', 'Column balance_api_fdw.applicantrevisions.income_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'employer_phone', 'Column balance_api_fdw.applicantrevisions.employer_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'employer_phone', 'character varying(14)', 'Column balance_api_fdw.applicantrevisions.employer_phone should be type character varying(14)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'employer_phone', 'Column balance_api_fdw.applicantrevisions.employer_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'employer_phone', 'Column balance_api_fdw.applicantrevisions.employer_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'employer_len_years', 'Column balance_api_fdw.applicantrevisions.employer_len_years should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'employer_len_years', 'integer', 'Column balance_api_fdw.applicantrevisions.employer_len_years should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'employer_len_years', 'Column balance_api_fdw.applicantrevisions.employer_len_years should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'employer_len_years', 'Column balance_api_fdw.applicantrevisions.employer_len_years should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'employer_len_months', 'Column balance_api_fdw.applicantrevisions.employer_len_months should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'employer_len_months', 'integer', 'Column balance_api_fdw.applicantrevisions.employer_len_months should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'employer_len_months', 'Column balance_api_fdw.applicantrevisions.employer_len_months should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'employer_len_months', 'Column balance_api_fdw.applicantrevisions.employer_len_months should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'employer_benefit_startdate', 'Column balance_api_fdw.applicantrevisions.employer_benefit_startdate should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'employer_benefit_startdate', 'date', 'Column balance_api_fdw.applicantrevisions.employer_benefit_startdate should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'employer_benefit_startdate', 'Column balance_api_fdw.applicantrevisions.employer_benefit_startdate should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'employer_benefit_startdate', 'Column balance_api_fdw.applicantrevisions.employer_benefit_startdate should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'income_frequency', 'Column balance_api_fdw.applicantrevisions.income_frequency should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'income_frequency', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.income_frequency should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'income_frequency', 'Column balance_api_fdw.applicantrevisions.income_frequency should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'income_frequency', 'Column balance_api_fdw.applicantrevisions.income_frequency should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'pay_type', 'Column balance_api_fdw.applicantrevisions.pay_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'pay_type', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.pay_type should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'pay_type', 'Column balance_api_fdw.applicantrevisions.pay_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'pay_type', 'Column balance_api_fdw.applicantrevisions.pay_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'employer_periodicity', 'Column balance_api_fdw.applicantrevisions.employer_periodicity should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'employer_periodicity', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.employer_periodicity should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'employer_periodicity', 'Column balance_api_fdw.applicantrevisions.employer_periodicity should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'employer_periodicity', 'Column balance_api_fdw.applicantrevisions.employer_periodicity should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'last_payday', 'Column balance_api_fdw.applicantrevisions.last_payday should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'last_payday', 'date', 'Column balance_api_fdw.applicantrevisions.last_payday should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'last_payday', 'Column balance_api_fdw.applicantrevisions.last_payday should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'last_payday', 'Column balance_api_fdw.applicantrevisions.last_payday should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'next_payday', 'Column balance_api_fdw.applicantrevisions.next_payday should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'next_payday', 'date', 'Column balance_api_fdw.applicantrevisions.next_payday should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'next_payday', 'Column balance_api_fdw.applicantrevisions.next_payday should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'next_payday', 'Column balance_api_fdw.applicantrevisions.next_payday should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'second_payday', 'Column balance_api_fdw.applicantrevisions.second_payday should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'second_payday', 'date', 'Column balance_api_fdw.applicantrevisions.second_payday should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'second_payday', 'Column balance_api_fdw.applicantrevisions.second_payday should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'second_payday', 'Column balance_api_fdw.applicantrevisions.second_payday should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'last_check', 'Column balance_api_fdw.applicantrevisions.last_check should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'last_check', 'numeric(10,2)', 'Column balance_api_fdw.applicantrevisions.last_check should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'last_check', 'Column balance_api_fdw.applicantrevisions.last_check should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'last_check', 'Column balance_api_fdw.applicantrevisions.last_check should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'bank_account_type', 'Column balance_api_fdw.applicantrevisions.bank_account_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'bank_account_type', 'character varying(10)', 'Column balance_api_fdw.applicantrevisions.bank_account_type should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'bank_account_type', 'Column balance_api_fdw.applicantrevisions.bank_account_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'bank_account_type', 'Column balance_api_fdw.applicantrevisions.bank_account_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'bank_account_len_years', 'Column balance_api_fdw.applicantrevisions.bank_account_len_years should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'bank_account_len_years', 'integer', 'Column balance_api_fdw.applicantrevisions.bank_account_len_years should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'bank_account_len_years', 'Column balance_api_fdw.applicantrevisions.bank_account_len_years should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'bank_account_len_years', 'Column balance_api_fdw.applicantrevisions.bank_account_len_years should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'bank_account_len_months', 'Column balance_api_fdw.applicantrevisions.bank_account_len_months should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'bank_account_len_months', 'integer', 'Column balance_api_fdw.applicantrevisions.bank_account_len_months should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'bank_account_len_months', 'Column balance_api_fdw.applicantrevisions.bank_account_len_months should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'bank_account_len_months', 'Column balance_api_fdw.applicantrevisions.bank_account_len_months should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'aba_routing_number', 'Column balance_api_fdw.applicantrevisions.aba_routing_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'aba_routing_number', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.aba_routing_number should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'aba_routing_number', 'Column balance_api_fdw.applicantrevisions.aba_routing_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'aba_routing_number', 'Column balance_api_fdw.applicantrevisions.aba_routing_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'bank_account_number', 'Column balance_api_fdw.applicantrevisions.bank_account_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'bank_account_number', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.bank_account_number should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'bank_account_number', 'Column balance_api_fdw.applicantrevisions.bank_account_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'bank_account_number', 'Column balance_api_fdw.applicantrevisions.bank_account_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'bank_name', 'Column balance_api_fdw.applicantrevisions.bank_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'bank_name', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.bank_name should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'bank_name', 'Column balance_api_fdw.applicantrevisions.bank_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'bank_name', 'Column balance_api_fdw.applicantrevisions.bank_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'bank_phone', 'Column balance_api_fdw.applicantrevisions.bank_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'bank_phone', 'character varying(14)', 'Column balance_api_fdw.applicantrevisions.bank_phone should be type character varying(14)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'bank_phone', 'Column balance_api_fdw.applicantrevisions.bank_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'bank_phone', 'Column balance_api_fdw.applicantrevisions.bank_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'bank_country', 'Column balance_api_fdw.applicantrevisions.bank_country should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'bank_country', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.bank_country should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'bank_country', 'Column balance_api_fdw.applicantrevisions.bank_country should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'bank_country', 'Column balance_api_fdw.applicantrevisions.bank_country should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'loan_reason', 'Column balance_api_fdw.applicantrevisions.loan_reason should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'loan_reason', 'character varying(50)', 'Column balance_api_fdw.applicantrevisions.loan_reason should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'loan_reason', 'Column balance_api_fdw.applicantrevisions.loan_reason should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'loan_reason', 'Column balance_api_fdw.applicantrevisions.loan_reason should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'first_payday_of_month', 'Column balance_api_fdw.applicantrevisions.first_payday_of_month should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'first_payday_of_month', 'character varying(25)', 'Column balance_api_fdw.applicantrevisions.first_payday_of_month should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'first_payday_of_month', 'Column balance_api_fdw.applicantrevisions.first_payday_of_month should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'first_payday_of_month', 'Column balance_api_fdw.applicantrevisions.first_payday_of_month should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'second_payday_of_month', 'Column balance_api_fdw.applicantrevisions.second_payday_of_month should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'second_payday_of_month', 'character varying(25)', 'Column balance_api_fdw.applicantrevisions.second_payday_of_month should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'second_payday_of_month', 'Column balance_api_fdw.applicantrevisions.second_payday_of_month should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'second_payday_of_month', 'Column balance_api_fdw.applicantrevisions.second_payday_of_month should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'day_of_week_paid', 'Column balance_api_fdw.applicantrevisions.day_of_week_paid should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'day_of_week_paid', 'character varying(25)', 'Column balance_api_fdw.applicantrevisions.day_of_week_paid should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'day_of_week_paid', 'Column balance_api_fdw.applicantrevisions.day_of_week_paid should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'day_of_week_paid', 'Column balance_api_fdw.applicantrevisions.day_of_week_paid should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'enhanced_verification', 'Column balance_api_fdw.applicantrevisions.enhanced_verification should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'enhanced_verification', 'character varying(20)', 'Column balance_api_fdw.applicantrevisions.enhanced_verification should be type character varying(20)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'enhanced_verification', 'Column balance_api_fdw.applicantrevisions.enhanced_verification should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'enhanced_verification', 'Column balance_api_fdw.applicantrevisions.enhanced_verification should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'gds_submit_timestamp', 'Column balance_api_fdw.applicantrevisions.gds_submit_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'gds_submit_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.applicantrevisions.gds_submit_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'gds_submit_timestamp', 'Column balance_api_fdw.applicantrevisions.gds_submit_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'gds_submit_timestamp', 'Column balance_api_fdw.applicantrevisions.gds_submit_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'gds_return_timestamp', 'Column balance_api_fdw.applicantrevisions.gds_return_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'gds_return_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.applicantrevisions.gds_return_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'gds_return_timestamp', 'Column balance_api_fdw.applicantrevisions.gds_return_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'gds_return_timestamp', 'Column balance_api_fdw.applicantrevisions.gds_return_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'epic_submit_timestamp', 'Column balance_api_fdw.applicantrevisions.epic_submit_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'epic_submit_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.applicantrevisions.epic_submit_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'epic_submit_timestamp', 'Column balance_api_fdw.applicantrevisions.epic_submit_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'epic_submit_timestamp', 'Column balance_api_fdw.applicantrevisions.epic_submit_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'epic_return_timestamp', 'Column balance_api_fdw.applicantrevisions.epic_return_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'epic_return_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.applicantrevisions.epic_return_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'epic_return_timestamp', 'Column balance_api_fdw.applicantrevisions.epic_return_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'epic_return_timestamp', 'Column balance_api_fdw.applicantrevisions.epic_return_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'cso_apr', 'Column balance_api_fdw.applicantrevisions.cso_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'cso_apr', 'numeric(6,2)', 'Column balance_api_fdw.applicantrevisions.cso_apr should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'cso_apr', 'Column balance_api_fdw.applicantrevisions.cso_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'cso_apr', 'Column balance_api_fdw.applicantrevisions.cso_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'cso_fee', 'Column balance_api_fdw.applicantrevisions.cso_fee should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'cso_fee', 'numeric(6,2)', 'Column balance_api_fdw.applicantrevisions.cso_fee should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'cso_fee', 'Column balance_api_fdw.applicantrevisions.cso_fee should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'cso_fee', 'Column balance_api_fdw.applicantrevisions.cso_fee should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'gds_key', 'Column balance_api_fdw.applicantrevisions.gds_key should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'gds_key', 'character varying(255)', 'Column balance_api_fdw.applicantrevisions.gds_key should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'gds_key', 'Column balance_api_fdw.applicantrevisions.gds_key should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'gds_key', 'Column balance_api_fdw.applicantrevisions.gds_key should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'epic_key', 'Column balance_api_fdw.applicantrevisions.epic_key should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'epic_key', 'character varying(255)', 'Column balance_api_fdw.applicantrevisions.epic_key should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'epic_key', 'Column balance_api_fdw.applicantrevisions.epic_key should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'epic_key', 'Column balance_api_fdw.applicantrevisions.epic_key should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'loan_requested_amount', 'Column balance_api_fdw.applicantrevisions.loan_requested_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'loan_requested_amount', 'numeric(10,2)', 'Column balance_api_fdw.applicantrevisions.loan_requested_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'loan_requested_amount', 'Column balance_api_fdw.applicantrevisions.loan_requested_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'loan_requested_amount', 'Column balance_api_fdw.applicantrevisions.loan_requested_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'loan_approved_amount', 'Column balance_api_fdw.applicantrevisions.loan_approved_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'loan_approved_amount', 'numeric(10,2)', 'Column balance_api_fdw.applicantrevisions.loan_approved_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'loan_approved_amount', 'Column balance_api_fdw.applicantrevisions.loan_approved_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'loan_approved_amount', 'Column balance_api_fdw.applicantrevisions.loan_approved_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'loan_actual_amount', 'Column balance_api_fdw.applicantrevisions.loan_actual_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'loan_actual_amount', 'numeric(10,2)', 'Column balance_api_fdw.applicantrevisions.loan_actual_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'loan_actual_amount', 'Column balance_api_fdw.applicantrevisions.loan_actual_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'loan_actual_amount', 'Column balance_api_fdw.applicantrevisions.loan_actual_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'loan_apr', 'Column balance_api_fdw.applicantrevisions.loan_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'loan_apr', 'numeric(10,2)', 'Column balance_api_fdw.applicantrevisions.loan_apr should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'loan_apr', 'Column balance_api_fdw.applicantrevisions.loan_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'loan_apr', 'Column balance_api_fdw.applicantrevisions.loan_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'loan_number_of_payments', 'Column balance_api_fdw.applicantrevisions.loan_number_of_payments should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'loan_number_of_payments', 'numeric(10,2)', 'Column balance_api_fdw.applicantrevisions.loan_number_of_payments should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'loan_number_of_payments', 'Column balance_api_fdw.applicantrevisions.loan_number_of_payments should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'loan_number_of_payments', 'Column balance_api_fdw.applicantrevisions.loan_number_of_payments should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'payment_method', 'Column balance_api_fdw.applicantrevisions.payment_method should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'payment_method', 'character varying(5)', 'Column balance_api_fdw.applicantrevisions.payment_method should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'payment_method', 'Column balance_api_fdw.applicantrevisions.payment_method should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'payment_method', 'Column balance_api_fdw.applicantrevisions.payment_method should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'current_status', 'Column balance_api_fdw.applicantrevisions.current_status should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'current_status', 'character varying(500)', 'Column balance_api_fdw.applicantrevisions.current_status should be type character varying(500)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'current_status', 'Column balance_api_fdw.applicantrevisions.current_status should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'current_status', 'Column balance_api_fdw.applicantrevisions.current_status should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'lms', 'Column balance_api_fdw.applicantrevisions.lms should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'lms', 'character varying(10)', 'Column balance_api_fdw.applicantrevisions.lms should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'lms', 'Column balance_api_fdw.applicantrevisions.lms should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'lms', 'Column balance_api_fdw.applicantrevisions.lms should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'los', 'Column balance_api_fdw.applicantrevisions.los should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'los', 'character varying(10)', 'Column balance_api_fdw.applicantrevisions.los should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'los', 'Column balance_api_fdw.applicantrevisions.los should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'los', 'Column balance_api_fdw.applicantrevisions.los should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'agree_electronic_communications', 'Column balance_api_fdw.applicantrevisions.agree_electronic_communications should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'agree_electronic_communications', 'boolean', 'Column balance_api_fdw.applicantrevisions.agree_electronic_communications should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'agree_electronic_communications', 'Column balance_api_fdw.applicantrevisions.agree_electronic_communications should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'agree_electronic_communications', 'Column balance_api_fdw.applicantrevisions.agree_electronic_communications should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'agree_privacy_notice', 'Column balance_api_fdw.applicantrevisions.agree_privacy_notice should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'agree_privacy_notice', 'boolean', 'Column balance_api_fdw.applicantrevisions.agree_privacy_notice should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'agree_privacy_notice', 'Column balance_api_fdw.applicantrevisions.agree_privacy_notice should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'agree_privacy_notice', 'Column balance_api_fdw.applicantrevisions.agree_privacy_notice should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'agree_confirm_accuracy', 'Column balance_api_fdw.applicantrevisions.agree_confirm_accuracy should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'agree_confirm_accuracy', 'boolean', 'Column balance_api_fdw.applicantrevisions.agree_confirm_accuracy should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'agree_confirm_accuracy', 'Column balance_api_fdw.applicantrevisions.agree_confirm_accuracy should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'agree_confirm_accuracy', 'Column balance_api_fdw.applicantrevisions.agree_confirm_accuracy should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'agree_telemarketing', 'Column balance_api_fdw.applicantrevisions.agree_telemarketing should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'agree_telemarketing', 'boolean', 'Column balance_api_fdw.applicantrevisions.agree_telemarketing should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'agree_telemarketing', 'Column balance_api_fdw.applicantrevisions.agree_telemarketing should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'agree_telemarketing', 'Column balance_api_fdw.applicantrevisions.agree_telemarketing should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'exit_intent_eligible', 'Column balance_api_fdw.applicantrevisions.exit_intent_eligible should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'exit_intent_eligible', 'boolean', 'Column balance_api_fdw.applicantrevisions.exit_intent_eligible should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'exit_intent_eligible', 'Column balance_api_fdw.applicantrevisions.exit_intent_eligible should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'exit_intent_eligible', 'Column balance_api_fdw.applicantrevisions.exit_intent_eligible should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'exit_intent_shown', 'Column balance_api_fdw.applicantrevisions.exit_intent_shown should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'exit_intent_shown', 'boolean', 'Column balance_api_fdw.applicantrevisions.exit_intent_shown should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'exit_intent_shown', 'Column balance_api_fdw.applicantrevisions.exit_intent_shown should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'exit_intent_shown', 'Column balance_api_fdw.applicantrevisions.exit_intent_shown should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'latest_campaign', 'Column balance_api_fdw.applicantrevisions.latest_campaign should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'latest_campaign', 'character varying(255)', 'Column balance_api_fdw.applicantrevisions.latest_campaign should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'latest_campaign', 'Column balance_api_fdw.applicantrevisions.latest_campaign should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'latest_campaign', 'Column balance_api_fdw.applicantrevisions.latest_campaign should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'date_created', 'Column balance_api_fdw.applicantrevisions.date_created should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'date_created', 'timestamp with time zone', 'Column balance_api_fdw.applicantrevisions.date_created should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'date_created', 'Column balance_api_fdw.applicantrevisions.date_created should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'date_created', 'Column balance_api_fdw.applicantrevisions.date_created should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantrevisions', 'last_error', 'Column balance_api_fdw.applicantrevisions.last_error should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantrevisions', 'last_error', 'character varying(500)', 'Column balance_api_fdw.applicantrevisions.last_error should be type character varying(500)');
SELECT col_is_null(      'balance_api_fdw', 'applicantrevisions', 'last_error', 'Column balance_api_fdw.applicantrevisions.last_error should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantrevisions', 'last_error', 'Column balance_api_fdw.applicantrevisions.last_error should not  have a default');

SELECT * FROM finish();
ROLLBACK;
