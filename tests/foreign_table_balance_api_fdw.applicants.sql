SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(451);

SELECT has_foreign_table(
    'balance_api_fdw', 'applicants',
    'Should have foreign table balance_api_fdw.applicants'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'applicants',
    'Table balance_api_fdw.applicants should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'applicants'::name, ARRAY[
    'applicant_transaction_number'::name,
    'applicant_transaction_date'::name,
    'applicant_transaction_time'::name,
    'applicant_requested_date'::name,
    'applicant_effective_date'::name,
    'applicant_promo_code'::name,
    'first_name'::name,
    'last_name'::name,
    'previous_customer'::name,
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
    'loan_requested_amount'::name,
    'loan_reason'::name,
    'field1'::name,
    'field2'::name,
    'field3'::name,
    'field4'::name,
    'gds_submit_timestamp'::name,
    'gds_return_timestamp'::name,
    'epic_submit_timestamp'::name,
    'epic_return_timestamp'::name,
    'cso_apr'::name,
    'cso_fee'::name,
    'first_payday_of_month'::name,
    'second_payday_of_month'::name,
    'day_of_week_paid'::name,
    'ip_address'::name,
    'user_agent_string'::name,
    'token'::name,
    'pricing_tier_id'::name,
    'enhanced_verification'::name,
    'preapproved_id'::name,
    'gds_key'::name,
    'epic_key'::name,
    'iovation_result'::name,
    'iovation_tracking_number'::name,
    'iovation_score'::name,
    'iovation_rules_matched'::name,
    'iovation_payload'::name,
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
    'loan_approved_amount'::name,
    'exit_intent_eligible'::name,
    'exit_intent_shown'::name,
    'latest_campaign'::name,
    'social_security_number_last_4'::name,
    'los_decision'::name,
    'los_approved_amount'::name,
    'days_since_last_payoff'::name,
    'created_at'::name,
    'updated_at'::name,
    'pti_max_payment'::name,
    'last_error'::name,
    'pay_schedule_aligned'::name,
    'pti_rate'::name,
    'first_payment_date'::name,
    'pay_schedule_offset'::name,
    'document_language'::name,
    'marital_status'::name,
    'spouse_address_line1'::name,
    'spouse_address_line2'::name,
    'spouse_city'::name,
    'spouse_first_name'::name,
    'spouse_last_name'::name,
    'spouse_state'::name,
    'spouse_zip_code'::name
]);

SELECT has_column(       'balance_api_fdw', 'applicants', 'applicant_transaction_number', 'Column balance_api_fdw.applicants.applicant_transaction_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'applicant_transaction_number', 'integer', 'Column balance_api_fdw.applicants.applicant_transaction_number should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'applicant_transaction_number', 'Column balance_api_fdw.applicants.applicant_transaction_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'applicant_transaction_number', 'Column balance_api_fdw.applicants.applicant_transaction_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'applicant_transaction_date', 'Column balance_api_fdw.applicants.applicant_transaction_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'applicant_transaction_date', 'date', 'Column balance_api_fdw.applicants.applicant_transaction_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'applicant_transaction_date', 'Column balance_api_fdw.applicants.applicant_transaction_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'applicant_transaction_date', 'Column balance_api_fdw.applicants.applicant_transaction_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'applicant_transaction_time', 'Column balance_api_fdw.applicants.applicant_transaction_time should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'applicant_transaction_time', 'time without time zone', 'Column balance_api_fdw.applicants.applicant_transaction_time should be type time without time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'applicant_transaction_time', 'Column balance_api_fdw.applicants.applicant_transaction_time should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'applicant_transaction_time', 'Column balance_api_fdw.applicants.applicant_transaction_time should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'applicant_requested_date', 'Column balance_api_fdw.applicants.applicant_requested_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'applicant_requested_date', 'date', 'Column balance_api_fdw.applicants.applicant_requested_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'applicant_requested_date', 'Column balance_api_fdw.applicants.applicant_requested_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'applicant_requested_date', 'Column balance_api_fdw.applicants.applicant_requested_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'applicant_effective_date', 'Column balance_api_fdw.applicants.applicant_effective_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'applicant_effective_date', 'date', 'Column balance_api_fdw.applicants.applicant_effective_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'applicant_effective_date', 'Column balance_api_fdw.applicants.applicant_effective_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'applicant_effective_date', 'Column balance_api_fdw.applicants.applicant_effective_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'applicant_promo_code', 'Column balance_api_fdw.applicants.applicant_promo_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'applicant_promo_code', 'character varying(50)', 'Column balance_api_fdw.applicants.applicant_promo_code should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'applicant_promo_code', 'Column balance_api_fdw.applicants.applicant_promo_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'applicant_promo_code', 'Column balance_api_fdw.applicants.applicant_promo_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'first_name', 'Column balance_api_fdw.applicants.first_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'first_name', 'character varying(50)', 'Column balance_api_fdw.applicants.first_name should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'first_name', 'Column balance_api_fdw.applicants.first_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'first_name', 'Column balance_api_fdw.applicants.first_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'last_name', 'Column balance_api_fdw.applicants.last_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'last_name', 'character varying(50)', 'Column balance_api_fdw.applicants.last_name should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'last_name', 'Column balance_api_fdw.applicants.last_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'last_name', 'Column balance_api_fdw.applicants.last_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'previous_customer', 'Column balance_api_fdw.applicants.previous_customer should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'previous_customer', 'character varying(5)', 'Column balance_api_fdw.applicants.previous_customer should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'previous_customer', 'Column balance_api_fdw.applicants.previous_customer should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'previous_customer', 'Column balance_api_fdw.applicants.previous_customer should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'address_line1', 'Column balance_api_fdw.applicants.address_line1 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'address_line1', 'character varying(255)', 'Column balance_api_fdw.applicants.address_line1 should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'address_line1', 'Column balance_api_fdw.applicants.address_line1 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'address_line1', 'Column balance_api_fdw.applicants.address_line1 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'address_line2', 'Column balance_api_fdw.applicants.address_line2 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'address_line2', 'character varying(255)', 'Column balance_api_fdw.applicants.address_line2 should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'address_line2', 'Column balance_api_fdw.applicants.address_line2 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'address_line2', 'Column balance_api_fdw.applicants.address_line2 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'city', 'Column balance_api_fdw.applicants.city should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'city', 'character varying(50)', 'Column balance_api_fdw.applicants.city should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'city', 'Column balance_api_fdw.applicants.city should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'city', 'Column balance_api_fdw.applicants.city should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'country', 'Column balance_api_fdw.applicants.country should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'country', 'character varying(50)', 'Column balance_api_fdw.applicants.country should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'country', 'Column balance_api_fdw.applicants.country should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'country', 'Column balance_api_fdw.applicants.country should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'zip_code', 'Column balance_api_fdw.applicants.zip_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'zip_code', 'character varying(10)', 'Column balance_api_fdw.applicants.zip_code should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'zip_code', 'Column balance_api_fdw.applicants.zip_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'zip_code', 'Column balance_api_fdw.applicants.zip_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'state_code', 'Column balance_api_fdw.applicants.state_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'state_code', 'character varying(5)', 'Column balance_api_fdw.applicants.state_code should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'state_code', 'Column balance_api_fdw.applicants.state_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'state_code', 'Column balance_api_fdw.applicants.state_code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'address_len_years', 'Column balance_api_fdw.applicants.address_len_years should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'address_len_years', 'integer', 'Column balance_api_fdw.applicants.address_len_years should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'address_len_years', 'Column balance_api_fdw.applicants.address_len_years should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'address_len_years', 'Column balance_api_fdw.applicants.address_len_years should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'address_len_months', 'Column balance_api_fdw.applicants.address_len_months should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'address_len_months', 'integer', 'Column balance_api_fdw.applicants.address_len_months should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'address_len_months', 'Column balance_api_fdw.applicants.address_len_months should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'address_len_months', 'Column balance_api_fdw.applicants.address_len_months should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'cell_phone', 'Column balance_api_fdw.applicants.cell_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'cell_phone', 'character varying(14)', 'Column balance_api_fdw.applicants.cell_phone should be type character varying(14)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'cell_phone', 'Column balance_api_fdw.applicants.cell_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'cell_phone', 'Column balance_api_fdw.applicants.cell_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'home_phone', 'Column balance_api_fdw.applicants.home_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'home_phone', 'character varying(14)', 'Column balance_api_fdw.applicants.home_phone should be type character varying(14)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'home_phone', 'Column balance_api_fdw.applicants.home_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'home_phone', 'Column balance_api_fdw.applicants.home_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'email', 'Column balance_api_fdw.applicants.email should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'email', 'character varying(255)', 'Column balance_api_fdw.applicants.email should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'email', 'Column balance_api_fdw.applicants.email should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'email', 'Column balance_api_fdw.applicants.email should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'social_security_number', 'Column balance_api_fdw.applicants.social_security_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'social_security_number', 'character varying(32)', 'Column balance_api_fdw.applicants.social_security_number should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'social_security_number', 'Column balance_api_fdw.applicants.social_security_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'social_security_number', 'Column balance_api_fdw.applicants.social_security_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'date_of_birth', 'Column balance_api_fdw.applicants.date_of_birth should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'date_of_birth', 'date', 'Column balance_api_fdw.applicants.date_of_birth should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'date_of_birth', 'Column balance_api_fdw.applicants.date_of_birth should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'date_of_birth', 'Column balance_api_fdw.applicants.date_of_birth should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'eighteen_years_old', 'Column balance_api_fdw.applicants.eighteen_years_old should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'eighteen_years_old', 'character varying(10)', 'Column balance_api_fdw.applicants.eighteen_years_old should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'eighteen_years_old', 'Column balance_api_fdw.applicants.eighteen_years_old should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'eighteen_years_old', 'Column balance_api_fdw.applicants.eighteen_years_old should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'driver_sid_num', 'Column balance_api_fdw.applicants.driver_sid_num should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'driver_sid_num', 'character varying(32)', 'Column balance_api_fdw.applicants.driver_sid_num should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'driver_sid_num', 'Column balance_api_fdw.applicants.driver_sid_num should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'driver_sid_num', 'Column balance_api_fdw.applicants.driver_sid_num should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'driver_sid_state', 'Column balance_api_fdw.applicants.driver_sid_state should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'driver_sid_state', 'character varying(5)', 'Column balance_api_fdw.applicants.driver_sid_state should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'driver_sid_state', 'Column balance_api_fdw.applicants.driver_sid_state should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'driver_sid_state', 'Column balance_api_fdw.applicants.driver_sid_state should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'is_military', 'Column balance_api_fdw.applicants.is_military should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'is_military', 'character varying(5)', 'Column balance_api_fdw.applicants.is_military should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'is_military', 'Column balance_api_fdw.applicants.is_military should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'is_military', 'Column balance_api_fdw.applicants.is_military should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'housing_type', 'Column balance_api_fdw.applicants.housing_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'housing_type', 'character varying(5)', 'Column balance_api_fdw.applicants.housing_type should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'housing_type', 'Column balance_api_fdw.applicants.housing_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'housing_type', 'Column balance_api_fdw.applicants.housing_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'employer_name', 'Column balance_api_fdw.applicants.employer_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'employer_name', 'character varying(50)', 'Column balance_api_fdw.applicants.employer_name should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'employer_name', 'Column balance_api_fdw.applicants.employer_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'employer_name', 'Column balance_api_fdw.applicants.employer_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'income_type', 'Column balance_api_fdw.applicants.income_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'income_type', 'character varying(10)', 'Column balance_api_fdw.applicants.income_type should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'income_type', 'Column balance_api_fdw.applicants.income_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'income_type', 'Column balance_api_fdw.applicants.income_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'employer_phone', 'Column balance_api_fdw.applicants.employer_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'employer_phone', 'character varying(14)', 'Column balance_api_fdw.applicants.employer_phone should be type character varying(14)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'employer_phone', 'Column balance_api_fdw.applicants.employer_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'employer_phone', 'Column balance_api_fdw.applicants.employer_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'employer_len_years', 'Column balance_api_fdw.applicants.employer_len_years should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'employer_len_years', 'integer', 'Column balance_api_fdw.applicants.employer_len_years should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'employer_len_years', 'Column balance_api_fdw.applicants.employer_len_years should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'employer_len_years', 'Column balance_api_fdw.applicants.employer_len_years should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'employer_len_months', 'Column balance_api_fdw.applicants.employer_len_months should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'employer_len_months', 'integer', 'Column balance_api_fdw.applicants.employer_len_months should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'employer_len_months', 'Column balance_api_fdw.applicants.employer_len_months should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'employer_len_months', 'Column balance_api_fdw.applicants.employer_len_months should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'employer_benefit_startdate', 'Column balance_api_fdw.applicants.employer_benefit_startdate should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'employer_benefit_startdate', 'date', 'Column balance_api_fdw.applicants.employer_benefit_startdate should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'employer_benefit_startdate', 'Column balance_api_fdw.applicants.employer_benefit_startdate should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'employer_benefit_startdate', 'Column balance_api_fdw.applicants.employer_benefit_startdate should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'income_frequency', 'Column balance_api_fdw.applicants.income_frequency should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'income_frequency', 'character varying(5)', 'Column balance_api_fdw.applicants.income_frequency should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'income_frequency', 'Column balance_api_fdw.applicants.income_frequency should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'income_frequency', 'Column balance_api_fdw.applicants.income_frequency should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'pay_type', 'Column balance_api_fdw.applicants.pay_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'pay_type', 'character varying(5)', 'Column balance_api_fdw.applicants.pay_type should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'pay_type', 'Column balance_api_fdw.applicants.pay_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'pay_type', 'Column balance_api_fdw.applicants.pay_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'employer_periodicity', 'Column balance_api_fdw.applicants.employer_periodicity should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'employer_periodicity', 'character varying(5)', 'Column balance_api_fdw.applicants.employer_periodicity should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'employer_periodicity', 'Column balance_api_fdw.applicants.employer_periodicity should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'employer_periodicity', 'Column balance_api_fdw.applicants.employer_periodicity should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'last_payday', 'Column balance_api_fdw.applicants.last_payday should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'last_payday', 'date', 'Column balance_api_fdw.applicants.last_payday should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'last_payday', 'Column balance_api_fdw.applicants.last_payday should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'last_payday', 'Column balance_api_fdw.applicants.last_payday should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'next_payday', 'Column balance_api_fdw.applicants.next_payday should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'next_payday', 'date', 'Column balance_api_fdw.applicants.next_payday should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'next_payday', 'Column balance_api_fdw.applicants.next_payday should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'next_payday', 'Column balance_api_fdw.applicants.next_payday should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'second_payday', 'Column balance_api_fdw.applicants.second_payday should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'second_payday', 'date', 'Column balance_api_fdw.applicants.second_payday should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'second_payday', 'Column balance_api_fdw.applicants.second_payday should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'second_payday', 'Column balance_api_fdw.applicants.second_payday should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'last_check', 'Column balance_api_fdw.applicants.last_check should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'last_check', 'numeric(10,2)', 'Column balance_api_fdw.applicants.last_check should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'last_check', 'Column balance_api_fdw.applicants.last_check should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'last_check', 'Column balance_api_fdw.applicants.last_check should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'bank_account_type', 'Column balance_api_fdw.applicants.bank_account_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'bank_account_type', 'character varying(10)', 'Column balance_api_fdw.applicants.bank_account_type should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'bank_account_type', 'Column balance_api_fdw.applicants.bank_account_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'bank_account_type', 'Column balance_api_fdw.applicants.bank_account_type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'bank_account_len_years', 'Column balance_api_fdw.applicants.bank_account_len_years should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'bank_account_len_years', 'integer', 'Column balance_api_fdw.applicants.bank_account_len_years should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'bank_account_len_years', 'Column balance_api_fdw.applicants.bank_account_len_years should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'bank_account_len_years', 'Column balance_api_fdw.applicants.bank_account_len_years should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'bank_account_len_months', 'Column balance_api_fdw.applicants.bank_account_len_months should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'bank_account_len_months', 'integer', 'Column balance_api_fdw.applicants.bank_account_len_months should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'bank_account_len_months', 'Column balance_api_fdw.applicants.bank_account_len_months should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'bank_account_len_months', 'Column balance_api_fdw.applicants.bank_account_len_months should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'aba_routing_number', 'Column balance_api_fdw.applicants.aba_routing_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'aba_routing_number', 'character varying(50)', 'Column balance_api_fdw.applicants.aba_routing_number should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'aba_routing_number', 'Column balance_api_fdw.applicants.aba_routing_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'aba_routing_number', 'Column balance_api_fdw.applicants.aba_routing_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'bank_account_number', 'Column balance_api_fdw.applicants.bank_account_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'bank_account_number', 'character varying(50)', 'Column balance_api_fdw.applicants.bank_account_number should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'bank_account_number', 'Column balance_api_fdw.applicants.bank_account_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'bank_account_number', 'Column balance_api_fdw.applicants.bank_account_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'bank_name', 'Column balance_api_fdw.applicants.bank_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'bank_name', 'character varying(50)', 'Column balance_api_fdw.applicants.bank_name should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'bank_name', 'Column balance_api_fdw.applicants.bank_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'bank_name', 'Column balance_api_fdw.applicants.bank_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'bank_phone', 'Column balance_api_fdw.applicants.bank_phone should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'bank_phone', 'character varying(14)', 'Column balance_api_fdw.applicants.bank_phone should be type character varying(14)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'bank_phone', 'Column balance_api_fdw.applicants.bank_phone should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'bank_phone', 'Column balance_api_fdw.applicants.bank_phone should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'bank_country', 'Column balance_api_fdw.applicants.bank_country should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'bank_country', 'character varying(50)', 'Column balance_api_fdw.applicants.bank_country should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'bank_country', 'Column balance_api_fdw.applicants.bank_country should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'bank_country', 'Column balance_api_fdw.applicants.bank_country should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'loan_requested_amount', 'Column balance_api_fdw.applicants.loan_requested_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'loan_requested_amount', 'numeric(10,2)', 'Column balance_api_fdw.applicants.loan_requested_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'loan_requested_amount', 'Column balance_api_fdw.applicants.loan_requested_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'loan_requested_amount', 'Column balance_api_fdw.applicants.loan_requested_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'loan_reason', 'Column balance_api_fdw.applicants.loan_reason should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'loan_reason', 'character varying(50)', 'Column balance_api_fdw.applicants.loan_reason should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'loan_reason', 'Column balance_api_fdw.applicants.loan_reason should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'loan_reason', 'Column balance_api_fdw.applicants.loan_reason should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'field1', 'Column balance_api_fdw.applicants.field1 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'field1', 'text', 'Column balance_api_fdw.applicants.field1 should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'field1', 'Column balance_api_fdw.applicants.field1 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'field1', 'Column balance_api_fdw.applicants.field1 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'field2', 'Column balance_api_fdw.applicants.field2 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'field2', 'text', 'Column balance_api_fdw.applicants.field2 should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'field2', 'Column balance_api_fdw.applicants.field2 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'field2', 'Column balance_api_fdw.applicants.field2 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'field3', 'Column balance_api_fdw.applicants.field3 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'field3', 'text', 'Column balance_api_fdw.applicants.field3 should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'field3', 'Column balance_api_fdw.applicants.field3 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'field3', 'Column balance_api_fdw.applicants.field3 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'field4', 'Column balance_api_fdw.applicants.field4 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'field4', 'text', 'Column balance_api_fdw.applicants.field4 should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'field4', 'Column balance_api_fdw.applicants.field4 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'field4', 'Column balance_api_fdw.applicants.field4 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'gds_submit_timestamp', 'Column balance_api_fdw.applicants.gds_submit_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'gds_submit_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.applicants.gds_submit_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'gds_submit_timestamp', 'Column balance_api_fdw.applicants.gds_submit_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'gds_submit_timestamp', 'Column balance_api_fdw.applicants.gds_submit_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'gds_return_timestamp', 'Column balance_api_fdw.applicants.gds_return_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'gds_return_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.applicants.gds_return_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'gds_return_timestamp', 'Column balance_api_fdw.applicants.gds_return_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'gds_return_timestamp', 'Column balance_api_fdw.applicants.gds_return_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'epic_submit_timestamp', 'Column balance_api_fdw.applicants.epic_submit_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'epic_submit_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.applicants.epic_submit_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'epic_submit_timestamp', 'Column balance_api_fdw.applicants.epic_submit_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'epic_submit_timestamp', 'Column balance_api_fdw.applicants.epic_submit_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'epic_return_timestamp', 'Column balance_api_fdw.applicants.epic_return_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'epic_return_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.applicants.epic_return_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'epic_return_timestamp', 'Column balance_api_fdw.applicants.epic_return_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'epic_return_timestamp', 'Column balance_api_fdw.applicants.epic_return_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'cso_apr', 'Column balance_api_fdw.applicants.cso_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'cso_apr', 'numeric(6,2)', 'Column balance_api_fdw.applicants.cso_apr should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'cso_apr', 'Column balance_api_fdw.applicants.cso_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'cso_apr', 'Column balance_api_fdw.applicants.cso_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'cso_fee', 'Column balance_api_fdw.applicants.cso_fee should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'cso_fee', 'numeric(6,2)', 'Column balance_api_fdw.applicants.cso_fee should be type numeric(6,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'cso_fee', 'Column balance_api_fdw.applicants.cso_fee should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'cso_fee', 'Column balance_api_fdw.applicants.cso_fee should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'first_payday_of_month', 'Column balance_api_fdw.applicants.first_payday_of_month should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'first_payday_of_month', 'character varying(25)', 'Column balance_api_fdw.applicants.first_payday_of_month should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'first_payday_of_month', 'Column balance_api_fdw.applicants.first_payday_of_month should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'first_payday_of_month', 'Column balance_api_fdw.applicants.first_payday_of_month should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'second_payday_of_month', 'Column balance_api_fdw.applicants.second_payday_of_month should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'second_payday_of_month', 'character varying(25)', 'Column balance_api_fdw.applicants.second_payday_of_month should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'second_payday_of_month', 'Column balance_api_fdw.applicants.second_payday_of_month should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'second_payday_of_month', 'Column balance_api_fdw.applicants.second_payday_of_month should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'day_of_week_paid', 'Column balance_api_fdw.applicants.day_of_week_paid should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'day_of_week_paid', 'character varying(25)', 'Column balance_api_fdw.applicants.day_of_week_paid should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'day_of_week_paid', 'Column balance_api_fdw.applicants.day_of_week_paid should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'day_of_week_paid', 'Column balance_api_fdw.applicants.day_of_week_paid should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'ip_address', 'Column balance_api_fdw.applicants.ip_address should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'ip_address', 'character varying(255)', 'Column balance_api_fdw.applicants.ip_address should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'ip_address', 'Column balance_api_fdw.applicants.ip_address should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'ip_address', 'Column balance_api_fdw.applicants.ip_address should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'user_agent_string', 'Column balance_api_fdw.applicants.user_agent_string should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'user_agent_string', 'character varying(1024)', 'Column balance_api_fdw.applicants.user_agent_string should be type character varying(1024)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'user_agent_string', 'Column balance_api_fdw.applicants.user_agent_string should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'user_agent_string', 'Column balance_api_fdw.applicants.user_agent_string should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'token', 'Column balance_api_fdw.applicants.token should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'token', 'character varying(32)', 'Column balance_api_fdw.applicants.token should be type character varying(32)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'token', 'Column balance_api_fdw.applicants.token should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'token', 'Column balance_api_fdw.applicants.token should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'pricing_tier_id', 'Column balance_api_fdw.applicants.pricing_tier_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'pricing_tier_id', 'integer', 'Column balance_api_fdw.applicants.pricing_tier_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'pricing_tier_id', 'Column balance_api_fdw.applicants.pricing_tier_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'pricing_tier_id', 'Column balance_api_fdw.applicants.pricing_tier_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'enhanced_verification', 'Column balance_api_fdw.applicants.enhanced_verification should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'enhanced_verification', 'character varying(20)', 'Column balance_api_fdw.applicants.enhanced_verification should be type character varying(20)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'enhanced_verification', 'Column balance_api_fdw.applicants.enhanced_verification should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'enhanced_verification', 'Column balance_api_fdw.applicants.enhanced_verification should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'preapproved_id', 'Column balance_api_fdw.applicants.preapproved_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'preapproved_id', 'integer', 'Column balance_api_fdw.applicants.preapproved_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'preapproved_id', 'Column balance_api_fdw.applicants.preapproved_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'preapproved_id', 'Column balance_api_fdw.applicants.preapproved_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'gds_key', 'Column balance_api_fdw.applicants.gds_key should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'gds_key', 'character varying(255)', 'Column balance_api_fdw.applicants.gds_key should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'gds_key', 'Column balance_api_fdw.applicants.gds_key should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'gds_key', 'Column balance_api_fdw.applicants.gds_key should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'epic_key', 'Column balance_api_fdw.applicants.epic_key should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'epic_key', 'character varying(255)', 'Column balance_api_fdw.applicants.epic_key should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'epic_key', 'Column balance_api_fdw.applicants.epic_key should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'epic_key', 'Column balance_api_fdw.applicants.epic_key should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'iovation_result', 'Column balance_api_fdw.applicants.iovation_result should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'iovation_result', 'character varying(10)', 'Column balance_api_fdw.applicants.iovation_result should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'iovation_result', 'Column balance_api_fdw.applicants.iovation_result should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'iovation_result', 'Column balance_api_fdw.applicants.iovation_result should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'iovation_tracking_number', 'Column balance_api_fdw.applicants.iovation_tracking_number should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'iovation_tracking_number', 'character varying(40)', 'Column balance_api_fdw.applicants.iovation_tracking_number should be type character varying(40)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'iovation_tracking_number', 'Column balance_api_fdw.applicants.iovation_tracking_number should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'iovation_tracking_number', 'Column balance_api_fdw.applicants.iovation_tracking_number should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'iovation_score', 'Column balance_api_fdw.applicants.iovation_score should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'iovation_score', 'integer', 'Column balance_api_fdw.applicants.iovation_score should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'iovation_score', 'Column balance_api_fdw.applicants.iovation_score should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'iovation_score', 'Column balance_api_fdw.applicants.iovation_score should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'iovation_rules_matched', 'Column balance_api_fdw.applicants.iovation_rules_matched should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'iovation_rules_matched', 'integer', 'Column balance_api_fdw.applicants.iovation_rules_matched should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'iovation_rules_matched', 'Column balance_api_fdw.applicants.iovation_rules_matched should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'iovation_rules_matched', 'Column balance_api_fdw.applicants.iovation_rules_matched should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'iovation_payload', 'Column balance_api_fdw.applicants.iovation_payload should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'iovation_payload', 'text', 'Column balance_api_fdw.applicants.iovation_payload should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'iovation_payload', 'Column balance_api_fdw.applicants.iovation_payload should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'iovation_payload', 'Column balance_api_fdw.applicants.iovation_payload should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'loan_actual_amount', 'Column balance_api_fdw.applicants.loan_actual_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'loan_actual_amount', 'numeric(10,2)', 'Column balance_api_fdw.applicants.loan_actual_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'loan_actual_amount', 'Column balance_api_fdw.applicants.loan_actual_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'loan_actual_amount', 'Column balance_api_fdw.applicants.loan_actual_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'loan_apr', 'Column balance_api_fdw.applicants.loan_apr should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'loan_apr', 'numeric(10,2)', 'Column balance_api_fdw.applicants.loan_apr should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'loan_apr', 'Column balance_api_fdw.applicants.loan_apr should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'loan_apr', 'Column balance_api_fdw.applicants.loan_apr should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'loan_number_of_payments', 'Column balance_api_fdw.applicants.loan_number_of_payments should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'loan_number_of_payments', 'numeric(10,2)', 'Column balance_api_fdw.applicants.loan_number_of_payments should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'loan_number_of_payments', 'Column balance_api_fdw.applicants.loan_number_of_payments should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'loan_number_of_payments', 'Column balance_api_fdw.applicants.loan_number_of_payments should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'payment_method', 'Column balance_api_fdw.applicants.payment_method should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'payment_method', 'character varying(5)', 'Column balance_api_fdw.applicants.payment_method should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'payment_method', 'Column balance_api_fdw.applicants.payment_method should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'payment_method', 'Column balance_api_fdw.applicants.payment_method should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'current_status', 'Column balance_api_fdw.applicants.current_status should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'current_status', 'character varying(500)', 'Column balance_api_fdw.applicants.current_status should be type character varying(500)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'current_status', 'Column balance_api_fdw.applicants.current_status should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'current_status', 'Column balance_api_fdw.applicants.current_status should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'lms', 'Column balance_api_fdw.applicants.lms should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'lms', 'character varying(10)', 'Column balance_api_fdw.applicants.lms should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'lms', 'Column balance_api_fdw.applicants.lms should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'lms', 'Column balance_api_fdw.applicants.lms should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'los', 'Column balance_api_fdw.applicants.los should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'los', 'character varying(10)', 'Column balance_api_fdw.applicants.los should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'los', 'Column balance_api_fdw.applicants.los should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'los', 'Column balance_api_fdw.applicants.los should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'agree_electronic_communications', 'Column balance_api_fdw.applicants.agree_electronic_communications should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'agree_electronic_communications', 'boolean', 'Column balance_api_fdw.applicants.agree_electronic_communications should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'agree_electronic_communications', 'Column balance_api_fdw.applicants.agree_electronic_communications should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'agree_electronic_communications', 'Column balance_api_fdw.applicants.agree_electronic_communications should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'agree_privacy_notice', 'Column balance_api_fdw.applicants.agree_privacy_notice should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'agree_privacy_notice', 'boolean', 'Column balance_api_fdw.applicants.agree_privacy_notice should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'agree_privacy_notice', 'Column balance_api_fdw.applicants.agree_privacy_notice should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'agree_privacy_notice', 'Column balance_api_fdw.applicants.agree_privacy_notice should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'agree_confirm_accuracy', 'Column balance_api_fdw.applicants.agree_confirm_accuracy should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'agree_confirm_accuracy', 'boolean', 'Column balance_api_fdw.applicants.agree_confirm_accuracy should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'agree_confirm_accuracy', 'Column balance_api_fdw.applicants.agree_confirm_accuracy should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'agree_confirm_accuracy', 'Column balance_api_fdw.applicants.agree_confirm_accuracy should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'agree_telemarketing', 'Column balance_api_fdw.applicants.agree_telemarketing should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'agree_telemarketing', 'boolean', 'Column balance_api_fdw.applicants.agree_telemarketing should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'agree_telemarketing', 'Column balance_api_fdw.applicants.agree_telemarketing should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'agree_telemarketing', 'Column balance_api_fdw.applicants.agree_telemarketing should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'loan_approved_amount', 'Column balance_api_fdw.applicants.loan_approved_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'loan_approved_amount', 'numeric(10,2)', 'Column balance_api_fdw.applicants.loan_approved_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'loan_approved_amount', 'Column balance_api_fdw.applicants.loan_approved_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'loan_approved_amount', 'Column balance_api_fdw.applicants.loan_approved_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'exit_intent_eligible', 'Column balance_api_fdw.applicants.exit_intent_eligible should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'exit_intent_eligible', 'boolean', 'Column balance_api_fdw.applicants.exit_intent_eligible should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'exit_intent_eligible', 'Column balance_api_fdw.applicants.exit_intent_eligible should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'exit_intent_eligible', 'Column balance_api_fdw.applicants.exit_intent_eligible should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'exit_intent_shown', 'Column balance_api_fdw.applicants.exit_intent_shown should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'exit_intent_shown', 'boolean', 'Column balance_api_fdw.applicants.exit_intent_shown should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'exit_intent_shown', 'Column balance_api_fdw.applicants.exit_intent_shown should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'exit_intent_shown', 'Column balance_api_fdw.applicants.exit_intent_shown should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'latest_campaign', 'Column balance_api_fdw.applicants.latest_campaign should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'latest_campaign', 'character varying(255)', 'Column balance_api_fdw.applicants.latest_campaign should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'latest_campaign', 'Column balance_api_fdw.applicants.latest_campaign should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'latest_campaign', 'Column balance_api_fdw.applicants.latest_campaign should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'social_security_number_last_4', 'Column balance_api_fdw.applicants.social_security_number_last_4 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'social_security_number_last_4', 'character varying(4)', 'Column balance_api_fdw.applicants.social_security_number_last_4 should be type character varying(4)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'social_security_number_last_4', 'Column balance_api_fdw.applicants.social_security_number_last_4 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'social_security_number_last_4', 'Column balance_api_fdw.applicants.social_security_number_last_4 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'los_decision', 'Column balance_api_fdw.applicants.los_decision should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'los_decision', 'character varying(10)', 'Column balance_api_fdw.applicants.los_decision should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'los_decision', 'Column balance_api_fdw.applicants.los_decision should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'los_decision', 'Column balance_api_fdw.applicants.los_decision should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'los_approved_amount', 'Column balance_api_fdw.applicants.los_approved_amount should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'los_approved_amount', 'numeric(10,2)', 'Column balance_api_fdw.applicants.los_approved_amount should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'los_approved_amount', 'Column balance_api_fdw.applicants.los_approved_amount should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'los_approved_amount', 'Column balance_api_fdw.applicants.los_approved_amount should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'days_since_last_payoff', 'Column balance_api_fdw.applicants.days_since_last_payoff should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'days_since_last_payoff', 'integer', 'Column balance_api_fdw.applicants.days_since_last_payoff should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'days_since_last_payoff', 'Column balance_api_fdw.applicants.days_since_last_payoff should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'days_since_last_payoff', 'Column balance_api_fdw.applicants.days_since_last_payoff should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'created_at', 'Column balance_api_fdw.applicants.created_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'created_at', 'timestamp with time zone', 'Column balance_api_fdw.applicants.created_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'created_at', 'Column balance_api_fdw.applicants.created_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'created_at', 'Column balance_api_fdw.applicants.created_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'updated_at', 'Column balance_api_fdw.applicants.updated_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'updated_at', 'timestamp with time zone', 'Column balance_api_fdw.applicants.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'updated_at', 'Column balance_api_fdw.applicants.updated_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'updated_at', 'Column balance_api_fdw.applicants.updated_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'pti_max_payment', 'Column balance_api_fdw.applicants.pti_max_payment should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'pti_max_payment', 'numeric(10,2)', 'Column balance_api_fdw.applicants.pti_max_payment should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'pti_max_payment', 'Column balance_api_fdw.applicants.pti_max_payment should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'pti_max_payment', 'Column balance_api_fdw.applicants.pti_max_payment should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'last_error', 'Column balance_api_fdw.applicants.last_error should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'last_error', 'character varying(500)', 'Column balance_api_fdw.applicants.last_error should be type character varying(500)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'last_error', 'Column balance_api_fdw.applicants.last_error should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'last_error', 'Column balance_api_fdw.applicants.last_error should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'pay_schedule_aligned', 'Column balance_api_fdw.applicants.pay_schedule_aligned should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'pay_schedule_aligned', 'boolean', 'Column balance_api_fdw.applicants.pay_schedule_aligned should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'pay_schedule_aligned', 'Column balance_api_fdw.applicants.pay_schedule_aligned should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'pay_schedule_aligned', 'Column balance_api_fdw.applicants.pay_schedule_aligned should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'pti_rate', 'Column balance_api_fdw.applicants.pti_rate should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'pti_rate', 'numeric(10,2)', 'Column balance_api_fdw.applicants.pti_rate should be type numeric(10,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'pti_rate', 'Column balance_api_fdw.applicants.pti_rate should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'pti_rate', 'Column balance_api_fdw.applicants.pti_rate should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'first_payment_date', 'Column balance_api_fdw.applicants.first_payment_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'first_payment_date', 'date', 'Column balance_api_fdw.applicants.first_payment_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'first_payment_date', 'Column balance_api_fdw.applicants.first_payment_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'first_payment_date', 'Column balance_api_fdw.applicants.first_payment_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'pay_schedule_offset', 'Column balance_api_fdw.applicants.pay_schedule_offset should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'pay_schedule_offset', 'integer', 'Column balance_api_fdw.applicants.pay_schedule_offset should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'pay_schedule_offset', 'Column balance_api_fdw.applicants.pay_schedule_offset should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'pay_schedule_offset', 'Column balance_api_fdw.applicants.pay_schedule_offset should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'document_language', 'Column balance_api_fdw.applicants.document_language should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'document_language', 'character varying(2)', 'Column balance_api_fdw.applicants.document_language should be type character varying(2)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'document_language', 'Column balance_api_fdw.applicants.document_language should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'document_language', 'Column balance_api_fdw.applicants.document_language should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'marital_status', 'Column balance_api_fdw.applicants.marital_status should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'marital_status', 'character varying(1)', 'Column balance_api_fdw.applicants.marital_status should be type character varying(1)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'marital_status', 'Column balance_api_fdw.applicants.marital_status should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'marital_status', 'Column balance_api_fdw.applicants.marital_status should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'spouse_address_line1', 'Column balance_api_fdw.applicants.spouse_address_line1 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'spouse_address_line1', 'character varying(255)', 'Column balance_api_fdw.applicants.spouse_address_line1 should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'spouse_address_line1', 'Column balance_api_fdw.applicants.spouse_address_line1 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'spouse_address_line1', 'Column balance_api_fdw.applicants.spouse_address_line1 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'spouse_address_line2', 'Column balance_api_fdw.applicants.spouse_address_line2 should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'spouse_address_line2', 'character varying(255)', 'Column balance_api_fdw.applicants.spouse_address_line2 should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'spouse_address_line2', 'Column balance_api_fdw.applicants.spouse_address_line2 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'spouse_address_line2', 'Column balance_api_fdw.applicants.spouse_address_line2 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'spouse_city', 'Column balance_api_fdw.applicants.spouse_city should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'spouse_city', 'character varying(50)', 'Column balance_api_fdw.applicants.spouse_city should be type character varying(50)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'spouse_city', 'Column balance_api_fdw.applicants.spouse_city should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'spouse_city', 'Column balance_api_fdw.applicants.spouse_city should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'spouse_first_name', 'Column balance_api_fdw.applicants.spouse_first_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'spouse_first_name', 'character varying(255)', 'Column balance_api_fdw.applicants.spouse_first_name should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'spouse_first_name', 'Column balance_api_fdw.applicants.spouse_first_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'spouse_first_name', 'Column balance_api_fdw.applicants.spouse_first_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'spouse_last_name', 'Column balance_api_fdw.applicants.spouse_last_name should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'spouse_last_name', 'character varying(255)', 'Column balance_api_fdw.applicants.spouse_last_name should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'spouse_last_name', 'Column balance_api_fdw.applicants.spouse_last_name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'spouse_last_name', 'Column balance_api_fdw.applicants.spouse_last_name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'spouse_state', 'Column balance_api_fdw.applicants.spouse_state should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'spouse_state', 'character varying(5)', 'Column balance_api_fdw.applicants.spouse_state should be type character varying(5)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'spouse_state', 'Column balance_api_fdw.applicants.spouse_state should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'spouse_state', 'Column balance_api_fdw.applicants.spouse_state should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicants', 'spouse_zip_code', 'Column balance_api_fdw.applicants.spouse_zip_code should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicants', 'spouse_zip_code', 'character varying(10)', 'Column balance_api_fdw.applicants.spouse_zip_code should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'applicants', 'spouse_zip_code', 'Column balance_api_fdw.applicants.spouse_zip_code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicants', 'spouse_zip_code', 'Column balance_api_fdw.applicants.spouse_zip_code should not  have a default');

SELECT * FROM finish();
ROLLBACK;
