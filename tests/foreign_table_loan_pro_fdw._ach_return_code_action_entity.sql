SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_fdw', '_ach_return_code_action_entity',
    'Should have foreign table loan_pro_fdw._ach_return_code_action_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_ach_return_code_action_entity',
    'Table loan_pro_fdw._ach_return_code_action_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_ach_return_code_action_entity'::name, ARRAY[
    'id'::name,
    'return_code'::name,
    'action_type'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_ach_return_code_action_entity', 'id', 'Column loan_pro_fdw._ach_return_code_action_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_ach_return_code_action_entity', 'id', 'character(32)', 'Column loan_pro_fdw._ach_return_code_action_entity.id should be type character(32)');
SELECT col_is_null(      'loan_pro_fdw', '_ach_return_code_action_entity', 'id', 'Column loan_pro_fdw._ach_return_code_action_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_ach_return_code_action_entity', 'id', 'Column loan_pro_fdw._ach_return_code_action_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_ach_return_code_action_entity', 'return_code', 'Column loan_pro_fdw._ach_return_code_action_entity.return_code should exist');
SELECT col_type_is(      'loan_pro_fdw', '_ach_return_code_action_entity', 'return_code', 'character(4)', 'Column loan_pro_fdw._ach_return_code_action_entity.return_code should be type character(4)');
SELECT col_is_null(      'loan_pro_fdw', '_ach_return_code_action_entity', 'return_code', 'Column loan_pro_fdw._ach_return_code_action_entity.return_code should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_ach_return_code_action_entity', 'return_code', 'Column loan_pro_fdw._ach_return_code_action_entity.return_code should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_ach_return_code_action_entity', 'action_type', 'Column loan_pro_fdw._ach_return_code_action_entity.action_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_ach_return_code_action_entity', 'action_type', 'text', 'Column loan_pro_fdw._ach_return_code_action_entity.action_type should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_ach_return_code_action_entity', 'action_type', 'Column loan_pro_fdw._ach_return_code_action_entity.action_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_ach_return_code_action_entity', 'action_type', 'Column loan_pro_fdw._ach_return_code_action_entity.action_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_ach_return_code_action_entity', 'deleted', 'Column loan_pro_fdw._ach_return_code_action_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_ach_return_code_action_entity', 'deleted', 'integer', 'Column loan_pro_fdw._ach_return_code_action_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_ach_return_code_action_entity', 'deleted', 'Column loan_pro_fdw._ach_return_code_action_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_ach_return_code_action_entity', 'deleted', 'Column loan_pro_fdw._ach_return_code_action_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_ach_return_code_action_entity', 'lastupdated', 'Column loan_pro_fdw._ach_return_code_action_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_ach_return_code_action_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._ach_return_code_action_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_ach_return_code_action_entity', 'lastupdated', 'Column loan_pro_fdw._ach_return_code_action_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_ach_return_code_action_entity', 'lastupdated', 'Column loan_pro_fdw._ach_return_code_action_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
