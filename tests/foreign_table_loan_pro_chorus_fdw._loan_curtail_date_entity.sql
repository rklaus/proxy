SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_curtail_date_entity',
    'Should have foreign table loan_pro_chorus_fdw._loan_curtail_date_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_curtail_date_entity',
    'Table loan_pro_chorus_fdw._loan_curtail_date_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_curtail_date_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'mod_id'::name,
    'date'::name,
    'percent'::name,
    'amount'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'mod_id', 'integer', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'date', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'date', 'text', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'date', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'date', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'percent', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.percent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'percent', 'numeric(11,7)', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.percent should be type numeric(11,7)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'percent', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'percent', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_curtail_date_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_curtail_date_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
