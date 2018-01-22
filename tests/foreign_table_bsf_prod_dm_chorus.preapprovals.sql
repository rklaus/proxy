SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(199);

SELECT has_foreign_table(
    'bsf_prod_dm_chorus', 'preapprovals',
    'Should have foreign table bsf_prod_dm_chorus.preapprovals'
);

SELECT hasnt_pk(
    'bsf_prod_dm_chorus', 'preapprovals',
    'Table bsf_prod_dm_chorus.preapprovals should have a primary key'
);

SELECT columns_are('bsf_prod_dm_chorus'::name, 'preapprovals'::name, ARRAY[
    'preapprovals_key'::name,
    'preapproval_id'::name,
    'campaign'::name,
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
    'mname'::name,
    'con_gen_cd'::name,
    'house_num'::name,
    'street_dir'::name,
    'street_nm'::name,
    'streettype'::name,
    'post_dir'::name,
    'unit_type'::name,
    'unit_num'::name,
    'city'::name,
    'zip'::name,
    'seg_code'::name,
    'price_tier'::name,
    'ssn_7'::name,
    'ssn_encrypted'::name,
    'selection'::name,
    'source'::name,
    'testgroup'::name,
    'sequence'::name,
    'drop'::name,
    'laser_code'::name,
    'offer_date'::name,
    'load_error'::name,
    'response_score'::name,
    'risk_score'::name,
    'riskm'::name,
    'exp_income'::name,
    'tu_income'::name,
    'marketingcampaignid'::name,
    'pick'::name,
    'live_fl'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'preapprovals_key', 'Column bsf_prod_dm_chorus.preapprovals.preapprovals_key should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'preapprovals_key', 'integer', 'Column bsf_prod_dm_chorus.preapprovals.preapprovals_key should be type integer');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'preapprovals_key', 'Column bsf_prod_dm_chorus.preapprovals.preapprovals_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'preapprovals_key', 'Column bsf_prod_dm_chorus.preapprovals.preapprovals_key should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'preapproval_id', 'Column bsf_prod_dm_chorus.preapprovals.preapproval_id should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'preapproval_id', 'bigint', 'Column bsf_prod_dm_chorus.preapprovals.preapproval_id should be type bigint');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'preapproval_id', 'Column bsf_prod_dm_chorus.preapprovals.preapproval_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'preapproval_id', 'Column bsf_prod_dm_chorus.preapprovals.preapproval_id should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'campaign', 'Column bsf_prod_dm_chorus.preapprovals.campaign should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'campaign', 'text', 'Column bsf_prod_dm_chorus.preapprovals.campaign should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'campaign', 'Column bsf_prod_dm_chorus.preapprovals.campaign should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'campaign', 'Column bsf_prod_dm_chorus.preapprovals.campaign should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'expiration_date', 'Column bsf_prod_dm_chorus.preapprovals.expiration_date should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'expiration_date', 'date', 'Column bsf_prod_dm_chorus.preapprovals.expiration_date should be type date');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'expiration_date', 'Column bsf_prod_dm_chorus.preapprovals.expiration_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'expiration_date', 'Column bsf_prod_dm_chorus.preapprovals.expiration_date should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'state', 'Column bsf_prod_dm_chorus.preapprovals.state should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'state', 'character varying(2)', 'Column bsf_prod_dm_chorus.preapprovals.state should be type character varying(2)');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'state', 'Column bsf_prod_dm_chorus.preapprovals.state should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'state', 'Column bsf_prod_dm_chorus.preapprovals.state should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'max_line', 'Column bsf_prod_dm_chorus.preapprovals.max_line should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'max_line', 'integer', 'Column bsf_prod_dm_chorus.preapprovals.max_line should be type integer');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'max_line', 'Column bsf_prod_dm_chorus.preapprovals.max_line should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'max_line', 'Column bsf_prod_dm_chorus.preapprovals.max_line should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'apr', 'Column bsf_prod_dm_chorus.preapprovals.apr should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'apr', 'double precision', 'Column bsf_prod_dm_chorus.preapprovals.apr should be type double precision');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'apr', 'Column bsf_prod_dm_chorus.preapprovals.apr should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'apr', 'Column bsf_prod_dm_chorus.preapprovals.apr should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'pricing_tier_id', 'Column bsf_prod_dm_chorus.preapprovals.pricing_tier_id should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'pricing_tier_id', 'integer', 'Column bsf_prod_dm_chorus.preapprovals.pricing_tier_id should be type integer');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'pricing_tier_id', 'Column bsf_prod_dm_chorus.preapprovals.pricing_tier_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'pricing_tier_id', 'Column bsf_prod_dm_chorus.preapprovals.pricing_tier_id should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'promo_code_id', 'Column bsf_prod_dm_chorus.preapprovals.promo_code_id should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'promo_code_id', 'integer', 'Column bsf_prod_dm_chorus.preapprovals.promo_code_id should be type integer');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'promo_code_id', 'Column bsf_prod_dm_chorus.preapprovals.promo_code_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'promo_code_id', 'Column bsf_prod_dm_chorus.preapprovals.promo_code_id should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'first_name', 'Column bsf_prod_dm_chorus.preapprovals.first_name should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'first_name', 'text', 'Column bsf_prod_dm_chorus.preapprovals.first_name should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'first_name', 'Column bsf_prod_dm_chorus.preapprovals.first_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'first_name', 'Column bsf_prod_dm_chorus.preapprovals.first_name should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'last_name', 'Column bsf_prod_dm_chorus.preapprovals.last_name should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'last_name', 'text', 'Column bsf_prod_dm_chorus.preapprovals.last_name should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'last_name', 'Column bsf_prod_dm_chorus.preapprovals.last_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'last_name', 'Column bsf_prod_dm_chorus.preapprovals.last_name should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'provider', 'Column bsf_prod_dm_chorus.preapprovals.provider should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'provider', 'text', 'Column bsf_prod_dm_chorus.preapprovals.provider should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'provider', 'Column bsf_prod_dm_chorus.preapprovals.provider should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'provider', 'Column bsf_prod_dm_chorus.preapprovals.provider should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'min_term_months', 'Column bsf_prod_dm_chorus.preapprovals.min_term_months should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'min_term_months', 'integer', 'Column bsf_prod_dm_chorus.preapprovals.min_term_months should be type integer');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'min_term_months', 'Column bsf_prod_dm_chorus.preapprovals.min_term_months should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'min_term_months', 'Column bsf_prod_dm_chorus.preapprovals.min_term_months should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'max_term_months', 'Column bsf_prod_dm_chorus.preapprovals.max_term_months should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'max_term_months', 'integer', 'Column bsf_prod_dm_chorus.preapprovals.max_term_months should be type integer');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'max_term_months', 'Column bsf_prod_dm_chorus.preapprovals.max_term_months should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'max_term_months', 'Column bsf_prod_dm_chorus.preapprovals.max_term_months should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'mname', 'Column bsf_prod_dm_chorus.preapprovals.mname should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'mname', 'text', 'Column bsf_prod_dm_chorus.preapprovals.mname should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'mname', 'Column bsf_prod_dm_chorus.preapprovals.mname should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'mname', 'Column bsf_prod_dm_chorus.preapprovals.mname should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'con_gen_cd', 'Column bsf_prod_dm_chorus.preapprovals.con_gen_cd should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'con_gen_cd', 'text', 'Column bsf_prod_dm_chorus.preapprovals.con_gen_cd should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'con_gen_cd', 'Column bsf_prod_dm_chorus.preapprovals.con_gen_cd should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'con_gen_cd', 'Column bsf_prod_dm_chorus.preapprovals.con_gen_cd should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'house_num', 'Column bsf_prod_dm_chorus.preapprovals.house_num should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'house_num', 'text', 'Column bsf_prod_dm_chorus.preapprovals.house_num should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'house_num', 'Column bsf_prod_dm_chorus.preapprovals.house_num should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'house_num', 'Column bsf_prod_dm_chorus.preapprovals.house_num should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'street_dir', 'Column bsf_prod_dm_chorus.preapprovals.street_dir should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'street_dir', 'text', 'Column bsf_prod_dm_chorus.preapprovals.street_dir should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'street_dir', 'Column bsf_prod_dm_chorus.preapprovals.street_dir should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'street_dir', 'Column bsf_prod_dm_chorus.preapprovals.street_dir should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'street_nm', 'Column bsf_prod_dm_chorus.preapprovals.street_nm should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'street_nm', 'text', 'Column bsf_prod_dm_chorus.preapprovals.street_nm should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'street_nm', 'Column bsf_prod_dm_chorus.preapprovals.street_nm should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'street_nm', 'Column bsf_prod_dm_chorus.preapprovals.street_nm should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'streettype', 'Column bsf_prod_dm_chorus.preapprovals.streettype should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'streettype', 'text', 'Column bsf_prod_dm_chorus.preapprovals.streettype should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'streettype', 'Column bsf_prod_dm_chorus.preapprovals.streettype should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'streettype', 'Column bsf_prod_dm_chorus.preapprovals.streettype should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'post_dir', 'Column bsf_prod_dm_chorus.preapprovals.post_dir should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'post_dir', 'text', 'Column bsf_prod_dm_chorus.preapprovals.post_dir should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'post_dir', 'Column bsf_prod_dm_chorus.preapprovals.post_dir should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'post_dir', 'Column bsf_prod_dm_chorus.preapprovals.post_dir should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'unit_type', 'Column bsf_prod_dm_chorus.preapprovals.unit_type should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'unit_type', 'text', 'Column bsf_prod_dm_chorus.preapprovals.unit_type should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'unit_type', 'Column bsf_prod_dm_chorus.preapprovals.unit_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'unit_type', 'Column bsf_prod_dm_chorus.preapprovals.unit_type should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'unit_num', 'Column bsf_prod_dm_chorus.preapprovals.unit_num should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'unit_num', 'text', 'Column bsf_prod_dm_chorus.preapprovals.unit_num should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'unit_num', 'Column bsf_prod_dm_chorus.preapprovals.unit_num should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'unit_num', 'Column bsf_prod_dm_chorus.preapprovals.unit_num should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'city', 'Column bsf_prod_dm_chorus.preapprovals.city should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'city', 'text', 'Column bsf_prod_dm_chorus.preapprovals.city should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'city', 'Column bsf_prod_dm_chorus.preapprovals.city should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'city', 'Column bsf_prod_dm_chorus.preapprovals.city should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'zip', 'Column bsf_prod_dm_chorus.preapprovals.zip should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'zip', 'text', 'Column bsf_prod_dm_chorus.preapprovals.zip should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'zip', 'Column bsf_prod_dm_chorus.preapprovals.zip should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'zip', 'Column bsf_prod_dm_chorus.preapprovals.zip should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'seg_code', 'Column bsf_prod_dm_chorus.preapprovals.seg_code should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'seg_code', 'text', 'Column bsf_prod_dm_chorus.preapprovals.seg_code should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'seg_code', 'Column bsf_prod_dm_chorus.preapprovals.seg_code should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'seg_code', 'Column bsf_prod_dm_chorus.preapprovals.seg_code should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'price_tier', 'Column bsf_prod_dm_chorus.preapprovals.price_tier should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'price_tier', 'text', 'Column bsf_prod_dm_chorus.preapprovals.price_tier should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'price_tier', 'Column bsf_prod_dm_chorus.preapprovals.price_tier should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'price_tier', 'Column bsf_prod_dm_chorus.preapprovals.price_tier should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'ssn_7', 'Column bsf_prod_dm_chorus.preapprovals.ssn_7 should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'ssn_7', 'text', 'Column bsf_prod_dm_chorus.preapprovals.ssn_7 should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'ssn_7', 'Column bsf_prod_dm_chorus.preapprovals.ssn_7 should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'ssn_7', 'Column bsf_prod_dm_chorus.preapprovals.ssn_7 should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'ssn_encrypted', 'Column bsf_prod_dm_chorus.preapprovals.ssn_encrypted should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'ssn_encrypted', 'text', 'Column bsf_prod_dm_chorus.preapprovals.ssn_encrypted should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'ssn_encrypted', 'Column bsf_prod_dm_chorus.preapprovals.ssn_encrypted should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'ssn_encrypted', 'Column bsf_prod_dm_chorus.preapprovals.ssn_encrypted should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'selection', 'Column bsf_prod_dm_chorus.preapprovals.selection should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'selection', 'text', 'Column bsf_prod_dm_chorus.preapprovals.selection should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'selection', 'Column bsf_prod_dm_chorus.preapprovals.selection should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'selection', 'Column bsf_prod_dm_chorus.preapprovals.selection should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'source', 'Column bsf_prod_dm_chorus.preapprovals.source should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'source', 'text', 'Column bsf_prod_dm_chorus.preapprovals.source should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'source', 'Column bsf_prod_dm_chorus.preapprovals.source should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'source', 'Column bsf_prod_dm_chorus.preapprovals.source should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'testgroup', 'Column bsf_prod_dm_chorus.preapprovals.testgroup should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'testgroup', 'text', 'Column bsf_prod_dm_chorus.preapprovals.testgroup should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'testgroup', 'Column bsf_prod_dm_chorus.preapprovals.testgroup should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'testgroup', 'Column bsf_prod_dm_chorus.preapprovals.testgroup should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'sequence', 'Column bsf_prod_dm_chorus.preapprovals.sequence should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'sequence', 'text', 'Column bsf_prod_dm_chorus.preapprovals.sequence should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'sequence', 'Column bsf_prod_dm_chorus.preapprovals.sequence should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'sequence', 'Column bsf_prod_dm_chorus.preapprovals.sequence should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'drop', 'Column bsf_prod_dm_chorus.preapprovals.drop should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'drop', 'text', 'Column bsf_prod_dm_chorus.preapprovals.drop should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'drop', 'Column bsf_prod_dm_chorus.preapprovals.drop should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'drop', 'Column bsf_prod_dm_chorus.preapprovals.drop should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'laser_code', 'Column bsf_prod_dm_chorus.preapprovals.laser_code should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'laser_code', 'text', 'Column bsf_prod_dm_chorus.preapprovals.laser_code should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'laser_code', 'Column bsf_prod_dm_chorus.preapprovals.laser_code should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'laser_code', 'Column bsf_prod_dm_chorus.preapprovals.laser_code should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'offer_date', 'Column bsf_prod_dm_chorus.preapprovals.offer_date should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'offer_date', 'date', 'Column bsf_prod_dm_chorus.preapprovals.offer_date should be type date');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'offer_date', 'Column bsf_prod_dm_chorus.preapprovals.offer_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'offer_date', 'Column bsf_prod_dm_chorus.preapprovals.offer_date should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'load_error', 'Column bsf_prod_dm_chorus.preapprovals.load_error should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'load_error', 'text', 'Column bsf_prod_dm_chorus.preapprovals.load_error should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'load_error', 'Column bsf_prod_dm_chorus.preapprovals.load_error should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'load_error', 'Column bsf_prod_dm_chorus.preapprovals.load_error should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'response_score', 'Column bsf_prod_dm_chorus.preapprovals.response_score should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'response_score', 'text', 'Column bsf_prod_dm_chorus.preapprovals.response_score should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'response_score', 'Column bsf_prod_dm_chorus.preapprovals.response_score should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'response_score', 'Column bsf_prod_dm_chorus.preapprovals.response_score should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'risk_score', 'Column bsf_prod_dm_chorus.preapprovals.risk_score should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'risk_score', 'text', 'Column bsf_prod_dm_chorus.preapprovals.risk_score should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'risk_score', 'Column bsf_prod_dm_chorus.preapprovals.risk_score should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'risk_score', 'Column bsf_prod_dm_chorus.preapprovals.risk_score should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'riskm', 'Column bsf_prod_dm_chorus.preapprovals.riskm should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'riskm', 'text', 'Column bsf_prod_dm_chorus.preapprovals.riskm should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'riskm', 'Column bsf_prod_dm_chorus.preapprovals.riskm should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'riskm', 'Column bsf_prod_dm_chorus.preapprovals.riskm should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'exp_income', 'Column bsf_prod_dm_chorus.preapprovals.exp_income should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'exp_income', 'text', 'Column bsf_prod_dm_chorus.preapprovals.exp_income should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'exp_income', 'Column bsf_prod_dm_chorus.preapprovals.exp_income should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'exp_income', 'Column bsf_prod_dm_chorus.preapprovals.exp_income should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'tu_income', 'Column bsf_prod_dm_chorus.preapprovals.tu_income should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'tu_income', 'text', 'Column bsf_prod_dm_chorus.preapprovals.tu_income should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'tu_income', 'Column bsf_prod_dm_chorus.preapprovals.tu_income should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'tu_income', 'Column bsf_prod_dm_chorus.preapprovals.tu_income should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'marketingcampaignid', 'Column bsf_prod_dm_chorus.preapprovals.marketingcampaignid should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'marketingcampaignid', 'integer', 'Column bsf_prod_dm_chorus.preapprovals.marketingcampaignid should be type integer');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'marketingcampaignid', 'Column bsf_prod_dm_chorus.preapprovals.marketingcampaignid should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'marketingcampaignid', 'Column bsf_prod_dm_chorus.preapprovals.marketingcampaignid should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'pick', 'Column bsf_prod_dm_chorus.preapprovals.pick should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'pick', 'text', 'Column bsf_prod_dm_chorus.preapprovals.pick should be type text');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'pick', 'Column bsf_prod_dm_chorus.preapprovals.pick should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'pick', 'Column bsf_prod_dm_chorus.preapprovals.pick should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'live_fl', 'Column bsf_prod_dm_chorus.preapprovals.live_fl should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'live_fl', 'integer', 'Column bsf_prod_dm_chorus.preapprovals.live_fl should be type integer');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'live_fl', 'Column bsf_prod_dm_chorus.preapprovals.live_fl should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'live_fl', 'Column bsf_prod_dm_chorus.preapprovals.live_fl should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'last_updated', 'Column bsf_prod_dm_chorus.preapprovals.last_updated should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_dm_chorus.preapprovals.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'last_updated', 'Column bsf_prod_dm_chorus.preapprovals.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'last_updated', 'Column bsf_prod_dm_chorus.preapprovals.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'effective', 'Column bsf_prod_dm_chorus.preapprovals.effective should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_dm_chorus.preapprovals.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'effective', 'Column bsf_prod_dm_chorus.preapprovals.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'effective', 'Column bsf_prod_dm_chorus.preapprovals.effective should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'asserted', 'Column bsf_prod_dm_chorus.preapprovals.asserted should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_dm_chorus.preapprovals.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'asserted', 'Column bsf_prod_dm_chorus.preapprovals.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'asserted', 'Column bsf_prod_dm_chorus.preapprovals.asserted should not  have a default');

SELECT has_column(       'bsf_prod_dm_chorus', 'preapprovals', 'row_created_at', 'Column bsf_prod_dm_chorus.preapprovals.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_dm_chorus', 'preapprovals', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_dm_chorus.preapprovals.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_dm_chorus', 'preapprovals', 'row_created_at', 'Column bsf_prod_dm_chorus.preapprovals.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_dm_chorus', 'preapprovals', 'row_created_at', 'Column bsf_prod_dm_chorus.preapprovals.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
