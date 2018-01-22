SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'bsf_prod_identity', 'phone',
    'Should have foreign table bsf_prod_identity.phone'
);

SELECT hasnt_pk(
    'bsf_prod_identity', 'phone',
    'Table bsf_prod_identity.phone should have a primary key'
);

SELECT columns_are('bsf_prod_identity'::name, 'phone'::name, ARRAY[
    'phone_key'::name,
    'phone_id'::name,
    'phone_number'::name,
    'user_account_id'::name,
    'phone_priority_id'::name,
    'phone_type_id'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_identity', 'phone', 'phone_key', 'Column bsf_prod_identity.phone.phone_key should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'phone_key', 'integer', 'Column bsf_prod_identity.phone.phone_key should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'phone_key', 'Column bsf_prod_identity.phone.phone_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'phone_key', 'Column bsf_prod_identity.phone.phone_key should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'phone_id', 'Column bsf_prod_identity.phone.phone_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'phone_id', 'bigint', 'Column bsf_prod_identity.phone.phone_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'phone_id', 'Column bsf_prod_identity.phone.phone_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'phone_id', 'Column bsf_prod_identity.phone.phone_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'phone_number', 'Column bsf_prod_identity.phone.phone_number should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'phone_number', 'text', 'Column bsf_prod_identity.phone.phone_number should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'phone_number', 'Column bsf_prod_identity.phone.phone_number should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'phone_number', 'Column bsf_prod_identity.phone.phone_number should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'user_account_id', 'Column bsf_prod_identity.phone.user_account_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'user_account_id', 'integer', 'Column bsf_prod_identity.phone.user_account_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'user_account_id', 'Column bsf_prod_identity.phone.user_account_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'user_account_id', 'Column bsf_prod_identity.phone.user_account_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'phone_priority_id', 'Column bsf_prod_identity.phone.phone_priority_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'phone_priority_id', 'integer', 'Column bsf_prod_identity.phone.phone_priority_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'phone_priority_id', 'Column bsf_prod_identity.phone.phone_priority_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'phone_priority_id', 'Column bsf_prod_identity.phone.phone_priority_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'phone_type_id', 'Column bsf_prod_identity.phone.phone_type_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'phone_type_id', 'integer', 'Column bsf_prod_identity.phone.phone_type_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'phone_type_id', 'Column bsf_prod_identity.phone.phone_type_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'phone_type_id', 'Column bsf_prod_identity.phone.phone_type_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'last_updated', 'Column bsf_prod_identity.phone.last_updated should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_identity.phone.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'last_updated', 'Column bsf_prod_identity.phone.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'last_updated', 'Column bsf_prod_identity.phone.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'effective', 'Column bsf_prod_identity.phone.effective should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.phone.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'effective', 'Column bsf_prod_identity.phone.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'effective', 'Column bsf_prod_identity.phone.effective should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'asserted', 'Column bsf_prod_identity.phone.asserted should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.phone.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'asserted', 'Column bsf_prod_identity.phone.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'asserted', 'Column bsf_prod_identity.phone.asserted should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'phone', 'row_created_at', 'Column bsf_prod_identity.phone.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_identity', 'phone', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_identity.phone.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'phone', 'row_created_at', 'Column bsf_prod_identity.phone.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'phone', 'row_created_at', 'Column bsf_prod_identity.phone.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
