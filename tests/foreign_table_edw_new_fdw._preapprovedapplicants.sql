SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(71);

SELECT has_foreign_table(
    'edw_new_fdw', '_preapprovedapplicants',
    'Should have foreign table edw_new_fdw._preapprovedapplicants'
);

SELECT hasnt_pk(
    'edw_new_fdw', '_preapprovedapplicants',
    'Table edw_new_fdw._preapprovedapplicants should have a primary key'
);

SELECT columns_are('edw_new_fdw'::name, '_preapprovedapplicants'::name, ARRAY[
    'id'::name,
    'campaign'::name,
    'offer_date'::name,
    'applicant_hash'::name,
    'expiration_date'::name,
    'state'::name,
    'max_line'::name,
    'apr'::name,
    'pricing_tier_id'::name,
    'promo_code_id'::name,
    'first_name'::name,
    'last_name'::name,
    'provider'::name,
    'min_term_months'::name,
    'max_term_months'::name,
    'created_at'::name,
    'updated_at'::name
]);

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'id', 'Column edw_new_fdw._preapprovedapplicants.id should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'id', 'integer', 'Column edw_new_fdw._preapprovedapplicants.id should be type integer');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'id', 'Column edw_new_fdw._preapprovedapplicants.id should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'id', 'Column edw_new_fdw._preapprovedapplicants.id should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'campaign', 'Column edw_new_fdw._preapprovedapplicants.campaign should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'campaign', 'text', 'Column edw_new_fdw._preapprovedapplicants.campaign should be type text');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'campaign', 'Column edw_new_fdw._preapprovedapplicants.campaign should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'campaign', 'Column edw_new_fdw._preapprovedapplicants.campaign should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'offer_date', 'Column edw_new_fdw._preapprovedapplicants.offer_date should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'offer_date', 'date', 'Column edw_new_fdw._preapprovedapplicants.offer_date should be type date');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'offer_date', 'Column edw_new_fdw._preapprovedapplicants.offer_date should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'offer_date', 'Column edw_new_fdw._preapprovedapplicants.offer_date should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'applicant_hash', 'Column edw_new_fdw._preapprovedapplicants.applicant_hash should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'applicant_hash', 'text', 'Column edw_new_fdw._preapprovedapplicants.applicant_hash should be type text');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'applicant_hash', 'Column edw_new_fdw._preapprovedapplicants.applicant_hash should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'applicant_hash', 'Column edw_new_fdw._preapprovedapplicants.applicant_hash should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'expiration_date', 'Column edw_new_fdw._preapprovedapplicants.expiration_date should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'expiration_date', 'date', 'Column edw_new_fdw._preapprovedapplicants.expiration_date should be type date');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'expiration_date', 'Column edw_new_fdw._preapprovedapplicants.expiration_date should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'expiration_date', 'Column edw_new_fdw._preapprovedapplicants.expiration_date should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'state', 'Column edw_new_fdw._preapprovedapplicants.state should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'state', 'text', 'Column edw_new_fdw._preapprovedapplicants.state should be type text');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'state', 'Column edw_new_fdw._preapprovedapplicants.state should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'state', 'Column edw_new_fdw._preapprovedapplicants.state should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'max_line', 'Column edw_new_fdw._preapprovedapplicants.max_line should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'max_line', 'numeric', 'Column edw_new_fdw._preapprovedapplicants.max_line should be type numeric');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'max_line', 'Column edw_new_fdw._preapprovedapplicants.max_line should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'max_line', 'Column edw_new_fdw._preapprovedapplicants.max_line should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'apr', 'Column edw_new_fdw._preapprovedapplicants.apr should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'apr', 'double precision', 'Column edw_new_fdw._preapprovedapplicants.apr should be type double precision');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'apr', 'Column edw_new_fdw._preapprovedapplicants.apr should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'apr', 'Column edw_new_fdw._preapprovedapplicants.apr should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'pricing_tier_id', 'Column edw_new_fdw._preapprovedapplicants.pricing_tier_id should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'pricing_tier_id', 'integer', 'Column edw_new_fdw._preapprovedapplicants.pricing_tier_id should be type integer');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'pricing_tier_id', 'Column edw_new_fdw._preapprovedapplicants.pricing_tier_id should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'pricing_tier_id', 'Column edw_new_fdw._preapprovedapplicants.pricing_tier_id should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'promo_code_id', 'Column edw_new_fdw._preapprovedapplicants.promo_code_id should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'promo_code_id', 'integer', 'Column edw_new_fdw._preapprovedapplicants.promo_code_id should be type integer');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'promo_code_id', 'Column edw_new_fdw._preapprovedapplicants.promo_code_id should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'promo_code_id', 'Column edw_new_fdw._preapprovedapplicants.promo_code_id should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'first_name', 'Column edw_new_fdw._preapprovedapplicants.first_name should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'first_name', 'text', 'Column edw_new_fdw._preapprovedapplicants.first_name should be type text');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'first_name', 'Column edw_new_fdw._preapprovedapplicants.first_name should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'first_name', 'Column edw_new_fdw._preapprovedapplicants.first_name should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'last_name', 'Column edw_new_fdw._preapprovedapplicants.last_name should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'last_name', 'text', 'Column edw_new_fdw._preapprovedapplicants.last_name should be type text');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'last_name', 'Column edw_new_fdw._preapprovedapplicants.last_name should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'last_name', 'Column edw_new_fdw._preapprovedapplicants.last_name should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'provider', 'Column edw_new_fdw._preapprovedapplicants.provider should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'provider', 'text', 'Column edw_new_fdw._preapprovedapplicants.provider should be type text');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'provider', 'Column edw_new_fdw._preapprovedapplicants.provider should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'provider', 'Column edw_new_fdw._preapprovedapplicants.provider should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'min_term_months', 'Column edw_new_fdw._preapprovedapplicants.min_term_months should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'min_term_months', 'integer', 'Column edw_new_fdw._preapprovedapplicants.min_term_months should be type integer');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'min_term_months', 'Column edw_new_fdw._preapprovedapplicants.min_term_months should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'min_term_months', 'Column edw_new_fdw._preapprovedapplicants.min_term_months should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'max_term_months', 'Column edw_new_fdw._preapprovedapplicants.max_term_months should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'max_term_months', 'integer', 'Column edw_new_fdw._preapprovedapplicants.max_term_months should be type integer');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'max_term_months', 'Column edw_new_fdw._preapprovedapplicants.max_term_months should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'max_term_months', 'Column edw_new_fdw._preapprovedapplicants.max_term_months should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'created_at', 'Column edw_new_fdw._preapprovedapplicants.created_at should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'created_at', 'timestamp with time zone', 'Column edw_new_fdw._preapprovedapplicants.created_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'created_at', 'Column edw_new_fdw._preapprovedapplicants.created_at should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'created_at', 'Column edw_new_fdw._preapprovedapplicants.created_at should not  have a default');

SELECT has_column(       'edw_new_fdw', '_preapprovedapplicants', 'updated_at', 'Column edw_new_fdw._preapprovedapplicants.updated_at should exist');
SELECT col_type_is(      'edw_new_fdw', '_preapprovedapplicants', 'updated_at', 'timestamp with time zone', 'Column edw_new_fdw._preapprovedapplicants.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_new_fdw', '_preapprovedapplicants', 'updated_at', 'Column edw_new_fdw._preapprovedapplicants.updated_at should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', '_preapprovedapplicants', 'updated_at', 'Column edw_new_fdw._preapprovedapplicants.updated_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
