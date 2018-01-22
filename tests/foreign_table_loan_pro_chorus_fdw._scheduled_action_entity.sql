SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(79);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_scheduled_action_entity',
    'Should have foreign table loan_pro_chorus_fdw._scheduled_action_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_scheduled_action_entity',
    'Table loan_pro_chorus_fdw._scheduled_action_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_scheduled_action_entity'::name, ARRAY[
    'id'::name,
    'uuid'::name,
    'series_id'::name,
    'trigger_key'::name,
    'ui_state'::name,
    'user_id'::name,
    'receiver_id'::name,
    'job_name'::name,
    'cron'::name,
    'start_time'::name,
    'schedule'::name,
    'data'::name,
    'type'::name,
    'active'::name,
    'last_execution'::name,
    'execution_count'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._scheduled_action_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'uuid', 'Column loan_pro_chorus_fdw._scheduled_action_entity.uuid should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'uuid', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.uuid should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'uuid', 'Column loan_pro_chorus_fdw._scheduled_action_entity.uuid should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'uuid', 'Column loan_pro_chorus_fdw._scheduled_action_entity.uuid should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'series_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.series_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'series_id', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.series_id should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'series_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.series_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'series_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.series_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'trigger_key', 'Column loan_pro_chorus_fdw._scheduled_action_entity.trigger_key should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'trigger_key', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.trigger_key should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'trigger_key', 'Column loan_pro_chorus_fdw._scheduled_action_entity.trigger_key should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'trigger_key', 'Column loan_pro_chorus_fdw._scheduled_action_entity.trigger_key should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'ui_state', 'Column loan_pro_chorus_fdw._scheduled_action_entity.ui_state should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'ui_state', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.ui_state should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'ui_state', 'Column loan_pro_chorus_fdw._scheduled_action_entity.ui_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'ui_state', 'Column loan_pro_chorus_fdw._scheduled_action_entity.ui_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'user_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'user_id', 'integer', 'Column loan_pro_chorus_fdw._scheduled_action_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'user_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'user_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'receiver_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.receiver_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'receiver_id', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.receiver_id should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'receiver_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.receiver_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'receiver_id', 'Column loan_pro_chorus_fdw._scheduled_action_entity.receiver_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'job_name', 'Column loan_pro_chorus_fdw._scheduled_action_entity.job_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'job_name', 'character varying(100)', 'Column loan_pro_chorus_fdw._scheduled_action_entity.job_name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'job_name', 'Column loan_pro_chorus_fdw._scheduled_action_entity.job_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'job_name', 'Column loan_pro_chorus_fdw._scheduled_action_entity.job_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'cron', 'Column loan_pro_chorus_fdw._scheduled_action_entity.cron should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'cron', 'character varying(50)', 'Column loan_pro_chorus_fdw._scheduled_action_entity.cron should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'cron', 'Column loan_pro_chorus_fdw._scheduled_action_entity.cron should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'cron', 'Column loan_pro_chorus_fdw._scheduled_action_entity.cron should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'start_time', 'Column loan_pro_chorus_fdw._scheduled_action_entity.start_time should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'start_time', 'integer', 'Column loan_pro_chorus_fdw._scheduled_action_entity.start_time should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'start_time', 'Column loan_pro_chorus_fdw._scheduled_action_entity.start_time should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'start_time', 'Column loan_pro_chorus_fdw._scheduled_action_entity.start_time should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'schedule', 'Column loan_pro_chorus_fdw._scheduled_action_entity.schedule should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'schedule', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.schedule should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'schedule', 'Column loan_pro_chorus_fdw._scheduled_action_entity.schedule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'schedule', 'Column loan_pro_chorus_fdw._scheduled_action_entity.schedule should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'data', 'Column loan_pro_chorus_fdw._scheduled_action_entity.data should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'data', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.data should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'data', 'Column loan_pro_chorus_fdw._scheduled_action_entity.data should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'data', 'Column loan_pro_chorus_fdw._scheduled_action_entity.data should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'type', 'Column loan_pro_chorus_fdw._scheduled_action_entity.type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'type', 'character varying(100)', 'Column loan_pro_chorus_fdw._scheduled_action_entity.type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'type', 'Column loan_pro_chorus_fdw._scheduled_action_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'type', 'Column loan_pro_chorus_fdw._scheduled_action_entity.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'active', 'Column loan_pro_chorus_fdw._scheduled_action_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._scheduled_action_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'active', 'Column loan_pro_chorus_fdw._scheduled_action_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'active', 'Column loan_pro_chorus_fdw._scheduled_action_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'last_execution', 'Column loan_pro_chorus_fdw._scheduled_action_entity.last_execution should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'last_execution', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.last_execution should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'last_execution', 'Column loan_pro_chorus_fdw._scheduled_action_entity.last_execution should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'last_execution', 'Column loan_pro_chorus_fdw._scheduled_action_entity.last_execution should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'execution_count', 'Column loan_pro_chorus_fdw._scheduled_action_entity.execution_count should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'execution_count', 'bigint', 'Column loan_pro_chorus_fdw._scheduled_action_entity.execution_count should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'execution_count', 'Column loan_pro_chorus_fdw._scheduled_action_entity.execution_count should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'execution_count', 'Column loan_pro_chorus_fdw._scheduled_action_entity.execution_count should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'deleted', 'Column loan_pro_chorus_fdw._scheduled_action_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._scheduled_action_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'deleted', 'Column loan_pro_chorus_fdw._scheduled_action_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'deleted', 'Column loan_pro_chorus_fdw._scheduled_action_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'created', 'Column loan_pro_chorus_fdw._scheduled_action_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._scheduled_action_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'created', 'Column loan_pro_chorus_fdw._scheduled_action_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'created', 'Column loan_pro_chorus_fdw._scheduled_action_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_action_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._scheduled_action_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._scheduled_action_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_action_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._scheduled_action_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_action_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._scheduled_action_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
