SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(247);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_all_cust_info_view',
    'Should have foreign table loan_pro_chorus_sandbox._all_cust_info_view'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_all_cust_info_view',
    'Table loan_pro_chorus_sandbox._all_cust_info_view should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_all_cust_info_view'::name, ARRAY[
    'cust_id'::name,
    'cust_custom_id'::name,
    'cust_customer_type'::name,
    'cust_status'::name,
    'cust_first_name'::name,
    'cust_last_name'::name,
    'cust_middle_name'::name,
    'cust_birth_date'::name,
    'cust_gender'::name,
    'cust_generation_code'::name,
    'cust_email'::name,
    'cust_ssn'::name,
    'cust_driver_license'::name,
    'cust_company_name'::name,
    'cust_contact_name'::name,
    'cust_customer_id_type'::name,
    'cust_customer_id'::name,
    'cust_credit_score_id'::name,
    'cust_credit_limit'::name,
    'cust_access_username'::name,
    'cust_access_password'::name,
    'cust_ofac_match'::name,
    'cust_ofac_tested'::name,
    'cust_last_update'::name,
    'priphone_phone'::name,
    'secphone_phone'::name,
    'addr_address1'::name,
    'addr_address2'::name,
    'addr_city'::name,
    'addr_state'::name,
    'addr_zipcode'::name,
    'addr_country'::name,
    'addr_geo_lat'::name,
    'addr_geo_lon'::name,
    'addr_is_verified'::name,
    'mailaddr_address1'::name,
    'mailaddr_address2'::name,
    'mailaddr_city'::name,
    'mailaddr_state'::name,
    'mailaddr_zipcode'::name,
    'mailaddr_country'::name,
    'mailaddr_geo_lat'::name,
    'mailaddr_geo_lon'::name,
    'mailaddr_is_verified'::name,
    'emp_company_name'::name,
    'emp_title'::name,
    'emp_phone'::name,
    'emp_income'::name,
    'emp_income_frequency'::name,
    'emp_hire_date'::name,
    'emp_pay_date'::name,
    'emp_pay_date_frequency'::name,
    'empaddr_address1'::name,
    'empaddr_address2'::name,
    'empaddr_city'::name,
    'empaddr_state'::name,
    'empaddr_zipcode'::name,
    'empaddr_country'::name,
    'empaddr_geo_lat'::name,
    'empaddr_geo_lon'::name,
    'empaddr_is_verified'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_id', 'integer', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_custom_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_custom_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_custom_id', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_custom_id should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_custom_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_custom_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_custom_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_custom_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_type', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_type', 'character(100)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_type', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_type', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_status', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_status should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_status', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_status should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_status', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_status', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_first_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_first_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_first_name', 'character varying(50)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_first_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_first_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_first_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_first_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_first_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_last_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_last_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_last_name', 'character varying(50)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_last_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_last_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_last_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_last_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_last_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_middle_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_middle_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_middle_name', 'character varying(50)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_middle_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_middle_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_middle_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_middle_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_middle_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_birth_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_birth_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_birth_date', 'bytea', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_birth_date should be type bytea');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_birth_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_birth_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_birth_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_birth_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_gender', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_gender should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_gender', 'character(100)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_gender should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_gender', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_gender should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_gender', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_gender should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_generation_code', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_generation_code should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_generation_code', 'character(100)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_generation_code should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_generation_code', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_generation_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_generation_code', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_generation_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_email', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_email should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_email', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_email should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_email', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_email should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_email', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_email should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ssn', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ssn should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ssn', 'bytea', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ssn should be type bytea');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ssn', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ssn should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ssn', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ssn should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_driver_license', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_driver_license should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_driver_license', 'character varying(50)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_driver_license should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_driver_license', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_driver_license should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_driver_license', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_driver_license should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_company_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_company_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_company_name', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_company_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_company_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_company_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_company_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_company_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_contact_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_contact_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_contact_name', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_contact_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_contact_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_contact_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_contact_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_contact_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_id_type', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_id_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_id_type', 'character(100)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_id_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_id_type', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_id_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_id_type', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_id_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_id', 'bytea', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_id should be type bytea');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_customer_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_customer_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_credit_score_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_credit_score_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_credit_score_id', 'integer', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_credit_score_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_credit_score_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_credit_score_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_credit_score_id', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_credit_score_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_credit_limit', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_credit_limit should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_credit_limit', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_credit_limit should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_credit_limit', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_credit_limit should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_credit_limit', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_credit_limit should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_access_username', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_access_username should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_access_username', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_access_username should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_access_username', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_access_username should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_access_username', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_access_username should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_access_password', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_access_password should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_access_password', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_access_password should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_access_password', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_access_password should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_access_password', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_access_password should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ofac_match', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ofac_match should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ofac_match', 'integer', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ofac_match should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ofac_match', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ofac_match should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ofac_match', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ofac_match should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ofac_tested', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ofac_tested should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ofac_tested', 'integer', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ofac_tested should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ofac_tested', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ofac_tested should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_ofac_tested', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_ofac_tested should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_last_update', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_last_update should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_last_update', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_last_update should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_last_update', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_last_update should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'cust_last_update', 'Column loan_pro_chorus_sandbox._all_cust_info_view.cust_last_update should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'priphone_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.priphone_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'priphone_phone', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.priphone_phone should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'priphone_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.priphone_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'priphone_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.priphone_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'secphone_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.secphone_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'secphone_phone', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.secphone_phone should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'secphone_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.secphone_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'secphone_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.secphone_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_address1 should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_address1', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_address1 should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_address1 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_address1 should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_address2 should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_address2', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_address2 should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_address2 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_address2 should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_city should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_city', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_city should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_city should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_city should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_state should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_state', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_state should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_zipcode should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_zipcode', 'character(15)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_zipcode should be type character(15)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_zipcode should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_zipcode should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_country should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_country', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_country should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_country should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_country should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_geo_lat should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_geo_lat', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_geo_lat should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_geo_lat should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_geo_lat should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_geo_lon should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_geo_lon', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_geo_lon should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_geo_lon should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_geo_lon should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_is_verified should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_is_verified', 'integer', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_is_verified should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_is_verified should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'addr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.addr_is_verified should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_address1 should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_address1', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_address1 should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_address1 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_address1 should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_address2 should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_address2', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_address2 should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_address2 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_address2 should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_city should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_city', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_city should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_city should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_city should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_state should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_state', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_state should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_zipcode should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_zipcode', 'character(15)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_zipcode should be type character(15)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_zipcode should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_zipcode should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_country should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_country', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_country should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_country should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_country should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_geo_lat should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_geo_lat', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_geo_lat should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_geo_lat should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_geo_lat should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_geo_lon should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_geo_lon', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_geo_lon should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_geo_lon should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_geo_lon should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_is_verified should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_is_verified', 'integer', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_is_verified should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_is_verified should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'mailaddr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.mailaddr_is_verified should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_company_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_company_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_company_name', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_company_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_company_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_company_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_company_name', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_company_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_title', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_title', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_title should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_title', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_title', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_phone', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_phone should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_phone', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_income', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_income should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_income', 'numeric(10,2)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_income should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_income', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_income should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_income', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_income should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_income_frequency', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_income_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_income_frequency', 'character(100)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_income_frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_income_frequency', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_income_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_income_frequency', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_income_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_hire_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_hire_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_hire_date', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_hire_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_hire_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_hire_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_hire_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_hire_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_pay_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_pay_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_pay_date', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_pay_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_pay_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_pay_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_pay_date', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_pay_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_pay_date_frequency', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_pay_date_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_pay_date_frequency', 'character(100)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_pay_date_frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_pay_date_frequency', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_pay_date_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'emp_pay_date_frequency', 'Column loan_pro_chorus_sandbox._all_cust_info_view.emp_pay_date_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_address1 should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_address1', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_address1 should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_address1 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_address1', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_address1 should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_address2 should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_address2', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_address2 should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_address2 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_address2', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_address2 should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_city should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_city', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_city should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_city should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_city', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_city should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_state should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_state', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_state should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_state', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_zipcode should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_zipcode', 'character(15)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_zipcode should be type character(15)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_zipcode should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_zipcode', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_zipcode should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_country should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_country', 'character(20)', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_country should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_country should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_country', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_country should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_geo_lat should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_geo_lat', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_geo_lat should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_geo_lat should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_geo_lat', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_geo_lat should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_geo_lon should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_geo_lon', 'text', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_geo_lon should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_geo_lon should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_geo_lon', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_geo_lon should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_is_verified should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_is_verified', 'integer', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_is_verified should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_is_verified should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_all_cust_info_view', 'empaddr_is_verified', 'Column loan_pro_chorus_sandbox._all_cust_info_view.empaddr_is_verified should not  have a default');

SELECT * FROM finish();
ROLLBACK;
