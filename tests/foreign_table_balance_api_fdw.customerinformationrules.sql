SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'balance_api_fdw', 'customerinformationrules',
    'Should have foreign table balance_api_fdw.customerinformationrules'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'customerinformationrules',
    'Table balance_api_fdw.customerinformationrules should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'customerinformationrules'::name, ARRAY[
    'id'::name,
    'type'::name,
    'rule'::name,
    'label'::name,
    'created_at'::name,
    'updated_at'::name
]);

SELECT has_column(       'balance_api_fdw', 'customerinformationrules', 'id', 'Column balance_api_fdw.customerinformationrules.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformationrules', 'id', 'integer', 'Column balance_api_fdw.customerinformationrules.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'customerinformationrules', 'id', 'Column balance_api_fdw.customerinformationrules.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformationrules', 'id', 'Column balance_api_fdw.customerinformationrules.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformationrules', 'type', 'Column balance_api_fdw.customerinformationrules.type should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformationrules', 'type', 'character varying(10)', 'Column balance_api_fdw.customerinformationrules.type should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformationrules', 'type', 'Column balance_api_fdw.customerinformationrules.type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformationrules', 'type', 'Column balance_api_fdw.customerinformationrules.type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformationrules', 'rule', 'Column balance_api_fdw.customerinformationrules.rule should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformationrules', 'rule', 'jsonb', 'Column balance_api_fdw.customerinformationrules.rule should be type jsonb');
SELECT col_is_null(      'balance_api_fdw', 'customerinformationrules', 'rule', 'Column balance_api_fdw.customerinformationrules.rule should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformationrules', 'rule', 'Column balance_api_fdw.customerinformationrules.rule should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformationrules', 'label', 'Column balance_api_fdw.customerinformationrules.label should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformationrules', 'label', 'character varying(25)', 'Column balance_api_fdw.customerinformationrules.label should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'customerinformationrules', 'label', 'Column balance_api_fdw.customerinformationrules.label should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformationrules', 'label', 'Column balance_api_fdw.customerinformationrules.label should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformationrules', 'created_at', 'Column balance_api_fdw.customerinformationrules.created_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformationrules', 'created_at', 'timestamp with time zone', 'Column balance_api_fdw.customerinformationrules.created_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'customerinformationrules', 'created_at', 'Column balance_api_fdw.customerinformationrules.created_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformationrules', 'created_at', 'Column balance_api_fdw.customerinformationrules.created_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'customerinformationrules', 'updated_at', 'Column balance_api_fdw.customerinformationrules.updated_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'customerinformationrules', 'updated_at', 'timestamp with time zone', 'Column balance_api_fdw.customerinformationrules.updated_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'customerinformationrules', 'updated_at', 'Column balance_api_fdw.customerinformationrules.updated_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'customerinformationrules', 'updated_at', 'Column balance_api_fdw.customerinformationrules.updated_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
