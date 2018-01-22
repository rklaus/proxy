SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(127);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'pg_class',
    'Should have foreign table edw_prod_to_stage_fdw.pg_class'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'pg_class',
    'Table edw_prod_to_stage_fdw.pg_class should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'pg_class'::name, ARRAY[
    'oid'::name,
    'relname'::name,
    'relnamespace'::name,
    'reltype'::name,
    'reloftype'::name,
    'relowner'::name,
    'relam'::name,
    'relfilenode'::name,
    'reltablespace'::name,
    'relpages'::name,
    'reltuples'::name,
    'relallvisible'::name,
    'reltoastrelid'::name,
    'relhasindex'::name,
    'relisshared'::name,
    'relpersistence'::name,
    'relkind'::name,
    'relnatts'::name,
    'relchecks'::name,
    'relhasoids'::name,
    'relhaspkey'::name,
    'relhasrules'::name,
    'relhastriggers'::name,
    'relhassubclass'::name,
    'relrowsecurity'::name,
    'relforcerowsecurity'::name,
    'relispopulated'::name,
    'relreplident'::name,
    'relfrozenxid'::name,
    'relminmxid'::name,
    'reloptions'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.oid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'oid', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.oid should be type oid');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_class', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.oid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.oid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relname', 'Column edw_prod_to_stage_fdw.pg_class.relname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relname', 'name', 'Column edw_prod_to_stage_fdw.pg_class.relname should be type name');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relname', 'Column edw_prod_to_stage_fdw.pg_class.relname should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relname', 'Column edw_prod_to_stage_fdw.pg_class.relname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relnamespace', 'Column edw_prod_to_stage_fdw.pg_class.relnamespace should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relnamespace', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.relnamespace should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relnamespace', 'Column edw_prod_to_stage_fdw.pg_class.relnamespace should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relnamespace', 'Column edw_prod_to_stage_fdw.pg_class.relnamespace should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'reltype', 'Column edw_prod_to_stage_fdw.pg_class.reltype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'reltype', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.reltype should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'reltype', 'Column edw_prod_to_stage_fdw.pg_class.reltype should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'reltype', 'Column edw_prod_to_stage_fdw.pg_class.reltype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'reloftype', 'Column edw_prod_to_stage_fdw.pg_class.reloftype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'reloftype', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.reloftype should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'reloftype', 'Column edw_prod_to_stage_fdw.pg_class.reloftype should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'reloftype', 'Column edw_prod_to_stage_fdw.pg_class.reloftype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relowner', 'Column edw_prod_to_stage_fdw.pg_class.relowner should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relowner', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.relowner should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relowner', 'Column edw_prod_to_stage_fdw.pg_class.relowner should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relowner', 'Column edw_prod_to_stage_fdw.pg_class.relowner should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relam', 'Column edw_prod_to_stage_fdw.pg_class.relam should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relam', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.relam should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relam', 'Column edw_prod_to_stage_fdw.pg_class.relam should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relam', 'Column edw_prod_to_stage_fdw.pg_class.relam should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relfilenode', 'Column edw_prod_to_stage_fdw.pg_class.relfilenode should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relfilenode', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.relfilenode should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relfilenode', 'Column edw_prod_to_stage_fdw.pg_class.relfilenode should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relfilenode', 'Column edw_prod_to_stage_fdw.pg_class.relfilenode should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'reltablespace', 'Column edw_prod_to_stage_fdw.pg_class.reltablespace should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'reltablespace', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.reltablespace should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'reltablespace', 'Column edw_prod_to_stage_fdw.pg_class.reltablespace should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'reltablespace', 'Column edw_prod_to_stage_fdw.pg_class.reltablespace should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relpages', 'Column edw_prod_to_stage_fdw.pg_class.relpages should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relpages', 'integer', 'Column edw_prod_to_stage_fdw.pg_class.relpages should be type integer');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relpages', 'Column edw_prod_to_stage_fdw.pg_class.relpages should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relpages', 'Column edw_prod_to_stage_fdw.pg_class.relpages should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'reltuples', 'Column edw_prod_to_stage_fdw.pg_class.reltuples should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'reltuples', 'real', 'Column edw_prod_to_stage_fdw.pg_class.reltuples should be type real');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'reltuples', 'Column edw_prod_to_stage_fdw.pg_class.reltuples should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'reltuples', 'Column edw_prod_to_stage_fdw.pg_class.reltuples should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relallvisible', 'Column edw_prod_to_stage_fdw.pg_class.relallvisible should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relallvisible', 'integer', 'Column edw_prod_to_stage_fdw.pg_class.relallvisible should be type integer');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relallvisible', 'Column edw_prod_to_stage_fdw.pg_class.relallvisible should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relallvisible', 'Column edw_prod_to_stage_fdw.pg_class.relallvisible should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'reltoastrelid', 'Column edw_prod_to_stage_fdw.pg_class.reltoastrelid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'reltoastrelid', 'oid', 'Column edw_prod_to_stage_fdw.pg_class.reltoastrelid should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'reltoastrelid', 'Column edw_prod_to_stage_fdw.pg_class.reltoastrelid should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'reltoastrelid', 'Column edw_prod_to_stage_fdw.pg_class.reltoastrelid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relhasindex', 'Column edw_prod_to_stage_fdw.pg_class.relhasindex should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relhasindex', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relhasindex should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relhasindex', 'Column edw_prod_to_stage_fdw.pg_class.relhasindex should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relhasindex', 'Column edw_prod_to_stage_fdw.pg_class.relhasindex should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relisshared', 'Column edw_prod_to_stage_fdw.pg_class.relisshared should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relisshared', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relisshared should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relisshared', 'Column edw_prod_to_stage_fdw.pg_class.relisshared should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relisshared', 'Column edw_prod_to_stage_fdw.pg_class.relisshared should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relpersistence', 'Column edw_prod_to_stage_fdw.pg_class.relpersistence should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relpersistence', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_class.relpersistence should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relpersistence', 'Column edw_prod_to_stage_fdw.pg_class.relpersistence should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relpersistence', 'Column edw_prod_to_stage_fdw.pg_class.relpersistence should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relkind', 'Column edw_prod_to_stage_fdw.pg_class.relkind should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relkind', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_class.relkind should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relkind', 'Column edw_prod_to_stage_fdw.pg_class.relkind should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relkind', 'Column edw_prod_to_stage_fdw.pg_class.relkind should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relnatts', 'Column edw_prod_to_stage_fdw.pg_class.relnatts should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relnatts', 'smallint', 'Column edw_prod_to_stage_fdw.pg_class.relnatts should be type smallint');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relnatts', 'Column edw_prod_to_stage_fdw.pg_class.relnatts should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relnatts', 'Column edw_prod_to_stage_fdw.pg_class.relnatts should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relchecks', 'Column edw_prod_to_stage_fdw.pg_class.relchecks should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relchecks', 'smallint', 'Column edw_prod_to_stage_fdw.pg_class.relchecks should be type smallint');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relchecks', 'Column edw_prod_to_stage_fdw.pg_class.relchecks should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relchecks', 'Column edw_prod_to_stage_fdw.pg_class.relchecks should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relhasoids', 'Column edw_prod_to_stage_fdw.pg_class.relhasoids should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relhasoids', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relhasoids should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relhasoids', 'Column edw_prod_to_stage_fdw.pg_class.relhasoids should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relhasoids', 'Column edw_prod_to_stage_fdw.pg_class.relhasoids should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relhaspkey', 'Column edw_prod_to_stage_fdw.pg_class.relhaspkey should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relhaspkey', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relhaspkey should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relhaspkey', 'Column edw_prod_to_stage_fdw.pg_class.relhaspkey should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relhaspkey', 'Column edw_prod_to_stage_fdw.pg_class.relhaspkey should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relhasrules', 'Column edw_prod_to_stage_fdw.pg_class.relhasrules should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relhasrules', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relhasrules should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relhasrules', 'Column edw_prod_to_stage_fdw.pg_class.relhasrules should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relhasrules', 'Column edw_prod_to_stage_fdw.pg_class.relhasrules should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relhastriggers', 'Column edw_prod_to_stage_fdw.pg_class.relhastriggers should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relhastriggers', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relhastriggers should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relhastriggers', 'Column edw_prod_to_stage_fdw.pg_class.relhastriggers should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relhastriggers', 'Column edw_prod_to_stage_fdw.pg_class.relhastriggers should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relhassubclass', 'Column edw_prod_to_stage_fdw.pg_class.relhassubclass should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relhassubclass', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relhassubclass should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relhassubclass', 'Column edw_prod_to_stage_fdw.pg_class.relhassubclass should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relhassubclass', 'Column edw_prod_to_stage_fdw.pg_class.relhassubclass should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relrowsecurity', 'Column edw_prod_to_stage_fdw.pg_class.relrowsecurity should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relrowsecurity', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relrowsecurity should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relrowsecurity', 'Column edw_prod_to_stage_fdw.pg_class.relrowsecurity should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relrowsecurity', 'Column edw_prod_to_stage_fdw.pg_class.relrowsecurity should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relforcerowsecurity', 'Column edw_prod_to_stage_fdw.pg_class.relforcerowsecurity should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relforcerowsecurity', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relforcerowsecurity should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relforcerowsecurity', 'Column edw_prod_to_stage_fdw.pg_class.relforcerowsecurity should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relforcerowsecurity', 'Column edw_prod_to_stage_fdw.pg_class.relforcerowsecurity should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relispopulated', 'Column edw_prod_to_stage_fdw.pg_class.relispopulated should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relispopulated', 'boolean', 'Column edw_prod_to_stage_fdw.pg_class.relispopulated should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relispopulated', 'Column edw_prod_to_stage_fdw.pg_class.relispopulated should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relispopulated', 'Column edw_prod_to_stage_fdw.pg_class.relispopulated should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relreplident', 'Column edw_prod_to_stage_fdw.pg_class.relreplident should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relreplident', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_class.relreplident should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relreplident', 'Column edw_prod_to_stage_fdw.pg_class.relreplident should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relreplident', 'Column edw_prod_to_stage_fdw.pg_class.relreplident should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relfrozenxid', 'Column edw_prod_to_stage_fdw.pg_class.relfrozenxid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relfrozenxid', 'xid', 'Column edw_prod_to_stage_fdw.pg_class.relfrozenxid should be type xid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relfrozenxid', 'Column edw_prod_to_stage_fdw.pg_class.relfrozenxid should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relfrozenxid', 'Column edw_prod_to_stage_fdw.pg_class.relfrozenxid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'relminmxid', 'Column edw_prod_to_stage_fdw.pg_class.relminmxid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'relminmxid', 'xid', 'Column edw_prod_to_stage_fdw.pg_class.relminmxid should be type xid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_class', 'relminmxid', 'Column edw_prod_to_stage_fdw.pg_class.relminmxid should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'relminmxid', 'Column edw_prod_to_stage_fdw.pg_class.relminmxid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_class', 'reloptions', 'Column edw_prod_to_stage_fdw.pg_class.reloptions should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_class', 'reloptions', 'text[]', 'Column edw_prod_to_stage_fdw.pg_class.reloptions should be type text[]');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_class', 'reloptions', 'Column edw_prod_to_stage_fdw.pg_class.reloptions should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_class', 'reloptions', 'Column edw_prod_to_stage_fdw.pg_class.reloptions should not  have a default');

SELECT * FROM finish();
ROLLBACK;
