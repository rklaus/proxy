SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'loan_pro_fdw', '_email_tool__loan',
    'Should have foreign table loan_pro_fdw._email_tool__loan'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_email_tool__loan',
    'Table loan_pro_fdw._email_tool__loan should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_email_tool__loan'::name, ARRAY[
    'email_tool_id'::name,
    'loan_id'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_email_tool__loan', 'email_tool_id', 'Column loan_pro_fdw._email_tool__loan.email_tool_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_email_tool__loan', 'email_tool_id', 'integer', 'Column loan_pro_fdw._email_tool__loan.email_tool_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_email_tool__loan', 'email_tool_id', 'Column loan_pro_fdw._email_tool__loan.email_tool_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_email_tool__loan', 'email_tool_id', 'Column loan_pro_fdw._email_tool__loan.email_tool_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_email_tool__loan', 'loan_id', 'Column loan_pro_fdw._email_tool__loan.loan_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_email_tool__loan', 'loan_id', 'integer', 'Column loan_pro_fdw._email_tool__loan.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_email_tool__loan', 'loan_id', 'Column loan_pro_fdw._email_tool__loan.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_email_tool__loan', 'loan_id', 'Column loan_pro_fdw._email_tool__loan.loan_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_email_tool__loan', 'lastupdated', 'Column loan_pro_fdw._email_tool__loan.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_email_tool__loan', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._email_tool__loan.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_email_tool__loan', 'lastupdated', 'Column loan_pro_fdw._email_tool__loan.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_email_tool__loan', 'lastupdated', 'Column loan_pro_fdw._email_tool__loan.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
