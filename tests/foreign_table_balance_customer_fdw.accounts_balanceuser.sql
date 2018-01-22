SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(103);

SELECT has_foreign_table(
    'balance_customer_fdw', 'accounts_balanceuser',
    'Should have foreign table balance_customer_fdw.accounts_balanceuser'
);

SELECT hasnt_pk(
    'balance_customer_fdw', 'accounts_balanceuser',
    'Table balance_customer_fdw.accounts_balanceuser should have a primary key'
);

SELECT columns_are('balance_customer_fdw'::name, 'accounts_balanceuser'::name, ARRAY[
    'id'::name,
    'password'::name,
    'last_login'::name,
    'is_superuser'::name,
    'email'::name,
    'first_name'::name,
    'last_name'::name,
    'is_staff'::name,
    'is_active'::name,
    'date_joined'::name,
    'consent_to_email_contact'::name,
    'consent_to_phone_contact'::name,
    'address_one'::name,
    'address_two'::name,
    'city'::name,
    'state'::name,
    'zip_code'::name,
    'home_phone'::name,
    'cell_phone'::name,
    'ssn_last_four'::name,
    'dob'::name,
    'dl_number'::name,
    'dl_state'::name,
    'activation_token'::name,
    'reset_token'::name
]);

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'id', 'Column balance_customer_fdw.accounts_balanceuser.id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'id', 'integer', 'Column balance_customer_fdw.accounts_balanceuser.id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'id', 'Column balance_customer_fdw.accounts_balanceuser.id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'id', 'Column balance_customer_fdw.accounts_balanceuser.id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'password', 'Column balance_customer_fdw.accounts_balanceuser.password should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'password', 'character varying(128)', 'Column balance_customer_fdw.accounts_balanceuser.password should be type character varying(128)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'password', 'Column balance_customer_fdw.accounts_balanceuser.password should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'password', 'Column balance_customer_fdw.accounts_balanceuser.password should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'last_login', 'Column balance_customer_fdw.accounts_balanceuser.last_login should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'last_login', 'timestamp with time zone', 'Column balance_customer_fdw.accounts_balanceuser.last_login should be type timestamp with time zone');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'last_login', 'Column balance_customer_fdw.accounts_balanceuser.last_login should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'last_login', 'Column balance_customer_fdw.accounts_balanceuser.last_login should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'is_superuser', 'Column balance_customer_fdw.accounts_balanceuser.is_superuser should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'is_superuser', 'boolean', 'Column balance_customer_fdw.accounts_balanceuser.is_superuser should be type boolean');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'is_superuser', 'Column balance_customer_fdw.accounts_balanceuser.is_superuser should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'is_superuser', 'Column balance_customer_fdw.accounts_balanceuser.is_superuser should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'email', 'Column balance_customer_fdw.accounts_balanceuser.email should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'email', 'character varying(255)', 'Column balance_customer_fdw.accounts_balanceuser.email should be type character varying(255)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'email', 'Column balance_customer_fdw.accounts_balanceuser.email should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'email', 'Column balance_customer_fdw.accounts_balanceuser.email should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'first_name', 'Column balance_customer_fdw.accounts_balanceuser.first_name should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'first_name', 'character varying(30)', 'Column balance_customer_fdw.accounts_balanceuser.first_name should be type character varying(30)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'first_name', 'Column balance_customer_fdw.accounts_balanceuser.first_name should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'first_name', 'Column balance_customer_fdw.accounts_balanceuser.first_name should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'last_name', 'Column balance_customer_fdw.accounts_balanceuser.last_name should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'last_name', 'character varying(30)', 'Column balance_customer_fdw.accounts_balanceuser.last_name should be type character varying(30)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'last_name', 'Column balance_customer_fdw.accounts_balanceuser.last_name should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'last_name', 'Column balance_customer_fdw.accounts_balanceuser.last_name should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'is_staff', 'Column balance_customer_fdw.accounts_balanceuser.is_staff should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'is_staff', 'boolean', 'Column balance_customer_fdw.accounts_balanceuser.is_staff should be type boolean');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'is_staff', 'Column balance_customer_fdw.accounts_balanceuser.is_staff should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'is_staff', 'Column balance_customer_fdw.accounts_balanceuser.is_staff should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'is_active', 'Column balance_customer_fdw.accounts_balanceuser.is_active should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'is_active', 'boolean', 'Column balance_customer_fdw.accounts_balanceuser.is_active should be type boolean');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'is_active', 'Column balance_customer_fdw.accounts_balanceuser.is_active should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'is_active', 'Column balance_customer_fdw.accounts_balanceuser.is_active should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'date_joined', 'Column balance_customer_fdw.accounts_balanceuser.date_joined should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'date_joined', 'timestamp with time zone', 'Column balance_customer_fdw.accounts_balanceuser.date_joined should be type timestamp with time zone');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'date_joined', 'Column balance_customer_fdw.accounts_balanceuser.date_joined should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'date_joined', 'Column balance_customer_fdw.accounts_balanceuser.date_joined should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'consent_to_email_contact', 'Column balance_customer_fdw.accounts_balanceuser.consent_to_email_contact should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'consent_to_email_contact', 'boolean', 'Column balance_customer_fdw.accounts_balanceuser.consent_to_email_contact should be type boolean');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'consent_to_email_contact', 'Column balance_customer_fdw.accounts_balanceuser.consent_to_email_contact should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'consent_to_email_contact', 'Column balance_customer_fdw.accounts_balanceuser.consent_to_email_contact should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'consent_to_phone_contact', 'Column balance_customer_fdw.accounts_balanceuser.consent_to_phone_contact should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'consent_to_phone_contact', 'boolean', 'Column balance_customer_fdw.accounts_balanceuser.consent_to_phone_contact should be type boolean');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'consent_to_phone_contact', 'Column balance_customer_fdw.accounts_balanceuser.consent_to_phone_contact should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'consent_to_phone_contact', 'Column balance_customer_fdw.accounts_balanceuser.consent_to_phone_contact should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'address_one', 'Column balance_customer_fdw.accounts_balanceuser.address_one should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'address_one', 'character varying(255)', 'Column balance_customer_fdw.accounts_balanceuser.address_one should be type character varying(255)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'address_one', 'Column balance_customer_fdw.accounts_balanceuser.address_one should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'address_one', 'Column balance_customer_fdw.accounts_balanceuser.address_one should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'address_two', 'Column balance_customer_fdw.accounts_balanceuser.address_two should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'address_two', 'character varying(255)', 'Column balance_customer_fdw.accounts_balanceuser.address_two should be type character varying(255)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'address_two', 'Column balance_customer_fdw.accounts_balanceuser.address_two should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'address_two', 'Column balance_customer_fdw.accounts_balanceuser.address_two should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'city', 'Column balance_customer_fdw.accounts_balanceuser.city should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'city', 'character varying(50)', 'Column balance_customer_fdw.accounts_balanceuser.city should be type character varying(50)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'city', 'Column balance_customer_fdw.accounts_balanceuser.city should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'city', 'Column balance_customer_fdw.accounts_balanceuser.city should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'state', 'Column balance_customer_fdw.accounts_balanceuser.state should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'state', 'character varying(2)', 'Column balance_customer_fdw.accounts_balanceuser.state should be type character varying(2)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'state', 'Column balance_customer_fdw.accounts_balanceuser.state should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'state', 'Column balance_customer_fdw.accounts_balanceuser.state should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'zip_code', 'Column balance_customer_fdw.accounts_balanceuser.zip_code should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'zip_code', 'character varying(10)', 'Column balance_customer_fdw.accounts_balanceuser.zip_code should be type character varying(10)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'zip_code', 'Column balance_customer_fdw.accounts_balanceuser.zip_code should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'zip_code', 'Column balance_customer_fdw.accounts_balanceuser.zip_code should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'home_phone', 'Column balance_customer_fdw.accounts_balanceuser.home_phone should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'home_phone', 'character varying(14)', 'Column balance_customer_fdw.accounts_balanceuser.home_phone should be type character varying(14)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'home_phone', 'Column balance_customer_fdw.accounts_balanceuser.home_phone should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'home_phone', 'Column balance_customer_fdw.accounts_balanceuser.home_phone should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'cell_phone', 'Column balance_customer_fdw.accounts_balanceuser.cell_phone should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'cell_phone', 'character varying(14)', 'Column balance_customer_fdw.accounts_balanceuser.cell_phone should be type character varying(14)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'cell_phone', 'Column balance_customer_fdw.accounts_balanceuser.cell_phone should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'cell_phone', 'Column balance_customer_fdw.accounts_balanceuser.cell_phone should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'ssn_last_four', 'Column balance_customer_fdw.accounts_balanceuser.ssn_last_four should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'ssn_last_four', 'character varying(32)', 'Column balance_customer_fdw.accounts_balanceuser.ssn_last_four should be type character varying(32)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'ssn_last_four', 'Column balance_customer_fdw.accounts_balanceuser.ssn_last_four should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'ssn_last_four', 'Column balance_customer_fdw.accounts_balanceuser.ssn_last_four should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'dob', 'Column balance_customer_fdw.accounts_balanceuser.dob should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'dob', 'date', 'Column balance_customer_fdw.accounts_balanceuser.dob should be type date');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'dob', 'Column balance_customer_fdw.accounts_balanceuser.dob should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'dob', 'Column balance_customer_fdw.accounts_balanceuser.dob should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'dl_number', 'Column balance_customer_fdw.accounts_balanceuser.dl_number should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'dl_number', 'character varying(32)', 'Column balance_customer_fdw.accounts_balanceuser.dl_number should be type character varying(32)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'dl_number', 'Column balance_customer_fdw.accounts_balanceuser.dl_number should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'dl_number', 'Column balance_customer_fdw.accounts_balanceuser.dl_number should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'dl_state', 'Column balance_customer_fdw.accounts_balanceuser.dl_state should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'dl_state', 'character varying(2)', 'Column balance_customer_fdw.accounts_balanceuser.dl_state should be type character varying(2)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'dl_state', 'Column balance_customer_fdw.accounts_balanceuser.dl_state should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'dl_state', 'Column balance_customer_fdw.accounts_balanceuser.dl_state should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'activation_token', 'Column balance_customer_fdw.accounts_balanceuser.activation_token should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'activation_token', 'character varying(36)', 'Column balance_customer_fdw.accounts_balanceuser.activation_token should be type character varying(36)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'activation_token', 'Column balance_customer_fdw.accounts_balanceuser.activation_token should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'activation_token', 'Column balance_customer_fdw.accounts_balanceuser.activation_token should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'accounts_balanceuser', 'reset_token', 'Column balance_customer_fdw.accounts_balanceuser.reset_token should exist');
SELECT col_type_is(      'balance_customer_fdw', 'accounts_balanceuser', 'reset_token', 'character varying(36)', 'Column balance_customer_fdw.accounts_balanceuser.reset_token should be type character varying(36)');
SELECT col_is_null(      'balance_customer_fdw', 'accounts_balanceuser', 'reset_token', 'Column balance_customer_fdw.accounts_balanceuser.reset_token should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'accounts_balanceuser', 'reset_token', 'Column balance_customer_fdw.accounts_balanceuser.reset_token should not  have a default');

SELECT * FROM finish();
ROLLBACK;
