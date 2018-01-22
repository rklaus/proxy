SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_my_loans_setting_entity',
    'Should have foreign table loan_pro_sandbox._my_loans_setting_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_my_loans_setting_entity',
    'Table loan_pro_sandbox._my_loans_setting_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_my_loans_setting_entity'::name, ARRAY[
    'id'::name,
    'type'::name,
    'label'::name,
    'encrypted'::name,
    'value'::name,
    'group'::name,
    'created'::name,
    'modified'::name,
    'modified_by'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'id', 'Column loan_pro_sandbox._my_loans_setting_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'id', 'character(100)', 'Column loan_pro_sandbox._my_loans_setting_entity.id should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'id', 'Column loan_pro_sandbox._my_loans_setting_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'id', 'Column loan_pro_sandbox._my_loans_setting_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'type', 'Column loan_pro_sandbox._my_loans_setting_entity.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'type', 'character(15)', 'Column loan_pro_sandbox._my_loans_setting_entity.type should be type character(15)');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'type', 'Column loan_pro_sandbox._my_loans_setting_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'type', 'Column loan_pro_sandbox._my_loans_setting_entity.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'label', 'Column loan_pro_sandbox._my_loans_setting_entity.label should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'label', 'text', 'Column loan_pro_sandbox._my_loans_setting_entity.label should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'label', 'Column loan_pro_sandbox._my_loans_setting_entity.label should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'label', 'Column loan_pro_sandbox._my_loans_setting_entity.label should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'encrypted', 'Column loan_pro_sandbox._my_loans_setting_entity.encrypted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'encrypted', 'integer', 'Column loan_pro_sandbox._my_loans_setting_entity.encrypted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'encrypted', 'Column loan_pro_sandbox._my_loans_setting_entity.encrypted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'encrypted', 'Column loan_pro_sandbox._my_loans_setting_entity.encrypted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'value', 'Column loan_pro_sandbox._my_loans_setting_entity.value should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'value', 'text', 'Column loan_pro_sandbox._my_loans_setting_entity.value should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'value', 'Column loan_pro_sandbox._my_loans_setting_entity.value should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'value', 'Column loan_pro_sandbox._my_loans_setting_entity.value should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'group', 'Column loan_pro_sandbox._my_loans_setting_entity."group" should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'group', 'character(50)', 'Column loan_pro_sandbox._my_loans_setting_entity."group" should be type character(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'group', 'Column loan_pro_sandbox._my_loans_setting_entity."group" should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'group', 'Column loan_pro_sandbox._my_loans_setting_entity."group" should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'created', 'Column loan_pro_sandbox._my_loans_setting_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'created', 'text', 'Column loan_pro_sandbox._my_loans_setting_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'created', 'Column loan_pro_sandbox._my_loans_setting_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'created', 'Column loan_pro_sandbox._my_loans_setting_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'modified', 'Column loan_pro_sandbox._my_loans_setting_entity.modified should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'modified', 'text', 'Column loan_pro_sandbox._my_loans_setting_entity.modified should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'modified', 'Column loan_pro_sandbox._my_loans_setting_entity.modified should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'modified', 'Column loan_pro_sandbox._my_loans_setting_entity.modified should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'modified_by', 'Column loan_pro_sandbox._my_loans_setting_entity.modified_by should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'modified_by', 'integer', 'Column loan_pro_sandbox._my_loans_setting_entity.modified_by should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'modified_by', 'Column loan_pro_sandbox._my_loans_setting_entity.modified_by should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'modified_by', 'Column loan_pro_sandbox._my_loans_setting_entity.modified_by should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_my_loans_setting_entity', 'deleted', 'Column loan_pro_sandbox._my_loans_setting_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_my_loans_setting_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._my_loans_setting_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_my_loans_setting_entity', 'deleted', 'Column loan_pro_sandbox._my_loans_setting_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_my_loans_setting_entity', 'deleted', 'Column loan_pro_sandbox._my_loans_setting_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
