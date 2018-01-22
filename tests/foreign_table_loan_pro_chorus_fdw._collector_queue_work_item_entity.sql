SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_collector_queue_work_item_entity',
    'Should have foreign table loan_pro_chorus_fdw._collector_queue_work_item_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_collector_queue_work_item_entity',
    'Table loan_pro_chorus_fdw._collector_queue_work_item_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_collector_queue_work_item_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'collector_queue_id'::name,
    'started'::name,
    'completed'::name,
    'owner'::name,
    'security'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'loan_id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'loan_id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'loan_id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'collector_queue_id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.collector_queue_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'collector_queue_id', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.collector_queue_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'collector_queue_id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.collector_queue_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'collector_queue_id', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.collector_queue_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'started', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.started should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'started', 'text', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.started should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'started', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.started should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'started', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.started should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'completed', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.completed should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'completed', 'text', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.completed should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'completed', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.completed should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'completed', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.completed should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'owner', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.owner should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'owner', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.owner should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'owner', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.owner should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'owner', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.owner should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'security', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.security should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'security', 'character(3)', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.security should be type character(3)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'security', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.security should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'security', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.security should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'active', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'active', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'active', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'deleted', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'deleted', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'deleted', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'created', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'created', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'created', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_work_item_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue_work_item_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
