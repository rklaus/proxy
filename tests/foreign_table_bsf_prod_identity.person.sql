SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'bsf_prod_identity', 'person',
    'Should have foreign table bsf_prod_identity.person'
);

SELECT hasnt_pk(
    'bsf_prod_identity', 'person',
    'Table bsf_prod_identity.person should have a primary key'
);

SELECT columns_are('bsf_prod_identity'::name, 'person'::name, ARRAY[
    'person_key'::name,
    'person_id'::name,
    'last_name'::name,
    'first_name'::name,
    'ssn'::name,
    'dob'::name,
    'marital_status_id'::name,
    'spouse_person_id'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name,
    'middle_initial'::name
]);

SELECT has_column(       'bsf_prod_identity', 'person', 'person_key', 'Column bsf_prod_identity.person.person_key should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'person_key', 'integer', 'Column bsf_prod_identity.person.person_key should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'person_key', 'Column bsf_prod_identity.person.person_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'person_key', 'Column bsf_prod_identity.person.person_key should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'person_id', 'Column bsf_prod_identity.person.person_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'person_id', 'bigint', 'Column bsf_prod_identity.person.person_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'person_id', 'Column bsf_prod_identity.person.person_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'person_id', 'Column bsf_prod_identity.person.person_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'last_name', 'Column bsf_prod_identity.person.last_name should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'last_name', 'text', 'Column bsf_prod_identity.person.last_name should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'last_name', 'Column bsf_prod_identity.person.last_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'last_name', 'Column bsf_prod_identity.person.last_name should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'first_name', 'Column bsf_prod_identity.person.first_name should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'first_name', 'text', 'Column bsf_prod_identity.person.first_name should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'first_name', 'Column bsf_prod_identity.person.first_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'first_name', 'Column bsf_prod_identity.person.first_name should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'ssn', 'Column bsf_prod_identity.person.ssn should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'ssn', 'character varying(9)', 'Column bsf_prod_identity.person.ssn should be type character varying(9)');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'ssn', 'Column bsf_prod_identity.person.ssn should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'ssn', 'Column bsf_prod_identity.person.ssn should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'dob', 'Column bsf_prod_identity.person.dob should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'dob', 'date', 'Column bsf_prod_identity.person.dob should be type date');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'dob', 'Column bsf_prod_identity.person.dob should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'dob', 'Column bsf_prod_identity.person.dob should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'marital_status_id', 'Column bsf_prod_identity.person.marital_status_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'marital_status_id', 'integer', 'Column bsf_prod_identity.person.marital_status_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'marital_status_id', 'Column bsf_prod_identity.person.marital_status_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'marital_status_id', 'Column bsf_prod_identity.person.marital_status_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'spouse_person_id', 'Column bsf_prod_identity.person.spouse_person_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'spouse_person_id', 'bigint', 'Column bsf_prod_identity.person.spouse_person_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'spouse_person_id', 'Column bsf_prod_identity.person.spouse_person_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'spouse_person_id', 'Column bsf_prod_identity.person.spouse_person_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'last_updated', 'Column bsf_prod_identity.person.last_updated should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_identity.person.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'last_updated', 'Column bsf_prod_identity.person.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'last_updated', 'Column bsf_prod_identity.person.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'effective', 'Column bsf_prod_identity.person.effective should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.person.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'effective', 'Column bsf_prod_identity.person.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'effective', 'Column bsf_prod_identity.person.effective should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'asserted', 'Column bsf_prod_identity.person.asserted should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.person.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'asserted', 'Column bsf_prod_identity.person.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'asserted', 'Column bsf_prod_identity.person.asserted should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'row_created_at', 'Column bsf_prod_identity.person.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_identity.person.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'row_created_at', 'Column bsf_prod_identity.person.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'row_created_at', 'Column bsf_prod_identity.person.row_created_at should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'person', 'middle_initial', 'Column bsf_prod_identity.person.middle_initial should exist');
SELECT col_type_is(      'bsf_prod_identity', 'person', 'middle_initial', 'character(1)', 'Column bsf_prod_identity.person.middle_initial should be type character(1)');
SELECT col_is_null(      'bsf_prod_identity', 'person', 'middle_initial', 'Column bsf_prod_identity.person.middle_initial should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'person', 'middle_initial', 'Column bsf_prod_identity.person.middle_initial should not  have a default');

SELECT * FROM finish();
ROLLBACK;
