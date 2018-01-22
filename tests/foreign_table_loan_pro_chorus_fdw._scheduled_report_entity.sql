SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(67);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_scheduled_report_entity',
    'Should have foreign table loan_pro_chorus_fdw._scheduled_report_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_scheduled_report_entity',
    'Table loan_pro_chorus_fdw._scheduled_report_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_scheduled_report_entity'::name, ARRAY[
    'id'::name,
    'report_name'::name,
    'report_type'::name,
    'report_entity_type'::name,
    'next_execution_datetime'::name,
    'last_execution_datetime'::name,
    'recurrent'::name,
    'frequency'::name,
    'output_format'::name,
    'config_data'::name,
    'notify_users'::name,
    'trigger_uuid'::name,
    'trigger_key'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'id', 'Column loan_pro_chorus_fdw._scheduled_report_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._scheduled_report_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'id', 'Column loan_pro_chorus_fdw._scheduled_report_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'id', 'Column loan_pro_chorus_fdw._scheduled_report_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_name', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_name', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_name', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_name', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_type', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_type', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_type should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_type', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_type', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_entity_type', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_entity_type', 'character(100)', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_entity_type', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'report_entity_type', 'Column loan_pro_chorus_fdw._scheduled_report_entity.report_entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'next_execution_datetime', 'Column loan_pro_chorus_fdw._scheduled_report_entity.next_execution_datetime should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'next_execution_datetime', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.next_execution_datetime should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'next_execution_datetime', 'Column loan_pro_chorus_fdw._scheduled_report_entity.next_execution_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'next_execution_datetime', 'Column loan_pro_chorus_fdw._scheduled_report_entity.next_execution_datetime should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'last_execution_datetime', 'Column loan_pro_chorus_fdw._scheduled_report_entity.last_execution_datetime should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'last_execution_datetime', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.last_execution_datetime should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'last_execution_datetime', 'Column loan_pro_chorus_fdw._scheduled_report_entity.last_execution_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'last_execution_datetime', 'Column loan_pro_chorus_fdw._scheduled_report_entity.last_execution_datetime should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'recurrent', 'Column loan_pro_chorus_fdw._scheduled_report_entity.recurrent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'recurrent', 'integer', 'Column loan_pro_chorus_fdw._scheduled_report_entity.recurrent should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'recurrent', 'Column loan_pro_chorus_fdw._scheduled_report_entity.recurrent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'recurrent', 'Column loan_pro_chorus_fdw._scheduled_report_entity.recurrent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'frequency', 'Column loan_pro_chorus_fdw._scheduled_report_entity.frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'frequency', 'character(100)', 'Column loan_pro_chorus_fdw._scheduled_report_entity.frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'frequency', 'Column loan_pro_chorus_fdw._scheduled_report_entity.frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'frequency', 'Column loan_pro_chorus_fdw._scheduled_report_entity.frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'output_format', 'Column loan_pro_chorus_fdw._scheduled_report_entity.output_format should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'output_format', 'character(32)', 'Column loan_pro_chorus_fdw._scheduled_report_entity.output_format should be type character(32)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'output_format', 'Column loan_pro_chorus_fdw._scheduled_report_entity.output_format should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'output_format', 'Column loan_pro_chorus_fdw._scheduled_report_entity.output_format should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'config_data', 'Column loan_pro_chorus_fdw._scheduled_report_entity.config_data should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'config_data', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.config_data should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'config_data', 'Column loan_pro_chorus_fdw._scheduled_report_entity.config_data should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'config_data', 'Column loan_pro_chorus_fdw._scheduled_report_entity.config_data should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'notify_users', 'Column loan_pro_chorus_fdw._scheduled_report_entity.notify_users should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'notify_users', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.notify_users should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'notify_users', 'Column loan_pro_chorus_fdw._scheduled_report_entity.notify_users should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'notify_users', 'Column loan_pro_chorus_fdw._scheduled_report_entity.notify_users should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'trigger_uuid', 'Column loan_pro_chorus_fdw._scheduled_report_entity.trigger_uuid should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'trigger_uuid', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.trigger_uuid should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'trigger_uuid', 'Column loan_pro_chorus_fdw._scheduled_report_entity.trigger_uuid should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'trigger_uuid', 'Column loan_pro_chorus_fdw._scheduled_report_entity.trigger_uuid should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'trigger_key', 'Column loan_pro_chorus_fdw._scheduled_report_entity.trigger_key should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'trigger_key', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.trigger_key should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'trigger_key', 'Column loan_pro_chorus_fdw._scheduled_report_entity.trigger_key should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'trigger_key', 'Column loan_pro_chorus_fdw._scheduled_report_entity.trigger_key should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'created', 'Column loan_pro_chorus_fdw._scheduled_report_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._scheduled_report_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'created', 'Column loan_pro_chorus_fdw._scheduled_report_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'created', 'Column loan_pro_chorus_fdw._scheduled_report_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._scheduled_report_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._scheduled_report_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._scheduled_report_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._scheduled_report_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_scheduled_report_entity', 'deleted', 'Column loan_pro_chorus_fdw._scheduled_report_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._scheduled_report_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_scheduled_report_entity', 'deleted', 'Column loan_pro_chorus_fdw._scheduled_report_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_scheduled_report_entity', 'deleted', 'Column loan_pro_chorus_fdw._scheduled_report_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
