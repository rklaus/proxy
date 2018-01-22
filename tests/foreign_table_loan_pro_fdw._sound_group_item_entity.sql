SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_fdw', '_sound_group_item_entity',
    'Should have foreign table loan_pro_fdw._sound_group_item_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_sound_group_item_entity',
    'Table loan_pro_fdw._sound_group_item_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_sound_group_item_entity'::name, ARRAY[
    'id'::name,
    'sound_group_id'::name,
    'event'::name,
    'sound'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_sound_group_item_entity', 'id', 'Column loan_pro_fdw._sound_group_item_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_item_entity', 'id', 'integer', 'Column loan_pro_fdw._sound_group_item_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_item_entity', 'id', 'Column loan_pro_fdw._sound_group_item_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_item_entity', 'id', 'Column loan_pro_fdw._sound_group_item_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_item_entity', 'sound_group_id', 'Column loan_pro_fdw._sound_group_item_entity.sound_group_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_item_entity', 'sound_group_id', 'integer', 'Column loan_pro_fdw._sound_group_item_entity.sound_group_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_item_entity', 'sound_group_id', 'Column loan_pro_fdw._sound_group_item_entity.sound_group_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_item_entity', 'sound_group_id', 'Column loan_pro_fdw._sound_group_item_entity.sound_group_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_item_entity', 'event', 'Column loan_pro_fdw._sound_group_item_entity.event should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_item_entity', 'event', 'character varying(100)', 'Column loan_pro_fdw._sound_group_item_entity.event should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_item_entity', 'event', 'Column loan_pro_fdw._sound_group_item_entity.event should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_item_entity', 'event', 'Column loan_pro_fdw._sound_group_item_entity.event should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_item_entity', 'sound', 'Column loan_pro_fdw._sound_group_item_entity.sound should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_item_entity', 'sound', 'character varying(100)', 'Column loan_pro_fdw._sound_group_item_entity.sound should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_item_entity', 'sound', 'Column loan_pro_fdw._sound_group_item_entity.sound should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_item_entity', 'sound', 'Column loan_pro_fdw._sound_group_item_entity.sound should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_item_entity', 'active', 'Column loan_pro_fdw._sound_group_item_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_item_entity', 'active', 'integer', 'Column loan_pro_fdw._sound_group_item_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_item_entity', 'active', 'Column loan_pro_fdw._sound_group_item_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_item_entity', 'active', 'Column loan_pro_fdw._sound_group_item_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_item_entity', 'deleted', 'Column loan_pro_fdw._sound_group_item_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_item_entity', 'deleted', 'integer', 'Column loan_pro_fdw._sound_group_item_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_item_entity', 'deleted', 'Column loan_pro_fdw._sound_group_item_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_item_entity', 'deleted', 'Column loan_pro_fdw._sound_group_item_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_item_entity', 'created', 'Column loan_pro_fdw._sound_group_item_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_item_entity', 'created', 'text', 'Column loan_pro_fdw._sound_group_item_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_item_entity', 'created', 'Column loan_pro_fdw._sound_group_item_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_item_entity', 'created', 'Column loan_pro_fdw._sound_group_item_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_item_entity', 'lastupdated', 'Column loan_pro_fdw._sound_group_item_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_item_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._sound_group_item_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_item_entity', 'lastupdated', 'Column loan_pro_fdw._sound_group_item_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_item_entity', 'lastupdated', 'Column loan_pro_fdw._sound_group_item_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
