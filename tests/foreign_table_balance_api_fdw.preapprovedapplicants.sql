SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'balance_api_fdw', 'preapprovedapplicants',
    'Should have foreign table balance_api_fdw.preapprovedapplicants'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'preapprovedapplicants',
    'Table balance_api_fdw.preapprovedapplicants should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'preapprovedapplicants'::name, ARRAY[
    'applicant_hash'::name,
    'state'::name,
    'max_line'::name
]);

SELECT has_column(       'balance_api_fdw', 'preapprovedapplicants', 'applicant_hash', 'Column balance_api_fdw.preapprovedapplicants.applicant_hash should exist');
SELECT col_type_is(      'balance_api_fdw', 'preapprovedapplicants', 'applicant_hash', 'character varying(64)', 'Column balance_api_fdw.preapprovedapplicants.applicant_hash should be type character varying(64)');
SELECT col_is_null(      'balance_api_fdw', 'preapprovedapplicants', 'applicant_hash', 'Column balance_api_fdw.preapprovedapplicants.applicant_hash should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'preapprovedapplicants', 'applicant_hash', 'Column balance_api_fdw.preapprovedapplicants.applicant_hash should not  have a default');

SELECT has_column(       'balance_api_fdw', 'preapprovedapplicants', 'state', 'Column balance_api_fdw.preapprovedapplicants.state should exist');
SELECT col_type_is(      'balance_api_fdw', 'preapprovedapplicants', 'state', 'character varying(2)', 'Column balance_api_fdw.preapprovedapplicants.state should be type character varying(2)');
SELECT col_is_null(      'balance_api_fdw', 'preapprovedapplicants', 'state', 'Column balance_api_fdw.preapprovedapplicants.state should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'preapprovedapplicants', 'state', 'Column balance_api_fdw.preapprovedapplicants.state should not  have a default');

SELECT has_column(       'balance_api_fdw', 'preapprovedapplicants', 'max_line', 'Column balance_api_fdw.preapprovedapplicants.max_line should exist');
SELECT col_type_is(      'balance_api_fdw', 'preapprovedapplicants', 'max_line', 'integer', 'Column balance_api_fdw.preapprovedapplicants.max_line should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'preapprovedapplicants', 'max_line', 'Column balance_api_fdw.preapprovedapplicants.max_line should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'preapprovedapplicants', 'max_line', 'Column balance_api_fdw.preapprovedapplicants.max_line should not  have a default');

SELECT * FROM finish();
ROLLBACK;
