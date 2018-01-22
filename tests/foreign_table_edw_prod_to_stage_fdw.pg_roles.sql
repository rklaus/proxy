SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'pg_roles',
    'Should have foreign table edw_prod_to_stage_fdw.pg_roles'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'pg_roles',
    'Table edw_prod_to_stage_fdw.pg_roles should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'pg_roles'::name, ARRAY[
    'rolname'::name,
    'rolsuper'::name,
    'rolinherit'::name,
    'rolcreaterole'::name,
    'rolcreatedb'::name,
    'rolcanlogin'::name,
    'rolreplication'::name,
    'rolconnlimit'::name,
    'rolpassword'::name,
    'rolvaliduntil'::name,
    'rolbypassrls'::name,
    'rolconfig'::name,
    'oid'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolname', 'Column edw_prod_to_stage_fdw.pg_roles.rolname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolname', 'name', 'Column edw_prod_to_stage_fdw.pg_roles.rolname should be type name');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolname', 'Column edw_prod_to_stage_fdw.pg_roles.rolname should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolname', 'Column edw_prod_to_stage_fdw.pg_roles.rolname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolsuper', 'Column edw_prod_to_stage_fdw.pg_roles.rolsuper should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolsuper', 'boolean', 'Column edw_prod_to_stage_fdw.pg_roles.rolsuper should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolsuper', 'Column edw_prod_to_stage_fdw.pg_roles.rolsuper should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolsuper', 'Column edw_prod_to_stage_fdw.pg_roles.rolsuper should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolinherit', 'Column edw_prod_to_stage_fdw.pg_roles.rolinherit should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolinherit', 'boolean', 'Column edw_prod_to_stage_fdw.pg_roles.rolinherit should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolinherit', 'Column edw_prod_to_stage_fdw.pg_roles.rolinherit should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolinherit', 'Column edw_prod_to_stage_fdw.pg_roles.rolinherit should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolcreaterole', 'Column edw_prod_to_stage_fdw.pg_roles.rolcreaterole should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolcreaterole', 'boolean', 'Column edw_prod_to_stage_fdw.pg_roles.rolcreaterole should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolcreaterole', 'Column edw_prod_to_stage_fdw.pg_roles.rolcreaterole should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolcreaterole', 'Column edw_prod_to_stage_fdw.pg_roles.rolcreaterole should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolcreatedb', 'Column edw_prod_to_stage_fdw.pg_roles.rolcreatedb should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolcreatedb', 'boolean', 'Column edw_prod_to_stage_fdw.pg_roles.rolcreatedb should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolcreatedb', 'Column edw_prod_to_stage_fdw.pg_roles.rolcreatedb should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolcreatedb', 'Column edw_prod_to_stage_fdw.pg_roles.rolcreatedb should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolcanlogin', 'Column edw_prod_to_stage_fdw.pg_roles.rolcanlogin should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolcanlogin', 'boolean', 'Column edw_prod_to_stage_fdw.pg_roles.rolcanlogin should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolcanlogin', 'Column edw_prod_to_stage_fdw.pg_roles.rolcanlogin should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolcanlogin', 'Column edw_prod_to_stage_fdw.pg_roles.rolcanlogin should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolreplication', 'Column edw_prod_to_stage_fdw.pg_roles.rolreplication should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolreplication', 'boolean', 'Column edw_prod_to_stage_fdw.pg_roles.rolreplication should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolreplication', 'Column edw_prod_to_stage_fdw.pg_roles.rolreplication should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolreplication', 'Column edw_prod_to_stage_fdw.pg_roles.rolreplication should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolconnlimit', 'Column edw_prod_to_stage_fdw.pg_roles.rolconnlimit should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolconnlimit', 'integer', 'Column edw_prod_to_stage_fdw.pg_roles.rolconnlimit should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolconnlimit', 'Column edw_prod_to_stage_fdw.pg_roles.rolconnlimit should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolconnlimit', 'Column edw_prod_to_stage_fdw.pg_roles.rolconnlimit should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolpassword', 'Column edw_prod_to_stage_fdw.pg_roles.rolpassword should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolpassword', 'text', 'Column edw_prod_to_stage_fdw.pg_roles.rolpassword should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolpassword', 'Column edw_prod_to_stage_fdw.pg_roles.rolpassword should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolpassword', 'Column edw_prod_to_stage_fdw.pg_roles.rolpassword should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolvaliduntil', 'Column edw_prod_to_stage_fdw.pg_roles.rolvaliduntil should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolvaliduntil', 'timestamp with time zone', 'Column edw_prod_to_stage_fdw.pg_roles.rolvaliduntil should be type timestamp with time zone');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolvaliduntil', 'Column edw_prod_to_stage_fdw.pg_roles.rolvaliduntil should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolvaliduntil', 'Column edw_prod_to_stage_fdw.pg_roles.rolvaliduntil should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolbypassrls', 'Column edw_prod_to_stage_fdw.pg_roles.rolbypassrls should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolbypassrls', 'boolean', 'Column edw_prod_to_stage_fdw.pg_roles.rolbypassrls should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolbypassrls', 'Column edw_prod_to_stage_fdw.pg_roles.rolbypassrls should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolbypassrls', 'Column edw_prod_to_stage_fdw.pg_roles.rolbypassrls should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'rolconfig', 'Column edw_prod_to_stage_fdw.pg_roles.rolconfig should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolconfig', 'text[]', 'Column edw_prod_to_stage_fdw.pg_roles.rolconfig should be type text[]');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'rolconfig', 'Column edw_prod_to_stage_fdw.pg_roles.rolconfig should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'rolconfig', 'Column edw_prod_to_stage_fdw.pg_roles.rolconfig should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_roles', 'oid', 'Column edw_prod_to_stage_fdw.pg_roles.oid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_roles', 'oid', 'oid', 'Column edw_prod_to_stage_fdw.pg_roles.oid should be type oid');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_roles', 'oid', 'Column edw_prod_to_stage_fdw.pg_roles.oid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_roles', 'oid', 'Column edw_prod_to_stage_fdw.pg_roles.oid should not  have a default');

SELECT * FROM finish();
ROLLBACK;
