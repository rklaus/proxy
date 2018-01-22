SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'edw_new_fdw', 'customerinformation_dw',
    'Should have foreign table edw_new_fdw.customerinformation_dw'
);

SELECT hasnt_pk(
    'edw_new_fdw', 'customerinformation_dw',
    'Table edw_new_fdw.customerinformation_dw should have a primary key'
);

SELECT columns_are('edw_new_fdw'::name, 'customerinformation_dw'::name, ARRAY[
    'id'::name,
    'ssn_encrypted'::name,
    'last_email'::name,
    'last_pay_frequency'::name,
    'last_pay_amount'::name,
    'is_test'::name,
    'current_pay_frequency'::name,
    'current_pay_amount'::name,
    'state'::name,
    'created_at'::name,
    'updated_at'::name,
    'lms_name'::name,
    'lms_id'::name
]);

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'id', 'Column edw_new_fdw.customerinformation_dw.id should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'id', 'integer', 'Column edw_new_fdw.customerinformation_dw.id should be type integer');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'id', 'Column edw_new_fdw.customerinformation_dw.id should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'id', 'Column edw_new_fdw.customerinformation_dw.id should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'ssn_encrypted', 'Column edw_new_fdw.customerinformation_dw.ssn_encrypted should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'ssn_encrypted', 'text', 'Column edw_new_fdw.customerinformation_dw.ssn_encrypted should be type text');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'ssn_encrypted', 'Column edw_new_fdw.customerinformation_dw.ssn_encrypted should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'ssn_encrypted', 'Column edw_new_fdw.customerinformation_dw.ssn_encrypted should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'last_email', 'Column edw_new_fdw.customerinformation_dw.last_email should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'last_email', 'character varying(256)', 'Column edw_new_fdw.customerinformation_dw.last_email should be type character varying(256)');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'last_email', 'Column edw_new_fdw.customerinformation_dw.last_email should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'last_email', 'Column edw_new_fdw.customerinformation_dw.last_email should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'last_pay_frequency', 'Column edw_new_fdw.customerinformation_dw.last_pay_frequency should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'last_pay_frequency', 'character varying(5)', 'Column edw_new_fdw.customerinformation_dw.last_pay_frequency should be type character varying(5)');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'last_pay_frequency', 'Column edw_new_fdw.customerinformation_dw.last_pay_frequency should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'last_pay_frequency', 'Column edw_new_fdw.customerinformation_dw.last_pay_frequency should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'last_pay_amount', 'Column edw_new_fdw.customerinformation_dw.last_pay_amount should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'last_pay_amount', 'numeric(10,2)', 'Column edw_new_fdw.customerinformation_dw.last_pay_amount should be type numeric(10,2)');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'last_pay_amount', 'Column edw_new_fdw.customerinformation_dw.last_pay_amount should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'last_pay_amount', 'Column edw_new_fdw.customerinformation_dw.last_pay_amount should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'is_test', 'Column edw_new_fdw.customerinformation_dw.is_test should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'is_test', 'boolean', 'Column edw_new_fdw.customerinformation_dw.is_test should be type boolean');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'is_test', 'Column edw_new_fdw.customerinformation_dw.is_test should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'is_test', 'Column edw_new_fdw.customerinformation_dw.is_test should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'current_pay_frequency', 'Column edw_new_fdw.customerinformation_dw.current_pay_frequency should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'current_pay_frequency', 'character varying(5)', 'Column edw_new_fdw.customerinformation_dw.current_pay_frequency should be type character varying(5)');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'current_pay_frequency', 'Column edw_new_fdw.customerinformation_dw.current_pay_frequency should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'current_pay_frequency', 'Column edw_new_fdw.customerinformation_dw.current_pay_frequency should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'current_pay_amount', 'Column edw_new_fdw.customerinformation_dw.current_pay_amount should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'current_pay_amount', 'numeric(10,2)', 'Column edw_new_fdw.customerinformation_dw.current_pay_amount should be type numeric(10,2)');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'current_pay_amount', 'Column edw_new_fdw.customerinformation_dw.current_pay_amount should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'current_pay_amount', 'Column edw_new_fdw.customerinformation_dw.current_pay_amount should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'state', 'Column edw_new_fdw.customerinformation_dw.state should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'state', 'text', 'Column edw_new_fdw.customerinformation_dw.state should be type text');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'state', 'Column edw_new_fdw.customerinformation_dw.state should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'state', 'Column edw_new_fdw.customerinformation_dw.state should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'created_at', 'Column edw_new_fdw.customerinformation_dw.created_at should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'created_at', 'timestamp with time zone', 'Column edw_new_fdw.customerinformation_dw.created_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'created_at', 'Column edw_new_fdw.customerinformation_dw.created_at should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'created_at', 'Column edw_new_fdw.customerinformation_dw.created_at should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'updated_at', 'Column edw_new_fdw.customerinformation_dw.updated_at should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'updated_at', 'timestamp with time zone', 'Column edw_new_fdw.customerinformation_dw.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'updated_at', 'Column edw_new_fdw.customerinformation_dw.updated_at should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'updated_at', 'Column edw_new_fdw.customerinformation_dw.updated_at should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'lms_name', 'Column edw_new_fdw.customerinformation_dw.lms_name should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'lms_name', 'text', 'Column edw_new_fdw.customerinformation_dw.lms_name should be type text');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'lms_name', 'Column edw_new_fdw.customerinformation_dw.lms_name should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'lms_name', 'Column edw_new_fdw.customerinformation_dw.lms_name should not  have a default');

SELECT has_column(       'edw_new_fdw', 'customerinformation_dw', 'lms_id', 'Column edw_new_fdw.customerinformation_dw.lms_id should exist');
SELECT col_type_is(      'edw_new_fdw', 'customerinformation_dw', 'lms_id', 'integer', 'Column edw_new_fdw.customerinformation_dw.lms_id should be type integer');
SELECT col_is_null(      'edw_new_fdw', 'customerinformation_dw', 'lms_id', 'Column edw_new_fdw.customerinformation_dw.lms_id should allow NULL');
SELECT col_hasnt_default('edw_new_fdw', 'customerinformation_dw', 'lms_id', 'Column edw_new_fdw.customerinformation_dw.lms_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
