SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_fdw', '_holding_account_settings_entity',
    'Should have foreign table loan_pro_fdw._holding_account_settings_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_holding_account_settings_entity',
    'Table loan_pro_fdw._holding_account_settings_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_holding_account_settings_entity'::name, ARRAY[
    'id'::name,
    'account_id'::name,
    'account_type'::name,
    'status_id'::name,
    'sub_status_id'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_holding_account_settings_entity', 'id', 'Column loan_pro_fdw._holding_account_settings_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_holding_account_settings_entity', 'id', 'integer', 'Column loan_pro_fdw._holding_account_settings_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_holding_account_settings_entity', 'id', 'Column loan_pro_fdw._holding_account_settings_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_holding_account_settings_entity', 'id', 'Column loan_pro_fdw._holding_account_settings_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_holding_account_settings_entity', 'account_id', 'Column loan_pro_fdw._holding_account_settings_entity.account_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_holding_account_settings_entity', 'account_id', 'integer', 'Column loan_pro_fdw._holding_account_settings_entity.account_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_holding_account_settings_entity', 'account_id', 'Column loan_pro_fdw._holding_account_settings_entity.account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_holding_account_settings_entity', 'account_id', 'Column loan_pro_fdw._holding_account_settings_entity.account_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_holding_account_settings_entity', 'account_type', 'Column loan_pro_fdw._holding_account_settings_entity.account_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_holding_account_settings_entity', 'account_type', 'character(64)', 'Column loan_pro_fdw._holding_account_settings_entity.account_type should be type character(64)');
SELECT col_is_null(      'loan_pro_fdw', '_holding_account_settings_entity', 'account_type', 'Column loan_pro_fdw._holding_account_settings_entity.account_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_holding_account_settings_entity', 'account_type', 'Column loan_pro_fdw._holding_account_settings_entity.account_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_holding_account_settings_entity', 'status_id', 'Column loan_pro_fdw._holding_account_settings_entity.status_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_holding_account_settings_entity', 'status_id', 'integer', 'Column loan_pro_fdw._holding_account_settings_entity.status_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_holding_account_settings_entity', 'status_id', 'Column loan_pro_fdw._holding_account_settings_entity.status_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_holding_account_settings_entity', 'status_id', 'Column loan_pro_fdw._holding_account_settings_entity.status_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_holding_account_settings_entity', 'sub_status_id', 'Column loan_pro_fdw._holding_account_settings_entity.sub_status_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_holding_account_settings_entity', 'sub_status_id', 'integer', 'Column loan_pro_fdw._holding_account_settings_entity.sub_status_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_holding_account_settings_entity', 'sub_status_id', 'Column loan_pro_fdw._holding_account_settings_entity.sub_status_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_holding_account_settings_entity', 'sub_status_id', 'Column loan_pro_fdw._holding_account_settings_entity.sub_status_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_holding_account_settings_entity', 'active', 'Column loan_pro_fdw._holding_account_settings_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_holding_account_settings_entity', 'active', 'integer', 'Column loan_pro_fdw._holding_account_settings_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_holding_account_settings_entity', 'active', 'Column loan_pro_fdw._holding_account_settings_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_holding_account_settings_entity', 'active', 'Column loan_pro_fdw._holding_account_settings_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_holding_account_settings_entity', 'deleted', 'Column loan_pro_fdw._holding_account_settings_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_holding_account_settings_entity', 'deleted', 'integer', 'Column loan_pro_fdw._holding_account_settings_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_holding_account_settings_entity', 'deleted', 'Column loan_pro_fdw._holding_account_settings_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_holding_account_settings_entity', 'deleted', 'Column loan_pro_fdw._holding_account_settings_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_holding_account_settings_entity', 'lastupdated', 'Column loan_pro_fdw._holding_account_settings_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_holding_account_settings_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._holding_account_settings_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_holding_account_settings_entity', 'lastupdated', 'Column loan_pro_fdw._holding_account_settings_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_holding_account_settings_entity', 'lastupdated', 'Column loan_pro_fdw._holding_account_settings_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
