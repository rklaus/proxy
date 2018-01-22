
    DROP FOREIGN TABLE IF EXISTS "accounts_balanceuser";
    CREATE FOREIGN TABLE "accounts_balanceuser"
      ("id" integer,
       "password" character varying(128),
       "last_login" timestamp with time zone,
       "is_superuser" boolean,
       "email" character varying(255),
       "first_name" character varying(30),
       "last_name" character varying(30),
       "is_staff" boolean,
       "is_active" boolean,
       "date_joined" timestamp with time zone,
       "consent_to_email_contact" boolean,
       "consent_to_phone_contact" boolean,
       "address_one" character varying(255),
       "address_two" character varying(255),
       "city" character varying(50),
       "state" character varying(2),
       "zip_code" character varying(10),
       "home_phone" character varying(14),
       "cell_phone" character varying(14),
       "ssn_last_four" character varying(32),
       "dob" date,
       "dl_number" character varying(32),
       "dl_state" character varying(2),
       "activation_token" character varying(36),
       "reset_token" character varying(36))
    SERVER "balance_customer_server"
    OPTIONS (
      schema_name 'public',
      table_name  'accounts_balanceuser'
    );
COMMENT on COLUMN "accounts_balanceuser"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "accounts_balanceuser"."password" IS $$remote type: character varying(128)$$;
COMMENT on COLUMN "accounts_balanceuser"."last_login" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "accounts_balanceuser"."is_superuser" IS $$remote type: boolean$$;
COMMENT on COLUMN "accounts_balanceuser"."email" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "accounts_balanceuser"."first_name" IS $$remote type: character varying(30)$$;
COMMENT on COLUMN "accounts_balanceuser"."last_name" IS $$remote type: character varying(30)$$;
COMMENT on COLUMN "accounts_balanceuser"."is_staff" IS $$remote type: boolean$$;
COMMENT on COLUMN "accounts_balanceuser"."is_active" IS $$remote type: boolean$$;
COMMENT on COLUMN "accounts_balanceuser"."date_joined" IS $$remote type: timestamp with time zone$$;
COMMENT on COLUMN "accounts_balanceuser"."consent_to_email_contact" IS $$remote type: boolean$$;
COMMENT on COLUMN "accounts_balanceuser"."consent_to_phone_contact" IS $$remote type: boolean$$;
COMMENT on COLUMN "accounts_balanceuser"."address_one" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "accounts_balanceuser"."address_two" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "accounts_balanceuser"."city" IS $$remote type: character varying(50)$$;
COMMENT on COLUMN "accounts_balanceuser"."state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "accounts_balanceuser"."zip_code" IS $$remote type: character varying(10)$$;
COMMENT on COLUMN "accounts_balanceuser"."home_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "accounts_balanceuser"."cell_phone" IS $$remote type: character varying(14)$$;
COMMENT on COLUMN "accounts_balanceuser"."ssn_last_four" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "accounts_balanceuser"."dob" IS $$remote type: date$$;
COMMENT on COLUMN "accounts_balanceuser"."dl_number" IS $$remote type: character varying(32)$$;
COMMENT on COLUMN "accounts_balanceuser"."dl_state" IS $$remote type: character varying(2)$$;
COMMENT on COLUMN "accounts_balanceuser"."activation_token" IS $$remote type: character varying(36)$$;
COMMENT on COLUMN "accounts_balanceuser"."reset_token" IS $$remote type: character varying(36)$$;

    DROP FOREIGN TABLE IF EXISTS "accounts_balanceuser_groups";
    CREATE FOREIGN TABLE "accounts_balanceuser_groups"
      ("id" integer,
       "balanceuser_id" integer,
       "group_id" integer)
    SERVER "balance_customer_server"
    OPTIONS (
      schema_name 'public',
      table_name  'accounts_balanceuser_groups'
    );
COMMENT on COLUMN "accounts_balanceuser_groups"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "accounts_balanceuser_groups"."balanceuser_id" IS $$remote type: integer$$;
COMMENT on COLUMN "accounts_balanceuser_groups"."group_id" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "accounts_balanceuser_user_permissions";
    CREATE FOREIGN TABLE "accounts_balanceuser_user_permissions"
      ("id" integer,
       "balanceuser_id" integer,
       "permission_id" integer)
    SERVER "balance_customer_server"
    OPTIONS (
      schema_name 'public',
      table_name  'accounts_balanceuser_user_permissions'
    );
COMMENT on COLUMN "accounts_balanceuser_user_permissions"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "accounts_balanceuser_user_permissions"."balanceuser_id" IS $$remote type: integer$$;
COMMENT on COLUMN "accounts_balanceuser_user_permissions"."permission_id" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "auth_group";
    CREATE FOREIGN TABLE "auth_group"
      ("id" integer,
       "name" character varying(80))
    SERVER "balance_customer_server"
    OPTIONS (
      schema_name 'public',
      table_name  'auth_group'
    );
COMMENT on COLUMN "auth_group"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "auth_group"."name" IS $$remote type: character varying(80)$$;

    DROP FOREIGN TABLE IF EXISTS "auth_group_permissions";
    CREATE FOREIGN TABLE "auth_group_permissions"
      ("id" integer,
       "group_id" integer,
       "permission_id" integer)
    SERVER "balance_customer_server"
    OPTIONS (
      schema_name 'public',
      table_name  'auth_group_permissions'
    );
COMMENT on COLUMN "auth_group_permissions"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "auth_group_permissions"."group_id" IS $$remote type: integer$$;
COMMENT on COLUMN "auth_group_permissions"."permission_id" IS $$remote type: integer$$;

    DROP FOREIGN TABLE IF EXISTS "auth_permission";
    CREATE FOREIGN TABLE "auth_permission"
      ("id" integer,
       "name" character varying(255),
       "content_type_id" integer,
       "codename" character varying(100))
    SERVER "balance_customer_server"
    OPTIONS (
      schema_name 'public',
      table_name  'auth_permission'
    );
COMMENT on COLUMN "auth_permission"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "auth_permission"."name" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "auth_permission"."content_type_id" IS $$remote type: integer$$;
COMMENT on COLUMN "auth_permission"."codename" IS $$remote type: character varying(100)$$;

    DROP FOREIGN TABLE IF EXISTS "block_ip_blockip";
    CREATE FOREIGN TABLE "block_ip_blockip"
      ("id" integer,
       "network" character varying(18),
       "reason_for_block" text)
    SERVER "balance_customer_server"
    OPTIONS (
      schema_name 'public',
      table_name  'block_ip_blockip'
    );
COMMENT on COLUMN "block_ip_blockip"."id" IS $$remote type: integer$$;
COMMENT on COLUMN "block_ip_blockip"."network" IS $$remote type: character varying(18)$$;
COMMENT on COLUMN "block_ip_blockip"."reason_for_block" IS $$remote type: text$$;

    DROP FOREIGN TABLE IF EXISTS "cache_rlimit";
    CREATE FOREIGN TABLE "cache_rlimit"
      ("cache_key" character varying(255),
       "value" text,
       "expires" timestamp with time zone)
    SERVER "balance_customer_server"
    OPTIONS (
      schema_name 'public',
      table_name  'cache_rlimit'
    );
COMMENT on COLUMN "cache_rlimit"."cache_key" IS $$remote type: character varying(255)$$;
COMMENT on COLUMN "cache_rlimit"."value" IS $$remote type: text$$;
COMMENT on COLUMN "cache_rlimit"."expires" IS $$remote type: timestamp with time zone$$;

grant select on  balance_customer_fdw.accounts_balanceuser to dw_proxy_load;
grant select on  balance_customer_fdw.accounts_balanceuser_groups to dw_proxy_load;
grant select on  balance_customer_fdw.accounts_balanceuser_user_permissions to dw_proxy_load;
grant select on  balance_customer_fdw.auth_group to dw_proxy_load;
grant select on  balance_customer_fdw.auth_group_permissions to dw_proxy_load;
grant select on  balance_customer_fdw.auth_permission to dw_proxy_load;
grant select on  balance_customer_fdw.block_ip_blockip to dw_proxy_load;
grant select on  balance_customer_fdw.cache_rlimit to dw_proxy_load;
