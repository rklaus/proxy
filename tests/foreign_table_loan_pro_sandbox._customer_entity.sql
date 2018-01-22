SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(135);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_customer_entity',
    'Should have foreign table loan_pro_sandbox._customer_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_customer_entity',
    'Table loan_pro_sandbox._customer_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_customer_entity'::name, ARRAY[
    'id'::name,
    'custom_id'::name,
    'mc_id'::name,
    'customer_type'::name,
    'status'::name,
    'first_name'::name,
    'last_name'::name,
    'middle_name'::name,
    'birth_date'::name,
    'gender'::name,
    'generation_code'::name,
    'email'::name,
    'ssn'::name,
    'driver_license'::name,
    'company_name'::name,
    'contact_name'::name,
    'customer_id_type'::name,
    'customer_id'::name,
    'credit_score_id'::name,
    'credit_limit'::name,
    'access_username'::name,
    'access_password'::name,
    'primary_address_id'::name,
    'mail_address_id'::name,
    'employer_id'::name,
    'has_avatar'::name,
    'ofac_match'::name,
    'ofac_tested'::name,
    'last_update'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'id', 'Column loan_pro_sandbox._customer_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'id', 'integer', 'Column loan_pro_sandbox._customer_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'id', 'Column loan_pro_sandbox._customer_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'id', 'Column loan_pro_sandbox._customer_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'custom_id', 'Column loan_pro_sandbox._customer_entity.custom_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'custom_id', 'text', 'Column loan_pro_sandbox._customer_entity.custom_id should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'custom_id', 'Column loan_pro_sandbox._customer_entity.custom_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'custom_id', 'Column loan_pro_sandbox._customer_entity.custom_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'mc_id', 'Column loan_pro_sandbox._customer_entity.mc_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'mc_id', 'integer', 'Column loan_pro_sandbox._customer_entity.mc_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'mc_id', 'Column loan_pro_sandbox._customer_entity.mc_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'mc_id', 'Column loan_pro_sandbox._customer_entity.mc_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'customer_type', 'Column loan_pro_sandbox._customer_entity.customer_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'customer_type', 'character(100)', 'Column loan_pro_sandbox._customer_entity.customer_type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'customer_type', 'Column loan_pro_sandbox._customer_entity.customer_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'customer_type', 'Column loan_pro_sandbox._customer_entity.customer_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'status', 'Column loan_pro_sandbox._customer_entity.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'status', 'text', 'Column loan_pro_sandbox._customer_entity.status should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'status', 'Column loan_pro_sandbox._customer_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'status', 'Column loan_pro_sandbox._customer_entity.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'first_name', 'Column loan_pro_sandbox._customer_entity.first_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'first_name', 'character varying(50)', 'Column loan_pro_sandbox._customer_entity.first_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'first_name', 'Column loan_pro_sandbox._customer_entity.first_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'first_name', 'Column loan_pro_sandbox._customer_entity.first_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'last_name', 'Column loan_pro_sandbox._customer_entity.last_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'last_name', 'character varying(50)', 'Column loan_pro_sandbox._customer_entity.last_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'last_name', 'Column loan_pro_sandbox._customer_entity.last_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'last_name', 'Column loan_pro_sandbox._customer_entity.last_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'middle_name', 'Column loan_pro_sandbox._customer_entity.middle_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'middle_name', 'character varying(50)', 'Column loan_pro_sandbox._customer_entity.middle_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'middle_name', 'Column loan_pro_sandbox._customer_entity.middle_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'middle_name', 'Column loan_pro_sandbox._customer_entity.middle_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'birth_date', 'Column loan_pro_sandbox._customer_entity.birth_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'birth_date', 'bytea', 'Column loan_pro_sandbox._customer_entity.birth_date should be type bytea');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'birth_date', 'Column loan_pro_sandbox._customer_entity.birth_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'birth_date', 'Column loan_pro_sandbox._customer_entity.birth_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'gender', 'Column loan_pro_sandbox._customer_entity.gender should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'gender', 'character(100)', 'Column loan_pro_sandbox._customer_entity.gender should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'gender', 'Column loan_pro_sandbox._customer_entity.gender should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'gender', 'Column loan_pro_sandbox._customer_entity.gender should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'generation_code', 'Column loan_pro_sandbox._customer_entity.generation_code should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'generation_code', 'character(100)', 'Column loan_pro_sandbox._customer_entity.generation_code should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'generation_code', 'Column loan_pro_sandbox._customer_entity.generation_code should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'generation_code', 'Column loan_pro_sandbox._customer_entity.generation_code should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'email', 'Column loan_pro_sandbox._customer_entity.email should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'email', 'text', 'Column loan_pro_sandbox._customer_entity.email should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'email', 'Column loan_pro_sandbox._customer_entity.email should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'email', 'Column loan_pro_sandbox._customer_entity.email should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'ssn', 'Column loan_pro_sandbox._customer_entity.ssn should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'ssn', 'bytea', 'Column loan_pro_sandbox._customer_entity.ssn should be type bytea');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'ssn', 'Column loan_pro_sandbox._customer_entity.ssn should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'ssn', 'Column loan_pro_sandbox._customer_entity.ssn should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'driver_license', 'Column loan_pro_sandbox._customer_entity.driver_license should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'driver_license', 'character varying(50)', 'Column loan_pro_sandbox._customer_entity.driver_license should be type character varying(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'driver_license', 'Column loan_pro_sandbox._customer_entity.driver_license should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'driver_license', 'Column loan_pro_sandbox._customer_entity.driver_license should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'company_name', 'Column loan_pro_sandbox._customer_entity.company_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'company_name', 'text', 'Column loan_pro_sandbox._customer_entity.company_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'company_name', 'Column loan_pro_sandbox._customer_entity.company_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'company_name', 'Column loan_pro_sandbox._customer_entity.company_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'contact_name', 'Column loan_pro_sandbox._customer_entity.contact_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'contact_name', 'text', 'Column loan_pro_sandbox._customer_entity.contact_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'contact_name', 'Column loan_pro_sandbox._customer_entity.contact_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'contact_name', 'Column loan_pro_sandbox._customer_entity.contact_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'customer_id_type', 'Column loan_pro_sandbox._customer_entity.customer_id_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'customer_id_type', 'character(100)', 'Column loan_pro_sandbox._customer_entity.customer_id_type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'customer_id_type', 'Column loan_pro_sandbox._customer_entity.customer_id_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'customer_id_type', 'Column loan_pro_sandbox._customer_entity.customer_id_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'customer_id', 'Column loan_pro_sandbox._customer_entity.customer_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'customer_id', 'bytea', 'Column loan_pro_sandbox._customer_entity.customer_id should be type bytea');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'customer_id', 'Column loan_pro_sandbox._customer_entity.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'customer_id', 'Column loan_pro_sandbox._customer_entity.customer_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'credit_score_id', 'Column loan_pro_sandbox._customer_entity.credit_score_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'credit_score_id', 'integer', 'Column loan_pro_sandbox._customer_entity.credit_score_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'credit_score_id', 'Column loan_pro_sandbox._customer_entity.credit_score_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'credit_score_id', 'Column loan_pro_sandbox._customer_entity.credit_score_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'credit_limit', 'Column loan_pro_sandbox._customer_entity.credit_limit should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'credit_limit', 'numeric(10,2)', 'Column loan_pro_sandbox._customer_entity.credit_limit should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'credit_limit', 'Column loan_pro_sandbox._customer_entity.credit_limit should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'credit_limit', 'Column loan_pro_sandbox._customer_entity.credit_limit should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'access_username', 'Column loan_pro_sandbox._customer_entity.access_username should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'access_username', 'text', 'Column loan_pro_sandbox._customer_entity.access_username should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'access_username', 'Column loan_pro_sandbox._customer_entity.access_username should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'access_username', 'Column loan_pro_sandbox._customer_entity.access_username should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'access_password', 'Column loan_pro_sandbox._customer_entity.access_password should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'access_password', 'text', 'Column loan_pro_sandbox._customer_entity.access_password should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'access_password', 'Column loan_pro_sandbox._customer_entity.access_password should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'access_password', 'Column loan_pro_sandbox._customer_entity.access_password should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'primary_address_id', 'Column loan_pro_sandbox._customer_entity.primary_address_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'primary_address_id', 'integer', 'Column loan_pro_sandbox._customer_entity.primary_address_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'primary_address_id', 'Column loan_pro_sandbox._customer_entity.primary_address_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'primary_address_id', 'Column loan_pro_sandbox._customer_entity.primary_address_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'mail_address_id', 'Column loan_pro_sandbox._customer_entity.mail_address_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'mail_address_id', 'integer', 'Column loan_pro_sandbox._customer_entity.mail_address_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'mail_address_id', 'Column loan_pro_sandbox._customer_entity.mail_address_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'mail_address_id', 'Column loan_pro_sandbox._customer_entity.mail_address_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'employer_id', 'Column loan_pro_sandbox._customer_entity.employer_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'employer_id', 'integer', 'Column loan_pro_sandbox._customer_entity.employer_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'employer_id', 'Column loan_pro_sandbox._customer_entity.employer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'employer_id', 'Column loan_pro_sandbox._customer_entity.employer_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'has_avatar', 'Column loan_pro_sandbox._customer_entity.has_avatar should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'has_avatar', 'integer', 'Column loan_pro_sandbox._customer_entity.has_avatar should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'has_avatar', 'Column loan_pro_sandbox._customer_entity.has_avatar should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'has_avatar', 'Column loan_pro_sandbox._customer_entity.has_avatar should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'ofac_match', 'Column loan_pro_sandbox._customer_entity.ofac_match should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'ofac_match', 'integer', 'Column loan_pro_sandbox._customer_entity.ofac_match should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'ofac_match', 'Column loan_pro_sandbox._customer_entity.ofac_match should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'ofac_match', 'Column loan_pro_sandbox._customer_entity.ofac_match should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'ofac_tested', 'Column loan_pro_sandbox._customer_entity.ofac_tested should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'ofac_tested', 'integer', 'Column loan_pro_sandbox._customer_entity.ofac_tested should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'ofac_tested', 'Column loan_pro_sandbox._customer_entity.ofac_tested should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'ofac_tested', 'Column loan_pro_sandbox._customer_entity.ofac_tested should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'last_update', 'Column loan_pro_sandbox._customer_entity.last_update should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'last_update', 'text', 'Column loan_pro_sandbox._customer_entity.last_update should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'last_update', 'Column loan_pro_sandbox._customer_entity.last_update should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'last_update', 'Column loan_pro_sandbox._customer_entity.last_update should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'created', 'Column loan_pro_sandbox._customer_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'created', 'text', 'Column loan_pro_sandbox._customer_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'created', 'Column loan_pro_sandbox._customer_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'created', 'Column loan_pro_sandbox._customer_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'lastupdated', 'Column loan_pro_sandbox._customer_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._customer_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'lastupdated', 'Column loan_pro_sandbox._customer_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'lastupdated', 'Column loan_pro_sandbox._customer_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'active', 'Column loan_pro_sandbox._customer_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'active', 'integer', 'Column loan_pro_sandbox._customer_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'active', 'Column loan_pro_sandbox._customer_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'active', 'Column loan_pro_sandbox._customer_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_entity', 'deleted', 'Column loan_pro_sandbox._customer_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._customer_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_entity', 'deleted', 'Column loan_pro_sandbox._customer_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_entity', 'deleted', 'Column loan_pro_sandbox._customer_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
