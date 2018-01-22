SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_user__delivery',
    'Should have foreign table loan_pro_chorus_fdw._user__delivery'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_user__delivery',
    'Table loan_pro_chorus_fdw._user__delivery should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_user__delivery'::name, ARRAY[
    'id'::name,
    'parent_id'::name,
    'user_id'::name,
    'parent_type'::name,
    'restriction'::name,
    'restriction_ui'::name,
    'rule'::name,
    'ntf_visible'::name,
    'ntc_visible'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'id', 'Column loan_pro_chorus_fdw._user__delivery.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'id', 'integer', 'Column loan_pro_chorus_fdw._user__delivery.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'id', 'Column loan_pro_chorus_fdw._user__delivery.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'id', 'Column loan_pro_chorus_fdw._user__delivery.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'parent_id', 'Column loan_pro_chorus_fdw._user__delivery.parent_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'parent_id', 'integer', 'Column loan_pro_chorus_fdw._user__delivery.parent_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'parent_id', 'Column loan_pro_chorus_fdw._user__delivery.parent_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'parent_id', 'Column loan_pro_chorus_fdw._user__delivery.parent_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'user_id', 'Column loan_pro_chorus_fdw._user__delivery.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'user_id', 'integer', 'Column loan_pro_chorus_fdw._user__delivery.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'user_id', 'Column loan_pro_chorus_fdw._user__delivery.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'user_id', 'Column loan_pro_chorus_fdw._user__delivery.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'parent_type', 'Column loan_pro_chorus_fdw._user__delivery.parent_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'parent_type', 'character varying(30)', 'Column loan_pro_chorus_fdw._user__delivery.parent_type should be type character varying(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'parent_type', 'Column loan_pro_chorus_fdw._user__delivery.parent_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'parent_type', 'Column loan_pro_chorus_fdw._user__delivery.parent_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'restriction', 'Column loan_pro_chorus_fdw._user__delivery.restriction should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'restriction', 'text', 'Column loan_pro_chorus_fdw._user__delivery.restriction should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'restriction', 'Column loan_pro_chorus_fdw._user__delivery.restriction should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'restriction', 'Column loan_pro_chorus_fdw._user__delivery.restriction should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'restriction_ui', 'Column loan_pro_chorus_fdw._user__delivery.restriction_ui should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'restriction_ui', 'text', 'Column loan_pro_chorus_fdw._user__delivery.restriction_ui should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'restriction_ui', 'Column loan_pro_chorus_fdw._user__delivery.restriction_ui should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'restriction_ui', 'Column loan_pro_chorus_fdw._user__delivery.restriction_ui should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'rule', 'Column loan_pro_chorus_fdw._user__delivery.rule should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'rule', 'text', 'Column loan_pro_chorus_fdw._user__delivery.rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'rule', 'Column loan_pro_chorus_fdw._user__delivery.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'rule', 'Column loan_pro_chorus_fdw._user__delivery.rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'ntf_visible', 'Column loan_pro_chorus_fdw._user__delivery.ntf_visible should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'ntf_visible', 'integer', 'Column loan_pro_chorus_fdw._user__delivery.ntf_visible should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'ntf_visible', 'Column loan_pro_chorus_fdw._user__delivery.ntf_visible should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'ntf_visible', 'Column loan_pro_chorus_fdw._user__delivery.ntf_visible should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'ntc_visible', 'Column loan_pro_chorus_fdw._user__delivery.ntc_visible should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'ntc_visible', 'integer', 'Column loan_pro_chorus_fdw._user__delivery.ntc_visible should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'ntc_visible', 'Column loan_pro_chorus_fdw._user__delivery.ntc_visible should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'ntc_visible', 'Column loan_pro_chorus_fdw._user__delivery.ntc_visible should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'active', 'Column loan_pro_chorus_fdw._user__delivery.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'active', 'integer', 'Column loan_pro_chorus_fdw._user__delivery.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'active', 'Column loan_pro_chorus_fdw._user__delivery.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'active', 'Column loan_pro_chorus_fdw._user__delivery.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'deleted', 'Column loan_pro_chorus_fdw._user__delivery.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'deleted', 'character varying(19)', 'Column loan_pro_chorus_fdw._user__delivery.deleted should be type character varying(19)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'deleted', 'Column loan_pro_chorus_fdw._user__delivery.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'deleted', 'Column loan_pro_chorus_fdw._user__delivery.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user__delivery', 'lastupdated', 'Column loan_pro_chorus_fdw._user__delivery.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user__delivery', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._user__delivery.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user__delivery', 'lastupdated', 'Column loan_pro_chorus_fdw._user__delivery.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user__delivery', 'lastupdated', 'Column loan_pro_chorus_fdw._user__delivery.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
