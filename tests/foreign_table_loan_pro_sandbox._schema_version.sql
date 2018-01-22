SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_schema_version',
    'Should have foreign table loan_pro_sandbox._schema_version'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_schema_version',
    'Table loan_pro_sandbox._schema_version should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_schema_version'::name, ARRAY[
    'version_rank'::name,
    'installed_rank'::name,
    'version'::name,
    'description'::name,
    'type'::name,
    'script'::name,
    'checksum'::name,
    'installed_by'::name,
    'installed_on'::name,
    'execution_time'::name,
    'success'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'version_rank', 'Column loan_pro_sandbox._schema_version.version_rank should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'version_rank', 'integer', 'Column loan_pro_sandbox._schema_version.version_rank should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'version_rank', 'Column loan_pro_sandbox._schema_version.version_rank should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'version_rank', 'Column loan_pro_sandbox._schema_version.version_rank should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'installed_rank', 'Column loan_pro_sandbox._schema_version.installed_rank should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'installed_rank', 'integer', 'Column loan_pro_sandbox._schema_version.installed_rank should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'installed_rank', 'Column loan_pro_sandbox._schema_version.installed_rank should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'installed_rank', 'Column loan_pro_sandbox._schema_version.installed_rank should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'version', 'Column loan_pro_sandbox._schema_version.version should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'version', 'character varying(50)', 'Column loan_pro_sandbox._schema_version.version should be type character varying(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'version', 'Column loan_pro_sandbox._schema_version.version should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'version', 'Column loan_pro_sandbox._schema_version.version should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'description', 'Column loan_pro_sandbox._schema_version.description should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'description', 'text', 'Column loan_pro_sandbox._schema_version.description should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'description', 'Column loan_pro_sandbox._schema_version.description should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'description', 'Column loan_pro_sandbox._schema_version.description should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'type', 'Column loan_pro_sandbox._schema_version.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'type', 'character varying(20)', 'Column loan_pro_sandbox._schema_version.type should be type character varying(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'type', 'Column loan_pro_sandbox._schema_version.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'type', 'Column loan_pro_sandbox._schema_version.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'script', 'Column loan_pro_sandbox._schema_version.script should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'script', 'text', 'Column loan_pro_sandbox._schema_version.script should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'script', 'Column loan_pro_sandbox._schema_version.script should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'script', 'Column loan_pro_sandbox._schema_version.script should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'checksum', 'Column loan_pro_sandbox._schema_version.checksum should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'checksum', 'integer', 'Column loan_pro_sandbox._schema_version.checksum should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'checksum', 'Column loan_pro_sandbox._schema_version.checksum should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'checksum', 'Column loan_pro_sandbox._schema_version.checksum should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'installed_by', 'Column loan_pro_sandbox._schema_version.installed_by should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'installed_by', 'character varying(100)', 'Column loan_pro_sandbox._schema_version.installed_by should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'installed_by', 'Column loan_pro_sandbox._schema_version.installed_by should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'installed_by', 'Column loan_pro_sandbox._schema_version.installed_by should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'installed_on', 'Column loan_pro_sandbox._schema_version.installed_on should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'installed_on', 'text', 'Column loan_pro_sandbox._schema_version.installed_on should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'installed_on', 'Column loan_pro_sandbox._schema_version.installed_on should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'installed_on', 'Column loan_pro_sandbox._schema_version.installed_on should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'execution_time', 'Column loan_pro_sandbox._schema_version.execution_time should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'execution_time', 'integer', 'Column loan_pro_sandbox._schema_version.execution_time should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'execution_time', 'Column loan_pro_sandbox._schema_version.execution_time should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'execution_time', 'Column loan_pro_sandbox._schema_version.execution_time should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_schema_version', 'success', 'Column loan_pro_sandbox._schema_version.success should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_schema_version', 'success', 'integer', 'Column loan_pro_sandbox._schema_version.success should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_schema_version', 'success', 'Column loan_pro_sandbox._schema_version.success should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_schema_version', 'success', 'Column loan_pro_sandbox._schema_version.success should not  have a default');

SELECT * FROM finish();
ROLLBACK;
