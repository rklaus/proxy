SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_flag_status_archive',
    'Should have foreign table loan_pro_sandbox._flag_status_archive'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_flag_status_archive',
    'Table loan_pro_sandbox._flag_status_archive should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_flag_status_archive'::name, ARRAY[
    'flag_id'::name,
    'date'::name,
    'value'::name,
    'deleted'::name,
    'entity_id'::name,
    'entity_type'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_flag_status_archive', 'flag_id', 'Column loan_pro_sandbox._flag_status_archive.flag_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_flag_status_archive', 'flag_id', 'integer', 'Column loan_pro_sandbox._flag_status_archive.flag_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_flag_status_archive', 'flag_id', 'Column loan_pro_sandbox._flag_status_archive.flag_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_flag_status_archive', 'flag_id', 'Column loan_pro_sandbox._flag_status_archive.flag_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_flag_status_archive', 'date', 'Column loan_pro_sandbox._flag_status_archive.date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_flag_status_archive', 'date', 'text', 'Column loan_pro_sandbox._flag_status_archive.date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_flag_status_archive', 'date', 'Column loan_pro_sandbox._flag_status_archive.date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_flag_status_archive', 'date', 'Column loan_pro_sandbox._flag_status_archive.date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_flag_status_archive', 'value', 'Column loan_pro_sandbox._flag_status_archive.value should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_flag_status_archive', 'value', 'integer', 'Column loan_pro_sandbox._flag_status_archive.value should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_flag_status_archive', 'value', 'Column loan_pro_sandbox._flag_status_archive.value should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_flag_status_archive', 'value', 'Column loan_pro_sandbox._flag_status_archive.value should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_flag_status_archive', 'deleted', 'Column loan_pro_sandbox._flag_status_archive.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_flag_status_archive', 'deleted', 'integer', 'Column loan_pro_sandbox._flag_status_archive.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_flag_status_archive', 'deleted', 'Column loan_pro_sandbox._flag_status_archive.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_flag_status_archive', 'deleted', 'Column loan_pro_sandbox._flag_status_archive.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_flag_status_archive', 'entity_id', 'Column loan_pro_sandbox._flag_status_archive.entity_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_flag_status_archive', 'entity_id', 'integer', 'Column loan_pro_sandbox._flag_status_archive.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_flag_status_archive', 'entity_id', 'Column loan_pro_sandbox._flag_status_archive.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_flag_status_archive', 'entity_id', 'Column loan_pro_sandbox._flag_status_archive.entity_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_flag_status_archive', 'entity_type', 'Column loan_pro_sandbox._flag_status_archive.entity_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_flag_status_archive', 'entity_type', 'character(100)', 'Column loan_pro_sandbox._flag_status_archive.entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_flag_status_archive', 'entity_type', 'Column loan_pro_sandbox._flag_status_archive.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_flag_status_archive', 'entity_type', 'Column loan_pro_sandbox._flag_status_archive.entity_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_flag_status_archive', 'lastupdated', 'Column loan_pro_sandbox._flag_status_archive.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_flag_status_archive', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._flag_status_archive.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_flag_status_archive', 'lastupdated', 'Column loan_pro_sandbox._flag_status_archive.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_flag_status_archive', 'lastupdated', 'Column loan_pro_sandbox._flag_status_archive.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
