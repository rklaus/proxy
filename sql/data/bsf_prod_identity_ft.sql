
DROP FOREIGN TABLE IF EXISTS bsf_prod_identity.address;
CREATE FOREIGN TABLE bsf_prod_identity.address 
(
    address_key int4,
    address_id int8,
    city text,
    state_id int4,
    zip text,
    address_priority_id int4,
    user_account_id int4,
    address_line1 text,
    address_line2 text,
    bad_address_flag bool,
    bad_address_reason text,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'identity',
      table_name  'address'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_identity.bank_information;
CREATE FOREIGN TABLE bsf_prod_identity.bank_information 
(
    bank_information_key int4,
    bank_information_id int8,
    user_account_id int8,
    bank_name text,
    name_on_account text,
    is_checking bool,
    routing_number text,
    account_number text,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'identity',
      table_name  'bank_information'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_identity.email_address;
CREATE FOREIGN TABLE bsf_prod_identity.email_address 
(
    email_address_key int4,
    email_address_id int8,
    email_address text,
    user_account_id int4,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'identity',
      table_name  'email_address'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_identity.loan;
CREATE FOREIGN TABLE bsf_prod_identity.loan 
(
    loan_key int4,
    user_account_id int8,
    loan_pro_loan_id int8,
    loan_status text,
    loan_substatus text,
    loan_effective_date date,
    loan_payoff_date date,
    application_id int4,
    last_updated timestamptz,
    initial_loan_amount numeric(7,2),
    remaining_loan_balance numeric(7,2),
    last_payment_due_date date,
    last_payment_amount numeric(7,2),
    next_payment_due_date date,
    next_payment_amount numeric(7,2),
    product text,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'identity',
      table_name  'loan'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_identity.note;
CREATE FOREIGN TABLE bsf_prod_identity.note 
(
    note_key int4,
    note_id int8,
    user_account_id int8,
    application_id int8,
    note_description text,
    note_category_id int4,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'identity',
      table_name  'note'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_identity.person;
CREATE FOREIGN TABLE bsf_prod_identity.person 
(
    person_key int4,
    person_id int8,
    last_name text,
    first_name text,
    ssn varchar(9),
    dob date,
    marital_status_id int4,
    spouse_person_id int8,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz,
    middle_initial char(1)
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'identity',
      table_name  'person'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_identity.phone;
CREATE FOREIGN TABLE bsf_prod_identity.phone 
(
    phone_key int4,
    phone_id int8,
    phone_number text,
    user_account_id int4,
    phone_priority_id int4,
    phone_type_id int4,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'identity',
      table_name  'phone'
    );

DROP FOREIGN TABLE IF EXISTS bsf_prod_identity.user_account;
CREATE FOREIGN TABLE bsf_prod_identity.user_account 
(
    user_account_key int4,
    user_account_id int8,
    username text,
    person_id int4,
    brand text,
    loanpro_customer_id int4,
    epic_customer_fl bool,
    last_updated timestamptz,
    effective temporal_relationships.timeperiod,
    asserted temporal_relationships.timeperiod,
    row_created_at timestamptz
)
  SERVER "bsf_prod_server"
    OPTIONS 
    (
      schema_name 'identity',
      table_name  'user_account'
    );

