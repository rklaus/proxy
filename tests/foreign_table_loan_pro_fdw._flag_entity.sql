SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'loan_pro_fdw', '_flag_entity',
    'Should have foreign table loan_pro_fdw._flag_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_flag_entity',
    'Table loan_pro_fdw._flag_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_flag_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'description'::name,
    'rule'::name,
    'draft'::name,
    'display'::name,
    'state'::name,
    'ui_state'::name,
    'entity_type'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'id', 'Column loan_pro_fdw._flag_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'id', 'integer', 'Column loan_pro_fdw._flag_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'id', 'Column loan_pro_fdw._flag_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'id', 'Column loan_pro_fdw._flag_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'name', 'Column loan_pro_fdw._flag_entity.name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'name', 'character varying(100)', 'Column loan_pro_fdw._flag_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'name', 'Column loan_pro_fdw._flag_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'name', 'Column loan_pro_fdw._flag_entity.name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'description', 'Column loan_pro_fdw._flag_entity.description should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'description', 'text', 'Column loan_pro_fdw._flag_entity.description should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'description', 'Column loan_pro_fdw._flag_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'description', 'Column loan_pro_fdw._flag_entity.description should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'rule', 'Column loan_pro_fdw._flag_entity.rule should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'rule', 'text', 'Column loan_pro_fdw._flag_entity.rule should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'rule', 'Column loan_pro_fdw._flag_entity.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'rule', 'Column loan_pro_fdw._flag_entity.rule should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'draft', 'Column loan_pro_fdw._flag_entity.draft should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'draft', 'text', 'Column loan_pro_fdw._flag_entity.draft should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'draft', 'Column loan_pro_fdw._flag_entity.draft should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'draft', 'Column loan_pro_fdw._flag_entity.draft should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'display', 'Column loan_pro_fdw._flag_entity.display should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'display', 'character varying(100)', 'Column loan_pro_fdw._flag_entity.display should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'display', 'Column loan_pro_fdw._flag_entity.display should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'display', 'Column loan_pro_fdw._flag_entity.display should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'state', 'Column loan_pro_fdw._flag_entity.state should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'state', 'integer', 'Column loan_pro_fdw._flag_entity.state should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'state', 'Column loan_pro_fdw._flag_entity.state should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'state', 'Column loan_pro_fdw._flag_entity.state should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'ui_state', 'Column loan_pro_fdw._flag_entity.ui_state should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'ui_state', 'text', 'Column loan_pro_fdw._flag_entity.ui_state should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'ui_state', 'Column loan_pro_fdw._flag_entity.ui_state should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'ui_state', 'Column loan_pro_fdw._flag_entity.ui_state should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'entity_type', 'Column loan_pro_fdw._flag_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_fdw._flag_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'entity_type', 'Column loan_pro_fdw._flag_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'entity_type', 'Column loan_pro_fdw._flag_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'active', 'Column loan_pro_fdw._flag_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'active', 'integer', 'Column loan_pro_fdw._flag_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'active', 'Column loan_pro_fdw._flag_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'active', 'Column loan_pro_fdw._flag_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'deleted', 'Column loan_pro_fdw._flag_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'deleted', 'integer', 'Column loan_pro_fdw._flag_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'deleted', 'Column loan_pro_fdw._flag_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'deleted', 'Column loan_pro_fdw._flag_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'created', 'Column loan_pro_fdw._flag_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'created', 'text', 'Column loan_pro_fdw._flag_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'created', 'Column loan_pro_fdw._flag_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'created', 'Column loan_pro_fdw._flag_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_flag_entity', 'lastupdated', 'Column loan_pro_fdw._flag_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_flag_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._flag_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_flag_entity', 'lastupdated', 'Column loan_pro_fdw._flag_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_flag_entity', 'lastupdated', 'Column loan_pro_fdw._flag_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
