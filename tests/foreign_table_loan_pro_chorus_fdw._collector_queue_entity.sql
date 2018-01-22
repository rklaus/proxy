SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_collector_queue_entity',
    'Should have foreign table loan_pro_chorus_fdw._collector_queue_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_collector_queue_entity',
    'Table loan_pro_chorus_fdw._collector_queue_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_collector_queue_entity'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'ui_state'::name,
    'status'::name,
    'title'::name,
    'query'::name,
    'set'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'id', 'Column loan_pro_chorus_fdw._collector_queue_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'id', 'Column loan_pro_chorus_fdw._collector_queue_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'id', 'Column loan_pro_chorus_fdw._collector_queue_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'user_id', 'Column loan_pro_chorus_fdw._collector_queue_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'user_id', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'user_id', 'Column loan_pro_chorus_fdw._collector_queue_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'user_id', 'Column loan_pro_chorus_fdw._collector_queue_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'ui_state', 'Column loan_pro_chorus_fdw._collector_queue_entity.ui_state should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'ui_state', 'text', 'Column loan_pro_chorus_fdw._collector_queue_entity.ui_state should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'ui_state', 'Column loan_pro_chorus_fdw._collector_queue_entity.ui_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'ui_state', 'Column loan_pro_chorus_fdw._collector_queue_entity.ui_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'status', 'Column loan_pro_chorus_fdw._collector_queue_entity.status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'status', 'character varying(100)', 'Column loan_pro_chorus_fdw._collector_queue_entity.status should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'status', 'Column loan_pro_chorus_fdw._collector_queue_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'status', 'Column loan_pro_chorus_fdw._collector_queue_entity.status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'title', 'Column loan_pro_chorus_fdw._collector_queue_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'title', 'text', 'Column loan_pro_chorus_fdw._collector_queue_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'title', 'Column loan_pro_chorus_fdw._collector_queue_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'title', 'Column loan_pro_chorus_fdw._collector_queue_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'query', 'Column loan_pro_chorus_fdw._collector_queue_entity.query should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'query', 'text', 'Column loan_pro_chorus_fdw._collector_queue_entity.query should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'query', 'Column loan_pro_chorus_fdw._collector_queue_entity.query should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'query', 'Column loan_pro_chorus_fdw._collector_queue_entity.query should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'set', 'Column loan_pro_chorus_fdw._collector_queue_entity.set should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'set', 'character varying(100)', 'Column loan_pro_chorus_fdw._collector_queue_entity.set should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'set', 'Column loan_pro_chorus_fdw._collector_queue_entity.set should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'set', 'Column loan_pro_chorus_fdw._collector_queue_entity.set should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'active', 'Column loan_pro_chorus_fdw._collector_queue_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'active', 'Column loan_pro_chorus_fdw._collector_queue_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'active', 'Column loan_pro_chorus_fdw._collector_queue_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'deleted', 'Column loan_pro_chorus_fdw._collector_queue_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._collector_queue_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'deleted', 'Column loan_pro_chorus_fdw._collector_queue_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'deleted', 'Column loan_pro_chorus_fdw._collector_queue_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'created', 'Column loan_pro_chorus_fdw._collector_queue_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._collector_queue_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'created', 'Column loan_pro_chorus_fdw._collector_queue_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'created', 'Column loan_pro_chorus_fdw._collector_queue_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_collector_queue_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._collector_queue_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_collector_queue_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_collector_queue_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._collector_queue_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
