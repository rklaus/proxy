SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_investment_entity',
    'Should have foreign table loan_pro_sandbox._investment_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_investment_entity',
    'Table loan_pro_sandbox._investment_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_investment_entity'::name, ARRAY[
    'id'::name,
    'display_id'::name,
    'title'::name,
    'type'::name,
    'mod_id'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'id', 'Column loan_pro_sandbox._investment_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'id', 'integer', 'Column loan_pro_sandbox._investment_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'id', 'Column loan_pro_sandbox._investment_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'id', 'Column loan_pro_sandbox._investment_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'display_id', 'Column loan_pro_sandbox._investment_entity.display_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'display_id', 'character(25)', 'Column loan_pro_sandbox._investment_entity.display_id should be type character(25)');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'display_id', 'Column loan_pro_sandbox._investment_entity.display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'display_id', 'Column loan_pro_sandbox._investment_entity.display_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'title', 'Column loan_pro_sandbox._investment_entity.title should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'title', 'text', 'Column loan_pro_sandbox._investment_entity.title should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'title', 'Column loan_pro_sandbox._investment_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'title', 'Column loan_pro_sandbox._investment_entity.title should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'type', 'Column loan_pro_sandbox._investment_entity.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'type', 'character varying(100)', 'Column loan_pro_sandbox._investment_entity.type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'type', 'Column loan_pro_sandbox._investment_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'type', 'Column loan_pro_sandbox._investment_entity.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'mod_id', 'Column loan_pro_sandbox._investment_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'mod_id', 'integer', 'Column loan_pro_sandbox._investment_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'mod_id', 'Column loan_pro_sandbox._investment_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'mod_id', 'Column loan_pro_sandbox._investment_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'created', 'Column loan_pro_sandbox._investment_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'created', 'text', 'Column loan_pro_sandbox._investment_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'created', 'Column loan_pro_sandbox._investment_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'created', 'Column loan_pro_sandbox._investment_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'lastupdated', 'Column loan_pro_sandbox._investment_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._investment_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'lastupdated', 'Column loan_pro_sandbox._investment_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'lastupdated', 'Column loan_pro_sandbox._investment_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'active', 'Column loan_pro_sandbox._investment_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'active', 'integer', 'Column loan_pro_sandbox._investment_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'active', 'Column loan_pro_sandbox._investment_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'active', 'Column loan_pro_sandbox._investment_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment_entity', 'deleted', 'Column loan_pro_sandbox._investment_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._investment_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment_entity', 'deleted', 'Column loan_pro_sandbox._investment_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment_entity', 'deleted', 'Column loan_pro_sandbox._investment_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
