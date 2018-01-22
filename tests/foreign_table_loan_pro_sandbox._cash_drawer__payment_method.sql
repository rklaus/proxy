SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_cash_drawer__payment_method',
    'Should have foreign table loan_pro_sandbox._cash_drawer__payment_method'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_cash_drawer__payment_method',
    'Table loan_pro_sandbox._cash_drawer__payment_method should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_cash_drawer__payment_method'::name, ARRAY[
    'cash_drawer_id'::name,
    'payment_method_id'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer__payment_method', 'cash_drawer_id', 'Column loan_pro_sandbox._cash_drawer__payment_method.cash_drawer_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'cash_drawer_id', 'integer', 'Column loan_pro_sandbox._cash_drawer__payment_method.cash_drawer_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'cash_drawer_id', 'Column loan_pro_sandbox._cash_drawer__payment_method.cash_drawer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer__payment_method', 'cash_drawer_id', 'Column loan_pro_sandbox._cash_drawer__payment_method.cash_drawer_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer__payment_method', 'payment_method_id', 'Column loan_pro_sandbox._cash_drawer__payment_method.payment_method_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'payment_method_id', 'integer', 'Column loan_pro_sandbox._cash_drawer__payment_method.payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'payment_method_id', 'Column loan_pro_sandbox._cash_drawer__payment_method.payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer__payment_method', 'payment_method_id', 'Column loan_pro_sandbox._cash_drawer__payment_method.payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer__payment_method', 'created', 'Column loan_pro_sandbox._cash_drawer__payment_method.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'created', 'text', 'Column loan_pro_sandbox._cash_drawer__payment_method.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'created', 'Column loan_pro_sandbox._cash_drawer__payment_method.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer__payment_method', 'created', 'Column loan_pro_sandbox._cash_drawer__payment_method.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer__payment_method', 'lastupdated', 'Column loan_pro_sandbox._cash_drawer__payment_method.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._cash_drawer__payment_method.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'lastupdated', 'Column loan_pro_sandbox._cash_drawer__payment_method.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer__payment_method', 'lastupdated', 'Column loan_pro_sandbox._cash_drawer__payment_method.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer__payment_method', 'deleted', 'Column loan_pro_sandbox._cash_drawer__payment_method.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'deleted', 'integer', 'Column loan_pro_sandbox._cash_drawer__payment_method.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer__payment_method', 'deleted', 'Column loan_pro_sandbox._cash_drawer__payment_method.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer__payment_method', 'deleted', 'Column loan_pro_sandbox._cash_drawer__payment_method.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
