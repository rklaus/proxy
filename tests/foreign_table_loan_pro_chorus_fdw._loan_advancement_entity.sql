SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_advancement_entity',
    'Should have foreign table loan_pro_chorus_fdw._loan_advancement_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_advancement_entity',
    'Table loan_pro_chorus_fdw._loan_advancement_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_advancement_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'mod_id'::name,
    'title'::name,
    'date'::name,
    'amount'::name,
    'category'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_advancement_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_fdw._loan_advancement_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'entity_id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_advancement_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._loan_advancement_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_advancement_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'entity_type', 'Column loan_pro_chorus_fdw._loan_advancement_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'mod_id', 'integer', 'Column loan_pro_chorus_fdw._loan_advancement_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'mod_id', 'Column loan_pro_chorus_fdw._loan_advancement_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'title', 'Column loan_pro_chorus_fdw._loan_advancement_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'title', 'text', 'Column loan_pro_chorus_fdw._loan_advancement_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'title', 'Column loan_pro_chorus_fdw._loan_advancement_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'title', 'Column loan_pro_chorus_fdw._loan_advancement_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'date', 'Column loan_pro_chorus_fdw._loan_advancement_entity.date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'date', 'text', 'Column loan_pro_chorus_fdw._loan_advancement_entity.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'date', 'Column loan_pro_chorus_fdw._loan_advancement_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'date', 'Column loan_pro_chorus_fdw._loan_advancement_entity.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_advancement_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._loan_advancement_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_advancement_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_advancement_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'category', 'Column loan_pro_chorus_fdw._loan_advancement_entity.category should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'category', 'integer', 'Column loan_pro_chorus_fdw._loan_advancement_entity.category should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'category', 'Column loan_pro_chorus_fdw._loan_advancement_entity.category should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'category', 'Column loan_pro_chorus_fdw._loan_advancement_entity.category should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_advancement_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_advancement_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_advancement_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_advancement_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'created', 'Column loan_pro_chorus_fdw._loan_advancement_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._loan_advancement_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'created', 'Column loan_pro_chorus_fdw._loan_advancement_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'created', 'Column loan_pro_chorus_fdw._loan_advancement_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_advancement_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_advancement_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan_advancement_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_advancement_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_advancement_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_advancement_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_advancement_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
