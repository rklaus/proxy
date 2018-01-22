SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_fdw', '_sms_trigger_entity',
    'Should have foreign table loan_pro_fdw._sms_trigger_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_sms_trigger_entity',
    'Table loan_pro_fdw._sms_trigger_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_sms_trigger_entity'::name, ARRAY[
    'id'::name,
    'title'::name,
    'sbt_template_id'::name,
    'sbt_template_type'::name,
    'trigger_rule'::name,
    'restriction_rule'::name,
    'state'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'id', 'Column loan_pro_fdw._sms_trigger_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'id', 'integer', 'Column loan_pro_fdw._sms_trigger_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'id', 'Column loan_pro_fdw._sms_trigger_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'id', 'Column loan_pro_fdw._sms_trigger_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'title', 'Column loan_pro_fdw._sms_trigger_entity.title should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'title', 'character varying(100)', 'Column loan_pro_fdw._sms_trigger_entity.title should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'title', 'Column loan_pro_fdw._sms_trigger_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'title', 'Column loan_pro_fdw._sms_trigger_entity.title should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'sbt_template_id', 'Column loan_pro_fdw._sms_trigger_entity.sbt_template_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'sbt_template_id', 'integer', 'Column loan_pro_fdw._sms_trigger_entity.sbt_template_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'sbt_template_id', 'Column loan_pro_fdw._sms_trigger_entity.sbt_template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'sbt_template_id', 'Column loan_pro_fdw._sms_trigger_entity.sbt_template_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'sbt_template_type', 'Column loan_pro_fdw._sms_trigger_entity.sbt_template_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'sbt_template_type', 'character(20)', 'Column loan_pro_fdw._sms_trigger_entity.sbt_template_type should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'sbt_template_type', 'Column loan_pro_fdw._sms_trigger_entity.sbt_template_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'sbt_template_type', 'Column loan_pro_fdw._sms_trigger_entity.sbt_template_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'trigger_rule', 'Column loan_pro_fdw._sms_trigger_entity.trigger_rule should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'trigger_rule', 'text', 'Column loan_pro_fdw._sms_trigger_entity.trigger_rule should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'trigger_rule', 'Column loan_pro_fdw._sms_trigger_entity.trigger_rule should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'trigger_rule', 'Column loan_pro_fdw._sms_trigger_entity.trigger_rule should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'restriction_rule', 'Column loan_pro_fdw._sms_trigger_entity.restriction_rule should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'restriction_rule', 'text', 'Column loan_pro_fdw._sms_trigger_entity.restriction_rule should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'restriction_rule', 'Column loan_pro_fdw._sms_trigger_entity.restriction_rule should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'restriction_rule', 'Column loan_pro_fdw._sms_trigger_entity.restriction_rule should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'state', 'Column loan_pro_fdw._sms_trigger_entity.state should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'state', 'text', 'Column loan_pro_fdw._sms_trigger_entity.state should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'state', 'Column loan_pro_fdw._sms_trigger_entity.state should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'state', 'Column loan_pro_fdw._sms_trigger_entity.state should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'active', 'Column loan_pro_fdw._sms_trigger_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'active', 'integer', 'Column loan_pro_fdw._sms_trigger_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'active', 'Column loan_pro_fdw._sms_trigger_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'active', 'Column loan_pro_fdw._sms_trigger_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'deleted', 'Column loan_pro_fdw._sms_trigger_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'deleted', 'integer', 'Column loan_pro_fdw._sms_trigger_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'deleted', 'Column loan_pro_fdw._sms_trigger_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'deleted', 'Column loan_pro_fdw._sms_trigger_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'created', 'Column loan_pro_fdw._sms_trigger_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'created', 'text', 'Column loan_pro_fdw._sms_trigger_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'created', 'Column loan_pro_fdw._sms_trigger_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'created', 'Column loan_pro_fdw._sms_trigger_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sms_trigger_entity', 'lastupdated', 'Column loan_pro_fdw._sms_trigger_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sms_trigger_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._sms_trigger_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_sms_trigger_entity', 'lastupdated', 'Column loan_pro_fdw._sms_trigger_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sms_trigger_entity', 'lastupdated', 'Column loan_pro_fdw._sms_trigger_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
