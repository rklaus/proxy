
DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.application;
CREATE FOREIGN TABLE bsf_prod_origination.application 
(
    application_key int4,
    application_id int8,
    email_address text,
    user_account_id int4,
    primary_addr_city text,
    primary_addr_state_id int4,
    primary_addr_line1 text,
    primary_addr_line2 text,
    primary_addr_zip text,
    primary_phone text,
    primary_phone_type_id int4,
    secondary_phone text,
    secondary_phone_type_id int4,
    ssn varchar(9),
    dob date,
    first_name text,
    last_name text,
    middle_initial bpchar(1),
    own_property bool,
    rent bool,
    loan_purpose_id int4,
    desired_loan_amount numeric(7,2),
    income_source_id int4,
    employer_name text,
    employer_phone text,
    take_home_amount numeric(7,2),
    employment_duration_id int4,
    payment_frequency_id int4,
    pay_dates text,
    bank_account_type_id int4,
    time_at_address_id int4,
    product text,
    brand text,
    match_1_status text,
    match_2_status text,
    application_sub_status_id int4,
    last_updated timestamptz,
    final_disclosure_at timestamptz,
    final_disclosure_flag bool,
    bank_name text,
    name_on_account text,
    is_checking bool,
    routing_number text,
    account_number text,
    account_number_confirm text,
    selected_offer_id int8,
    offer_selected_at timestamptz,
    campaign text,
    expiration_date date,
    selected_preapproval_id int8,
    payment_method_id int4,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'application'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.application_preapproval;
CREATE FOREIGN TABLE bsf_prod_origination.application_preapproval 
(
    application_id int8,
    preapproval_id int8,
    match_type int4,
    last_updated timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'application_preapproval'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.credit_bureau;
CREATE FOREIGN TABLE bsf_prod_origination.credit_bureau 
(
    application_id int8,
    response_type int2,
    last_updated timestamptz,
    credit_bureau_data text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'credit_bureau'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.document;
CREATE FOREIGN TABLE bsf_prod_origination.document 
(
    document_key int4,
    document_id int8,
    application_id int8,
    document_name text,
    document_generated_at timestamptz,
    document_type_id int4,
    acknowledged_at timestamptz,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'document'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.ev2;
CREATE FOREIGN TABLE bsf_prod_origination.ev2 
(
    ev2_key int4,
    ev2_id int8,
    application_id int8,
    customer_identifier text,
    account_number_input text,
    routing_number_input text,
    institution_name text,
    first_name_input text,
    last_name_input text,
    amount_input numeric,
    is_login_valid bool,
    account_number_confidence int4,
    is_account_number_match bool,
    account_number_found text,
    name_confidence int4,
    is_name_match bool,
    name_found text,
    is_amount_verified bool,
    current_balance_found numeric,
    available_balance_found numeric,
    is_verified bool,
    bank_type text,
    total_deposits numeric,
    total_withdrawals numeric,
    transactions_from_date timestamptz,
    transactions_to_date timestamptz,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'ev2'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.noaa;
CREATE FOREIGN TABLE bsf_prod_origination.noaa 
(
    noaa_key int4,
    noaa_id int8,
    application_id int8,
    document_name text,
    document_generated_at timestamptz,
    last_updated timestamptz,
    email_log_id int8,
    application_sub_status_id int4 ,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'noaa'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.noaa_reason;
CREATE FOREIGN TABLE bsf_prod_origination.noaa_reason 
(
    noaa_id int8,
    noaa_reason_id int8,
    last_updated timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'noaa_reason'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.offer;
CREATE FOREIGN TABLE bsf_prod_origination.offer 
(
    offer_key int4,
    offer_id int8,
    take_home_amount numeric(7,2),
    loan_apr numeric(9,4),
    origination_fee numeric(7,2),
    loan_amount numeric(7,2),
    loan_duration_months int4,
    regular_payment numeric(7,2),
    last_payment numeric(7,2),
    interest_rate numeric(9,4),
    finance_charge numeric(7,2),
    total_repayment numeric(7,2),
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'offer'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.rmodel_ev1;
CREATE FOREIGN TABLE bsf_prod_origination.rmodel_ev1 
(
    application_id int8,
    rmodel_raw_output_id int8,
    fraud_decision_id int8,
    fraud_reason_codes text,
    last_updated timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'rmodel_ev1'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.rmodel_raw_output;
CREATE FOREIGN TABLE bsf_prod_origination.rmodel_raw_output 
(
    rmodel_raw_output_id int4,
    application_id int8,
    response_type_id int8,
    error_type text,
    error_message text,
    runnable_version text,
    raw_output text,
    last_updated timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'rmodel_raw_output'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_origination.rmodel_underwriting;
CREATE FOREIGN TABLE bsf_prod_origination.rmodel_underwriting 
(
    application_id int8,
    rmodel_raw_output_id int8,
    decision_id int8,
    max_loan_amount numeric(7,2),
    last_updated timestamptz,
    vantage_score text ,
    vantage_reason_1 text ,
    vantage_reason_2 text ,
    vantage_reason_3 text ,
    vantage_reason_4 text ,
    credit_report_date date 
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'origination',
      table_name  'rmodel_underwriting'
    );

