SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_restriction_group_entry_archive',
    'Should have foreign table loan_pro_chorus_fdw._restriction_group_entry_archive'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_restriction_group_entry_archive',
    'Table loan_pro_chorus_fdw._restriction_group_entry_archive should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_restriction_group_entry_archive'::name, ARRAY[
    'loan_id'::name,
    'restriction_group_id'::name,
    'restriction_group_entry_id'::name,
    'date'::name,
    'value'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'loan_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'loan_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'loan_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'restriction_group_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.restriction_group_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'restriction_group_id', 'integer', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.restriction_group_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'restriction_group_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.restriction_group_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'restriction_group_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.restriction_group_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'restriction_group_entry_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.restriction_group_entry_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'restriction_group_entry_id', 'integer', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.restriction_group_entry_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'restriction_group_entry_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.restriction_group_entry_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'restriction_group_entry_id', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.restriction_group_entry_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'date', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'date', 'date', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.date should be type date');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'date', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'date', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'value', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.value should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'value', 'integer', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.value should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'value', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.value should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'value', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.value should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'deleted', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'deleted', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'deleted', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'lastupdated', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'lastupdated', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group_entry_archive', 'lastupdated', 'Column loan_pro_chorus_fdw._restriction_group_entry_archive.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
