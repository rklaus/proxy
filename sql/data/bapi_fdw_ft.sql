    DROP FOREIGN TABLE IF EXISTS "achendpoints";
    CREATE FOREIGN TABLE "achendpoints"
      ("id" integer,
       "endpoint_name" character varying(255),
       "endpoint_type" character varying(255),
       "loan_owner" character varying(255),
       "state_code" character varying(2),
       "loan_original_owner" character varying(255),
       "endpoint_name_orig" character varying(255),
       "endpoint_name_pymt" character varying(255),
       "file_batch" character varying(255))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'ACHEndpoints'
    );
COMMENT on COLUMN "achendpoints"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "achendpoints"."endpoint_name" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "achendpoints"."endpoint_type" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "achendpoints"."loan_owner" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "achendpoints"."state_code" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "achendpoints"."loan_original_owner" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "achendpoints"."endpoint_name_orig" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "achendpoints"."endpoint_name_pymt" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "achendpoints"."file_batch" IS $$remote type: character varying(255)$$;

    DROP FOREIGN TABLE IF EXISTS "applicantjournal";
    CREATE FOREIGN TABLE "applicantjournal"
      ("id" integer,
       "applicant_id" integer,
       "label" character varying(255),
       "endpoint" character varying(500),
       "request" text,
       "response" text,
       "elapsed" numeric(8,2),
       "date_created" timestamp with time zone)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'ApplicantJournal'
    );
COMMENT on COLUMN "applicantjournal"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantjournal"."applicant_id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantjournal"."label" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicantjournal"."endpoint" IS $$remote type: character varying(500)$$;
COMMENT on COLUMN "applicantjournal"."request" IS $$remote type: text$$;
COMMENT on COLUMN "applicantjournal"."response" IS $$remote type: text$$;
COMMENT on COLUMN "applicantjournal"."elapsed" IS $$remote type: numeric(8,2)$$;
COMMENT on COLUMN "applicantjournal"."date_created" IS $$remote type: timestamp with time zone$$;

    DROP FOREIGN TABLE IF EXISTS "applicantrevisions";
    CREATE FOREIGN TABLE "applicantrevisions"
      ("applicant_id" integer,
       "pricing_tier_id" integer,
       "preapproved_id" integer,
       "id" integer,
       "applicant_transaction_date" date,
       "applicant_transaction_time" time without time zone,
       "applicant_requested_date" date,
       "applicant_effective_date" date,
       "applicant_promo_code" character varying(50),
       "first_name" character varying(50),
       "last_name" character varying(50),
       "previous_customer" character varying(5),
       "ip_address" character varying(255),
       "user_agent_string" character varying(1024),
       "address_line1" character varying(255),
       "address_line2" character varying(255),
       "city" character varying(50),
       "country" character varying(50),
       "zip_code" character varying(10),
       "state_code" character varying(5),
       "address_len_years" integer,
       "address_len_months" integer,
       "cell_phone" character varying(14),
       "home_phone" character varying(14),
       "email" character varying(255),
       "social_security_number" character varying(32),
       "date_of_birth" date,
       "eighteen_years_old" character varying(10),
       "driver_sid_num" character varying(32),
       "driver_sid_state" character varying(5),
       "is_military" character varying(5),
       "housing_type" character varying(5),
       "employer_name" character varying(50),
       "income_type" character varying(10),
       "employer_phone" character varying(14),
       "employer_len_years" integer,
       "employer_len_months" integer,
       "employer_benefit_startdate" date,
       "income_frequency" character varying(5),
       "pay_type" character varying(5),
       "employer_periodicity" character varying(5),
       "last_payday" date,
       "next_payday" date,
       "second_payday" date,
       "last_check" numeric(10,2),
       "bank_account_type" character varying(10),
       "bank_account_len_years" integer,
       "bank_account_len_months" integer,
       "aba_routing_number" character varying(50),
       "bank_account_number" character varying(50),
       "bank_name" character varying(50),
       "bank_phone" character varying(14),
       "bank_country" character varying(50),
       "loan_reason" character varying(50),
       "first_payday_of_month" character varying(25),
       "second_payday_of_month" character varying(25),
       "day_of_week_paid" character varying(25),
       "enhanced_verification" character varying(20),
       "gds_submit_timestamp" timestamp with time zone,
       "gds_return_timestamp" timestamp with time zone,
       "epic_submit_timestamp" timestamp with time zone,
       "epic_return_timestamp" timestamp with time zone,
       "cso_apr" numeric(6,2),
       "cso_fee" numeric(6,2),
       "gds_key" character varying(255),
       "epic_key" character varying(255),
       "loan_requested_amount" numeric(10,2),
       "loan_approved_amount" numeric(10,2),
       "loan_actual_amount" numeric(10,2),
       "loan_apr" numeric(10,2),
       "loan_number_of_payments" numeric(10,2),
       "payment_method" character varying(5),
       "current_status" character varying(500),
       "lms" character varying(10),
       "los" character varying(10),
       "agree_electronic_communications" boolean,
       "agree_privacy_notice" boolean,
       "agree_confirm_accuracy" boolean,
       "agree_telemarketing" boolean,
       "exit_intent_eligible" boolean,
       "exit_intent_shown" boolean,
       "latest_campaign" character varying(255),
       "date_created" timestamp with time zone,
       "last_error" character varying(500))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'ApplicantRevisions'
    );
COMMENT on COLUMN "applicantrevisions"."applicant_id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."pricing_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."preapproved_id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."applicant_transaction_date" IS $$remote type: date$$;
COMMENT on COLUMN "applicantrevisions"."applicant_transaction_time" IS $$remote type: time without time zone$$;
COMMENT on COLUMN "applicantrevisions"."applicant_requested_date" IS $$remote type: date$$;
COMMENT on COLUMN "applicantrevisions"."applicant_effective_date" IS $$remote type: date$$;
COMMENT on COLUMN "applicantrevisions"."applicant_promo_code" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."first_name" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."last_name" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."previous_customer" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."ip_address" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicantrevisions"."user_agent_string" IS $$remote type: character varying(1024)$$;
COMMENT on COLUMN "applicantrevisions"."address_line1" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicantrevisions"."address_line2" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicantrevisions"."city" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."country" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."zip_code" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicantrevisions"."state_code" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."address_len_years" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."address_len_months" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."cell_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "applicantrevisions"."home_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "applicantrevisions"."email" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicantrevisions"."social_security_number" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "applicantrevisions"."date_of_birth" IS $$remote type: date$$;
COMMENT on COLUMN "applicantrevisions"."eighteen_years_old" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicantrevisions"."driver_sid_num" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "applicantrevisions"."driver_sid_state" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."is_military" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."housing_type" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."employer_name" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."income_type" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicantrevisions"."employer_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "applicantrevisions"."employer_len_years" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."employer_len_months" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."employer_benefit_startdate" IS $$remote type: date$$;
COMMENT on COLUMN "applicantrevisions"."income_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."pay_type" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."employer_periodicity" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."last_payday" IS $$remote type: date$$;
COMMENT on COLUMN "applicantrevisions"."next_payday" IS $$remote type: date$$;
COMMENT on COLUMN "applicantrevisions"."second_payday" IS $$remote type: date$$;
COMMENT on COLUMN "applicantrevisions"."last_check" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicantrevisions"."bank_account_type" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicantrevisions"."bank_account_len_years" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."bank_account_len_months" IS $$remote type: integer$$;
COMMENT on COLUMN "applicantrevisions"."aba_routing_number" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."bank_account_number" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."bank_name" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."bank_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "applicantrevisions"."bank_country" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."loan_reason" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicantrevisions"."first_payday_of_month" IS $$remote type: character varying(25)$$;
COMMENT on COLUMN "applicantrevisions"."second_payday_of_month" IS $$remote type: character varying(25)$$;
COMMENT on COLUMN "applicantrevisions"."day_of_week_paid" IS $$remote type: character varying(25)$$;
COMMENT on COLUMN "applicantrevisions"."enhanced_verification" IS $$remote type: character varying(20)$$;
COMMENT on COLUMN "applicantrevisions"."gds_submit_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicantrevisions"."gds_return_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicantrevisions"."epic_submit_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicantrevisions"."epic_return_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicantrevisions"."cso_apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "applicantrevisions"."cso_fee" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "applicantrevisions"."gds_key" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicantrevisions"."epic_key" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicantrevisions"."loan_requested_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicantrevisions"."loan_approved_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicantrevisions"."loan_actual_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicantrevisions"."loan_apr" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicantrevisions"."loan_number_of_payments" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicantrevisions"."payment_method" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicantrevisions"."current_status" IS $$remote type: character varying(500)$$;
COMMENT on COLUMN "applicantrevisions"."lms" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicantrevisions"."los" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicantrevisions"."agree_electronic_communications" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicantrevisions"."agree_privacy_notice" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicantrevisions"."agree_confirm_accuracy" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicantrevisions"."agree_telemarketing" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicantrevisions"."exit_intent_eligible" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicantrevisions"."exit_intent_shown" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicantrevisions"."latest_campaign" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicantrevisions"."date_created" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicantrevisions"."last_error" IS $$remote type: character varying(500)$$;

    DROP FOREIGN TABLE IF EXISTS "applicanttransactions";
    CREATE FOREIGN TABLE "applicanttransactions"
      ("transaction_number" integer,
       "applicant_transaction_number_id" integer,
       "transaction_request" text,
       "transaction_response" text,
       "transaction_date" date,
       "transaction_time" time without time zone,
       "created_at" timestamp with time zone,
       "updated_at" timestamp with time zone)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'ApplicantTransactions'
    );
COMMENT on COLUMN "applicanttransactions"."transaction_number" IS $$remote type: integer$$;
COMMENT on COLUMN "applicanttransactions"."applicant_transaction_number_id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicanttransactions"."transaction_request" IS $$remote type: text$$;
COMMENT on COLUMN "applicanttransactions"."transaction_response" IS $$remote type: text$$;
COMMENT on COLUMN "applicanttransactions"."transaction_date" IS $$remote type: date$$;
COMMENT on COLUMN "applicanttransactions"."transaction_time" IS $$remote type: time without time zone$$;
COMMENT on COLUMN "applicanttransactions"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicanttransactions"."updated_at" IS $$remote type: timestamp with time zone$$;

   DROP FOREIGN TABLE IF EXISTS "applicants";
    CREATE FOREIGN TABLE "applicants"
      ("applicant_transaction_number" integer,
       "applicant_transaction_date" date,
       "applicant_transaction_time" time without time zone,
       "applicant_requested_date" date,
       "applicant_effective_date" date,
       "applicant_promo_code" character varying(50),
       "first_name" character varying(50),
       "last_name" character varying(50),
       "previous_customer" character varying(5),
       "address_line1" character varying(255),
       "address_line2" character varying(255),
       "city" character varying(50),
       "country" character varying(50),
       "zip_code" character varying(10),
       "state_code" character varying(5),
       "address_len_years" integer,
       "address_len_months" integer,
       "cell_phone" character varying(14),
       "home_phone" character varying(14),
       "email" character varying(255),
       "social_security_number" character varying(32),
       "date_of_birth" date,
       "eighteen_years_old" character varying(10),
       "driver_sid_num" character varying(32),
       "driver_sid_state" character varying(5),
       "is_military" character varying(5),
       "housing_type" character varying(5),
       "employer_name" character varying(50),
       "income_type" character varying(10),
       "employer_phone" character varying(14),
       "employer_len_years" integer,
       "employer_len_months" integer,
       "employer_benefit_startdate" date,
       "income_frequency" character varying(5),
       "pay_type" character varying(5),
       "employer_periodicity" character varying(5),
       "last_payday" date,
       "next_payday" date,
       "second_payday" date,
       "last_check" numeric(10,2),
       "bank_account_type" character varying(10),
       "bank_account_len_years" integer,
       "bank_account_len_months" integer,
       "aba_routing_number" character varying(50),
       "bank_account_number" character varying(50),
       "bank_name" character varying(50),
       "bank_phone" character varying(14),
       "bank_country" character varying(50),
       "loan_requested_amount" numeric(10,2),
       "loan_reason" character varying(50),
       "field1" text,
       "field2" text,
       "field3" text,
       "field4" text,
       "gds_submit_timestamp" timestamp with time zone,
       "gds_return_timestamp" timestamp with time zone,
       "epic_submit_timestamp" timestamp with time zone,
       "epic_return_timestamp" timestamp with time zone,
       "cso_apr" numeric(6,2),
       "cso_fee" numeric(6,2),
       "first_payday_of_month" character varying(25),
       "second_payday_of_month" character varying(25),
       "day_of_week_paid" character varying(25),
       "ip_address" character varying(255),
       "user_agent_string" character varying(1024),
       "token" character varying(32),
       "pricing_tier_id" integer,
       "enhanced_verification" character varying(20),
       "preapproved_id" integer,
       "gds_key" character varying(255),
       "epic_key" character varying(255),
       "iovation_result" character varying(10),
       "iovation_tracking_number" character varying(40),
       "iovation_score" integer,
       "iovation_rules_matched" integer,
       "iovation_payload" text,
       "loan_actual_amount" numeric(10,2),
       "loan_apr" numeric(10,2),
       "loan_number_of_payments" numeric(10,2),
       "payment_method" character varying(5),
       "current_status" character varying(500),
       "lms" character varying(10),
       "los" character varying(10),
       "agree_electronic_communications" boolean,
       "agree_privacy_notice" boolean,
       "agree_confirm_accuracy" boolean,
       "agree_telemarketing" boolean,
       "loan_approved_amount" numeric(10,2),
       "exit_intent_eligible" boolean,
       "exit_intent_shown" boolean,
       "latest_campaign" character varying(255),
       "social_security_number_last_4" character varying(4),
       "los_decision" character varying(10),
       "los_approved_amount" numeric(10,2),
       "days_since_last_payoff" integer,
       "created_at" timestamp with time zone,
       "updated_at" timestamp with time zone,
       "pti_max_payment" numeric(10,2),
       "last_error" character varying(500),
       "pay_schedule_aligned" boolean,
       "pti_rate" numeric(10,2),
       "first_payment_date" date,
       "pay_schedule_offset" integer,
       "document_language" character varying(2),
       "marital_status" character varying(1),
       "spouse_address_line1" character varying(255),
       "spouse_address_line2" character varying(255),
       "spouse_city" character varying(50),
       "spouse_first_name" character varying(255),
       "spouse_last_name" character varying(255),
       "spouse_state" character varying(5),
       "spouse_zip_code" character varying(10))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'Applicants'
    );
COMMENT on COLUMN "applicants"."applicant_transaction_number" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."applicant_transaction_date" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."applicant_transaction_time" IS $$remote type: time without time zone$$;
COMMENT on COLUMN "applicants"."applicant_requested_date" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."applicant_effective_date" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."applicant_promo_code" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."first_name" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."last_name" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."previous_customer" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."address_line1" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."address_line2" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."city" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."country" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."zip_code" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicants"."state_code" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."address_len_years" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."address_len_months" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."cell_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "applicants"."home_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "applicants"."email" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."social_security_number" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "applicants"."date_of_birth" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."eighteen_years_old" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicants"."driver_sid_num" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "applicants"."driver_sid_state" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."is_military" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."housing_type" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."employer_name" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."income_type" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicants"."employer_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "applicants"."employer_len_years" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."employer_len_months" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."employer_benefit_startdate" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."income_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."pay_type" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."employer_periodicity" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."last_payday" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."next_payday" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."second_payday" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."last_check" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."bank_account_type" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicants"."bank_account_len_years" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."bank_account_len_months" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."aba_routing_number" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."bank_account_number" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."bank_name" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."bank_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "applicants"."bank_country" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."loan_requested_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."loan_reason" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."field1" IS $$remote type: text$$;
COMMENT on COLUMN "applicants"."field2" IS $$remote type: text$$;
COMMENT on COLUMN "applicants"."field3" IS $$remote type: text$$;
COMMENT on COLUMN "applicants"."field4" IS $$remote type: text$$;
COMMENT on COLUMN "applicants"."gds_submit_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicants"."gds_return_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicants"."epic_submit_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicants"."epic_return_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicants"."cso_apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "applicants"."cso_fee" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "applicants"."first_payday_of_month" IS $$remote type: character varying(25)$$;
COMMENT on COLUMN "applicants"."second_payday_of_month" IS $$remote type: character varying(25)$$;
COMMENT on COLUMN "applicants"."day_of_week_paid" IS $$remote type: character varying(25)$$;
COMMENT on COLUMN "applicants"."ip_address" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."user_agent_string" IS $$remote type: character varying(1024)$$;
COMMENT on COLUMN "applicants"."token" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "applicants"."pricing_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."enhanced_verification" IS $$remote type: character varying(20)$$;
COMMENT on COLUMN "applicants"."preapproved_id" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."gds_key" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."epic_key" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."iovation_result" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicants"."iovation_tracking_number" IS $$remote type: character varying(40)$$;
COMMENT on COLUMN "applicants"."iovation_score" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."iovation_rules_matched" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."iovation_payload" IS $$remote type: text$$;
COMMENT on COLUMN "applicants"."loan_actual_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."loan_apr" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."loan_number_of_payments" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."payment_method" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."current_status" IS $$remote type: character varying(500)$$;
COMMENT on COLUMN "applicants"."lms" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicants"."los" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicants"."agree_electronic_communications" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicants"."agree_privacy_notice" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicants"."agree_confirm_accuracy" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicants"."agree_telemarketing" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicants"."loan_approved_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."exit_intent_eligible" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicants"."exit_intent_shown" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicants"."latest_campaign" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."social_security_number_last_4" IS $$remote type: character varying(4)$$;
COMMENT on COLUMN "applicants"."los_decision" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "applicants"."los_approved_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."days_since_last_payoff" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicants"."updated_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "applicants"."pti_max_payment" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."last_error" IS $$remote type: character varying(500)$$;
COMMENT on COLUMN "applicants"."pay_schedule_aligned" IS $$remote type: boolean$$;
COMMENT on COLUMN "applicants"."pti_rate" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "applicants"."first_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "applicants"."pay_schedule_offset" IS $$remote type: integer$$;
COMMENT on COLUMN "applicants"."document_language" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "applicants"."marital_status" IS $$remote type: character varying(1)$$;
COMMENT on COLUMN "applicants"."spouse_address_line1" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."spouse_address_line2" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."spouse_city" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "applicants"."spouse_first_name" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."spouse_last_name" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "applicants"."spouse_state" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "applicants"."spouse_zip_code" IS $$remote type: character varying(10)$$;


    DROP FOREIGN TABLE IF EXISTS "badbanks";
    CREATE FOREIGN TABLE "badbanks"
      ("id" integer,
       "routing_number" character varying(9),
       "name" character varying(250),
       "is_active" boolean)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'BadBanks'
    );
COMMENT on COLUMN "badbanks"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "badbanks"."routing_number" IS $$remote type: character varying(9)$$;
COMMENT on COLUMN "badbanks"."name" IS $$remote type: character varying(250)$$;
COMMENT on COLUMN "badbanks"."is_active" IS $$remote type: boolean$$;

    DROP FOREIGN TABLE IF EXISTS "customerinformation";
    CREATE FOREIGN TABLE "customerinformation"
      ("id" integer,
       "social_security_number" character varying(32),
       "last_email" character varying(256),
       "last_pay_frequency" character varying(5),
       "last_pay_amount" numeric(10,2),
       "count_loans_paid_off" integer,
       "count_loans_vip" integer,
       "count_loans_bad" integer,
       "best_loan_amount" numeric(10,2),
       "line_offer" numeric(10,2),
       "is_vip" boolean,
       "is_returning" boolean,
       "is_pti_applicable" boolean,
       "is_dm_suppressed" boolean,
       "is_test" boolean,
       "calculated_pti" numeric(7,2),
       "current_pay_amount" numeric(10,2),
       "current_pay_frequency" character varying(5),
       "days_since_last_payoff" integer,
       "effective_pti" numeric(6,2),
       "is_returning_email" boolean,
       "is_returning_letter" boolean,
       "is_vip_email" boolean,
       "is_vip_letter" boolean,
       "pti_max_line" numeric(6,2),
       "pti_payment_cap" numeric(6,2),
       "best_tier_id" integer,
       "count_loans_returning" integer,
       "price_tier_offer_id" integer,
       "created_at" timestamp with time zone,
       "state" character varying(2),
       "updated_at" timestamp with time zone,
       "line_increase" numeric(6,2),
       "count_loans_active" integer)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'CustomerInformation'
    );
COMMENT on COLUMN "customerinformation"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation"."social_security_number" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "customerinformation"."last_email" IS $$remote type: character varying(256)$$;
COMMENT on COLUMN "customerinformation"."last_pay_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "customerinformation"."last_pay_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformation"."count_loans_paid_off" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation"."count_loans_vip" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation"."count_loans_bad" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation"."best_loan_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformation"."line_offer" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformation"."is_vip" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."is_returning" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."is_pti_applicable" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."is_dm_suppressed" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."is_test" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."calculated_pti" IS $$remote type: numeric(7,2)$$;
COMMENT on COLUMN "customerinformation"."current_pay_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformation"."current_pay_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "customerinformation"."days_since_last_payoff" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation"."effective_pti" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "customerinformation"."is_returning_email" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."is_returning_letter" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."is_vip_email" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."is_vip_letter" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation"."pti_max_line" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "customerinformation"."pti_payment_cap" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "customerinformation"."best_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation"."count_loans_returning" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation"."price_tier_offer_id" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "customerinformation"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "customerinformation"."updated_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "customerinformation"."line_increase" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "customerinformation"."count_loans_active" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "customerinformationbuild";
    CREATE FOREIGN TABLE "customerinformationbuild"
      ("id" integer,
       "social_security_number" character varying(32),
       "last_email" character varying(256),
       "last_pay_frequency" character varying(5),
       "last_pay_amount" numeric(10,2),
       "count_loans_paid_off" integer,
       "count_loans_vip" integer,
       "count_loans_bad" integer,
       "best_loan_amount" numeric(10,2),
       "line_offer" numeric(10,2),
       "is_vip" boolean,
       "is_returning" boolean,
       "is_pti_applicable" boolean,
       "is_dm_suppressed" boolean,
       "is_test" boolean,
       "calculated_pti" numeric(7,2),
       "current_pay_amount" numeric(10,2),
       "current_pay_frequency" character varying(5),
       "days_since_last_payoff" integer,
       "effective_pti" numeric(6,2),
       "is_returning_email" boolean,
       "is_returning_letter" boolean,
       "is_vip_email" boolean,
       "is_vip_letter" boolean,
       "pti_max_line" numeric(6,2),
       "pti_payment_cap" numeric(6,2),
       "best_tier_id" integer,
       "count_loans_returning" integer,
       "price_tier_offer_id" integer,
       "created_at" timestamp(6) with time zone,
       "state" character varying(2),
       "updated_at" timestamp(6) with time zone,
       "line_increase" numeric(6,2),
       "count_loans_active" integer)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'CustomerInformationBuild'
    );
COMMENT on COLUMN "customerinformationbuild"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationbuild"."social_security_number" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "customerinformationbuild"."last_email" IS $$remote type: character varying(256)$$;
COMMENT on COLUMN "customerinformationbuild"."last_pay_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "customerinformationbuild"."last_pay_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformationbuild"."count_loans_paid_off" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationbuild"."count_loans_vip" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationbuild"."count_loans_bad" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationbuild"."best_loan_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformationbuild"."line_offer" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformationbuild"."is_vip" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."is_returning" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."is_pti_applicable" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."is_dm_suppressed" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."is_test" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."calculated_pti" IS $$remote type: numeric(7,2)$$;
COMMENT on COLUMN "customerinformationbuild"."current_pay_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformationbuild"."current_pay_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "customerinformationbuild"."days_since_last_payoff" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationbuild"."effective_pti" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "customerinformationbuild"."is_returning_email" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."is_returning_letter" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."is_vip_email" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."is_vip_letter" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformationbuild"."pti_max_line" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "customerinformationbuild"."pti_payment_cap" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "customerinformationbuild"."best_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationbuild"."count_loans_returning" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationbuild"."price_tier_offer_id" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationbuild"."created_at" IS $$remote type: timestamp(6) with time zone$$;
COMMENT on COLUMN "customerinformationbuild"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "customerinformationbuild"."updated_at" IS $$remote type: timestamp(6) with time zone$$;
COMMENT on COLUMN "customerinformationbuild"."line_increase" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "customerinformationbuild"."count_loans_active" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "customerinformationrules";
    CREATE FOREIGN TABLE "customerinformationrules"
      ("id" integer,
       "type" character varying(10),
       "rule" jsonb,
       "label" character varying(25),
       "created_at" timestamp with time zone,
       "updated_at" timestamp with time zone)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'CustomerInformationRules'
    );
COMMENT on COLUMN "customerinformationrules"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformationrules"."type" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "customerinformationrules"."rule" IS $$remote type: jsonb$$;
COMMENT on COLUMN "customerinformationrules"."label" IS $$remote type: character varying(25)$$;
COMMENT on COLUMN "customerinformationrules"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "customerinformationrules"."updated_at" IS $$remote type: timestamp with time zone$$;

    DROP FOREIGN TABLE IF EXISTS "documentgroups";
    CREATE FOREIGN TABLE "documentgroups"
      ("id" character varying(36),
       "applicant_id" integer,
       "created_at" timestamp with time zone,
       "voided_at" timestamp with time zone,
       "completed_at" timestamp with time zone,
       "doctype" character varying(25))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'DocumentGroups'
    );
COMMENT on COLUMN "documentgroups"."id" IS $$remote type: character varying(36)$$;
COMMENT on COLUMN "documentgroups"."applicant_id" IS $$remote type: integer$$;
COMMENT on COLUMN "documentgroups"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "documentgroups"."voided_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "documentgroups"."completed_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "documentgroups"."doctype" IS $$remote type: character varying(25)$$;

    DROP FOREIGN TABLE IF EXISTS "documents";
    CREATE FOREIGN TABLE "documents"
      ("id" character varying(36),
       "name" text,
       "document_group_id" character varying(36),
       "custom_forms" jsonb,
       "position" integer,
       "requested_at" timestamp with time zone,
       "expiration" timestamp with time zone,
       "status" text,
       "rendered_url" text,
       "envelope_id" text,
       "loan_pro_document_id" integer)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'Documents'
    );
COMMENT on COLUMN "documents"."id" IS $$remote type: character varying(36)$$;
COMMENT on COLUMN "documents"."name" IS $$remote type: text$$;
COMMENT on COLUMN "documents"."document_group_id" IS $$remote type: character varying(36)$$;
COMMENT on COLUMN "documents"."custom_forms" IS $$remote type: jsonb$$;
COMMENT on COLUMN "documents"."position" IS $$remote type: integer$$;
COMMENT on COLUMN "documents"."requested_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "documents"."expiration" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "documents"."status" IS $$remote type: text$$;
COMMENT on COLUMN "documents"."rendered_url" IS $$remote type: text$$;
COMMENT on COLUMN "documents"."envelope_id" IS $$remote type: text$$;
COMMENT on COLUMN "documents"."loan_pro_document_id" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "installmentloanpaymentrates";
    CREATE FOREIGN TABLE "installmentloanpaymentrates"
      ("id" integer,
       "parent_id" integer,
       "apr" numeric(6,2),
       "number_of_payments" integer,
       "cso_apr" numeric(6,2),
       "cso_fee" numeric(6,2))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'InstallmentLoanPaymentRates'
    );
COMMENT on COLUMN "installmentloanpaymentrates"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloanpaymentrates"."parent_id" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloanpaymentrates"."apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloanpaymentrates"."number_of_payments" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloanpaymentrates"."cso_apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloanpaymentrates"."cso_fee" IS $$remote type: numeric(6,2)$$;

    DROP FOREIGN TABLE IF EXISTS "installmentloanpaymentrates_archive";
    CREATE FOREIGN TABLE "installmentloanpaymentrates_archive"
      ("id" integer,
       "parent_id" integer,
       "apr" numeric(6,2),
       "number_of_payments" integer,
       "cso_apr" numeric(6,2),
       "cso_fee" numeric(6,2))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'InstallmentLoanPaymentRates_Archive'
    );
COMMENT on COLUMN "installmentloanpaymentrates_archive"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloanpaymentrates_archive"."parent_id" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloanpaymentrates_archive"."apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloanpaymentrates_archive"."number_of_payments" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloanpaymentrates_archive"."cso_apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloanpaymentrates_archive"."cso_fee" IS $$remote type: numeric(6,2)$$;

    DROP FOREIGN TABLE IF EXISTS "installmentloans";
    CREATE FOREIGN TABLE "installmentloans"
      ("id" integer,
       "state_code" character varying(5),
       "loan_amount" integer,
       "loan_apr" numeric(6,2),
       "min_payments" integer,
       "max_payments" integer,
       "default_payment" integer,
       "pay_frequency" character varying(5),
       "record_date" date,
       "is_active" boolean,
       "cso_apr" numeric(6,2),
       "cso_fee" numeric(6,2),
       "pricing_tier_id" integer)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'InstallmentLoans'
    );
COMMENT on COLUMN "installmentloans"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans"."state_code" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "installmentloans"."loan_amount" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans"."loan_apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloans"."min_payments" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans"."max_payments" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans"."default_payment" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans"."pay_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "installmentloans"."record_date" IS $$remote type: date$$;
COMMENT on COLUMN "installmentloans"."is_active" IS $$remote type: boolean$$;
COMMENT on COLUMN "installmentloans"."cso_apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloans"."cso_fee" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloans"."pricing_tier_id" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "installmentloansterms";
    CREATE FOREIGN TABLE "installmentloansterms"
      ("id" integer,
       "state_code" character varying(5),
       "loan_amount" integer,
       "payment_number" integer,
       "bi_weekly_payment" numeric(6,2),
       "semi_monthly_payment" numeric(6,2),
       "record_date" date)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'InstallmentLoansTerms'
    );
COMMENT on COLUMN "installmentloansterms"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloansterms"."state_code" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "installmentloansterms"."loan_amount" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloansterms"."payment_number" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloansterms"."bi_weekly_payment" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloansterms"."semi_monthly_payment" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloansterms"."record_date" IS $$remote type: date$$;

    DROP FOREIGN TABLE IF EXISTS "installmentloans_archive";
    CREATE FOREIGN TABLE "installmentloans_archive"
      ("id" integer,
       "state_code" character varying(5),
       "loan_amount" integer,
       "loan_apr" numeric(6,2),
       "min_payments" integer,
       "max_payments" integer,
       "default_payment" integer,
       "pay_frequency" character varying(5),
       "record_date" date,
       "is_active" boolean,
       "cso_apr" numeric(6,2),
       "cso_fee" numeric(6,2),
       "pricing_tier_id" integer)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'InstallmentLoans_Archive'
    );
COMMENT on COLUMN "installmentloans_archive"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans_archive"."state_code" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "installmentloans_archive"."loan_amount" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans_archive"."loan_apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloans_archive"."min_payments" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans_archive"."max_payments" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans_archive"."default_payment" IS $$remote type: integer$$;
COMMENT on COLUMN "installmentloans_archive"."pay_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "installmentloans_archive"."record_date" IS $$remote type: date$$;
COMMENT on COLUMN "installmentloans_archive"."is_active" IS $$remote type: boolean$$;
COMMENT on COLUMN "installmentloans_archive"."cso_apr" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloans_archive"."cso_fee" IS $$remote type: numeric(6,2)$$;
COMMENT on COLUMN "installmentloans_archive"."pricing_tier_id" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "leadtransactions";
    CREATE FOREIGN TABLE "leadtransactions"
      ("transaction_number" integer,
       "transaction_request" text,
       "transaction_response" text,
       "transaction_date" date,
       "transaction_time" time without time zone)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'LeadTransactions'
    );
COMMENT on COLUMN "leadtransactions"."transaction_number" IS $$remote type: integer$$;
COMMENT on COLUMN "leadtransactions"."transaction_request" IS $$remote type: text$$;
COMMENT on COLUMN "leadtransactions"."transaction_response" IS $$remote type: text$$;
COMMENT on COLUMN "leadtransactions"."transaction_date" IS $$remote type: date$$;
COMMENT on COLUMN "leadtransactions"."transaction_time" IS $$remote type: time without time zone$$;

    DROP FOREIGN TABLE IF EXISTS "leads";
    CREATE FOREIGN TABLE "leads"
      ("id" integer,
       "applicant_id" integer,
       "token" character varying(36),
       "email" character varying(255),
       "first_name" character varying(255),
       "last_name" character varying(255),
       "home_phone" character varying(255),
       "cell_phone" character varying(255),
       "dob_day" integer,
       "dob_month" integer,
       "dob_year" integer,
       "date_of_birth" date,
       "drivers_license_number" character varying(25),
       "drivers_license_state" character varying(2),
       "social_security_number" character varying(32),
       "employer_name" character varying(255),
       "employer_phone" character varying(255),
       "bank_account_number" character varying(255),
       "bank_account_type" character varying(255),
       "aba_routing_number" character varying(255),
       "account_usage_length" character varying(255),
       "bank_name" character varying(255),
       "bank_phone" character varying(255),
       "housing_type" character varying(255),
       "income_frequency" character varying(255),
       "length_at_address" character varying(255),
       "length_at_employer" character varying(255),
       "loan_reason" character varying(255),
       "loan_requested_amount" numeric(10,2),
       "promo_code" character varying(255),
       "state_issued" character varying(255),
       "address_line1" character varying(255),
       "address_line2" character varying(255),
       "city" character varying(255),
       "state_code" character varying(255),
       "zip_code" character varying(255),
       "take_home_amount" character varying(255),
       "type_of_income" character varying(255),
       "payment_day" character varying(255),
       "next_regular_payday" character varying(255),
       "payday_date_of_the_month" character varying(255),
       "first_payday_of_month" character varying(255),
       "second_payday_of_month" character varying(255),
       "agree_electronic_communications" boolean,
       "agree_privacy_notice" boolean,
       "agree_confirm_accuracy" boolean,
       "agree_telemarketing" boolean,
       "is_military" boolean,
       "ip_address" character varying(255),
       "user_agent_string" character varying(1024),
       "failed_validation" boolean,
       "validation_message" character varying(500),
       "date_created" timestamp with time zone,
       "date_updated" timestamp with time zone,
       "date_complete" timestamp with time zone,
       "approved" boolean,
       "approved_amount" numeric(10,2),
       "incomplete" boolean,
       "referral_address" character varying(500))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'Leads'
    );
COMMENT on COLUMN "leads"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "leads"."applicant_id" IS $$remote type: integer$$;
COMMENT on COLUMN "leads"."token" IS $$remote type: character varying(36)$$;
COMMENT on COLUMN "leads"."email" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."first_name" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."last_name" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."home_phone" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."cell_phone" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."dob_day" IS $$remote type: integer$$;
COMMENT on COLUMN "leads"."dob_month" IS $$remote type: integer$$;
COMMENT on COLUMN "leads"."dob_year" IS $$remote type: integer$$;
COMMENT on COLUMN "leads"."date_of_birth" IS $$remote type: date$$;
COMMENT on COLUMN "leads"."drivers_license_number" IS $$remote type: character varying(25)$$;
COMMENT on COLUMN "leads"."drivers_license_state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "leads"."social_security_number" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "leads"."employer_name" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."employer_phone" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."bank_account_number" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."bank_account_type" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."aba_routing_number" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."account_usage_length" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."bank_name" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."bank_phone" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."housing_type" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."income_frequency" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."length_at_address" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."length_at_employer" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."loan_reason" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."loan_requested_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "leads"."promo_code" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."state_issued" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."address_line1" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."address_line2" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."city" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."state_code" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."zip_code" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."take_home_amount" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."type_of_income" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."payment_day" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."next_regular_payday" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."payday_date_of_the_month" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."first_payday_of_month" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."second_payday_of_month" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."agree_electronic_communications" IS $$remote type: boolean$$;
COMMENT on COLUMN "leads"."agree_privacy_notice" IS $$remote type: boolean$$;
COMMENT on COLUMN "leads"."agree_confirm_accuracy" IS $$remote type: boolean$$;
COMMENT on COLUMN "leads"."agree_telemarketing" IS $$remote type: boolean$$;
COMMENT on COLUMN "leads"."is_military" IS $$remote type: boolean$$;
COMMENT on COLUMN "leads"."ip_address" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "leads"."user_agent_string" IS $$remote type: character varying(1024)$$;
COMMENT on COLUMN "leads"."failed_validation" IS $$remote type: boolean$$;
COMMENT on COLUMN "leads"."validation_message" IS $$remote type: character varying(500)$$;
COMMENT on COLUMN "leads"."date_created" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "leads"."date_updated" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "leads"."date_complete" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "leads"."approved" IS $$remote type: boolean$$;
COMMENT on COLUMN "leads"."approved_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "leads"."incomplete" IS $$remote type: boolean$$;
COMMENT on COLUMN "leads"."referral_address" IS $$remote type: character varying(500)$$;

    DROP FOREIGN TABLE IF EXISTS "loaninformation";
    CREATE FOREIGN TABLE "loaninformation"
      ("id" integer,
       "social_security_number" character varying(32),
       "lms_name" character varying(10),
       "lms_id" integer,
       "status" character varying(64),
       "apr" numeric(10,2),
       "amount_principal" numeric(10,2),
       "amount_revenue" numeric(10,2),
       "is_vip" boolean,
       "is_bad_loan" boolean,
       "is_include_best" boolean,
       "is_returning" boolean,
       "payoff_cleared_date" date,
       "calculated_price_tier_id" integer,
       "payoff_effective_date" date,
       "payoff_entered_date" date,
       "payoff_payment_method" character varying(32),
       "created_at" timestamp with time zone,
       "state" character varying(2),
       "updated_at" timestamp with time zone,
       "is_active" boolean)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'LoanInformation'
    );
COMMENT on COLUMN "loaninformation"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformation"."social_security_number" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "loaninformation"."lms_name" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "loaninformation"."lms_id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformation"."status" IS $$remote type: character varying(64)$$;
COMMENT on COLUMN "loaninformation"."apr" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformation"."amount_principal" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformation"."amount_revenue" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformation"."is_vip" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformation"."is_bad_loan" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformation"."is_include_best" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformation"."is_returning" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformation"."payoff_cleared_date" IS $$remote type: date$$;
COMMENT on COLUMN "loaninformation"."calculated_price_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformation"."payoff_effective_date" IS $$remote type: date$$;
COMMENT on COLUMN "loaninformation"."payoff_entered_date" IS $$remote type: date$$;
COMMENT on COLUMN "loaninformation"."payoff_payment_method" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "loaninformation"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "loaninformation"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "loaninformation"."updated_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "loaninformation"."is_active" IS $$remote type: boolean$$;

    DROP FOREIGN TABLE IF EXISTS "loaninformationbuild";
    CREATE FOREIGN TABLE "loaninformationbuild"
      ("id" integer,
       "social_security_number" character varying(32),
       "lms_name" character varying(10),
       "lms_id" integer,
       "status" character varying(64),
       "apr" numeric(10,2),
       "amount_principal" numeric(10,2),
       "amount_revenue" numeric(10,2),
       "is_vip" boolean,
       "is_bad_loan" boolean,
       "is_include_best" boolean,
       "is_returning" boolean,
       "payoff_cleared_date" date,
       "calculated_price_tier_id" integer,
       "payoff_effective_date" date,
       "payoff_entered_date" date,
       "payoff_payment_method" character varying(32),
       "created_at" timestamp(6) with time zone,
       "state" character varying(2),
       "updated_at" timestamp(6) with time zone,
       "is_active" boolean)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'LoanInformationBuild'
    );
COMMENT on COLUMN "loaninformationbuild"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformationbuild"."social_security_number" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "loaninformationbuild"."lms_name" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "loaninformationbuild"."lms_id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformationbuild"."status" IS $$remote type: character varying(64)$$;
COMMENT on COLUMN "loaninformationbuild"."apr" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformationbuild"."amount_principal" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformationbuild"."amount_revenue" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformationbuild"."is_vip" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformationbuild"."is_bad_loan" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformationbuild"."is_include_best" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformationbuild"."is_returning" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformationbuild"."payoff_cleared_date" IS $$remote type: date$$;
COMMENT on COLUMN "loaninformationbuild"."calculated_price_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformationbuild"."payoff_effective_date" IS $$remote type: date$$;
COMMENT on COLUMN "loaninformationbuild"."payoff_entered_date" IS $$remote type: date$$;
COMMENT on COLUMN "loaninformationbuild"."payoff_payment_method" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "loaninformationbuild"."created_at" IS $$remote type: timestamp(6) with time zone$$;
COMMENT on COLUMN "loaninformationbuild"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "loaninformationbuild"."updated_at" IS $$remote type: timestamp(6) with time zone$$;
COMMENT on COLUMN "loaninformationbuild"."is_active" IS $$remote type: boolean$$;

    DROP FOREIGN TABLE IF EXISTS "loanprocalllogs";
    CREATE FOREIGN TABLE "loanprocalllogs"
      ("id" integer,
       "context" character varying(36),
       "label" character varying(255),
       "type" character varying(10),
       "endpoint" character varying(1000),
       "request" text,
       "response" text,
       "status" integer,
       "elapsed" numeric(8,2),
       "error" text,
       "incomplete" boolean,
       "return_timestamp" timestamp with time zone,
       "request_timestamp" timestamp with time zone)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'LoanProCallLogs'
    );
COMMENT on COLUMN "loanprocalllogs"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "loanprocalllogs"."context" IS $$remote type: character varying(36)$$;
COMMENT on COLUMN "loanprocalllogs"."label" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "loanprocalllogs"."type" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "loanprocalllogs"."endpoint" IS $$remote type: character varying(1000)$$;
COMMENT on COLUMN "loanprocalllogs"."request" IS $$remote type: text$$;
COMMENT on COLUMN "loanprocalllogs"."response" IS $$remote type: text$$;
COMMENT on COLUMN "loanprocalllogs"."status" IS $$remote type: integer$$;
COMMENT on COLUMN "loanprocalllogs"."elapsed" IS $$remote type: numeric(8,2)$$;
COMMENT on COLUMN "loanprocalllogs"."error" IS $$remote type: text$$;
COMMENT on COLUMN "loanprocalllogs"."incomplete" IS $$remote type: boolean$$;
COMMENT on COLUMN "loanprocalllogs"."return_timestamp" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "loanprocalllogs"."request_timestamp" IS $$remote type: timestamp with time zone$$;

    DROP FOREIGN TABLE IF EXISTS "locations";
    CREATE FOREIGN TABLE "locations"
      ("id" integer,
       "label" character varying(250),
       "city" character varying(100),
       "state" character varying(2),
       "zipcode" character varying(5))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'Locations'
    );
COMMENT on COLUMN "locations"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "locations"."label" IS $$remote type: character varying(250)$$;
COMMENT on COLUMN "locations"."city" IS $$remote type: character varying(100)$$;
COMMENT on COLUMN "locations"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "locations"."zipcode" IS $$remote type: character varying(5)$$;

    DROP FOREIGN TABLE IF EXISTS "preapprovedapplicants";
    CREATE FOREIGN TABLE "preapprovedapplicants"
      ("id" integer,
       "campaign" character varying(255),
       "applicant_hash" character varying(64),
       "expiration_date" date,
       "state" character varying(2),
       "max_line" integer,
       "apr" double precision,
       "pricing_tier_id" integer,
       "promo_code_id" integer,
       "first_name" character varying(100),
       "last_name" character varying(100),
       "provider" character varying(10),
       "min_term_months" integer,
       "max_term_months" integer,
       "created_at" timestamp with time zone,
       "updated_at" timestamp with time zone,
       "offer_date" date)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'PreApprovedApplicants'
    );
COMMENT on COLUMN "preapprovedapplicants"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "preapprovedapplicants"."campaign" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "preapprovedapplicants"."applicant_hash" IS $$remote type: character varying(64)$$;
COMMENT on COLUMN "preapprovedapplicants"."expiration_date" IS $$remote type: date$$;
COMMENT on COLUMN "preapprovedapplicants"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "preapprovedapplicants"."max_line" IS $$remote type: integer$$;
COMMENT on COLUMN "preapprovedapplicants"."apr" IS $$remote type: double precision$$;
COMMENT on COLUMN "preapprovedapplicants"."pricing_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "preapprovedapplicants"."promo_code_id" IS $$remote type: integer$$;
COMMENT on COLUMN "preapprovedapplicants"."first_name" IS $$remote type: character varying(100)$$;
COMMENT on COLUMN "preapprovedapplicants"."last_name" IS $$remote type: character varying(100)$$;
COMMENT on COLUMN "preapprovedapplicants"."provider" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "preapprovedapplicants"."min_term_months" IS $$remote type: integer$$;
COMMENT on COLUMN "preapprovedapplicants"."max_term_months" IS $$remote type: integer$$;
COMMENT on COLUMN "preapprovedapplicants"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "preapprovedapplicants"."updated_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "preapprovedapplicants"."offer_date" IS $$remote type: date$$;

    DROP FOREIGN TABLE IF EXISTS "pricingtiers";
    CREATE FOREIGN TABLE "pricingtiers"
      ("id" integer,
       "label" character varying(250),
       "expiration" date,
       "description" character varying(1000),
       "priority" integer)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'PricingTiers'
    );
COMMENT on COLUMN "pricingtiers"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "pricingtiers"."label" IS $$remote type: character varying(250)$$;
COMMENT on COLUMN "pricingtiers"."expiration" IS $$remote type: date$$;
COMMENT on COLUMN "pricingtiers"."description" IS $$remote type: character varying(1000)$$;
COMMENT on COLUMN "pricingtiers"."priority" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "promocodes";
    CREATE FOREIGN TABLE "promocodes"
      ("id" integer,
       "label" character varying(250),
       "code" character varying(10),
       "expiration_date" date,
       "tier_key" character varying(255),
       "begin_date" date,
       "pricing_tier_id" integer,
       "mktg_level1" character varying(100),
       "mktg_level2" character varying(100),
       "mktg_level3" character varying(100),
       "priority" integer,
       "store_type" character varying(20))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'PromoCodes'
    );
COMMENT on COLUMN "promocodes"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "promocodes"."label" IS $$remote type: character varying(250)$$;
COMMENT on COLUMN "promocodes"."code" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "promocodes"."expiration_date" IS $$remote type: date$$;
COMMENT on COLUMN "promocodes"."tier_key" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "promocodes"."begin_date" IS $$remote type: date$$;
COMMENT on COLUMN "promocodes"."pricing_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "promocodes"."mktg_level1" IS $$remote type: character varying(100)$$;
COMMENT on COLUMN "promocodes"."mktg_level2" IS $$remote type: character varying(100)$$;
COMMENT on COLUMN "promocodes"."mktg_level3" IS $$remote type: character varying(100)$$;
COMMENT on COLUMN "promocodes"."priority" IS $$remote type: integer$$;
COMMENT on COLUMN "promocodes"."store_type" IS $$remote type: character varying(20)$$;

    DROP FOREIGN TABLE IF EXISTS "routingnumbers";
    CREATE FOREIGN TABLE "routingnumbers"
      ("id" integer,
       "label" character varying(9))
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'RoutingNumbers'
    );
COMMENT on COLUMN "routingnumbers"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "routingnumbers"."label" IS $$remote type: character varying(9)$$;

    DROP FOREIGN TABLE IF EXISTS "preapprovedapplicants";
    CREATE FOREIGN TABLE "preapprovedapplicants"
      ("applicant_hash" character varying(64),
       "state" character varying(2),
       "max_line" integer)
    SERVER "balance_api_server"
    OPTIONS (
      schema_name 'public',
      table_name  'preapprovedapplicants'
    );
COMMENT on COLUMN "preapprovedapplicants"."applicant_hash" IS $$remote type: character varying(64)$$;
COMMENT on COLUMN "preapprovedapplicants"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "preapprovedapplicants"."max_line" IS $$remote type: integer$$;

