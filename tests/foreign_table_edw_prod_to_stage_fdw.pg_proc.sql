SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(115);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'pg_proc',
    'Should have foreign table edw_prod_to_stage_fdw.pg_proc'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'pg_proc',
    'Table edw_prod_to_stage_fdw.pg_proc should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'pg_proc'::name, ARRAY[
    'oid'::name,
    'proname'::name,
    'pronamespace'::name,
    'proowner'::name,
    'prolang'::name,
    'procost'::name,
    'prorows'::name,
    'provariadic'::name,
    'protransform'::name,
    'proisagg'::name,
    'proiswindow'::name,
    'prosecdef'::name,
    'proleakproof'::name,
    'proisstrict'::name,
    'proretset'::name,
    'provolatile'::name,
    'pronargs'::name,
    'pronargdefaults'::name,
    'prorettype'::name,
    'proargtypes'::name,
    'proallargtypes'::name,
    'proargmodes'::name,
    'proargnames'::name,
    'proargdefaults'::name,
    'protrftypes'::name,
    'prosrc'::name,
    'probin'::name,
    'proconfig'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.oid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'oid', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.oid should be type oid');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_proc', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.oid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.oid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proname', 'Column edw_prod_to_stage_fdw.pg_proc.proname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proname', 'name', 'Column edw_prod_to_stage_fdw.pg_proc.proname should be type name');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'proname', 'Column edw_prod_to_stage_fdw.pg_proc.proname should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proname', 'Column edw_prod_to_stage_fdw.pg_proc.proname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'pronamespace', 'Column edw_prod_to_stage_fdw.pg_proc.pronamespace should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'pronamespace', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.pronamespace should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'pronamespace', 'Column edw_prod_to_stage_fdw.pg_proc.pronamespace should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'pronamespace', 'Column edw_prod_to_stage_fdw.pg_proc.pronamespace should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proowner', 'Column edw_prod_to_stage_fdw.pg_proc.proowner should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proowner', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.proowner should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'proowner', 'Column edw_prod_to_stage_fdw.pg_proc.proowner should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proowner', 'Column edw_prod_to_stage_fdw.pg_proc.proowner should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'prolang', 'Column edw_prod_to_stage_fdw.pg_proc.prolang should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'prolang', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.prolang should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'prolang', 'Column edw_prod_to_stage_fdw.pg_proc.prolang should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'prolang', 'Column edw_prod_to_stage_fdw.pg_proc.prolang should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'procost', 'Column edw_prod_to_stage_fdw.pg_proc.procost should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'procost', 'real', 'Column edw_prod_to_stage_fdw.pg_proc.procost should be type real');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'procost', 'Column edw_prod_to_stage_fdw.pg_proc.procost should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'procost', 'Column edw_prod_to_stage_fdw.pg_proc.procost should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'prorows', 'Column edw_prod_to_stage_fdw.pg_proc.prorows should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'prorows', 'real', 'Column edw_prod_to_stage_fdw.pg_proc.prorows should be type real');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'prorows', 'Column edw_prod_to_stage_fdw.pg_proc.prorows should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'prorows', 'Column edw_prod_to_stage_fdw.pg_proc.prorows should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'provariadic', 'Column edw_prod_to_stage_fdw.pg_proc.provariadic should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'provariadic', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.provariadic should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'provariadic', 'Column edw_prod_to_stage_fdw.pg_proc.provariadic should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'provariadic', 'Column edw_prod_to_stage_fdw.pg_proc.provariadic should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'protransform', 'Column edw_prod_to_stage_fdw.pg_proc.protransform should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'protransform', 'regproc', 'Column edw_prod_to_stage_fdw.pg_proc.protransform should be type regproc');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'protransform', 'Column edw_prod_to_stage_fdw.pg_proc.protransform should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'protransform', 'Column edw_prod_to_stage_fdw.pg_proc.protransform should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proisagg', 'Column edw_prod_to_stage_fdw.pg_proc.proisagg should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proisagg', 'boolean', 'Column edw_prod_to_stage_fdw.pg_proc.proisagg should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'proisagg', 'Column edw_prod_to_stage_fdw.pg_proc.proisagg should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proisagg', 'Column edw_prod_to_stage_fdw.pg_proc.proisagg should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proiswindow', 'Column edw_prod_to_stage_fdw.pg_proc.proiswindow should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proiswindow', 'boolean', 'Column edw_prod_to_stage_fdw.pg_proc.proiswindow should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'proiswindow', 'Column edw_prod_to_stage_fdw.pg_proc.proiswindow should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proiswindow', 'Column edw_prod_to_stage_fdw.pg_proc.proiswindow should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'prosecdef', 'Column edw_prod_to_stage_fdw.pg_proc.prosecdef should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'prosecdef', 'boolean', 'Column edw_prod_to_stage_fdw.pg_proc.prosecdef should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'prosecdef', 'Column edw_prod_to_stage_fdw.pg_proc.prosecdef should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'prosecdef', 'Column edw_prod_to_stage_fdw.pg_proc.prosecdef should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proleakproof', 'Column edw_prod_to_stage_fdw.pg_proc.proleakproof should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proleakproof', 'boolean', 'Column edw_prod_to_stage_fdw.pg_proc.proleakproof should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'proleakproof', 'Column edw_prod_to_stage_fdw.pg_proc.proleakproof should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proleakproof', 'Column edw_prod_to_stage_fdw.pg_proc.proleakproof should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proisstrict', 'Column edw_prod_to_stage_fdw.pg_proc.proisstrict should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proisstrict', 'boolean', 'Column edw_prod_to_stage_fdw.pg_proc.proisstrict should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'proisstrict', 'Column edw_prod_to_stage_fdw.pg_proc.proisstrict should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proisstrict', 'Column edw_prod_to_stage_fdw.pg_proc.proisstrict should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proretset', 'Column edw_prod_to_stage_fdw.pg_proc.proretset should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proretset', 'boolean', 'Column edw_prod_to_stage_fdw.pg_proc.proretset should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'proretset', 'Column edw_prod_to_stage_fdw.pg_proc.proretset should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proretset', 'Column edw_prod_to_stage_fdw.pg_proc.proretset should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'provolatile', 'Column edw_prod_to_stage_fdw.pg_proc.provolatile should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'provolatile', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_proc.provolatile should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'provolatile', 'Column edw_prod_to_stage_fdw.pg_proc.provolatile should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'provolatile', 'Column edw_prod_to_stage_fdw.pg_proc.provolatile should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'pronargs', 'Column edw_prod_to_stage_fdw.pg_proc.pronargs should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'pronargs', 'smallint', 'Column edw_prod_to_stage_fdw.pg_proc.pronargs should be type smallint');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'pronargs', 'Column edw_prod_to_stage_fdw.pg_proc.pronargs should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'pronargs', 'Column edw_prod_to_stage_fdw.pg_proc.pronargs should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'pronargdefaults', 'Column edw_prod_to_stage_fdw.pg_proc.pronargdefaults should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'pronargdefaults', 'smallint', 'Column edw_prod_to_stage_fdw.pg_proc.pronargdefaults should be type smallint');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'pronargdefaults', 'Column edw_prod_to_stage_fdw.pg_proc.pronargdefaults should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'pronargdefaults', 'Column edw_prod_to_stage_fdw.pg_proc.pronargdefaults should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'prorettype', 'Column edw_prod_to_stage_fdw.pg_proc.prorettype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'prorettype', 'oid', 'Column edw_prod_to_stage_fdw.pg_proc.prorettype should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'prorettype', 'Column edw_prod_to_stage_fdw.pg_proc.prorettype should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'prorettype', 'Column edw_prod_to_stage_fdw.pg_proc.prorettype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proargtypes', 'Column edw_prod_to_stage_fdw.pg_proc.proargtypes should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proargtypes', 'oidvector', 'Column edw_prod_to_stage_fdw.pg_proc.proargtypes should be type oidvector');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'proargtypes', 'Column edw_prod_to_stage_fdw.pg_proc.proargtypes should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proargtypes', 'Column edw_prod_to_stage_fdw.pg_proc.proargtypes should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proallargtypes', 'Column edw_prod_to_stage_fdw.pg_proc.proallargtypes should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proallargtypes', 'oid[]', 'Column edw_prod_to_stage_fdw.pg_proc.proallargtypes should be type oid[]');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_proc', 'proallargtypes', 'Column edw_prod_to_stage_fdw.pg_proc.proallargtypes should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proallargtypes', 'Column edw_prod_to_stage_fdw.pg_proc.proallargtypes should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proargmodes', 'Column edw_prod_to_stage_fdw.pg_proc.proargmodes should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proargmodes', 'character(1)[]', 'Column edw_prod_to_stage_fdw.pg_proc.proargmodes should be type character(1)[]');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_proc', 'proargmodes', 'Column edw_prod_to_stage_fdw.pg_proc.proargmodes should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proargmodes', 'Column edw_prod_to_stage_fdw.pg_proc.proargmodes should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proargnames', 'Column edw_prod_to_stage_fdw.pg_proc.proargnames should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proargnames', 'text[]', 'Column edw_prod_to_stage_fdw.pg_proc.proargnames should be type text[]');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_proc', 'proargnames', 'Column edw_prod_to_stage_fdw.pg_proc.proargnames should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proargnames', 'Column edw_prod_to_stage_fdw.pg_proc.proargnames should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proargdefaults', 'Column edw_prod_to_stage_fdw.pg_proc.proargdefaults should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proargdefaults', 'pg_node_tree', 'Column edw_prod_to_stage_fdw.pg_proc.proargdefaults should be type pg_node_tree');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_proc', 'proargdefaults', 'Column edw_prod_to_stage_fdw.pg_proc.proargdefaults should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proargdefaults', 'Column edw_prod_to_stage_fdw.pg_proc.proargdefaults should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'protrftypes', 'Column edw_prod_to_stage_fdw.pg_proc.protrftypes should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'protrftypes', 'oid[]', 'Column edw_prod_to_stage_fdw.pg_proc.protrftypes should be type oid[]');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_proc', 'protrftypes', 'Column edw_prod_to_stage_fdw.pg_proc.protrftypes should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'protrftypes', 'Column edw_prod_to_stage_fdw.pg_proc.protrftypes should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'prosrc', 'Column edw_prod_to_stage_fdw.pg_proc.prosrc should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'prosrc', 'text', 'Column edw_prod_to_stage_fdw.pg_proc.prosrc should be type text');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_proc', 'prosrc', 'Column edw_prod_to_stage_fdw.pg_proc.prosrc should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'prosrc', 'Column edw_prod_to_stage_fdw.pg_proc.prosrc should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'probin', 'Column edw_prod_to_stage_fdw.pg_proc.probin should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'probin', 'text', 'Column edw_prod_to_stage_fdw.pg_proc.probin should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_proc', 'probin', 'Column edw_prod_to_stage_fdw.pg_proc.probin should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'probin', 'Column edw_prod_to_stage_fdw.pg_proc.probin should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_proc', 'proconfig', 'Column edw_prod_to_stage_fdw.pg_proc.proconfig should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_proc', 'proconfig', 'text[]', 'Column edw_prod_to_stage_fdw.pg_proc.proconfig should be type text[]');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_proc', 'proconfig', 'Column edw_prod_to_stage_fdw.pg_proc.proconfig should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_proc', 'proconfig', 'Column edw_prod_to_stage_fdw.pg_proc.proconfig should not  have a default');

SELECT * FROM finish();
ROLLBACK;
