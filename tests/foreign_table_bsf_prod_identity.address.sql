SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(63);

SELECT has_foreign_table(
    'bsf_prod_identity', 'address',
    'Should have foreign table bsf_prod_identity.address'
);

SELECT hasnt_pk(
    'bsf_prod_identity', 'address',
    'Table bsf_prod_identity.address should have a primary key'
);

SELECT columns_are('bsf_prod_identity'::name, 'address'::name, ARRAY[
    'address_key'::name,
    'address_id'::name,
    'city'::name,
    'state_id'::name,
    'zip'::name,
    'address_priority_id'::name,
    'user_account_id'::name,
    'address_line1'::name,
    'address_line2'::name,
    'bad_address_flag'::name,
    'bad_address_reason'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_identity', 'address', 'address_key', 'Column bsf_prod_identity.address.address_key should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'address_key', 'integer', 'Column bsf_prod_identity.address.address_key should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'address_key', 'Column bsf_prod_identity.address.address_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'address_key', 'Column bsf_prod_identity.address.address_key should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'address_id', 'Column bsf_prod_identity.address.address_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'address_id', 'bigint', 'Column bsf_prod_identity.address.address_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'address_id', 'Column bsf_prod_identity.address.address_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'address_id', 'Column bsf_prod_identity.address.address_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'city', 'Column bsf_prod_identity.address.city should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'city', 'text', 'Column bsf_prod_identity.address.city should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'city', 'Column bsf_prod_identity.address.city should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'city', 'Column bsf_prod_identity.address.city should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'state_id', 'Column bsf_prod_identity.address.state_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'state_id', 'integer', 'Column bsf_prod_identity.address.state_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'state_id', 'Column bsf_prod_identity.address.state_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'state_id', 'Column bsf_prod_identity.address.state_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'zip', 'Column bsf_prod_identity.address.zip should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'zip', 'text', 'Column bsf_prod_identity.address.zip should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'zip', 'Column bsf_prod_identity.address.zip should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'zip', 'Column bsf_prod_identity.address.zip should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'address_priority_id', 'Column bsf_prod_identity.address.address_priority_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'address_priority_id', 'integer', 'Column bsf_prod_identity.address.address_priority_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'address_priority_id', 'Column bsf_prod_identity.address.address_priority_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'address_priority_id', 'Column bsf_prod_identity.address.address_priority_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'user_account_id', 'Column bsf_prod_identity.address.user_account_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'user_account_id', 'integer', 'Column bsf_prod_identity.address.user_account_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'user_account_id', 'Column bsf_prod_identity.address.user_account_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'user_account_id', 'Column bsf_prod_identity.address.user_account_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'address_line1', 'Column bsf_prod_identity.address.address_line1 should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'address_line1', 'text', 'Column bsf_prod_identity.address.address_line1 should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'address_line1', 'Column bsf_prod_identity.address.address_line1 should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'address_line1', 'Column bsf_prod_identity.address.address_line1 should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'address_line2', 'Column bsf_prod_identity.address.address_line2 should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'address_line2', 'text', 'Column bsf_prod_identity.address.address_line2 should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'address_line2', 'Column bsf_prod_identity.address.address_line2 should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'address_line2', 'Column bsf_prod_identity.address.address_line2 should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'bad_address_flag', 'Column bsf_prod_identity.address.bad_address_flag should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'bad_address_flag', 'boolean', 'Column bsf_prod_identity.address.bad_address_flag should be type boolean');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'bad_address_flag', 'Column bsf_prod_identity.address.bad_address_flag should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'bad_address_flag', 'Column bsf_prod_identity.address.bad_address_flag should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'bad_address_reason', 'Column bsf_prod_identity.address.bad_address_reason should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'bad_address_reason', 'text', 'Column bsf_prod_identity.address.bad_address_reason should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'bad_address_reason', 'Column bsf_prod_identity.address.bad_address_reason should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'bad_address_reason', 'Column bsf_prod_identity.address.bad_address_reason should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'last_updated', 'Column bsf_prod_identity.address.last_updated should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_identity.address.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'last_updated', 'Column bsf_prod_identity.address.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'last_updated', 'Column bsf_prod_identity.address.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'effective', 'Column bsf_prod_identity.address.effective should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.address.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'effective', 'Column bsf_prod_identity.address.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'effective', 'Column bsf_prod_identity.address.effective should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'asserted', 'Column bsf_prod_identity.address.asserted should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.address.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'asserted', 'Column bsf_prod_identity.address.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'asserted', 'Column bsf_prod_identity.address.asserted should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'address', 'row_created_at', 'Column bsf_prod_identity.address.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_identity', 'address', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_identity.address.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'address', 'row_created_at', 'Column bsf_prod_identity.address.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'address', 'row_created_at', 'Column bsf_prod_identity.address.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
