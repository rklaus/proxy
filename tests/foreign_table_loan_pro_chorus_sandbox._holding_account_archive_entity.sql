SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_holding_account_archive_entity',
    'Should have foreign table loan_pro_chorus_sandbox._holding_account_archive_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_holding_account_archive_entity',
    'Table loan_pro_chorus_sandbox._holding_account_archive_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_holding_account_archive_entity'::name, ARRAY[
    'id'::name,
    'holding_account_id'::name,
    'date'::name,
    'status'::name,
    'sub_status'::name,
    'groups'::name,
    'balance'::name,
    'balance_diff'::name,
    'stream_positions_count'::name,
    'stream_total_principal_balance'::name,
    'stream_total_discount'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'id', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'id', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'id', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'holding_account_id', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.holding_account_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'holding_account_id', 'integer', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.holding_account_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'holding_account_id', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.holding_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'holding_account_id', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.holding_account_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'date', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'date', 'text', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'date', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'date', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'status', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.status should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'status', 'text', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.status should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'status', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'status', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.status should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'sub_status', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.sub_status should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'sub_status', 'text', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.sub_status should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'sub_status', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.sub_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'sub_status', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.sub_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'groups', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.groups should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'groups', 'text', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.groups should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'groups', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.groups should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'groups', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.groups should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'balance', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.balance should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'balance', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'balance', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'balance', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'balance_diff', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.balance_diff should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'balance_diff', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.balance_diff should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'balance_diff', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.balance_diff should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'balance_diff', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.balance_diff should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_positions_count', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_positions_count should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_positions_count', 'integer', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_positions_count should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_positions_count', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_positions_count should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_positions_count', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_positions_count should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_total_principal_balance', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_total_principal_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_total_principal_balance', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_total_principal_balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_total_principal_balance', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_total_principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_total_principal_balance', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_total_principal_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_total_discount', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_total_discount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_total_discount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_total_discount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_total_discount', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_total_discount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'stream_total_discount', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.stream_total_discount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'created', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'created', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'created', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'deleted', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'deleted', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account_archive_entity', 'deleted', 'Column loan_pro_chorus_sandbox._holding_account_archive_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
