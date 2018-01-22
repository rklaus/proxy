
    DROP FOREIGN TABLE IF EXISTS "apps";
    CREATE FOREIGN TABLE "apps"
      ("id" int,
       "application_id" text,
       "date_processed" timestamp,
       "last_name" varchar(50),
       "first_name" varchar(50),
       "state" varchar(50),
       "decision" varchar(50),
       "reason1" text,
       "reason2" text,
       "reason3" text,
       "reason4" text,
       "strategy_code" varchar(50),
       "match_key" varchar(100),
       "tdc_application_id" text,
       "request_data" xml,
       "response_data" xml,
       "response_time" int,
       "marketing_code" text,
       "application_source" text,
       "customer_age" text,
       "customer_monthly_income" text,
       "auction_result" text,
       "auction_bid" text,
       "auction_winning_bid" text,
       "redirect_url" text,
       "claritycontrolfilename" varchar(50),
       "token" varchar(100),
       "storeid" varchar(100))
    SERVER "gds_server"
    OPTIONS (table 'apps'
    );
COMMENT on COLUMN "apps"."id" IS $$remote type: int(10,0)$$;
COMMENT on COLUMN "apps"."application_id" IS $$remote type: uniqueidentifier$$;
COMMENT on COLUMN "apps"."date_processed" IS $$remote type: datetime$$;
COMMENT on COLUMN "apps"."last_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "apps"."first_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "apps"."state" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "apps"."decision" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "apps"."reason1" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."reason2" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."reason3" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."reason4" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."strategy_code" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "apps"."match_key" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "apps"."tdc_application_id" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."request_data" IS $$remote type: xml(-1)$$;
COMMENT on COLUMN "apps"."response_data" IS $$remote type: xml(-1)$$;
COMMENT on COLUMN "apps"."response_time" IS $$remote type: int(10,0)$$;
COMMENT on COLUMN "apps"."marketing_code" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."application_source" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."customer_age" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."customer_monthly_income" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."auction_result" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."auction_bid" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."auction_winning_bid" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."redirect_url" IS $$remote type: varchar(-1)$$;
COMMENT on COLUMN "apps"."claritycontrolfilename" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "apps"."token" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "apps"."storeid" IS $$remote type: varchar(100)$$;

   DROP FOREIGN TABLE IF EXISTS "clarity";
    CREATE FOREIGN TABLE "clarity"
      ("id" int,
       "application_id" text,
       "report" xml,
       "pulled" timestamp,
       "tdc_application_id" varchar(50),
       "response_time" int)
    SERVER "gds_server"
    OPTIONS (table 'clarity_vw'
    );
COMMENT on COLUMN "clarity"."id" IS $$remote type: int(10,0)$$;
COMMENT on COLUMN "clarity"."application_id" IS $$remote type: uniqueidentifier$$;
COMMENT on COLUMN "clarity"."report" IS $$remote type: xml(-1)$$;
COMMENT on COLUMN "clarity"."pulled" IS $$remote type: datetime$$;
COMMENT on COLUMN "clarity"."tdc_application_id" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "clarity"."response_time" IS $$remote type: int(10,0)$$;

   

    DROP FOREIGN TABLE IF EXISTS "microbilt";
    CREATE FOREIGN TABLE "microbilt"
      ("id" int,
       "application_id" text,
       "report" xml,
       "pulled" timestamp,
       "tdc_application_id" varchar(50),
       "response_time" int)
    SERVER "gds_server"
    OPTIONS (table 'microbilt'
    );
COMMENT on COLUMN "microbilt"."id" IS $$remote type: int(10,0)$$;
COMMENT on COLUMN "microbilt"."application_id" IS $$remote type: uniqueidentifier$$;
COMMENT on COLUMN "microbilt"."report" IS $$remote type: xml(-1)$$;
COMMENT on COLUMN "microbilt"."pulled" IS $$remote type: datetime$$;
COMMENT on COLUMN "microbilt"."tdc_application_id" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "microbilt"."response_time" IS $$remote type: int(10,0)$$;
alter foreign table gds_fdw.apps owner to dw_owner;
alter foreign table gds_fdw.clarity owner to dw_owner;
alter foreign table gds_fdw.microbilt owner to dw_owner;

grant select on gds_fdw.apps to dw_proxy_load;
grant select on gds_fdw.clarity  to dw_proxy_load;
grant select on gds_fdw.microbilt  to dw_proxy_load;

