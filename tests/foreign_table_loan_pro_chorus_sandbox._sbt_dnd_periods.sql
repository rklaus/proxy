SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_sbt_dnd_periods',
    'Should have foreign table loan_pro_chorus_sandbox._sbt_dnd_periods'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_sbt_dnd_periods',
    'Table loan_pro_chorus_sandbox._sbt_dnd_periods should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_sbt_dnd_periods'::name, ARRAY[
    'id'::name,
    'start_time'::name,
    'stop_time'::name,
    'weekdays'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'id', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'id', 'integer', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'id', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'id', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'start_time', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.start_time should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'start_time', 'text', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.start_time should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'start_time', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.start_time should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'start_time', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.start_time should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'stop_time', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.stop_time should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'stop_time', 'text', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.stop_time should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'stop_time', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.stop_time should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'stop_time', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.stop_time should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'weekdays', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.weekdays should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'weekdays', 'character(15)', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.weekdays should be type character(15)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'weekdays', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.weekdays should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'weekdays', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.weekdays should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'active', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'active', 'integer', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'active', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'active', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'deleted', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'deleted', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'deleted', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'lastupdated', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'lastupdated', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sbt_dnd_periods', 'lastupdated', 'Column loan_pro_chorus_sandbox._sbt_dnd_periods.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
