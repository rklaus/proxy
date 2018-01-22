SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'balance_api_fdw', 'documentgroups',
    'Should have foreign table balance_api_fdw.documentgroups'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'documentgroups',
    'Table balance_api_fdw.documentgroups should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'documentgroups'::name, ARRAY[
    'id'::name,
    'applicant_id'::name,
    'created_at'::name,
    'voided_at'::name,
    'completed_at'::name,
    'doctype'::name
]);

SELECT has_column(       'balance_api_fdw', 'documentgroups', 'id', 'Column balance_api_fdw.documentgroups.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'documentgroups', 'id', 'character varying(36)', 'Column balance_api_fdw.documentgroups.id should be type character varying(36)');
SELECT col_is_null(      'balance_api_fdw', 'documentgroups', 'id', 'Column balance_api_fdw.documentgroups.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documentgroups', 'id', 'Column balance_api_fdw.documentgroups.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documentgroups', 'applicant_id', 'Column balance_api_fdw.documentgroups.applicant_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'documentgroups', 'applicant_id', 'integer', 'Column balance_api_fdw.documentgroups.applicant_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'documentgroups', 'applicant_id', 'Column balance_api_fdw.documentgroups.applicant_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documentgroups', 'applicant_id', 'Column balance_api_fdw.documentgroups.applicant_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documentgroups', 'created_at', 'Column balance_api_fdw.documentgroups.created_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'documentgroups', 'created_at', 'timestamp with time zone', 'Column balance_api_fdw.documentgroups.created_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'documentgroups', 'created_at', 'Column balance_api_fdw.documentgroups.created_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documentgroups', 'created_at', 'Column balance_api_fdw.documentgroups.created_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documentgroups', 'voided_at', 'Column balance_api_fdw.documentgroups.voided_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'documentgroups', 'voided_at', 'timestamp with time zone', 'Column balance_api_fdw.documentgroups.voided_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'documentgroups', 'voided_at', 'Column balance_api_fdw.documentgroups.voided_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documentgroups', 'voided_at', 'Column balance_api_fdw.documentgroups.voided_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documentgroups', 'completed_at', 'Column balance_api_fdw.documentgroups.completed_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'documentgroups', 'completed_at', 'timestamp with time zone', 'Column balance_api_fdw.documentgroups.completed_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'documentgroups', 'completed_at', 'Column balance_api_fdw.documentgroups.completed_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documentgroups', 'completed_at', 'Column balance_api_fdw.documentgroups.completed_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documentgroups', 'doctype', 'Column balance_api_fdw.documentgroups.doctype should exist');
SELECT col_type_is(      'balance_api_fdw', 'documentgroups', 'doctype', 'character varying(25)', 'Column balance_api_fdw.documentgroups.doctype should be type character varying(25)');
SELECT col_is_null(      'balance_api_fdw', 'documentgroups', 'doctype', 'Column balance_api_fdw.documentgroups.doctype should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documentgroups', 'doctype', 'Column balance_api_fdw.documentgroups.doctype should not  have a default');

SELECT * FROM finish();
ROLLBACK;
