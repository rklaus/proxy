SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_sub_status_entity',
    'Should have foreign table loan_pro_chorus_fdw._loan_sub_status_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_sub_status_entity',
    'Table loan_pro_chorus_fdw._loan_sub_status_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_sub_status_entity'::name, ARRAY[
    'id'::name,
    'title'::name,
    'parent'::name,
    'late_fees'::name,
    'email_enroll'::name,
    'web_access'::name,
    'sms_enroll'::name,
    'display_order'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'id', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'id', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'id', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'title', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'title', 'text', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'title', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'title', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'parent', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.parent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'parent', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.parent should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'parent', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.parent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'parent', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.parent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'late_fees', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.late_fees should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'late_fees', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.late_fees should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'late_fees', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.late_fees should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'late_fees', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.late_fees should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'email_enroll', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.email_enroll should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'email_enroll', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.email_enroll should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'email_enroll', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.email_enroll should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'email_enroll', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.email_enroll should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'web_access', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.web_access should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'web_access', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.web_access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'web_access', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.web_access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'web_access', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.web_access should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'sms_enroll', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.sms_enroll should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'sms_enroll', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.sms_enroll should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'sms_enroll', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.sms_enroll should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'sms_enroll', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.sms_enroll should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'display_order', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.display_order should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'display_order', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.display_order should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'display_order', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.display_order should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'display_order', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.display_order should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'active', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'active', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'active', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_sub_status_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_sub_status_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_sub_status_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
