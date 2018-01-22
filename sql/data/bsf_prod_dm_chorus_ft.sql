
DROP FOREIGN TABLE IF EXISTS bsf_prod_dm_chorus.preapprovals;
CREATE FOREIGN TABLE bsf_prod_dm_chorus.preapprovals 
(
    preapprovals_key int4,
    preapproval_id int8,
    campaign text,
    expiration_date date,
    state varchar(2),
    max_line int4,
    apr float8,
    pricing_tier_id int4,
    promo_code_id int4,
    first_name text,
    last_name text,
    provider text,
    min_term_months int4,
    max_term_months int4,
    mname text,
    con_gen_cd text,
    house_num text,
    street_dir text,
    street_nm text,
    streettype text,
    post_dir text,
    unit_type text,
    unit_num text,
    city text,
    zip text,
    seg_code text,
    price_tier text,
    ssn_7 text,
    ssn_encrypted text,
    selection text,
    "source" text,
    testgroup text,
    "sequence" text,
    "drop" text,
    laser_code text,
    offer_date date,
    load_error text,
    response_score text,
    risk_score text,
    riskm text,
    exp_income text,
    tu_income text,
    marketingcampaignid int4,
    pick text,
    live_fl int4,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'dm_chorus',
      table_name  'preapprovals'
    );

