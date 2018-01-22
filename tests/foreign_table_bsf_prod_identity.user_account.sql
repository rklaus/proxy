SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'bsf_prod_identity', 'user_account',
    'Should have foreign table bsf_prod_identity.user_account'
);

SELECT hasnt_pk(
    'bsf_prod_identity', 'user_account',
    'Table bsf_prod_identity.user_account should have a primary key'
);

SELECT columns_are('bsf_prod_identity'::name, 'user_account'::name, ARRAY[
    'user_account_key'::name,
    'user_account_id'::name,
    'username'::name,
    'person_id'::name,
    'brand'::name,
    'loanpro_customer_id'::name,
    'epic_customer_fl'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_identity', 'user_account', 'user_account_key', 'Column bsf_prod_identity.user_account.user_account_key should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'user_account_key', 'integer', 'Column bsf_prod_identity.user_account.user_account_key should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'user_account_key', 'Column bsf_prod_identity.user_account.user_account_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'user_account_key', 'Column bsf_prod_identity.user_account.user_account_key should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'user_account_id', 'Column bsf_prod_identity.user_account.user_account_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'user_account_id', 'bigint', 'Column bsf_prod_identity.user_account.user_account_id should be type bigint');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'user_account_id', 'Column bsf_prod_identity.user_account.user_account_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'user_account_id', 'Column bsf_prod_identity.user_account.user_account_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'username', 'Column bsf_prod_identity.user_account.username should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'username', 'text', 'Column bsf_prod_identity.user_account.username should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'username', 'Column bsf_prod_identity.user_account.username should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'username', 'Column bsf_prod_identity.user_account.username should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'person_id', 'Column bsf_prod_identity.user_account.person_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'person_id', 'integer', 'Column bsf_prod_identity.user_account.person_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'person_id', 'Column bsf_prod_identity.user_account.person_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'person_id', 'Column bsf_prod_identity.user_account.person_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'brand', 'Column bsf_prod_identity.user_account.brand should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'brand', 'text', 'Column bsf_prod_identity.user_account.brand should be type text');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'brand', 'Column bsf_prod_identity.user_account.brand should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'brand', 'Column bsf_prod_identity.user_account.brand should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'loanpro_customer_id', 'Column bsf_prod_identity.user_account.loanpro_customer_id should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'loanpro_customer_id', 'integer', 'Column bsf_prod_identity.user_account.loanpro_customer_id should be type integer');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'loanpro_customer_id', 'Column bsf_prod_identity.user_account.loanpro_customer_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'loanpro_customer_id', 'Column bsf_prod_identity.user_account.loanpro_customer_id should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'epic_customer_fl', 'Column bsf_prod_identity.user_account.epic_customer_fl should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'epic_customer_fl', 'boolean', 'Column bsf_prod_identity.user_account.epic_customer_fl should be type boolean');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'epic_customer_fl', 'Column bsf_prod_identity.user_account.epic_customer_fl should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'epic_customer_fl', 'Column bsf_prod_identity.user_account.epic_customer_fl should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'last_updated', 'Column bsf_prod_identity.user_account.last_updated should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_identity.user_account.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'last_updated', 'Column bsf_prod_identity.user_account.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'last_updated', 'Column bsf_prod_identity.user_account.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'effective', 'Column bsf_prod_identity.user_account.effective should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.user_account.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'effective', 'Column bsf_prod_identity.user_account.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'effective', 'Column bsf_prod_identity.user_account.effective should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'asserted', 'Column bsf_prod_identity.user_account.asserted should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_identity.user_account.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'asserted', 'Column bsf_prod_identity.user_account.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'asserted', 'Column bsf_prod_identity.user_account.asserted should not  have a default');

SELECT has_column(       'bsf_prod_identity', 'user_account', 'row_created_at', 'Column bsf_prod_identity.user_account.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_identity', 'user_account', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_identity.user_account.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_identity', 'user_account', 'row_created_at', 'Column bsf_prod_identity.user_account.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_identity', 'user_account', 'row_created_at', 'Column bsf_prod_identity.user_account.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
