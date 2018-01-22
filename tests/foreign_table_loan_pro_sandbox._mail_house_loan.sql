SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_mail_house_loan',
    'Should have foreign table loan_pro_sandbox._mail_house_loan'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_mail_house_loan',
    'Table loan_pro_sandbox._mail_house_loan should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_mail_house_loan'::name, ARRAY[
    'loan_id'::name,
    'mail_house_tool_id'::name,
    'last_update'::name,
    'status'::name,
    'error_reason'::name,
    'loan_display_id'::name,
    'template_name'::name,
    'created'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'loan_id', 'Column loan_pro_sandbox._mail_house_loan.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'loan_id', 'integer', 'Column loan_pro_sandbox._mail_house_loan.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'loan_id', 'Column loan_pro_sandbox._mail_house_loan.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'loan_id', 'Column loan_pro_sandbox._mail_house_loan.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'mail_house_tool_id', 'Column loan_pro_sandbox._mail_house_loan.mail_house_tool_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'mail_house_tool_id', 'integer', 'Column loan_pro_sandbox._mail_house_loan.mail_house_tool_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'mail_house_tool_id', 'Column loan_pro_sandbox._mail_house_loan.mail_house_tool_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'mail_house_tool_id', 'Column loan_pro_sandbox._mail_house_loan.mail_house_tool_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'last_update', 'Column loan_pro_sandbox._mail_house_loan.last_update should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'last_update', 'timestamp with time zone', 'Column loan_pro_sandbox._mail_house_loan.last_update should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'last_update', 'Column loan_pro_sandbox._mail_house_loan.last_update should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'last_update', 'Column loan_pro_sandbox._mail_house_loan.last_update should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'status', 'Column loan_pro_sandbox._mail_house_loan.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'status', 'text', 'Column loan_pro_sandbox._mail_house_loan.status should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'status', 'Column loan_pro_sandbox._mail_house_loan.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'status', 'Column loan_pro_sandbox._mail_house_loan.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'error_reason', 'Column loan_pro_sandbox._mail_house_loan.error_reason should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'error_reason', 'text', 'Column loan_pro_sandbox._mail_house_loan.error_reason should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'error_reason', 'Column loan_pro_sandbox._mail_house_loan.error_reason should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'error_reason', 'Column loan_pro_sandbox._mail_house_loan.error_reason should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'loan_display_id', 'Column loan_pro_sandbox._mail_house_loan.loan_display_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'loan_display_id', 'character(25)', 'Column loan_pro_sandbox._mail_house_loan.loan_display_id should be type character(25)');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'loan_display_id', 'Column loan_pro_sandbox._mail_house_loan.loan_display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'loan_display_id', 'Column loan_pro_sandbox._mail_house_loan.loan_display_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'template_name', 'Column loan_pro_sandbox._mail_house_loan.template_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'template_name', 'text', 'Column loan_pro_sandbox._mail_house_loan.template_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'template_name', 'Column loan_pro_sandbox._mail_house_loan.template_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'template_name', 'Column loan_pro_sandbox._mail_house_loan.template_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'created', 'Column loan_pro_sandbox._mail_house_loan.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'created', 'text', 'Column loan_pro_sandbox._mail_house_loan.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'created', 'Column loan_pro_sandbox._mail_house_loan.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'created', 'Column loan_pro_sandbox._mail_house_loan.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_mail_house_loan', 'deleted', 'Column loan_pro_sandbox._mail_house_loan.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_mail_house_loan', 'deleted', 'integer', 'Column loan_pro_sandbox._mail_house_loan.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_mail_house_loan', 'deleted', 'Column loan_pro_sandbox._mail_house_loan.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_mail_house_loan', 'deleted', 'Column loan_pro_sandbox._mail_house_loan.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
