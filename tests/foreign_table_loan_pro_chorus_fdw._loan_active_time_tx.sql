SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(91);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_active_time_tx',
    'Should have foreign table loan_pro_chorus_fdw._loan_active_time_tx'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_active_time_tx',
    'Table loan_pro_chorus_fdw._loan_active_time_tx should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_active_time_tx'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'tx_id'::name,
    'date'::name,
    'period'::name,
    'period_start'::name,
    'period_end'::name,
    'title'::name,
    'type'::name,
    'charge_amount'::name,
    'charge_i'::name,
    'charge_p'::name,
    'charge_d'::name,
    'charge_f'::name,
    'charge_e'::name,
    'charge_e_breakdown'::name,
    'adb_days'::name,
    'adb'::name,
    'principal_balance'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_active_time_tx.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'entity_id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'entity_id', 'integer', 'Column loan_pro_chorus_fdw._loan_active_time_tx.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'entity_id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'entity_id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'entity_type', 'Column loan_pro_chorus_fdw._loan_active_time_tx.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'entity_type', 'Column loan_pro_chorus_fdw._loan_active_time_tx.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'entity_type', 'Column loan_pro_chorus_fdw._loan_active_time_tx.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'tx_id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.tx_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'tx_id', 'character(40)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.tx_id should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'tx_id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.tx_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'tx_id', 'Column loan_pro_chorus_fdw._loan_active_time_tx.tx_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'date', 'Column loan_pro_chorus_fdw._loan_active_time_tx.date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'date', 'text', 'Column loan_pro_chorus_fdw._loan_active_time_tx.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'date', 'Column loan_pro_chorus_fdw._loan_active_time_tx.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'date', 'Column loan_pro_chorus_fdw._loan_active_time_tx.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period', 'integer', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'period', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period_start', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period_start should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period_start', 'text', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period_start should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period_start', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period_start should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'period_start', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period_start should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period_end', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period_end should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period_end', 'text', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period_end should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'period_end', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period_end should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'period_end', 'Column loan_pro_chorus_fdw._loan_active_time_tx.period_end should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'title', 'Column loan_pro_chorus_fdw._loan_active_time_tx.title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'title', 'text', 'Column loan_pro_chorus_fdw._loan_active_time_tx.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'title', 'Column loan_pro_chorus_fdw._loan_active_time_tx.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'title', 'Column loan_pro_chorus_fdw._loan_active_time_tx.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'type', 'Column loan_pro_chorus_fdw._loan_active_time_tx.type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'type', 'character(20)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.type should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'type', 'Column loan_pro_chorus_fdw._loan_active_time_tx.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'type', 'Column loan_pro_chorus_fdw._loan_active_time_tx.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_amount', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_amount', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_amount', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_amount', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_i', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_i should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_i', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_i should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_i', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_i should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_i', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_i should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_p', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_p should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_p', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_p should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_p', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_p should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_p', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_p should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_d', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_d should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_d', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_d should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_d', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_d should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_d', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_d should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_f', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_f should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_f', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_f should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_f', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_f should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_f', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_f should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_e', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_e should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_e', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_e should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_e', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_e should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_e', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_e should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_e_breakdown', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_e_breakdown should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_e_breakdown', 'text', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_e_breakdown should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_e_breakdown', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_e_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'charge_e_breakdown', 'Column loan_pro_chorus_fdw._loan_active_time_tx.charge_e_breakdown should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'adb_days', 'Column loan_pro_chorus_fdw._loan_active_time_tx.adb_days should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'adb_days', 'integer', 'Column loan_pro_chorus_fdw._loan_active_time_tx.adb_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'adb_days', 'Column loan_pro_chorus_fdw._loan_active_time_tx.adb_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'adb_days', 'Column loan_pro_chorus_fdw._loan_active_time_tx.adb_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'adb', 'Column loan_pro_chorus_fdw._loan_active_time_tx.adb should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'adb', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.adb should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'adb', 'Column loan_pro_chorus_fdw._loan_active_time_tx.adb should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'adb', 'Column loan_pro_chorus_fdw._loan_active_time_tx.adb should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'principal_balance', 'Column loan_pro_chorus_fdw._loan_active_time_tx.principal_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'principal_balance', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_active_time_tx.principal_balance should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'principal_balance', 'Column loan_pro_chorus_fdw._loan_active_time_tx.principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'principal_balance', 'Column loan_pro_chorus_fdw._loan_active_time_tx.principal_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'deleted', 'Column loan_pro_chorus_fdw._loan_active_time_tx.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_active_time_tx.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'deleted', 'Column loan_pro_chorus_fdw._loan_active_time_tx.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'deleted', 'Column loan_pro_chorus_fdw._loan_active_time_tx.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_active_time_tx', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_active_time_tx.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan_active_time_tx.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_active_time_tx', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_active_time_tx.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_active_time_tx', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_active_time_tx.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
