SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_table(
    'bitemporal_internal', 'fk_constraint_type',
    'Should have table bitemporal_internal.fk_constraint_type'
);

SELECT hasnt_pk(
    'bitemporal_internal', 'fk_constraint_type',
    'Table bitemporal_internal.fk_constraint_type should have a primary key'
);

SELECT columns_are('bitemporal_internal'::name, 'fk_constraint_type'::name, ARRAY[
    'conname'::name,
    'src_column'::name,
    'fk_table'::name,
    'fk_column'::name
]);

SELECT has_column(       'bitemporal_internal', 'fk_constraint_type', 'conname', 'Column bitemporal_internal.fk_constraint_type.conname should exist');
SELECT col_type_is(      'bitemporal_internal', 'fk_constraint_type', 'conname', 'name', 'Column bitemporal_internal.fk_constraint_type.conname should be type name');
SELECT col_is_null(      'bitemporal_internal', 'fk_constraint_type', 'conname', 'Column bitemporal_internal.fk_constraint_type.conname should allow NULL');
SELECT col_hasnt_default('bitemporal_internal', 'fk_constraint_type', 'conname', 'Column bitemporal_internal.fk_constraint_type.conname should not  have a default');

SELECT has_column(       'bitemporal_internal', 'fk_constraint_type', 'src_column', 'Column bitemporal_internal.fk_constraint_type.src_column should exist');
SELECT col_type_is(      'bitemporal_internal', 'fk_constraint_type', 'src_column', 'name', 'Column bitemporal_internal.fk_constraint_type.src_column should be type name');
SELECT col_is_null(      'bitemporal_internal', 'fk_constraint_type', 'src_column', 'Column bitemporal_internal.fk_constraint_type.src_column should allow NULL');
SELECT col_hasnt_default('bitemporal_internal', 'fk_constraint_type', 'src_column', 'Column bitemporal_internal.fk_constraint_type.src_column should not  have a default');

SELECT has_column(       'bitemporal_internal', 'fk_constraint_type', 'fk_table', 'Column bitemporal_internal.fk_constraint_type.fk_table should exist');
SELECT col_type_is(      'bitemporal_internal', 'fk_constraint_type', 'fk_table', 'text', 'Column bitemporal_internal.fk_constraint_type.fk_table should be type text');
SELECT col_is_null(      'bitemporal_internal', 'fk_constraint_type', 'fk_table', 'Column bitemporal_internal.fk_constraint_type.fk_table should allow NULL');
SELECT col_hasnt_default('bitemporal_internal', 'fk_constraint_type', 'fk_table', 'Column bitemporal_internal.fk_constraint_type.fk_table should not  have a default');

SELECT has_column(       'bitemporal_internal', 'fk_constraint_type', 'fk_column', 'Column bitemporal_internal.fk_constraint_type.fk_column should exist');
SELECT col_type_is(      'bitemporal_internal', 'fk_constraint_type', 'fk_column', 'name', 'Column bitemporal_internal.fk_constraint_type.fk_column should be type name');
SELECT col_is_null(      'bitemporal_internal', 'fk_constraint_type', 'fk_column', 'Column bitemporal_internal.fk_constraint_type.fk_column should allow NULL');
SELECT col_hasnt_default('bitemporal_internal', 'fk_constraint_type', 'fk_column', 'Column bitemporal_internal.fk_constraint_type.fk_column should not  have a default');

SELECT * FROM finish();
ROLLBACK;
