SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_user_chart_settings_entity',
    'Should have foreign table loan_pro_chorus_fdw._user_chart_settings_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_user_chart_settings_entity',
    'Table loan_pro_chorus_fdw._user_chart_settings_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_user_chart_settings_entity'::name, ARRAY[
    'id'::name,
    'chart_id'::name,
    'user_id'::name,
    'chart_settings'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_chart_settings_entity', 'id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'chart_id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.chart_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'chart_id', 'character(100)', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.chart_id should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'chart_id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.chart_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_chart_settings_entity', 'chart_id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.chart_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'user_id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'user_id', 'integer', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'user_id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_chart_settings_entity', 'user_id', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'chart_settings', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.chart_settings should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'chart_settings', 'text', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.chart_settings should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'chart_settings', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.chart_settings should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_chart_settings_entity', 'chart_settings', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.chart_settings should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'deleted', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'deleted', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_chart_settings_entity', 'deleted', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'created', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'created', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_chart_settings_entity', 'created', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_user_chart_settings_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_user_chart_settings_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._user_chart_settings_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
