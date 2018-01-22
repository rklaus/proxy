SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_fdw', '_link_entity',
    'Should have foreign table loan_pro_fdw._link_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_link_entity',
    'Table loan_pro_fdw._link_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_link_entity'::name, ARRAY[
    'id'::name,
    'type'::name,
    'title'::name,
    'link'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_fdw', '_link_entity', 'id', 'Column loan_pro_fdw._link_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_link_entity', 'id', 'integer', 'Column loan_pro_fdw._link_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_link_entity', 'id', 'Column loan_pro_fdw._link_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_link_entity', 'id', 'Column loan_pro_fdw._link_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_link_entity', 'type', 'Column loan_pro_fdw._link_entity.type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_link_entity', 'type', 'character varying(100)', 'Column loan_pro_fdw._link_entity.type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_link_entity', 'type', 'Column loan_pro_fdw._link_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_link_entity', 'type', 'Column loan_pro_fdw._link_entity.type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_link_entity', 'title', 'Column loan_pro_fdw._link_entity.title should exist');
SELECT col_type_is(      'loan_pro_fdw', '_link_entity', 'title', 'text', 'Column loan_pro_fdw._link_entity.title should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_link_entity', 'title', 'Column loan_pro_fdw._link_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_link_entity', 'title', 'Column loan_pro_fdw._link_entity.title should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_link_entity', 'link', 'Column loan_pro_fdw._link_entity.link should exist');
SELECT col_type_is(      'loan_pro_fdw', '_link_entity', 'link', 'text', 'Column loan_pro_fdw._link_entity.link should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_link_entity', 'link', 'Column loan_pro_fdw._link_entity.link should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_link_entity', 'link', 'Column loan_pro_fdw._link_entity.link should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_link_entity', 'created', 'Column loan_pro_fdw._link_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_link_entity', 'created', 'text', 'Column loan_pro_fdw._link_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_link_entity', 'created', 'Column loan_pro_fdw._link_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_link_entity', 'created', 'Column loan_pro_fdw._link_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_link_entity', 'lastupdated', 'Column loan_pro_fdw._link_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_link_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._link_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_link_entity', 'lastupdated', 'Column loan_pro_fdw._link_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_link_entity', 'lastupdated', 'Column loan_pro_fdw._link_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_link_entity', 'active', 'Column loan_pro_fdw._link_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_link_entity', 'active', 'integer', 'Column loan_pro_fdw._link_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_link_entity', 'active', 'Column loan_pro_fdw._link_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_link_entity', 'active', 'Column loan_pro_fdw._link_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_link_entity', 'deleted', 'Column loan_pro_fdw._link_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_link_entity', 'deleted', 'integer', 'Column loan_pro_fdw._link_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_link_entity', 'deleted', 'Column loan_pro_fdw._link_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_link_entity', 'deleted', 'Column loan_pro_fdw._link_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
