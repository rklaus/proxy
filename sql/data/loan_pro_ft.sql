
    DROP VIEW IF EXISTS "ach_return_code_action_entity";

    DROP FOREIGN TABLE IF EXISTS "_ach_return_code_action_entity";
    CREATE FOREIGN TABLE "_ach_return_code_action_entity"
      ("id" char(32),
       "return_code" char(4),
       "action_type" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'ach_return_code_action_entity'
    );
COMMENT on COLUMN "_ach_return_code_action_entity"."id" IS $$remote type: char(32)$$;
COMMENT on COLUMN "_ach_return_code_action_entity"."return_code" IS $$remote type: char(4)$$;
COMMENT on COLUMN "_ach_return_code_action_entity"."action_type" IS $$remote type: enum('ach.returnAction.cancelAutopays','ach.returnAction.inactivatePaymentMethod','ach.returnAction.none')$$;
COMMENT on COLUMN "_ach_return_code_action_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_ach_return_code_action_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "ach_return_code_action_entity" as
          select "id",
            "return_code",
            "action_type",
            "deleted",
            "lastupdated" from "_ach_return_code_action_entity"
    ;

    DROP VIEW IF EXISTS "address_entity";

    DROP FOREIGN TABLE IF EXISTS "_address_entity";
    CREATE FOREIGN TABLE "_address_entity"
      ("id" int,
       "address1" text,
       "address2" text,
       "city" text,
       "state" char(20),
       "zipcode" char(15),
       "country" char(20),
       "geo_lat" text,
       "geo_lon" text,
       "is_verified" int,
       "is_standardized" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'address_entity'
    );
COMMENT on COLUMN "_address_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_address_entity"."address1" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_address_entity"."address2" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_address_entity"."city" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_address_entity"."state" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_address_entity"."zipcode" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_address_entity"."country" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_address_entity"."geo_lat" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_address_entity"."geo_lon" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_address_entity"."is_verified" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_address_entity"."is_standardized" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_address_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_address_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_address_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_address_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "address_entity" as
          select "id",
            "address1",
            "address2",
            "city",
            "state",
            "zipcode",
            "country",
            "geo_lat",
            "geo_lon",
            "is_verified",
            "is_standardized",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_address_entity"
    ;

    DROP VIEW IF EXISTS "admin_tool_entity";

    DROP FOREIGN TABLE IF EXISTS "_admin_tool_entity";
    CREATE FOREIGN TABLE "_admin_tool_entity"
      ("id" int,
       "user_id" int,
       "tool_definition" text,
       "status" varchar(100),
       "done" int,
       "query" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'admin_tool_entity'
    );
COMMENT on COLUMN "_admin_tool_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_admin_tool_entity"."user_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_admin_tool_entity"."tool_definition" IS $$remote type: text$$;
COMMENT on COLUMN "_admin_tool_entity"."status" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_admin_tool_entity"."done" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_admin_tool_entity"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_admin_tool_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_admin_tool_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "admin_tool_entity" as
          select "id",
            "user_id",
            "tool_definition",
            "status",
            "done",
            "query",
            "lastupdated",
            "deleted" from "_admin_tool_entity"
    ;

    DROP VIEW IF EXISTS "admin_tool__loan";

    DROP FOREIGN TABLE IF EXISTS "_admin_tool__loan";
    CREATE FOREIGN TABLE "_admin_tool__loan"
      ("admin_tool_id" int,
       "loan_id" varchar(45),
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'admin_tool__loan'
    );
COMMENT on COLUMN "_admin_tool__loan"."admin_tool_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_admin_tool__loan"."loan_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_admin_tool__loan"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "admin_tool__loan" as
          select "admin_tool_id",
            "loan_id",
            "lastupdated" from "_admin_tool__loan"
    ;

    DROP VIEW IF EXISTS "advance_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_advance_category_entity";
    CREATE FOREIGN TABLE "_advance_category_entity"
      ("id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'advance_category_entity'
    );
COMMENT on COLUMN "_advance_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_advance_category_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_advance_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_advance_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_advance_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_advance_category_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "advance_category_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_advance_category_entity"
    ;

    DROP VIEW IF EXISTS "all_cust_info_view";

    DROP FOREIGN TABLE IF EXISTS "_all_cust_info_view";
    CREATE FOREIGN TABLE "_all_cust_info_view"
      ("cust_id" int,
       "cust_custom_id" text,
       "cust_customer_type" char(100),
       "cust_status" text,
       "cust_first_name" varchar(50),
       "cust_last_name" varchar(50),
       "cust_middle_name" varchar(50),
       "cust_birth_date" bytea,
       "cust_gender" char(100),
       "cust_generation_code" char(100),
       "cust_email" text,
       "cust_ssn" bytea,
       "cust_driver_license" varchar(50),
       "cust_company_name" text,
       "cust_contact_name" text,
       "cust_customer_id_type" char(100),
       "cust_customer_id" bytea,
       "cust_credit_score_id" int,
       "cust_credit_limit" decimal(10,2),
       "cust_access_username" text,
       "cust_access_password" text,
       "cust_ofac_match" int,
       "cust_ofac_tested" int,
       "cust_last_update" text,
       "priphone_phone" char(20),
       "secphone_phone" char(20),
       "addr_address1" text,
       "addr_address2" text,
       "addr_city" text,
       "addr_state" char(20),
       "addr_zipcode" char(15),
       "addr_country" char(20),
       "addr_geo_lat" text,
       "addr_geo_lon" text,
       "addr_is_verified" int,
       "mailaddr_address1" text,
       "mailaddr_address2" text,
       "mailaddr_city" text,
       "mailaddr_state" char(20),
       "mailaddr_zipcode" char(15),
       "mailaddr_country" char(20),
       "mailaddr_geo_lat" text,
       "mailaddr_geo_lon" text,
       "mailaddr_is_verified" int,
       "emp_company_name" text,
       "emp_title" text,
       "emp_phone" char(20),
       "emp_income" decimal(10,2),
       "emp_income_frequency" char(100),
       "emp_hire_date" text,
       "emp_pay_date" text,
       "emp_pay_date_frequency" char(100),
       "empaddr_address1" text,
       "empaddr_address2" text,
       "empaddr_city" text,
       "empaddr_state" char(20),
       "empaddr_zipcode" char(15),
       "empaddr_country" char(20),
       "empaddr_geo_lat" text,
       "empaddr_geo_lon" text,
       "empaddr_is_verified" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'all_cust_info_view'
    );
COMMENT on COLUMN "_all_cust_info_view"."cust_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_custom_id" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_customer_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_status" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_first_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_last_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_middle_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_birth_date" IS $$remote type: varbinary(264)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_gender" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_generation_code" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_ssn" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_driver_license" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_company_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_contact_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_customer_id_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_customer_id" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_credit_score_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_credit_limit" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_access_username" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_access_password" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_ofac_match" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_ofac_tested" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_all_cust_info_view"."cust_last_update" IS $$remote type: datetime$$;
COMMENT on COLUMN "_all_cust_info_view"."priphone_phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."secphone_phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_address1" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_address2" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_city" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_state" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_zipcode" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_country" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_geo_lat" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_geo_lon" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."addr_is_verified" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_address1" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_address2" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_city" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_state" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_zipcode" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_country" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_geo_lat" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_geo_lon" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."mailaddr_is_verified" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_all_cust_info_view"."emp_company_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."emp_title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."emp_phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."emp_income" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_all_cust_info_view"."emp_income_frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_all_cust_info_view"."emp_hire_date" IS $$remote type: date$$;
COMMENT on COLUMN "_all_cust_info_view"."emp_pay_date" IS $$remote type: date$$;
COMMENT on COLUMN "_all_cust_info_view"."emp_pay_date_frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_address1" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_address2" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_city" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_state" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_zipcode" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_country" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_geo_lat" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_geo_lon" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_all_cust_info_view"."empaddr_is_verified" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "all_cust_info_view" as
          select "cust_id",
            "cust_custom_id",
            "cust_customer_type",
            "cust_status",
            "cust_first_name",
            "cust_last_name",
            "cust_middle_name",
            "cust_birth_date",
            "cust_gender",
            "cust_generation_code",
            "cust_email",
            "cust_ssn",
            "cust_driver_license",
            "cust_company_name",
            "cust_contact_name",
            "cust_customer_id_type",
            "cust_customer_id",
            "cust_credit_score_id",
            "cust_credit_limit",
            "cust_access_username",
            "cust_access_password",
            "cust_ofac_match",
            "cust_ofac_tested",
            nullif("cust_last_update", '0000-00-00 00:00:00')::timestamp as "cust_last_update",
            "priphone_phone",
            "secphone_phone",
            "addr_address1",
            "addr_address2",
            "addr_city",
            "addr_state",
            "addr_zipcode",
            "addr_country",
            "addr_geo_lat",
            "addr_geo_lon",
            "addr_is_verified",
            "mailaddr_address1",
            "mailaddr_address2",
            "mailaddr_city",
            "mailaddr_state",
            "mailaddr_zipcode",
            "mailaddr_country",
            "mailaddr_geo_lat",
            "mailaddr_geo_lon",
            "mailaddr_is_verified",
            "emp_company_name",
            "emp_title",
            "emp_phone",
            "emp_income",
            "emp_income_frequency",
            nullif("emp_hire_date", '0000-00-00')::date as "emp_hire_date",
            nullif("emp_pay_date", '0000-00-00')::date as "emp_pay_date",
            "emp_pay_date_frequency",
            "empaddr_address1",
            "empaddr_address2",
            "empaddr_city",
            "empaddr_state",
            "empaddr_zipcode",
            "empaddr_country",
            "empaddr_geo_lat",
            "empaddr_geo_lon",
            "empaddr_is_verified" from "_all_cust_info_view"
    ;

    DROP VIEW IF EXISTS "bank_account_entity";

    DROP FOREIGN TABLE IF EXISTS "_bank_account_entity";
    CREATE FOREIGN TABLE "_bank_account_entity"
      ("id" int,
       "account_number" bytea,
       "routing_number" char(10),
       "bank_name" text,
       "account_type" char(30),
       "check_type" char(30),
       "card_holder_name" bytea,
       "card_number" bytea,
       "card_expiration" bytea,
       "card_type" char(100),
       "address_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'bank_account_entity'
    );
COMMENT on COLUMN "_bank_account_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_bank_account_entity"."account_number" IS $$remote type: varbinary(1200)$$;
COMMENT on COLUMN "_bank_account_entity"."routing_number" IS $$remote type: char(10)$$;
COMMENT on COLUMN "_bank_account_entity"."bank_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_bank_account_entity"."account_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_bank_account_entity"."check_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_bank_account_entity"."card_holder_name" IS $$remote type: varbinary(730)$$;
COMMENT on COLUMN "_bank_account_entity"."card_number" IS $$remote type: varbinary(400)$$;
COMMENT on COLUMN "_bank_account_entity"."card_expiration" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_bank_account_entity"."card_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_bank_account_entity"."address_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_bank_account_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_bank_account_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_bank_account_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_bank_account_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "bank_account_entity" as
          select "id",
            "account_number",
            "routing_number",
            "bank_name",
            "account_type",
            "check_type",
            "card_holder_name",
            "card_number",
            "card_expiration",
            "card_type",
            "address_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_bank_account_entity"
    ;

    DROP VIEW IF EXISTS "billing_tool_entity";

    DROP FOREIGN TABLE IF EXISTS "_billing_tool_entity";
    CREATE FOREIGN TABLE "_billing_tool_entity"
      ("id" int,
       "user_id" int,
       "custom_billing_theme_id" int,
       "default_billing_theme_id" int,
       "custom_text" text,
       "header_color" varchar(50),
       "pdf_output" varchar(100),
       "query" text,
       "processed" int,
       "file_name" text,
       "url" text,
       "current_period" int,
       "custom_start_date" text,
       "custom_end_date" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'billing_tool_entity'
    );
COMMENT on COLUMN "_billing_tool_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_billing_tool_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_billing_tool_entity"."custom_billing_theme_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_billing_tool_entity"."default_billing_theme_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_billing_tool_entity"."custom_text" IS $$remote type: varchar(400)$$;
COMMENT on COLUMN "_billing_tool_entity"."header_color" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_billing_tool_entity"."pdf_output" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_billing_tool_entity"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_billing_tool_entity"."processed" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_billing_tool_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_billing_tool_entity"."url" IS $$remote type: text$$;
COMMENT on COLUMN "_billing_tool_entity"."current_period" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_billing_tool_entity"."custom_start_date" IS $$remote type: date$$;
COMMENT on COLUMN "_billing_tool_entity"."custom_end_date" IS $$remote type: date$$;
COMMENT on COLUMN "_billing_tool_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_billing_tool_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_billing_tool_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_billing_tool_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "billing_tool_entity" as
          select "id",
            "user_id",
            "custom_billing_theme_id",
            "default_billing_theme_id",
            "custom_text",
            "header_color",
            "pdf_output",
            "query",
            "processed",
            "file_name",
            "url",
            "current_period",
            nullif("custom_start_date", '0000-00-00')::date as "custom_start_date",
            nullif("custom_end_date", '0000-00-00')::date as "custom_end_date",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_billing_tool_entity"
    ;

    DROP VIEW IF EXISTS "billing_tool__loan";

    DROP FOREIGN TABLE IF EXISTS "_billing_tool__loan";
    CREATE FOREIGN TABLE "_billing_tool__loan"
      ("billing_tool_id" int,
       "loan_id" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'billing_tool__loan'
    );
COMMENT on COLUMN "_billing_tool__loan"."billing_tool_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_billing_tool__loan"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_billing_tool__loan"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "billing_tool__loan" as
          select "billing_tool_id",
            "loan_id",
            "lastupdated" from "_billing_tool__loan"
    ;

    DROP VIEW IF EXISTS "bracket_entity";

    DROP FOREIGN TABLE IF EXISTS "_bracket_entity";
    CREATE FOREIGN TABLE "_bracket_entity"
      ("id" char(100),
       "parent_id" char(100),
       "label" text,
       "description" text,
       "has_additional_value" int,
       "deleted" int,
       "active" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'bracket_entity'
    );
COMMENT on COLUMN "_bracket_entity"."id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_bracket_entity"."parent_id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_bracket_entity"."label" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_bracket_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_bracket_entity"."has_additional_value" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_bracket_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_bracket_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_bracket_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_bracket_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "bracket_entity" as
          select "id",
            "parent_id",
            "label",
            "description",
            "has_additional_value",
            "deleted",
            "active",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_bracket_entity"
    ;

    DROP VIEW IF EXISTS "bracket_item_entity";

    DROP FOREIGN TABLE IF EXISTS "_bracket_item_entity";
    CREATE FOREIGN TABLE "_bracket_item_entity"
      ("id" int,
       "bracket_id" char(100),
       "bracket_item_begin" decimal(11,2),
       "bracket_item_end" decimal(11,2),
       "additional_value" decimal(11,2),
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'bracket_item_entity'
    );
COMMENT on COLUMN "_bracket_item_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_bracket_item_entity"."bracket_id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_bracket_item_entity"."bracket_item_begin" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_bracket_item_entity"."bracket_item_end" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_bracket_item_entity"."additional_value" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_bracket_item_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_bracket_item_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_bracket_item_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "bracket_item_entity" as
          select "id",
            "bracket_id",
            "bracket_item_begin",
            "bracket_item_end",
            "additional_value",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_bracket_item_entity"
    ;

    DROP VIEW IF EXISTS "cash_drawer_entity";

    DROP FOREIGN TABLE IF EXISTS "_cash_drawer_entity";
    CREATE FOREIGN TABLE "_cash_drawer_entity"
      ("id" int,
       "title" varchar(100),
       "balance" decimal(11,2),
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'cash_drawer_entity'
    );
COMMENT on COLUMN "_cash_drawer_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_cash_drawer_entity"."balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_cash_drawer_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_cash_drawer_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_cash_drawer_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_cash_drawer_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "cash_drawer_entity" as
          select "id",
            "title",
            "balance",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_cash_drawer_entity"
    ;

    DROP VIEW IF EXISTS "cash_drawer_transaction_entity";

    DROP FOREIGN TABLE IF EXISTS "_cash_drawer_transaction_entity";
    CREATE FOREIGN TABLE "_cash_drawer_transaction_entity"
      ("id" int,
       "cash_drawer_id" int,
       "loan_id" int,
       "payment_id" int,
       "description" text,
       "category" int,
       "type" char(30),
       "amount" decimal(11,2),
       "balance" decimal(11,2),
       "date" text,
       "is_reconciled" int,
       "reconciliation_date" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'cash_drawer_transaction_entity'
    );
COMMENT on COLUMN "_cash_drawer_transaction_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."cash_drawer_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."category" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."is_reconciled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."reconciliation_date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_cash_drawer_transaction_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "cash_drawer_transaction_entity" as
          select "id",
            "cash_drawer_id",
            "loan_id",
            "payment_id",
            "description",
            "category",
            "type",
            "amount",
            "balance",
            nullif("date", '0000-00-00')::date as "date",
            "is_reconciled",
            nullif("reconciliation_date", '0000-00-00 00:00:00')::timestamp as "reconciliation_date",
            "deleted",
            "lastupdated" from "_cash_drawer_transaction_entity"
    ;

    DROP VIEW IF EXISTS "cash_drawer_tx_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_cash_drawer_tx_category_entity";
    CREATE FOREIGN TABLE "_cash_drawer_tx_category_entity"
      ("id" int,
       "title" varchar(100),
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'cash_drawer_tx_category_entity'
    );
COMMENT on COLUMN "_cash_drawer_tx_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer_tx_category_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_cash_drawer_tx_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_cash_drawer_tx_category_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_cash_drawer_tx_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_cash_drawer_tx_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "cash_drawer_tx_category_entity" as
          select "id",
            "title",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_cash_drawer_tx_category_entity"
    ;

    DROP VIEW IF EXISTS "cash_drawer__payment_method";

    DROP FOREIGN TABLE IF EXISTS "_cash_drawer__payment_method";
    CREATE FOREIGN TABLE "_cash_drawer__payment_method"
      ("cash_drawer_id" int,
       "payment_method_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'cash_drawer__payment_method'
    );
COMMENT on COLUMN "_cash_drawer__payment_method"."cash_drawer_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer__payment_method"."payment_method_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_cash_drawer__payment_method"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_cash_drawer__payment_method"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_cash_drawer__payment_method"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "cash_drawer__payment_method" as
          select "cash_drawer_id",
            "payment_method_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_cash_drawer__payment_method"
    ;

    DROP VIEW IF EXISTS "charge_entity";

    DROP FOREIGN TABLE IF EXISTS "_charge_entity";
    CREATE FOREIGN TABLE "_charge_entity"
      ("id" int,
       "display_id" int,
       "charge_application_type" varchar(100),
       "type" int,
       "amount" decimal(11,2),
       "apply_date" text,
       "info" text,
       "paid_amount" decimal(11,2),
       "paid_percent" decimal(11,2),
       "past_due_calculation" char(30),
       "interest_bearing" int,
       "edit_comment" text,
       "parent" int,
       "child" int,
       "active" int,
       "deleted" int,
       "mod_id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "related_payment_id" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'charge_entity'
    );
COMMENT on COLUMN "_charge_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_charge_entity"."display_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_charge_entity"."charge_application_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_charge_entity"."type" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_charge_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_charge_entity"."apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_charge_entity"."info" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_charge_entity"."paid_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_charge_entity"."paid_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_charge_entity"."past_due_calculation" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_charge_entity"."interest_bearing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_charge_entity"."edit_comment" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_charge_entity"."parent" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_charge_entity"."child" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_charge_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_charge_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_charge_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_charge_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_charge_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_charge_entity"."related_payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_charge_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "charge_entity" as
          select "id",
            "display_id",
            "charge_application_type",
            "type",
            "amount",
            nullif("apply_date", '0000-00-00')::date as "apply_date",
            "info",
            "paid_amount",
            "paid_percent",
            "past_due_calculation",
            "interest_bearing",
            "edit_comment",
            "parent",
            "child",
            "active",
            "deleted",
            "mod_id",
            "entity_id",
            "entity_type",
            "related_payment_id",
            "lastupdated" from "_charge_entity"
    ;

    DROP VIEW IF EXISTS "checking_account_entity";

    DROP FOREIGN TABLE IF EXISTS "_checking_account_entity";
    CREATE FOREIGN TABLE "_checking_account_entity"
      ("id" int,
       "token" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "address_id" int,
       "processor" varchar(100),
       "account_type" varchar(100))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'checking_account_entity'
    );
COMMENT on COLUMN "_checking_account_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checking_account_entity"."token" IS $$remote type: text$$;
COMMENT on COLUMN "_checking_account_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_checking_account_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_checking_account_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_checking_account_entity"."address_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checking_account_entity"."processor" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_checking_account_entity"."account_type" IS $$remote type: varchar(100)$$;
    CREATE VIEW "checking_account_entity" as
          select "id",
            "token",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "address_id",
            "processor",
            "account_type" from "_checking_account_entity"
    ;

    DROP VIEW IF EXISTS "checklist_entity";

    DROP FOREIGN TABLE IF EXISTS "_checklist_entity";
    CREATE FOREIGN TABLE "_checklist_entity"
      ("id" int,
       "entity_type" char(100),
       "title" text,
       "description" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'checklist_entity'
    );
COMMENT on COLUMN "_checklist_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checklist_entity"."entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_checklist_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_checklist_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_checklist_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_checklist_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_checklist_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_checklist_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "checklist_entity" as
          select "id",
            "entity_type",
            "title",
            "description",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_checklist_entity"
    ;

    DROP VIEW IF EXISTS "checklist_item_entity";

    DROP FOREIGN TABLE IF EXISTS "_checklist_item_entity";
    CREATE FOREIGN TABLE "_checklist_item_entity"
      ("id" int,
       "title" text,
       "description" text,
       "checklist_id" int,
       "display_order" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'checklist_item_entity'
    );
COMMENT on COLUMN "_checklist_item_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checklist_item_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_checklist_item_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_checklist_item_entity"."checklist_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checklist_item_entity"."display_order" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checklist_item_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_checklist_item_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_checklist_item_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_checklist_item_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "checklist_item_entity" as
          select "id",
            "title",
            "description",
            "checklist_id",
            "display_order",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_checklist_item_entity"
    ;

    DROP VIEW IF EXISTS "checklist_item__entity";

    DROP FOREIGN TABLE IF EXISTS "_checklist_item__entity";
    CREATE FOREIGN TABLE "_checklist_item__entity"
      ("entity_id" int,
       "entity_type" char(100),
       "checklist_id" int,
       "checklist_item_id" int,
       "checklist_item_value" int,
       "deleted" int,
       "id" int,
       "last_updated" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'checklist_item__entity'
    );
COMMENT on COLUMN "_checklist_item__entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checklist_item__entity"."entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_checklist_item__entity"."checklist_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checklist_item__entity"."checklist_item_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checklist_item__entity"."checklist_item_value" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_checklist_item__entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_checklist_item__entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_checklist_item__entity"."last_updated" IS $$remote type: timestamp$$;
    CREATE VIEW "checklist_item__entity" as
          select "entity_id",
            "entity_type",
            "checklist_id",
            "checklist_item_id",
            "checklist_item_value",
            "deleted",
            "id",
            nullif("last_updated", '0000-00-00 00:00:00')::timestamp as "last_updated" from "_checklist_item__entity"
    ;

    DROP VIEW IF EXISTS "collateral_entity";

    DROP FOREIGN TABLE IF EXISTS "_collateral_entity";
    CREATE FOREIGN TABLE "_collateral_entity"
      ("id" int,
       "loan_id" int,
       "a" varchar(100),
       "b" varchar(100),
       "c" varchar(100),
       "d" varchar(100),
       "additional" text,
       "collateral_type" varchar(100),
       "vin" char(17),
       "distance" int,
       "book_value" decimal(11,2),
       "color" varchar(50),
       "gps_status" char(40),
       "gps_code" varchar(100),
       "license_plate" varchar(100),
       "gap" text,
       "warranty" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'collateral_entity'
    );
COMMENT on COLUMN "_collateral_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collateral_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collateral_entity"."a" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collateral_entity"."b" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collateral_entity"."c" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collateral_entity"."d" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collateral_entity"."additional" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_collateral_entity"."collateral_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collateral_entity"."vin" IS $$remote type: char(17)$$;
COMMENT on COLUMN "_collateral_entity"."distance" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collateral_entity"."book_value" IS $$remote type: decimal(11,2) unsigned$$;
COMMENT on COLUMN "_collateral_entity"."color" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_collateral_entity"."gps_status" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_collateral_entity"."gps_code" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collateral_entity"."license_plate" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collateral_entity"."gap" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_collateral_entity"."warranty" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_collateral_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_collateral_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_collateral_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "collateral_entity" as
          select "id",
            "loan_id",
            "a",
            "b",
            "c",
            "d",
            "additional",
            "collateral_type",
            "vin",
            "distance",
            "book_value",
            "color",
            "gps_status",
            "gps_code",
            "license_plate",
            "gap",
            "warranty",
            "active",
            "deleted",
            "lastupdated" from "_collateral_entity"
    ;

    DROP VIEW IF EXISTS "collateral_field_entity";

    DROP FOREIGN TABLE IF EXISTS "_collateral_field_entity";
    CREATE FOREIGN TABLE "_collateral_field_entity"
      ("id" char(50),
       "collateral_type" char(50),
       "data_type" text,
       "max_length" int,
       "label" text,
       "required" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'collateral_field_entity'
    );
COMMENT on COLUMN "_collateral_field_entity"."id" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_collateral_field_entity"."collateral_type" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_collateral_field_entity"."data_type" IS $$remote type: enum('text','number','date')$$;
COMMENT on COLUMN "_collateral_field_entity"."max_length" IS $$remote type: mediumint(9)$$;
COMMENT on COLUMN "_collateral_field_entity"."label" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_collateral_field_entity"."required" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_collateral_field_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collateral_field_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collateral_field_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "collateral_field_entity" as
          select "id",
            "collateral_type",
            "data_type",
            "max_length",
            "label",
            "required",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_collateral_field_entity"
    ;

    DROP VIEW IF EXISTS "collection";

    DROP FOREIGN TABLE IF EXISTS "_collection";
    CREATE FOREIGN TABLE "_collection"
      ("id" varchar(100),
       "label" varchar(100),
       "entity" varchar(100),
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'collection'
    );
COMMENT on COLUMN "_collection"."id" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collection"."label" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collection"."entity" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collection"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_collection"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collection"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "collection" as
          select "id",
            "label",
            "entity",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_collection"
    ;

    DROP VIEW IF EXISTS "collection_item";

    DROP FOREIGN TABLE IF EXISTS "_collection_item";
    CREATE FOREIGN TABLE "_collection_item"
      ("id" varchar(100),
       "role_id" int,
       "item_label" varchar(100),
       "item_value" varchar(100),
       "collection_id" varchar(100),
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'collection_item'
    );
COMMENT on COLUMN "_collection_item"."id" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collection_item"."role_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collection_item"."item_label" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collection_item"."item_value" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collection_item"."collection_id" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collection_item"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collection_item"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "collection_item" as
          select "id",
            "role_id",
            "item_label",
            "item_value",
            "collection_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_collection_item"
    ;

    DROP VIEW IF EXISTS "collector_queue_entity";

    DROP FOREIGN TABLE IF EXISTS "_collector_queue_entity";
    CREATE FOREIGN TABLE "_collector_queue_entity"
      ("id" int,
       "user_id" int,
       "ui_state" text,
       "status" varchar(100),
       "title" text,
       "query" text,
       "set" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'collector_queue_entity'
    );
COMMENT on COLUMN "_collector_queue_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue_entity"."ui_state" IS $$remote type: text$$;
COMMENT on COLUMN "_collector_queue_entity"."status" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collector_queue_entity"."title" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_collector_queue_entity"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_collector_queue_entity"."set" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_collector_queue_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_collector_queue_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_collector_queue_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collector_queue_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "collector_queue_entity" as
          select "id",
            "user_id",
            "ui_state",
            "status",
            "title",
            "query",
            "set",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_collector_queue_entity"
    ;

    DROP VIEW IF EXISTS "collector_queue_question_entity";

    DROP FOREIGN TABLE IF EXISTS "_collector_queue_question_entity";
    CREATE FOREIGN TABLE "_collector_queue_question_entity"
      ("id" int,
       "question" text,
       "score" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'collector_queue_question_entity'
    );
COMMENT on COLUMN "_collector_queue_question_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue_question_entity"."question" IS $$remote type: text$$;
COMMENT on COLUMN "_collector_queue_question_entity"."score" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue_question_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_collector_queue_question_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_collector_queue_question_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collector_queue_question_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "collector_queue_question_entity" as
          select "id",
            "question",
            "score",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_collector_queue_question_entity"
    ;

    DROP VIEW IF EXISTS "collector_queue_work_item_entity";

    DROP FOREIGN TABLE IF EXISTS "_collector_queue_work_item_entity";
    CREATE FOREIGN TABLE "_collector_queue_work_item_entity"
      ("id" int,
       "loan_id" int,
       "collector_queue_id" int,
       "started" text,
       "completed" text,
       "owner" int,
       "security" char(3),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'collector_queue_work_item_entity'
    );
COMMENT on COLUMN "_collector_queue_work_item_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."collector_queue_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."started" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."completed" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."owner" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."security" IS $$remote type: char(3)$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_collector_queue_work_item_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "collector_queue_work_item_entity" as
          select "id",
            "loan_id",
            "collector_queue_id",
            nullif("started", '0000-00-00 00:00:00')::timestamp as "started",
            nullif("completed", '0000-00-00 00:00:00')::timestamp as "completed",
            "owner",
            "security",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_collector_queue_work_item_entity"
    ;

    DROP VIEW IF EXISTS "collector_queue__loan";

    DROP FOREIGN TABLE IF EXISTS "_collector_queue__loan";
    CREATE FOREIGN TABLE "_collector_queue__loan"
      ("collector_queue_id" int,
       "loan_id" int,
       "position" bigint,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'collector_queue__loan'
    );
COMMENT on COLUMN "_collector_queue__loan"."collector_queue_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue__loan"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_collector_queue__loan"."position" IS $$remote type: bigint(11) unsigned$$;
COMMENT on COLUMN "_collector_queue__loan"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "collector_queue__loan" as
          select "collector_queue_id",
            "loan_id",
            "position",
            "lastupdated" from "_collector_queue__loan"
    ;

    DROP VIEW IF EXISTS "comment_thread_comments";

    DROP FOREIGN TABLE IF EXISTS "_comment_thread_comments";
    CREATE FOREIGN TABLE "_comment_thread_comments"
      ("id" int,
       "topic_id" int,
       "body" text,
       "created_by" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'comment_thread_comments'
    );
COMMENT on COLUMN "_comment_thread_comments"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_comment_thread_comments"."topic_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_comment_thread_comments"."body" IS $$remote type: text$$;
COMMENT on COLUMN "_comment_thread_comments"."created_by" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_comment_thread_comments"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_comment_thread_comments"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_comment_thread_comments"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_comment_thread_comments"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "comment_thread_comments" as
          select "id",
            "topic_id",
            "body",
            "created_by",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_comment_thread_comments"
    ;

    DROP VIEW IF EXISTS "comment_thread_topics";

    DROP FOREIGN TABLE IF EXISTS "_comment_thread_topics";
    CREATE FOREIGN TABLE "_comment_thread_topics"
      ("id" int,
       "topic" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'comment_thread_topics'
    );
COMMENT on COLUMN "_comment_thread_topics"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_comment_thread_topics"."topic" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_comment_thread_topics"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_comment_thread_topics"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_comment_thread_topics"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_comment_thread_topics"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "comment_thread_topics" as
          select "id",
            "topic",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_comment_thread_topics"
    ;

    DROP VIEW IF EXISTS "computation_field_entity";

    DROP FOREIGN TABLE IF EXISTS "_computation_field_entity";
    CREATE FOREIGN TABLE "_computation_field_entity"
      ("id" int,
       "title" varchar(100),
       "round" varchar(100),
       "format" varchar(100),
       "display" varchar(100),
       "rule" text,
       "state" text,
       "entity_type" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'computation_field_entity'
    );
COMMENT on COLUMN "_computation_field_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_computation_field_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_computation_field_entity"."round" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_computation_field_entity"."format" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_computation_field_entity"."display" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_computation_field_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_computation_field_entity"."state" IS $$remote type: text$$;
COMMENT on COLUMN "_computation_field_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_computation_field_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_computation_field_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_computation_field_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_computation_field_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "computation_field_entity" as
          select "id",
            "title",
            "round",
            "format",
            "display",
            "rule",
            "state",
            "entity_type",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_computation_field_entity"
    ;

    DROP VIEW IF EXISTS "contract_signer_entity";

    DROP FOREIGN TABLE IF EXISTS "_contract_signer_entity";
    CREATE FOREIGN TABLE "_contract_signer_entity"
      ("id" int,
       "user_id" int,
       "contract_id" int,
       "signed" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "remote_addr" char(20))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'contract_signer_entity'
    );
COMMENT on COLUMN "_contract_signer_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_contract_signer_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_contract_signer_entity"."contract_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_contract_signer_entity"."signed" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_contract_signer_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_contract_signer_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_contract_signer_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_contract_signer_entity"."remote_addr" IS $$remote type: char(20)$$;
    CREATE VIEW "contract_signer_entity" as
          select "id",
            "user_id",
            "contract_id",
            "signed",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "remote_addr" from "_contract_signer_entity"
    ;

    DROP VIEW IF EXISTS "credit_breakdown_report";

    DROP FOREIGN TABLE IF EXISTS "_credit_breakdown_report";
    CREATE FOREIGN TABLE "_credit_breakdown_report"
      ("entity_id" int,
       "entity_type" varchar(100),
       "credit_id" int,
       "apply_date" text,
       "payment_date" text,
       "payment_amount" decimal(10,2),
       "payment_interest" decimal(10,2),
       "payment_principal" decimal(10,2),
       "payment_discount" decimal(10,2),
       "payment_fees" decimal(10,2),
       "payment_escrow" decimal(10,2),
       "payment_fees_breakdown" text,
       "posted_by" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'credit_breakdown_report'
    );
COMMENT on COLUMN "_credit_breakdown_report"."entity_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_credit_breakdown_report"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_credit_breakdown_report"."credit_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_credit_breakdown_report"."apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_credit_breakdown_report"."payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_credit_breakdown_report"."payment_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_credit_breakdown_report"."payment_interest" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_credit_breakdown_report"."payment_principal" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_credit_breakdown_report"."payment_discount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_credit_breakdown_report"."payment_fees" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_credit_breakdown_report"."payment_escrow" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_credit_breakdown_report"."payment_fees_breakdown" IS $$remote type: text$$;
COMMENT on COLUMN "_credit_breakdown_report"."posted_by" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_credit_breakdown_report"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "credit_breakdown_report" as
          select "entity_id",
            "entity_type",
            "credit_id",
            nullif("apply_date", '0000-00-00')::date as "apply_date",
            nullif("payment_date", '0000-00-00')::date as "payment_date",
            "payment_amount",
            "payment_interest",
            "payment_principal",
            "payment_discount",
            "payment_fees",
            "payment_escrow",
            "payment_fees_breakdown",
            "posted_by",
            "lastupdated" from "_credit_breakdown_report"
    ;

    DROP VIEW IF EXISTS "credit_card_entity";

    DROP FOREIGN TABLE IF EXISTS "_credit_card_entity";
    CREATE FOREIGN TABLE "_credit_card_entity"
      ("id" int,
       "token" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'credit_card_entity'
    );
COMMENT on COLUMN "_credit_card_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_credit_card_entity"."token" IS $$remote type: text$$;
COMMENT on COLUMN "_credit_card_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_credit_card_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_credit_card_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "credit_card_entity" as
          select "id",
            "token",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_credit_card_entity"
    ;

    DROP VIEW IF EXISTS "credit_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_credit_category_entity";
    CREATE FOREIGN TABLE "_credit_category_entity"
      ("id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'credit_category_entity'
    );
COMMENT on COLUMN "_credit_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_credit_category_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_credit_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_credit_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_credit_category_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "credit_category_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_credit_category_entity"
    ;

    DROP VIEW IF EXISTS "credit_report_history";

    DROP FOREIGN TABLE IF EXISTS "_credit_report_history";
    CREATE FOREIGN TABLE "_credit_report_history"
      ("id" int,
       "time_completed" text,
       "archive_password" text,
       "created_by" varchar(100),
       "ip" varchar(46),
       "file_name" varchar(50),
       "file_size" varchar(15),
       "file_link" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'credit_report_history'
    );
COMMENT on COLUMN "_credit_report_history"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_credit_report_history"."time_completed" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_credit_report_history"."archive_password" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_history"."created_by" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_credit_report_history"."ip" IS $$remote type: varchar(46)$$;
COMMENT on COLUMN "_credit_report_history"."file_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_history"."file_size" IS $$remote type: varchar(15)$$;
COMMENT on COLUMN "_credit_report_history"."file_link" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_history"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "credit_report_history" as
          select "id",
            nullif("time_completed", '0000-00-00 00:00:00')::timestamp as "time_completed",
            "archive_password",
            "created_by",
            "ip",
            "file_name",
            "file_size",
            "file_link",
            "deleted" from "_credit_report_history"
    ;

    DROP VIEW IF EXISTS "credit_report_queue";

    DROP FOREIGN TABLE IF EXISTS "_credit_report_queue";
    CREATE FOREIGN TABLE "_credit_report_queue"
      ("id" int,
       "status" varchar(45),
       "time_queue" text,
       "time_completed" text,
       "queued_by" varchar(100),
       "info" text,
       "file_name" varchar(50),
       "file_link" text,
       "rule" text,
       "closed_date_restriction" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'credit_report_queue'
    );
COMMENT on COLUMN "_credit_report_queue"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_credit_report_queue"."status" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_credit_report_queue"."time_queue" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_credit_report_queue"."time_completed" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_credit_report_queue"."queued_by" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_credit_report_queue"."info" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_queue"."file_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_queue"."file_link" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_queue"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_credit_report_queue"."closed_date_restriction" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_credit_report_queue"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "credit_report_queue" as
          select "id",
            "status",
            nullif("time_queue", '0000-00-00 00:00:00')::timestamp as "time_queue",
            nullif("time_completed", '0000-00-00 00:00:00')::timestamp as "time_completed",
            "queued_by",
            "info",
            "file_name",
            "file_link",
            "rule",
            "closed_date_restriction",
            "deleted" from "_credit_report_queue"
    ;

    DROP VIEW IF EXISTS "credit_report_view";

    DROP FOREIGN TABLE IF EXISTS "_credit_report_view";
    CREATE FOREIGN TABLE "_credit_report_view"
      ("loan_id" int,
       "display_id" char(25),
       "created" varchar(10),
       "setup_contract_date" varchar(10),
       "loan_amount" decimal(11,2),
       "loan_rate" decimal(11,4),
       "loan_term" decimal(11,4),
       "setup_first_payment_date" varchar(10),
       "payment" decimal(11,2),
       "today" varchar(10),
       "loan_status" text,
       "loan_substatus" text,
       "credit_status" char(30),
       "credit_bureau" char(30),
       "ecoa_code" char(30),
       "co_ecoa_code" char(30),
       "settings_closed_date" varchar(10),
       "payment_frequency" char(30),
       "principal_balance" decimal(11,2),
       "first_delinquency_date" text,
       "amount_due" decimal(11,2),
       "amount_past_due_30" decimal(11,2),
       "last_payment_date" varchar(10),
       "last_payment_amount" varchar(13),
       "days_past_due" bigint,
       "pricust_first_name" varchar(50),
       "pricust_middle_name" varchar(50),
       "pricust_last_name" varchar(50),
       "pricust_email" text,
       "pripriphone_phone" varchar(20),
       "secpriphone_phone" varchar(20),
       "pricustaddr_address1" text,
       "pricustaddr_city" text,
       "pricustaddr_state" varchar(20),
       "pricustaddr_zipcode" varchar(15),
       "pricust_ssn" bytea,
       "pricust_birth_date" bytea,
       "pricust_gender" varchar(100),
       "pricust_generation_code" varchar(100),
       "pricustemp_company_name" text,
       "priempaddr_address1" text,
       "priempaddr_city" text,
       "priempaddr_state" varchar(20),
       "priempaddr_zipcode" varchar(15),
       "pricustemp_phone" varchar(20),
       "secust_first_name" varchar(50),
       "secust_middle_name" varchar(50),
       "secust_last_name" varchar(50),
       "secust_email" text,
       "prisecphone_phone" varchar(20),
       "secsecphone_phone" varchar(20),
       "seccustaddr_address1" text,
       "seccustaddr_city" text,
       "seccustaddr_state" varchar(20),
       "seccustaddr_zipcode" varchar(15),
       "secust_ssn" bytea,
       "secust_birth_date" bytea,
       "secust_gender" varchar(100),
       "secust_generation_code" varchar(50),
       "net_charge_off" decimal(3,2),
       "credit_limit" varchar(13))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'credit_report_view'
    );
COMMENT on COLUMN "_credit_report_view"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_credit_report_view"."display_id" IS $$remote type: char(25)$$;
COMMENT on COLUMN "_credit_report_view"."created" IS $$remote type: varchar(10)$$;
COMMENT on COLUMN "_credit_report_view"."setup_contract_date" IS $$remote type: varchar(10)$$;
COMMENT on COLUMN "_credit_report_view"."loan_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_credit_report_view"."loan_rate" IS $$remote type: decimal(11,4)$$;
COMMENT on COLUMN "_credit_report_view"."loan_term" IS $$remote type: decimal(11,4)$$;
COMMENT on COLUMN "_credit_report_view"."setup_first_payment_date" IS $$remote type: varchar(10)$$;
COMMENT on COLUMN "_credit_report_view"."payment" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_credit_report_view"."today" IS $$remote type: varchar(10)$$;
COMMENT on COLUMN "_credit_report_view"."loan_status" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."loan_substatus" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_credit_report_view"."credit_bureau" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_credit_report_view"."ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_credit_report_view"."co_ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_credit_report_view"."settings_closed_date" IS $$remote type: varchar(10)$$;
COMMENT on COLUMN "_credit_report_view"."payment_frequency" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_credit_report_view"."principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_credit_report_view"."first_delinquency_date" IS $$remote type: char(0)$$;
COMMENT on COLUMN "_credit_report_view"."amount_due" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_credit_report_view"."amount_past_due_30" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_credit_report_view"."last_payment_date" IS $$remote type: varchar(10)$$;
COMMENT on COLUMN "_credit_report_view"."last_payment_amount" IS $$remote type: varchar(13)$$;
COMMENT on COLUMN "_credit_report_view"."days_past_due" IS $$remote type: bigint(11)$$;
COMMENT on COLUMN "_credit_report_view"."pricust_first_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_view"."pricust_middle_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_view"."pricust_last_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_view"."pricust_email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."pripriphone_phone" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_credit_report_view"."secpriphone_phone" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_credit_report_view"."pricustaddr_address1" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."pricustaddr_city" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."pricustaddr_state" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_credit_report_view"."pricustaddr_zipcode" IS $$remote type: varchar(15)$$;
COMMENT on COLUMN "_credit_report_view"."pricust_ssn" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_credit_report_view"."pricust_birth_date" IS $$remote type: varbinary(264)$$;
COMMENT on COLUMN "_credit_report_view"."pricust_gender" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_credit_report_view"."pricust_generation_code" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_credit_report_view"."pricustemp_company_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."priempaddr_address1" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."priempaddr_city" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."priempaddr_state" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_credit_report_view"."priempaddr_zipcode" IS $$remote type: varchar(15)$$;
COMMENT on COLUMN "_credit_report_view"."pricustemp_phone" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_credit_report_view"."secust_first_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_view"."secust_middle_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_view"."secust_last_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_view"."secust_email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."prisecphone_phone" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_credit_report_view"."secsecphone_phone" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_credit_report_view"."seccustaddr_address1" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."seccustaddr_city" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_credit_report_view"."seccustaddr_state" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_credit_report_view"."seccustaddr_zipcode" IS $$remote type: varchar(15)$$;
COMMENT on COLUMN "_credit_report_view"."secust_ssn" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_credit_report_view"."secust_birth_date" IS $$remote type: varbinary(264)$$;
COMMENT on COLUMN "_credit_report_view"."secust_gender" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_credit_report_view"."secust_generation_code" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_credit_report_view"."net_charge_off" IS $$remote type: decimal(3,2)$$;
COMMENT on COLUMN "_credit_report_view"."credit_limit" IS $$remote type: varchar(13)$$;
    CREATE VIEW "credit_report_view" as
          select "loan_id",
            "display_id",
            "created",
            "setup_contract_date",
            "loan_amount",
            "loan_rate",
            "loan_term",
            "setup_first_payment_date",
            "payment",
            "today",
            "loan_status",
            "loan_substatus",
            "credit_status",
            "credit_bureau",
            "ecoa_code",
            "co_ecoa_code",
            "settings_closed_date",
            "payment_frequency",
            "principal_balance",
            "first_delinquency_date",
            "amount_due",
            "amount_past_due_30",
            "last_payment_date",
            "last_payment_amount",
            "days_past_due",
            "pricust_first_name",
            "pricust_middle_name",
            "pricust_last_name",
            "pricust_email",
            "pripriphone_phone",
            "secpriphone_phone",
            "pricustaddr_address1",
            "pricustaddr_city",
            "pricustaddr_state",
            "pricustaddr_zipcode",
            "pricust_ssn",
            "pricust_birth_date",
            "pricust_gender",
            "pricust_generation_code",
            "pricustemp_company_name",
            "priempaddr_address1",
            "priempaddr_city",
            "priempaddr_state",
            "priempaddr_zipcode",
            "pricustemp_phone",
            "secust_first_name",
            "secust_middle_name",
            "secust_last_name",
            "secust_email",
            "prisecphone_phone",
            "secsecphone_phone",
            "seccustaddr_address1",
            "seccustaddr_city",
            "seccustaddr_state",
            "seccustaddr_zipcode",
            "secust_ssn",
            "secust_birth_date",
            "secust_gender",
            "secust_generation_code",
            "net_charge_off",
            "credit_limit" from "_credit_report_view"
    ;

    DROP VIEW IF EXISTS "curtailment_template_entity";

    DROP FOREIGN TABLE IF EXISTS "_curtailment_template_entity";
    CREATE FOREIGN TABLE "_curtailment_template_entity"
      ("id" int,
       "title" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'curtailment_template_entity'
    );
COMMENT on COLUMN "_curtailment_template_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_curtailment_template_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_curtailment_template_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_curtailment_template_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "curtailment_template_entity" as
          select "id",
            "title",
            "deleted",
            "lastupdated" from "_curtailment_template_entity"
    ;

    DROP VIEW IF EXISTS "curtailment_template_lines_entity";

    DROP FOREIGN TABLE IF EXISTS "_curtailment_template_lines_entity";
    CREATE FOREIGN TABLE "_curtailment_template_lines_entity"
      ("id" int,
       "template_id" int,
       "days" int,
       "amount" decimal(11,2),
       "percent" decimal(11,7),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'curtailment_template_lines_entity'
    );
COMMENT on COLUMN "_curtailment_template_lines_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_curtailment_template_lines_entity"."template_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_curtailment_template_lines_entity"."days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_curtailment_template_lines_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_curtailment_template_lines_entity"."percent" IS $$remote type: decimal(11,7)$$;
COMMENT on COLUMN "_curtailment_template_lines_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_curtailment_template_lines_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "curtailment_template_lines_entity" as
          select "id",
            "template_id",
            "days",
            "amount",
            "percent",
            "deleted",
            "lastupdated" from "_curtailment_template_lines_entity"
    ;

    DROP VIEW IF EXISTS "customer_credit_score_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_credit_score_entity";
    CREATE FOREIGN TABLE "_customer_credit_score_entity"
      ("id" int,
       "customer_id" int,
       "equifax_score" int,
       "transunion_score" int,
       "experian_score" int,
       "created" text,
       "lastupdated" timestamptz,
       "modified" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_credit_score_entity'
    );
COMMENT on COLUMN "_customer_credit_score_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_credit_score_entity"."customer_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_credit_score_entity"."equifax_score" IS $$remote type: int(4)$$;
COMMENT on COLUMN "_customer_credit_score_entity"."transunion_score" IS $$remote type: int(4)$$;
COMMENT on COLUMN "_customer_credit_score_entity"."experian_score" IS $$remote type: int(4)$$;
COMMENT on COLUMN "_customer_credit_score_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_credit_score_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_credit_score_entity"."modified" IS $$remote type: datetime$$;
COMMENT on COLUMN "_customer_credit_score_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "customer_credit_score_entity" as
          select "id",
            "customer_id",
            "equifax_score",
            "transunion_score",
            "experian_score",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            nullif("modified", '0000-00-00 00:00:00')::timestamp as "modified",
            "deleted" from "_customer_credit_score_entity"
    ;

    DROP VIEW IF EXISTS "customer_document_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_document_entity";
    CREATE FOREIGN TABLE "_customer_document_entity"
      ("id" int,
       "customer_id" int,
       "section_id" int,
       "user_id" int,
       "user_name" text,
       "remote_addr" char(20),
       "file_name" text,
       "description" text,
       "size" int,
       "file_attachment_id" int,
       "archived" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_document_entity'
    );
COMMENT on COLUMN "_customer_document_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_document_entity"."customer_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_document_entity"."section_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_document_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_document_entity"."user_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_document_entity"."remote_addr" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_customer_document_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_document_entity"."description" IS $$remote type: text$$;
COMMENT on COLUMN "_customer_document_entity"."size" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_document_entity"."file_attachment_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_document_entity"."archived" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_document_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_document_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_document_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_document_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "customer_document_entity" as
          select "id",
            "customer_id",
            "section_id",
            "user_id",
            "user_name",
            "remote_addr",
            "file_name",
            "description",
            "size",
            "file_attachment_id",
            "archived",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_customer_document_entity"
    ;

    DROP VIEW IF EXISTS "customer_employer_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_employer_entity";
    CREATE FOREIGN TABLE "_customer_employer_entity"
      ("id" int,
       "company_name" text,
       "title" text,
       "phone" char(20),
       "income" decimal(10,2),
       "income_frequency" char(100),
       "hire_date" text,
       "pay_date" text,
       "pay_date_frequency" char(100),
       "address_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_employer_entity'
    );
COMMENT on COLUMN "_customer_employer_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_employer_entity"."company_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_employer_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_employer_entity"."phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_customer_employer_entity"."income" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_customer_employer_entity"."income_frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_employer_entity"."hire_date" IS $$remote type: date$$;
COMMENT on COLUMN "_customer_employer_entity"."pay_date" IS $$remote type: date$$;
COMMENT on COLUMN "_customer_employer_entity"."pay_date_frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_employer_entity"."address_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_employer_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_employer_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_employer_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_employer_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "customer_employer_entity" as
          select "id",
            "company_name",
            "title",
            "phone",
            "income",
            "income_frequency",
            nullif("hire_date", '0000-00-00')::date as "hire_date",
            nullif("pay_date", '0000-00-00')::date as "pay_date",
            "pay_date_frequency",
            "address_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_customer_employer_entity"
    ;

    DROP VIEW IF EXISTS "customer_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_entity";
    CREATE FOREIGN TABLE "_customer_entity"
      ("id" int,
       "custom_id" text,
       "mc_id" int,
       "customer_type" char(100),
       "status" text,
       "first_name" varchar(50),
       "last_name" varchar(50),
       "middle_name" varchar(50),
       "birth_date" bytea,
       "gender" char(100),
       "generation_code" char(100),
       "email" text,
       "ssn" bytea,
       "driver_license" varchar(50),
       "company_name" text,
       "contact_name" text,
       "customer_id_type" char(100),
       "customer_id" bytea,
       "credit_score_id" int,
       "credit_limit" decimal(10,2),
       "access_username" text,
       "access_password" text,
       "primary_address_id" int,
       "mail_address_id" int,
       "employer_id" int,
       "has_avatar" int,
       "ofac_match" int,
       "ofac_tested" int,
       "last_update" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_entity'
    );
COMMENT on COLUMN "_customer_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_entity"."custom_id" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_entity"."mc_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_entity"."customer_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_entity"."status" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_entity"."first_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_customer_entity"."last_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_customer_entity"."middle_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_customer_entity"."birth_date" IS $$remote type: varbinary(264)$$;
COMMENT on COLUMN "_customer_entity"."gender" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_entity"."generation_code" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_entity"."email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_entity"."ssn" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_customer_entity"."driver_license" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_customer_entity"."company_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_entity"."contact_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_entity"."customer_id_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_entity"."customer_id" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_customer_entity"."credit_score_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_entity"."credit_limit" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_customer_entity"."access_username" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_entity"."access_password" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_entity"."primary_address_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_entity"."mail_address_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_entity"."employer_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_entity"."has_avatar" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_entity"."ofac_match" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_entity"."ofac_tested" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_entity"."last_update" IS $$remote type: datetime$$;
COMMENT on COLUMN "_customer_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "customer_entity" as
          select "id",
            "custom_id",
            "mc_id",
            "customer_type",
            "status",
            "first_name",
            "last_name",
            "middle_name",
            "birth_date",
            "gender",
            "generation_code",
            "email",
            "ssn",
            "driver_license",
            "company_name",
            "contact_name",
            "customer_id_type",
            "customer_id",
            "credit_score_id",
            "credit_limit",
            "access_username",
            "access_password",
            "primary_address_id",
            "mail_address_id",
            "employer_id",
            "has_avatar",
            "ofac_match",
            "ofac_tested",
            nullif("last_update", '0000-00-00 00:00:00')::timestamp as "last_update",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_customer_entity"
    ;

    DROP VIEW IF EXISTS "customer_login_attempts";

    DROP FOREIGN TABLE IF EXISTS "_customer_login_attempts";
    CREATE FOREIGN TABLE "_customer_login_attempts"
      ("id" int,
       "customer_id" int,
       "attempt_time" text,
       "ip_address" text,
       "client_info" text,
       "was_successful" int,
       "username_used" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_login_attempts'
    );
COMMENT on COLUMN "_customer_login_attempts"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_login_attempts"."customer_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_login_attempts"."attempt_time" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_login_attempts"."ip_address" IS $$remote type: text$$;
COMMENT on COLUMN "_customer_login_attempts"."client_info" IS $$remote type: text$$;
COMMENT on COLUMN "_customer_login_attempts"."was_successful" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_login_attempts"."username_used" IS $$remote type: text$$;
    CREATE VIEW "customer_login_attempts" as
          select "id",
            "customer_id",
            nullif("attempt_time", '0000-00-00 00:00:00')::timestamp as "attempt_time",
            "ip_address",
            "client_info",
            "was_successful",
            "username_used" from "_customer_login_attempts"
    ;

    DROP VIEW IF EXISTS "customer_payment_method_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_payment_method_entity";
    CREATE FOREIGN TABLE "_customer_payment_method_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "title" text,
       "type" char(100),
       "bank_account_id" int,
       "is_primary" int,
       "is_secondary" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_payment_method_entity'
    );
COMMENT on COLUMN "_customer_payment_method_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_payment_method_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_payment_method_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_customer_payment_method_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_payment_method_entity"."type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_payment_method_entity"."bank_account_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_payment_method_entity"."is_primary" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_payment_method_entity"."is_secondary" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_payment_method_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_payment_method_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_payment_method_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_payment_method_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "customer_payment_method_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "title",
            "type",
            "bank_account_id",
            "is_primary",
            "is_secondary",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_customer_payment_method_entity"
    ;

    DROP VIEW IF EXISTS "customer_phone_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_phone_entity";
    CREATE FOREIGN TABLE "_customer_phone_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" char(100),
       "phone" char(20),
       "type" char(100),
       "is_primary" int,
       "is_secondary" int,
       "sbt_act_verify_pending" int,
       "sbt_act_verify_pin" char(20),
       "sbt_act_verified" int,
       "sbt_mkt_verify_pending" int,
       "sbt_mkt_verify_pin" char(20),
       "sbt_mkt_verified" int,
       "carrier_name" text,
       "carrier_verified" int,
       "landline" int,
       "dnd_enabled" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_phone_entity'
    );
COMMENT on COLUMN "_customer_phone_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_phone_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_customer_phone_entity"."entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_phone_entity"."phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_customer_phone_entity"."type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_phone_entity"."is_primary" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_phone_entity"."is_secondary" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_phone_entity"."sbt_act_verify_pending" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."sbt_act_verify_pin" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_customer_phone_entity"."sbt_act_verified" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."sbt_mkt_verify_pending" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."sbt_mkt_verify_pin" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_customer_phone_entity"."sbt_mkt_verified" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."carrier_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_phone_entity"."carrier_verified" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."landline" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."dnd_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_phone_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_phone_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "customer_phone_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "phone",
            "type",
            "is_primary",
            "is_secondary",
            "sbt_act_verify_pending",
            "sbt_act_verify_pin",
            "sbt_act_verified",
            "sbt_mkt_verify_pending",
            "sbt_mkt_verify_pin",
            "sbt_mkt_verified",
            "carrier_name",
            "carrier_verified",
            "landline",
            "dnd_enabled",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_customer_phone_entity"
    ;

    DROP VIEW IF EXISTS "customer_reference_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_reference_entity";
    CREATE FOREIGN TABLE "_customer_reference_entity"
      ("id" int,
       "name" text,
       "relation" char(100),
       "primary_phone" char(20),
       "secondary_phone" char(20),
       "address_id" int,
       "customer_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_reference_entity'
    );
COMMENT on COLUMN "_customer_reference_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_reference_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_reference_entity"."relation" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_customer_reference_entity"."primary_phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_customer_reference_entity"."secondary_phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_customer_reference_entity"."address_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_reference_entity"."customer_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_reference_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_reference_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_reference_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_reference_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "customer_reference_entity" as
          select "id",
            "name",
            "relation",
            "primary_phone",
            "secondary_phone",
            "address_id",
            "customer_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_customer_reference_entity"
    ;

    DROP VIEW IF EXISTS "customer_social_profile_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_social_profile_entity";
    CREATE FOREIGN TABLE "_customer_social_profile_entity"
      ("id" int,
       "customer_id" int,
       "profile_type" text,
       "profile_id" text,
       "profile_url" text,
       "profile_username" text,
       "profile_photo_url" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_social_profile_entity'
    );
COMMENT on COLUMN "_customer_social_profile_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_social_profile_entity"."customer_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_social_profile_entity"."profile_type" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_social_profile_entity"."profile_id" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_social_profile_entity"."profile_url" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_social_profile_entity"."profile_username" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_social_profile_entity"."profile_photo_url" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_social_profile_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_customer_social_profile_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "customer_social_profile_entity" as
          select "id",
            "customer_id",
            "profile_type",
            "profile_id",
            "profile_url",
            "profile_username",
            "profile_photo_url",
            "deleted",
            "lastupdated" from "_customer_social_profile_entity"
    ;

    DROP VIEW IF EXISTS "customer_status_entity";

    DROP FOREIGN TABLE IF EXISTS "_customer_status_entity";
    CREATE FOREIGN TABLE "_customer_status_entity"
      ("id" int,
       "title" text,
       "slug" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'customer_status_entity'
    );
COMMENT on COLUMN "_customer_status_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_customer_status_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_status_entity"."slug" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_customer_status_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_status_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_customer_status_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_customer_status_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "customer_status_entity" as
          select "id",
            "title",
            "slug",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_customer_status_entity"
    ;

    DROP VIEW IF EXISTS "custom_billing_template_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_billing_template_entity";
    CREATE FOREIGN TABLE "_custom_billing_template_entity"
      ("id" int,
       "name" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_billing_template_entity'
    );
COMMENT on COLUMN "_custom_billing_template_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_billing_template_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_custom_billing_template_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_billing_template_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_custom_billing_template_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_billing_template_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_billing_template_entity" as
          select "id",
            "name",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_custom_billing_template_entity"
    ;

    DROP VIEW IF EXISTS "custom_billing_theme_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_billing_theme_entity";
    CREATE FOREIGN TABLE "_custom_billing_theme_entity"
      ("id" int,
       "name" varchar(100),
       "source" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "custom_billing_template_id" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_billing_theme_entity'
    );
COMMENT on COLUMN "_custom_billing_theme_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_billing_theme_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_custom_billing_theme_entity"."source" IS $$remote type: text$$;
COMMENT on COLUMN "_custom_billing_theme_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_billing_theme_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_custom_billing_theme_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_billing_theme_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_billing_theme_entity"."custom_billing_template_id" IS $$remote type: int(11) unsigned$$;
    CREATE VIEW "custom_billing_theme_entity" as
          select "id",
            "name",
            "source",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "custom_billing_template_id" from "_custom_billing_theme_entity"
    ;

    DROP VIEW IF EXISTS "custom_boarding_process_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_boarding_process_entity";
    CREATE FOREIGN TABLE "_custom_boarding_process_entity"
      ("id" int,
       "name" text,
       "loan_class" char(100),
       "loan_calculation_type" char(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_boarding_process_entity'
    );
COMMENT on COLUMN "_custom_boarding_process_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_custom_boarding_process_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_boarding_process_entity"."loan_class" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_boarding_process_entity"."loan_calculation_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_boarding_process_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_boarding_process_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_custom_boarding_process_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_boarding_process_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_boarding_process_entity" as
          select "id",
            "name",
            "loan_class",
            "loan_calculation_type",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_custom_boarding_process_entity"
    ;

    DROP VIEW IF EXISTS "custom_boarding_process_step_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_boarding_process_step_entity";
    CREATE FOREIGN TABLE "_custom_boarding_process_step_entity"
      ("id" int,
       "custom_boarding_process_id" int,
       "step_id" char(100),
       "label" text,
       "position" int,
       "can_skip" int,
       "step_constraints" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_boarding_process_step_entity'
    );
COMMENT on COLUMN "_custom_boarding_process_step_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."custom_boarding_process_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."step_id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."label" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."position" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."can_skip" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."step_constraints" IS $$remote type: text$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_boarding_process_step_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_boarding_process_step_entity" as
          select "id",
            "custom_boarding_process_id",
            "step_id",
            "label",
            "position",
            "can_skip",
            "step_constraints",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_custom_boarding_process_step_entity"
    ;

    DROP VIEW IF EXISTS "custom_charge_type_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_charge_type_entity";
    CREATE FOREIGN TABLE "_custom_charge_type_entity"
      ("id" int,
       "static" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_charge_type_entity'
    );
COMMENT on COLUMN "_custom_charge_type_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_charge_type_entity"."static" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_charge_type_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_charge_type_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_custom_charge_type_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_custom_charge_type_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_charge_type_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_charge_type_entity" as
          select "id",
            "static",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_custom_charge_type_entity"
    ;

    DROP VIEW IF EXISTS "custom_field";

    DROP FOREIGN TABLE IF EXISTS "_custom_field";
    CREATE FOREIGN TABLE "_custom_field"
      ("id" int,
       "name" varchar(50),
       "description" text,
       "type" char(100),
       "auto_calculate" char(100),
       "auto_calculate_operation_type" char(100),
       "credit_report_enabled" int,
       "required" int,
       "active" int,
       "max_length" int,
       "searchable" int,
       "report_enabled" int,
       "archive_enable" int,
       "summary_enabled" int,
       "default_value" text,
       "entity_type" char(100),
       "section_identifier" char(50),
       "display_order" int,
       "select_options" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_field'
    );
COMMENT on COLUMN "_custom_field"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_custom_field"."name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_custom_field"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_field"."type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_field"."auto_calculate" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_field"."auto_calculate_operation_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_field"."credit_report_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_field"."required" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_field"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_field"."max_length" IS $$remote type: smallint(6)$$;
COMMENT on COLUMN "_custom_field"."searchable" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_field"."report_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_field"."archive_enable" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_field"."summary_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_field"."default_value" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_field"."entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_field"."section_identifier" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_custom_field"."display_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_custom_field"."select_options" IS $$remote type: text$$;
COMMENT on COLUMN "_custom_field"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_custom_field"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_field" as
          select "id",
            "name",
            "description",
            "type",
            "auto_calculate",
            "auto_calculate_operation_type",
            "credit_report_enabled",
            "required",
            "active",
            "max_length",
            "searchable",
            "report_enabled",
            "archive_enable",
            "summary_enabled",
            "default_value",
            "entity_type",
            "section_identifier",
            "display_order",
            "select_options",
            "deleted",
            "lastupdated" from "_custom_field"
    ;

    DROP VIEW IF EXISTS "custom_field__entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_field__entity";
    CREATE FOREIGN TABLE "_custom_field__entity"
      ("id" int,
       "entity_id" int,
       "entity_type" char(100),
       "custom_field_id" int,
       "custom_field_value" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_field__entity'
    );
COMMENT on COLUMN "_custom_field__entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_custom_field__entity"."entity_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_custom_field__entity"."entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_field__entity"."custom_field_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_custom_field__entity"."custom_field_value" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_field__entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_custom_field__entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_field__entity" as
          select "id",
            "entity_id",
            "entity_type",
            "custom_field_id",
            "custom_field_value",
            "deleted",
            "lastupdated" from "_custom_field__entity"
    ;

    DROP VIEW IF EXISTS "custom_form_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_form_entity";
    CREATE FOREIGN TABLE "_custom_form_entity"
      ("id" int,
       "entity_type" char(100),
       "section_id" int,
       "name" varchar(100),
       "page_size" varchar(100),
       "draft" text,
       "docusign" int,
       "priority" bigint,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_form_entity'
    );
COMMENT on COLUMN "_custom_form_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_form_entity"."entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_custom_form_entity"."section_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_form_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_custom_form_entity"."page_size" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_custom_form_entity"."draft" IS $$remote type: longtext$$;
COMMENT on COLUMN "_custom_form_entity"."docusign" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_custom_form_entity"."priority" IS $$remote type: bigint(20) unsigned$$;
COMMENT on COLUMN "_custom_form_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_form_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_form_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_form_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_form_entity" as
          select "id",
            "entity_type",
            "section_id",
            "name",
            "page_size",
            "draft",
            "docusign",
            "priority",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_custom_form_entity"
    ;

    DROP VIEW IF EXISTS "custom_form_section_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_form_section_entity";
    CREATE FOREIGN TABLE "_custom_form_section_entity"
      ("id" int,
       "title" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "entity_type" char(100))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_form_section_entity'
    );
COMMENT on COLUMN "_custom_form_section_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_form_section_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_custom_form_section_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_form_section_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_form_section_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_form_section_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_form_section_entity"."entity_type" IS $$remote type: char(100)$$;
    CREATE VIEW "custom_form_section_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "entity_type" from "_custom_form_section_entity"
    ;

    DROP VIEW IF EXISTS "custom_form_tool_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_form_tool_entity";
    CREATE FOREIGN TABLE "_custom_form_tool_entity"
      ("id" int,
       "user_id" int,
       "custom_form_id" int,
       "pdf_output" varchar(100),
       "query" text,
       "done" int,
       "file_name" text,
       "url" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_form_tool_entity'
    );
COMMENT on COLUMN "_custom_form_tool_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_form_tool_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_form_tool_entity"."custom_form_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_form_tool_entity"."pdf_output" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_custom_form_tool_entity"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_custom_form_tool_entity"."done" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_form_tool_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_form_tool_entity"."url" IS $$remote type: text$$;
COMMENT on COLUMN "_custom_form_tool_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_form_tool_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_form_tool_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_form_tool_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_form_tool_entity" as
          select "id",
            "user_id",
            "custom_form_id",
            "pdf_output",
            "query",
            "done",
            "file_name",
            "url",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_custom_form_tool_entity"
    ;

    DROP VIEW IF EXISTS "custom_form_tool__loan";

    DROP FOREIGN TABLE IF EXISTS "_custom_form_tool__loan";
    CREATE FOREIGN TABLE "_custom_form_tool__loan"
      ("loan_id" int,
       "custom_form_tool_id" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_form_tool__loan'
    );
COMMENT on COLUMN "_custom_form_tool__loan"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_form_tool__loan"."custom_form_tool_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_form_tool__loan"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_form_tool__loan" as
          select "loan_id",
            "custom_form_tool_id",
            "lastupdated" from "_custom_form_tool__loan"
    ;

    DROP VIEW IF EXISTS "custom_payment_method_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_payment_method_entity";
    CREATE FOREIGN TABLE "_custom_payment_method_entity"
      ("id" int,
       "static" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_payment_method_entity'
    );
COMMENT on COLUMN "_custom_payment_method_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_payment_method_entity"."static" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_payment_method_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_payment_method_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_custom_payment_method_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_custom_payment_method_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_payment_method_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "custom_payment_method_entity" as
          select "id",
            "static",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_custom_payment_method_entity"
    ;

    DROP VIEW IF EXISTS "custom_payment_type_entity";

    DROP FOREIGN TABLE IF EXISTS "_custom_payment_type_entity";
    CREATE FOREIGN TABLE "_custom_payment_type_entity"
      ("id" int,
       "static" int,
       "title" text,
       "application" text,
       "escrow_application" text,
       "description" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'custom_payment_type_entity'
    );
COMMENT on COLUMN "_custom_payment_type_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_custom_payment_type_entity"."static" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_custom_payment_type_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_custom_payment_type_entity"."application" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_custom_payment_type_entity"."escrow_application" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_custom_payment_type_entity"."description" IS $$remote type: text$$;
COMMENT on COLUMN "_custom_payment_type_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_payment_type_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_custom_payment_type_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_custom_payment_type_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "custom_payment_type_entity" as
          select "id",
            "static",
            "title",
            "application",
            "escrow_application",
            "description",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_custom_payment_type_entity"
    ;

    DROP VIEW IF EXISTS "data_dump_entity";

    DROP FOREIGN TABLE IF EXISTS "_data_dump_entity";
    CREATE FOREIGN TABLE "_data_dump_entity"
      ("id" int,
       "entity_type" char(100),
       "file_name" text,
       "url" text,
       "status" char(100),
       "created" text,
       "lastupdated" timestamptz,
       "create_user" text,
       "info" varchar(100),
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'data_dump_entity'
    );
COMMENT on COLUMN "_data_dump_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_data_dump_entity"."entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_data_dump_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_data_dump_entity"."url" IS $$remote type: text$$;
COMMENT on COLUMN "_data_dump_entity"."status" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_data_dump_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_data_dump_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_data_dump_entity"."create_user" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_data_dump_entity"."info" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_data_dump_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "data_dump_entity" as
          select "id",
            "entity_type",
            "file_name",
            "url",
            "status",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "create_user",
            "info",
            "deleted" from "_data_dump_entity"
    ;

    DROP VIEW IF EXISTS "data_import_entity";

    DROP FOREIGN TABLE IF EXISTS "_data_import_entity";
    CREATE FOREIGN TABLE "_data_import_entity"
      ("id" int,
       "entity" text,
       "status" varchar(35),
       "description" varchar(100),
       "file_name" text,
       "reverse_file_name" varchar(100),
       "stats_new" int,
       "stats_upd" int,
       "stats_del" int,
       "stats_err" int,
       "by_pass_warnings" int,
       "skip_calc" int,
       "errors" text,
       "modified" text,
       "created" text,
       "created_by" int,
       "deleted" int,
       "charged" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'data_import_entity'
    );
COMMENT on COLUMN "_data_import_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_data_import_entity"."entity" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_data_import_entity"."status" IS $$remote type: varchar(35)$$;
COMMENT on COLUMN "_data_import_entity"."description" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_data_import_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_data_import_entity"."reverse_file_name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_data_import_entity"."stats_new" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_data_import_entity"."stats_upd" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_data_import_entity"."stats_del" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_data_import_entity"."stats_err" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_data_import_entity"."by_pass_warnings" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_data_import_entity"."skip_calc" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_data_import_entity"."errors" IS $$remote type: mediumtext$$;
COMMENT on COLUMN "_data_import_entity"."modified" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_data_import_entity"."created" IS $$remote type: datetime$$;
COMMENT on COLUMN "_data_import_entity"."created_by" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_data_import_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_data_import_entity"."charged" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "data_import_entity" as
          select "id",
            "entity",
            "status",
            "description",
            "file_name",
            "reverse_file_name",
            "stats_new",
            "stats_upd",
            "stats_del",
            "stats_err",
            "by_pass_warnings",
            "skip_calc",
            "errors",
            nullif("modified", '0000-00-00 00:00:00')::timestamp as "modified",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "created_by",
            "deleted",
            "charged" from "_data_import_entity"
    ;

    DROP VIEW IF EXISTS "defaults_autopay";

    DROP FOREIGN TABLE IF EXISTS "_defaults_autopay";
    CREATE FOREIGN TABLE "_defaults_autopay"
      ("id" char(100),
       "autopay_type" char(100),
       "autopay_time" int,
       "application_date_diff" int,
       "application_date_diff_in_bank_days" int,
       "post_payment_update_apply_date" int,
       "process_current" int,
       "retry_days" int,
       "charge_service_fee" int,
       "payment_type_id" int,
       "payment_method_auth_type" char(64),
       "pay_extra_towards_tx" char(64),
       "pay_extra_towards_periods" char(64),
       "payoff_adjustment" int,
       "process_zero_or_negative_balance" int,
       "recurring_date_option" char(64),
       "scheduling_type" char(64),
       "deleted" int,
       "last_modified" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'defaults_autopay'
    );
COMMENT on COLUMN "_defaults_autopay"."id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_defaults_autopay"."autopay_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_defaults_autopay"."autopay_time" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_defaults_autopay"."application_date_diff" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_defaults_autopay"."application_date_diff_in_bank_days" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_autopay"."post_payment_update_apply_date" IS $$remote type: tinyint(3) unsigned$$;
COMMENT on COLUMN "_defaults_autopay"."process_current" IS $$remote type: tinyint(3) unsigned$$;
COMMENT on COLUMN "_defaults_autopay"."retry_days" IS $$remote type: tinyint(3) unsigned$$;
COMMENT on COLUMN "_defaults_autopay"."charge_service_fee" IS $$remote type: tinyint(3) unsigned$$;
COMMENT on COLUMN "_defaults_autopay"."payment_type_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_autopay"."payment_method_auth_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_defaults_autopay"."pay_extra_towards_tx" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_defaults_autopay"."pay_extra_towards_periods" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_defaults_autopay"."payoff_adjustment" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_defaults_autopay"."process_zero_or_negative_balance" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_autopay"."recurring_date_option" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_defaults_autopay"."scheduling_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_defaults_autopay"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_defaults_autopay"."last_modified" IS $$remote type: timestamp$$;
    CREATE VIEW "defaults_autopay" as
          select "id",
            "autopay_type",
            "autopay_time",
            "application_date_diff",
            "application_date_diff_in_bank_days",
            "post_payment_update_apply_date",
            "process_current",
            "retry_days",
            "charge_service_fee",
            "payment_type_id",
            "payment_method_auth_type",
            "pay_extra_towards_tx",
            "pay_extra_towards_periods",
            "payoff_adjustment",
            "process_zero_or_negative_balance",
            "recurring_date_option",
            "scheduling_type",
            "deleted",
            nullif("last_modified", '0000-00-00 00:00:00')::timestamp as "last_modified" from "_defaults_autopay"
    ;

    DROP VIEW IF EXISTS "defaults_charges";

    DROP FOREIGN TABLE IF EXISTS "_defaults_charges";
    CREATE FOREIGN TABLE "_defaults_charges"
      ("id" int,
       "loan_class" char(30),
       "loan_type" char(30),
       "type" int,
       "application_type" varchar(100),
       "interest_bearing" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'defaults_charges'
    );
COMMENT on COLUMN "_defaults_charges"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_charges"."loan_class" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_charges"."loan_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_charges"."type" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_charges"."application_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_defaults_charges"."interest_bearing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_charges"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_charges"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "defaults_charges" as
          select "id",
            "loan_class",
            "loan_type",
            "type",
            "application_type",
            "interest_bearing",
            "deleted",
            "lastupdated" from "_defaults_charges"
    ;

    DROP VIEW IF EXISTS "defaults_escrow_calculator";

    DROP FOREIGN TABLE IF EXISTS "_defaults_escrow_calculator";
    CREATE FOREIGN TABLE "_defaults_escrow_calculator"
      ("id" int,
       "parent_type" char(26),
       "loan_default_id" int,
       "subset" int,
       "term" int,
       "total" decimal(11,2),
       "percent" decimal(11,2),
       "first_period" decimal(11,2),
       "regular_period" decimal(11,2),
       "percent_base" char(40),
       "prorate_first" char(40),
       "extend_final" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'defaults_escrow_calculator'
    );
COMMENT on COLUMN "_defaults_escrow_calculator"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."parent_type" IS $$remote type: char(26)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."loan_default_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."term" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."total" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."first_period" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."regular_period" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."percent_base" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."prorate_first" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."extend_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_escrow_calculator"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "defaults_escrow_calculator" as
          select "id",
            "parent_type",
            "loan_default_id",
            "subset",
            "term",
            "total",
            "percent",
            "first_period",
            "regular_period",
            "percent_base",
            "prorate_first",
            "extend_final",
            "deleted",
            "lastupdated" from "_defaults_escrow_calculator"
    ;

    DROP VIEW IF EXISTS "defaults_late_fee__buckets";

    DROP FOREIGN TABLE IF EXISTS "_defaults_late_fee__buckets";
    CREATE FOREIGN TABLE "_defaults_late_fee__buckets"
      ("loan_id" int,
       "subset" int,
       "parent_type" char(26),
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'defaults_late_fee__buckets'
    );
COMMENT on COLUMN "_defaults_late_fee__buckets"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_late_fee__buckets"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_late_fee__buckets"."parent_type" IS $$remote type: char(26)$$;
COMMENT on COLUMN "_defaults_late_fee__buckets"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_defaults_late_fee__buckets"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_defaults_late_fee__buckets"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "defaults_late_fee__buckets" as
          select "loan_id",
            "subset",
            "parent_type",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_defaults_late_fee__buckets"
    ;

    DROP VIEW IF EXISTS "defaults_payments";

    DROP FOREIGN TABLE IF EXISTS "_defaults_payments";
    CREATE FOREIGN TABLE "_defaults_payments"
      ("id" int,
       "loan_class" char(30),
       "loan_type" char(30),
       "payment_type" int,
       "payment_method_id" int,
       "extra_towards_transactions" char(40),
       "extra_towards_periods" char(40),
       "charge_fee" int,
       "early_payment" int,
       "echeck_auth_type" char(30),
       "reset_past_due" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'defaults_payments'
    );
COMMENT on COLUMN "_defaults_payments"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_payments"."loan_class" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_payments"."loan_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_payments"."payment_type" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_payments"."payment_method_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_payments"."extra_towards_transactions" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_payments"."extra_towards_periods" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_payments"."charge_fee" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_payments"."early_payment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_payments"."echeck_auth_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_payments"."reset_past_due" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_payments"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_payments"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "defaults_payments" as
          select "id",
            "loan_class",
            "loan_type",
            "payment_type",
            "payment_method_id",
            "extra_towards_transactions",
            "extra_towards_periods",
            "charge_fee",
            "early_payment",
            "echeck_auth_type",
            "reset_past_due",
            "deleted",
            "lastupdated" from "_defaults_payments"
    ;

    DROP VIEW IF EXISTS "defaults_system_loan";

    DROP FOREIGN TABLE IF EXISTS "_defaults_system_loan";
    CREATE FOREIGN TABLE "_defaults_system_loan"
      ("id" int,
       "loan_class" char(30),
       "loan_type" char(30),
       "is_primary" int,
       "grace_days" int,
       "late_fee_type" char(30),
       "late_fee_amount" decimal(11,2),
       "late_fee_percent" decimal(11,2),
       "late_fee_calc" char(30),
       "card_fee_amount" decimal(11,2),
       "card_fee_type" char(30),
       "card_fee_percent" decimal(11,2),
       "agent" int,
       "source_company" int,
       "loan_status" int,
       "loan_sub_status" int,
       "ebilling" int,
       "ecoa_code" char(30),
       "co_ecoa_code" char(30),
       "portfolio" text,
       "credit_status" char(30),
       "credit_bureau" char(30),
       "reporting_type" char(30),
       "discount_split" int,
       "payment_frequency" char(30),
       "calc_type" char(30),
       "days_in_year" char(30),
       "interest_application" char(50),
       "beg_end" char(20),
       "first_period_days" char(40),
       "first_day_interest" int,
       "discount_calc" char(40),
       "diy_alt" int,
       "payment_date_app" char(30),
       "days_in_period" char(30),
       "smooth_payments" int,
       "round_decimals" int,
       "last_as_final" int,
       "ndd_calc" char(30),
       "end_interest" char(30),
       "fixed_term_pmt" int,
       "latefee_percent_base" char(40),
       "schedule_template" int,
       "curtailment_template" int,
       "fees_paid_by" char(30),
       "use_interest_tiers" int,
       "loan_rate_type" char(30),
       "apr_force_single_freq" int,
       "due_date_on_last_dom" int,
       "due_dates_on_business_days" varchar(40),
       "autopay_enabled" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'defaults_system_loan'
    );
COMMENT on COLUMN "_defaults_system_loan"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_system_loan"."loan_class" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."loan_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."is_primary" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."grace_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_system_loan"."late_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."late_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_system_loan"."late_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_system_loan"."late_fee_calc" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."card_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_system_loan"."card_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."card_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_system_loan"."agent" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_system_loan"."source_company" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_system_loan"."loan_status" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_system_loan"."loan_sub_status" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_system_loan"."ebilling" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."co_ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."portfolio" IS $$remote type: text$$;
COMMENT on COLUMN "_defaults_system_loan"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."credit_bureau" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."reporting_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."discount_split" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."payment_frequency" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."calc_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."days_in_year" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."interest_application" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_defaults_system_loan"."beg_end" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_defaults_system_loan"."first_period_days" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_system_loan"."first_day_interest" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."discount_calc" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_system_loan"."diy_alt" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."payment_date_app" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."days_in_period" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."smooth_payments" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."round_decimals" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_system_loan"."last_as_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."ndd_calc" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."end_interest" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."fixed_term_pmt" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."latefee_percent_base" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_system_loan"."schedule_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_system_loan"."curtailment_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_system_loan"."fees_paid_by" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."use_interest_tiers" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."loan_rate_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_system_loan"."apr_force_single_freq" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."due_date_on_last_dom" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."due_dates_on_business_days" IS $$remote type: varchar(40)$$;
COMMENT on COLUMN "_defaults_system_loan"."autopay_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_system_loan"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "defaults_system_loan" as
          select "id",
            "loan_class",
            "loan_type",
            "is_primary",
            "grace_days",
            "late_fee_type",
            "late_fee_amount",
            "late_fee_percent",
            "late_fee_calc",
            "card_fee_amount",
            "card_fee_type",
            "card_fee_percent",
            "agent",
            "source_company",
            "loan_status",
            "loan_sub_status",
            "ebilling",
            "ecoa_code",
            "co_ecoa_code",
            "portfolio",
            "credit_status",
            "credit_bureau",
            "reporting_type",
            "discount_split",
            "payment_frequency",
            "calc_type",
            "days_in_year",
            "interest_application",
            "beg_end",
            "first_period_days",
            "first_day_interest",
            "discount_calc",
            "diy_alt",
            "payment_date_app",
            "days_in_period",
            "smooth_payments",
            "round_decimals",
            "last_as_final",
            "ndd_calc",
            "end_interest",
            "fixed_term_pmt",
            "latefee_percent_base",
            "schedule_template",
            "curtailment_template",
            "fees_paid_by",
            "use_interest_tiers",
            "loan_rate_type",
            "apr_force_single_freq",
            "due_date_on_last_dom",
            "due_dates_on_business_days",
            "autopay_enabled",
            "deleted",
            "lastupdated" from "_defaults_system_loan"
    ;

    DROP VIEW IF EXISTS "defaults_user_loan";

    DROP FOREIGN TABLE IF EXISTS "_defaults_user_loan";
    CREATE FOREIGN TABLE "_defaults_user_loan"
      ("id" int,
       "title" text,
       "loan_class" char(30),
       "loan_type" char(30),
       "grace_days" int,
       "late_fee_type" char(30),
       "late_fee_amount" decimal(11,2),
       "late_fee_percent" decimal(11,2),
       "late_fee_calc" char(30),
       "card_fee_amount" decimal(11,2),
       "card_fee_type" char(30),
       "card_fee_percent" decimal(11,2),
       "agent" int,
       "source_company" int,
       "loan_status" int,
       "loan_sub_status" int,
       "ebilling" int,
       "ecoa_code" char(30),
       "co_ecoa_code" char(30),
       "portfolio" text,
       "credit_status" char(30),
       "credit_bureau" char(30),
       "reporting_type" char(30),
       "discount_split" int,
       "payment_frequency" char(30),
       "calc_type" char(30),
       "days_in_year" char(30),
       "interest_application" char(50),
       "beg_end" char(20),
       "first_period_days" char(40),
       "first_day_interest" int,
       "discount_calc" char(40),
       "diy_alt" int,
       "payment_date_app" char(30),
       "days_in_period" char(30),
       "smooth_payments" int,
       "round_decimals" int,
       "last_as_final" int,
       "ndd_calc" char(30),
       "escrow_percent_base" char(40),
       "escrow_percentage" decimal(11,2),
       "escrow_prorate_first" char(40),
       "escrow_extend_final" int,
       "end_interest" char(30),
       "fixed_term_pmt" int,
       "latefee_percent_base" char(40),
       "disclosure_lnamt_add" int,
       "schedule_template" int,
       "curtailment_template" int,
       "fees_paid_by" char(30),
       "use_interest_tiers" int,
       "loan_rate_type" char(30),
       "apr_force_single_freq" int,
       "due_date_on_last_dom" int,
       "due_dates_on_business_days" varchar(40),
       "autopay_enabled" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'defaults_user_loan'
    );
COMMENT on COLUMN "_defaults_user_loan"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_user_loan"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_defaults_user_loan"."loan_class" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."loan_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."grace_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_user_loan"."late_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."late_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_user_loan"."late_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_user_loan"."late_fee_calc" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."card_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_user_loan"."card_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."card_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_user_loan"."agent" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_user_loan"."source_company" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_user_loan"."loan_status" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_user_loan"."loan_sub_status" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_defaults_user_loan"."ebilling" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."co_ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."portfolio" IS $$remote type: text$$;
COMMENT on COLUMN "_defaults_user_loan"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."credit_bureau" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."reporting_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."discount_split" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."payment_frequency" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."calc_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."days_in_year" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."interest_application" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_defaults_user_loan"."beg_end" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_defaults_user_loan"."first_period_days" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_user_loan"."first_day_interest" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."discount_calc" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_user_loan"."diy_alt" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."payment_date_app" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."days_in_period" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."smooth_payments" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."round_decimals" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_user_loan"."last_as_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."ndd_calc" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."escrow_percent_base" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_user_loan"."escrow_percentage" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_defaults_user_loan"."escrow_prorate_first" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_user_loan"."escrow_extend_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."end_interest" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."fixed_term_pmt" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."latefee_percent_base" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_defaults_user_loan"."disclosure_lnamt_add" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."schedule_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_user_loan"."curtailment_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_defaults_user_loan"."fees_paid_by" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."use_interest_tiers" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."loan_rate_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_defaults_user_loan"."apr_force_single_freq" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."due_date_on_last_dom" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."due_dates_on_business_days" IS $$remote type: varchar(40)$$;
COMMENT on COLUMN "_defaults_user_loan"."autopay_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_defaults_user_loan"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_defaults_user_loan"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_defaults_user_loan"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "defaults_user_loan" as
          select "id",
            "title",
            "loan_class",
            "loan_type",
            "grace_days",
            "late_fee_type",
            "late_fee_amount",
            "late_fee_percent",
            "late_fee_calc",
            "card_fee_amount",
            "card_fee_type",
            "card_fee_percent",
            "agent",
            "source_company",
            "loan_status",
            "loan_sub_status",
            "ebilling",
            "ecoa_code",
            "co_ecoa_code",
            "portfolio",
            "credit_status",
            "credit_bureau",
            "reporting_type",
            "discount_split",
            "payment_frequency",
            "calc_type",
            "days_in_year",
            "interest_application",
            "beg_end",
            "first_period_days",
            "first_day_interest",
            "discount_calc",
            "diy_alt",
            "payment_date_app",
            "days_in_period",
            "smooth_payments",
            "round_decimals",
            "last_as_final",
            "ndd_calc",
            "escrow_percent_base",
            "escrow_percentage",
            "escrow_prorate_first",
            "escrow_extend_final",
            "end_interest",
            "fixed_term_pmt",
            "latefee_percent_base",
            "disclosure_lnamt_add",
            "schedule_template",
            "curtailment_template",
            "fees_paid_by",
            "use_interest_tiers",
            "loan_rate_type",
            "apr_force_single_freq",
            "due_date_on_last_dom",
            "due_dates_on_business_days",
            "autopay_enabled",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_defaults_user_loan"
    ;

    DROP VIEW IF EXISTS "default_billing_options_entity";

    DROP FOREIGN TABLE IF EXISTS "_default_billing_options_entity";
    CREATE FOREIGN TABLE "_default_billing_options_entity"
      ("id" int,
       "default_template_id" int,
       "custom_text" text,
       "pdf_output" varchar(100),
       "header_color" varchar(50),
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'default_billing_options_entity'
    );
COMMENT on COLUMN "_default_billing_options_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_default_billing_options_entity"."default_template_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_default_billing_options_entity"."custom_text" IS $$remote type: varchar(400)$$;
COMMENT on COLUMN "_default_billing_options_entity"."pdf_output" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_default_billing_options_entity"."header_color" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_default_billing_options_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_default_billing_options_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_default_billing_options_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "default_billing_options_entity" as
          select "id",
            "default_template_id",
            "custom_text",
            "pdf_output",
            "header_color",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_default_billing_options_entity"
    ;

    DROP VIEW IF EXISTS "default_billing_template_entity";

    DROP FOREIGN TABLE IF EXISTS "_default_billing_template_entity";
    CREATE FOREIGN TABLE "_default_billing_template_entity"
      ("id" int,
       "name" varchar(100),
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'default_billing_template_entity'
    );
COMMENT on COLUMN "_default_billing_template_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_default_billing_template_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_default_billing_template_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_default_billing_template_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_default_billing_template_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "default_billing_template_entity" as
          select "id",
            "name",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_default_billing_template_entity"
    ;

    DROP VIEW IF EXISTS "default_billing_theme_entity";

    DROP FOREIGN TABLE IF EXISTS "_default_billing_theme_entity";
    CREATE FOREIGN TABLE "_default_billing_theme_entity"
      ("id" int,
       "default_billing_template_id" int,
       "name" varchar(100),
       "source" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'default_billing_theme_entity'
    );
COMMENT on COLUMN "_default_billing_theme_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_default_billing_theme_entity"."default_billing_template_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_default_billing_theme_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_default_billing_theme_entity"."source" IS $$remote type: text$$;
COMMENT on COLUMN "_default_billing_theme_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_default_billing_theme_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_default_billing_theme_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "default_billing_theme_entity" as
          select "id",
            "default_billing_template_id",
            "name",
            "source",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_default_billing_theme_entity"
    ;

    DROP VIEW IF EXISTS "delivery_entity";

    DROP FOREIGN TABLE IF EXISTS "_delivery_entity";
    CREATE FOREIGN TABLE "_delivery_entity"
      ("id" int,
       "name" text,
       "description" text,
       "blurb" text,
       "short_blurb" varchar(100),
       "type" char(27),
       "event" char(50),
       "rule" text,
       "custom_definition" text,
       "ntf_visible" int,
       "ntc_visible" int,
       "email_id" int,
       "web_id" int,
       "sms_id" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "mail_house_id" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'delivery_entity'
    );
COMMENT on COLUMN "_delivery_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_delivery_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_delivery_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_delivery_entity"."blurb" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_delivery_entity"."short_blurb" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_delivery_entity"."type" IS $$remote type: char(27)$$;
COMMENT on COLUMN "_delivery_entity"."event" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_delivery_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_delivery_entity"."custom_definition" IS $$remote type: text$$;
COMMENT on COLUMN "_delivery_entity"."ntf_visible" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_delivery_entity"."ntc_visible" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_delivery_entity"."email_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_delivery_entity"."web_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_delivery_entity"."sms_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_delivery_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_delivery_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_delivery_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_delivery_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_delivery_entity"."mail_house_id" IS $$remote type: int(11) unsigned$$;
    CREATE VIEW "delivery_entity" as
          select "id",
            "name",
            "description",
            "blurb",
            "short_blurb",
            "type",
            "event",
            "rule",
            "custom_definition",
            "ntf_visible",
            "ntc_visible",
            "email_id",
            "web_id",
            "sms_id",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "mail_house_id" from "_delivery_entity"
    ;

    DROP VIEW IF EXISTS "disbursement_entity";

    DROP FOREIGN TABLE IF EXISTS "_disbursement_entity";
    CREATE FOREIGN TABLE "_disbursement_entity"
      ("id" int,
       "account_type" char(32),
       "account_id" int,
       "escrow_subset_id" int,
       "date" text,
       "estimated_amount" decimal(11,2),
       "last_payment_date" text,
       "last_payment_amount" decimal(11,2),
       "actual_amount" decimal(11,2),
       "recurring_frequency" char(64),
       "next_payment_date" text,
       "next_payment_amount" decimal(11,2),
       "memo" text,
       "vendor_id" int,
       "category_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'disbursement_entity'
    );
COMMENT on COLUMN "_disbursement_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_disbursement_entity"."account_type" IS $$remote type: char(32)$$;
COMMENT on COLUMN "_disbursement_entity"."account_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_disbursement_entity"."escrow_subset_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_disbursement_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_disbursement_entity"."estimated_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_disbursement_entity"."last_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_disbursement_entity"."last_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_disbursement_entity"."actual_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_disbursement_entity"."recurring_frequency" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_disbursement_entity"."next_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_disbursement_entity"."next_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_disbursement_entity"."memo" IS $$remote type: text$$;
COMMENT on COLUMN "_disbursement_entity"."vendor_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_disbursement_entity"."category_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_disbursement_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_disbursement_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_disbursement_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "disbursement_entity" as
          select "id",
            "account_type",
            "account_id",
            "escrow_subset_id",
            nullif("date", '0000-00-00')::date as "date",
            "estimated_amount",
            nullif("last_payment_date", '0000-00-00')::date as "last_payment_date",
            "last_payment_amount",
            "actual_amount",
            "recurring_frequency",
            nullif("next_payment_date", '0000-00-00')::date as "next_payment_date",
            "next_payment_amount",
            "memo",
            "vendor_id",
            "category_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_disbursement_entity"
    ;

    DROP VIEW IF EXISTS "doc_section_entity";

    DROP FOREIGN TABLE IF EXISTS "_doc_section_entity";
    CREATE FOREIGN TABLE "_doc_section_entity"
      ("id" int,
       "title" text,
       "entity_type" varchar(50),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'doc_section_entity'
    );
COMMENT on COLUMN "_doc_section_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_doc_section_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_doc_section_entity"."entity_type" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_doc_section_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_doc_section_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_doc_section_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_doc_section_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "doc_section_entity" as
          select "id",
            "title",
            "entity_type",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_doc_section_entity"
    ;

    DROP VIEW IF EXISTS "due_to_date_view";

    DROP FOREIGN TABLE IF EXISTS "_due_to_date_view";
    CREATE FOREIGN TABLE "_due_to_date_view"
      ("entity_id" int,
       "due_to_date" decimal(36,2))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'due_to_date_view'
    );
COMMENT on COLUMN "_due_to_date_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_due_to_date_view"."due_to_date" IS $$remote type: decimal(36,2)$$;
    CREATE VIEW "due_to_date_view" as
          select "entity_id",
            "due_to_date" from "_due_to_date_view"
    ;

    DROP VIEW IF EXISTS "email_delivery_entity";

    DROP FOREIGN TABLE IF EXISTS "_email_delivery_entity";
    CREATE FOREIGN TABLE "_email_delivery_entity"
      ("id" int,
       "delivery_id" int,
       "subject" text,
       "content" text,
       "from" text,
       "from_title" varchar(100),
       "to" varchar(100),
       "restriction" text,
       "restriction_ui" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'email_delivery_entity'
    );
COMMENT on COLUMN "_email_delivery_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_delivery_entity"."delivery_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_delivery_entity"."subject" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_email_delivery_entity"."content" IS $$remote type: text$$;
COMMENT on COLUMN "_email_delivery_entity"."from" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_email_delivery_entity"."from_title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_email_delivery_entity"."to" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_email_delivery_entity"."restriction" IS $$remote type: text$$;
COMMENT on COLUMN "_email_delivery_entity"."restriction_ui" IS $$remote type: text$$;
COMMENT on COLUMN "_email_delivery_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_delivery_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_delivery_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "email_delivery_entity" as
          select "id",
            "delivery_id",
            "subject",
            "content",
            "from",
            "from_title",
            "to",
            "restriction",
            "restriction_ui",
            "active",
            "deleted",
            "lastupdated" from "_email_delivery_entity"
    ;

    DROP VIEW IF EXISTS "email_queue";

    DROP FOREIGN TABLE IF EXISTS "_email_queue";
    CREATE FOREIGN TABLE "_email_queue"
      ("id" int,
       "recipients" text,
       "recipients_bcc" text,
       "from_email" text,
       "from_name" text,
       "subject" text,
       "body" text,
       "metadata" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'email_queue'
    );
COMMENT on COLUMN "_email_queue"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_email_queue"."recipients" IS $$remote type: text$$;
COMMENT on COLUMN "_email_queue"."recipients_bcc" IS $$remote type: text$$;
COMMENT on COLUMN "_email_queue"."from_email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_email_queue"."from_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_email_queue"."subject" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_email_queue"."body" IS $$remote type: mediumtext$$;
COMMENT on COLUMN "_email_queue"."metadata" IS $$remote type: text$$;
COMMENT on COLUMN "_email_queue"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_queue"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_email_queue"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "email_queue" as
          select "id",
            "recipients",
            "recipients_bcc",
            "from_email",
            "from_name",
            "subject",
            "body",
            "metadata",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_email_queue"
    ;

    DROP VIEW IF EXISTS "email_template_entity";

    DROP FOREIGN TABLE IF EXISTS "_email_template_entity";
    CREATE FOREIGN TABLE "_email_template_entity"
      ("id" int,
       "name" varchar(100),
       "email_subject" text,
       "email_content" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'email_template_entity'
    );
COMMENT on COLUMN "_email_template_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_template_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_email_template_entity"."email_subject" IS $$remote type: text$$;
COMMENT on COLUMN "_email_template_entity"."email_content" IS $$remote type: text$$;
COMMENT on COLUMN "_email_template_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_template_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_email_template_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "email_template_entity" as
          select "id",
            "name",
            "email_subject",
            "email_content",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_email_template_entity"
    ;

    DROP VIEW IF EXISTS "email_tool_entity";

    DROP FOREIGN TABLE IF EXISTS "_email_tool_entity";
    CREATE FOREIGN TABLE "_email_tool_entity"
      ("id" int,
       "user_id" int,
       "company_email_id" int,
       "email_subject" text,
       "email_content" text,
       "query" text,
       "sent" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'email_tool_entity'
    );
COMMENT on COLUMN "_email_tool_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_tool_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_tool_entity"."company_email_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_tool_entity"."email_subject" IS $$remote type: text$$;
COMMENT on COLUMN "_email_tool_entity"."email_content" IS $$remote type: text$$;
COMMENT on COLUMN "_email_tool_entity"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_email_tool_entity"."sent" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_tool_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_tool_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_tool_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_email_tool_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "email_tool_entity" as
          select "id",
            "user_id",
            "company_email_id",
            "email_subject",
            "email_content",
            "query",
            "sent",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_email_tool_entity"
    ;

    DROP VIEW IF EXISTS "email_tool__loan";

    DROP FOREIGN TABLE IF EXISTS "_email_tool__loan";
    CREATE FOREIGN TABLE "_email_tool__loan"
      ("email_tool_id" int,
       "loan_id" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'email_tool__loan'
    );
COMMENT on COLUMN "_email_tool__loan"."email_tool_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_tool__loan"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_tool__loan"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "email_tool__loan" as
          select "email_tool_id",
            "loan_id",
            "lastupdated" from "_email_tool__loan"
    ;

    DROP VIEW IF EXISTS "email_trigger_entity";

    DROP FOREIGN TABLE IF EXISTS "_email_trigger_entity";
    CREATE FOREIGN TABLE "_email_trigger_entity"
      ("id" int,
       "company_email_id" int,
       "trigger_rule" text,
       "title" varchar(100),
       "restriction_rule" text,
       "state" text,
       "email_subject" text,
       "email_content" text,
       "email_deliver" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'email_trigger_entity'
    );
COMMENT on COLUMN "_email_trigger_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_trigger_entity"."company_email_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_email_trigger_entity"."trigger_rule" IS $$remote type: text$$;
COMMENT on COLUMN "_email_trigger_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_email_trigger_entity"."restriction_rule" IS $$remote type: text$$;
COMMENT on COLUMN "_email_trigger_entity"."state" IS $$remote type: text$$;
COMMENT on COLUMN "_email_trigger_entity"."email_subject" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_email_trigger_entity"."email_content" IS $$remote type: text$$;
COMMENT on COLUMN "_email_trigger_entity"."email_deliver" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_email_trigger_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_trigger_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_email_trigger_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_email_trigger_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "email_trigger_entity" as
          select "id",
            "company_email_id",
            "trigger_rule",
            "title",
            "restriction_rule",
            "state",
            "email_subject",
            "email_content",
            "email_deliver",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_email_trigger_entity"
    ;

    DROP VIEW IF EXISTS "escrow_adjustment_entity";

    DROP FOREIGN TABLE IF EXISTS "_escrow_adjustment_entity";
    CREATE FOREIGN TABLE "_escrow_adjustment_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "subset" int,
       "period" int,
       "amount" decimal(11,2),
       "description" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_adjustment_entity'
    );
COMMENT on COLUMN "_escrow_adjustment_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_adjustment_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "escrow_adjustment_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            "subset",
            "period",
            "amount",
            "description",
            "deleted",
            "lastupdated" from "_escrow_adjustment_entity"
    ;

    DROP VIEW IF EXISTS "escrow_analysis_process_entity";

    DROP FOREIGN TABLE IF EXISTS "_escrow_analysis_process_entity";
    CREATE FOREIGN TABLE "_escrow_analysis_process_entity"
      ("id" int,
       "created" text,
       "lastupdated" timestamptz,
       "create_user" int,
       "escrow_subset_id" int,
       "completed" int,
       "completed_date" text,
       "last_updated" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_analysis_process_entity'
    );
COMMENT on COLUMN "_escrow_analysis_process_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_analysis_process_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_escrow_analysis_process_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_escrow_analysis_process_entity"."create_user" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_escrow_analysis_process_entity"."escrow_subset_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_analysis_process_entity"."completed" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_analysis_process_entity"."completed_date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_escrow_analysis_process_entity"."last_updated" IS $$remote type: datetime$$;
COMMENT on COLUMN "_escrow_analysis_process_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "escrow_analysis_process_entity" as
          select "id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "create_user",
            "escrow_subset_id",
            "completed",
            nullif("completed_date", '0000-00-00 00:00:00')::timestamp as "completed_date",
            nullif("last_updated", '0000-00-00 00:00:00')::timestamp as "last_updated",
            "deleted" from "_escrow_analysis_process_entity"
    ;

    DROP VIEW IF EXISTS "escrow_analysis_task_entity";

    DROP FOREIGN TABLE IF EXISTS "_escrow_analysis_task_entity";
    CREATE FOREIGN TABLE "_escrow_analysis_task_entity"
      ("process_id" int,
       "account_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "create_user" int,
       "completed" int,
       "completed_date" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_analysis_task_entity'
    );
COMMENT on COLUMN "_escrow_analysis_task_entity"."process_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_analysis_task_entity"."account_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_analysis_task_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_escrow_analysis_task_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_escrow_analysis_task_entity"."create_user" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_escrow_analysis_task_entity"."completed" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_analysis_task_entity"."completed_date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_escrow_analysis_task_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "escrow_analysis_task_entity" as
          select "process_id",
            "account_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "create_user",
            "completed",
            nullif("completed_date", '0000-00-00 00:00:00')::timestamp as "completed_date",
            "deleted" from "_escrow_analysis_task_entity"
    ;

    DROP VIEW IF EXISTS "escrow_calculator_entity";

    DROP FOREIGN TABLE IF EXISTS "_escrow_calculator_entity";
    CREATE FOREIGN TABLE "_escrow_calculator_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "subset" int,
       "term" int,
       "total" decimal(11,2),
       "percent" decimal(11,2),
       "first_period" decimal(11,2),
       "regular_period" decimal(11,2),
       "percent_base" char(40),
       "prorate_first" char(40),
       "extend_final" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_calculator_entity'
    );
COMMENT on COLUMN "_escrow_calculator_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_calculator_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_calculator_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_calculator_entity"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_calculator_entity"."term" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_calculator_entity"."total" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."first_period" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."regular_period" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."percent_base" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."prorate_first" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."extend_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_calculator_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "escrow_calculator_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            "subset",
            "term",
            "total",
            "percent",
            "first_period",
            "regular_period",
            "percent_base",
            "prorate_first",
            "extend_final",
            "deleted",
            "lastupdated" from "_escrow_calculator_entity"
    ;

    DROP VIEW IF EXISTS "escrow_subset_entity";

    DROP FOREIGN TABLE IF EXISTS "_escrow_subset_entity";
    CREATE FOREIGN TABLE "_escrow_subset_entity"
      ("id" int,
       "title" text,
       "entity_type" varchar(100),
       "payoff_option" char(50),
       "payment_application" char(30),
       "lease_sales_tax" int,
       "apr_include" int,
       "schedule_include" int,
       "disclosure_lnamt_add" int,
       "availability" char(40),
       "interest_bearing" int,
       "escrow_analysis_enabled" int,
       "cushion" int,
       "cushion_fixed_amount" decimal(11,2),
       "cushion_percentage" decimal(5,3),
       "escrow_computation_year_start_date" text,
       "next_escrow_analysis_date" text,
       "deficiency_delimiting_dpd" int,
       "deficiency_days_to_pay" int,
       "deficiency_delimiting_amount" int,
       "deficiency_delimiting_dollar" decimal(11,2),
       "deficiency_delimiting_percentage" decimal(5,3),
       "deficiency_catchup_payment_number" int,
       "deficiency_action_a" int,
       "deficiency_action_b" int,
       "deficiency_action_c" int,
       "shortage_days_to_pay" int,
       "shortage_catchup_payment_number" int,
       "shortage_delimiting_amount" int,
       "shortage_delimiting_dollar" decimal(11,2),
       "shortage_delimiting_percentage" decimal(5,3),
       "shortage_action_a" int,
       "shortage_action_b" int,
       "surplus_allowed_surplus" decimal(11,2),
       "surplus_days_to_refund" int,
       "surplus_delimiting_dpd" int,
       "surplus_action_a" int,
       "surplus_action_b" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_subset_entity'
    );
COMMENT on COLUMN "_escrow_subset_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_subset_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_escrow_subset_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_escrow_subset_entity"."payoff_option" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_escrow_subset_entity"."payment_application" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_escrow_subset_entity"."lease_sales_tax" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."apr_include" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."schedule_include" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."disclosure_lnamt_add" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."availability" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_escrow_subset_entity"."interest_bearing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."escrow_analysis_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."cushion" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."cushion_fixed_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."cushion_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_entity"."escrow_computation_year_start_date" IS $$remote type: date$$;
COMMENT on COLUMN "_escrow_subset_entity"."next_escrow_analysis_date" IS $$remote type: date$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_delimiting_dpd" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_days_to_pay" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_delimiting_amount" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_delimiting_dollar" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_delimiting_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_catchup_payment_number" IS $$remote type: tinyint(3)$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."deficiency_action_c" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."shortage_days_to_pay" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."shortage_catchup_payment_number" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."shortage_delimiting_amount" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."shortage_delimiting_dollar" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."shortage_delimiting_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_entity"."shortage_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."shortage_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."surplus_allowed_surplus" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."surplus_days_to_refund" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."surplus_delimiting_dpd" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_entity"."surplus_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."surplus_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_escrow_subset_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_escrow_subset_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_escrow_subset_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "escrow_subset_entity" as
          select "id",
            "title",
            "entity_type",
            "payoff_option",
            "payment_application",
            "lease_sales_tax",
            "apr_include",
            "schedule_include",
            "disclosure_lnamt_add",
            "availability",
            "interest_bearing",
            "escrow_analysis_enabled",
            "cushion",
            "cushion_fixed_amount",
            "cushion_percentage",
            nullif("escrow_computation_year_start_date", '0000-00-00')::date as "escrow_computation_year_start_date",
            nullif("next_escrow_analysis_date", '0000-00-00')::date as "next_escrow_analysis_date",
            "deficiency_delimiting_dpd",
            "deficiency_days_to_pay",
            "deficiency_delimiting_amount",
            "deficiency_delimiting_dollar",
            "deficiency_delimiting_percentage",
            "deficiency_catchup_payment_number",
            "deficiency_action_a",
            "deficiency_action_b",
            "deficiency_action_c",
            "shortage_days_to_pay",
            "shortage_catchup_payment_number",
            "shortage_delimiting_amount",
            "shortage_delimiting_dollar",
            "shortage_delimiting_percentage",
            "shortage_action_a",
            "shortage_action_b",
            "surplus_allowed_surplus",
            "surplus_days_to_refund",
            "surplus_delimiting_dpd",
            "surplus_action_a",
            "surplus_action_b",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_escrow_subset_entity"
    ;

    DROP VIEW IF EXISTS "escrow_subset_options_entity";

    DROP FOREIGN TABLE IF EXISTS "_escrow_subset_options_entity";
    CREATE FOREIGN TABLE "_escrow_subset_options_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "subset" int,
       "payoff_option" char(50),
       "payment_application" char(30),
       "apr_include" int,
       "schedule_include" int,
       "disclosure_lnamt_add" int,
       "interest_bearing" int,
       "escrow_analysis_enabled" int,
       "cushion" int,
       "cushion_fixed_amount" decimal(11,2),
       "cushion_percentage" decimal(5,3),
       "escrow_computation_year_start_date" text,
       "next_escrow_analysis_date" text,
       "deficiency_delimiting_dpd" int,
       "deficiency_days_to_pay" int,
       "deficiency_delimiting_amount" int,
       "deficiency_delimiting_dollar" decimal(11,2),
       "deficiency_delimiting_percentage" decimal(5,3),
       "deficiency_catchup_payment_number" int,
       "deficiency_action_a" int,
       "deficiency_action_b" int,
       "deficiency_action_c" int,
       "shortage_days_to_pay" int,
       "shortage_catchup_payment_number" int,
       "shortage_delimiting_amount" int,
       "shortage_delimiting_dollar" decimal(11,2),
       "shortage_delimiting_percentage" decimal(5,3),
       "shortage_action_a" int,
       "shortage_action_b" int,
       "surplus_allowed_surplus" decimal(11,2),
       "surplus_days_to_refund" int,
       "surplus_delimiting_dpd" int,
       "surplus_action_a" int,
       "surplus_action_b" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_subset_options_entity'
    );
COMMENT on COLUMN "_escrow_subset_options_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."payoff_option" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."payment_application" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."apr_include" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."schedule_include" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."disclosure_lnamt_add" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."interest_bearing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."escrow_analysis_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."cushion" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."cushion_fixed_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."cushion_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."escrow_computation_year_start_date" IS $$remote type: date$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."next_escrow_analysis_date" IS $$remote type: date$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_delimiting_dpd" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_days_to_pay" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_delimiting_amount" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_delimiting_dollar" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_delimiting_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_catchup_payment_number" IS $$remote type: tinyint(3)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deficiency_action_c" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."shortage_days_to_pay" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."shortage_catchup_payment_number" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."shortage_delimiting_amount" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."shortage_delimiting_dollar" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."shortage_delimiting_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."shortage_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."shortage_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."surplus_allowed_surplus" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."surplus_days_to_refund" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."surplus_delimiting_dpd" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."surplus_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."surplus_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_escrow_subset_options_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "escrow_subset_options_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "subset",
            "payoff_option",
            "payment_application",
            "apr_include",
            "schedule_include",
            "disclosure_lnamt_add",
            "interest_bearing",
            "escrow_analysis_enabled",
            "cushion",
            "cushion_fixed_amount",
            "cushion_percentage",
            nullif("escrow_computation_year_start_date", '0000-00-00')::date as "escrow_computation_year_start_date",
            nullif("next_escrow_analysis_date", '0000-00-00')::date as "next_escrow_analysis_date",
            "deficiency_delimiting_dpd",
            "deficiency_days_to_pay",
            "deficiency_delimiting_amount",
            "deficiency_delimiting_dollar",
            "deficiency_delimiting_percentage",
            "deficiency_catchup_payment_number",
            "deficiency_action_a",
            "deficiency_action_b",
            "deficiency_action_c",
            "shortage_days_to_pay",
            "shortage_catchup_payment_number",
            "shortage_delimiting_amount",
            "shortage_delimiting_dollar",
            "shortage_delimiting_percentage",
            "shortage_action_a",
            "shortage_action_b",
            "surplus_allowed_surplus",
            "surplus_days_to_refund",
            "surplus_delimiting_dpd",
            "surplus_action_a",
            "surplus_action_b",
            "deleted",
            "lastupdated" from "_escrow_subset_options_entity"
    ;

    DROP VIEW IF EXISTS "escrow_subset_options_entity_backup";

    DROP FOREIGN TABLE IF EXISTS "_escrow_subset_options_entity_backup";
    CREATE FOREIGN TABLE "_escrow_subset_options_entity_backup"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "subset" int,
       "payoff_option" char(50),
       "payment_application" char(30),
       "apr_include" int,
       "schedule_include" int,
       "disclosure_lnamt_add" int,
       "interest_bearing" int,
       "escrow_analysis_enabled" int,
       "cushion" int,
       "cushion_fixed_amount" decimal(11,2),
       "cushion_percentage" decimal(5,3),
       "escrow_computation_year_start_date" text,
       "next_escrow_analysis_date" text,
       "deficiency_delimiting_dpd" int,
       "deficiency_days_to_pay" int,
       "deficiency_delimiting_amount" int,
       "deficiency_delimiting_dollar" decimal(11,2),
       "deficiency_delimiting_percentage" decimal(5,3),
       "deficiency_catchup_payment_number" int,
       "deficiency_action_a" int,
       "deficiency_action_b" int,
       "deficiency_action_c" int,
       "shortage_days_to_pay" int,
       "shortage_catchup_payment_number" int,
       "shortage_delimiting_amount" int,
       "shortage_delimiting_dollar" decimal(11,2),
       "shortage_delimiting_percentage" decimal(5,3),
       "shortage_action_a" int,
       "shortage_action_b" int,
       "surplus_allowed_surplus" decimal(11,2),
       "surplus_days_to_refund" int,
       "surplus_delimiting_dpd" int,
       "surplus_action_a" int,
       "surplus_action_b" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_subset_options_entity_backup'
    );
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."payoff_option" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."payment_application" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."apr_include" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."schedule_include" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."disclosure_lnamt_add" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."interest_bearing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."escrow_analysis_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."cushion" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."cushion_fixed_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."cushion_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."escrow_computation_year_start_date" IS $$remote type: date$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."next_escrow_analysis_date" IS $$remote type: date$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_delimiting_dpd" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_days_to_pay" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_delimiting_amount" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_delimiting_dollar" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_delimiting_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_catchup_payment_number" IS $$remote type: tinyint(3)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deficiency_action_c" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."shortage_days_to_pay" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."shortage_catchup_payment_number" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."shortage_delimiting_amount" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."shortage_delimiting_dollar" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."shortage_delimiting_percentage" IS $$remote type: decimal(5,3)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."shortage_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."shortage_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."surplus_allowed_surplus" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."surplus_days_to_refund" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."surplus_delimiting_dpd" IS $$remote type: tinyint(2)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."surplus_action_a" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."surplus_action_b" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_escrow_subset_options_entity_backup"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "escrow_subset_options_entity_backup" as
          select "id",
            "entity_id",
            "entity_type",
            "subset",
            "payoff_option",
            "payment_application",
            "apr_include",
            "schedule_include",
            "disclosure_lnamt_add",
            "interest_bearing",
            "escrow_analysis_enabled",
            "cushion",
            "cushion_fixed_amount",
            "cushion_percentage",
            nullif("escrow_computation_year_start_date", '0000-00-00')::date as "escrow_computation_year_start_date",
            nullif("next_escrow_analysis_date", '0000-00-00')::date as "next_escrow_analysis_date",
            "deficiency_delimiting_dpd",
            "deficiency_days_to_pay",
            "deficiency_delimiting_amount",
            "deficiency_delimiting_dollar",
            "deficiency_delimiting_percentage",
            "deficiency_catchup_payment_number",
            "deficiency_action_a",
            "deficiency_action_b",
            "deficiency_action_c",
            "shortage_days_to_pay",
            "shortage_catchup_payment_number",
            "shortage_delimiting_amount",
            "shortage_delimiting_dollar",
            "shortage_delimiting_percentage",
            "shortage_action_a",
            "shortage_action_b",
            "surplus_allowed_surplus",
            "surplus_days_to_refund",
            "surplus_delimiting_dpd",
            "surplus_action_a",
            "surplus_action_b",
            "deleted",
            "lastupdated" from "_escrow_subset_options_entity_backup"
    ;

    DROP VIEW IF EXISTS "escrow_transaction_entity";

    DROP FOREIGN TABLE IF EXISTS "_escrow_transaction_entity";
    CREATE FOREIGN TABLE "_escrow_transaction_entity"
      ("id" int,
       "loan_id" int,
       "subset" int,
       "category" int,
       "description" text,
       "date" text,
       "type" char(30),
       "amount" decimal(11,2),
       "vendor_id" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_transaction_entity'
    );
COMMENT on COLUMN "_escrow_transaction_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_transaction_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_transaction_entity"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_transaction_entity"."category" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_transaction_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_escrow_transaction_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_escrow_transaction_entity"."type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_escrow_transaction_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow_transaction_entity"."vendor_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_escrow_transaction_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow_transaction_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "escrow_transaction_entity" as
          select "id",
            "loan_id",
            "subset",
            "category",
            "description",
            nullif("date", '0000-00-00')::date as "date",
            "type",
            "amount",
            "vendor_id",
            "deleted",
            "lastupdated" from "_escrow_transaction_entity"
    ;

    DROP VIEW IF EXISTS "escrow_tx_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_escrow_tx_category_entity";
    CREATE FOREIGN TABLE "_escrow_tx_category_entity"
      ("id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow_tx_category_entity'
    );
COMMENT on COLUMN "_escrow_tx_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow_tx_category_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_escrow_tx_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_escrow_tx_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_escrow_tx_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_escrow_tx_category_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "escrow_tx_category_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_escrow_tx_category_entity"
    ;

    DROP VIEW IF EXISTS "escrow__transactions";

    DROP FOREIGN TABLE IF EXISTS "_escrow__transactions";
    CREATE FOREIGN TABLE "_escrow__transactions"
      ("id" int,
       "loan_id" int,
       "tx_id" char(30),
       "subset" int,
       "category" int,
       "description" text,
       "date" text,
       "type" char(30),
       "from_payment" int,
       "escrow_transaction_id" int,
       "deposit_amount" decimal(11,2),
       "withdrawal_amount" decimal(11,2),
       "balance" decimal(11,2),
       "sort_order" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'escrow__transactions'
    );
COMMENT on COLUMN "_escrow__transactions"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow__transactions"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow__transactions"."tx_id" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_escrow__transactions"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow__transactions"."category" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_escrow__transactions"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_escrow__transactions"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_escrow__transactions"."type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_escrow__transactions"."from_payment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow__transactions"."escrow_transaction_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_escrow__transactions"."deposit_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow__transactions"."withdrawal_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow__transactions"."balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_escrow__transactions"."sort_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_escrow__transactions"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_escrow__transactions"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "escrow__transactions" as
          select "id",
            "loan_id",
            "tx_id",
            "subset",
            "category",
            "description",
            nullif("date", '0000-00-00')::date as "date",
            "type",
            "from_payment",
            "escrow_transaction_id",
            "deposit_amount",
            "withdrawal_amount",
            "balance",
            "sort_order",
            "deleted",
            "lastupdated" from "_escrow__transactions"
    ;

    DROP VIEW IF EXISTS "faq_entry_entity";

    DROP FOREIGN TABLE IF EXISTS "_faq_entry_entity";
    CREATE FOREIGN TABLE "_faq_entry_entity"
      ("id" int,
       "question" text,
       "answer" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'faq_entry_entity'
    );
COMMENT on COLUMN "_faq_entry_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_faq_entry_entity"."question" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_faq_entry_entity"."answer" IS $$remote type: text$$;
COMMENT on COLUMN "_faq_entry_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_faq_entry_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_faq_entry_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_faq_entry_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "faq_entry_entity" as
          select "id",
            "question",
            "answer",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_faq_entry_entity"
    ;

    DROP VIEW IF EXISTS "file_attachment_entity";

    DROP FOREIGN TABLE IF EXISTS "_file_attachment_entity";
    CREATE FOREIGN TABLE "_file_attachment_entity"
      ("id" int,
       "parent_type" char(100),
       "parent_id" int,
       "file_name" text,
       "file_original_name" text,
       "file_size" int,
       "file_mime" text,
       "deleted" int,
       "active" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'file_attachment_entity'
    );
COMMENT on COLUMN "_file_attachment_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_file_attachment_entity"."parent_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_file_attachment_entity"."parent_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_file_attachment_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_file_attachment_entity"."file_original_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_file_attachment_entity"."file_size" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_file_attachment_entity"."file_mime" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_file_attachment_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_file_attachment_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_file_attachment_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_file_attachment_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "file_attachment_entity" as
          select "id",
            "parent_type",
            "parent_id",
            "file_name",
            "file_original_name",
            "file_size",
            "file_mime",
            "deleted",
            "active",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_file_attachment_entity"
    ;

    DROP VIEW IF EXISTS "first_loan_payment_transaction_view";

    DROP FOREIGN TABLE IF EXISTS "_first_loan_payment_transaction_view";
    CREATE FOREIGN TABLE "_first_loan_payment_transaction_view"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "tx_id" char(40),
       "mod_id" int,
       "date" text,
       "period" int,
       "period_start" text,
       "period_end" text,
       "title" text,
       "type" char(20),
       "info_only" int,
       "info_details" text,
       "payment_id" bigint,
       "payment_display_id" bigint,
       "payment_amount" decimal(10,2),
       "payment_i" decimal(10,2),
       "payment_p" decimal(10,2),
       "payment_d" decimal(10,2),
       "payment_f" decimal(10,2),
       "payment_e" decimal(10,2),
       "payment_e_breakdown" text,
       "fees_paid_details" text,
       "charge_amount" decimal(10,2),
       "charge_i" decimal(10,2),
       "charge_p" decimal(10,2),
       "charge_d" decimal(10,2),
       "charge_f" decimal(10,2),
       "charge_e" decimal(10,2),
       "charge_e_breakdown" text,
       "future" int,
       "principalonly" int,
       "advancement" int,
       "payoff_fee" int,
       "charge_off" int,
       "payment_type" int,
       "adb_days" int,
       "adb" decimal(10,2),
       "principal_balance" decimal(10,2),
       "displayorder" decimal(10,2),
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'first_loan_payment_transaction_view'
    );
COMMENT on COLUMN "_first_loan_payment_transaction_view"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."tx_id" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."info_only" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."info_details" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_display_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."fees_paid_details" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."charge_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."charge_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."charge_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."charge_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."charge_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."charge_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."charge_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."future" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."principalonly" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."advancement" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payoff_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."charge_off" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."payment_type" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."adb_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."adb" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."principal_balance" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."displayorder" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_first_loan_payment_transaction_view"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "first_loan_payment_transaction_view" as
          select "id",
            "entity_id",
            "entity_type",
            "tx_id",
            "mod_id",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "period",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "title",
            "type",
            "info_only",
            "info_details",
            "payment_id",
            "payment_display_id",
            "payment_amount",
            "payment_i",
            "payment_p",
            "payment_d",
            "payment_f",
            "payment_e",
            "payment_e_breakdown",
            "fees_paid_details",
            "charge_amount",
            "charge_i",
            "charge_p",
            "charge_d",
            "charge_f",
            "charge_e",
            "charge_e_breakdown",
            "future",
            "principalonly",
            "advancement",
            "payoff_fee",
            "charge_off",
            "payment_type",
            "adb_days",
            "adb",
            "principal_balance",
            "displayorder",
            "deleted" from "_first_loan_payment_transaction_view"
    ;

    DROP VIEW IF EXISTS "flag_entity";

    DROP FOREIGN TABLE IF EXISTS "_flag_entity";
    CREATE FOREIGN TABLE "_flag_entity"
      ("id" int,
       "name" varchar(100),
       "description" text,
       "rule" text,
       "draft" text,
       "display" varchar(100),
       "state" int,
       "ui_state" text,
       "entity_type" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'flag_entity'
    );
COMMENT on COLUMN "_flag_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_flag_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_flag_entity"."description" IS $$remote type: text$$;
COMMENT on COLUMN "_flag_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_flag_entity"."draft" IS $$remote type: text$$;
COMMENT on COLUMN "_flag_entity"."display" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_flag_entity"."state" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_flag_entity"."ui_state" IS $$remote type: text$$;
COMMENT on COLUMN "_flag_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_flag_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_flag_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_flag_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_flag_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "flag_entity" as
          select "id",
            "name",
            "description",
            "rule",
            "draft",
            "display",
            "state",
            "ui_state",
            "entity_type",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_flag_entity"
    ;

    DROP VIEW IF EXISTS "flag_status_archive";

    DROP FOREIGN TABLE IF EXISTS "_flag_status_archive";
    CREATE FOREIGN TABLE "_flag_status_archive"
      ("flag_id" int,
       "date" text,
       "value" int,
       "deleted" int,
       "entity_id" int,
       "entity_type" char(100),
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'flag_status_archive'
    );
COMMENT on COLUMN "_flag_status_archive"."flag_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_flag_status_archive"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_flag_status_archive"."value" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_flag_status_archive"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_flag_status_archive"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_flag_status_archive"."entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_flag_status_archive"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "flag_status_archive" as
          select "flag_id",
            nullif("date", '0000-00-00')::date as "date",
            "value",
            "deleted",
            "entity_id",
            "entity_type",
            "lastupdated" from "_flag_status_archive"
    ;

    DROP VIEW IF EXISTS "form_section_entity";

    DROP FOREIGN TABLE IF EXISTS "_form_section_entity";
    CREATE FOREIGN TABLE "_form_section_entity"
      ("id" int,
       "title" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'form_section_entity'
    );
COMMENT on COLUMN "_form_section_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_form_section_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_form_section_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_form_section_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_form_section_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_form_section_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "form_section_entity" as
          select "id",
            "title",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_form_section_entity"
    ;

    DROP VIEW IF EXISTS "gps_link_entity";

    DROP FOREIGN TABLE IF EXISTS "_gps_link_entity";
    CREATE FOREIGN TABLE "_gps_link_entity"
      ("id" int,
       "url" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'gps_link_entity'
    );
COMMENT on COLUMN "_gps_link_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_gps_link_entity"."url" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_gps_link_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_gps_link_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_gps_link_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_gps_link_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "gps_link_entity" as
          select "id",
            "url",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_gps_link_entity"
    ;

    DROP VIEW IF EXISTS "history_funding_report_view";

    DROP FOREIGN TABLE IF EXISTS "_history_funding_report_view";
    CREATE FOREIGN TABLE "_history_funding_report_view"
      ("loan_id" int,
       "tranwho" varchar(14),
       "tranname" text,
       "tranmethod" char(31),
       "tranamount" decimal(11,2),
       "trandate" text,
       "trancashdrawer" varchar(100))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'history_funding_report_view'
    );
COMMENT on COLUMN "_history_funding_report_view"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_history_funding_report_view"."tranwho" IS $$remote type: varchar(14)$$;
COMMENT on COLUMN "_history_funding_report_view"."tranname" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_history_funding_report_view"."tranmethod" IS $$remote type: char(31)$$;
COMMENT on COLUMN "_history_funding_report_view"."tranamount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_history_funding_report_view"."trandate" IS $$remote type: date$$;
COMMENT on COLUMN "_history_funding_report_view"."trancashdrawer" IS $$remote type: varchar(100)$$;
    CREATE VIEW "history_funding_report_view" as
          select "loan_id",
            "tranwho",
            "tranname",
            "tranmethod",
            "tranamount",
            nullif("trandate", '0000-00-00')::date as "trandate",
            "trancashdrawer" from "_history_funding_report_view"
    ;

    DROP VIEW IF EXISTS "holding_account_archive_entity";

    DROP FOREIGN TABLE IF EXISTS "_holding_account_archive_entity";
    CREATE FOREIGN TABLE "_holding_account_archive_entity"
      ("id" int,
       "holding_account_id" int,
       "date" text,
       "status" text,
       "sub_status" text,
       "groups" text,
       "balance" decimal(11,2),
       "balance_diff" decimal(11,2),
       "stream_positions_count" int,
       "stream_total_principal_balance" decimal(11,2),
       "stream_total_discount" decimal(11,2),
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account_archive_entity'
    );
COMMENT on COLUMN "_holding_account_archive_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."holding_account_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_holding_account_archive_entity"."status" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."sub_status" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."groups" IS $$remote type: text$$;
COMMENT on COLUMN "_holding_account_archive_entity"."balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."balance_diff" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."stream_positions_count" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."stream_total_principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."stream_total_discount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_holding_account_archive_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account_archive_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account_archive_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "holding_account_archive_entity" as
          select "id",
            "holding_account_id",
            nullif("date", '0000-00-00')::date as "date",
            "status",
            "sub_status",
            "groups",
            "balance",
            "balance_diff",
            "stream_positions_count",
            "stream_total_principal_balance",
            "stream_total_discount",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_holding_account_archive_entity"
    ;

    DROP VIEW IF EXISTS "holding_account_autopay_entity";

    DROP FOREIGN TABLE IF EXISTS "_holding_account_autopay_entity";
    CREATE FOREIGN TABLE "_holding_account_autopay_entity"
      ("id" int,
       "holding_account_id" int,
       "name" text,
       "type" char(100),
       "status" char(100),
       "apply_date" text,
       "process_datetime" text,
       "amount" decimal(10,2),
       "recurring_frequency" char(100),
       "recurring_periods" int,
       "days_in_period" char(100),
       "last_dom_enabled" int,
       "payment_method_id" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account_autopay_entity'
    );
COMMENT on COLUMN "_holding_account_autopay_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."holding_account_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."status" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."process_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."recurring_frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."recurring_periods" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."days_in_period" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."last_dom_enabled" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account_autopay_entity"."active" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "holding_account_autopay_entity" as
          select "id",
            "holding_account_id",
            "name",
            "type",
            "status",
            nullif("apply_date", '0000-00-00')::date as "apply_date",
            nullif("process_datetime", '0000-00-00 00:00:00')::timestamp as "process_datetime",
            "amount",
            "recurring_frequency",
            "recurring_periods",
            "days_in_period",
            "last_dom_enabled",
            "payment_method_id",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active" from "_holding_account_autopay_entity"
    ;

    DROP VIEW IF EXISTS "holding_account_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_holding_account_category_entity";
    CREATE FOREIGN TABLE "_holding_account_category_entity"
      ("id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "type" char(100))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account_category_entity'
    );
COMMENT on COLUMN "_holding_account_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_category_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_holding_account_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_holding_account_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_holding_account_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account_category_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account_category_entity"."type" IS $$remote type: char(100)$$;
    CREATE VIEW "holding_account_category_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "type" from "_holding_account_category_entity"
    ;

    DROP VIEW IF EXISTS "holding_account_settings_entity";

    DROP FOREIGN TABLE IF EXISTS "_holding_account_settings_entity";
    CREATE FOREIGN TABLE "_holding_account_settings_entity"
      ("id" int,
       "account_id" int,
       "account_type" char(64),
       "status_id" int,
       "sub_status_id" int,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account_settings_entity'
    );
COMMENT on COLUMN "_holding_account_settings_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_settings_entity"."account_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_settings_entity"."account_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_holding_account_settings_entity"."status_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_settings_entity"."sub_status_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_settings_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_settings_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_settings_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "holding_account_settings_entity" as
          select "id",
            "account_id",
            "account_type",
            "status_id",
            "sub_status_id",
            "active",
            "deleted",
            "lastupdated" from "_holding_account_settings_entity"
    ;

    DROP VIEW IF EXISTS "holding_account_status_entity";

    DROP FOREIGN TABLE IF EXISTS "_holding_account_status_entity";
    CREATE FOREIGN TABLE "_holding_account_status_entity"
      ("id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account_status_entity'
    );
COMMENT on COLUMN "_holding_account_status_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_status_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_holding_account_status_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_holding_account_status_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_holding_account_status_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "holding_account_status_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            "lastupdated" from "_holding_account_status_entity"
    ;

    DROP VIEW IF EXISTS "holding_account_sub_status_entity";

    DROP FOREIGN TABLE IF EXISTS "_holding_account_sub_status_entity";
    CREATE FOREIGN TABLE "_holding_account_sub_status_entity"
      ("id" int,
       "title" text,
       "parent_id" int,
       "display_order" int,
       "email_enrollment" int,
       "sms_enrollment" int,
       "web_access_enrollment" int,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account_sub_status_entity'
    );
COMMENT on COLUMN "_holding_account_sub_status_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."parent_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."display_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."email_enrollment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."sms_enrollment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."web_access_enrollment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_holding_account_sub_status_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "holding_account_sub_status_entity" as
          select "id",
            "title",
            "parent_id",
            "display_order",
            "email_enrollment",
            "sms_enrollment",
            "web_access_enrollment",
            "active",
            "deleted",
            "lastupdated" from "_holding_account_sub_status_entity"
    ;

    DROP VIEW IF EXISTS "holding_account_transaction_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_holding_account_transaction_category_entity";
    CREATE FOREIGN TABLE "_holding_account_transaction_category_entity"
      ("id" int,
       "category_name" text,
       "transaction_type" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account_transaction_category_entity'
    );
COMMENT on COLUMN "_holding_account_transaction_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_transaction_category_entity"."category_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_holding_account_transaction_category_entity"."transaction_type" IS $$remote type: enum('holdingAccount.transactionType.deposit','holdingAccount.transactionType.withdraw')$$;
COMMENT on COLUMN "_holding_account_transaction_category_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_transaction_category_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_transaction_category_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "holding_account_transaction_category_entity" as
          select "id",
            "category_name",
            "transaction_type",
            "active",
            "deleted",
            "lastupdated" from "_holding_account_transaction_category_entity"
    ;

    DROP VIEW IF EXISTS "holding_account_transaction_entity";

    DROP FOREIGN TABLE IF EXISTS "_holding_account_transaction_entity";
    CREATE FOREIGN TABLE "_holding_account_transaction_entity"
      ("id" int,
       "holding_account_id" int,
       "amount" decimal(11,2),
       "balance" decimal(11,2),
       "type" varchar(100),
       "sub_type" char(64),
       "category_id" int,
       "date" text,
       "description" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account_transaction_entity'
    );
COMMENT on COLUMN "_holding_account_transaction_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."holding_account_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."sub_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."category_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."description" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account_transaction_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "holding_account_transaction_entity" as
          select "id",
            "holding_account_id",
            "amount",
            "balance",
            "type",
            "sub_type",
            "category_id",
            nullif("date", '0000-00-00')::date as "date",
            "description",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_holding_account_transaction_entity"
    ;

    DROP VIEW IF EXISTS "holding_account__investor";

    DROP FOREIGN TABLE IF EXISTS "_holding_account__investor";
    CREATE FOREIGN TABLE "_holding_account__investor"
      ("holding_account_id" int,
       "investor_id" int,
       "investor_role" char(100),
       "investor_email_enrollment_access" int,
       "investor_web_access" int,
       "investor_sms_access" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'holding_account__investor'
    );
COMMENT on COLUMN "_holding_account__investor"."holding_account_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_holding_account__investor"."investor_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_holding_account__investor"."investor_role" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_holding_account__investor"."investor_email_enrollment_access" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_holding_account__investor"."investor_web_access" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_holding_account__investor"."investor_sms_access" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_holding_account__investor"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account__investor"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_holding_account__investor"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "holding_account__investor" as
          select "holding_account_id",
            "investor_id",
            "investor_role",
            "investor_email_enrollment_access",
            "investor_web_access",
            "investor_sms_access",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_holding_account__investor"
    ;

    DROP VIEW IF EXISTS "homepage_image_entity";

    DROP FOREIGN TABLE IF EXISTS "_homepage_image_entity";
    CREATE FOREIGN TABLE "_homepage_image_entity"
      ("id" int,
       "caption" text,
       "sub_caption" text,
       "user_name" text,
       "remote_addr" char(20),
       "file_name" text,
       "description" text,
       "size" int,
       "file_attachment_id" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'homepage_image_entity'
    );
COMMENT on COLUMN "_homepage_image_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_homepage_image_entity"."caption" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_homepage_image_entity"."sub_caption" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_homepage_image_entity"."user_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_homepage_image_entity"."remote_addr" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_homepage_image_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_homepage_image_entity"."description" IS $$remote type: text$$;
COMMENT on COLUMN "_homepage_image_entity"."size" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_homepage_image_entity"."file_attachment_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_homepage_image_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_homepage_image_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_homepage_image_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_homepage_image_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "homepage_image_entity" as
          select "id",
            "caption",
            "sub_caption",
            "user_name",
            "remote_addr",
            "file_name",
            "description",
            "size",
            "file_attachment_id",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_homepage_image_entity"
    ;

    DROP VIEW IF EXISTS "investment_document_entity";

    DROP FOREIGN TABLE IF EXISTS "_investment_document_entity";
    CREATE FOREIGN TABLE "_investment_document_entity"
      ("id" int,
       "investment_id" int,
       "user_id" int,
       "user_name" text,
       "remote_addr" char(20),
       "section_id" int,
       "file_attachment_id" int,
       "filename" text,
       "description" text,
       "ip" int,
       "size" int,
       "archived" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'investment_document_entity'
    );
COMMENT on COLUMN "_investment_document_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_document_entity"."investment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_document_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_document_entity"."user_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investment_document_entity"."remote_addr" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_investment_document_entity"."section_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_document_entity"."file_attachment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_document_entity"."filename" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_investment_document_entity"."description" IS $$remote type: text$$;
COMMENT on COLUMN "_investment_document_entity"."ip" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_document_entity"."size" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_document_entity"."archived" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_investment_document_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_investment_document_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_investment_document_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment_document_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "investment_document_entity" as
          select "id",
            "investment_id",
            "user_id",
            "user_name",
            "remote_addr",
            "section_id",
            "file_attachment_id",
            "filename",
            "description",
            "ip",
            "size",
            "archived",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_investment_document_entity"
    ;

    DROP VIEW IF EXISTS "investment_entity";

    DROP FOREIGN TABLE IF EXISTS "_investment_entity";
    CREATE FOREIGN TABLE "_investment_entity"
      ("id" int,
       "display_id" char(25),
       "title" text,
       "type" varchar(100),
       "mod_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'investment_entity'
    );
COMMENT on COLUMN "_investment_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_entity"."display_id" IS $$remote type: char(25)$$;
COMMENT on COLUMN "_investment_entity"."title" IS $$remote type: char(255)$$;
COMMENT on COLUMN "_investment_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_investment_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_investment_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "investment_entity" as
          select "id",
            "display_id",
            "title",
            "type",
            "mod_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_investment_entity"
    ;

    DROP VIEW IF EXISTS "investment_position_entity";

    DROP FOREIGN TABLE IF EXISTS "_investment_position_entity";
    CREATE FOREIGN TABLE "_investment_position_entity"
      ("id" int,
       "holding_account_id" int,
       "loan_id" int,
       "position_type" char(64),
       "effective_date" text,
       "priority" int,
       "amount_purchased" decimal(11,2),
       "amount_paid" decimal(11,2),
       "discount_fee" decimal(11,2),
       "discount_calc_type" char(64),
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'investment_position_entity'
    );
COMMENT on COLUMN "_investment_position_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_investment_position_entity"."holding_account_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_position_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment_position_entity"."position_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_investment_position_entity"."effective_date" IS $$remote type: date$$;
COMMENT on COLUMN "_investment_position_entity"."priority" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_investment_position_entity"."amount_purchased" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_investment_position_entity"."amount_paid" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_investment_position_entity"."discount_fee" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_investment_position_entity"."discount_calc_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_investment_position_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment_position_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment_position_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "investment_position_entity" as
          select "id",
            "holding_account_id",
            "loan_id",
            "position_type",
            nullif("effective_date", '0000-00-00')::date as "effective_date",
            "priority",
            "amount_purchased",
            "amount_paid",
            "discount_fee",
            "discount_calc_type",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_investment_position_entity"
    ;

    DROP VIEW IF EXISTS "investment__portfolio";

    DROP FOREIGN TABLE IF EXISTS "_investment__portfolio";
    CREATE FOREIGN TABLE "_investment__portfolio"
      ("investment_id" int,
       "portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'investment__portfolio'
    );
COMMENT on COLUMN "_investment__portfolio"."investment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment__portfolio"."portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment__portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment__portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment__portfolio"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "investment__portfolio" as
          select "investment_id",
            "portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_investment__portfolio"
    ;

    DROP VIEW IF EXISTS "investment__sub_portfolio";

    DROP FOREIGN TABLE IF EXISTS "_investment__sub_portfolio";
    CREATE FOREIGN TABLE "_investment__sub_portfolio"
      ("investment_id" int,
       "sub_portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'investment__sub_portfolio'
    );
COMMENT on COLUMN "_investment__sub_portfolio"."investment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment__sub_portfolio"."sub_portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investment__sub_portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment__sub_portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investment__sub_portfolio"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "investment__sub_portfolio" as
          select "investment_id",
            "sub_portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_investment__sub_portfolio"
    ;

    DROP VIEW IF EXISTS "investor_document_entity";

    DROP FOREIGN TABLE IF EXISTS "_investor_document_entity";
    CREATE FOREIGN TABLE "_investor_document_entity"
      ("id" int,
       "customer_id" int,
       "section_id" int,
       "user_id" int,
       "user_name" text,
       "remote_addr" char(20),
       "file_name" text,
       "description" text,
       "size" int,
       "file_attachment_id" int,
       "archived" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'investor_document_entity'
    );
COMMENT on COLUMN "_investor_document_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investor_document_entity"."customer_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_investor_document_entity"."section_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investor_document_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investor_document_entity"."user_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_document_entity"."remote_addr" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_investor_document_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_document_entity"."description" IS $$remote type: text$$;
COMMENT on COLUMN "_investor_document_entity"."size" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investor_document_entity"."file_attachment_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_investor_document_entity"."archived" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_investor_document_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_investor_document_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_investor_document_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investor_document_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "investor_document_entity" as
          select "id",
            "customer_id",
            "section_id",
            "user_id",
            "user_name",
            "remote_addr",
            "file_name",
            "description",
            "size",
            "file_attachment_id",
            "archived",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_investor_document_entity"
    ;

    DROP VIEW IF EXISTS "investor_entity";

    DROP FOREIGN TABLE IF EXISTS "_investor_entity";
    CREATE FOREIGN TABLE "_investor_entity"
      ("id" int,
       "custom_id" text,
       "customer_type" char(100),
       "status" text,
       "first_name" varchar(50),
       "last_name" varchar(50),
       "middle_name" varchar(50),
       "birth_date" bytea,
       "gender" char(100),
       "generation_code" char(100),
       "email" text,
       "ssn" bytea,
       "driver_license" varchar(50),
       "company_name" text,
       "contact_name" text,
       "customer_id_type" char(100),
       "customer_id" bytea,
       "credit_limit" decimal(10,2),
       "access_username" text,
       "access_password" text,
       "primary_address_id" int,
       "mail_address_id" int,
       "has_avatar" int,
       "ofac_match" int,
       "ofac_tested" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'investor_entity'
    );
COMMENT on COLUMN "_investor_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_investor_entity"."custom_id" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_entity"."customer_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_investor_entity"."status" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_entity"."first_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_investor_entity"."last_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_investor_entity"."middle_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_investor_entity"."birth_date" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_investor_entity"."gender" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_investor_entity"."generation_code" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_investor_entity"."email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_entity"."ssn" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_investor_entity"."driver_license" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_investor_entity"."company_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_entity"."contact_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_entity"."customer_id_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_investor_entity"."customer_id" IS $$remote type: varbinary(255)$$;
COMMENT on COLUMN "_investor_entity"."credit_limit" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_investor_entity"."access_username" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_entity"."access_password" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_entity"."primary_address_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investor_entity"."mail_address_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_investor_entity"."has_avatar" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_investor_entity"."ofac_match" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_investor_entity"."ofac_tested" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_investor_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investor_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investor_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_investor_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "investor_entity" as
          select "id",
            "custom_id",
            "customer_type",
            "status",
            "first_name",
            "last_name",
            "middle_name",
            "birth_date",
            "gender",
            "generation_code",
            "email",
            "ssn",
            "driver_license",
            "company_name",
            "contact_name",
            "customer_id_type",
            "customer_id",
            "credit_limit",
            "access_username",
            "access_password",
            "primary_address_id",
            "mail_address_id",
            "has_avatar",
            "ofac_match",
            "ofac_tested",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_investor_entity"
    ;

    DROP VIEW IF EXISTS "investor_status_entity";

    DROP FOREIGN TABLE IF EXISTS "_investor_status_entity";
    CREATE FOREIGN TABLE "_investor_status_entity"
      ("id" int,
       "title" text,
       "slug" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'investor_status_entity'
    );
COMMENT on COLUMN "_investor_status_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_investor_status_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_status_entity"."slug" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_investor_status_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investor_status_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_investor_status_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_investor_status_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "investor_status_entity" as
          select "id",
            "title",
            "slug",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_investor_status_entity"
    ;

    DROP VIEW IF EXISTS "iprestriction_entity";

    DROP FOREIGN TABLE IF EXISTS "_iprestriction_entity";
    CREATE FOREIGN TABLE "_iprestriction_entity"
      ("id" int,
       "name" varchar(100),
       "black_list_type" int,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'iprestriction_entity'
    );
COMMENT on COLUMN "_iprestriction_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_iprestriction_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_iprestriction_entity"."black_list_type" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_iprestriction_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_iprestriction_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_iprestriction_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "iprestriction_entity" as
          select "id",
            "name",
            "black_list_type",
            "active",
            "deleted",
            "lastupdated" from "_iprestriction_entity"
    ;

    DROP VIEW IF EXISTS "iprestriction_entry_entity";

    DROP FOREIGN TABLE IF EXISTS "_iprestriction_entry_entity";
    CREATE FOREIGN TABLE "_iprestriction_entry_entity"
      ("id" int,
       "iprestriction_id" int,
       "ip" varchar(20),
       "deleted" bit,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'iprestriction_entry_entity'
    );
COMMENT on COLUMN "_iprestriction_entry_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_iprestriction_entry_entity"."iprestriction_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_iprestriction_entry_entity"."ip" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_iprestriction_entry_entity"."deleted" IS $$remote type: bit(1)$$;
COMMENT on COLUMN "_iprestriction_entry_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "iprestriction_entry_entity" as
          select "id",
            "iprestriction_id",
            "ip",
            "deleted",
            "lastupdated" from "_iprestriction_entry_entity"
    ;

    DROP VIEW IF EXISTS "last_loan_payment_transaction_view";

    DROP FOREIGN TABLE IF EXISTS "_last_loan_payment_transaction_view";
    CREATE FOREIGN TABLE "_last_loan_payment_transaction_view"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "tx_id" char(40),
       "mod_id" int,
       "date" text,
       "period" int,
       "period_start" text,
       "period_end" text,
       "title" text,
       "type" char(20),
       "info_only" int,
       "info_details" text,
       "payment_id" bigint,
       "payment_display_id" bigint,
       "payment_amount" decimal(10,2),
       "payment_i" decimal(10,2),
       "payment_p" decimal(10,2),
       "payment_d" decimal(10,2),
       "payment_f" decimal(10,2),
       "payment_e" decimal(10,2),
       "payment_e_breakdown" text,
       "fees_paid_details" text,
       "charge_amount" decimal(10,2),
       "charge_i" decimal(10,2),
       "charge_p" decimal(10,2),
       "charge_d" decimal(10,2),
       "charge_f" decimal(10,2),
       "charge_e" decimal(10,2),
       "charge_e_breakdown" text,
       "future" int,
       "principalonly" int,
       "advancement" int,
       "payoff_fee" int,
       "charge_off" int,
       "payment_type" int,
       "adb_days" int,
       "adb" decimal(10,2),
       "principal_balance" decimal(10,2),
       "displayorder" decimal(10,2),
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'last_loan_payment_transaction_view'
    );
COMMENT on COLUMN "_last_loan_payment_transaction_view"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."tx_id" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."info_only" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."info_details" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_display_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."fees_paid_details" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."charge_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."charge_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."charge_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."charge_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."charge_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."charge_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."charge_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."future" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."principalonly" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."advancement" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payoff_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."charge_off" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."payment_type" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."adb_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."adb" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."principal_balance" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."displayorder" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_last_loan_payment_transaction_view"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "last_loan_payment_transaction_view" as
          select "id",
            "entity_id",
            "entity_type",
            "tx_id",
            "mod_id",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "period",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "title",
            "type",
            "info_only",
            "info_details",
            "payment_id",
            "payment_display_id",
            "payment_amount",
            "payment_i",
            "payment_p",
            "payment_d",
            "payment_f",
            "payment_e",
            "payment_e_breakdown",
            "fees_paid_details",
            "charge_amount",
            "charge_i",
            "charge_p",
            "charge_d",
            "charge_f",
            "charge_e",
            "charge_e_breakdown",
            "future",
            "principalonly",
            "advancement",
            "payoff_fee",
            "charge_off",
            "payment_type",
            "adb_days",
            "adb",
            "principal_balance",
            "displayorder",
            "deleted" from "_last_loan_payment_transaction_view"
    ;

    DROP VIEW IF EXISTS "linked_info__entity";

    DROP FOREIGN TABLE IF EXISTS "_linked_info__entity";
    CREATE FOREIGN TABLE "_linked_info__entity"
      ("id" int,
       "linked_loan" int,
       "entity_type" varchar(100),
       "entity_id" int,
       "linked_entity_id" int,
       "direction" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'linked_info__entity'
    );
COMMENT on COLUMN "_linked_info__entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_linked_info__entity"."linked_loan" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_linked_info__entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_linked_info__entity"."entity_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_linked_info__entity"."linked_entity_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_linked_info__entity"."direction" IS $$remote type: enum('To','From')$$;
COMMENT on COLUMN "_linked_info__entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_linked_info__entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "linked_info__entity" as
          select "id",
            "linked_loan",
            "entity_type",
            "entity_id",
            "linked_entity_id",
            "direction",
            "deleted",
            "lastupdated" from "_linked_info__entity"
    ;

    DROP VIEW IF EXISTS "linked_loan_option_entity";

    DROP FOREIGN TABLE IF EXISTS "_linked_loan_option_entity";
    CREATE FOREIGN TABLE "_linked_loan_option_entity"
      ("id" int,
       "title" varchar(100),
       "description" text,
       "entity_type" varchar(100),
       "rules" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'linked_loan_option_entity'
    );
COMMENT on COLUMN "_linked_loan_option_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_linked_loan_option_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_linked_loan_option_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_linked_loan_option_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_linked_loan_option_entity"."rules" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_linked_loan_option_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_linked_loan_option_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_linked_loan_option_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_linked_loan_option_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "linked_loan_option_entity" as
          select "id",
            "title",
            "description",
            "entity_type",
            "rules",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_linked_loan_option_entity"
    ;

    DROP VIEW IF EXISTS "linked_loan__entity";

    DROP FOREIGN TABLE IF EXISTS "_linked_loan__entity";
    CREATE FOREIGN TABLE "_linked_loan__entity"
      ("id" int,
       "loan" int,
       "linked_loan" int,
       "option_id" int,
       "value" int,
       "updated" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'linked_loan__entity'
    );
COMMENT on COLUMN "_linked_loan__entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_linked_loan__entity"."loan" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_linked_loan__entity"."linked_loan" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_linked_loan__entity"."option_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_linked_loan__entity"."value" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_linked_loan__entity"."updated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_linked_loan__entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "linked_loan__entity" as
          select "id",
            "loan",
            "linked_loan",
            "option_id",
            "value",
            nullif("updated", '0000-00-00 00:00:00')::timestamp as "updated",
            "deleted" from "_linked_loan__entity"
    ;

    DROP VIEW IF EXISTS "link_entity";

    DROP FOREIGN TABLE IF EXISTS "_link_entity";
    CREATE FOREIGN TABLE "_link_entity"
      ("id" int,
       "type" varchar(100),
       "title" text,
       "link" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'link_entity'
    );
COMMENT on COLUMN "_link_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_link_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_link_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_link_entity"."link" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_link_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_link_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_link_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_link_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "link_entity" as
          select "id",
            "type",
            "title",
            "link",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_link_entity"
    ;

    DROP VIEW IF EXISTS "loan_active_time_tx";

    DROP FOREIGN TABLE IF EXISTS "_loan_active_time_tx";
    CREATE FOREIGN TABLE "_loan_active_time_tx"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "tx_id" char(40),
       "date" text,
       "period" int,
       "period_start" text,
       "period_end" text,
       "title" text,
       "type" char(20),
       "charge_amount" decimal(10,2),
       "charge_i" decimal(10,2),
       "charge_p" decimal(10,2),
       "charge_d" decimal(10,2),
       "charge_f" decimal(10,2),
       "charge_e" decimal(10,2),
       "charge_e_breakdown" text,
       "adb_days" int,
       "adb" decimal(10,2),
       "principal_balance" decimal(10,2),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_active_time_tx'
    );
COMMENT on COLUMN "_loan_active_time_tx"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_active_time_tx"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_active_time_tx"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_active_time_tx"."tx_id" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_active_time_tx"."date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_active_time_tx"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_active_time_tx"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_active_time_tx"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_active_time_tx"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_active_time_tx"."type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_active_time_tx"."charge_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_active_time_tx"."charge_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_active_time_tx"."charge_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_active_time_tx"."charge_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_active_time_tx"."charge_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_active_time_tx"."charge_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_active_time_tx"."charge_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_active_time_tx"."adb_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_active_time_tx"."adb" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_active_time_tx"."principal_balance" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_active_time_tx"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_active_time_tx"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_active_time_tx" as
          select "id",
            "entity_id",
            "entity_type",
            "tx_id",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "period",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "title",
            "type",
            "charge_amount",
            "charge_i",
            "charge_p",
            "charge_d",
            "charge_f",
            "charge_e",
            "charge_e_breakdown",
            "adb_days",
            "adb",
            "principal_balance",
            "deleted",
            "lastupdated" from "_loan_active_time_tx"
    ;

    DROP VIEW IF EXISTS "loan_advancement_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_advancement_entity";
    CREATE FOREIGN TABLE "_loan_advancement_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "title" text,
       "date" text,
       "amount" decimal(11,2),
       "category" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_advancement_entity'
    );
COMMENT on COLUMN "_loan_advancement_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_advancement_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_advancement_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_advancement_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_advancement_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_advancement_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_advancement_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_advancement_entity"."category" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_advancement_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_advancement_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_advancement_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_advancement_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            "title",
            nullif("date", '0000-00-00')::date as "date",
            "amount",
            "category",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_loan_advancement_entity"
    ;

    DROP VIEW IF EXISTS "loan_apd_adjustment_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_apd_adjustment_entity";
    CREATE FOREIGN TABLE "_loan_apd_adjustment_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "date" text,
       "type" char(40),
       "dollar_amount" decimal(11,2),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_apd_adjustment_entity'
    );
COMMENT on COLUMN "_loan_apd_adjustment_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_apd_adjustment_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_apd_adjustment_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_apd_adjustment_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_apd_adjustment_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_apd_adjustment_entity"."type" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_apd_adjustment_entity"."dollar_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_apd_adjustment_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_apd_adjustment_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_apd_adjustment_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            nullif("date", '0000-00-00')::date as "date",
            "type",
            "dollar_amount",
            "deleted",
            "lastupdated" from "_loan_apd_adjustment_entity"
    ;

    DROP VIEW IF EXISTS "loan_autopay_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_autopay_entity";
    CREATE FOREIGN TABLE "_loan_autopay_entity"
      ("id" int,
       "loan_id" int,
       "name" text,
       "type" char(100),
       "status" char(100),
       "apply_date" text,
       "process_datetime" text,
       "original_process_datetime" text,
       "original_apply_date" text,
       "amount_type" char(100),
       "amount" decimal(10,2),
       "payment_type_id" int,
       "process_current" int,
       "charge_service_fee" int,
       "retry_days" int,
       "retry_count" int,
       "post_payment_update_apply_date" int,
       "recurring_frequency" char(100),
       "recurring_periods" int,
       "recurring_date_option" char(64),
       "scheduling_type" char(64),
       "last_dom_enabled" int,
       "days_in_period" char(100),
       "payment_extra_towards" char(100),
       "payment_fee" decimal(6,2),
       "primary_payment_method_id" int,
       "secondary_payment_method_id" int,
       "additional_payment_method_id" int,
       "payment_method_auth_type" char(100),
       "payoff_adjustment" int,
       "process_zero_or_negative_balance" int,
       "charge_off_recovery" int,
       "mc_processor" text,
       "cc_processor" int,
       "ba_processor" int,
       "deleted" int,
       "created" text,
       "last_updated" text,
       "active" int,
       "queued" int,
       "last_payment_extra_towards" varchar(100))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_autopay_entity'
    );
COMMENT on COLUMN "_loan_autopay_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_loan_autopay_entity"."loan_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_loan_autopay_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_autopay_entity"."type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity"."status" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity"."apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_autopay_entity"."process_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_autopay_entity"."original_process_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_autopay_entity"."original_apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_autopay_entity"."amount_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity"."amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_autopay_entity"."payment_type_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity"."process_current" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity"."charge_service_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity"."retry_days" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity"."retry_count" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity"."post_payment_update_apply_date" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity"."recurring_frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity"."recurring_periods" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity"."recurring_date_option" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_loan_autopay_entity"."scheduling_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_loan_autopay_entity"."last_dom_enabled" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity"."days_in_period" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity"."payment_extra_towards" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity"."payment_fee" IS $$remote type: decimal(6,2)$$;
COMMENT on COLUMN "_loan_autopay_entity"."primary_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity"."secondary_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity"."additional_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity"."payment_method_auth_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity"."payoff_adjustment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_autopay_entity"."process_zero_or_negative_balance" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_autopay_entity"."charge_off_recovery" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_autopay_entity"."mc_processor" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_autopay_entity"."cc_processor" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_autopay_entity"."ba_processor" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_autopay_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_autopay_entity"."last_updated" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_autopay_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity"."queued" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_autopay_entity"."last_payment_extra_towards" IS $$remote type: varchar(100)$$;
    CREATE VIEW "loan_autopay_entity" as
          select "id",
            "loan_id",
            "name",
            "type",
            "status",
            nullif("apply_date", '0000-00-00')::date as "apply_date",
            nullif("process_datetime", '0000-00-00 00:00:00')::timestamp as "process_datetime",
            nullif("original_process_datetime", '0000-00-00 00:00:00')::timestamp as "original_process_datetime",
            nullif("original_apply_date", '0000-00-00')::date as "original_apply_date",
            "amount_type",
            "amount",
            "payment_type_id",
            "process_current",
            "charge_service_fee",
            "retry_days",
            "retry_count",
            "post_payment_update_apply_date",
            "recurring_frequency",
            "recurring_periods",
            "recurring_date_option",
            "scheduling_type",
            "last_dom_enabled",
            "days_in_period",
            "payment_extra_towards",
            "payment_fee",
            "primary_payment_method_id",
            "secondary_payment_method_id",
            "additional_payment_method_id",
            "payment_method_auth_type",
            "payoff_adjustment",
            "process_zero_or_negative_balance",
            "charge_off_recovery",
            "mc_processor",
            "cc_processor",
            "ba_processor",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            nullif("last_updated", '0000-00-00 00:00:00')::timestamp as "last_updated",
            "active",
            "queued",
            "last_payment_extra_towards" from "_loan_autopay_entity"
    ;


    DROP VIEW IF EXISTS "loan_autopay_entity_old";

    DROP FOREIGN TABLE IF EXISTS "_loan_autopay_entity_old";
    CREATE FOREIGN TABLE "_loan_autopay_entity_old"
      ("id" int,
       "loan_id" int,
       "name" text,
       "type" char(100),
       "status" char(100),
       "apply_date" text,
       "process_datetime" text,
       "original_process_datetime" text,
       "amount_type" char(100),
       "amount" decimal(10,2),
       "payment_type_id" int,
       "process_current" int,
       "charge_service_fee" int,
       "retry_days" int,
       "retry_count" int,
       "post_payment_update_apply_date" int,
       "recurring_frequency" char(100),
       "recurring_periods" int,
       "scheduling_type" char(64),
       "last_dom_enabled" int,
       "days_in_period" char(100),
       "payment_extra_towards" char(100),
       "payment_fee" decimal(6,2),
       "primary_payment_method_id" int,
       "secondary_payment_method_id" int,
       "additional_payment_method_id" int,
       "payment_method_auth_type" char(100),
       "payoff_adjustment" int,
       "charge_off_recovery" int,
       "mc_processor" text,
       "security" char(3),
       "owner" int,
       "deleted" int,
       "created" text,
       "last_updated" text,
       "active" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_autopay_entity_old'
    );
COMMENT on COLUMN "_loan_autopay_entity_old"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."loan_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."status" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."process_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."original_process_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."amount_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."payment_type_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."process_current" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."charge_service_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."retry_days" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."retry_count" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."post_payment_update_apply_date" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."recurring_frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."recurring_periods" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."scheduling_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."last_dom_enabled" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."days_in_period" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."payment_extra_towards" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."payment_fee" IS $$remote type: decimal(6,2)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."primary_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."secondary_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."additional_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."payment_method_auth_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."payoff_adjustment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."charge_off_recovery" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."mc_processor" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."security" IS $$remote type: char(3)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."owner" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."last_updated" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_autopay_entity_old"."active" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan_autopay_entity_old" as
          select "id",
            "loan_id",
            "name",
            "type",
            "status",
            nullif("apply_date", '0000-00-00')::date as "apply_date",
            nullif("process_datetime", '0000-00-00 00:00:00')::timestamp as "process_datetime",
            nullif("original_process_datetime", '0000-00-00 00:00:00')::timestamp as "original_process_datetime",
            "amount_type",
            "amount",
            "payment_type_id",
            "process_current",
            "charge_service_fee",
            "retry_days",
            "retry_count",
            "post_payment_update_apply_date",
            "recurring_frequency",
            "recurring_periods",
            "scheduling_type",
            "last_dom_enabled",
            "days_in_period",
            "payment_extra_towards",
            "payment_fee",
            "primary_payment_method_id",
            "secondary_payment_method_id",
            "additional_payment_method_id",
            "payment_method_auth_type",
            "payoff_adjustment",
            "charge_off_recovery",
            "mc_processor",
            "security",
            "owner",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            nullif("last_updated", '0000-00-00 00:00:00')::timestamp as "last_updated",
            "active" from "_loan_autopay_entity_old"
    ;

    DROP VIEW IF EXISTS "loan_chargeoff_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_chargeoff_entity";
    CREATE FOREIGN TABLE "_loan_chargeoff_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "payment_id" int,
       "credit_id" int,
       "updated" text,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_chargeoff_entity'
    );
COMMENT on COLUMN "_loan_chargeoff_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_chargeoff_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_chargeoff_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_chargeoff_entity"."payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_chargeoff_entity"."credit_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_chargeoff_entity"."updated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_chargeoff_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_chargeoff_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "loan_chargeoff_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "payment_id",
            "credit_id",
            nullif("updated", '0000-00-00 00:00:00')::timestamp as "updated",
            "active",
            "deleted" from "_loan_chargeoff_entity"
    ;

    DROP VIEW IF EXISTS "loan_chargeoff__transactions";

    DROP FOREIGN TABLE IF EXISTS "_loan_chargeoff__transactions";
    CREATE FOREIGN TABLE "_loan_chargeoff__transactions"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "payment_id" int,
       "credit_id" int,
       "date" text,
       "type" char(30),
       "charge_off_amount" decimal(11,2),
       "recovery_amount" decimal(11,2),
       "charge_off_balance" decimal(11,2),
       "sort_order" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_chargeoff__transactions'
    );
COMMENT on COLUMN "_loan_chargeoff__transactions"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."credit_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."charge_off_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."recovery_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."charge_off_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."sort_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_chargeoff__transactions"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_chargeoff__transactions" as
          select "id",
            "entity_id",
            "entity_type",
            "payment_id",
            "credit_id",
            nullif("date", '0000-00-00')::date as "date",
            "type",
            "charge_off_amount",
            "recovery_amount",
            "charge_off_balance",
            "sort_order",
            "deleted",
            "lastupdated" from "_loan_chargeoff__transactions"
    ;

    DROP VIEW IF EXISTS "loan_collected_stats_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_collected_stats_view";
    CREATE FOREIGN TABLE "_loan_collected_stats_view"
      ("entity_id" int,
       "interest" decimal(32,2),
       "principal" decimal(32,2),
       "discount" decimal(32,2),
       "fees" decimal(32,2),
       "escrow" decimal(32,2),
       "total" decimal(36,2))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_collected_stats_view'
    );
COMMENT on COLUMN "_loan_collected_stats_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_collected_stats_view"."interest" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_collected_stats_view"."principal" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_collected_stats_view"."discount" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_collected_stats_view"."fees" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_collected_stats_view"."escrow" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_collected_stats_view"."total" IS $$remote type: decimal(36,2)$$;
    CREATE VIEW "loan_collected_stats_view" as
          select "entity_id",
            "interest",
            "principal",
            "discount",
            "fees",
            "escrow",
            "total" from "_loan_collected_stats_view"
    ;

    DROP VIEW IF EXISTS "loan_credit_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_credit_entity";
    CREATE FOREIGN TABLE "_loan_credit_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "import_id" varchar(15),
       "mod_id" int,
       "title" text,
       "date" text,
       "amount" decimal(11,2),
       "category" int,
       "payment_type" int,
       "custom_application" text,
       "reset_past_due" int,
       "apd_adjustment_id" int,
       "dpd_adjustment_id" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_credit_entity'
    );
COMMENT on COLUMN "_loan_credit_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_credit_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_credit_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_credit_entity"."import_id" IS $$remote type: varchar(15)$$;
COMMENT on COLUMN "_loan_credit_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_credit_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_credit_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_credit_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_credit_entity"."category" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_credit_entity"."payment_type" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_credit_entity"."custom_application" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_loan_credit_entity"."reset_past_due" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_credit_entity"."apd_adjustment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_credit_entity"."dpd_adjustment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_credit_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_credit_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_credit_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_credit_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "import_id",
            "mod_id",
            "title",
            nullif("date", '0000-00-00')::date as "date",
            "amount",
            "category",
            "payment_type",
            "custom_application",
            "reset_past_due",
            "apd_adjustment_id",
            "dpd_adjustment_id",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_loan_credit_entity"
    ;

    DROP VIEW IF EXISTS "loan_curtail_date_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_curtail_date_entity";
    CREATE FOREIGN TABLE "_loan_curtail_date_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "date" text,
       "percent" decimal(11,7),
       "amount" decimal(11,2),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_curtail_date_entity'
    );
COMMENT on COLUMN "_loan_curtail_date_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_curtail_date_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_curtail_date_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_curtail_date_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_curtail_date_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_curtail_date_entity"."percent" IS $$remote type: decimal(11,7)$$;
COMMENT on COLUMN "_loan_curtail_date_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_curtail_date_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_curtail_date_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_curtail_date_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            nullif("date", '0000-00-00')::date as "date",
            "percent",
            "amount",
            "deleted",
            "lastupdated" from "_loan_curtail_date_entity"
    ;

    DROP VIEW IF EXISTS "loan_delinquency_history_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_delinquency_history_entity";
    CREATE FOREIGN TABLE "_loan_delinquency_history_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "date" text,
       "dpd" int,
       "code" char(5),
       "first_delinquency_date" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_delinquency_history_entity'
    );
COMMENT on COLUMN "_loan_delinquency_history_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."dpd" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."code" IS $$remote type: char(5)$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."first_delinquency_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_delinquency_history_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_delinquency_history_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            nullif("date", '0000-00-00')::date as "date",
            "dpd",
            "code",
            nullif("first_delinquency_date", '0000-00-00')::date as "first_delinquency_date",
            "deleted",
            "lastupdated" from "_loan_delinquency_history_entity"
    ;

    DROP VIEW IF EXISTS "loan_document_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_document_entity";
    CREATE FOREIGN TABLE "_loan_document_entity"
      ("id" int,
       "loan_id" int,
       "user_id" int,
       "user_name" text,
       "remote_addr" char(20),
       "section_id" int,
       "file_attachment_id" int,
       "filename" text,
       "description" text,
       "ip" int,
       "size" int,
       "customer_visible" int,
       "archived" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_document_entity'
    );
COMMENT on COLUMN "_loan_document_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_document_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_document_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_document_entity"."user_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_document_entity"."remote_addr" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_document_entity"."section_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_document_entity"."file_attachment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_document_entity"."filename" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_loan_document_entity"."description" IS $$remote type: text$$;
COMMENT on COLUMN "_loan_document_entity"."ip" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_document_entity"."size" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_document_entity"."customer_visible" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_document_entity"."archived" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_document_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_document_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_document_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_document_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_document_entity" as
          select "id",
            "loan_id",
            "user_id",
            "user_name",
            "remote_addr",
            "section_id",
            "file_attachment_id",
            "filename",
            "description",
            "ip",
            "size",
            "customer_visible",
            "archived",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_loan_document_entity"
    ;

    DROP VIEW IF EXISTS "loan_dpd_adjustment_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_dpd_adjustment_entity";
    CREATE FOREIGN TABLE "_loan_dpd_adjustment_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "date" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_dpd_adjustment_entity'
    );
COMMENT on COLUMN "_loan_dpd_adjustment_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_dpd_adjustment_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_dpd_adjustment_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_dpd_adjustment_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_dpd_adjustment_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_dpd_adjustment_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_dpd_adjustment_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_dpd_adjustment_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            nullif("date", '0000-00-00')::date as "date",
            "deleted",
            "lastupdated" from "_loan_dpd_adjustment_entity"
    ;

    DROP VIEW IF EXISTS "loan_duedate_change_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_duedate_change_entity";
    CREATE FOREIGN TABLE "_loan_duedate_change_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "original_date" text,
       "new_date" text,
       "changed_date" text,
       "due_date_on_last_dom" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_duedate_change_entity'
    );
COMMENT on COLUMN "_loan_duedate_change_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."original_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."new_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."changed_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."due_date_on_last_dom" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_duedate_change_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_duedate_change_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            nullif("original_date", '0000-00-00')::date as "original_date",
            nullif("new_date", '0000-00-00')::date as "new_date",
            nullif("changed_date", '0000-00-00')::date as "changed_date",
            "due_date_on_last_dom",
            "deleted",
            "lastupdated" from "_loan_duedate_change_entity"
    ;

    DROP VIEW IF EXISTS "loan_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_entity";
    CREATE FOREIGN TABLE "_loan_entity"
      ("id" int,
       "display_id" char(25),
       "title" text,
       "settings_id" int,
       "setup_id" int,
       "insurance_policy_id" int,
       "collateral_id" int,
       "linked_loan" int,
       "mod_id" int,
       "mod_total" int,
       "human_activity_date" text,
       "last_maint_run" text,
       "created" text,
       "lastupdated" timestamptz,
       "created_by" int,
       "active" int,
       "archived" int,
       "loan_alert" text,
       "deleted" int,
       "deleted_at" text,
       "temporary_account" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_entity'
    );
COMMENT on COLUMN "_loan_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_entity"."display_id" IS $$remote type: char(25)$$;
COMMENT on COLUMN "_loan_entity"."title" IS $$remote type: char(255)$$;
COMMENT on COLUMN "_loan_entity"."settings_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_entity"."setup_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_entity"."insurance_policy_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_entity"."collateral_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_entity"."linked_loan" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_entity"."mod_total" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_entity"."human_activity_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_entity"."last_maint_run" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_entity"."created_by" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_loan_entity"."archived" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_loan_entity"."loan_alert" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_loan_entity"."deleted_at" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_entity"."temporary_account" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "loan_entity" as
          select "id",
            "display_id",
            "title",
            "settings_id",
            "setup_id",
            "insurance_policy_id",
            "collateral_id",
            "linked_loan",
            "mod_id",
            "mod_total",
            nullif("human_activity_date", '0000-00-00')::date as "human_activity_date",
            nullif("last_maint_run", '0000-00-00 00:00:00')::timestamp as "last_maint_run",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "created_by",
            "active",
            "archived",
            "loan_alert",
            "deleted",
            nullif("deleted_at", '0000-00-00 00:00:00')::timestamp as "deleted_at",
            "temporary_account" from "_loan_entity"
    ;

    DROP VIEW IF EXISTS "loan_escrow_tx_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_escrow_tx_view";
    CREATE FOREIGN TABLE "_loan_escrow_tx_view"
      ("id" int,
       "loan_id" int,
       "disclosure_lnamt_add" int,
       "payment_application" varchar(30),
       "payoff_option" varchar(50),
       "apr_include" int,
       "schedule_include" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_escrow_tx_view'
    );
COMMENT on COLUMN "_loan_escrow_tx_view"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_escrow_tx_view"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_escrow_tx_view"."disclosure_lnamt_add" IS $$remote type: int(4)$$;
COMMENT on COLUMN "_loan_escrow_tx_view"."payment_application" IS $$remote type: varchar(30)$$;
COMMENT on COLUMN "_loan_escrow_tx_view"."payoff_option" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_loan_escrow_tx_view"."apr_include" IS $$remote type: int(4)$$;
COMMENT on COLUMN "_loan_escrow_tx_view"."schedule_include" IS $$remote type: int(4)$$;
    CREATE VIEW "loan_escrow_tx_view" as
          select "id",
            "loan_id",
            "disclosure_lnamt_add",
            "payment_application",
            "payoff_option",
            "apr_include",
            "schedule_include" from "_loan_escrow_tx_view"
    ;

    DROP VIEW IF EXISTS "loan_funding_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_funding_entity";
    CREATE FOREIGN TABLE "_loan_funding_entity"
      ("id" int,
       "loan_id" int,
       "status" varchar(45),
       "who_entity_type" varchar(100),
       "who_entity_id" int,
       "cash_drawer_id" int,
       "cash_drawer_tx_id" int,
       "payment_account_id" int,
       "payment_processor" text,
       "merchant_tx_id" varchar(45),
       "payment_id" int,
       "agent" int,
       "authorization_type" char(23),
       "method" char(31),
       "amount" decimal(11,2),
       "date" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_funding_entity'
    );
COMMENT on COLUMN "_loan_funding_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_funding_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_funding_entity"."status" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_loan_funding_entity"."who_entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_funding_entity"."who_entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_funding_entity"."cash_drawer_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_funding_entity"."cash_drawer_tx_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_funding_entity"."payment_account_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_funding_entity"."payment_processor" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_funding_entity"."merchant_tx_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_loan_funding_entity"."payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_funding_entity"."agent" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_funding_entity"."authorization_type" IS $$remote type: char(23)$$;
COMMENT on COLUMN "_loan_funding_entity"."method" IS $$remote type: char(31)$$;
COMMENT on COLUMN "_loan_funding_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_funding_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_funding_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_funding_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_funding_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_loan_funding_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "loan_funding_entity" as
          select "id",
            "loan_id",
            "status",
            "who_entity_type",
            "who_entity_id",
            "cash_drawer_id",
            "cash_drawer_tx_id",
            "payment_account_id",
            "payment_processor",
            "merchant_tx_id",
            "payment_id",
            "agent",
            "authorization_type",
            "method",
            "amount",
            nullif("date", '0000-00-00')::date as "date",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_loan_funding_entity"
    ;

    DROP VIEW IF EXISTS "loan_future_stats_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_future_stats_view";
    CREATE FOREIGN TABLE "_loan_future_stats_view"
      ("entity_id" int,
       "paymentinterest" decimal(32,2),
       "paymentfees" decimal(32,2),
       "paymentprincipal" decimal(32,2),
       "paymentdiscount" decimal(32,2),
       "paymentescrow" decimal(32,2))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_future_stats_view'
    );
COMMENT on COLUMN "_loan_future_stats_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_future_stats_view"."paymentinterest" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_future_stats_view"."paymentfees" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_future_stats_view"."paymentprincipal" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_future_stats_view"."paymentdiscount" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_future_stats_view"."paymentescrow" IS $$remote type: decimal(32,2)$$;
    CREATE VIEW "loan_future_stats_view" as
          select "entity_id",
            "paymentinterest",
            "paymentfees",
            "paymentprincipal",
            "paymentdiscount",
            "paymentescrow" from "_loan_future_stats_view"
    ;

    DROP VIEW IF EXISTS "loan_insurance_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_insurance_entity";
    CREATE FOREIGN TABLE "_loan_insurance_entity"
      ("id" int,
       "company_name" text,
       "insured" text,
       "agent_name" text,
       "policy_number" char(20),
       "phone" char(15),
       "deductible" char(15),
       "start_date" text,
       "end_date" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_insurance_entity'
    );
COMMENT on COLUMN "_loan_insurance_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_insurance_entity"."company_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_insurance_entity"."insured" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_insurance_entity"."agent_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_insurance_entity"."policy_number" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_insurance_entity"."phone" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_loan_insurance_entity"."deductible" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_loan_insurance_entity"."start_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_insurance_entity"."end_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_insurance_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_insurance_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_insurance_entity" as
          select "id",
            "company_name",
            "insured",
            "agent_name",
            "policy_number",
            "phone",
            "deductible",
            nullif("start_date", '0000-00-00')::date as "start_date",
            nullif("end_date", '0000-00-00')::date as "end_date",
            "deleted",
            "lastupdated" from "_loan_insurance_entity"
    ;

    DROP VIEW IF EXISTS "loan_last_payment_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_last_payment_view";
    CREATE FOREIGN TABLE "_loan_last_payment_view"
      ("loan_id" int,
       "payment_id" int,
       "date" text,
       "amount" decimal(11,2),
       "interest" decimal(32,2),
       "principal" decimal(33,2),
       "discount" decimal(32,2),
       "fees" decimal(32,2),
       "escrow" decimal(32,2))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_last_payment_view'
    );
COMMENT on COLUMN "_loan_last_payment_view"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_last_payment_view"."payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_last_payment_view"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_last_payment_view"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_last_payment_view"."interest" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_last_payment_view"."principal" IS $$remote type: decimal(33,2)$$;
COMMENT on COLUMN "_loan_last_payment_view"."discount" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_last_payment_view"."fees" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_last_payment_view"."escrow" IS $$remote type: decimal(32,2)$$;
    CREATE VIEW "loan_last_payment_view" as
          select "loan_id",
            "payment_id",
            nullif("date", '0000-00-00')::date as "date",
            "amount",
            "interest",
            "principal",
            "discount",
            "fees",
            "escrow" from "_loan_last_payment_view"
    ;

    DROP VIEW IF EXISTS "loan_late_fee__buckets";

    DROP FOREIGN TABLE IF EXISTS "_loan_late_fee__buckets";
    CREATE FOREIGN TABLE "_loan_late_fee__buckets"
      ("loan_id" int,
       "subset" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_late_fee__buckets'
    );
COMMENT on COLUMN "_loan_late_fee__buckets"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_late_fee__buckets"."subset" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_late_fee__buckets"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_late_fee__buckets"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_late_fee__buckets"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan_late_fee__buckets" as
          select "loan_id",
            "subset",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_loan_late_fee__buckets"
    ;

    DROP VIEW IF EXISTS "loan_modification_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_modification_entity";
    CREATE FOREIGN TABLE "_loan_modification_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "created" text,
       "lastupdated" timestamptz,
       "date" text,
       "parent" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_modification_entity'
    );
COMMENT on COLUMN "_loan_modification_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_modification_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_modification_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_modification_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_modification_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_modification_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_modification_entity"."parent" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_modification_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "loan_modification_entity" as
          select "id",
            "entity_id",
            "entity_type",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            nullif("date", '0000-00-00')::date as "date",
            "parent",
            "deleted" from "_loan_modification_entity"
    ;

    DROP VIEW IF EXISTS "loan_next_forecast_payment_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_next_forecast_payment_view";
    CREATE FOREIGN TABLE "_loan_next_forecast_payment_view"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "tx_id" char(40),
       "mod_id" int,
       "date" text,
       "period" int,
       "period_start" text,
       "period_end" text,
       "title" text,
       "type" char(20),
       "info_only" int,
       "info_details" text,
       "payment_id" bigint,
       "payment_display_id" bigint,
       "payment_amount" decimal(10,2),
       "payment_i" decimal(10,2),
       "payment_p" decimal(10,2),
       "payment_d" decimal(10,2),
       "payment_f" decimal(10,2),
       "payment_e" decimal(10,2),
       "payment_e_breakdown" text,
       "fees_paid_details" text,
       "charge_amount" decimal(10,2),
       "charge_i" decimal(10,2),
       "charge_p" decimal(10,2),
       "charge_d" decimal(10,2),
       "charge_f" decimal(10,2),
       "charge_e" decimal(10,2),
       "charge_e_breakdown" text,
       "future" int,
       "principalonly" int,
       "advancement" int,
       "payoff_fee" int,
       "charge_off" int,
       "payment_type" int,
       "adb_days" int,
       "adb" decimal(10,2),
       "principal_balance" decimal(10,2),
       "displayorder" decimal(10,2),
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_next_forecast_payment_view'
    );
COMMENT on COLUMN "_loan_next_forecast_payment_view"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."tx_id" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."info_only" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."info_details" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_display_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."fees_paid_details" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."charge_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."charge_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."charge_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."charge_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."charge_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."charge_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."charge_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."future" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."principalonly" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."advancement" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payoff_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."charge_off" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."payment_type" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."adb_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."adb" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."principal_balance" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."displayorder" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_forecast_payment_view"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan_next_forecast_payment_view" as
          select "id",
            "entity_id",
            "entity_type",
            "tx_id",
            "mod_id",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "period",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "title",
            "type",
            "info_only",
            "info_details",
            "payment_id",
            "payment_display_id",
            "payment_amount",
            "payment_i",
            "payment_p",
            "payment_d",
            "payment_f",
            "payment_e",
            "payment_e_breakdown",
            "fees_paid_details",
            "charge_amount",
            "charge_i",
            "charge_p",
            "charge_d",
            "charge_f",
            "charge_e",
            "charge_e_breakdown",
            "future",
            "principalonly",
            "advancement",
            "payoff_fee",
            "charge_off",
            "payment_type",
            "adb_days",
            "adb",
            "principal_balance",
            "displayorder",
            "deleted" from "_loan_next_forecast_payment_view"
    ;

    DROP VIEW IF EXISTS "loan_next_scheduled_payment_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_next_scheduled_payment_view";
    CREATE FOREIGN TABLE "_loan_next_scheduled_payment_view"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "tx_id" char(40),
       "mod_id" int,
       "date" text,
       "period" int,
       "period_start" text,
       "period_end" text,
       "title" text,
       "type" char(20),
       "info_only" int,
       "info_details" text,
       "payment_id" bigint,
       "payment_display_id" bigint,
       "payment_amount" decimal(10,2),
       "payment_i" decimal(10,2),
       "payment_p" decimal(10,2),
       "payment_d" decimal(10,2),
       "payment_f" decimal(10,2),
       "payment_e" decimal(10,2),
       "payment_e_breakdown" text,
       "fees_paid_details" text,
       "charge_amount" decimal(10,2),
       "charge_i" decimal(10,2),
       "charge_p" decimal(10,2),
       "charge_d" decimal(10,2),
       "charge_f" decimal(10,2),
       "charge_e" decimal(10,2),
       "charge_e_breakdown" text,
       "future" int,
       "principalonly" int,
       "advancement" int,
       "payoff_fee" int,
       "charge_off" int,
       "payment_type" int,
       "adb_days" int,
       "adb" decimal(10,2),
       "principal_balance" decimal(10,2),
       "displayorder" decimal(10,2),
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_next_scheduled_payment_view'
    );
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."tx_id" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."info_only" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."info_details" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_display_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."fees_paid_details" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."charge_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."charge_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."charge_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."charge_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."charge_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."charge_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."charge_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."future" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."principalonly" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."advancement" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payoff_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."charge_off" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."payment_type" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."adb_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."adb" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."principal_balance" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."displayorder" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_next_scheduled_payment_view"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan_next_scheduled_payment_view" as
          select "id",
            "entity_id",
            "entity_type",
            "tx_id",
            "mod_id",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "period",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "title",
            "type",
            "info_only",
            "info_details",
            "payment_id",
            "payment_display_id",
            "payment_amount",
            "payment_i",
            "payment_p",
            "payment_d",
            "payment_f",
            "payment_e",
            "payment_e_breakdown",
            "fees_paid_details",
            "charge_amount",
            "charge_i",
            "charge_p",
            "charge_d",
            "charge_f",
            "charge_e",
            "charge_e_breakdown",
            "future",
            "principalonly",
            "advancement",
            "payoff_fee",
            "charge_off",
            "payment_type",
            "adb_days",
            "adb",
            "principal_balance",
            "displayorder",
            "deleted" from "_loan_next_scheduled_payment_view"
    ;

    DROP VIEW IF EXISTS "loan_past_stats_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_past_stats_view";
    CREATE FOREIGN TABLE "_loan_past_stats_view"
      ("entity_id" int,
       "paymentinterest" decimal(32,2),
       "paymentfees" decimal(32,2),
       "paymentprincipal" decimal(32,2),
       "paymentdiscount" decimal(32,2),
       "paymentescrow" decimal(32,2),
       "percent_paid_off" decimal(42,6))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_past_stats_view'
    );
COMMENT on COLUMN "_loan_past_stats_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_past_stats_view"."paymentinterest" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_past_stats_view"."paymentfees" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_past_stats_view"."paymentprincipal" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_past_stats_view"."paymentdiscount" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_past_stats_view"."paymentescrow" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_past_stats_view"."percent_paid_off" IS $$remote type: decimal(42,6)$$;
    CREATE VIEW "loan_past_stats_view" as
          select "entity_id",
            "paymentinterest",
            "paymentfees",
            "paymentprincipal",
            "paymentdiscount",
            "paymentescrow",
            "percent_paid_off" from "_loan_past_stats_view"
    ;

    DROP VIEW IF EXISTS "loan_payment_seq";

    DROP FOREIGN TABLE IF EXISTS "_loan_payment_seq";
    CREATE FOREIGN TABLE "_loan_payment_seq"
      ("entity_id" int,
       "entity_type" varchar(100),
       "seq" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_payment_seq'
    );
COMMENT on COLUMN "_loan_payment_seq"."entity_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_loan_payment_seq"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_payment_seq"."seq" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_payment_seq"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_payment_seq" as
          select "entity_id",
            "entity_type",
            "seq",
            "lastupdated" from "_loan_payment_seq"
    ;

    DROP VIEW IF EXISTS "loan_portfolio_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_portfolio_view";
    CREATE FOREIGN TABLE "_loan_portfolio_view"
      ("id" int,
       "loan_id" int,
       "title" text,
       "active" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_portfolio_view'
    );
COMMENT on COLUMN "_loan_portfolio_view"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_portfolio_view"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_portfolio_view"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_portfolio_view"."active" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "loan_portfolio_view" as
          select "id",
            "loan_id",
            "title",
            "active" from "_loan_portfolio_view"
    ;

    DROP VIEW IF EXISTS "loan_promise_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_promise_entity";
    CREATE FOREIGN TABLE "_loan_promise_entity"
      ("id" int,
       "loan_id" int,
       "subject" varchar(100),
       "note" text,
       "amount" decimal(6,2),
       "fulfilled" int,
       "due_date" text,
       "fulfillment_date" text,
       "type" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "logged_by" text,
       "fulfilled_date" text,
       "fulfilled_by" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_promise_entity'
    );
COMMENT on COLUMN "_loan_promise_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_promise_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_promise_entity"."subject" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_promise_entity"."note" IS $$remote type: varchar(1000)$$;
COMMENT on COLUMN "_loan_promise_entity"."amount" IS $$remote type: decimal(6,2)$$;
COMMENT on COLUMN "_loan_promise_entity"."fulfilled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_promise_entity"."due_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_promise_entity"."fulfillment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_promise_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_promise_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_promise_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_promise_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_promise_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_promise_entity"."logged_by" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_promise_entity"."fulfilled_date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_promise_entity"."fulfilled_by" IS $$remote type: varchar(255)$$;
    CREATE VIEW "loan_promise_entity" as
          select "id",
            "loan_id",
            "subject",
            "note",
            "amount",
            "fulfilled",
            nullif("due_date", '0000-00-00')::date as "due_date",
            nullif("fulfillment_date", '0000-00-00')::date as "fulfillment_date",
            "type",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "logged_by",
            nullif("fulfilled_date", '0000-00-00 00:00:00')::timestamp as "fulfilled_date",
            "fulfilled_by" from "_loan_promise_entity"
    ;

    DROP VIEW IF EXISTS "loan_reverse_calc_settings";

    DROP FOREIGN TABLE IF EXISTS "_loan_reverse_calc_settings";
    CREATE FOREIGN TABLE "_loan_reverse_calc_settings"
      ("id" int,
       "query" text,
       "loans" text,
       "running" int,
       "updated" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_reverse_calc_settings'
    );
COMMENT on COLUMN "_loan_reverse_calc_settings"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_reverse_calc_settings"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_loan_reverse_calc_settings"."loans" IS $$remote type: text$$;
COMMENT on COLUMN "_loan_reverse_calc_settings"."running" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_reverse_calc_settings"."updated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_reverse_calc_settings"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan_reverse_calc_settings" as
          select "id",
            "query",
            "loans",
            "running",
            nullif("updated", '0000-00-00 00:00:00')::timestamp as "updated",
            "deleted" from "_loan_reverse_calc_settings"
    ;

    DROP VIEW IF EXISTS "loan_reverse_status_archive";

    DROP FOREIGN TABLE IF EXISTS "_loan_reverse_status_archive";
    CREATE FOREIGN TABLE "_loan_reverse_status_archive"
      ("loan_id" int,
       "date" date,
       "mod_id" int,
       "principal_balance" decimal(11,2),
       "payoff_fees" decimal(11,2),
       "loan_age" int,
       "amount_past_due_30" decimal(11,2),
       "days_past_due" int,
       "daily_accrued_interest" decimal(16,7),
       "due_discount" decimal(11,2),
       "due_interest" decimal(11,2),
       "due_fees" decimal(11,2),
       "due_principal" decimal(11,2),
       "due_escrows" text,
       "net_charge_off" decimal(11,2),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_reverse_status_archive'
    );
COMMENT on COLUMN "_loan_reverse_status_archive"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."payoff_fees" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."loan_age" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."amount_past_due_30" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."days_past_due" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."daily_accrued_interest" IS $$remote type: decimal(16,7)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."due_discount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."due_interest" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."due_fees" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."due_principal" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."due_escrows" IS $$remote type: text$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."net_charge_off" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_reverse_status_archive"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_reverse_status_archive" as
          select "loan_id",
            "date",
            "mod_id",
            "principal_balance",
            "payoff_fees",
            "loan_age",
            "amount_past_due_30",
            "days_past_due",
            "daily_accrued_interest",
            "due_discount",
            "due_interest",
            "due_fees",
            "due_principal",
            "due_escrows",
            "net_charge_off",
            "deleted",
            "lastupdated" from "_loan_reverse_status_archive"
    ;

    DROP VIEW IF EXISTS "loan_schedule_payments_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_schedule_payments_view";
    CREATE FOREIGN TABLE "_loan_schedule_payments_view"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "tx_id" char(40),
       "mod_id" int,
       "date" text,
       "period" int,
       "period_start" text,
       "period_end" text,
       "title" text,
       "type" char(20),
       "info_only" int,
       "info_details" text,
       "payment_id" bigint,
       "payment_display_id" bigint,
       "payment_amount" decimal(10,2),
       "payment_i" decimal(10,2),
       "payment_p" decimal(10,2),
       "payment_d" decimal(10,2),
       "payment_f" decimal(10,2),
       "payment_e" decimal(10,2),
       "payment_e_breakdown" text,
       "fees_paid_details" text,
       "charge_amount" decimal(10,2),
       "charge_i" decimal(10,2),
       "charge_p" decimal(10,2),
       "charge_d" decimal(10,2),
       "charge_f" decimal(10,2),
       "charge_e" decimal(10,2),
       "charge_e_breakdown" text,
       "future" int,
       "principalonly" int,
       "advancement" int,
       "payoff_fee" int,
       "charge_off" int,
       "payment_type" int,
       "adb_days" int,
       "adb" decimal(10,2),
       "principal_balance" decimal(10,2),
       "displayorder" decimal(10,2),
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_schedule_payments_view'
    );
COMMENT on COLUMN "_loan_schedule_payments_view"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."tx_id" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."info_only" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."info_details" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_display_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."fees_paid_details" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."charge_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."charge_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."charge_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."charge_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."charge_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."charge_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."charge_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."future" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."principalonly" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."advancement" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payoff_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."charge_off" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."payment_type" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."adb_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."adb" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."principal_balance" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."displayorder" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_schedule_payments_view"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan_schedule_payments_view" as
          select "id",
            "entity_id",
            "entity_type",
            "tx_id",
            "mod_id",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "period",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "title",
            "type",
            "info_only",
            "info_details",
            "payment_id",
            "payment_display_id",
            "payment_amount",
            "payment_i",
            "payment_p",
            "payment_d",
            "payment_f",
            "payment_e",
            "payment_e_breakdown",
            "fees_paid_details",
            "charge_amount",
            "charge_i",
            "charge_p",
            "charge_d",
            "charge_f",
            "charge_e",
            "charge_e_breakdown",
            "future",
            "principalonly",
            "advancement",
            "payoff_fee",
            "charge_off",
            "payment_type",
            "adb_days",
            "adb",
            "principal_balance",
            "displayorder",
            "deleted" from "_loan_schedule_payments_view"
    ;

    DROP VIEW IF EXISTS "loan_schedule_roll_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_schedule_roll_entity";
    CREATE FOREIGN TABLE "_loan_schedule_roll_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "term" int,
       "rate" decimal(11,2),
       "solve_using" char(40),
       "amount" decimal(11,2),
       "percent" decimal(11,2),
       "advanced_terms" int,
       "solve_for" char(40),
       "balance" decimal(11,2),
       "balance_set" decimal(11,2),
       "difference" decimal(11,2),
       "force_balloon" int,
       "last_as_final" int,
       "basic_revert" int,
       "is_curtailment" int,
       "display_order" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_schedule_roll_entity'
    );
COMMENT on COLUMN "_loan_schedule_roll_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."term" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."rate" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."solve_using" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."advanced_terms" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."solve_for" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."balance_set" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."difference" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."force_balloon" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."last_as_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."basic_revert" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."is_curtailment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."display_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_schedule_roll_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_schedule_roll_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            "term",
            "rate",
            "solve_using",
            "amount",
            "percent",
            "advanced_terms",
            "solve_for",
            "balance",
            "balance_set",
            "difference",
            "force_balloon",
            "last_as_final",
            "basic_revert",
            "is_curtailment",
            "display_order",
            "deleted",
            "lastupdated" from "_loan_schedule_roll_entity"
    ;

    DROP VIEW IF EXISTS "loan_settings_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_settings_entity";
    CREATE FOREIGN TABLE "_loan_settings_entity"
      ("id" int,
       "loan_id" int,
       "card_fee_amount" decimal(11,2),
       "card_fee_type" char(30),
       "card_fee_percent" decimal(11,2),
       "agent" int,
       "loan_status_id" int,
       "loan_sub_status_id" int,
       "source_company" int,
       "ebilling" int,
       "ecoa_code" char(30),
       "co_ecoa_code" char(30),
       "credit_status" char(30),
       "credit_bureau" char(30),
       "reporting_type" char(30),
       "secured" int,
       "autopay_enabled" int,
       "repo_date" text,
       "closed_date" text,
       "liquidation_date" text,
       "is_stoplight_manually_set" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_settings_entity'
    );
COMMENT on COLUMN "_loan_settings_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_settings_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_settings_entity"."card_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_settings_entity"."card_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_settings_entity"."card_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_settings_entity"."agent" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_settings_entity"."loan_status_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_settings_entity"."loan_sub_status_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_settings_entity"."source_company" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_settings_entity"."ebilling" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_settings_entity"."ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_settings_entity"."co_ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_settings_entity"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_settings_entity"."credit_bureau" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_settings_entity"."reporting_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_settings_entity"."secured" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_settings_entity"."autopay_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_settings_entity"."repo_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_settings_entity"."closed_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_settings_entity"."liquidation_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_settings_entity"."is_stoplight_manually_set" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_settings_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_settings_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_settings_entity" as
          select "id",
            "loan_id",
            "card_fee_amount",
            "card_fee_type",
            "card_fee_percent",
            "agent",
            "loan_status_id",
            "loan_sub_status_id",
            "source_company",
            "ebilling",
            "ecoa_code",
            "co_ecoa_code",
            "credit_status",
            "credit_bureau",
            "reporting_type",
            "secured",
            "autopay_enabled",
            nullif("repo_date", '0000-00-00')::date as "repo_date",
            nullif("closed_date", '0000-00-00')::date as "closed_date",
            nullif("liquidation_date", '0000-00-00')::date as "liquidation_date",
            "is_stoplight_manually_set",
            "deleted",
            "lastupdated" from "_loan_settings_entity"
    ;

    DROP VIEW IF EXISTS "loan_setup_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_setup_entity";
    CREATE FOREIGN TABLE "_loan_setup_entity"
      ("id" int,
       "loan_id" int,
       "mod_id" int,
       "active" int,
       "til_finance_charge" decimal(11,2),
       "til_total_of_payments" decimal(11,2),
       "til_loan_amount" decimal(11,2),
       "til_sales_price" decimal(11,2),
       "til_payment_schedule" text,
       "regz_custom_enabled" int,
       "regz_apr" decimal(11,4),
       "regz_finance_charge" decimal(11,2),
       "regz_amount_financed" decimal(11,2),
       "regz_total_of_payments" decimal(11,2),
       "apr" decimal(11,4),
       "apr_force_single_freq" int,
       "payment" decimal(11,2),
       "orig_final_payment_date" text,
       "orig_final_payment_amount" decimal(11,2),
       "loan_amount" decimal(11,2),
       "discount" decimal(11,2),
       "underwriting" decimal(11,2),
       "money_factor" char(20),
       "residual" decimal(11,2),
       "loan_rate" decimal(11,4),
       "loan_rate_type" char(30),
       "loan_term" decimal(11,4),
       "schedule_round" decimal(11,2),
       "contract_date" text,
       "first_payment_date" text,
       "due_date_on_last_dom" int,
       "due_dates_on_business_days" varchar(40),
       "amount_down" decimal(11,2),
       "reserve" decimal(11,2),
       "sales_price" decimal(11,2),
       "gap" decimal(11,2),
       "warranty" decimal(11,2),
       "dealer_profit" decimal(11,2),
       "taxes" decimal(11,2),
       "credit_limit" decimal(11,2),
       "reporting_credit_limit" decimal(11,2),
       "loan_class" char(30),
       "loan_type" char(30),
       "discount_split" int,
       "payment_frequency" char(30),
       "calc_type" char(30),
       "days_in_year" char(30),
       "interest_application" char(50),
       "beg_end" char(20),
       "first_period_days" char(40),
       "first_day_interest" int,
       "discount_calc" char(40),
       "diy_alt" int,
       "days_in_period" char(30),
       "round_decimals" int,
       "last_as_final" int,
       "ndd_calc" char(30),
       "end_interest" char(30),
       "fixed_term_pmt" int,
       "calc_history_enabled" int,
       "calc_dates_enabled" int,
       "schedule_template" int,
       "curtailment_template" int,
       "fees_paid_by" char(30),
       "use_interest_tiers" int,
       "grace_days" int,
       "late_fee_type" char(30),
       "late_fee_amount" decimal(11,2),
       "late_fee_percent" decimal(11,2),
       "late_fee_calc" char(30),
       "latefee_percent_base" char(40),
       "roll_last_payment" int,
       "payment_date_app" char(30),
       "suspend_fc_to" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_setup_entity'
    );
COMMENT on COLUMN "_loan_setup_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_setup_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_setup_entity"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_setup_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."til_finance_charge" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."til_total_of_payments" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."til_loan_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."til_sales_price" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."til_payment_schedule" IS $$remote type: text$$;
COMMENT on COLUMN "_loan_setup_entity"."regz_custom_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."regz_apr" IS $$remote type: decimal(11,4)$$;
COMMENT on COLUMN "_loan_setup_entity"."regz_finance_charge" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."regz_amount_financed" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."regz_total_of_payments" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."apr" IS $$remote type: decimal(11,4)$$;
COMMENT on COLUMN "_loan_setup_entity"."apr_force_single_freq" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."payment" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."orig_final_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_setup_entity"."orig_final_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."loan_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."discount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."underwriting" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."money_factor" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_setup_entity"."residual" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."loan_rate" IS $$remote type: decimal(11,4)$$;
COMMENT on COLUMN "_loan_setup_entity"."loan_rate_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."loan_term" IS $$remote type: decimal(11,4)$$;
COMMENT on COLUMN "_loan_setup_entity"."schedule_round" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."contract_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_setup_entity"."first_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_setup_entity"."due_date_on_last_dom" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."due_dates_on_business_days" IS $$remote type: varchar(40)$$;
COMMENT on COLUMN "_loan_setup_entity"."amount_down" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."reserve" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."sales_price" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."gap" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."warranty" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."dealer_profit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."taxes" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."credit_limit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."reporting_credit_limit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."loan_class" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."loan_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."discount_split" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."payment_frequency" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."calc_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."days_in_year" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."interest_application" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_loan_setup_entity"."beg_end" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_setup_entity"."first_period_days" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_setup_entity"."first_day_interest" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."discount_calc" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_setup_entity"."diy_alt" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."days_in_period" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."round_decimals" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_setup_entity"."last_as_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."ndd_calc" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."end_interest" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."fixed_term_pmt" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."calc_history_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."calc_dates_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."schedule_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_setup_entity"."curtailment_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_setup_entity"."fees_paid_by" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."use_interest_tiers" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."grace_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_setup_entity"."late_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."late_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."late_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_setup_entity"."late_fee_calc" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."latefee_percent_base" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_setup_entity"."roll_last_payment" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_setup_entity"."payment_date_app" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_setup_entity"."suspend_fc_to" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_setup_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_setup_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_setup_entity" as
          select "id",
            "loan_id",
            "mod_id",
            "active",
            "til_finance_charge",
            "til_total_of_payments",
            "til_loan_amount",
            "til_sales_price",
            "til_payment_schedule",
            "regz_custom_enabled",
            "regz_apr",
            "regz_finance_charge",
            "regz_amount_financed",
            "regz_total_of_payments",
            "apr",
            "apr_force_single_freq",
            "payment",
            nullif("orig_final_payment_date", '0000-00-00')::date as "orig_final_payment_date",
            "orig_final_payment_amount",
            "loan_amount",
            "discount",
            "underwriting",
            "money_factor",
            "residual",
            "loan_rate",
            "loan_rate_type",
            "loan_term",
            "schedule_round",
            nullif("contract_date", '0000-00-00')::date as "contract_date",
            nullif("first_payment_date", '0000-00-00')::date as "first_payment_date",
            "due_date_on_last_dom",
            "due_dates_on_business_days",
            "amount_down",
            "reserve",
            "sales_price",
            "gap",
            "warranty",
            "dealer_profit",
            "taxes",
            "credit_limit",
            "reporting_credit_limit",
            "loan_class",
            "loan_type",
            "discount_split",
            "payment_frequency",
            "calc_type",
            "days_in_year",
            "interest_application",
            "beg_end",
            "first_period_days",
            "first_day_interest",
            "discount_calc",
            "diy_alt",
            "days_in_period",
            "round_decimals",
            "last_as_final",
            "ndd_calc",
            "end_interest",
            "fixed_term_pmt",
            "calc_history_enabled",
            "calc_dates_enabled",
            "schedule_template",
            "curtailment_template",
            "fees_paid_by",
            "use_interest_tiers",
            "grace_days",
            "late_fee_type",
            "late_fee_amount",
            "late_fee_percent",
            "late_fee_calc",
            "latefee_percent_base",
            "roll_last_payment",
            "payment_date_app",
            nullif("suspend_fc_to", '0000-00-00')::date as "suspend_fc_to",
            "deleted",
            "lastupdated" from "_loan_setup_entity"
    ;

    DROP VIEW IF EXISTS "loan_sms_queue_item_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_sms_queue_item_entity";
    CREATE FOREIGN TABLE "_loan_sms_queue_item_entity"
      ("id" int,
       "loan_id" int,
       "template_id" int,
       "template_type" char(64),
       "primary_customer_primary_phone" int,
       "primary_customer_secondary_phone" int,
       "secondary_customer_primary_phone" int,
       "secondary_customer_secondary_phone" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_sms_queue_item_entity'
    );
COMMENT on COLUMN "_loan_sms_queue_item_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."loan_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."template_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."template_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."primary_customer_primary_phone" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."primary_customer_secondary_phone" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."secondary_customer_primary_phone" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."secondary_customer_secondary_phone" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_sms_queue_item_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_sms_queue_item_entity" as
          select "id",
            "loan_id",
            "template_id",
            "template_type",
            "primary_customer_primary_phone",
            "primary_customer_secondary_phone",
            "secondary_customer_primary_phone",
            "secondary_customer_secondary_phone",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_loan_sms_queue_item_entity"
    ;

    DROP VIEW IF EXISTS "loan_status_archive";

    DROP FOREIGN TABLE IF EXISTS "_loan_status_archive";
    CREATE FOREIGN TABLE "_loan_status_archive"
      ("loan_id" int,
       "date" date,
       "amount_due" decimal(11,2),
       "due_interest" decimal(11,2),
       "due_principal" decimal(11,2),
       "due_discount" decimal(11,2),
       "due_escrow" decimal(11,2),
       "due_escrow_breakdown" text,
       "due_fees" decimal(11,2),
       "due_pni" decimal(11,2),
       "payoff_fees" decimal(11,2),
       "next_payment_date" text,
       "next_payment_amount" decimal(11,2),
       "last_payment_date" text,
       "last_payment_amount" decimal(11,2),
       "principal_balance" decimal(11,2),
       "amount_past_due_30" decimal(11,2),
       "days_past_due" int,
       "date_last_current" text,
       "date_last_current_30" text,
       "payoff" decimal(11,2),
       "perdiem" decimal(11,2),
       "interest_accrued_today" decimal(11,2),
       "available_credit" decimal(11,2),
       "credit_limit" decimal(11,2),
       "period_start" text,
       "period_end" text,
       "periods_remaining" int,
       "escrow_balance" decimal(11,2),
       "escrow_balance_breakdown" text,
       "discount_remaining" decimal(11,2),
       "loan_status_id" int,
       "loan_status_text" text,
       "loan_sub_status_id" int,
       "loan_sub_status_text" text,
       "credit_status" char(30),
       "loan_age" int,
       "loan_recency" int,
       "last_human_activity" text,
       "stoplight" char(30),
       "final_payment_date" text,
       "final_payment_amount" decimal(11,2),
       "net_charge_off" decimal(11,2),
       "first_delinquency_date" text,
       "unique_delinquencies" int,
       "delinquency_percent" decimal(11,2),
       "delinquent_days" int,
       "calced_ecoa" char(20),
       "calced_ecoa_cobuyer" char(20),
       "deleted" int,
       "custom_fields_breakdown" text,
       "portfolio_breakdown" text,
       "sub_portfolio_breakdown" text,
       "lastupdated" timestamptz,
       "source_company_id" int,
       "source_company_text" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_status_archive'
    );
COMMENT on COLUMN "_loan_status_archive"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_status_archive"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."amount_due" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."due_interest" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."due_principal" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."due_discount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."due_escrow" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."due_escrow_breakdown" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_archive"."due_fees" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."due_pni" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."payoff_fees" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."next_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."next_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."last_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."last_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."amount_past_due_30" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."days_past_due" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive"."date_last_current" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."date_last_current_30" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."payoff" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."perdiem" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."interest_accrued_today" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."available_credit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."credit_limit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."periods_remaining" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive"."escrow_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."escrow_balance_breakdown" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_archive"."discount_remaining" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."loan_status_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive"."loan_status_text" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_archive"."loan_sub_status_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive"."loan_sub_status_text" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_archive"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_status_archive"."loan_age" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive"."loan_recency" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive"."last_human_activity" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."stoplight" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_status_archive"."final_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."final_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."net_charge_off" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."first_delinquency_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive"."unique_delinquencies" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive"."delinquency_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive"."delinquent_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive"."calced_ecoa" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_status_archive"."calced_ecoa_cobuyer" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_status_archive"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_status_archive"."custom_fields_breakdown" IS $$remote type: varchar(4000)$$;
COMMENT on COLUMN "_loan_status_archive"."portfolio_breakdown" IS $$remote type: varchar(4000)$$;
COMMENT on COLUMN "_loan_status_archive"."sub_portfolio_breakdown" IS $$remote type: varchar(4000)$$;
COMMENT on COLUMN "_loan_status_archive"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan_status_archive"."source_company_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_status_archive"."source_company_text" IS $$remote type: varchar(255)$$;
    CREATE VIEW "loan_status_archive" as
          select "loan_id",
            "date",
            "amount_due",
            "due_interest",
            "due_principal",
            "due_discount",
            "due_escrow",
            "due_escrow_breakdown",
            "due_fees",
            "due_pni",
            "payoff_fees",
            nullif("next_payment_date", '0000-00-00')::date as "next_payment_date",
            "next_payment_amount",
            nullif("last_payment_date", '0000-00-00')::date as "last_payment_date",
            "last_payment_amount",
            "principal_balance",
            "amount_past_due_30",
            "days_past_due",
            nullif("date_last_current", '0000-00-00')::date as "date_last_current",
            nullif("date_last_current_30", '0000-00-00')::date as "date_last_current_30",
            "payoff",
            "perdiem",
            "interest_accrued_today",
            "available_credit",
            "credit_limit",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "periods_remaining",
            "escrow_balance",
            "escrow_balance_breakdown",
            "discount_remaining",
            "loan_status_id",
            "loan_status_text",
            "loan_sub_status_id",
            "loan_sub_status_text",
            "credit_status",
            "loan_age",
            "loan_recency",
            nullif("last_human_activity", '0000-00-00')::date as "last_human_activity",
            "stoplight",
            nullif("final_payment_date", '0000-00-00')::date as "final_payment_date",
            "final_payment_amount",
            "net_charge_off",
            nullif("first_delinquency_date", '0000-00-00')::date as "first_delinquency_date",
            "unique_delinquencies",
            "delinquency_percent",
            "delinquent_days",
            "calced_ecoa",
            "calced_ecoa_cobuyer",
            "deleted",
            "custom_fields_breakdown",
            "portfolio_breakdown",
            "sub_portfolio_breakdown",
            "lastupdated",
            "source_company_id",
            "source_company_text" from "_loan_status_archive"
    ;

    DROP VIEW IF EXISTS "loan_status_archive_current_date_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_status_archive_current_date_view";
    CREATE FOREIGN TABLE "_loan_status_archive_current_date_view"
      ("loan_id" int,
       "date" text,
       "amount_due" decimal(11,2),
       "due_interest" decimal(11,2),
       "due_principal" decimal(11,2),
       "due_discount" decimal(11,2),
       "due_escrow" decimal(11,2),
       "due_escrow_breakdown" text,
       "due_fees" decimal(11,2),
       "due_pni" decimal(11,2),
       "payoff_fees" decimal(11,2),
       "next_payment_date" text,
       "next_payment_amount" decimal(11,2),
       "last_payment_date" text,
       "last_payment_amount" decimal(11,2),
       "principal_balance" decimal(11,2),
       "amount_past_due_30" decimal(11,2),
       "days_past_due" int,
       "date_last_current" text,
       "date_last_current_30" text,
       "payoff" decimal(11,2),
       "perdiem" decimal(11,2),
       "interest_accrued_today" decimal(11,2),
       "available_credit" decimal(11,2),
       "credit_limit" decimal(11,2),
       "period_start" text,
       "period_end" text,
       "periods_remaining" int,
       "escrow_balance" decimal(11,2),
       "escrow_balance_breakdown" text,
       "discount_remaining" decimal(11,2),
       "loan_status_id" int,
       "loan_status_text" text,
       "loan_sub_status_id" int,
       "loan_sub_status_text" text,
       "credit_status" char(30),
       "loan_age" int,
       "loan_recency" int,
       "last_human_activity" text,
       "stoplight" char(30),
       "final_payment_date" text,
       "final_payment_amount" decimal(11,2),
       "net_charge_off" decimal(11,2),
       "first_delinquency_date" text,
       "unique_delinquencies" int,
       "delinquency_percent" decimal(11,2),
       "delinquent_days" int,
       "calced_ecoa" char(20),
       "calced_ecoa_cobuyer" char(20),
       "deleted" int,
       "custom_fields_breakdown" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_status_archive_current_date_view'
    );
COMMENT on COLUMN "_loan_status_archive_current_date_view"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."amount_due" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."due_interest" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."due_principal" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."due_discount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."due_escrow" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."due_escrow_breakdown" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."due_fees" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."due_pni" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."payoff_fees" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."next_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."next_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."last_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."last_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."amount_past_due_30" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."days_past_due" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."date_last_current" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."date_last_current_30" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."payoff" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."perdiem" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."interest_accrued_today" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."available_credit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."credit_limit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."periods_remaining" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."escrow_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."escrow_balance_breakdown" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."discount_remaining" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."loan_status_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."loan_status_text" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."loan_sub_status_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."loan_sub_status_text" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."loan_age" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."loan_recency" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."last_human_activity" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."stoplight" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."final_payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."final_payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."net_charge_off" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."first_delinquency_date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."unique_delinquencies" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."delinquency_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."delinquent_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."calced_ecoa" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."calced_ecoa_cobuyer" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_status_archive_current_date_view"."custom_fields_breakdown" IS $$remote type: varchar(4000)$$;
    CREATE VIEW "loan_status_archive_current_date_view" as
          select "loan_id",
            nullif("date", '0000-00-00')::date as "date",
            "amount_due",
            "due_interest",
            "due_principal",
            "due_discount",
            "due_escrow",
            "due_escrow_breakdown",
            "due_fees",
            "due_pni",
            "payoff_fees",
            nullif("next_payment_date", '0000-00-00')::date as "next_payment_date",
            "next_payment_amount",
            nullif("last_payment_date", '0000-00-00')::date as "last_payment_date",
            "last_payment_amount",
            "principal_balance",
            "amount_past_due_30",
            "days_past_due",
            nullif("date_last_current", '0000-00-00')::date as "date_last_current",
            nullif("date_last_current_30", '0000-00-00')::date as "date_last_current_30",
            "payoff",
            "perdiem",
            "interest_accrued_today",
            "available_credit",
            "credit_limit",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "periods_remaining",
            "escrow_balance",
            "escrow_balance_breakdown",
            "discount_remaining",
            "loan_status_id",
            "loan_status_text",
            "loan_sub_status_id",
            "loan_sub_status_text",
            "credit_status",
            "loan_age",
            "loan_recency",
            nullif("last_human_activity", '0000-00-00')::date as "last_human_activity",
            "stoplight",
            nullif("final_payment_date", '0000-00-00')::date as "final_payment_date",
            "final_payment_amount",
            "net_charge_off",
            nullif("first_delinquency_date", '0000-00-00')::date as "first_delinquency_date",
            "unique_delinquencies",
            "delinquency_percent",
            "delinquent_days",
            "calced_ecoa",
            "calced_ecoa_cobuyer",
            "deleted",
            "custom_fields_breakdown" from "_loan_status_archive_current_date_view"
    ;

    DROP VIEW IF EXISTS "loan_status_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_status_entity";
    CREATE FOREIGN TABLE "_loan_status_entity"
      ("id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_status_entity'
    );
COMMENT on COLUMN "_loan_status_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_status_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_status_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_loan_status_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_loan_status_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_status_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            "lastupdated" from "_loan_status_entity"
    ;

    DROP VIEW IF EXISTS "loan_stop_interest_date_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_stop_interest_date_entity";
    CREATE FOREIGN TABLE "_loan_stop_interest_date_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "mod_id" int,
       "date" text,
       "type" char(30),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_stop_interest_date_entity'
    );
COMMENT on COLUMN "_loan_stop_interest_date_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_stop_interest_date_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_stop_interest_date_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_stop_interest_date_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_stop_interest_date_entity"."date" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_stop_interest_date_entity"."type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_loan_stop_interest_date_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_stop_interest_date_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_stop_interest_date_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "mod_id",
            nullif("date", '0000-00-00')::date as "date",
            "type",
            "deleted",
            "lastupdated" from "_loan_stop_interest_date_entity"
    ;

    DROP VIEW IF EXISTS "loan_subportfolio_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_subportfolio_view";
    CREATE FOREIGN TABLE "_loan_subportfolio_view"
      ("id" int,
       "loan_id" int,
       "title" text,
       "parent" text,
       "active" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_subportfolio_view'
    );
COMMENT on COLUMN "_loan_subportfolio_view"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_subportfolio_view"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_subportfolio_view"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_subportfolio_view"."parent" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_subportfolio_view"."active" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "loan_subportfolio_view" as
          select "id",
            "loan_id",
            "title",
            "parent",
            "active" from "_loan_subportfolio_view"
    ;

    DROP VIEW IF EXISTS "loan_sub_status_entity";

    DROP FOREIGN TABLE IF EXISTS "_loan_sub_status_entity";
    CREATE FOREIGN TABLE "_loan_sub_status_entity"
      ("id" int,
       "title" text,
       "parent" int,
       "late_fees" int,
       "email_enroll" int,
       "web_access" int,
       "sms_enroll" int,
       "display_order" int,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_sub_status_entity'
    );
COMMENT on COLUMN "_loan_sub_status_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_sub_status_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_sub_status_entity"."parent" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_sub_status_entity"."late_fees" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sub_status_entity"."email_enroll" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sub_status_entity"."web_access" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sub_status_entity"."sms_enroll" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_sub_status_entity"."display_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_sub_status_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_loan_sub_status_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_loan_sub_status_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_sub_status_entity" as
          select "id",
            "title",
            "parent",
            "late_fees",
            "email_enroll",
            "web_access",
            "sms_enroll",
            "display_order",
            "active",
            "deleted",
            "lastupdated" from "_loan_sub_status_entity"
    ;

    DROP VIEW IF EXISTS "loan_tx";

    DROP FOREIGN TABLE IF EXISTS "_loan_tx";
    CREATE FOREIGN TABLE "_loan_tx"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "tx_id" char(40),
       "mod_id" int,
       "date" text,
       "period" int,
       "period_start" text,
       "period_end" text,
       "title" text,
       "type" char(20),
       "info_only" int,
       "info_details" text,
       "payment_id" bigint,
       "payment_display_id" bigint,
       "payment_amount" decimal(10,2),
       "payment_i" decimal(10,2),
       "payment_p" decimal(10,2),
       "payment_d" decimal(10,2),
       "payment_f" decimal(10,2),
       "payment_e" decimal(10,2),
       "payment_e_breakdown" text,
       "fees_paid_details" text,
       "charge_amount" decimal(10,2),
       "charge_i" decimal(10,2),
       "charge_p" decimal(10,2),
       "charge_d" decimal(10,2),
       "charge_f" decimal(10,2),
       "charge_e" decimal(10,2),
       "charge_e_breakdown" text,
       "future" int,
       "principalonly" int,
       "advancement" int,
       "payoff_fee" int,
       "charge_off" int,
       "payment_type" int,
       "adb_days" int,
       "adb" decimal(10,2),
       "principal_balance" decimal(10,2),
       "displayorder" decimal(10,2),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_tx'
    );
COMMENT on COLUMN "_loan_tx"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_tx"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_tx"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_loan_tx"."tx_id" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_loan_tx"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_tx"."date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_loan_tx"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_tx"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_tx"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_loan_tx"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_tx"."type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_loan_tx"."info_only" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_tx"."info_details" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_loan_tx"."payment_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_tx"."payment_display_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_tx"."payment_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."payment_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."payment_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."payment_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."payment_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."payment_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."payment_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_tx"."fees_paid_details" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_tx"."charge_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."charge_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."charge_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."charge_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."charge_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."charge_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."charge_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_loan_tx"."future" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_tx"."principalonly" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_tx"."advancement" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan_tx"."payoff_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_tx"."charge_off" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_tx"."payment_type" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_tx"."adb_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan_tx"."adb" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."principal_balance" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."displayorder" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_loan_tx"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan_tx"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan_tx" as
          select "id",
            "entity_id",
            "entity_type",
            "tx_id",
            "mod_id",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "period",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "title",
            "type",
            "info_only",
            "info_details",
            "payment_id",
            "payment_display_id",
            "payment_amount",
            "payment_i",
            "payment_p",
            "payment_d",
            "payment_f",
            "payment_e",
            "payment_e_breakdown",
            "fees_paid_details",
            "charge_amount",
            "charge_i",
            "charge_p",
            "charge_d",
            "charge_f",
            "charge_e",
            "charge_e_breakdown",
            "future",
            "principalonly",
            "advancement",
            "payoff_fee",
            "charge_off",
            "payment_type",
            "adb_days",
            "adb",
            "principal_balance",
            "displayorder",
            "deleted",
            "lastupdated" from "_loan_tx"
    ;

    DROP VIEW IF EXISTS "loan_tx_payment_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_tx_payment_view";
    CREATE FOREIGN TABLE "_loan_tx_payment_view"
      ("payment_id" bigint,
       "interest" decimal(32,2),
       "principal" decimal(33,2),
       "discount" decimal(32,2),
       "fees" decimal(32,2),
       "escrow" decimal(32,2))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_tx_payment_view'
    );
COMMENT on COLUMN "_loan_tx_payment_view"."payment_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_loan_tx_payment_view"."interest" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_tx_payment_view"."principal" IS $$remote type: decimal(33,2)$$;
COMMENT on COLUMN "_loan_tx_payment_view"."discount" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_tx_payment_view"."fees" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_tx_payment_view"."escrow" IS $$remote type: decimal(32,2)$$;
    CREATE VIEW "loan_tx_payment_view" as
          select "payment_id",
            "interest",
            "principal",
            "discount",
            "fees",
            "escrow" from "_loan_tx_payment_view"
    ;

    DROP VIEW IF EXISTS "loan_yearly_stats_view";

    DROP FOREIGN TABLE IF EXISTS "_loan_yearly_stats_view";
    CREATE FOREIGN TABLE "_loan_yearly_stats_view"
      ("entity_id" int,
       "interest" decimal(32,2),
       "principal" decimal(32,2),
       "discount" decimal(32,2),
       "fees" decimal(32,2),
       "escrow" decimal(32,2),
       "total" decimal(36,2),
       "year" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan_yearly_stats_view'
    );
COMMENT on COLUMN "_loan_yearly_stats_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan_yearly_stats_view"."interest" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_yearly_stats_view"."principal" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_yearly_stats_view"."discount" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_yearly_stats_view"."fees" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_yearly_stats_view"."escrow" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_loan_yearly_stats_view"."total" IS $$remote type: decimal(36,2)$$;
COMMENT on COLUMN "_loan_yearly_stats_view"."year" IS $$remote type: int(4)$$;
    CREATE VIEW "loan_yearly_stats_view" as
          select "entity_id",
            "interest",
            "principal",
            "discount",
            "fees",
            "escrow",
            "total",
            "year" from "_loan_yearly_stats_view"
    ;

    DROP VIEW IF EXISTS "loan__customer";

    DROP FOREIGN TABLE IF EXISTS "_loan__customer";
    CREATE FOREIGN TABLE "_loan__customer"
      ("loan_id" int,
       "customer_id" int,
       "customer_role" char(100),
       "customer_email_enrollment_access" int,
       "customer_web_access" int,
       "customer_sms_access" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__customer'
    );
COMMENT on COLUMN "_loan__customer"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__customer"."customer_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_loan__customer"."customer_role" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_loan__customer"."customer_email_enrollment_access" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan__customer"."customer_web_access" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan__customer"."customer_sms_access" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_loan__customer"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan__customer"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan__customer"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan__customer" as
          select "loan_id",
            "customer_id",
            "customer_role",
            "customer_email_enrollment_access",
            "customer_web_access",
            "customer_sms_access",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_loan__customer"
    ;

    DROP VIEW IF EXISTS "loan__portfolio";

    DROP FOREIGN TABLE IF EXISTS "_loan__portfolio";
    CREATE FOREIGN TABLE "_loan__portfolio"
      ("loan_id" int,
       "portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__portfolio'
    );
COMMENT on COLUMN "_loan__portfolio"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__portfolio"."portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan__portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan__portfolio"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan__portfolio" as
          select "loan_id",
            "portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_loan__portfolio"
    ;

    DROP VIEW IF EXISTS "loan__recurrent_charge";

    DROP FOREIGN TABLE IF EXISTS "_loan__recurrent_charge";
    CREATE FOREIGN TABLE "_loan__recurrent_charge"
      ("loan_id" int,
       "recurrent_charge_id" int,
       "enabled" int,
       "fixed_amount" decimal(11,2),
       "percentage" decimal(5,2),
       "percentage_base" char(36),
       "contingency_bracket_id" char(33),
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__recurrent_charge'
    );
COMMENT on COLUMN "_loan__recurrent_charge"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__recurrent_charge"."recurrent_charge_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__recurrent_charge"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__recurrent_charge"."fixed_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_loan__recurrent_charge"."percentage" IS $$remote type: decimal(5,2)$$;
COMMENT on COLUMN "_loan__recurrent_charge"."percentage_base" IS $$remote type: char(36)$$;
COMMENT on COLUMN "_loan__recurrent_charge"."contingency_bracket_id" IS $$remote type: char(33)$$;
COMMENT on COLUMN "_loan__recurrent_charge"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan__recurrent_charge"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan__recurrent_charge"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "loan__recurrent_charge" as
          select "loan_id",
            "recurrent_charge_id",
            "enabled",
            "fixed_amount",
            "percentage",
            "percentage_base",
            "contingency_bracket_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_loan__recurrent_charge"
    ;

    DROP VIEW IF EXISTS "loan__rule_applied_apd_reset";

    DROP FOREIGN TABLE IF EXISTS "_loan__rule_applied_apd_reset";
    CREATE FOREIGN TABLE "_loan__rule_applied_apd_reset"
      ("loan_id" int,
       "rule_applied_apd_reset_id" int,
       "enabled" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__rule_applied_apd_reset'
    );
COMMENT on COLUMN "_loan__rule_applied_apd_reset"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_apd_reset"."rule_applied_apd_reset_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_apd_reset"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_apd_reset"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_apd_reset"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan__rule_applied_apd_reset" as
          select "loan_id",
            "rule_applied_apd_reset_id",
            "enabled",
            "deleted",
            "lastupdated" from "_loan__rule_applied_apd_reset"
    ;

    DROP VIEW IF EXISTS "loan__rule_applied_charge_off";

    DROP FOREIGN TABLE IF EXISTS "_loan__rule_applied_charge_off";
    CREATE FOREIGN TABLE "_loan__rule_applied_charge_off"
      ("loan_id" int,
       "rule_applied_charge_off_id" int,
       "enabled" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__rule_applied_charge_off'
    );
COMMENT on COLUMN "_loan__rule_applied_charge_off"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_charge_off"."rule_applied_charge_off_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_charge_off"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_charge_off"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_charge_off"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan__rule_applied_charge_off" as
          select "loan_id",
            "rule_applied_charge_off_id",
            "enabled",
            "deleted",
            "lastupdated" from "_loan__rule_applied_charge_off"
    ;

    DROP VIEW IF EXISTS "loan__rule_applied_checklist";

    DROP FOREIGN TABLE IF EXISTS "_loan__rule_applied_checklist";
    CREATE FOREIGN TABLE "_loan__rule_applied_checklist"
      ("loan_id" int,
       "rule_applied_checklist_id" int,
       "enabled" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__rule_applied_checklist'
    );
COMMENT on COLUMN "_loan__rule_applied_checklist"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_checklist"."rule_applied_checklist_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_checklist"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_checklist"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_checklist"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan__rule_applied_checklist" as
          select "loan_id",
            "rule_applied_checklist_id",
            "enabled",
            "deleted",
            "lastupdated" from "_loan__rule_applied_checklist"
    ;

    DROP VIEW IF EXISTS "loan__rule_applied_duedate";

    DROP FOREIGN TABLE IF EXISTS "_loan__rule_applied_duedate";
    CREATE FOREIGN TABLE "_loan__rule_applied_duedate"
      ("loan_id" int,
       "rule_applied_duedate_id" int,
       "enabled" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__rule_applied_duedate'
    );
COMMENT on COLUMN "_loan__rule_applied_duedate"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_duedate"."rule_applied_duedate_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_duedate"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_duedate"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_duedate"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan__rule_applied_duedate" as
          select "loan_id",
            "rule_applied_duedate_id",
            "enabled",
            "deleted",
            "lastupdated" from "_loan__rule_applied_duedate"
    ;

    DROP VIEW IF EXISTS "loan__rule_applied_settings";

    DROP FOREIGN TABLE IF EXISTS "_loan__rule_applied_settings";
    CREATE FOREIGN TABLE "_loan__rule_applied_settings"
      ("loan_id" int,
       "rule_applied_settings_id" int,
       "enabled" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__rule_applied_settings'
    );
COMMENT on COLUMN "_loan__rule_applied_settings"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_settings"."rule_applied_settings_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_settings"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_settings"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_settings"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan__rule_applied_settings" as
          select "loan_id",
            "rule_applied_settings_id",
            "enabled",
            "deleted",
            "lastupdated" from "_loan__rule_applied_settings"
    ;

    DROP VIEW IF EXISTS "loan__rule_applied_stop_interest";

    DROP FOREIGN TABLE IF EXISTS "_loan__rule_applied_stop_interest";
    CREATE FOREIGN TABLE "_loan__rule_applied_stop_interest"
      ("loan_id" int,
       "rule_applied_stop_interest_id" int,
       "enabled" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__rule_applied_stop_interest'
    );
COMMENT on COLUMN "_loan__rule_applied_stop_interest"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_stop_interest"."rule_applied_stop_interest_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__rule_applied_stop_interest"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_stop_interest"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_loan__rule_applied_stop_interest"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "loan__rule_applied_stop_interest" as
          select "loan_id",
            "rule_applied_stop_interest_id",
            "enabled",
            "deleted",
            "lastupdated" from "_loan__rule_applied_stop_interest"
    ;

    DROP VIEW IF EXISTS "loan__sub_portfolio";

    DROP FOREIGN TABLE IF EXISTS "_loan__sub_portfolio";
    CREATE FOREIGN TABLE "_loan__sub_portfolio"
      ("loan_id" int,
       "sub_portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'loan__sub_portfolio'
    );
COMMENT on COLUMN "_loan__sub_portfolio"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__sub_portfolio"."sub_portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_loan__sub_portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan__sub_portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_loan__sub_portfolio"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "loan__sub_portfolio" as
          select "loan_id",
            "sub_portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_loan__sub_portfolio"
    ;



    DROP VIEW IF EXISTS "mail_house_delivery_entity";

    DROP FOREIGN TABLE IF EXISTS "_mail_house_delivery_entity";
    CREATE FOREIGN TABLE "_mail_house_delivery_entity"
      ("id" int,
       "delivery_id" int,
       "template_id" int,
       "restriction" text,
       "restriction_ui" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'mail_house_delivery_entity'
    );
COMMENT on COLUMN "_mail_house_delivery_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mail_house_delivery_entity"."delivery_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mail_house_delivery_entity"."template_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_mail_house_delivery_entity"."restriction" IS $$remote type: text$$;
COMMENT on COLUMN "_mail_house_delivery_entity"."restriction_ui" IS $$remote type: text$$;
COMMENT on COLUMN "_mail_house_delivery_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mail_house_delivery_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mail_house_delivery_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "mail_house_delivery_entity" as
          select "id",
            "delivery_id",
            "template_id",
            "restriction",
            "restriction_ui",
            "active",
            "deleted",
            "lastupdated" from "_mail_house_delivery_entity"
    ;

    DROP VIEW IF EXISTS "mail_house_entity";

    DROP FOREIGN TABLE IF EXISTS "_mail_house_entity";
    CREATE FOREIGN TABLE "_mail_house_entity"
      ("id" int,
       "custom_form_id" int,
       "from_name" text,
       "from_street" text,
       "from_city" text,
       "from_state" text,
       "from_zipcode" text,
       "is_primary_address" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'mail_house_entity'
    );
COMMENT on COLUMN "_mail_house_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mail_house_entity"."custom_form_id" IS $$remote type: int(1) unsigned$$;
COMMENT on COLUMN "_mail_house_entity"."from_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_mail_house_entity"."from_street" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_mail_house_entity"."from_city" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_mail_house_entity"."from_state" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_mail_house_entity"."from_zipcode" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_mail_house_entity"."is_primary_address" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mail_house_entity"."created" IS $$remote type: datetime$$;
COMMENT on COLUMN "_mail_house_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_mail_house_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "mail_house_entity" as
          select "id",
            "custom_form_id",
            "from_name",
            "from_street",
            "from_city",
            "from_state",
            "from_zipcode",
            "is_primary_address",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_mail_house_entity"
    ;

    DROP VIEW IF EXISTS "mail_house_loan";

    DROP FOREIGN TABLE IF EXISTS "_mail_house_loan";
    CREATE FOREIGN TABLE "_mail_house_loan"
      ("loan_id" int,
       "mail_house_tool_id" int,
       "last_update" timestamptz,
       "status" text,
       "error_reason" text,
       "loan_display_id" char(25),
       "template_name" text,
       "created" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'mail_house_loan'
    );
COMMENT on COLUMN "_mail_house_loan"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mail_house_loan"."mail_house_tool_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mail_house_loan"."last_update" IS $$remote type: timestamp $$;
COMMENT on COLUMN "_mail_house_loan"."status" IS $$remote type:varchar(50) $$;
COMMENT on COLUMN "_mail_house_loan"."error_reason" IS $$remote type: varchar(4000) $$;
COMMENT on COLUMN "_mail_house_loan"."loan_display_id" IS $$remote type: char(25) $$;
COMMENT on COLUMN "_mail_house_loan"."template_name" IS $$remote type: varchar(100) $$;
COMMENT on COLUMN "_mail_house_loan"."created" IS $$remote type: datetime $$;
COMMENT on COLUMN "_mail_house_loan"."deleted" IS $$remote type: tinyint(1) $$;
    CREATE VIEW "mail_house_loan" as
          select "loan_id",
            "mail_house_tool_id",
            "last_update",
            "status",
            "error_reason",
            "loan_display_id",
            "template_name",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "deleted" from "_mail_house_loan"
    ;

    DROP VIEW IF EXISTS "mail_house_tool_entity";

    DROP FOREIGN TABLE IF EXISTS "_mail_house_tool_entity";
    CREATE FOREIGN TABLE "_mail_house_tool_entity"
      ("id" int,
       "user_id" int,
       "mailhouse_id" int,
       "query" text,
       "done" int,
       "file_name" text,
       "url" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'mail_house_tool_entity'
    );
COMMENT on COLUMN "_mail_house_tool_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mail_house_tool_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mail_house_tool_entity"."mailhouse_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mail_house_tool_entity"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_mail_house_tool_entity"."done" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mail_house_tool_entity"."file_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_mail_house_tool_entity"."url" IS $$remote type: text$$;
COMMENT on COLUMN "_mail_house_tool_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mail_house_tool_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mail_house_tool_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_mail_house_tool_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "mail_house_tool_entity" as
          select "id",
            "user_id",
            "mailhouse_id",
            "query",
            "done",
            "file_name",
            "url",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_mail_house_tool_entity"
    ;

    DROP VIEW IF EXISTS "mc_processor_extender";

    DROP FOREIGN TABLE IF EXISTS "_mc_processor_extender";
    CREATE FOREIGN TABLE "_mc_processor_extender"
      ("id" int,
       "mc_id" int,
       "processor_key" varchar(45),
       "processor_name" text,
       "bypass" int,
       "default" int,
       "auto_reversal" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'mc_processor_extender'
    );
COMMENT on COLUMN "_mc_processor_extender"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_mc_processor_extender"."mc_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_mc_processor_extender"."processor_key" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_mc_processor_extender"."processor_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_mc_processor_extender"."bypass" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mc_processor_extender"."default" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mc_processor_extender"."auto_reversal" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_mc_processor_extender"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "mc_processor_extender" as
          select "id",
            "mc_id",
            "processor_key",
            "processor_name",
            "bypass",
            "default",
            "auto_reversal",
            "lastupdated" from "_mc_processor_extender"
    ;

    DROP VIEW IF EXISTS "my_applications_setting_entity";

    DROP FOREIGN TABLE IF EXISTS "_my_applications_setting_entity";
    CREATE FOREIGN TABLE "_my_applications_setting_entity"
      ("id" char(100),
       "type" char(15),
       "label" text,
       "encrypted" int,
       "value" text,
       "group" char(50),
       "created" text,
       "modified" text,
       "modified_by" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'my_applications_setting_entity'
    );
COMMENT on COLUMN "_my_applications_setting_entity"."id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_my_applications_setting_entity"."type" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_my_applications_setting_entity"."label" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_my_applications_setting_entity"."encrypted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_my_applications_setting_entity"."value" IS $$remote type: text$$;
COMMENT on COLUMN "_my_applications_setting_entity"."group" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_my_applications_setting_entity"."created" IS $$remote type: datetime$$;
COMMENT on COLUMN "_my_applications_setting_entity"."modified" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_my_applications_setting_entity"."modified_by" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_my_applications_setting_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "my_applications_setting_entity" as
          select "id",
            "type",
            "label",
            "encrypted",
            "value",
            "group",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            nullif("modified", '0000-00-00 00:00:00')::timestamp as "modified",
            "modified_by",
            "deleted" from "_my_applications_setting_entity"
    ;

    DROP VIEW IF EXISTS "my_loans_setting_entity";

    DROP FOREIGN TABLE IF EXISTS "_my_loans_setting_entity";
    CREATE FOREIGN TABLE "_my_loans_setting_entity"
      ("id" char(100),
       "type" char(15),
       "label" text,
       "encrypted" int,
       "value" text,
       "group" char(50),
       "created" text,
       "modified" text,
       "modified_by" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'my_loans_setting_entity'
    );
COMMENT on COLUMN "_my_loans_setting_entity"."id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_my_loans_setting_entity"."type" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_my_loans_setting_entity"."label" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_my_loans_setting_entity"."encrypted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_my_loans_setting_entity"."value" IS $$remote type: text$$;
COMMENT on COLUMN "_my_loans_setting_entity"."group" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_my_loans_setting_entity"."created" IS $$remote type: datetime$$;
COMMENT on COLUMN "_my_loans_setting_entity"."modified" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_my_loans_setting_entity"."modified_by" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_my_loans_setting_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "my_loans_setting_entity" as
          select "id",
            "type",
            "label",
            "encrypted",
            "value",
            "group",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            nullif("modified", '0000-00-00 00:00:00')::timestamp as "modified",
            "modified_by",
            "deleted" from "_my_loans_setting_entity"
    ;

    DROP VIEW IF EXISTS "next_autopay_view";

    DROP FOREIGN TABLE IF EXISTS "_next_autopay_view";
    CREATE FOREIGN TABLE "_next_autopay_view"
      ("id" int,
       "loan_id" int,
       "name" text,
       "type" char(100),
       "status" char(100),
       "apply_date" text,
       "process_datetime" text,
       "original_process_datetime" text,
       "original_apply_date" text,
       "amount_type" char(100),
       "amount" decimal(10,2),
       "payment_type_id" int,
       "process_current" int,
       "charge_service_fee" int,
       "retry_days" int,
       "retry_count" int,
       "post_payment_update_apply_date" int,
       "recurring_frequency" char(100),
       "recurring_periods" int,
       "recurring_date_option" char(64),
       "scheduling_type" char(64),
       "last_dom_enabled" int,
       "days_in_period" char(100),
       "payment_extra_towards" char(100),
       "payment_fee" decimal(6,2),
       "primary_payment_method_id" int,
       "secondary_payment_method_id" int,
       "additional_payment_method_id" int,
       "payment_method_auth_type" char(100),
       "payoff_adjustment" int,
       "process_zero_or_negative_balance" int,
       "charge_off_recovery" int,
       "mc_processor" text,
       "cc_processor" int,
       "ba_processor" int,
       "deleted" int,
       "created" text,
       "last_updated" text,
       "active" int,
       "queued" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'next_autopay_view'
    );
COMMENT on COLUMN "_next_autopay_view"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_next_autopay_view"."loan_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_next_autopay_view"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_next_autopay_view"."type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_next_autopay_view"."status" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_next_autopay_view"."apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_next_autopay_view"."process_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_next_autopay_view"."original_process_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_next_autopay_view"."original_apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_next_autopay_view"."amount_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_next_autopay_view"."amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_next_autopay_view"."payment_type_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_next_autopay_view"."process_current" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_next_autopay_view"."charge_service_fee" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_next_autopay_view"."retry_days" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_next_autopay_view"."retry_count" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_next_autopay_view"."post_payment_update_apply_date" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_next_autopay_view"."recurring_frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_next_autopay_view"."recurring_periods" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_next_autopay_view"."recurring_date_option" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_next_autopay_view"."scheduling_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_next_autopay_view"."last_dom_enabled" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_next_autopay_view"."days_in_period" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_next_autopay_view"."payment_extra_towards" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_next_autopay_view"."payment_fee" IS $$remote type: decimal(6,2)$$;
COMMENT on COLUMN "_next_autopay_view"."primary_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_next_autopay_view"."secondary_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_next_autopay_view"."additional_payment_method_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_next_autopay_view"."payment_method_auth_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_next_autopay_view"."payoff_adjustment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_next_autopay_view"."process_zero_or_negative_balance" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_next_autopay_view"."charge_off_recovery" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_next_autopay_view"."mc_processor" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_next_autopay_view"."cc_processor" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_next_autopay_view"."ba_processor" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_next_autopay_view"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_next_autopay_view"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_next_autopay_view"."last_updated" IS $$remote type: datetime$$;
COMMENT on COLUMN "_next_autopay_view"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_next_autopay_view"."queued" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "next_autopay_view" as
          select "id",
            "loan_id",
            "name",
            "type",
            "status",
            nullif("apply_date", '0000-00-00')::date as "apply_date",
            nullif("process_datetime", '0000-00-00 00:00:00')::timestamp as "process_datetime",
            nullif("original_process_datetime", '0000-00-00 00:00:00')::timestamp as "original_process_datetime",
            nullif("original_apply_date", '0000-00-00')::date as "original_apply_date",
            "amount_type",
            "amount",
            "payment_type_id",
            "process_current",
            "charge_service_fee",
            "retry_days",
            "retry_count",
            "post_payment_update_apply_date",
            "recurring_frequency",
            "recurring_periods",
            "recurring_date_option",
            "scheduling_type",
            "last_dom_enabled",
            "days_in_period",
            "payment_extra_towards",
            "payment_fee",
            "primary_payment_method_id",
            "secondary_payment_method_id",
            "additional_payment_method_id",
            "payment_method_auth_type",
            "payoff_adjustment",
            "process_zero_or_negative_balance",
            "charge_off_recovery",
            "mc_processor",
            "cc_processor",
            "ba_processor",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            nullif("last_updated", '0000-00-00 00:00:00')::timestamp as "last_updated",
            "active",
            "queued" from "_next_autopay_view"
    ;

    DROP VIEW IF EXISTS "note_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_note_category_entity";
    CREATE FOREIGN TABLE "_note_category_entity"
      ("id" int,
       "title" text,
       "entity_type" varchar(50),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'note_category_entity'
    );
COMMENT on COLUMN "_note_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_note_category_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_note_category_entity"."entity_type" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_note_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_note_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_note_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_note_category_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "note_category_entity" as
          select "id",
            "title",
            "entity_type",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_note_category_entity"
    ;

    DROP VIEW IF EXISTS "note_entity";

    DROP FOREIGN TABLE IF EXISTS "_note_entity";
    CREATE FOREIGN TABLE "_note_entity"
      ("id" int,
       "parent_type" char(100),
       "parent_id" int,
       "category_id" int,
       "subject" text,
       "body" text,
       "author_id" int,
       "author_name" text,
       "created" text,
       "lastupdated" timestamptz,
       "remote_addr" char(20),
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'note_entity'
    );
COMMENT on COLUMN "_note_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_note_entity"."parent_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_note_entity"."parent_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_note_entity"."category_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_note_entity"."subject" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_note_entity"."body" IS $$remote type: text$$;
COMMENT on COLUMN "_note_entity"."author_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_note_entity"."author_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_note_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_note_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_note_entity"."remote_addr" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_note_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "note_entity" as
          select "id",
            "parent_type",
            "parent_id",
            "category_id",
            "subject",
            "body",
            "author_id",
            "author_name",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "remote_addr",
            "deleted" from "_note_entity"
    ;

    DROP VIEW IF EXISTS "notification_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_notification_category_entity";
    CREATE FOREIGN TABLE "_notification_category_entity"
      ("id" int,
       "title" varchar(100),
       "icon" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'notification_category_entity'
    );
COMMENT on COLUMN "_notification_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_notification_category_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_notification_category_entity"."icon" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_notification_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_notification_category_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_notification_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_notification_category_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "notification_category_entity" as
          select "id",
            "title",
            "icon",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_notification_category_entity"
    ;

    DROP VIEW IF EXISTS "notification_category__delivery";

    DROP FOREIGN TABLE IF EXISTS "_notification_category__delivery";
    CREATE FOREIGN TABLE "_notification_category__delivery"
      ("category_id" int,
       "delivery_id" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'notification_category__delivery'
    );
COMMENT on COLUMN "_notification_category__delivery"."category_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_notification_category__delivery"."delivery_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_notification_category__delivery"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_notification_category__delivery"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "notification_category__delivery" as
          select "category_id",
            "delivery_id",
            "deleted",
            "lastupdated" from "_notification_category__delivery"
    ;

    DROP VIEW IF EXISTS "notification_dnd_period_entity";

    DROP FOREIGN TABLE IF EXISTS "_notification_dnd_period_entity";
    CREATE FOREIGN TABLE "_notification_dnd_period_entity"
      ("id" int,
       "notification_type" char(32),
       "start_time" text,
       "stop_time" text,
       "weekdays" char(15),
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'notification_dnd_period_entity'
    );
COMMENT on COLUMN "_notification_dnd_period_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_notification_dnd_period_entity"."notification_type" IS $$remote type: char(32)$$;
COMMENT on COLUMN "_notification_dnd_period_entity"."start_time" IS $$remote type: time$$;
COMMENT on COLUMN "_notification_dnd_period_entity"."stop_time" IS $$remote type: time$$;
COMMENT on COLUMN "_notification_dnd_period_entity"."weekdays" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_notification_dnd_period_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_notification_dnd_period_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_notification_dnd_period_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "notification_dnd_period_entity" as
          select "id",
            "notification_type",
            "start_time",
            "stop_time",
            "weekdays",
            "active",
            "deleted",
            "lastupdated" from "_notification_dnd_period_entity"
    ;

    DROP VIEW IF EXISTS "notification_entity";

    DROP FOREIGN TABLE IF EXISTS "_notification_entity";
    CREATE FOREIGN TABLE "_notification_entity"
      ("id" int,
       "user_id" int,
       "loan_id" int,
       "name" varchar(100),
       "type" varchar(100),
       "metadata" text,
       "is_read" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'notification_entity'
    );
COMMENT on COLUMN "_notification_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_notification_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_notification_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_notification_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_notification_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_notification_entity"."metadata" IS $$remote type: text$$;
COMMENT on COLUMN "_notification_entity"."is_read" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_notification_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_notification_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_notification_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_notification_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "notification_entity" as
          select "id",
            "user_id",
            "loan_id",
            "name",
            "type",
            "metadata",
            "is_read",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_notification_entity"
    ;

    DROP VIEW IF EXISTS "page_entity";

    DROP FOREIGN TABLE IF EXISTS "_page_entity";
    CREATE FOREIGN TABLE "_page_entity"
      ("id" int,
       "type" varchar(100),
       "title" text,
       "content" text,
       "custom_code" int,
       "javascript_code" text,
       "css_code" text,
       "investor_login" int,
       "contact_form_status" int,
       "contact_form_email" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'page_entity'
    );
COMMENT on COLUMN "_page_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_page_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_page_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_page_entity"."content" IS $$remote type: text$$;
COMMENT on COLUMN "_page_entity"."custom_code" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_page_entity"."javascript_code" IS $$remote type: text$$;
COMMENT on COLUMN "_page_entity"."css_code" IS $$remote type: text$$;
COMMENT on COLUMN "_page_entity"."investor_login" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_page_entity"."contact_form_status" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_page_entity"."contact_form_email" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_page_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_page_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_page_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_page_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "page_entity" as
          select "id",
            "type",
            "title",
            "content",
            "custom_code",
            "javascript_code",
            "css_code",
            "investor_login",
            "contact_form_status",
            "contact_form_email",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_page_entity"
    ;

    DROP VIEW IF EXISTS "payment_account_entity";

    DROP FOREIGN TABLE IF EXISTS "_payment_account_entity";
    CREATE FOREIGN TABLE "_payment_account_entity"
      ("id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "import_id" varchar(15),
       "title" varchar(100),
       "credit_card_id" int,
       "checking_account_id" int,
       "type" varchar(100),
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "is_primary" int,
       "is_secondary" int,
       "active" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'payment_account_entity'
    );
COMMENT on COLUMN "_payment_account_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_account_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_account_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_payment_account_entity"."import_id" IS $$remote type: varchar(15)$$;
COMMENT on COLUMN "_payment_account_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_payment_account_entity"."credit_card_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_account_entity"."checking_account_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_account_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_payment_account_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_payment_account_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment_account_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment_account_entity"."is_primary" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_payment_account_entity"."is_secondary" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_payment_account_entity"."active" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "payment_account_entity" as
          select "id",
            "entity_id",
            "entity_type",
            "import_id",
            "title",
            "credit_card_id",
            "checking_account_id",
            "type",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "is_primary",
            "is_secondary",
            "active" from "_payment_account_entity"
    ;
/*
    DROP VIEW IF EXISTS "payment_breakdown_view";

    DROP FOREIGN TABLE IF EXISTS "_payment_breakdown_view";
    CREATE FOREIGN TABLE "_payment_breakdown_view"
      ("entity_id" int,
       "entity_type" varchar(100),
       "payment_id" int,
       "display_id" decimal(11,0),
       "payment_date" text,
       "apply_date" text,
       "created" text,
       "extra" varchar(100),
       "split_id" int,
       "type" text,
       "method" text,
       "payment_amount" decimal(11,2),
       "payment_interest" decimal(32,2),
       "payment_principal" decimal(32,2),
       "payment_discount" decimal(32,2),
       "payment_fees" decimal(32,2),
       "payment_escrow" decimal(32,2),
       "payment_fees_breakdown" text,
       "is_new" int,
       "payment_escrow_breackdown" text,
       "postedby" text,
       "source_company" text,
       "portfolios" text,
       "sub_portfolios" text,
       "loan_status" text,
       "loan_substatus" text,
       "before_principal_balance" decimal(11,2),
       "before_payoff" decimal(11,2),
       "before_next_due_date" text,
       "before_next_due_amount" decimal(11,2),
       "before_amount_past_due" decimal(11,2),
       "before_days_past_due" int,
       "after_principal_balance" decimal(11,2),
       "after_payoff" decimal(11,2),
       "after_next_due_date" text,
       "after_next_due_amount" decimal(11,2),
       "after_amount_past_due" decimal(11,2),
       "after_days_past_due" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'payment_breakdown_view'
    );
COMMENT on COLUMN "_payment_breakdown_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_breakdown_view"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_breakdown_view"."display_id" IS $$remote type: decimal(11,0)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_date" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_breakdown_view"."apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_breakdown_view"."created" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_breakdown_view"."extra" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_payment_breakdown_view"."split_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_breakdown_view"."type" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_breakdown_view"."method" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_interest" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_principal" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_discount" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_fees" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_escrow" IS $$remote type: decimal(32,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_fees_breakdown" IS $$remote type: text$$;
COMMENT on COLUMN "_payment_breakdown_view"."is_new" IS $$remote type: int(1)$$;
COMMENT on COLUMN "_payment_breakdown_view"."payment_escrow_breackdown" IS $$remote type: text$$;
COMMENT on COLUMN "_payment_breakdown_view"."postedby" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_breakdown_view"."source_company" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_breakdown_view"."portfolios" IS $$remote type: varchar(341)$$;
COMMENT on COLUMN "_payment_breakdown_view"."sub_portfolios" IS $$remote type: varchar(341)$$;
COMMENT on COLUMN "_payment_breakdown_view"."loan_status" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_breakdown_view"."loan_substatus" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_breakdown_view"."before_principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."before_payoff" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."before_next_due_date" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_breakdown_view"."before_next_due_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."before_amount_past_due" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."before_days_past_due" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_breakdown_view"."after_principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."after_payoff" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."after_next_due_date" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_breakdown_view"."after_next_due_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."after_amount_past_due" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_breakdown_view"."after_days_past_due" IS $$remote type: int(11)$$;
    CREATE VIEW "payment_breakdown_view" as
          select "entity_id",
            "entity_type",
            "payment_id",
            "display_id",
            nullif("payment_date", '0000-00-00')::date as "payment_date",
            nullif("apply_date", '0000-00-00')::date as "apply_date",
            nullif("created", '0000-00-00')::date as "created",
            "extra",
            "split_id",
            "type",
            "method",
            "payment_amount",
            "payment_interest",
            "payment_principal",
            "payment_discount",
            "payment_fees",
            "payment_escrow",
            "payment_fees_breakdown",
            "is_new",
            "payment_escrow_breackdown",
            "postedby",
            "source_company",
            "portfolios",
            "sub_portfolios",
            "loan_status",
            "loan_substatus",
            "before_principal_balance",
            "before_payoff",
            nullif("before_next_due_date", '0000-00-00')::date as "before_next_due_date",
            "before_next_due_amount",
            "before_amount_past_due",
            "before_days_past_due",
            "after_principal_balance",
            "after_payoff",
            nullif("after_next_due_date", '0000-00-00')::date as "after_next_due_date",
            "after_next_due_amount",
            "after_amount_past_due",
            "after_days_past_due" from "_payment_breakdown_view"
    ;
*/
    DROP VIEW IF EXISTS "payment_entity";

    DROP FOREIGN TABLE IF EXISTS "_payment_entity";
    CREATE FOREIGN TABLE "_payment_entity"
      ("id" int,
       "display_id" int,
       "payment_info_id" int,
       "payment_type_id" int,
       "payment_processor_id" int,
       "payment_method_id" int,
       "payment_account_id" int,
       "tx_snapshot_id" int,
       "amount" decimal(11,2),
       "apply_date" text,
       "early" int,
       "payoff_flag" int,
       "payoff_diff_apply" char(40),
       "payoff_options" text,
       "custom_application" text,
       "info" text,
       "extra" varchar(100),
       "parent" int,
       "child" int,
       "charge_fee_type" varchar(20),
       "charge_fee_amount" decimal(11,2),
       "charge_fee_percentage" decimal(11,2),
       "echeck_auth_type" varchar(100),
       "cash_drawer_id" int,
       "cash_drawer_tx_id" int,
       "status" varchar(45),
       "reverse_reason" varchar(45),
       "reverse_date" text,
       "comments" text,
       "source_company" int,
       "loan_status" int,
       "loan_substatus" int,
       "before_principal_balance" decimal(11,2),
       "before_payoff" decimal(11,2),
       "before_next_due_date" text,
       "before_next_due_amount" decimal(11,2),
       "before_amount_past_due" decimal(11,2),
       "before_days_past_due" int,
       "after_principal_balance" decimal(11,2),
       "after_payoff" decimal(11,2),
       "after_next_due_date" text,
       "after_next_due_amount" decimal(11,2),
       "after_amount_past_due" decimal(11,2),
       "after_days_past_due" int,
       "system_comments" text,
       "charge_off_recovery" int,
       "reset_past_due" int,
       "apd_adjustment_id" int,
       "dpd_adjustment_id" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "mod_id" int,
       "entity_id" int,
       "entity_type" varchar(100),
       "payment_method_option" varchar(45),
       "payment_method_name" text,
       "is_split" int,
       "split_id" int,
       "nacha_return_code" text,
       "autopay_id" int,
       "last_extra" varchar(100))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'payment_entity'
    );
COMMENT on COLUMN "_payment_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."display_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_entity"."payment_info_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_entity"."payment_type_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."payment_processor_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."payment_method_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."payment_account_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."tx_snapshot_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."apply_date" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_entity"."early" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_payment_entity"."payoff_flag" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_payment_entity"."payoff_diff_apply" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_payment_entity"."payoff_options" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_payment_entity"."custom_application" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_payment_entity"."info" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_entity"."extra" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_payment_entity"."parent" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."child" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."charge_fee_type" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_payment_entity"."charge_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."charge_fee_percentage" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."echeck_auth_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_payment_entity"."cash_drawer_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."cash_drawer_tx_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."status" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_entity"."reverse_reason" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_entity"."reverse_date" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_entity"."comments" IS $$remote type: varchar(250)$$;
COMMENT on COLUMN "_payment_entity"."source_company" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."loan_status" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."loan_substatus" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."before_principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."before_payoff" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."before_next_due_date" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_entity"."before_next_due_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."before_amount_past_due" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."before_days_past_due" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_entity"."after_principal_balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."after_payoff" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."after_next_due_date" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_entity"."after_next_due_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."after_amount_past_due" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_payment_entity"."after_days_past_due" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_entity"."system_comments" IS $$remote type: text$$;
COMMENT on COLUMN "_payment_entity"."charge_off_recovery" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_payment_entity"."reset_past_due" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_payment_entity"."apd_adjustment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."dpd_adjustment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_payment_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_payment_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment_entity"."mod_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."entity_type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_payment_entity"."payment_method_option" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_entity"."payment_method_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_entity"."is_split" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_payment_entity"."split_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment_entity"."nacha_return_code" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_entity"."autopay_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_entity"."last_extra" IS $$remote type: varchar(100)$$;
    CREATE VIEW "payment_entity" as
          select "id",
            "display_id",
            "payment_info_id",
            "payment_type_id",
            "payment_processor_id",
            "payment_method_id",
            "payment_account_id",
            "tx_snapshot_id",
            "amount",
            nullif("apply_date", '0000-00-00')::date as "apply_date",
            "early",
            "payoff_flag",
            "payoff_diff_apply",
            "payoff_options",
            "custom_application",
            "info",
            "extra",
            "parent",
            "child",
            "charge_fee_type",
            "charge_fee_amount",
            "charge_fee_percentage",
            "echeck_auth_type",
            "cash_drawer_id",
            "cash_drawer_tx_id",
            "status",
            "reverse_reason",
            nullif("reverse_date", '0000-00-00')::date as "reverse_date",
            "comments",
            "source_company",
            "loan_status",
            "loan_substatus",
            "before_principal_balance",
            "before_payoff",
            nullif("before_next_due_date", '0000-00-00')::date as "before_next_due_date",
            "before_next_due_amount",
            "before_amount_past_due",
            "before_days_past_due",
            "after_principal_balance",
            "after_payoff",
            nullif("after_next_due_date", '0000-00-00')::date as "after_next_due_date",
            "after_next_due_amount",
            "after_amount_past_due",
            "after_days_past_due",
            "system_comments",
            "charge_off_recovery",
            "reset_past_due",
            "apd_adjustment_id",
            "dpd_adjustment_id",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "mod_id",
            "entity_id",
            "entity_type",
            "payment_method_option",
            "payment_method_name",
            "is_split",
            "split_id",
            "nacha_return_code",
            "autopay_id",
            "last_extra" from "_payment_entity"
    ;

    DROP VIEW IF EXISTS "payment_info_entity";

    DROP FOREIGN TABLE IF EXISTS "_payment_info_entity";
    CREATE FOREIGN TABLE "_payment_info_entity"
      ("id" int,
       "payment_id" int,
       "processor_id" text,
       "processor_tx_id" varchar(45),
       "transaction_id" varchar(45),
       "processor_status" varchar(45),
       "status" varchar(45),
       "description" text,
       "batch_id" varchar(45),
       "applied_date" text,
       "pnm_retailer_name" text,
       "pnm_retailer_id" varchar(45),
       "pnm_retailer_addr" text,
       "pnm_retailer_lat" text,
       "pnm_retailer_lon" text,
       "updated" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'payment_info_entity'
    );
COMMENT on COLUMN "_payment_info_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_info_entity"."payment_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_payment_info_entity"."processor_id" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_info_entity"."processor_tx_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_info_entity"."transaction_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_info_entity"."processor_status" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_info_entity"."status" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_info_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_info_entity"."batch_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_info_entity"."applied_date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_payment_info_entity"."pnm_retailer_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_info_entity"."pnm_retailer_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_payment_info_entity"."pnm_retailer_addr" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_info_entity"."pnm_retailer_lat" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_info_entity"."pnm_retailer_lon" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_info_entity"."updated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment_info_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "payment_info_entity" as
          select "id",
            "payment_id",
            "processor_id",
            "processor_tx_id",
            "transaction_id",
            "processor_status",
            "status",
            "description",
            "batch_id",
            nullif("applied_date", '0000-00-00 00:00:00')::timestamp as "applied_date",
            "pnm_retailer_name",
            "pnm_retailer_id",
            "pnm_retailer_addr",
            "pnm_retailer_lat",
            "pnm_retailer_lon",
            nullif("updated", '0000-00-00 00:00:00')::timestamp as "updated",
            "deleted" from "_payment_info_entity"
    ;

    DROP VIEW IF EXISTS "payment_reversed_tx_snapshot";

    DROP FOREIGN TABLE IF EXISTS "_payment_reversed_tx_snapshot";
    CREATE FOREIGN TABLE "_payment_reversed_tx_snapshot"
      ("id" int,
       "mod_id" int,
       "payment_id" bigint,
       "date" text,
       "period" int,
       "period_start" text,
       "period_end" text,
       "title" text,
       "payment_amount" decimal(10,2),
       "payment_i" decimal(10,2),
       "payment_p" decimal(10,2),
       "payment_d" decimal(10,2),
       "payment_f" decimal(10,2),
       "payment_e" decimal(10,2),
       "payment_e_breakdown" text,
       "fees_paid_details" text,
       "future" int,
       "principalonly" int,
       "charge_off" int,
       "payment_type" int,
       "adb_days" int,
       "adb" decimal(10,2),
       "principal_balance" decimal(10,2),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'payment_reversed_tx_snapshot'
    );
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."mod_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_id" IS $$remote type: bigint(21)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."period" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."period_start" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."period_end" IS $$remote type: date$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_amount" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_i" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_p" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_d" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_f" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_e" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_e_breakdown" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."fees_paid_details" IS $$remote type: varchar(2000)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."future" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."principalonly" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."charge_off" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."payment_type" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."adb_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."adb" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."principal_balance" IS $$remote type: decimal(10,2)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_payment_reversed_tx_snapshot"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "payment_reversed_tx_snapshot" as
          select "id",
            "mod_id",
            "payment_id",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "period",
            nullif("period_start", '0000-00-00')::date as "period_start",
            nullif("period_end", '0000-00-00')::date as "period_end",
            "title",
            "payment_amount",
            "payment_i",
            "payment_p",
            "payment_d",
            "payment_f",
            "payment_e",
            "payment_e_breakdown",
            "fees_paid_details",
            "future",
            "principalonly",
            "charge_off",
            "payment_type",
            "adb_days",
            "adb",
            "principal_balance",
            "deleted",
            "lastupdated" from "_payment_reversed_tx_snapshot"
    ;

    DROP VIEW IF EXISTS "payment__portfolio";

    DROP FOREIGN TABLE IF EXISTS "_payment__portfolio";
    CREATE FOREIGN TABLE "_payment__portfolio"
      ("payment_id" int,
       "portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'payment__portfolio'
    );
COMMENT on COLUMN "_payment__portfolio"."payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment__portfolio"."portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment__portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment__portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment__portfolio"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "payment__portfolio" as
          select "payment_id",
            "portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_payment__portfolio"
    ;

    DROP VIEW IF EXISTS "payment__sub_portfolio";

    DROP FOREIGN TABLE IF EXISTS "_payment__sub_portfolio";
    CREATE FOREIGN TABLE "_payment__sub_portfolio"
      ("payment_id" int,
       "sub_portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'payment__sub_portfolio'
    );
COMMENT on COLUMN "_payment__sub_portfolio"."payment_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment__sub_portfolio"."sub_portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_payment__sub_portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment__sub_portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_payment__sub_portfolio"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "payment__sub_portfolio" as
          select "payment_id",
            "sub_portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_payment__sub_portfolio"
    ;

    DROP VIEW IF EXISTS "pnm_order_entity";

    DROP FOREIGN TABLE IF EXISTS "_pnm_order_entity";
    CREATE FOREIGN TABLE "_pnm_order_entity"
      ("id" int,
       "loan_id" int,
       "customer_id" int,
       "order_id" varchar(45),
       "short_order_id" varchar(45),
       "site_customer_id" varchar(45),
       "status" char(6),
       "slip_url" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'pnm_order_entity'
    );
COMMENT on COLUMN "_pnm_order_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_pnm_order_entity"."loan_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_pnm_order_entity"."customer_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_pnm_order_entity"."order_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_pnm_order_entity"."short_order_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_pnm_order_entity"."site_customer_id" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_pnm_order_entity"."status" IS $$remote type: char(6)$$;
COMMENT on COLUMN "_pnm_order_entity"."slip_url" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_pnm_order_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_pnm_order_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_pnm_order_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_pnm_order_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "pnm_order_entity" as
          select "id",
            "loan_id",
            "customer_id",
            "order_id",
            "short_order_id",
            "site_customer_id",
            "status",
            "slip_url",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_pnm_order_entity"
    ;

    DROP VIEW IF EXISTS "portfolio_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_portfolio_category_entity";
    CREATE FOREIGN TABLE "_portfolio_category_entity"
      ("id" int,
       "entity_type" char(32),
       "title" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'portfolio_category_entity'
    );
COMMENT on COLUMN "_portfolio_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_portfolio_category_entity"."entity_type" IS $$remote type: char(32)$$;
COMMENT on COLUMN "_portfolio_category_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_portfolio_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_portfolio_category_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_portfolio_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_portfolio_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "portfolio_category_entity" as
          select "id",
            "entity_type",
            "title",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_portfolio_category_entity"
    ;

    DROP VIEW IF EXISTS "portfolio_entity";

    DROP FOREIGN TABLE IF EXISTS "_portfolio_entity";
    CREATE FOREIGN TABLE "_portfolio_entity"
      ("id" int,
       "title" text,
       "num_prefix" varchar(20),
       "num_suffix" varchar(20),
       "category_id" int,
       "entity_type" char(32),
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'portfolio_entity'
    );
COMMENT on COLUMN "_portfolio_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_portfolio_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_portfolio_entity"."num_prefix" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_portfolio_entity"."num_suffix" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_portfolio_entity"."category_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_portfolio_entity"."entity_type" IS $$remote type: char(32)$$;
COMMENT on COLUMN "_portfolio_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_portfolio_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_portfolio_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_portfolio_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "portfolio_entity" as
          select "id",
            "title",
            "num_prefix",
            "num_suffix",
            "category_id",
            "entity_type",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_portfolio_entity"
    ;

    DROP VIEW IF EXISTS "preconfigured_loan_entity";

    DROP FOREIGN TABLE IF EXISTS "_preconfigured_loan_entity";
    CREATE FOREIGN TABLE "_preconfigured_loan_entity"
      ("id" int,
       "settings_id" int,
       "title" text,
       "icon" char(40),
       "loan_amount" decimal(11,2),
       "discount" decimal(11,2),
       "underwriting" decimal(11,2),
       "loan_rate" decimal(11,4),
       "loan_term" decimal(11,4),
       "contract_date" int,
       "first_payment_date" int,
       "amount_down" decimal(11,2),
       "reserve" decimal(11,2),
       "sales_price" decimal(11,2),
       "gap" decimal(11,2),
       "warranty" decimal(11,2),
       "dealer_profit" decimal(11,2),
       "credit_limit" decimal(11,2),
       "reporting_credit_limit" decimal(11,2),
       "flooring_customer" int,
       "loan_class" char(30),
       "loan_type" char(30),
       "grace_days" int,
       "late_fee_type" char(30),
       "late_fee_amount" decimal(11,2),
       "late_fee_percent" decimal(11,2),
       "late_fee_calc" char(30),
       "card_fee_amount" decimal(11,2),
       "card_fee_type" char(30),
       "card_fee_percent" decimal(11,2),
       "agent" int,
       "source_company" int,
       "loan_status" int,
       "loan_sub_status" int,
       "ebilling" int,
       "ecoa_code" char(30),
       "co_ecoa_code" char(30),
       "portfolio" text,
       "credit_status" char(30),
       "credit_bureau" char(30),
       "reporting_type" char(30),
       "discount_split" int,
       "payment_frequency" char(30),
       "calc_type" char(30),
       "days_in_year" char(30),
       "interest_application" char(50),
       "beg_end" char(20),
       "first_period_days" char(40),
       "first_day_interest" int,
       "discount_calc" char(40),
       "diy_alt" int,
       "payment_date_app" char(30),
       "days_in_period" char(30),
       "round_decimals" int,
       "last_as_final" int,
       "ndd_calc" char(30),
       "end_interest" char(30),
       "fixed_term_pmt" int,
       "prorate_first_pmt" char(30),
       "latefee_percent_base" char(40),
       "schedule_template" int,
       "curtailment_template" int,
       "fees_paid_by" char(30),
       "use_interest_tiers" int,
       "loan_rate_type" char(30),
       "smooth_payments" int,
       "apr_force_single_freq" int,
       "due_date_on_last_dom" int,
       "due_dates_on_business_days" varchar(40),
       "autopay_enabled" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'preconfigured_loan_entity'
    );
COMMENT on COLUMN "_preconfigured_loan_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."settings_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."icon" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."loan_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."discount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."underwriting" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."loan_rate" IS $$remote type: decimal(11,4)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."loan_term" IS $$remote type: decimal(11,4)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."contract_date" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."first_payment_date" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."amount_down" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."reserve" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."sales_price" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."gap" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."warranty" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."dealer_profit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."credit_limit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."reporting_credit_limit" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."flooring_customer" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."loan_class" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."loan_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."grace_days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."late_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."late_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."late_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."late_fee_calc" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."card_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."card_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."card_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."agent" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."source_company" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."loan_status" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."loan_sub_status" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."ebilling" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."co_ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."portfolio" IS $$remote type: text$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."credit_bureau" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."reporting_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."discount_split" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."payment_frequency" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."calc_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."days_in_year" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."interest_application" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."beg_end" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."first_period_days" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."first_day_interest" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."discount_calc" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."diy_alt" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."payment_date_app" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."days_in_period" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."round_decimals" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."last_as_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."ndd_calc" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."end_interest" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."fixed_term_pmt" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."prorate_first_pmt" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."latefee_percent_base" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."schedule_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."curtailment_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."fees_paid_by" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."use_interest_tiers" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."loan_rate_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."smooth_payments" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."apr_force_single_freq" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."due_date_on_last_dom" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."due_dates_on_business_days" IS $$remote type: varchar(40)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."autopay_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "preconfigured_loan_entity" as
          select "id",
            "settings_id",
            "title",
            "icon",
            "loan_amount",
            "discount",
            "underwriting",
            "loan_rate",
            "loan_term",
            "contract_date",
            "first_payment_date",
            "amount_down",
            "reserve",
            "sales_price",
            "gap",
            "warranty",
            "dealer_profit",
            "credit_limit",
            "reporting_credit_limit",
            "flooring_customer",
            "loan_class",
            "loan_type",
            "grace_days",
            "late_fee_type",
            "late_fee_amount",
            "late_fee_percent",
            "late_fee_calc",
            "card_fee_amount",
            "card_fee_type",
            "card_fee_percent",
            "agent",
            "source_company",
            "loan_status",
            "loan_sub_status",
            "ebilling",
            "ecoa_code",
            "co_ecoa_code",
            "portfolio",
            "credit_status",
            "credit_bureau",
            "reporting_type",
            "discount_split",
            "payment_frequency",
            "calc_type",
            "days_in_year",
            "interest_application",
            "beg_end",
            "first_period_days",
            "first_day_interest",
            "discount_calc",
            "diy_alt",
            "payment_date_app",
            "days_in_period",
            "round_decimals",
            "last_as_final",
            "ndd_calc",
            "end_interest",
            "fixed_term_pmt",
            "prorate_first_pmt",
            "latefee_percent_base",
            "schedule_template",
            "curtailment_template",
            "fees_paid_by",
            "use_interest_tiers",
            "loan_rate_type",
            "smooth_payments",
            "apr_force_single_freq",
            "due_date_on_last_dom",
            "due_dates_on_business_days",
            "autopay_enabled",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_preconfigured_loan_entity"
    ;

    DROP VIEW IF EXISTS "preconfigured_loan_settings_entity";

    DROP FOREIGN TABLE IF EXISTS "_preconfigured_loan_settings_entity";
    CREATE FOREIGN TABLE "_preconfigured_loan_settings_entity"
      ("id" int,
       "card_fee_amount" decimal(11,2),
       "card_fee_type" char(30),
       "card_fee_percent" decimal(11,2),
       "agent" int,
       "loan_status_id" int,
       "loan_sub_status_id" int,
       "source_company" int,
       "ebilling" int,
       "ecoa_code" char(30),
       "co_ecoa_code" char(30),
       "credit_status" char(30),
       "credit_bureau" char(30),
       "reporting_type" char(30),
       "secured" int,
       "autopay_enabled" int,
       "repo_date" int,
       "closed_date" int,
       "liquidation_date" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'preconfigured_loan_settings_entity'
    );
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."card_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."card_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."card_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."agent" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."loan_status_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."loan_sub_status_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."source_company" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."ebilling" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."co_ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."credit_bureau" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."reporting_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."secured" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."autopay_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."repo_date" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."closed_date" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."liquidation_date" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_preconfigured_loan_settings_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "preconfigured_loan_settings_entity" as
          select "id",
            "card_fee_amount",
            "card_fee_type",
            "card_fee_percent",
            "agent",
            "loan_status_id",
            "loan_sub_status_id",
            "source_company",
            "ebilling",
            "ecoa_code",
            "co_ecoa_code",
            "credit_status",
            "credit_bureau",
            "reporting_type",
            "secured",
            "autopay_enabled",
            "repo_date",
            "closed_date",
            "liquidation_date",
            "deleted",
            "lastupdated" from "_preconfigured_loan_settings_entity"
    ;

    DROP VIEW IF EXISTS "preconfigured_loan__portfolio";

    DROP FOREIGN TABLE IF EXISTS "_preconfigured_loan__portfolio";
    CREATE FOREIGN TABLE "_preconfigured_loan__portfolio"
      ("preconfigured_setting_id" int,
       "portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'preconfigured_loan__portfolio'
    );
COMMENT on COLUMN "_preconfigured_loan__portfolio"."preconfigured_setting_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan__portfolio"."portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan__portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_preconfigured_loan__portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_preconfigured_loan__portfolio"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "preconfigured_loan__portfolio" as
          select "preconfigured_setting_id",
            "portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_preconfigured_loan__portfolio"
    ;

    DROP VIEW IF EXISTS "preconfigured_loan__sub_portfolio";

    DROP FOREIGN TABLE IF EXISTS "_preconfigured_loan__sub_portfolio";
    CREATE FOREIGN TABLE "_preconfigured_loan__sub_portfolio"
      ("preconfigured_setting_id" int,
       "sub_portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'preconfigured_loan__sub_portfolio'
    );
COMMENT on COLUMN "_preconfigured_loan__sub_portfolio"."preconfigured_setting_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan__sub_portfolio"."sub_portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_preconfigured_loan__sub_portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_preconfigured_loan__sub_portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_preconfigured_loan__sub_portfolio"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "preconfigured_loan__sub_portfolio" as
          select "preconfigured_setting_id",
            "sub_portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_preconfigured_loan__sub_portfolio"
    ;

    DROP VIEW IF EXISTS "quick_note_entity";

    DROP FOREIGN TABLE IF EXISTS "_quick_note_entity";
    CREATE FOREIGN TABLE "_quick_note_entity"
      ("id" int,
       "note_name" text,
       "note_category_id" int,
       "note_content" text,
       "entity_type" char(64),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'quick_note_entity'
    );
COMMENT on COLUMN "_quick_note_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_quick_note_entity"."note_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_quick_note_entity"."note_category_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_quick_note_entity"."note_content" IS $$remote type: text$$;
COMMENT on COLUMN "_quick_note_entity"."entity_type" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_quick_note_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_quick_note_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_quick_note_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_quick_note_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "quick_note_entity" as
          select "id",
            "note_name",
            "note_category_id",
            "note_content",
            "entity_type",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_quick_note_entity"
    ;

    DROP VIEW IF EXISTS "recurring_charge_entity";

    DROP FOREIGN TABLE IF EXISTS "_recurring_charge_entity";
    CREATE FOREIGN TABLE "_recurring_charge_entity"
      ("id" int,
       "charge_application_type" char(25),
       "is_enabled" int,
       "apply_in_new_loan" int,
       "title" varchar(100),
       "info" varchar(100),
       "calculation" char(41),
       "fixed_amount" decimal(11,2),
       "percentage" decimal(5,2),
       "percentage_base" char(36),
       "contingency_bracket_id" char(33),
       "trigger_type" char(35),
       "loan_type" char(30),
       "trigger_event" char(42),
       "trigger_sub_event" char(52),
       "trigger_event_value" char(25),
       "trigger_rule" text,
       "restriction_rule" text,
       "restriction_ui" text,
       "interest_bearing" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'recurring_charge_entity'
    );
COMMENT on COLUMN "_recurring_charge_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_recurring_charge_entity"."charge_application_type" IS $$remote type: char(25)$$;
COMMENT on COLUMN "_recurring_charge_entity"."is_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_recurring_charge_entity"."apply_in_new_loan" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_recurring_charge_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_recurring_charge_entity"."info" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_recurring_charge_entity"."calculation" IS $$remote type: char(41)$$;
COMMENT on COLUMN "_recurring_charge_entity"."fixed_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_recurring_charge_entity"."percentage" IS $$remote type: decimal(5,2)$$;
COMMENT on COLUMN "_recurring_charge_entity"."percentage_base" IS $$remote type: char(36)$$;
COMMENT on COLUMN "_recurring_charge_entity"."contingency_bracket_id" IS $$remote type: char(33)$$;
COMMENT on COLUMN "_recurring_charge_entity"."trigger_type" IS $$remote type: char(35)$$;
COMMENT on COLUMN "_recurring_charge_entity"."loan_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_recurring_charge_entity"."trigger_event" IS $$remote type: char(42)$$;
COMMENT on COLUMN "_recurring_charge_entity"."trigger_sub_event" IS $$remote type: char(52)$$;
COMMENT on COLUMN "_recurring_charge_entity"."trigger_event_value" IS $$remote type: char(25)$$;
COMMENT on COLUMN "_recurring_charge_entity"."trigger_rule" IS $$remote type: text$$;
COMMENT on COLUMN "_recurring_charge_entity"."restriction_rule" IS $$remote type: text$$;
COMMENT on COLUMN "_recurring_charge_entity"."restriction_ui" IS $$remote type: text$$;
COMMENT on COLUMN "_recurring_charge_entity"."interest_bearing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_recurring_charge_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_recurring_charge_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_recurring_charge_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_recurring_charge_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "recurring_charge_entity" as
          select "id",
            "charge_application_type",
            "is_enabled",
            "apply_in_new_loan",
            "title",
            "info",
            "calculation",
            "fixed_amount",
            "percentage",
            "percentage_base",
            "contingency_bracket_id",
            "trigger_type",
            "loan_type",
            "trigger_event",
            "trigger_sub_event",
            "trigger_event_value",
            "trigger_rule",
            "restriction_rule",
            "restriction_ui",
            "interest_bearing",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_recurring_charge_entity"
    ;

    DROP VIEW IF EXISTS "report_cache";

    DROP FOREIGN TABLE IF EXISTS "_report_cache";
    CREATE FOREIGN TABLE "_report_cache"
      ("user_id" text,
       "report" varchar(100),
       "query" text,
       "ids" text,
       "date" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'report_cache'
    );
COMMENT on COLUMN "_report_cache"."user_id" IS $$remote type: varchar(250)$$;
COMMENT on COLUMN "_report_cache"."report" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_report_cache"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_report_cache"."ids" IS $$remote type: longtext$$;
COMMENT on COLUMN "_report_cache"."date" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_report_cache"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "report_cache" as
          select "user_id",
            "report",
            "query",
            "ids",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "lastupdated" from "_report_cache"
    ;

    DROP VIEW IF EXISTS "restriction_group_entity";

    DROP FOREIGN TABLE IF EXISTS "_restriction_group_entity";
    CREATE FOREIGN TABLE "_restriction_group_entity"
      ("id" int,
       "access" int,
       "name" varchar(100),
       "description" text,
       "rule" text,
       "ui_state" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'restriction_group_entity'
    );
COMMENT on COLUMN "_restriction_group_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_restriction_group_entity"."access" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_restriction_group_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_restriction_group_entity"."description" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_restriction_group_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_restriction_group_entity"."ui_state" IS $$remote type: text$$;
COMMENT on COLUMN "_restriction_group_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_restriction_group_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_restriction_group_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_restriction_group_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "restriction_group_entity" as
          select "id",
            "access",
            "name",
            "description",
            "rule",
            "ui_state",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_restriction_group_entity"
    ;

    DROP VIEW IF EXISTS "restriction_group_entry_archive";

    DROP FOREIGN TABLE IF EXISTS "_restriction_group_entry_archive";
    CREATE FOREIGN TABLE "_restriction_group_entry_archive"
      ("loan_id" int,
       "restriction_group_id" int,
       "restriction_group_entry_id" int,
       "date" date,
       "value" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'restriction_group_entry_archive'
    );
COMMENT on COLUMN "_restriction_group_entry_archive"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_restriction_group_entry_archive"."restriction_group_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_restriction_group_entry_archive"."restriction_group_entry_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_restriction_group_entry_archive"."date" IS $$remote type: date $$;
COMMENT on COLUMN "_restriction_group_entry_archive"."value" IS $$remote type: tinyint(1) $$;
COMMENT on COLUMN "_restriction_group_entry_archive"."deleted" IS $$remote tinyint(1) $$;
COMMENT on COLUMN "_restriction_group_entry_archive"."lastupdated" IS $$remote type: timestamp $$;
    CREATE VIEW "restriction_group_entry_archive" as
          select "loan_id",
            "restriction_group_id",
            "restriction_group_entry_id",
            "date",
            "value",
            "deleted",
            "lastupdated" from "_restriction_group_entry_archive"
    ;


    DROP VIEW IF EXISTS "restriction_group_entry_entity";

    DROP FOREIGN TABLE IF EXISTS "_restriction_group_entry_entity";
    CREATE FOREIGN TABLE "_restriction_group_entry_entity"
      ("id" int,
       "restriction_group_id" int,
       "entity_type" text,
       "access" int,
       "rule" text,
       "ui_state" text,
       "error_message" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'restriction_group_entry_entity'
    );
COMMENT on COLUMN "_restriction_group_entry_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_restriction_group_entry_entity"."restriction_group_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_restriction_group_entry_entity"."entity_type" IS $$remote type: varchar(255) $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."access" IS $$remote type: varchar(255) $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."entity_type" IS $$remote type: int(11) $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."rule" IS $$remote type: text $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."ui_state" IS $$remote type: text $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."error_message" IS $$remote type: varchar(1024) $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."active" IS $$remote type: tinyint(1) $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."deleted" IS $$remote type: tinyint(1) $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."created" IS $$remote type: timestamp $$;
COMMENT on COLUMN "_restriction_group_entry_entity"."lastupdated" IS $$remote type: timestamp $$;
    CREATE VIEW "restriction_group_entry_entity" as
          select "id",
            "restriction_group_id",
            "entity_type",
            "access",
            "rule",
            "ui_state",
            "error_message",
            "active",
            "deleted",
            "created",
            "lastupdated" from "_restriction_group_entry_entity"
    ;

    DROP VIEW IF EXISTS "restriction_group__user";

    DROP FOREIGN TABLE IF EXISTS "_restriction_group__user";
    CREATE FOREIGN TABLE "_restriction_group__user"
      ("user_id" int,
       "restriction_group_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "id" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'restriction_group__user'
    );
COMMENT on COLUMN "_restriction_group__user"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_restriction_group__user"."restriction_group_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_restriction_group__user"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_restriction_group__user"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_restriction_group__user"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_restriction_group__user"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "restriction_group__user" as
          select "user_id",
            "restriction_group_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "id",
            "deleted" from "_restriction_group__user"
    ;

    DROP VIEW IF EXISTS "rule_applied_apd_reset_entity";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_apd_reset_entity";
    CREATE FOREIGN TABLE "_rule_applied_apd_reset_entity"
      ("id" int,
       "name" varchar(100),
       "rule" text,
       "amount" decimal(11,2),
       "dpd_reset" int,
       "days_from_today" int,
       "adjustment_type" char(26),
       "enroll_new_loans" int,
       "enroll_existing_loans" int,
       "enabled" int,
       "eval_in_daily_maint" int,
       "eval_real_time" int,
       "forcing" int,
       "deleted" int,
       "global_order" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_apd_reset_entity'
    );
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."dpd_reset" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."days_from_today" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."adjustment_type" IS $$remote type: char(26)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."enroll_new_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."enroll_existing_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."eval_in_daily_maint" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."eval_real_time" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."forcing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."global_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_apd_reset_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "rule_applied_apd_reset_entity" as
          select "id",
            "name",
            "rule",
            "amount",
            "dpd_reset",
            "days_from_today",
            "adjustment_type",
            "enroll_new_loans",
            "enroll_existing_loans",
            "enabled",
            "eval_in_daily_maint",
            "eval_real_time",
            "forcing",
            "deleted",
            "global_order",
            "lastupdated" from "_rule_applied_apd_reset_entity"
    ;

    DROP VIEW IF EXISTS "rule_applied_charge_off_entity";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_charge_off_entity";
    CREATE FOREIGN TABLE "_rule_applied_charge_off_entity"
      ("id" int,
       "name" varchar(100),
       "rule" text,
       "is_payment" int,
       "payment_type_id" int,
       "payment_method_id" int,
       "amount_calc" varchar(6),
       "amount" decimal(11,2),
       "early" int,
       "info" text,
       "extra_tx" varchar(100),
       "extra_periods" varchar(100),
       "credit_category" int,
       "reset_pastdue" int,
       "under_pay_diff" char(26),
       "over_pay_diff" char(28),
       "advancement_category" int,
       "enroll_new_loans" int,
       "enroll_existing_loans" int,
       "enabled" int,
       "eval_in_daily_maint" int,
       "eval_real_time" int,
       "forcing" int,
       "deleted" int,
       "global_order" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_charge_off_entity'
    );
COMMENT on COLUMN "_rule_applied_charge_off_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."is_payment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."payment_type_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."payment_method_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."amount_calc" IS $$remote type: varchar(6)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."early" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."info" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."extra_tx" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."extra_periods" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."credit_category" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."reset_pastdue" IS $$remote type: tinyint(11)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."under_pay_diff" IS $$remote type: char(26)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."over_pay_diff" IS $$remote type: char(28)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."advancement_category" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."enroll_new_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."enroll_existing_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."eval_in_daily_maint" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."eval_real_time" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."forcing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."global_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_charge_off_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "rule_applied_charge_off_entity" as
          select "id",
            "name",
            "rule",
            "is_payment",
            "payment_type_id",
            "payment_method_id",
            "amount_calc",
            "amount",
            "early",
            "info",
            "extra_tx",
            "extra_periods",
            "credit_category",
            "reset_pastdue",
            "under_pay_diff",
            "over_pay_diff",
            "advancement_category",
            "enroll_new_loans",
            "enroll_existing_loans",
            "enabled",
            "eval_in_daily_maint",
            "eval_real_time",
            "forcing",
            "deleted",
            "global_order",
            "lastupdated" from "_rule_applied_charge_off_entity"
    ;

    DROP VIEW IF EXISTS "rule_applied_checklist_entity";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_checklist_entity";
    CREATE FOREIGN TABLE "_rule_applied_checklist_entity"
      ("id" int,
       "name" varchar(100),
       "rule" text,
       "enroll_new_loans" int,
       "enroll_existing_loans" int,
       "enabled" int,
       "eval_in_daily_maint" int,
       "eval_real_time" int,
       "forcing" int,
       "deleted" int,
       "global_order" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_checklist_entity'
    );
COMMENT on COLUMN "_rule_applied_checklist_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."enroll_new_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."enroll_existing_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."eval_in_daily_maint" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."eval_real_time" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."forcing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."global_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_checklist_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "rule_applied_checklist_entity" as
          select "id",
            "name",
            "rule",
            "enroll_new_loans",
            "enroll_existing_loans",
            "enabled",
            "eval_in_daily_maint",
            "eval_real_time",
            "forcing",
            "deleted",
            "global_order",
            "lastupdated" from "_rule_applied_checklist_entity"
    ;

    DROP VIEW IF EXISTS "rule_applied_duedate_entity";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_duedate_entity";
    CREATE FOREIGN TABLE "_rule_applied_duedate_entity"
      ("id" int,
       "name" varchar(100),
       "rule" text,
       "frequency" char(30),
       "days" int,
       "enroll_new_loans" int,
       "enroll_existing_loans" int,
       "enabled" int,
       "eval_in_daily_maint" int,
       "eval_real_time" int,
       "forcing" int,
       "deleted" int,
       "global_order" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_duedate_entity'
    );
COMMENT on COLUMN "_rule_applied_duedate_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."frequency" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."days" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."enroll_new_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."enroll_existing_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."eval_in_daily_maint" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."eval_real_time" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."forcing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."global_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_duedate_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "rule_applied_duedate_entity" as
          select "id",
            "name",
            "rule",
            "frequency",
            "days",
            "enroll_new_loans",
            "enroll_existing_loans",
            "enabled",
            "eval_in_daily_maint",
            "eval_real_time",
            "forcing",
            "deleted",
            "global_order",
            "lastupdated" from "_rule_applied_duedate_entity"
    ;

    DROP VIEW IF EXISTS "rule_applied_loan_settings_entity";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_loan_settings_entity";
    CREATE FOREIGN TABLE "_rule_applied_loan_settings_entity"
      ("id" int,
       "name" varchar(100),
       "rule" text,
       "card_fee_amount" decimal(11,2),
       "card_fee_type" char(30),
       "card_fee_percent" decimal(11,2),
       "agent" int,
       "loan_status_id" int,
       "loan_sub_status_id" int,
       "source_company" int,
       "ebilling" int,
       "ecoa_code" char(30),
       "co_ecoa_code" char(30),
       "credit_status" char(30),
       "credit_bureau" char(30),
       "reporting_type" char(30),
       "secured" int,
       "autopay_enabled" int,
       "repo_date" int,
       "closed_date" int,
       "liquidation_date" int,
       "is_stoplight_manually_set" int,
       "delete_portfolios" int,
       "enroll_new_loans" int,
       "enroll_existing_loans" int,
       "enabled" int,
       "eval_in_daily_maint" int,
       "eval_real_time" int,
       "forcing" int,
       "deleted" int,
       "global_order" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_loan_settings_entity'
    );
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."card_fee_amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."card_fee_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."card_fee_percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."agent" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."loan_status_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."loan_sub_status_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."source_company" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."ebilling" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."co_ecoa_code" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."credit_status" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."credit_bureau" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."reporting_type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."secured" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."autopay_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."repo_date" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."closed_date" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."liquidation_date" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."is_stoplight_manually_set" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."delete_portfolios" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."enroll_new_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."enroll_existing_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."eval_in_daily_maint" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."eval_real_time" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."forcing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."global_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_loan_settings_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "rule_applied_loan_settings_entity" as
          select "id",
            "name",
            "rule",
            "card_fee_amount",
            "card_fee_type",
            "card_fee_percent",
            "agent",
            "loan_status_id",
            "loan_sub_status_id",
            "source_company",
            "ebilling",
            "ecoa_code",
            "co_ecoa_code",
            "credit_status",
            "credit_bureau",
            "reporting_type",
            "secured",
            "autopay_enabled",
            "repo_date",
            "closed_date",
            "liquidation_date",
            "is_stoplight_manually_set",
            "delete_portfolios",
            "enroll_new_loans",
            "enroll_existing_loans",
            "enabled",
            "eval_in_daily_maint",
            "eval_real_time",
            "forcing",
            "deleted",
            "global_order",
            "lastupdated" from "_rule_applied_loan_settings_entity"
    ;

    DROP VIEW IF EXISTS "rule_applied_settings__portfolio";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_settings__portfolio";
    CREATE FOREIGN TABLE "_rule_applied_settings__portfolio"
      ("rule_id" int,
       "portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_settings__portfolio'
    );
COMMENT on COLUMN "_rule_applied_settings__portfolio"."rule_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_settings__portfolio"."portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_settings__portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_settings__portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_settings__portfolio"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "rule_applied_settings__portfolio" as
          select "rule_id",
            "portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_rule_applied_settings__portfolio"
    ;

    DROP VIEW IF EXISTS "rule_applied_settings__portfolio_to_delete";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_settings__portfolio_to_delete";
    CREATE FOREIGN TABLE "_rule_applied_settings__portfolio_to_delete"
      ("rule_id" int,
       "portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_settings__portfolio_to_delete'
    );
COMMENT on COLUMN "_rule_applied_settings__portfolio_to_delete"."rule_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_settings__portfolio_to_delete"."portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_settings__portfolio_to_delete"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_settings__portfolio_to_delete"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_settings__portfolio_to_delete"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "rule_applied_settings__portfolio_to_delete" as
          select "rule_id",
            "portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_rule_applied_settings__portfolio_to_delete"
    ;

    DROP VIEW IF EXISTS "rule_applied_settings__sub_portfolio";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_settings__sub_portfolio";
    CREATE FOREIGN TABLE "_rule_applied_settings__sub_portfolio"
      ("rule_id" int,
       "sub_portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_settings__sub_portfolio'
    );
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio"."rule_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio"."sub_portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "rule_applied_settings__sub_portfolio" as
          select "rule_id",
            "sub_portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_rule_applied_settings__sub_portfolio"
    ;

    DROP VIEW IF EXISTS "rule_applied_settings__sub_portfolio_to_delete";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_settings__sub_portfolio_to_delete";
    CREATE FOREIGN TABLE "_rule_applied_settings__sub_portfolio_to_delete"
      ("rule_id" int,
       "sub_portfolio_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_settings__sub_portfolio_to_delete'
    );
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio_to_delete"."rule_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio_to_delete"."sub_portfolio_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio_to_delete"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio_to_delete"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_settings__sub_portfolio_to_delete"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "rule_applied_settings__sub_portfolio_to_delete" as
          select "rule_id",
            "sub_portfolio_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_rule_applied_settings__sub_portfolio_to_delete"
    ;

    DROP VIEW IF EXISTS "rule_applied_stop_interest_entity";

    DROP FOREIGN TABLE IF EXISTS "_rule_applied_stop_interest_entity";
    CREATE FOREIGN TABLE "_rule_applied_stop_interest_entity"
      ("id" int,
       "name" varchar(100),
       "rule" text,
       "days_from_today" int,
       "type" char(30),
       "enroll_new_loans" int,
       "enroll_existing_loans" int,
       "enabled" int,
       "eval_in_daily_maint" int,
       "eval_real_time" int,
       "forcing" int,
       "deleted" int,
       "global_order" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_applied_stop_interest_entity'
    );
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."days_from_today" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."type" IS $$remote type: char(30)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."enroll_new_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."enroll_existing_loans" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."eval_in_daily_maint" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."eval_real_time" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."forcing" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."global_order" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_applied_stop_interest_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "rule_applied_stop_interest_entity" as
          select "id",
            "name",
            "rule",
            "days_from_today",
            "type",
            "enroll_new_loans",
            "enroll_existing_loans",
            "enabled",
            "eval_in_daily_maint",
            "eval_real_time",
            "forcing",
            "deleted",
            "global_order",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_rule_applied_stop_interest_entity"
    ;

    DROP VIEW IF EXISTS "rule_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_rule_category_entity";
    CREATE FOREIGN TABLE "_rule_category_entity"
      ("id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_category_entity'
    );
COMMENT on COLUMN "_rule_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_category_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_rule_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_rule_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_rule_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_category_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "rule_category_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_rule_category_entity"
    ;

    DROP VIEW IF EXISTS "rule_entity";

    DROP FOREIGN TABLE IF EXISTS "_rule_entity";
    CREATE FOREIGN TABLE "_rule_entity"
      ("id" int,
       "title" varchar(100),
       "type" varchar(100),
       "description" text,
       "round" varchar(100),
       "format" varchar(100),
       "display" varchar(100),
       "rule" text,
       "state" text,
       "updatable" int,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule_entity'
    );
COMMENT on COLUMN "_rule_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_entity"."description" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_rule_entity"."round" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_entity"."format" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_entity"."display" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_rule_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_rule_entity"."state" IS $$remote type: text$$;
COMMENT on COLUMN "_rule_entity"."updatable" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_rule_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_rule_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_rule_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "rule_entity" as
          select "id",
            "title",
            "type",
            "description",
            "round",
            "format",
            "display",
            "rule",
            "state",
            "updatable",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_rule_entity"
    ;

    DROP VIEW IF EXISTS "rule__category";

    DROP FOREIGN TABLE IF EXISTS "_rule__category";
    CREATE FOREIGN TABLE "_rule__category"
      ("rule_id" int,
       "category_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'rule__category'
    );
COMMENT on COLUMN "_rule__category"."rule_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule__category"."category_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_rule__category"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule__category"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_rule__category"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "rule__category" as
          select "rule_id",
            "category_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_rule__category"
    ;

    DROP VIEW IF EXISTS "sample_entity";

    DROP FOREIGN TABLE IF EXISTS "_sample_entity";
    CREATE FOREIGN TABLE "_sample_entity"
      ("id" int,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sample_entity'
    );
COMMENT on COLUMN "_sample_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sample_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sample_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sample_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "sample_entity" as
          select "id",
            "active",
            "deleted",
            "lastupdated" from "_sample_entity"
    ;

    DROP VIEW IF EXISTS "saved_search_entity";

    DROP FOREIGN TABLE IF EXISTS "_saved_search_entity";
    CREATE FOREIGN TABLE "_saved_search_entity"
      ("id" int,
       "title" text,
       "entity_type" char(50),
       "query_string" text,
       "query_filters_string" text,
       "owner" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'saved_search_entity'
    );
COMMENT on COLUMN "_saved_search_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_saved_search_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_saved_search_entity"."entity_type" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_saved_search_entity"."query_string" IS $$remote type: longtext$$;
COMMENT on COLUMN "_saved_search_entity"."query_filters_string" IS $$remote type: text$$;
COMMENT on COLUMN "_saved_search_entity"."owner" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_saved_search_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_saved_search_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_saved_search_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "saved_search_entity" as
          select "id",
            "title",
            "entity_type",
            "query_string",
            "query_filters_string",
            "owner",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_saved_search_entity"
    ;

    DROP VIEW IF EXISTS "sbt_dnd_periods";

    DROP FOREIGN TABLE IF EXISTS "_sbt_dnd_periods";
    CREATE FOREIGN TABLE "_sbt_dnd_periods"
      ("id" int,
       "start_time" text,
       "stop_time" text,
       "weekdays" char(15),
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sbt_dnd_periods'
    );
COMMENT on COLUMN "_sbt_dnd_periods"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sbt_dnd_periods"."start_time" IS $$remote type: time$$;
COMMENT on COLUMN "_sbt_dnd_periods"."stop_time" IS $$remote type: time$$;
COMMENT on COLUMN "_sbt_dnd_periods"."weekdays" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_sbt_dnd_periods"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sbt_dnd_periods"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sbt_dnd_periods"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "sbt_dnd_periods" as
          select "id",
            "start_time",
            "stop_time",
            "weekdays",
            "active",
            "deleted",
            "lastupdated" from "_sbt_dnd_periods"
    ;

    DROP VIEW IF EXISTS "sbt_message_log";

    DROP FOREIGN TABLE IF EXISTS "_sbt_message_log";
    CREATE FOREIGN TABLE "_sbt_message_log"
      ("id" int,
       "customer_id" int,
       "customer_phone_id" int,
       "loan_id" int,
       "loan_display_id" char(25),
       "phone" char(20),
       "outbound" int,
       "inbound" int,
       "status" int,
       "status_text" text,
       "time" text,
       "type" char(20),
       "template" int,
       "message" text,
       "sbt_tx_ticket" text,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sbt_message_log'
    );
COMMENT on COLUMN "_sbt_message_log"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sbt_message_log"."customer_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sbt_message_log"."customer_phone_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sbt_message_log"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sbt_message_log"."loan_display_id" IS $$remote type: char(25)$$;
COMMENT on COLUMN "_sbt_message_log"."phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_sbt_message_log"."outbound" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_sbt_message_log"."inbound" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_sbt_message_log"."status" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_sbt_message_log"."status_text" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_sbt_message_log"."time" IS $$remote type: datetime$$;
COMMENT on COLUMN "_sbt_message_log"."type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_sbt_message_log"."template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_sbt_message_log"."message" IS $$remote type: varchar(1000)$$;
COMMENT on COLUMN "_sbt_message_log"."sbt_tx_ticket" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_sbt_message_log"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sbt_message_log"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "sbt_message_log" as
          select "id",
            "customer_id",
            "customer_phone_id",
            "loan_id",
            "loan_display_id",
            "phone",
            "outbound",
            "inbound",
            "status",
            "status_text",
            nullif("time", '0000-00-00 00:00:00')::timestamp as "time",
            "type",
            "template",
            "message",
            "sbt_tx_ticket",
            "deleted",
            "lastupdated" from "_sbt_message_log"
    ;

    DROP VIEW IF EXISTS "sbt_template_mapping";

    DROP FOREIGN TABLE IF EXISTS "_sbt_template_mapping";
    CREATE FOREIGN TABLE "_sbt_template_mapping"
      ("id" int,
       "template_id" int,
       "template_variable" text,
       "context_variable" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sbt_template_mapping'
    );
COMMENT on COLUMN "_sbt_template_mapping"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sbt_template_mapping"."template_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sbt_template_mapping"."template_variable" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_sbt_template_mapping"."context_variable" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_sbt_template_mapping"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sbt_template_mapping"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sbt_template_mapping"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "sbt_template_mapping" as
          select "id",
            "template_id",
            "template_variable",
            "context_variable",
            "active",
            "deleted",
            "lastupdated" from "_sbt_template_mapping"
    ;

    DROP VIEW IF EXISTS "scheduled_action_entity";

    DROP FOREIGN TABLE IF EXISTS "_scheduled_action_entity";
    CREATE FOREIGN TABLE "_scheduled_action_entity"
      ("id" int,
       "uuid" text,
       "series_id" text,
       "trigger_key" text,
       "ui_state" text,
       "user_id" int,
       "receiver_id" text,
       "job_name" varchar(100),
       "cron" varchar(50),
       "start_time" int,
       "schedule" text,
       "data" text,
       "type" varchar(100),
       "active" int,
       "last_execution" text,
       "execution_count" bigint,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'scheduled_action_entity'
    );
COMMENT on COLUMN "_scheduled_action_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_scheduled_action_entity"."uuid" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_action_entity"."series_id" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_action_entity"."trigger_key" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_action_entity"."ui_state" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_action_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_scheduled_action_entity"."receiver_id" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_action_entity"."job_name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_scheduled_action_entity"."cron" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_scheduled_action_entity"."start_time" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_scheduled_action_entity"."schedule" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_action_entity"."data" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_action_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_scheduled_action_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_scheduled_action_entity"."last_execution" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_scheduled_action_entity"."execution_count" IS $$remote type: bigint(11)$$;
COMMENT on COLUMN "_scheduled_action_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_scheduled_action_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_scheduled_action_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "scheduled_action_entity" as
          select "id",
            "uuid",
            "series_id",
            "trigger_key",
            "ui_state",
            "user_id",
            "receiver_id",
            "job_name",
            "cron",
            "start_time",
            "schedule",
            "data",
            "type",
            "active",
            nullif("last_execution", '0000-00-00 00:00:00')::timestamp as "last_execution",
            "execution_count",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_scheduled_action_entity"
    ;

    DROP VIEW IF EXISTS "scheduled_report_entity";

    DROP FOREIGN TABLE IF EXISTS "_scheduled_report_entity";
    CREATE FOREIGN TABLE "_scheduled_report_entity"
      ("id" int,
       "report_name" text,
       "report_type" text,
       "report_entity_type" char(100),
       "next_execution_datetime" text,
       "last_execution_datetime" text,
       "recurrent" int,
       "frequency" char(100),
       "output_format" char(32),
       "config_data" text,
       "notify_users" text,
       "trigger_uuid" text,
       "trigger_key" text,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'scheduled_report_entity'
    );
COMMENT on COLUMN "_scheduled_report_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_scheduled_report_entity"."report_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_scheduled_report_entity"."report_type" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_scheduled_report_entity"."report_entity_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_scheduled_report_entity"."next_execution_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_scheduled_report_entity"."last_execution_datetime" IS $$remote type: datetime$$;
COMMENT on COLUMN "_scheduled_report_entity"."recurrent" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_scheduled_report_entity"."frequency" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_scheduled_report_entity"."output_format" IS $$remote type: char(32)$$;
COMMENT on COLUMN "_scheduled_report_entity"."config_data" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_report_entity"."notify_users" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_report_entity"."trigger_uuid" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_report_entity"."trigger_key" IS $$remote type: text$$;
COMMENT on COLUMN "_scheduled_report_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_scheduled_report_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_scheduled_report_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "scheduled_report_entity" as
          select "id",
            "report_name",
            "report_type",
            "report_entity_type",
            nullif("next_execution_datetime", '0000-00-00 00:00:00')::timestamp as "next_execution_datetime",
            nullif("last_execution_datetime", '0000-00-00 00:00:00')::timestamp as "last_execution_datetime",
            "recurrent",
            "frequency",
            "output_format",
            "config_data",
            "notify_users",
            "trigger_uuid",
            "trigger_key",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_scheduled_report_entity"
    ;

    DROP VIEW IF EXISTS "schedule_roll_template_entity";

    DROP FOREIGN TABLE IF EXISTS "_schedule_roll_template_entity";
    CREATE FOREIGN TABLE "_schedule_roll_template_entity"
      ("id" int,
       "title" text,
       "prorate_1st_payment" int,
       "calculation_type" char(29),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'schedule_roll_template_entity'
    );
COMMENT on COLUMN "_schedule_roll_template_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_schedule_roll_template_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_schedule_roll_template_entity"."prorate_1st_payment" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_schedule_roll_template_entity"."calculation_type" IS $$remote type: char(29)$$;
COMMENT on COLUMN "_schedule_roll_template_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_schedule_roll_template_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "schedule_roll_template_entity" as
          select "id",
            "title",
            "prorate_1st_payment",
            "calculation_type",
            "deleted",
            "lastupdated" from "_schedule_roll_template_entity"
    ;

    DROP VIEW IF EXISTS "schedule_template_lines_entity";

    DROP FOREIGN TABLE IF EXISTS "_schedule_template_lines_entity";
    CREATE FOREIGN TABLE "_schedule_template_lines_entity"
      ("id" int,
       "template_id" int,
       "term" int,
       "rate" decimal(11,2),
       "solve_for" varchar(40),
       "solve_using" char(40),
       "amount" decimal(11,2),
       "balance" decimal(11,2),
       "percent" decimal(11,2),
       "advanced_terms" int,
       "force_balloon" int,
       "last_as_final" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'schedule_template_lines_entity'
    );
COMMENT on COLUMN "_schedule_template_lines_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."template_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."term" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."rate" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."solve_for" IS $$remote type: varchar(40)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."solve_using" IS $$remote type: char(40)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."percent" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."advanced_terms" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."force_balloon" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."last_as_final" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_schedule_template_lines_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "schedule_template_lines_entity" as
          select "id",
            "template_id",
            "term",
            "rate",
            "solve_for",
            "solve_using",
            "amount",
            "balance",
            "percent",
            "advanced_terms",
            "force_balloon",
            "deleted",
            "lastupdated",
            "last_as_final" from "_schedule_template_lines_entity"
    ;

    DROP VIEW IF EXISTS "schema_version";

    DROP FOREIGN TABLE IF EXISTS "_schema_version";
    CREATE FOREIGN TABLE "_schema_version"
      ("version_rank" int,
       "installed_rank" int,
       "version" varchar(50),
       "description" text,
       "type" varchar(20),
       "script" text,
       "checksum" int,
       "installed_by" varchar(100),
       "installed_on" text,
       "execution_time" int,
       "success" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'schema_version'
    );
COMMENT on COLUMN "_schema_version"."version_rank" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_schema_version"."installed_rank" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_schema_version"."version" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_schema_version"."description" IS $$remote type: varchar(200)$$;
COMMENT on COLUMN "_schema_version"."type" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_schema_version"."script" IS $$remote type: varchar(1000)$$;
COMMENT on COLUMN "_schema_version"."checksum" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_schema_version"."installed_by" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_schema_version"."installed_on" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_schema_version"."execution_time" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_schema_version"."success" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "schema_version" as
          select "version_rank",
            "installed_rank",
            "version",
            "description",
            "type",
            "script",
            "checksum",
            "installed_by",
            nullif("installed_on", '0000-00-00 00:00:00')::timestamp as "installed_on",
            "execution_time",
            "success" from "_schema_version"
    ;

    DROP VIEW IF EXISTS "search_index_error_log";

    DROP FOREIGN TABLE IF EXISTS "_search_index_error_log";
    CREATE FOREIGN TABLE "_search_index_error_log"
      ("entity_id" int,
       "entity_type" varchar(45),
       "date" text,
       "error" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'search_index_error_log'
    );
COMMENT on COLUMN "_search_index_error_log"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_search_index_error_log"."entity_type" IS $$remote type: varchar(45)$$;
COMMENT on COLUMN "_search_index_error_log"."date" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_search_index_error_log"."error" IS $$remote type: varchar(450)$$;
    CREATE VIEW "search_index_error_log" as
          select "entity_id",
            "entity_type",
            nullif("date", '0000-00-00 00:00:00')::timestamp as "date",
            "error" from "_search_index_error_log"
    ;

    DROP VIEW IF EXISTS "search_restriction_group_entity";

    DROP FOREIGN TABLE IF EXISTS "_search_restriction_group_entity";
    CREATE FOREIGN TABLE "_search_restriction_group_entity"
      ("id" int,
       "name" text,
       "search_type" varchar(50),
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'search_restriction_group_entity'
    );
COMMENT on COLUMN "_search_restriction_group_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_search_restriction_group_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_search_restriction_group_entity"."search_type" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_search_restriction_group_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_search_restriction_group_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "search_restriction_group_entity" as
          select "id",
            "name",
            "search_type",
            "deleted",
            "lastupdated" from "_search_restriction_group_entity"
    ;

    DROP VIEW IF EXISTS "search_restriction_setting_entity";

    DROP FOREIGN TABLE IF EXISTS "_search_restriction_setting_entity";
    CREATE FOREIGN TABLE "_search_restriction_setting_entity"
      ("id" int,
       "search_restriction_group_id" int,
       "name" char(64),
       "value" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'search_restriction_setting_entity'
    );
COMMENT on COLUMN "_search_restriction_setting_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_search_restriction_setting_entity"."search_restriction_group_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_search_restriction_setting_entity"."name" IS $$remote type: char(64)$$;
COMMENT on COLUMN "_search_restriction_setting_entity"."value" IS $$remote type: text$$;
COMMENT on COLUMN "_search_restriction_setting_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_search_restriction_setting_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_search_restriction_setting_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "search_restriction_setting_entity" as
          select "id",
            "search_restriction_group_id",
            "name",
            "value",
            "active",
            "deleted",
            "lastupdated" from "_search_restriction_setting_entity"
    ;

    DROP VIEW IF EXISTS "security_group";

    DROP FOREIGN TABLE IF EXISTS "_security_group";
    CREATE FOREIGN TABLE "_security_group"
      ("id" int,
       "name" varchar(50),
       "description" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'security_group'
    );
COMMENT on COLUMN "_security_group"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_security_group"."name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_security_group"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_security_group"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_security_group"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_security_group"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "security_group" as
          select "id",
            "name",
            "description",
            "active",
            "deleted",
            "lastupdated" from "_security_group"
    ;

    DROP VIEW IF EXISTS "security_group__user";

    DROP FOREIGN TABLE IF EXISTS "_security_group__user";
    CREATE FOREIGN TABLE "_security_group__user"
      ("id" int,
       "security_group_id" int,
       "tenant_user_id" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'security_group__user'
    );
COMMENT on COLUMN "_security_group__user"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_security_group__user"."security_group_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_security_group__user"."tenant_user_id" IS $$remote type: int(11) unsigned$$;
    CREATE VIEW "security_group__user" as
          select "id",
            "security_group_id",
            "tenant_user_id" from "_security_group__user"
    ;

    DROP VIEW IF EXISTS "shortcut_set_entity";

    DROP FOREIGN TABLE IF EXISTS "_shortcut_set_entity";
    CREATE FOREIGN TABLE "_shortcut_set_entity"
      ("id" int,
       "name" text,
       "log_payment_enabled" int,
       "log_charge_enabled" int,
       "quick_note_enabled" int,
       "advancement_enabled" int,
       "promises_enabled" int,
       "change_due_date_enabled" int,
       "custom_forms_enabled" int,
       "loan_archive_report_enabled" int,
       "transactions_report_enabled" int,
       "credit_enabled" int,
       "autopay_enabled" int,
       "post_note_enabled" int,
       "settings_enabled" int,
       "collateral_enabled" int,
       "insurance_enabled" int,
       "servicing_tools_enabled" int,
       "checklist_enabled" int,
       "documents_enabled" int,
       "delinquency_report_enabled" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'shortcut_set_entity'
    );
COMMENT on COLUMN "_shortcut_set_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_shortcut_set_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_shortcut_set_entity"."log_payment_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."log_charge_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."quick_note_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."advancement_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."promises_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."change_due_date_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."custom_forms_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."loan_archive_report_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."transactions_report_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."credit_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."autopay_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."post_note_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."settings_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."collateral_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."insurance_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."servicing_tools_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."checklist_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."documents_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."delinquency_report_enabled" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_shortcut_set_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_shortcut_set_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "shortcut_set_entity" as
          select "id",
            "name",
            "log_payment_enabled",
            "log_charge_enabled",
            "quick_note_enabled",
            "advancement_enabled",
            "promises_enabled",
            "change_due_date_enabled",
            "custom_forms_enabled",
            "loan_archive_report_enabled",
            "transactions_report_enabled",
            "credit_enabled",
            "autopay_enabled",
            "post_note_enabled",
            "settings_enabled",
            "collateral_enabled",
            "insurance_enabled",
            "servicing_tools_enabled",
            "checklist_enabled",
            "documents_enabled",
            "delinquency_report_enabled",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_shortcut_set_entity"
    ;

    DROP VIEW IF EXISTS "sms_delivery_entity";

    DROP FOREIGN TABLE IF EXISTS "_sms_delivery_entity";
    CREATE FOREIGN TABLE "_sms_delivery_entity"
      ("id" int,
       "delivery_id" int,
       "draft" text,
       "sms_template_id" int,
       "sms_template_type" char(32),
       "restriction" text,
       "restriction_ui" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sms_delivery_entity'
    );
COMMENT on COLUMN "_sms_delivery_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sms_delivery_entity"."delivery_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sms_delivery_entity"."draft" IS $$remote type: text$$;
COMMENT on COLUMN "_sms_delivery_entity"."sms_template_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_sms_delivery_entity"."sms_template_type" IS $$remote type: char(32)$$;
COMMENT on COLUMN "_sms_delivery_entity"."restriction" IS $$remote type: text$$;
COMMENT on COLUMN "_sms_delivery_entity"."restriction_ui" IS $$remote type: text$$;
COMMENT on COLUMN "_sms_delivery_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_sms_delivery_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_sms_delivery_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "sms_delivery_entity" as
          select "id",
            "delivery_id",
            "draft",
            "sms_template_id",
            "sms_template_type",
            "restriction",
            "restriction_ui",
            "active",
            "deleted",
            "lastupdated" from "_sms_delivery_entity"
    ;

    DROP VIEW IF EXISTS "sms_trigger_entity";

    DROP FOREIGN TABLE IF EXISTS "_sms_trigger_entity";
    CREATE FOREIGN TABLE "_sms_trigger_entity"
      ("id" int,
       "title" varchar(100),
       "sbt_template_id" int,
       "sbt_template_type" char(20),
       "trigger_rule" text,
       "restriction_rule" text,
       "state" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sms_trigger_entity'
    );
COMMENT on COLUMN "_sms_trigger_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sms_trigger_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_sms_trigger_entity"."sbt_template_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sms_trigger_entity"."sbt_template_type" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_sms_trigger_entity"."trigger_rule" IS $$remote type: text$$;
COMMENT on COLUMN "_sms_trigger_entity"."restriction_rule" IS $$remote type: text$$;
COMMENT on COLUMN "_sms_trigger_entity"."state" IS $$remote type: text$$;
COMMENT on COLUMN "_sms_trigger_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_sms_trigger_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_sms_trigger_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_sms_trigger_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "sms_trigger_entity" as
          select "id",
            "title",
            "sbt_template_id",
            "sbt_template_type",
            "trigger_rule",
            "restriction_rule",
            "state",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_sms_trigger_entity"
    ;

    DROP VIEW IF EXISTS "sound_group_entity";

    DROP FOREIGN TABLE IF EXISTS "_sound_group_entity";
    CREATE FOREIGN TABLE "_sound_group_entity"
      ("id" int,
       "name" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sound_group_entity'
    );
COMMENT on COLUMN "_sound_group_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sound_group_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_sound_group_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sound_group_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sound_group_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_sound_group_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "sound_group_entity" as
          select "id",
            "name",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_sound_group_entity"
    ;

    DROP VIEW IF EXISTS "sound_group_item_entity";

    DROP FOREIGN TABLE IF EXISTS "_sound_group_item_entity";
    CREATE FOREIGN TABLE "_sound_group_item_entity"
      ("id" int,
       "sound_group_id" int,
       "event" varchar(100),
       "sound" varchar(100),
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sound_group_item_entity'
    );
COMMENT on COLUMN "_sound_group_item_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sound_group_item_entity"."sound_group_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sound_group_item_entity"."event" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_sound_group_item_entity"."sound" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_sound_group_item_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sound_group_item_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sound_group_item_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_sound_group_item_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "sound_group_item_entity" as
          select "id",
            "sound_group_id",
            "event",
            "sound",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_sound_group_item_entity"
    ;

    DROP VIEW IF EXISTS "source_company_entity";

    DROP FOREIGN TABLE IF EXISTS "_source_company_entity";
    CREATE FOREIGN TABLE "_source_company_entity"
      ("id" int,
       "company_name" text,
       "contact_name" text,
       "contact_phone" char(20),
       "contact_email" text,
       "address_id" int,
       "checking_account_id" int,
       "mc_id" int,
       "num_prefix" varchar(20),
       "num_suffix" varchar(20),
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'source_company_entity'
    );
COMMENT on COLUMN "_source_company_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_source_company_entity"."company_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_source_company_entity"."contact_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_source_company_entity"."contact_phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_source_company_entity"."contact_email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_source_company_entity"."address_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_source_company_entity"."checking_account_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_source_company_entity"."mc_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_source_company_entity"."num_prefix" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_source_company_entity"."num_suffix" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_source_company_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_source_company_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_source_company_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_source_company_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "source_company_entity" as
          select "id",
            "company_name",
            "contact_name",
            "contact_phone",
            "contact_email",
            "address_id",
            "checking_account_id",
            "mc_id",
            "num_prefix",
            "num_suffix",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_source_company_entity"
    ;

    DROP VIEW IF EXISTS "special_report_entity";

    DROP FOREIGN TABLE IF EXISTS "_special_report_entity";
    CREATE FOREIGN TABLE "_special_report_entity"
      ("id" int,
       "name" varchar(100),
       "description" text,
       "query" text,
       "query_filters" text,
       "template" text,
       "format" char(3),
       "separator" char(1),
       "headers" int,
       "summary_file" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'special_report_entity'
    );
COMMENT on COLUMN "_special_report_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_special_report_entity"."name" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_special_report_entity"."description" IS $$remote type: varchar(250)$$;
COMMENT on COLUMN "_special_report_entity"."query" IS $$remote type: text$$;
COMMENT on COLUMN "_special_report_entity"."query_filters" IS $$remote type: text$$;
COMMENT on COLUMN "_special_report_entity"."template" IS $$remote type: text$$;
COMMENT on COLUMN "_special_report_entity"."format" IS $$remote type: char(3)$$;
COMMENT on COLUMN "_special_report_entity"."separator" IS $$remote type: char(1)$$;
COMMENT on COLUMN "_special_report_entity"."headers" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_special_report_entity"."summary_file" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_special_report_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_special_report_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_special_report_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "special_report_entity" as
          select "id",
            "name",
            "description",
            "query",
            "template",
            "format",
            "separator",
            "headers",
            "summary_file",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "query_filters" from "_special_report_entity"
    ;

    DROP VIEW IF EXISTS "stoplight_entity";

    DROP FOREIGN TABLE IF EXISTS "_stoplight_entity";
    CREATE FOREIGN TABLE "_stoplight_entity"
      ("id" int,
       "rule" text,
       "display" varchar(100),
       "style" varchar(100),
       "color" varchar(100),
       "state" int,
       "uistate" text,
       "priority" bigint,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'stoplight_entity'
    );
COMMENT on COLUMN "_stoplight_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_stoplight_entity"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_stoplight_entity"."display" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_stoplight_entity"."style" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_stoplight_entity"."color" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_stoplight_entity"."state" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_stoplight_entity"."uistate" IS $$remote type: text$$;
COMMENT on COLUMN "_stoplight_entity"."priority" IS $$remote type: bigint(20)$$;
COMMENT on COLUMN "_stoplight_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_stoplight_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_stoplight_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_stoplight_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "stoplight_entity" as
          select "id",
            "rule",
            "display",
            "style",
            "color",
            "state",
            "uistate",
            "priority",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_stoplight_entity"
    ;

    DROP VIEW IF EXISTS "sub_portfolio_entity";

    DROP FOREIGN TABLE IF EXISTS "_sub_portfolio_entity";
    CREATE FOREIGN TABLE "_sub_portfolio_entity"
      ("id" int,
       "title" text,
       "parent" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'sub_portfolio_entity'
    );
COMMENT on COLUMN "_sub_portfolio_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sub_portfolio_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_sub_portfolio_entity"."parent" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_sub_portfolio_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_sub_portfolio_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_sub_portfolio_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_sub_portfolio_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "sub_portfolio_entity" as
          select "id",
            "title",
            "parent",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_sub_portfolio_entity"
    ;

    DROP VIEW IF EXISTS "support_transaction_entity";

    DROP FOREIGN TABLE IF EXISTS "_support_transaction_entity";
    CREATE FOREIGN TABLE "_support_transaction_entity"
      ("id" int,
       "title" varchar(100),
       "support_date" text,
       "minutes" int,
       "adjustment_type" int,
       "notes" text,
       "user_id" int,
       "created" text,
       "lastupdated" timestamptz,
       "staff_user_id" int,
       "deleted" int,
       "support_code_id" int,
       "remote_addr" char(20))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'support_transaction_entity'
    );
COMMENT on COLUMN "_support_transaction_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_support_transaction_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_support_transaction_entity"."support_date" IS $$remote type: datetime$$;
COMMENT on COLUMN "_support_transaction_entity"."minutes" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_support_transaction_entity"."adjustment_type" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_support_transaction_entity"."notes" IS $$remote type: text$$;
COMMENT on COLUMN "_support_transaction_entity"."user_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_support_transaction_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_support_transaction_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_support_transaction_entity"."staff_user_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_support_transaction_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_support_transaction_entity"."support_code_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_support_transaction_entity"."remote_addr" IS $$remote type: char(20)$$;
    CREATE VIEW "support_transaction_entity" as
          select "id",
            "title",
            nullif("support_date", '0000-00-00 00:00:00')::timestamp as "support_date",
            "minutes",
            "adjustment_type",
            "notes",
            "user_id",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "staff_user_id",
            "deleted",
            "support_code_id",
            "remote_addr" from "_support_transaction_entity"
    ;

    DROP VIEW IF EXISTS "support_transaction__topic";

    DROP FOREIGN TABLE IF EXISTS "_support_transaction__topic";
    CREATE FOREIGN TABLE "_support_transaction__topic"
      ("support_transaction_id" int,
       "topic_id" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'support_transaction__topic'
    );
COMMENT on COLUMN "_support_transaction__topic"."support_transaction_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_support_transaction__topic"."topic_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_support_transaction__topic"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "support_transaction__topic" as
          select "support_transaction_id",
            "topic_id",
            "lastupdated" from "_support_transaction__topic"
    ;

    DROP VIEW IF EXISTS "system_note_entity";

    DROP FOREIGN TABLE IF EXISTS "_system_note_entity";
    CREATE FOREIGN TABLE "_system_note_entity"
      ("id" int,
       "entity_type" char(50),
       "entity_id" int,
       "reference_type" char(50),
       "reference_id" int,
       "operation_type" text,
       "operation_sub_type" char(100),
       "create_user" int,
       "create_user_name" text,
       "created" text,
       "lastupdated" timestamptz,
       "remote_addr" char(20),
       "note_title" text,
       "note_data" text,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'system_note_entity'
    );
COMMENT on COLUMN "_system_note_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_system_note_entity"."entity_type" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_system_note_entity"."entity_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_system_note_entity"."reference_type" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_system_note_entity"."reference_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_system_note_entity"."operation_type" IS $$remote type: enum('CREATE','UPDATE','DELETE','SERVICE_CALL')$$;
COMMENT on COLUMN "_system_note_entity"."operation_sub_type" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_system_note_entity"."create_user" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_system_note_entity"."create_user_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_system_note_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_system_note_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_system_note_entity"."remote_addr" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_system_note_entity"."note_title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_system_note_entity"."note_data" IS $$remote type: text$$;
COMMENT on COLUMN "_system_note_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "system_note_entity" as
          select "id",
            "entity_type",
            "entity_id",
            "reference_type",
            "reference_id",
            "operation_type",
            "operation_sub_type",
            "create_user",
            "create_user_name",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "remote_addr",
            "note_title",
            "note_data",
            "deleted" from "_system_note_entity"
    ;

    DROP VIEW IF EXISTS "tcn_campaign_entity";

    DROP FOREIGN TABLE IF EXISTS "_tcn_campaign_entity";
    CREATE FOREIGN TABLE "_tcn_campaign_entity"
      ("id" int,
       "broadcast_id" int,
       "broadcast_start" text,
       "lastupdated" timestamptz,
       "broadcast_template" int,
       "recipients" text,
       "status" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tcn_campaign_entity'
    );
COMMENT on COLUMN "_tcn_campaign_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tcn_campaign_entity"."broadcast_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_tcn_campaign_entity"."broadcast_start" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tcn_campaign_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tcn_campaign_entity"."broadcast_template" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_tcn_campaign_entity"."recipients" IS $$remote type: longtext$$;
COMMENT on COLUMN "_tcn_campaign_entity"."status" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_tcn_campaign_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "tcn_campaign_entity" as
          select "id",
            "broadcast_id",
            nullif("broadcast_start", '0000-00-00 00:00:00')::timestamp as "broadcast_start",
            "lastupdated",
            "broadcast_template",
            "recipients",
            "status",
            "deleted" from "_tcn_campaign_entity"
    ;

    DROP VIEW IF EXISTS "tcn_queue_item_entity";

    DROP FOREIGN TABLE IF EXISTS "_tcn_queue_item_entity";
    CREATE FOREIGN TABLE "_tcn_queue_item_entity"
      ("id" int,
       "loan_id" int,
       "cust_primary" int,
       "cust_primary_phone" int,
       "cust_primary_phone_sec" int,
       "cust_secondary" int,
       "cust_secondary_phone" int,
       "cust_secondary_phone_sec" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tcn_queue_item_entity'
    );
COMMENT on COLUMN "_tcn_queue_item_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."loan_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."cust_primary" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."cust_primary_phone" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."cust_primary_phone_sec" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."cust_secondary" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."cust_secondary_phone" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."cust_secondary_phone_sec" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tcn_queue_item_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "tcn_queue_item_entity" as
          select "id",
            "loan_id",
            "cust_primary",
            "cust_primary_phone",
            "cust_primary_phone_sec",
            "cust_secondary",
            "cust_secondary_phone",
            "cust_secondary_phone_sec",
            "deleted",
            "lastupdated" from "_tcn_queue_item_entity"
    ;

    DROP VIEW IF EXISTS "tenant_backup_log_entity";

    DROP FOREIGN TABLE IF EXISTS "_tenant_backup_log_entity";
    CREATE FOREIGN TABLE "_tenant_backup_log_entity"
      ("id" int,
       "batch_id" char(20),
       "database" char(50),
       "s3_bucket" char(50),
       "s3_path" text,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tenant_backup_log_entity'
    );
COMMENT on COLUMN "_tenant_backup_log_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_backup_log_entity"."batch_id" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_tenant_backup_log_entity"."database" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_tenant_backup_log_entity"."s3_bucket" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_tenant_backup_log_entity"."s3_path" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_tenant_backup_log_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_backup_log_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_backup_log_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "tenant_backup_log_entity" as
          select "id",
            "batch_id",
            "database",
            "s3_bucket",
            "s3_path",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_tenant_backup_log_entity"
    ;

    DROP VIEW IF EXISTS "tenant_bulk_purchase_entity";

    DROP FOREIGN TABLE IF EXISTS "_tenant_bulk_purchase_entity";
    CREATE FOREIGN TABLE "_tenant_bulk_purchase_entity"
      ("id" int,
       "title" varchar(100),
       "price" decimal(11,2),
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tenant_bulk_purchase_entity'
    );
COMMENT on COLUMN "_tenant_bulk_purchase_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_bulk_purchase_entity"."title" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_tenant_bulk_purchase_entity"."price" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_tenant_bulk_purchase_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_bulk_purchase_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_bulk_purchase_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_tenant_bulk_purchase_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "tenant_bulk_purchase_entity" as
          select "id",
            "title",
            "price",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_tenant_bulk_purchase_entity"
    ;

    DROP VIEW IF EXISTS "tenant_checklist_category_entity";

    DROP FOREIGN TABLE IF EXISTS "_tenant_checklist_category_entity";
    CREATE FOREIGN TABLE "_tenant_checklist_category_entity"
      ("id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tenant_checklist_category_entity'
    );
COMMENT on COLUMN "_tenant_checklist_category_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_checklist_category_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_tenant_checklist_category_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tenant_checklist_category_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tenant_checklist_category_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_checklist_category_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "tenant_checklist_category_entity" as
          select "id",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_tenant_checklist_category_entity"
    ;

    DROP VIEW IF EXISTS "tenant_checklist_entity";

    DROP FOREIGN TABLE IF EXISTS "_tenant_checklist_entity";
    CREATE FOREIGN TABLE "_tenant_checklist_entity"
      ("id" int,
       "category_id" int,
       "title" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "modified" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tenant_checklist_entity'
    );
COMMENT on COLUMN "_tenant_checklist_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_checklist_entity"."category_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_checklist_entity"."title" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_tenant_checklist_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tenant_checklist_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_tenant_checklist_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_checklist_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_checklist_entity"."modified" IS $$remote type: datetime$$;
    CREATE VIEW "tenant_checklist_entity" as
          select "id",
            "category_id",
            "title",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            nullif("modified", '0000-00-00 00:00:00')::timestamp as "modified" from "_tenant_checklist_entity"
    ;

    DROP VIEW IF EXISTS "tenant_plugins_contract_entity";

    DROP FOREIGN TABLE IF EXISTS "_tenant_plugins_contract_entity";
    CREATE FOREIGN TABLE "_tenant_plugins_contract_entity"
      ("id" int,
       "user_id" int,
       "user_ip" char(20),
       "contract_id" int,
       "type" char(50),
       "created" text,
       "deleted" int,
       "contract_info" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tenant_plugins_contract_entity'
    );
COMMENT on COLUMN "_tenant_plugins_contract_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_plugins_contract_entity"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_plugins_contract_entity"."user_ip" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_tenant_plugins_contract_entity"."contract_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_plugins_contract_entity"."type" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_tenant_plugins_contract_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_plugins_contract_entity"."deleted" IS $$remote type: smallint(1)$$;
COMMENT on COLUMN "_tenant_plugins_contract_entity"."contract_info" IS $$remote type: text$$;
    CREATE VIEW "tenant_plugins_contract_entity" as
          select "id",
            "user_id",
            "user_ip",
            "contract_id",
            "type",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "deleted",
            "contract_info" from "_tenant_plugins_contract_entity"
    ;

    DROP VIEW IF EXISTS "tenant_pricing_tier_entity";

    DROP FOREIGN TABLE IF EXISTS "_tenant_pricing_tier_entity";
    CREATE FOREIGN TABLE "_tenant_pricing_tier_entity"
      ("id" int,
       "begin" int,
       "end" int,
       "price" decimal(11,3),
       "price_per_loan" int,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tenant_pricing_tier_entity'
    );
COMMENT on COLUMN "_tenant_pricing_tier_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_pricing_tier_entity"."begin" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_pricing_tier_entity"."end" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_tenant_pricing_tier_entity"."price" IS $$remote type: decimal(11,3)$$;
COMMENT on COLUMN "_tenant_pricing_tier_entity"."price_per_loan" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_tenant_pricing_tier_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_pricing_tier_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_pricing_tier_entity"."active" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_tenant_pricing_tier_entity"."deleted" IS $$remote type: tinyint(4)$$;
    CREATE VIEW "tenant_pricing_tier_entity" as
          select "id",
            "begin",
            "end",
            "price",
            "price_per_loan",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_tenant_pricing_tier_entity"
    ;

    DROP VIEW IF EXISTS "tenant_setting__entity";

    DROP FOREIGN TABLE IF EXISTS "_tenant_setting__entity";
    CREATE FOREIGN TABLE "_tenant_setting__entity"
      ("id" char(100),
       "type" char(15),
       "label" text,
       "document" int,
       "encrypted" int,
       "sequence" int,
       "value" text,
       "group" char(50),
       "created" text,
       "modified" text,
       "modified_by" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'tenant_setting__entity'
    );
COMMENT on COLUMN "_tenant_setting__entity"."id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_tenant_setting__entity"."type" IS $$remote type: char(15)$$;
COMMENT on COLUMN "_tenant_setting__entity"."label" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_tenant_setting__entity"."document" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_tenant_setting__entity"."encrypted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_tenant_setting__entity"."sequence" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_tenant_setting__entity"."value" IS $$remote type: text$$;
COMMENT on COLUMN "_tenant_setting__entity"."group" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_tenant_setting__entity"."created" IS $$remote type: datetime$$;
COMMENT on COLUMN "_tenant_setting__entity"."modified" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_tenant_setting__entity"."modified_by" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_tenant_setting__entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "tenant_setting__entity" as
          select "id",
            "type",
            "label",
            "document",
            "encrypted",
            "sequence",
            "value",
            "group",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            nullif("modified", '0000-00-00 00:00:00')::timestamp as "modified",
            "modified_by",
            "deleted" from "_tenant_setting__entity"
    ;

    DROP VIEW IF EXISTS "testimonial_entity";

    DROP FOREIGN TABLE IF EXISTS "_testimonial_entity";
    CREATE FOREIGN TABLE "_testimonial_entity"
      ("id" int,
       "from" text,
       "location" text,
       "testimonial" text,
       "created" text,
       "lastupdated" timestamptz,
       "active" int,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'testimonial_entity'
    );
COMMENT on COLUMN "_testimonial_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_testimonial_entity"."from" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_testimonial_entity"."location" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_testimonial_entity"."testimonial" IS $$remote type: text$$;
COMMENT on COLUMN "_testimonial_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_testimonial_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_testimonial_entity"."active" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_testimonial_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "testimonial_entity" as
          select "id",
            "from",
            "location",
            "testimonial",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "active",
            "deleted" from "_testimonial_entity"
    ;

    DROP VIEW IF EXISTS "time_slot_entity";

    DROP FOREIGN TABLE IF EXISTS "_time_slot_entity";
    CREATE FOREIGN TABLE "_time_slot_entity"
      ("id" int,
       "work_item_id" int,
       "start" text,
       "end" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'time_slot_entity'
    );
COMMENT on COLUMN "_time_slot_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_time_slot_entity"."work_item_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_time_slot_entity"."start" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_time_slot_entity"."end" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_time_slot_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_time_slot_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_time_slot_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "time_slot_entity" as
          select "id",
            "work_item_id",
            nullif("start", '0000-00-00 00:00:00')::timestamp as "start",
            nullif("end", '0000-00-00 00:00:00')::timestamp as "end",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_time_slot_entity"
    ;

    DROP VIEW IF EXISTS "topic_entity";

    DROP FOREIGN TABLE IF EXISTS "_topic_entity";
    CREATE FOREIGN TABLE "_topic_entity"
      ("id" int,
       "topic_name" varchar(50),
       "parent_topic" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'topic_entity'
    );
COMMENT on COLUMN "_topic_entity"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_topic_entity"."topic_name" IS $$remote type: varchar(50)$$;
COMMENT on COLUMN "_topic_entity"."parent_topic" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_topic_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_topic_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "topic_entity" as
          select "id",
            "topic_name",
            "parent_topic",
            "deleted",
            "lastupdated" from "_topic_entity"
    ;

    DROP VIEW IF EXISTS "total_advancements";

    DROP FOREIGN TABLE IF EXISTS "_total_advancements";
    CREATE FOREIGN TABLE "_total_advancements"
      ("entity_id" int,
       "total_advancements" decimal(33,2))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'total_advancements'
    );
COMMENT on COLUMN "_total_advancements"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_total_advancements"."total_advancements" IS $$remote type: decimal(33,2)$$;
    CREATE VIEW "total_advancements" as
          select "entity_id",
            "total_advancements" from "_total_advancements"
    ;

    DROP VIEW IF EXISTS "total_credits_view";

    DROP FOREIGN TABLE IF EXISTS "_total_credits_view";
    CREATE FOREIGN TABLE "_total_credits_view"
      ("entity_id" int,
       "total_credits" decimal(33,2))
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'total_credits_view'
    );
COMMENT on COLUMN "_total_credits_view"."entity_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_total_credits_view"."total_credits" IS $$remote type: decimal(33,2)$$;
    CREATE VIEW "total_credits_view" as
          select "entity_id",
            "total_credits" from "_total_credits_view"
    ;

    DROP VIEW IF EXISTS "transaction_entity";

    DROP FOREIGN TABLE IF EXISTS "_transaction_entity";
    CREATE FOREIGN TABLE "_transaction_entity"
      ("id" int,
       "amount" decimal(11,2),
       "balance" decimal(11,2),
       "type" varchar(100),
       "description" text,
       "active" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz,
       "effective_date" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'transaction_entity'
    );
COMMENT on COLUMN "_transaction_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_transaction_entity"."amount" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_transaction_entity"."balance" IS $$remote type: decimal(11,2)$$;
COMMENT on COLUMN "_transaction_entity"."type" IS $$remote type: varchar(100)$$;
COMMENT on COLUMN "_transaction_entity"."description" IS $$remote type: varchar(500)$$;
COMMENT on COLUMN "_transaction_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_transaction_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_transaction_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_transaction_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_transaction_entity"."effective_date" IS $$remote type: date$$;
    CREATE VIEW "transaction_entity" as
          select "id",
            "amount",
            "balance",
            "type",
            "description",
            "active",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            nullif("effective_date", '0000-00-00')::date as "effective_date" from "_transaction_entity"
    ;

    DROP VIEW IF EXISTS "user_chart_settings_entity";

    DROP FOREIGN TABLE IF EXISTS "_user_chart_settings_entity";
    CREATE FOREIGN TABLE "_user_chart_settings_entity"
      ("id" int,
       "chart_id" char(100),
       "user_id" int,
       "chart_settings" text,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'user_chart_settings_entity'
    );
COMMENT on COLUMN "_user_chart_settings_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_user_chart_settings_entity"."chart_id" IS $$remote type: char(100)$$;
COMMENT on COLUMN "_user_chart_settings_entity"."user_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_user_chart_settings_entity"."chart_settings" IS $$remote type: text$$;
COMMENT on COLUMN "_user_chart_settings_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_user_chart_settings_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_user_chart_settings_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "user_chart_settings_entity" as
          select "id",
            "chart_id",
            "user_id",
            "chart_settings",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_user_chart_settings_entity"
    ;

    DROP VIEW IF EXISTS "user_search_settings_entity";

    DROP FOREIGN TABLE IF EXISTS "_user_search_settings_entity";
    CREATE FOREIGN TABLE "_user_search_settings_entity"
      ("id" int,
       "user_id" int,
       "search_entity_type" char(50),
       "search_settings" text,
       "deleted" int,
       "created" text,
       "modified" text)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'user_search_settings_entity'
    );
COMMENT on COLUMN "_user_search_settings_entity"."id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_user_search_settings_entity"."user_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_user_search_settings_entity"."search_entity_type" IS $$remote type: char(50)$$;
COMMENT on COLUMN "_user_search_settings_entity"."search_settings" IS $$remote type: text$$;
COMMENT on COLUMN "_user_search_settings_entity"."deleted" IS $$remote type: tinyint(4)$$;
COMMENT on COLUMN "_user_search_settings_entity"."created" IS $$remote type: datetime$$;
COMMENT on COLUMN "_user_search_settings_entity"."modified" IS $$remote type: timestamp$$;
    CREATE VIEW "user_search_settings_entity" as
          select "id",
            "user_id",
            "search_entity_type",
            "search_settings",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            nullif("modified", '0000-00-00 00:00:00')::timestamp as "modified" from "_user_search_settings_entity"
    ;

    DROP VIEW IF EXISTS "user_tenant_configuration";

    DROP FOREIGN TABLE IF EXISTS "_user_tenant_configuration";
    CREATE FOREIGN TABLE "_user_tenant_configuration"
      ("id" int,
       "user_id" int,
       "default_user_loan_id" int,
       "iprestriction_id" int,
       "search_restriction_group_id" int,
       "shortcuts_set_id" int,
       "deleted" int,
       "google_email" text,
       "google_password" text,
       "google_print_token" text,
       "sound_group_id" int,
       "loan_summary_template_id" int,
       "user_account_configured" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'user_tenant_configuration'
    );
COMMENT on COLUMN "_user_tenant_configuration"."id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_user_tenant_configuration"."user_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_user_tenant_configuration"."default_user_loan_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_user_tenant_configuration"."iprestriction_id" IS $$remote type: int(10) unsigned$$;
COMMENT on COLUMN "_user_tenant_configuration"."search_restriction_group_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_user_tenant_configuration"."shortcuts_set_id" IS $$remote type: int(11)$$;
COMMENT on COLUMN "_user_tenant_configuration"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_user_tenant_configuration"."google_email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_user_tenant_configuration"."google_password" IS $$remote type: text$$;
COMMENT on COLUMN "_user_tenant_configuration"."google_print_token" IS $$remote type: text$$;
COMMENT on COLUMN "_user_tenant_configuration"."sound_group_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_user_tenant_configuration"."loan_summary_template_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_user_tenant_configuration"."user_account_configured" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_user_tenant_configuration"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "user_tenant_configuration" as
          select "id",
            "user_id",
            "default_user_loan_id",
            "iprestriction_id",
            "search_restriction_group_id",
            "shortcuts_set_id",
            "deleted",
            "google_email",
            "google_password",
            "google_print_token",
            "sound_group_id",
            "loan_summary_template_id",
            "user_account_configured",
            "lastupdated" from "_user_tenant_configuration"
    ;

    DROP VIEW IF EXISTS "user__delivery";

    DROP FOREIGN TABLE IF EXISTS "_user__delivery";
    CREATE FOREIGN TABLE "_user__delivery"
      ("id" int,
       "parent_id" int,
       "user_id" int,
       "parent_type" varchar(30),
       "restriction" text,
       "restriction_ui" text,
       "rule" text,
       "ntf_visible" int,
       "ntc_visible" int,
       "active" int,
       "deleted" varchar(19),
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'user__delivery'
    );
COMMENT on COLUMN "_user__delivery"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_user__delivery"."parent_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_user__delivery"."user_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_user__delivery"."parent_type" IS $$remote type: varchar(20)$$;
COMMENT on COLUMN "_user__delivery"."restriction" IS $$remote type: text$$;
COMMENT on COLUMN "_user__delivery"."restriction_ui" IS $$remote type: text$$;
COMMENT on COLUMN "_user__delivery"."rule" IS $$remote type: text$$;
COMMENT on COLUMN "_user__delivery"."ntf_visible" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_user__delivery"."ntc_visible" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_user__delivery"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_user__delivery"."deleted" IS $$remote type: varchar(19)$$;
COMMENT on COLUMN "_user__delivery"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "user__delivery" as
          select "id",
            "parent_id",
            "user_id",
            "parent_type",
            "restriction",
            "restriction_ui",
            "rule",
            "ntf_visible",
            "ntc_visible",
            "active",
            "deleted",
            "lastupdated" from "_user__delivery"
    ;

    DROP VIEW IF EXISTS "vendor_entity";

    DROP FOREIGN TABLE IF EXISTS "_vendor_entity";
    CREATE FOREIGN TABLE "_vendor_entity"
      ("id" int,
       "vendor_name" text,
       "contact_name" text,
       "contact_phone" char(20),
       "contact_email" text,
       "address_id" int,
       "active" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'vendor_entity'
    );
COMMENT on COLUMN "_vendor_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_vendor_entity"."vendor_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_vendor_entity"."contact_name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_vendor_entity"."contact_phone" IS $$remote type: char(20)$$;
COMMENT on COLUMN "_vendor_entity"."contact_email" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_vendor_entity"."address_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_vendor_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_vendor_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_vendor_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_vendor_entity"."deleted" IS $$remote type: tinyint(1) unsigned$$;
    CREATE VIEW "vendor_entity" as
          select "id",
            "vendor_name",
            "contact_name",
            "contact_phone",
            "contact_email",
            "address_id",
            "active",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_vendor_entity"
    ;

    DROP VIEW IF EXISTS "view_module_entity";

    DROP FOREIGN TABLE IF EXISTS "_view_module_entity";
    CREATE FOREIGN TABLE "_view_module_entity"
      ("id" int,
       "name" text,
       "display_mode" text,
       "display_order" int,
       "active" int,
       "created" text,
       "lastupdated" timestamptz,
       "deleted" int)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'view_module_entity'
    );
COMMENT on COLUMN "_view_module_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_view_module_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_view_module_entity"."display_mode" IS $$remote type: enum('view.displayMode.grid','view.displayMode.list')$$;
COMMENT on COLUMN "_view_module_entity"."display_order" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_view_module_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_view_module_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_view_module_entity"."lastupdated" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_view_module_entity"."deleted" IS $$remote type: tinyint(1)$$;
    CREATE VIEW "view_module_entity" as
          select "id",
            "name",
            "display_mode",
            "display_order",
            "active",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated",
            "deleted" from "_view_module_entity"
    ;

    DROP VIEW IF EXISTS "view_template_entity";

    DROP FOREIGN TABLE IF EXISTS "_view_template_entity";
    CREATE FOREIGN TABLE "_view_template_entity"
      ("id" int,
       "name" text,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'view_template_entity'
    );
COMMENT on COLUMN "_view_template_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_view_template_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_view_template_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_view_template_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_view_template_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "view_template_entity" as
          select "id",
            "name",
            "active",
            "deleted",
            "lastupdated" from "_view_template_entity"
    ;

    DROP VIEW IF EXISTS "view_template__view_module";

    DROP FOREIGN TABLE IF EXISTS "_view_template__view_module";
    CREATE FOREIGN TABLE "_view_template__view_module"
      ("view_template_id" int,
       "view_module_id" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'view_template__view_module'
    );
COMMENT on COLUMN "_view_template__view_module"."view_template_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_view_template__view_module"."view_module_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_view_template__view_module"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_view_template__view_module"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "view_template__view_module" as
          select "view_template_id",
            "view_module_id",
            "deleted",
            "lastupdated" from "_view_template__view_module"
    ;

    DROP VIEW IF EXISTS "view_widget_entity";

    DROP FOREIGN TABLE IF EXISTS "_view_widget_entity";
    CREATE FOREIGN TABLE "_view_widget_entity"
      ("id" int,
       "name" text,
       "description" text,
       "type" text,
       "data_source" text,
       "display_order" int,
       "view_module_id" int,
       "deleted" int,
       "created" text,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'view_widget_entity'
    );
COMMENT on COLUMN "_view_widget_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_view_widget_entity"."name" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_view_widget_entity"."description" IS $$remote type: varchar(255)$$;
COMMENT on COLUMN "_view_widget_entity"."type" IS $$remote type: enum('view.widget.amountPastDueTile','view.widget.contextVar','view.widget.daysPastDueTile','view.widget.feesAndInterest','view.widget.notes','view.widget.paidBreakdownChart','view.widget.payoff','view.widget.percentPaidOffChart','view.widget.principalBalanceChart')$$;
COMMENT on COLUMN "_view_widget_entity"."data_source" IS $$remote type: text$$;
COMMENT on COLUMN "_view_widget_entity"."display_order" IS $$remote type: tinyint(1) unsigned$$;
COMMENT on COLUMN "_view_widget_entity"."view_module_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_view_widget_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_view_widget_entity"."created" IS $$remote type: timestamp$$;
COMMENT on COLUMN "_view_widget_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "view_widget_entity" as
          select "id",
            "name",
            "description",
            "type",
            "data_source",
            "display_order",
            "view_module_id",
            "deleted",
            nullif("created", '0000-00-00 00:00:00')::timestamp as "created",
            "lastupdated" from "_view_widget_entity"
    ;

    DROP VIEW IF EXISTS "web_delivery_entity";

    DROP FOREIGN TABLE IF EXISTS "_web_delivery_entity";
    CREATE FOREIGN TABLE "_web_delivery_entity"
      ("id" int,
       "delivery_id" int,
       "draft" text,
       "restriction" text,
       "restriction_ui" text,
       "eval_real_time" int,
       "active" int,
       "deleted" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'web_delivery_entity'
    );
COMMENT on COLUMN "_web_delivery_entity"."id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_web_delivery_entity"."delivery_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_web_delivery_entity"."draft" IS $$remote type: text$$;
COMMENT on COLUMN "_web_delivery_entity"."restriction" IS $$remote type: text$$;
COMMENT on COLUMN "_web_delivery_entity"."restriction_ui" IS $$remote type: text$$;
COMMENT on COLUMN "_web_delivery_entity"."eval_real_time" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_web_delivery_entity"."active" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_web_delivery_entity"."deleted" IS $$remote type: tinyint(1)$$;
COMMENT on COLUMN "_web_delivery_entity"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "web_delivery_entity" as
          select "id",
            "delivery_id",
            "draft",
            "restriction",
            "restriction_ui",
            "eval_real_time",
            "active",
            "deleted",
            "lastupdated" from "_web_delivery_entity"
    ;

    DROP VIEW IF EXISTS "work_item__questions";

    DROP FOREIGN TABLE IF EXISTS "_work_item__questions";
    CREATE FOREIGN TABLE "_work_item__questions"
      ("question_id" int,
       "work_item_id" int,
       "lastupdated" timestamptz)
    SERVER :LP_SERVER
    OPTIONS (
      dbname     :LP_DBNAME,
      table_name 'work_item__questions'
    );
COMMENT on COLUMN "_work_item__questions"."question_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_work_item__questions"."work_item_id" IS $$remote type: int(11) unsigned$$;
COMMENT on COLUMN "_work_item__questions"."lastupdated" IS $$remote type: timestamp$$;
    CREATE VIEW "work_item__questions" as
          select "question_id",
            "work_item_id",
            "lastupdated" from "_work_item__questions"
    ;
/*custom views*/

drop view if exists  payment_receipt_select_v;
create view  payment_receipt_select_v
               as SELECT c.first_name,
                        c.last_name,
                        c.email, 
                        pt.entity_id as loan_id, 
                        pt.id as payment_id,
                        cfls.custom_field_value,
                        pt.amount, 
                        Tx.payment_p, 
                        Tx.payment_i, 
                        Tx.payment_f, 
                        Tx.payment_e, 
                        pt.after_payoff, 
                        pt.created, 
                        pt.apply_date,
                        pt.payment_method_id
            FROM      payment_entity  pt 
join  loan_settings_entity lse on lse.loan_id = pt.entity_id 
  and pt.active = 1 and pt.deleted = 0
  and pt.loan_substatus
      in (20, 55, 17,26, 27,28, 36, 39,40) 
  and pt.reverse_date is null
join custom_field__entity cfp on cfp.custom_field_id=66 and cfp.entity_id=pt.id
join   loan_tx TX 
  on TX.payment_id = pt.id and TX.type = 'payment' and tx.deleted=0
join custom_field__entity cfls on cfls.custom_field_id=1 
     and cfls.entity_type='Entity.LoanSettings' and cfls.entity_id=lse.id
join loan__customer lc on lc.loan_id=pt.entity_id
join customer_entity c on lc.customer_id=c.id;

drop view if exists  payment_receipt_select_small_v;
create view   payment_receipt_select_small_v
               as SELECT 
                        pt.entity_id as loan_id, 
                        pt.id as payment_id,
                        cfls.custom_field_value,
                        pt.amount, 
                        Tx.payment_p, 
                        Tx.payment_i, 
                        Tx.payment_f, 
                        Tx.payment_e, 
                        pt.after_payoff, 
                        pt.created, 
                        pt.apply_date,
                        pt.payment_method_id
                 
            FROM     payment_entity  pt 
join  loan_settings_entity lse on lse.loan_id = pt.entity_id 
and pt.active = 1 and pt.deleted = 0
and pt.loan_substatus
 in (20, 55, 17,26, 27,28, 36, 39,40) 
and pt.reverse_date is null
join custom_field__entity cfp on cfp.custom_field_id=66 and cfp.entity_id=pt.id
      join loan_tx TX 
                      on TX.payment_id = pt.id and TX.type = 'payment' and tx.deleted=0
                    join custom_field__entity cfls on cfls.custom_field_id=1 
                    and 
                    cfls.entity_type='Entity.LoanSettings' 
                     and cfls.entity_id=lse.id;
                     
                      
 
                     
 