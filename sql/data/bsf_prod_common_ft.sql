DROP FOREIGN TABLE IF EXISTS bsf_prod_common.account_lock_status; 
CREATE FOREIGN TABLE bsf_prod_common.account_lock_status (
    account_lock_status_id int4 ,
    account_lock_status text 
)
  SERVER "bsf_prod_server"
    OPTIONS
    (
      schema_name 'common',
      table_name  'account_lock_status'
    );


DROP FOREIGN TABLE IF EXISTS bsf_prod_common.address_priority;
CREATE FOREIGN TABLE bsf_prod_common.address_priority
(
    address_priority_id int4,
    address_priority text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'address_priority'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.application_status;
CREATE FOREIGN TABLE bsf_prod_common.application_status 
(
    application_status_id int4,
    application_status text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'application_status'
    );
    
DROP FOREIGN TABLE IF EXISTS bsf_prod_common.application_sub_status;
CREATE FOREIGN TABLE bsf_prod_common.application_sub_status 
(
    application_sub_status_id int4,
    application_status_id int4,
    application_sub_status text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'application_sub_status'
    );
    
DROP FOREIGN TABLE IF EXISTS bsf_prod_common.bank_account_type;
CREATE FOREIGN TABLE bsf_prod_common.bank_account_type 
(
    bank_account_type_id int4,
    bank_account_type text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'bank_account_type'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.decision;
CREATE FOREIGN TABLE bsf_prod_common.decision 
(
    decision_id int8,
    decision text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'decision'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.document_type;
CREATE FOREIGN TABLE bsf_prod_common.document_type 
(
    document_type_id int4,
    document_type text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'document_type'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.email_reason;
CREATE FOREIGN TABLE bsf_prod_common.email_reason 
(
    email_reason_id int4,
    email_reason text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'email_reason'
    );
    
DROP FOREIGN TABLE IF EXISTS bsf_prod_common.employment_duration;
CREATE FOREIGN TABLE bsf_prod_common.employment_duration 
(
    employment_duration_id int4,
    employment_duration text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'employment_duration'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.failure_reason cascade;
CREATE FOREIGN TABLE bsf_prod_common.failure_reason
(
    failure_reason_id        int4,
    failure_reason           TEXT
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'failure_reason'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.fraud_decision;
CREATE FOREIGN TABLE bsf_prod_common.fraud_decision 
(
    fraud_decision_id int8,
    fraud_decision text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'fraud_decision'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.income_source;
CREATE FOREIGN TABLE bsf_prod_common.income_source 
(
    income_source_id int4,
    income_source text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'income_source'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.loan_purpose;
CREATE FOREIGN TABLE bsf_prod_common.loan_purpose 
(
    loan_purpose_id int4,
    loan_purpose text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'loan_purpose'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.marital_status;
CREATE FOREIGN TABLE bsf_prod_common.marital_status 
(
    marital_status_id int4,
    marital_status text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'marital_status'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.noaa_reason;
CREATE FOREIGN TABLE bsf_prod_common.noaa_reason 
(
    noaa_reason_id int4,
    noaa_reason text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'noaa_reason'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.note_category;
CREATE FOREIGN TABLE bsf_prod_common.note_category 
(
    note_category_id int8,
    note_category text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'note_category'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.payment_frequency;
CREATE FOREIGN TABLE bsf_prod_common.payment_frequency 
(
    payment_frequency_id int4,
    payment_frequency text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'payment_frequency'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.payment_method;
CREATE FOREIGN TABLE bsf_prod_common.payment_method 
(
    payment_method_id int4,
    payment_method text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'payment_method'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.phone_priority;
CREATE FOREIGN TABLE bsf_prod_common.phone_priority
(
    phone_priority_id int4,
    phone_priority text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'phone_priority'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.phone_type;
CREATE FOREIGN TABLE bsf_prod_common.phone_type 
(
    phone_type_id int4,
    phone_type text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'phone_type'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.response_type;
CREATE FOREIGN TABLE bsf_prod_common.response_type 
(
    response_type_id int8,
    response_type text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'response_type'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.states;
CREATE FOREIGN TABLE bsf_prod_common.states
(
    state_id int4,
    state_name text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'states'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_common.time_at_address;
CREATE FOREIGN TABLE bsf_prod_common.time_at_address 
(
    time_at_address_id int4,
    time_at_address text
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'common',
      table_name  'time_at_address'
    );

