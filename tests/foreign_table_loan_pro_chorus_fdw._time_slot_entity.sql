SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_time_slot_entity',
    'Should have foreign table loan_pro_chorus_fdw._time_slot_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_time_slot_entity',
    'Table loan_pro_chorus_fdw._time_slot_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_time_slot_entity'::name, ARRAY[
    'id'::name,
    'work_item_id'::name,
    'start'::name,
    'end'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_time_slot_entity', 'id', 'Column loan_pro_chorus_fdw._time_slot_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_time_slot_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._time_slot_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_time_slot_entity', 'id', 'Column loan_pro_chorus_fdw._time_slot_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_time_slot_entity', 'id', 'Column loan_pro_chorus_fdw._time_slot_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_time_slot_entity', 'work_item_id', 'Column loan_pro_chorus_fdw._time_slot_entity.work_item_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_time_slot_entity', 'work_item_id', 'integer', 'Column loan_pro_chorus_fdw._time_slot_entity.work_item_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_time_slot_entity', 'work_item_id', 'Column loan_pro_chorus_fdw._time_slot_entity.work_item_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_time_slot_entity', 'work_item_id', 'Column loan_pro_chorus_fdw._time_slot_entity.work_item_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_time_slot_entity', 'start', 'Column loan_pro_chorus_fdw._time_slot_entity.start should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_time_slot_entity', 'start', 'text', 'Column loan_pro_chorus_fdw._time_slot_entity.start should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_time_slot_entity', 'start', 'Column loan_pro_chorus_fdw._time_slot_entity.start should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_time_slot_entity', 'start', 'Column loan_pro_chorus_fdw._time_slot_entity.start should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_time_slot_entity', 'end', 'Column loan_pro_chorus_fdw._time_slot_entity."end" should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_time_slot_entity', 'end', 'text', 'Column loan_pro_chorus_fdw._time_slot_entity."end" should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_time_slot_entity', 'end', 'Column loan_pro_chorus_fdw._time_slot_entity."end" should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_time_slot_entity', 'end', 'Column loan_pro_chorus_fdw._time_slot_entity."end" should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_time_slot_entity', 'deleted', 'Column loan_pro_chorus_fdw._time_slot_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_time_slot_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._time_slot_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_time_slot_entity', 'deleted', 'Column loan_pro_chorus_fdw._time_slot_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_time_slot_entity', 'deleted', 'Column loan_pro_chorus_fdw._time_slot_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_time_slot_entity', 'created', 'Column loan_pro_chorus_fdw._time_slot_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_time_slot_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._time_slot_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_time_slot_entity', 'created', 'Column loan_pro_chorus_fdw._time_slot_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_time_slot_entity', 'created', 'Column loan_pro_chorus_fdw._time_slot_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_time_slot_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._time_slot_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_time_slot_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._time_slot_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_time_slot_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._time_slot_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_time_slot_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._time_slot_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
