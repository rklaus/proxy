SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(75);

SELECT has_foreign_table(
    'edw_new_fdw', 'loaninformation_dw',
    'Should have foreign table edw_new_fdw.loaninformation_dw'
);

SELECT hasnt_pk(
    'edw_new_fdw', 'loaninformation_dw',
    'Table edw_new_fdw.loaninformation_dw should have a primary key'
);

SELECT columns_are('edw_new_fdw'::name, 'loaninformation_dw'::name, ARRAY[
    'id'::name,
    'ssn'::name,
    'ssn_encrypted'::name,
    'client_id'::name,
    'lms_name'::name,
    'lms_id'::name,
    'status'::name,
    'is_test'::name,
    'apr'::name,
    'amount_principal'::name,
    'amount_revenue'::name,
    'payoff_effective_date'::name,
    'payoff_entered_date'::name,
    'payoff_payment_method'::name,
    'created_at'::name,
    'updated_at'::name,
    'state'::name,
    'payoff_cleared_date'::name
]);

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'id', 'Column edw_new_fdw.loaninformation_dw.id should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'id', 'integer', 'Column edw_new_fdw.loaninformation_dw.id should be type integer');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'id', 'Column edw_new_fdw.loaninformation_dw.id should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'id', 'Column edw_new_fdw.loaninformation_dw.id should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'ssn', 'Column edw_new_fdw.loaninformation_dw.ssn should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'ssn', 'text', 'Column edw_new_fdw.loaninformation_dw.ssn should be type text');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'ssn', 'Column edw_new_fdw.loaninformation_dw.ssn should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'ssn', 'Column edw_new_fdw.loaninformation_dw.ssn should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'ssn_encrypted', 'Column edw_new_fdw.loaninformation_dw.ssn_encrypted should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'ssn_encrypted', 'text', 'Column edw_new_fdw.loaninformation_dw.ssn_encrypted should be type text');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'ssn_encrypted', 'Column edw_new_fdw.loaninformation_dw.ssn_encrypted should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'ssn_encrypted', 'Column edw_new_fdw.loaninformation_dw.ssn_encrypted should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'client_id', 'Column edw_new_fdw.loaninformation_dw.client_id should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'client_id', 'integer', 'Column edw_new_fdw.loaninformation_dw.client_id should be type integer');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'client_id', 'Column edw_new_fdw.loaninformation_dw.client_id should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'client_id', 'Column edw_new_fdw.loaninformation_dw.client_id should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'lms_name', 'Column edw_new_fdw.loaninformation_dw.lms_name should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'lms_name', 'character varying(10)', 'Column edw_new_fdw.loaninformation_dw.lms_name should be type character varying(10)');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'lms_name', 'Column edw_new_fdw.loaninformation_dw.lms_name should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'lms_name', 'Column edw_new_fdw.loaninformation_dw.lms_name should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'lms_id', 'Column edw_new_fdw.loaninformation_dw.lms_id should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'lms_id', 'integer', 'Column edw_new_fdw.loaninformation_dw.lms_id should be type integer');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'lms_id', 'Column edw_new_fdw.loaninformation_dw.lms_id should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'lms_id', 'Column edw_new_fdw.loaninformation_dw.lms_id should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'status', 'Column edw_new_fdw.loaninformation_dw.status should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'status', 'character varying(64)', 'Column edw_new_fdw.loaninformation_dw.status should be type character varying(64)');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'status', 'Column edw_new_fdw.loaninformation_dw.status should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'status', 'Column edw_new_fdw.loaninformation_dw.status should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'is_test', 'Column edw_new_fdw.loaninformation_dw.is_test should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'is_test', 'boolean', 'Column edw_new_fdw.loaninformation_dw.is_test should be type boolean');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'is_test', 'Column edw_new_fdw.loaninformation_dw.is_test should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'is_test', 'Column edw_new_fdw.loaninformation_dw.is_test should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'apr', 'Column edw_new_fdw.loaninformation_dw.apr should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'apr', 'numeric(10,2)', 'Column edw_new_fdw.loaninformation_dw.apr should be type numeric(10,2)');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'apr', 'Column edw_new_fdw.loaninformation_dw.apr should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'apr', 'Column edw_new_fdw.loaninformation_dw.apr should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'amount_principal', 'Column edw_new_fdw.loaninformation_dw.amount_principal should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'amount_principal', 'numeric(10,2)', 'Column edw_new_fdw.loaninformation_dw.amount_principal should be type numeric(10,2)');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'amount_principal', 'Column edw_new_fdw.loaninformation_dw.amount_principal should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'amount_principal', 'Column edw_new_fdw.loaninformation_dw.amount_principal should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'amount_revenue', 'Column edw_new_fdw.loaninformation_dw.amount_revenue should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'amount_revenue', 'numeric(10,2)', 'Column edw_new_fdw.loaninformation_dw.amount_revenue should be type numeric(10,2)');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'amount_revenue', 'Column edw_new_fdw.loaninformation_dw.amount_revenue should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'amount_revenue', 'Column edw_new_fdw.loaninformation_dw.amount_revenue should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'payoff_effective_date', 'Column edw_new_fdw.loaninformation_dw.payoff_effective_date should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'payoff_effective_date', 'date', 'Column edw_new_fdw.loaninformation_dw.payoff_effective_date should be type date');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'payoff_effective_date', 'Column edw_new_fdw.loaninformation_dw.payoff_effective_date should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'payoff_effective_date', 'Column edw_new_fdw.loaninformation_dw.payoff_effective_date should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'payoff_entered_date', 'Column edw_new_fdw.loaninformation_dw.payoff_entered_date should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'payoff_entered_date', 'date', 'Column edw_new_fdw.loaninformation_dw.payoff_entered_date should be type date');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'payoff_entered_date', 'Column edw_new_fdw.loaninformation_dw.payoff_entered_date should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'payoff_entered_date', 'Column edw_new_fdw.loaninformation_dw.payoff_entered_date should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'payoff_payment_method', 'Column edw_new_fdw.loaninformation_dw.payoff_payment_method should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'payoff_payment_method', 'character varying(32)', 'Column edw_new_fdw.loaninformation_dw.payoff_payment_method should be type character varying(32)');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'payoff_payment_method', 'Column edw_new_fdw.loaninformation_dw.payoff_payment_method should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'payoff_payment_method', 'Column edw_new_fdw.loaninformation_dw.payoff_payment_method should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'created_at', 'Column edw_new_fdw.loaninformation_dw.created_at should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'created_at', 'timestamp with time zone', 'Column edw_new_fdw.loaninformation_dw.created_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'created_at', 'Column edw_new_fdw.loaninformation_dw.created_at should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'created_at', 'Column edw_new_fdw.loaninformation_dw.created_at should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'updated_at', 'Column edw_new_fdw.loaninformation_dw.updated_at should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'updated_at', 'timestamp with time zone', 'Column edw_new_fdw.loaninformation_dw.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'updated_at', 'Column edw_new_fdw.loaninformation_dw.updated_at should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'updated_at', 'Column edw_new_fdw.loaninformation_dw.updated_at should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'state', 'Column edw_new_fdw.loaninformation_dw.state should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'state', 'character varying(2)', 'Column edw_new_fdw.loaninformation_dw.state should be type character varying(2)');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'state', 'Column edw_new_fdw.loaninformation_dw.state should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'state', 'Column edw_new_fdw.loaninformation_dw.state should not  have a default');

SELECT has_column(       'edw_new_fdw', 'loaninformation_dw', 'payoff_cleared_date', 'Column edw_new_fdw.loaninformation_dw.payoff_cleared_date should exist');
SELECT col_type_is(      'edw_new_fdw', 'loaninformation_dw', 'payoff_cleared_date', 'date', 'Column edw_new_fdw.loaninformation_dw.payoff_cleared_date should be type date');
SELECT col_is_null(      'edw_new_fdw', 'loaninformation_dw', 'payoff_cleared_date', 'Column edw_new_fdw.loaninformation_dw.payoff_cleared_date should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'loaninformation_dw', 'payoff_cleared_date', 'Column edw_new_fdw.loaninformation_dw.payoff_cleared_date should not  have a default');

SELECT * FROM finish();
ROLLBACK;
