SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'bsf_prod_identity', 'email_address',
    'Should have foreign table bsf_prod_identity.email_address'
);

SELECT hasnt_pk(
    'bsf_prod_identity', 'email_address',
    'Table bsf_prod_identity.email_address should have a primary key'
);

SELECT columns_are('bsf_prod_identity'::name, 'email_address'::name, ARRAY[
    'email_address_key'::name,
    'email_address_id'::name,
    'email_address'::name,
    'user_account_id'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_identity', 'email_address', 'email_address_key', 'Column bsf_prod_identity.email_address.email_address_key should exist');
SELECT col_type_is(      'bsf_prod_identity', 'email_address', 'email_address_key', 'integer', 'Column bsf_prod_identity.email_address.email_address_key should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'email_address', 'email_address_key', 'Column bsf_prod_identity.email_address.email_address_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'email_address', 'email_address_key', 'Column bsf_prod_identity.email_address.email_address_key should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'email_address', 'email_address_id', 'Column bsf_prod_identity.email_address.email_address_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'email_address', 'email_address_id', 'bigint', 'Column bsf_prod_identity.email_address.email_address_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'email_address', 'email_address_id', 'Column bsf_prod_identity.email_address.email_address_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'email_address', 'email_address_id', 'Column bsf_prod_identity.email_address.email_address_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'email_address', 'email_address', 'Column bsf_prod_identity.email_address.email_address should exist');
SELECT col_type_is(      'bsf_prod_identity', 'email_address', 'email_address', 'text', 'Column bsf_prod_identity.email_address.email_address should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'email_address', 'email_address', 'Column bsf_prod_identity.email_address.email_address should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'email_address', 'email_address', 'Column bsf_prod_identity.email_address.email_address should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'email_address', 'user_account_id', 'Column bsf_prod_identity.email_address.user_account_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'email_address', 'user_account_id', 'integer', 'Column bsf_prod_identity.email_address.user_account_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'email_address', 'user_account_id', 'Column bsf_prod_identity.email_address.user_account_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'email_address', 'user_account_id', 'Column bsf_prod_identity.email_address.user_account_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'email_address', 'last_updated', 'Column bsf_prod_identity.email_address.last_updated should exist');
SELECT col_type_is(      'bsf_prod_identity', 'email_address', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_identity.email_address.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'email_address', 'last_updated', 'Column bsf_prod_identity.email_address.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'email_address', 'last_updated', 'Column bsf_prod_identity.email_address.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'email_address', 'effective', 'Column bsf_prod_identity.email_address.effective should exist');
SELECT col_type_is(      'bsf_prod_identity', 'email_address', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.email_address.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'email_address', 'effective', 'Column bsf_prod_identity.email_address.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'email_address', 'effective', 'Column bsf_prod_identity.email_address.effective should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'email_address', 'asserted', 'Column bsf_prod_identity.email_address.asserted should exist');
SELECT col_type_is(      'bsf_prod_identity', 'email_address', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.email_address.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'email_address', 'asserted', 'Column bsf_prod_identity.email_address.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'email_address', 'asserted', 'Column bsf_prod_identity.email_address.asserted should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'email_address', 'row_created_at', 'Column bsf_prod_identity.email_address.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_identity', 'email_address', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_identity.email_address.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'email_address', 'row_created_at', 'Column bsf_prod_identity.email_address.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'email_address', 'row_created_at', 'Column bsf_prod_identity.email_address.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
