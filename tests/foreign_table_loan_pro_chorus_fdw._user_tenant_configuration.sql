SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_user_tenant_configuration',
    'Should have foreign table loan_pro_chorus_fdw._user_tenant_configuration'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_user_tenant_configuration',
    'Table loan_pro_chorus_fdw._user_tenant_configuration should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_user_tenant_configuration'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'default_user_loan_id'::name,
    'iprestriction_id'::name,
    'search_restriction_group_id'::name,
    'shortcuts_set_id'::name,
    'deleted'::name,
    'google_email'::name,
    'google_password'::name,
    'google_print_token'::name,
    'sound_group_id'::name,
    'loan_summary_template_id'::name,
    'user_account_configured'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'id', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'user_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'user_id', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'user_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'user_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'default_user_loan_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.default_user_loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'default_user_loan_id', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.default_user_loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'default_user_loan_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.default_user_loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'default_user_loan_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.default_user_loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'iprestriction_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.iprestriction_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'iprestriction_id', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.iprestriction_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'iprestriction_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.iprestriction_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'iprestriction_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.iprestriction_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'search_restriction_group_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.search_restriction_group_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'search_restriction_group_id', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.search_restriction_group_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'search_restriction_group_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.search_restriction_group_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'search_restriction_group_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.search_restriction_group_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'shortcuts_set_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.shortcuts_set_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'shortcuts_set_id', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.shortcuts_set_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'shortcuts_set_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.shortcuts_set_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'shortcuts_set_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.shortcuts_set_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'deleted', 'Column loan_pro_chorus_fdw._user_tenant_configuration.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'deleted', 'Column loan_pro_chorus_fdw._user_tenant_configuration.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'deleted', 'Column loan_pro_chorus_fdw._user_tenant_configuration.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_email', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_email should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_email', 'text', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_email should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_email', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_email should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_email', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_email should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_password', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_password should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_password', 'text', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_password should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_password', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_password should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_password', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_password should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_print_token', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_print_token should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_print_token', 'text', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_print_token should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_print_token', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_print_token should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'google_print_token', 'Column loan_pro_chorus_fdw._user_tenant_configuration.google_print_token should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'sound_group_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.sound_group_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'sound_group_id', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.sound_group_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'sound_group_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.sound_group_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'sound_group_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.sound_group_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'loan_summary_template_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.loan_summary_template_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'loan_summary_template_id', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.loan_summary_template_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'loan_summary_template_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.loan_summary_template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'loan_summary_template_id', 'Column loan_pro_chorus_fdw._user_tenant_configuration.loan_summary_template_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'user_account_configured', 'Column loan_pro_chorus_fdw._user_tenant_configuration.user_account_configured should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'user_account_configured', 'integer', 'Column loan_pro_chorus_fdw._user_tenant_configuration.user_account_configured should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'user_account_configured', 'Column loan_pro_chorus_fdw._user_tenant_configuration.user_account_configured should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'user_account_configured', 'Column loan_pro_chorus_fdw._user_tenant_configuration.user_account_configured should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_tenant_configuration', 'lastupdated', 'Column loan_pro_chorus_fdw._user_tenant_configuration.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._user_tenant_configuration.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_tenant_configuration', 'lastupdated', 'Column loan_pro_chorus_fdw._user_tenant_configuration.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_tenant_configuration', 'lastupdated', 'Column loan_pro_chorus_fdw._user_tenant_configuration.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
