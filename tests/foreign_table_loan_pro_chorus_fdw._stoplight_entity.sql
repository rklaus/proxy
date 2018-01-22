SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_stoplight_entity',
    'Should have foreign table loan_pro_chorus_fdw._stoplight_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_stoplight_entity',
    'Table loan_pro_chorus_fdw._stoplight_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_stoplight_entity'::name, ARRAY[
    'id'::name,
    'rule'::name,
    'display'::name,
    'style'::name,
    'color'::name,
    'state'::name,
    'uistate'::name,
    'priority'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'id', 'Column loan_pro_chorus_fdw._stoplight_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._stoplight_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'id', 'Column loan_pro_chorus_fdw._stoplight_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'id', 'Column loan_pro_chorus_fdw._stoplight_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'rule', 'Column loan_pro_chorus_fdw._stoplight_entity.rule should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'rule', 'text', 'Column loan_pro_chorus_fdw._stoplight_entity.rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'rule', 'Column loan_pro_chorus_fdw._stoplight_entity.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'rule', 'Column loan_pro_chorus_fdw._stoplight_entity.rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'display', 'Column loan_pro_chorus_fdw._stoplight_entity.display should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'display', 'character varying(100)', 'Column loan_pro_chorus_fdw._stoplight_entity.display should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'display', 'Column loan_pro_chorus_fdw._stoplight_entity.display should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'display', 'Column loan_pro_chorus_fdw._stoplight_entity.display should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'style', 'Column loan_pro_chorus_fdw._stoplight_entity.style should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'style', 'character varying(100)', 'Column loan_pro_chorus_fdw._stoplight_entity.style should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'style', 'Column loan_pro_chorus_fdw._stoplight_entity.style should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'style', 'Column loan_pro_chorus_fdw._stoplight_entity.style should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'color', 'Column loan_pro_chorus_fdw._stoplight_entity.color should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'color', 'character varying(100)', 'Column loan_pro_chorus_fdw._stoplight_entity.color should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'color', 'Column loan_pro_chorus_fdw._stoplight_entity.color should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'color', 'Column loan_pro_chorus_fdw._stoplight_entity.color should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'state', 'Column loan_pro_chorus_fdw._stoplight_entity.state should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'state', 'integer', 'Column loan_pro_chorus_fdw._stoplight_entity.state should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'state', 'Column loan_pro_chorus_fdw._stoplight_entity.state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'state', 'Column loan_pro_chorus_fdw._stoplight_entity.state should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'uistate', 'Column loan_pro_chorus_fdw._stoplight_entity.uistate should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'uistate', 'text', 'Column loan_pro_chorus_fdw._stoplight_entity.uistate should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'uistate', 'Column loan_pro_chorus_fdw._stoplight_entity.uistate should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'uistate', 'Column loan_pro_chorus_fdw._stoplight_entity.uistate should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'priority', 'Column loan_pro_chorus_fdw._stoplight_entity.priority should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'priority', 'bigint', 'Column loan_pro_chorus_fdw._stoplight_entity.priority should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'priority', 'Column loan_pro_chorus_fdw._stoplight_entity.priority should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'priority', 'Column loan_pro_chorus_fdw._stoplight_entity.priority should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'active', 'Column loan_pro_chorus_fdw._stoplight_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._stoplight_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'active', 'Column loan_pro_chorus_fdw._stoplight_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'active', 'Column loan_pro_chorus_fdw._stoplight_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'deleted', 'Column loan_pro_chorus_fdw._stoplight_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._stoplight_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'deleted', 'Column loan_pro_chorus_fdw._stoplight_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'deleted', 'Column loan_pro_chorus_fdw._stoplight_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'created', 'Column loan_pro_chorus_fdw._stoplight_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._stoplight_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'created', 'Column loan_pro_chorus_fdw._stoplight_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'created', 'Column loan_pro_chorus_fdw._stoplight_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_stoplight_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._stoplight_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_stoplight_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._stoplight_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_stoplight_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._stoplight_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_stoplight_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._stoplight_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
