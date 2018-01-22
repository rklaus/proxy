SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'bsf_prod_identity', 'bank_information',
    'Should have foreign table bsf_prod_identity.bank_information'
);

SELECT hasnt_pk(
    'bsf_prod_identity', 'bank_information',
    'Table bsf_prod_identity.bank_information should have a primary key'
);

SELECT columns_are('bsf_prod_identity'::name, 'bank_information'::name, ARRAY[
    'bank_information_key'::name,
    'bank_information_id'::name,
    'user_account_id'::name,
    'bank_name'::name,
    'name_on_account'::name,
    'is_checking'::name,
    'routing_number'::name,
    'account_number'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'bank_information_key', 'Column bsf_prod_identity.bank_information.bank_information_key should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'bank_information_key', 'integer', 'Column bsf_prod_identity.bank_information.bank_information_key should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'bank_information_key', 'Column bsf_prod_identity.bank_information.bank_information_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'bank_information_key', 'Column bsf_prod_identity.bank_information.bank_information_key should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'bank_information_id', 'Column bsf_prod_identity.bank_information.bank_information_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'bank_information_id', 'bigint', 'Column bsf_prod_identity.bank_information.bank_information_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'bank_information_id', 'Column bsf_prod_identity.bank_information.bank_information_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'bank_information_id', 'Column bsf_prod_identity.bank_information.bank_information_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'user_account_id', 'Column bsf_prod_identity.bank_information.user_account_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'user_account_id', 'bigint', 'Column bsf_prod_identity.bank_information.user_account_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'user_account_id', 'Column bsf_prod_identity.bank_information.user_account_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'user_account_id', 'Column bsf_prod_identity.bank_information.user_account_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'bank_name', 'Column bsf_prod_identity.bank_information.bank_name should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'bank_name', 'text', 'Column bsf_prod_identity.bank_information.bank_name should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'bank_name', 'Column bsf_prod_identity.bank_information.bank_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'bank_name', 'Column bsf_prod_identity.bank_information.bank_name should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'name_on_account', 'Column bsf_prod_identity.bank_information.name_on_account should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'name_on_account', 'text', 'Column bsf_prod_identity.bank_information.name_on_account should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'name_on_account', 'Column bsf_prod_identity.bank_information.name_on_account should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'name_on_account', 'Column bsf_prod_identity.bank_information.name_on_account should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'is_checking', 'Column bsf_prod_identity.bank_information.is_checking should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'is_checking', 'boolean', 'Column bsf_prod_identity.bank_information.is_checking should be type boolean');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'is_checking', 'Column bsf_prod_identity.bank_information.is_checking should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'is_checking', 'Column bsf_prod_identity.bank_information.is_checking should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'routing_number', 'Column bsf_prod_identity.bank_information.routing_number should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'routing_number', 'text', 'Column bsf_prod_identity.bank_information.routing_number should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'routing_number', 'Column bsf_prod_identity.bank_information.routing_number should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'routing_number', 'Column bsf_prod_identity.bank_information.routing_number should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'account_number', 'Column bsf_prod_identity.bank_information.account_number should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'account_number', 'text', 'Column bsf_prod_identity.bank_information.account_number should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'account_number', 'Column bsf_prod_identity.bank_information.account_number should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'account_number', 'Column bsf_prod_identity.bank_information.account_number should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'last_updated', 'Column bsf_prod_identity.bank_information.last_updated should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_identity.bank_information.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'last_updated', 'Column bsf_prod_identity.bank_information.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'last_updated', 'Column bsf_prod_identity.bank_information.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'effective', 'Column bsf_prod_identity.bank_information.effective should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.bank_information.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'effective', 'Column bsf_prod_identity.bank_information.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'effective', 'Column bsf_prod_identity.bank_information.effective should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'asserted', 'Column bsf_prod_identity.bank_information.asserted should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.bank_information.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'asserted', 'Column bsf_prod_identity.bank_information.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'asserted', 'Column bsf_prod_identity.bank_information.asserted should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'bank_information', 'row_created_at', 'Column bsf_prod_identity.bank_information.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_identity', 'bank_information', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_identity.bank_information.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'bank_information', 'row_created_at', 'Column bsf_prod_identity.bank_information.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'bank_information', 'row_created_at', 'Column bsf_prod_identity.bank_information.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
