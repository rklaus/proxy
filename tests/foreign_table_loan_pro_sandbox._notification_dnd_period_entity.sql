SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_notification_dnd_period_entity',
    'Should have foreign table loan_pro_sandbox._notification_dnd_period_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_notification_dnd_period_entity',
    'Table loan_pro_sandbox._notification_dnd_period_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_notification_dnd_period_entity'::name, ARRAY[
    'id'::name,
    'notification_type'::name,
    'start_time'::name,
    'stop_time'::name,
    'weekdays'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_notification_dnd_period_entity', 'id', 'Column loan_pro_sandbox._notification_dnd_period_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'id', 'integer', 'Column loan_pro_sandbox._notification_dnd_period_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'id', 'Column loan_pro_sandbox._notification_dnd_period_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_dnd_period_entity', 'id', 'Column loan_pro_sandbox._notification_dnd_period_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_dnd_period_entity', 'notification_type', 'Column loan_pro_sandbox._notification_dnd_period_entity.notification_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'notification_type', 'character(32)', 'Column loan_pro_sandbox._notification_dnd_period_entity.notification_type should be type character(32)');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'notification_type', 'Column loan_pro_sandbox._notification_dnd_period_entity.notification_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_dnd_period_entity', 'notification_type', 'Column loan_pro_sandbox._notification_dnd_period_entity.notification_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_dnd_period_entity', 'start_time', 'Column loan_pro_sandbox._notification_dnd_period_entity.start_time should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'start_time', 'text', 'Column loan_pro_sandbox._notification_dnd_period_entity.start_time should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'start_time', 'Column loan_pro_sandbox._notification_dnd_period_entity.start_time should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_dnd_period_entity', 'start_time', 'Column loan_pro_sandbox._notification_dnd_period_entity.start_time should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_dnd_period_entity', 'stop_time', 'Column loan_pro_sandbox._notification_dnd_period_entity.stop_time should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'stop_time', 'text', 'Column loan_pro_sandbox._notification_dnd_period_entity.stop_time should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'stop_time', 'Column loan_pro_sandbox._notification_dnd_period_entity.stop_time should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_dnd_period_entity', 'stop_time', 'Column loan_pro_sandbox._notification_dnd_period_entity.stop_time should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_dnd_period_entity', 'weekdays', 'Column loan_pro_sandbox._notification_dnd_period_entity.weekdays should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'weekdays', 'character(15)', 'Column loan_pro_sandbox._notification_dnd_period_entity.weekdays should be type character(15)');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'weekdays', 'Column loan_pro_sandbox._notification_dnd_period_entity.weekdays should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_dnd_period_entity', 'weekdays', 'Column loan_pro_sandbox._notification_dnd_period_entity.weekdays should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_dnd_period_entity', 'active', 'Column loan_pro_sandbox._notification_dnd_period_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'active', 'integer', 'Column loan_pro_sandbox._notification_dnd_period_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'active', 'Column loan_pro_sandbox._notification_dnd_period_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_dnd_period_entity', 'active', 'Column loan_pro_sandbox._notification_dnd_period_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_dnd_period_entity', 'deleted', 'Column loan_pro_sandbox._notification_dnd_period_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._notification_dnd_period_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'deleted', 'Column loan_pro_sandbox._notification_dnd_period_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_dnd_period_entity', 'deleted', 'Column loan_pro_sandbox._notification_dnd_period_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_dnd_period_entity', 'lastupdated', 'Column loan_pro_sandbox._notification_dnd_period_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._notification_dnd_period_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_dnd_period_entity', 'lastupdated', 'Column loan_pro_sandbox._notification_dnd_period_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_dnd_period_entity', 'lastupdated', 'Column loan_pro_sandbox._notification_dnd_period_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
