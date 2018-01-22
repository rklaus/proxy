SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(75);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_data_import_entity',
    'Should have foreign table loan_pro_sandbox._data_import_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_data_import_entity',
    'Table loan_pro_sandbox._data_import_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_data_import_entity'::name, ARRAY[
    'id'::name,
    'entity'::name,
    'status'::name,
    'description'::name,
    'file_name'::name,
    'reverse_file_name'::name,
    'stats_new'::name,
    'stats_upd'::name,
    'stats_del'::name,
    'stats_err'::name,
    'by_pass_warnings'::name,
    'skip_calc'::name,
    'errors'::name,
    'modified'::name,
    'created'::name,
    'created_by'::name,
    'deleted'::name,
    'charged'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'id', 'Column loan_pro_sandbox._data_import_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'id', 'integer', 'Column loan_pro_sandbox._data_import_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'id', 'Column loan_pro_sandbox._data_import_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'id', 'Column loan_pro_sandbox._data_import_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'entity', 'Column loan_pro_sandbox._data_import_entity.entity should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'entity', 'text', 'Column loan_pro_sandbox._data_import_entity.entity should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'entity', 'Column loan_pro_sandbox._data_import_entity.entity should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'entity', 'Column loan_pro_sandbox._data_import_entity.entity should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'status', 'Column loan_pro_sandbox._data_import_entity.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'status', 'character varying(35)', 'Column loan_pro_sandbox._data_import_entity.status should be type character varying(35)');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'status', 'Column loan_pro_sandbox._data_import_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'status', 'Column loan_pro_sandbox._data_import_entity.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'description', 'Column loan_pro_sandbox._data_import_entity.description should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'description', 'character varying(100)', 'Column loan_pro_sandbox._data_import_entity.description should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'description', 'Column loan_pro_sandbox._data_import_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'description', 'Column loan_pro_sandbox._data_import_entity.description should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'file_name', 'Column loan_pro_sandbox._data_import_entity.file_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'file_name', 'text', 'Column loan_pro_sandbox._data_import_entity.file_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'file_name', 'Column loan_pro_sandbox._data_import_entity.file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'file_name', 'Column loan_pro_sandbox._data_import_entity.file_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'reverse_file_name', 'Column loan_pro_sandbox._data_import_entity.reverse_file_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'reverse_file_name', 'character varying(100)', 'Column loan_pro_sandbox._data_import_entity.reverse_file_name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'reverse_file_name', 'Column loan_pro_sandbox._data_import_entity.reverse_file_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'reverse_file_name', 'Column loan_pro_sandbox._data_import_entity.reverse_file_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'stats_new', 'Column loan_pro_sandbox._data_import_entity.stats_new should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'stats_new', 'integer', 'Column loan_pro_sandbox._data_import_entity.stats_new should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'stats_new', 'Column loan_pro_sandbox._data_import_entity.stats_new should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'stats_new', 'Column loan_pro_sandbox._data_import_entity.stats_new should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'stats_upd', 'Column loan_pro_sandbox._data_import_entity.stats_upd should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'stats_upd', 'integer', 'Column loan_pro_sandbox._data_import_entity.stats_upd should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'stats_upd', 'Column loan_pro_sandbox._data_import_entity.stats_upd should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'stats_upd', 'Column loan_pro_sandbox._data_import_entity.stats_upd should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'stats_del', 'Column loan_pro_sandbox._data_import_entity.stats_del should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'stats_del', 'integer', 'Column loan_pro_sandbox._data_import_entity.stats_del should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'stats_del', 'Column loan_pro_sandbox._data_import_entity.stats_del should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'stats_del', 'Column loan_pro_sandbox._data_import_entity.stats_del should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'stats_err', 'Column loan_pro_sandbox._data_import_entity.stats_err should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'stats_err', 'integer', 'Column loan_pro_sandbox._data_import_entity.stats_err should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'stats_err', 'Column loan_pro_sandbox._data_import_entity.stats_err should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'stats_err', 'Column loan_pro_sandbox._data_import_entity.stats_err should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'by_pass_warnings', 'Column loan_pro_sandbox._data_import_entity.by_pass_warnings should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'by_pass_warnings', 'integer', 'Column loan_pro_sandbox._data_import_entity.by_pass_warnings should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'by_pass_warnings', 'Column loan_pro_sandbox._data_import_entity.by_pass_warnings should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'by_pass_warnings', 'Column loan_pro_sandbox._data_import_entity.by_pass_warnings should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'skip_calc', 'Column loan_pro_sandbox._data_import_entity.skip_calc should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'skip_calc', 'integer', 'Column loan_pro_sandbox._data_import_entity.skip_calc should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'skip_calc', 'Column loan_pro_sandbox._data_import_entity.skip_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'skip_calc', 'Column loan_pro_sandbox._data_import_entity.skip_calc should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'errors', 'Column loan_pro_sandbox._data_import_entity.errors should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'errors', 'text', 'Column loan_pro_sandbox._data_import_entity.errors should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'errors', 'Column loan_pro_sandbox._data_import_entity.errors should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'errors', 'Column loan_pro_sandbox._data_import_entity.errors should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'modified', 'Column loan_pro_sandbox._data_import_entity.modified should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'modified', 'text', 'Column loan_pro_sandbox._data_import_entity.modified should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'modified', 'Column loan_pro_sandbox._data_import_entity.modified should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'modified', 'Column loan_pro_sandbox._data_import_entity.modified should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'created', 'Column loan_pro_sandbox._data_import_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'created', 'text', 'Column loan_pro_sandbox._data_import_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'created', 'Column loan_pro_sandbox._data_import_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'created', 'Column loan_pro_sandbox._data_import_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'created_by', 'Column loan_pro_sandbox._data_import_entity.created_by should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'created_by', 'integer', 'Column loan_pro_sandbox._data_import_entity.created_by should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'created_by', 'Column loan_pro_sandbox._data_import_entity.created_by should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'created_by', 'Column loan_pro_sandbox._data_import_entity.created_by should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'deleted', 'Column loan_pro_sandbox._data_import_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._data_import_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'deleted', 'Column loan_pro_sandbox._data_import_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'deleted', 'Column loan_pro_sandbox._data_import_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_data_import_entity', 'charged', 'Column loan_pro_sandbox._data_import_entity.charged should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_data_import_entity', 'charged', 'integer', 'Column loan_pro_sandbox._data_import_entity.charged should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_data_import_entity', 'charged', 'Column loan_pro_sandbox._data_import_entity.charged should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_data_import_entity', 'charged', 'Column loan_pro_sandbox._data_import_entity.charged should not  have a default');

SELECT * FROM finish();
ROLLBACK;
