    DROP FOREIGN TABLE IF EXISTS "customerinformation_dw";
    CREATE FOREIGN TABLE "customerinformation_dw"
      ("id" integer,
       "ssn_encrypted" text,
       "last_email" character varying(256),
       "last_pay_frequency" character varying(5),
       "last_pay_amount" numeric(10,2),
       "is_test" boolean,
       "current_pay_frequency" character varying(5),
       "current_pay_amount" numeric(10,2),
       "state" text,
       "created_at" timestamp with time zone,
       "updated_at" timestamp with time zone,
       "lms_name" text,
       "lms_id" integer)
    SERVER "edw_new_server"
    OPTIONS (
      schema_name 'dw_reporting',
      table_name  'customerinformation_dw'
    );
    
    
COMMENT on COLUMN "customerinformation_dw"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "customerinformation_dw"."ssn_encrypted" IS $$remote type: text$$;
COMMENT on COLUMN "customerinformation_dw"."last_email" IS $$remote type: character varying(256)$$;
COMMENT on COLUMN "customerinformation_dw"."last_pay_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "customerinformation_dw"."last_pay_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformation_dw"."is_test" IS $$remote type: boolean$$;
COMMENT on COLUMN "customerinformation_dw"."current_pay_frequency" IS $$remote type: character varying(5)$$;
COMMENT on COLUMN "customerinformation_dw"."current_pay_amount" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "customerinformation_dw"."state" IS $$remote type: text$$;
COMMENT on COLUMN "customerinformation_dw"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "customerinformation_dw"."updated_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "customerinformation_dw"."lms_name" IS $$remote type: text$$;
COMMENT on COLUMN "customerinformation_dw"."lms_id" IS $$remote type: integer$$;

alter foreign table customerinformation_dw owner to dw_owner;
grant select on customerinformation_dw to dw_proxy_load;


    DROP FOREIGN TABLE IF EXISTS "loaninformation_dw";
    CREATE FOREIGN TABLE "loaninformation_dw"
      ("id" integer,
       "ssn" text,
       "ssn_encrypted" text,
       "client_id" integer,
       "lms_name" character varying(10),
       "lms_id" integer,
       "status" character varying(64),
       "is_test" boolean,
       "apr" numeric(10,2),
       "amount_principal" numeric(10,2),
       "amount_revenue" numeric(10,2),
       "payoff_effective_date" date,
       "payoff_entered_date" date,
       "payoff_payment_method" character varying(32),
       "created_at" timestamp with time zone,
       "updated_at" timestamp with time zone,
       "state" character varying(2),
       "payoff_cleared_date" date)
    SERVER "edw_new_server"
    OPTIONS (
      schema_name 'dw_reporting',
      table_name  'loaninformation_dw'
    );
COMMENT on COLUMN "loaninformation_dw"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformation_dw"."ssn" IS $$remote type: text$$;
COMMENT on COLUMN "loaninformation_dw"."ssn_encrypted" IS $$remote type: text$$;
COMMENT on COLUMN "loaninformation_dw"."client_id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformation_dw"."lms_name" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "loaninformation_dw"."lms_id" IS $$remote type: integer$$;
COMMENT on COLUMN "loaninformation_dw"."status" IS $$remote type: character varying(64)$$;
COMMENT on COLUMN "loaninformation_dw"."is_test" IS $$remote type: boolean$$;
COMMENT on COLUMN "loaninformation_dw"."apr" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformation_dw"."amount_principal" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformation_dw"."amount_revenue" IS $$remote type: numeric(10,2)$$;
COMMENT on COLUMN "loaninformation_dw"."payoff_effective_date" IS $$remote type: date$$;
COMMENT on COLUMN "loaninformation_dw"."payoff_entered_date" IS $$remote type: date$$;
COMMENT on COLUMN "loaninformation_dw"."payoff_payment_method" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "loaninformation_dw"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "loaninformation_dw"."updated_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "loaninformation_dw"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "loaninformation_dw"."payoff_cleared_date" IS $$remote type: date$$;

alter foreign table loaninformation_dw owner to dw_owner;
grant select on loaninformation_dw to dw_proxy_load;
   
    DROP FOREIGN TABLE IF EXISTS "_preapprovedapplicants";
    CREATE FOREIGN TABLE "_preapprovedapplicants"
    (id integer
    ,campaign text
    ,offer_date date
    ,applicant_hash text
    ,expiration_date date
    ,state text
    ,max_line numeric
    ,apr double precision
    ,pricing_tier_id  integer
    ,promo_code_id integer
    ,first_name text
    ,last_name text
    ,provider text
    ,min_term_months integer 
    ,max_term_months integer
    ,created_at timestamp with time zone
    ,updated_at timestamp with time zone
  )
    SERVER "edw_new_server"
    OPTIONS (
      schema_name 'dw_reporting',
      table_name  '_preapprovedapplicants'
    );
COMMENT on COLUMN "_preapprovedapplicants"."campaign" IS $$remote type: text$$;
COMMENT on COLUMN "_preapprovedapplicants"."offer_date" IS $$remote type: date$$;
COMMENT on COLUMN "_preapprovedapplicants"."applicant_hash" IS $$remote type: text$$;
COMMENT on COLUMN "_preapprovedapplicants"."expiration_date" IS $$remote type: date$$;
COMMENT on COLUMN "_preapprovedapplicants"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "_preapprovedapplicants"."max_line" IS $$remote type: integer$$;
COMMENT on COLUMN "_preapprovedapplicants"."apr" IS $$remote type: double precision$$;
COMMENT on COLUMN "_preapprovedapplicants"."pricing_tier_id" IS $$remote type: integer$$;
COMMENT on COLUMN "_preapprovedapplicants"."promo_code_id" IS $$remote type: integer$$;
COMMENT on COLUMN "_preapprovedapplicants"."first_name" IS $$remote type: text$$;
COMMENT on COLUMN "_preapprovedapplicants"."last_name" IS $$remote type: text$$;
COMMENT on COLUMN "_preapprovedapplicants"."provider" IS $$remote type: text$$;
COMMENT on COLUMN "_preapprovedapplicants"."min_term_months" IS $$remote type: integer$$;
COMMENT on COLUMN "_preapprovedapplicants"."max_term_months" IS $$remote type: integer$$;
COMMENT on COLUMN "_preapprovedapplicants"."created_at" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "_preapprovedapplicants"."updated_at" IS $$remote type: timestamp with time zone$$;

 alter foreign table _preapprovedapplicants owner to dw_owner;
grant select on _preapprovedapplicants to dw_proxy_load;

