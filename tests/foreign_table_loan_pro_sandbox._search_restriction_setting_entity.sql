SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_search_restriction_setting_entity',
    'Should have foreign table loan_pro_sandbox._search_restriction_setting_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_search_restriction_setting_entity',
    'Table loan_pro_sandbox._search_restriction_setting_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_search_restriction_setting_entity'::name, ARRAY[
    'id'::name,
    'search_restriction_group_id'::name,
    'name'::name,
    'value'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_search_restriction_setting_entity', 'id', 'Column loan_pro_sandbox._search_restriction_setting_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'id', 'integer', 'Column loan_pro_sandbox._search_restriction_setting_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'id', 'Column loan_pro_sandbox._search_restriction_setting_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_search_restriction_setting_entity', 'id', 'Column loan_pro_sandbox._search_restriction_setting_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_search_restriction_setting_entity', 'search_restriction_group_id', 'Column loan_pro_sandbox._search_restriction_setting_entity.search_restriction_group_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'search_restriction_group_id', 'integer', 'Column loan_pro_sandbox._search_restriction_setting_entity.search_restriction_group_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'search_restriction_group_id', 'Column loan_pro_sandbox._search_restriction_setting_entity.search_restriction_group_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_search_restriction_setting_entity', 'search_restriction_group_id', 'Column loan_pro_sandbox._search_restriction_setting_entity.search_restriction_group_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_search_restriction_setting_entity', 'name', 'Column loan_pro_sandbox._search_restriction_setting_entity.name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'name', 'character(64)', 'Column loan_pro_sandbox._search_restriction_setting_entity.name should be type character(64)');
SELECT col_is_null(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'name', 'Column loan_pro_sandbox._search_restriction_setting_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_search_restriction_setting_entity', 'name', 'Column loan_pro_sandbox._search_restriction_setting_entity.name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_search_restriction_setting_entity', 'value', 'Column loan_pro_sandbox._search_restriction_setting_entity.value should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'value', 'text', 'Column loan_pro_sandbox._search_restriction_setting_entity.value should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'value', 'Column loan_pro_sandbox._search_restriction_setting_entity.value should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_search_restriction_setting_entity', 'value', 'Column loan_pro_sandbox._search_restriction_setting_entity.value should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_search_restriction_setting_entity', 'active', 'Column loan_pro_sandbox._search_restriction_setting_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'active', 'integer', 'Column loan_pro_sandbox._search_restriction_setting_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'active', 'Column loan_pro_sandbox._search_restriction_setting_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_search_restriction_setting_entity', 'active', 'Column loan_pro_sandbox._search_restriction_setting_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_search_restriction_setting_entity', 'deleted', 'Column loan_pro_sandbox._search_restriction_setting_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._search_restriction_setting_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'deleted', 'Column loan_pro_sandbox._search_restriction_setting_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_search_restriction_setting_entity', 'deleted', 'Column loan_pro_sandbox._search_restriction_setting_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_search_restriction_setting_entity', 'lastupdated', 'Column loan_pro_sandbox._search_restriction_setting_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._search_restriction_setting_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_search_restriction_setting_entity', 'lastupdated', 'Column loan_pro_sandbox._search_restriction_setting_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_search_restriction_setting_entity', 'lastupdated', 'Column loan_pro_sandbox._search_restriction_setting_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
