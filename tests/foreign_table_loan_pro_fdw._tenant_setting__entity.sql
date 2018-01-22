SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_fdw', '_tenant_setting__entity',
    'Should have foreign table loan_pro_fdw._tenant_setting__entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_tenant_setting__entity',
    'Table loan_pro_fdw._tenant_setting__entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_tenant_setting__entity'::name, ARRAY[
    'id'::name,
    'type'::name,
    'label'::name,
    'document'::name,
    'encrypted'::name,
    'sequence'::name,
    'value'::name,
    'group'::name,
    'created'::name,
    'modified'::name,
    'modified_by'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'id', 'Column loan_pro_fdw._tenant_setting__entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'id', 'character(100)', 'Column loan_pro_fdw._tenant_setting__entity.id should be type character(100)');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'id', 'Column loan_pro_fdw._tenant_setting__entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'id', 'Column loan_pro_fdw._tenant_setting__entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'type', 'Column loan_pro_fdw._tenant_setting__entity.type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'type', 'character(15)', 'Column loan_pro_fdw._tenant_setting__entity.type should be type character(15)');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'type', 'Column loan_pro_fdw._tenant_setting__entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'type', 'Column loan_pro_fdw._tenant_setting__entity.type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'label', 'Column loan_pro_fdw._tenant_setting__entity.label should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'label', 'text', 'Column loan_pro_fdw._tenant_setting__entity.label should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'label', 'Column loan_pro_fdw._tenant_setting__entity.label should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'label', 'Column loan_pro_fdw._tenant_setting__entity.label should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'document', 'Column loan_pro_fdw._tenant_setting__entity.document should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'document', 'integer', 'Column loan_pro_fdw._tenant_setting__entity.document should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'document', 'Column loan_pro_fdw._tenant_setting__entity.document should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'document', 'Column loan_pro_fdw._tenant_setting__entity.document should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'encrypted', 'Column loan_pro_fdw._tenant_setting__entity.encrypted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'encrypted', 'integer', 'Column loan_pro_fdw._tenant_setting__entity.encrypted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'encrypted', 'Column loan_pro_fdw._tenant_setting__entity.encrypted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'encrypted', 'Column loan_pro_fdw._tenant_setting__entity.encrypted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'sequence', 'Column loan_pro_fdw._tenant_setting__entity.sequence should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'sequence', 'integer', 'Column loan_pro_fdw._tenant_setting__entity.sequence should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'sequence', 'Column loan_pro_fdw._tenant_setting__entity.sequence should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'sequence', 'Column loan_pro_fdw._tenant_setting__entity.sequence should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'value', 'Column loan_pro_fdw._tenant_setting__entity.value should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'value', 'text', 'Column loan_pro_fdw._tenant_setting__entity.value should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'value', 'Column loan_pro_fdw._tenant_setting__entity.value should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'value', 'Column loan_pro_fdw._tenant_setting__entity.value should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'group', 'Column loan_pro_fdw._tenant_setting__entity."group" should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'group', 'character(50)', 'Column loan_pro_fdw._tenant_setting__entity."group" should be type character(50)');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'group', 'Column loan_pro_fdw._tenant_setting__entity."group" should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'group', 'Column loan_pro_fdw._tenant_setting__entity."group" should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'created', 'Column loan_pro_fdw._tenant_setting__entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'created', 'text', 'Column loan_pro_fdw._tenant_setting__entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'created', 'Column loan_pro_fdw._tenant_setting__entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'created', 'Column loan_pro_fdw._tenant_setting__entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'modified', 'Column loan_pro_fdw._tenant_setting__entity.modified should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'modified', 'text', 'Column loan_pro_fdw._tenant_setting__entity.modified should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'modified', 'Column loan_pro_fdw._tenant_setting__entity.modified should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'modified', 'Column loan_pro_fdw._tenant_setting__entity.modified should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'modified_by', 'Column loan_pro_fdw._tenant_setting__entity.modified_by should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'modified_by', 'integer', 'Column loan_pro_fdw._tenant_setting__entity.modified_by should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'modified_by', 'Column loan_pro_fdw._tenant_setting__entity.modified_by should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'modified_by', 'Column loan_pro_fdw._tenant_setting__entity.modified_by should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_setting__entity', 'deleted', 'Column loan_pro_fdw._tenant_setting__entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_setting__entity', 'deleted', 'integer', 'Column loan_pro_fdw._tenant_setting__entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_setting__entity', 'deleted', 'Column loan_pro_fdw._tenant_setting__entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_setting__entity', 'deleted', 'Column loan_pro_fdw._tenant_setting__entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
