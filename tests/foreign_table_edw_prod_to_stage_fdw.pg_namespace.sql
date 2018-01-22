SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'pg_namespace',
    'Should have foreign table edw_prod_to_stage_fdw.pg_namespace'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'pg_namespace',
    'Table edw_prod_to_stage_fdw.pg_namespace should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'pg_namespace'::name, ARRAY[
    'oid'::name,
    'nspname'::name,
    'nspowner'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_namespace', 'oid', 'Column edw_prod_to_stage_fdw.pg_namespace.oid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_namespace', 'oid', 'oid', 'Column edw_prod_to_stage_fdw.pg_namespace.oid should be type oid');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_namespace', 'oid', 'Column edw_prod_to_stage_fdw.pg_namespace.oid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_namespace', 'oid', 'Column edw_prod_to_stage_fdw.pg_namespace.oid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_namespace', 'nspname', 'Column edw_prod_to_stage_fdw.pg_namespace.nspname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_namespace', 'nspname', 'name', 'Column edw_prod_to_stage_fdw.pg_namespace.nspname should be type name');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_namespace', 'nspname', 'Column edw_prod_to_stage_fdw.pg_namespace.nspname should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_namespace', 'nspname', 'Column edw_prod_to_stage_fdw.pg_namespace.nspname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_namespace', 'nspowner', 'Column edw_prod_to_stage_fdw.pg_namespace.nspowner should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_namespace', 'nspowner', 'oid', 'Column edw_prod_to_stage_fdw.pg_namespace.nspowner should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_namespace', 'nspowner', 'Column edw_prod_to_stage_fdw.pg_namespace.nspowner should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_namespace', 'nspowner', 'Column edw_prod_to_stage_fdw.pg_namespace.nspowner should not  have a default');

SELECT * FROM finish();
ROLLBACK;
