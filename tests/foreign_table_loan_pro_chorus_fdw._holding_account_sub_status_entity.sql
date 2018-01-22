SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_holding_account_sub_status_entity',
    'Should have foreign table loan_pro_chorus_fdw._holding_account_sub_status_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_holding_account_sub_status_entity',
    'Table loan_pro_chorus_fdw._holding_account_sub_status_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_holding_account_sub_status_entity'::name, ARRAY[
    'id'::name,
    'title'::name,
    'parent_id'::name,
    'display_order'::name,
    'email_enrollment'::name,
    'sms_enrollment'::name,
    'web_access_enrollment'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'id', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'title', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'title', 'text', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'title', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'title', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'parent_id', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.parent_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'parent_id', 'integer', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.parent_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'parent_id', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.parent_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'parent_id', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.parent_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'display_order', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.display_order should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'display_order', 'integer', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.display_order should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'display_order', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.display_order should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'display_order', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.display_order should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'email_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.email_enrollment should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'email_enrollment', 'integer', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.email_enrollment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'email_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.email_enrollment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'email_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.email_enrollment should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'sms_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.sms_enrollment should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'sms_enrollment', 'integer', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.sms_enrollment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'sms_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.sms_enrollment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'sms_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.sms_enrollment should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'web_access_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.web_access_enrollment should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'web_access_enrollment', 'integer', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.web_access_enrollment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'web_access_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.web_access_enrollment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'web_access_enrollment', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.web_access_enrollment should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'active', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'active', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'active', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'deleted', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_holding_account_sub_status_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._holding_account_sub_status_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
