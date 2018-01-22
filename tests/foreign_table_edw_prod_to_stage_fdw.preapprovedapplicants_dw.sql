SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(192);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw',
    'Should have foreign table edw_prod_to_stage_fdw.preapprovedapplicants_dw'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw',
    'Table edw_prod_to_stage_fdw.preapprovedapplicants_dw should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'preapprovedapplicants_dw'::name, ARRAY[
    'campaign'::name,
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
    'updated_at'::name,
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
    'id'::name,
    'marketingcampaignid'::name,
    'pick'::name,
    'live_fl'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'campaign', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.campaign should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'campaign', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.campaign should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'campaign', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.campaign should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'campaign', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.campaign should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'applicant_hash', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.applicant_hash should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'applicant_hash', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.applicant_hash should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'applicant_hash', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.applicant_hash should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'applicant_hash', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.applicant_hash should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'expiration_date', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.expiration_date should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'expiration_date', 'date', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.expiration_date should be type date');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'expiration_date', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.expiration_date should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'expiration_date', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.expiration_date should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'state', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.state should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'state', 'character varying(2)', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.state should be type character varying(2)');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'state', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.state should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'state', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.state should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'max_line', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.max_line should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'max_line', 'integer', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.max_line should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'max_line', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.max_line should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'max_line', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.max_line should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'apr', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.apr should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'apr', 'double precision', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.apr should be type double precision');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'apr', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.apr should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'apr', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.apr should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'pricing_tier_id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.pricing_tier_id should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'pricing_tier_id', 'integer', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.pricing_tier_id should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'pricing_tier_id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.pricing_tier_id should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'pricing_tier_id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.pricing_tier_id should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'promo_code_id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.promo_code_id should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'promo_code_id', 'integer', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.promo_code_id should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'promo_code_id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.promo_code_id should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'promo_code_id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.promo_code_id should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'first_name', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.first_name should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'first_name', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.first_name should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'first_name', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.first_name should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'first_name', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.first_name should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'last_name', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.last_name should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'last_name', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.last_name should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'last_name', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.last_name should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'last_name', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.last_name should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'provider', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.provider should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'provider', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.provider should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'provider', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.provider should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'provider', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.provider should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'min_term_months', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.min_term_months should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'min_term_months', 'integer', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.min_term_months should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'min_term_months', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.min_term_months should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'min_term_months', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.min_term_months should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'max_term_months', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.max_term_months should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'max_term_months', 'integer', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.max_term_months should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'max_term_months', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.max_term_months should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'max_term_months', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.max_term_months should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'created_at', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.created_at should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'created_at', 'timestamp with time zone', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.created_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'created_at', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.created_at should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'created_at', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.created_at should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'updated_at', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.updated_at should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'updated_at', 'timestamp with time zone', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'updated_at', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.updated_at should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'updated_at', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.updated_at should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'mname', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.mname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'mname', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.mname should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'mname', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.mname should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'mname', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.mname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'con_gen_cd', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.con_gen_cd should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'con_gen_cd', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.con_gen_cd should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'con_gen_cd', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.con_gen_cd should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'con_gen_cd', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.con_gen_cd should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'house_num', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.house_num should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'house_num', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.house_num should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'house_num', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.house_num should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'house_num', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.house_num should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'street_dir', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.street_dir should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'street_dir', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.street_dir should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'street_dir', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.street_dir should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'street_dir', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.street_dir should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'street_nm', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.street_nm should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'street_nm', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.street_nm should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'street_nm', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.street_nm should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'street_nm', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.street_nm should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'streettype', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.streettype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'streettype', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.streettype should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'streettype', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.streettype should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'streettype', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.streettype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'post_dir', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.post_dir should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'post_dir', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.post_dir should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'post_dir', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.post_dir should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'post_dir', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.post_dir should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'unit_type', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.unit_type should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'unit_type', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.unit_type should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'unit_type', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.unit_type should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'unit_type', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.unit_type should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'unit_num', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.unit_num should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'unit_num', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.unit_num should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'unit_num', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.unit_num should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'unit_num', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.unit_num should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'city', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.city should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'city', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.city should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'city', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.city should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'city', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.city should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'zip', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.zip should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'zip', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.zip should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'zip', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.zip should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'zip', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.zip should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'seg_code', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.seg_code should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'seg_code', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.seg_code should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'seg_code', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.seg_code should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'seg_code', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.seg_code should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'price_tier', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.price_tier should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'price_tier', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.price_tier should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'price_tier', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.price_tier should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'price_tier', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.price_tier should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'ssn_7', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.ssn_7 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'ssn_7', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.ssn_7 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'ssn_7', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.ssn_7 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'ssn_7', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.ssn_7 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'ssn_encrypted', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.ssn_encrypted should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'ssn_encrypted', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.ssn_encrypted should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'ssn_encrypted', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.ssn_encrypted should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'ssn_encrypted', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.ssn_encrypted should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'selection', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.selection should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'selection', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.selection should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'selection', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.selection should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'selection', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.selection should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'source', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.source should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'source', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.source should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'source', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.source should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'source', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.source should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'testgroup', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.testgroup should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'testgroup', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.testgroup should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'testgroup', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.testgroup should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'testgroup', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.testgroup should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'sequence', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.sequence should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'sequence', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.sequence should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'sequence', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.sequence should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'sequence', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.sequence should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'drop', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.drop should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'drop', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.drop should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'drop', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.drop should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'drop', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.drop should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'laser_code', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.laser_code should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'laser_code', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.laser_code should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'laser_code', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.laser_code should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'laser_code', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.laser_code should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'offer_date', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.offer_date should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'offer_date', 'date', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.offer_date should be type date');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'offer_date', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.offer_date should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'offer_date', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.offer_date should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'load_error', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.load_error should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'load_error', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.load_error should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'load_error', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.load_error should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'load_error', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.load_error should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'response_score', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.response_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'response_score', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.response_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'response_score', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.response_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'response_score', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.response_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'risk_score', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.risk_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'risk_score', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.risk_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'risk_score', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.risk_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'risk_score', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.risk_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'riskm', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.riskm should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'riskm', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.riskm should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'riskm', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.riskm should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'riskm', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.riskm should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'exp_income', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.exp_income should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'exp_income', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.exp_income should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'exp_income', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.exp_income should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'exp_income', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.exp_income should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'tu_income', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.tu_income should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'tu_income', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.tu_income should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'tu_income', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.tu_income should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'tu_income', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.tu_income should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.id should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'id', 'integer', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.id should be type integer');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.id should be NOT NULL');
SELECT col_has_default(  'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'id', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.id should have a default');
SELECT col_default_is(   'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'id', 'nextval(''edw_prod_to_stage_fdw.preapprovedapplicants_dw_id_seq''::regclass)', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.id default is');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'marketingcampaignid', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.marketingcampaignid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'marketingcampaignid', 'integer', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.marketingcampaignid should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'marketingcampaignid', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.marketingcampaignid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'marketingcampaignid', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.marketingcampaignid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'pick', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.pick should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'pick', 'text', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.pick should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'pick', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.pick should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'pick', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.pick should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'live_fl', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.live_fl should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'live_fl', 'integer', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.live_fl should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'live_fl', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.live_fl should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'preapprovedapplicants_dw', 'live_fl', 'Column edw_prod_to_stage_fdw.preapprovedapplicants_dw.live_fl should not  have a default');

SELECT * FROM finish();
ROLLBACK;
