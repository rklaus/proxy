SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'balance_api_fdw', 'applicantjournal',
    'Should have foreign table balance_api_fdw.applicantjournal'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'applicantjournal',
    'Table balance_api_fdw.applicantjournal should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'applicantjournal'::name, ARRAY[
    'id'::name,
    'applicant_id'::name,
    'label'::name,
    'endpoint'::name,
    'request'::name,
    'response'::name,
    'elapsed'::name,
    'date_created'::name
]);

SELECT has_column(       'balance_api_fdw', 'applicantjournal', 'id', 'Column balance_api_fdw.applicantjournal.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantjournal', 'id', 'integer', 'Column balance_api_fdw.applicantjournal.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantjournal', 'id', 'Column balance_api_fdw.applicantjournal.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantjournal', 'id', 'Column balance_api_fdw.applicantjournal.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantjournal', 'applicant_id', 'Column balance_api_fdw.applicantjournal.applicant_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantjournal', 'applicant_id', 'integer', 'Column balance_api_fdw.applicantjournal.applicant_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'applicantjournal', 'applicant_id', 'Column balance_api_fdw.applicantjournal.applicant_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantjournal', 'applicant_id', 'Column balance_api_fdw.applicantjournal.applicant_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantjournal', 'label', 'Column balance_api_fdw.applicantjournal.label should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantjournal', 'label', 'character varying(255)', 'Column balance_api_fdw.applicantjournal.label should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'applicantjournal', 'label', 'Column balance_api_fdw.applicantjournal.label should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantjournal', 'label', 'Column balance_api_fdw.applicantjournal.label should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantjournal', 'endpoint', 'Column balance_api_fdw.applicantjournal.endpoint should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantjournal', 'endpoint', 'character varying(500)', 'Column balance_api_fdw.applicantjournal.endpoint should be type character varying(500)');
SELECT col_is_null(      'balance_api_fdw', 'applicantjournal', 'endpoint', 'Column balance_api_fdw.applicantjournal.endpoint should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantjournal', 'endpoint', 'Column balance_api_fdw.applicantjournal.endpoint should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantjournal', 'request', 'Column balance_api_fdw.applicantjournal.request should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantjournal', 'request', 'text', 'Column balance_api_fdw.applicantjournal.request should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicantjournal', 'request', 'Column balance_api_fdw.applicantjournal.request should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantjournal', 'request', 'Column balance_api_fdw.applicantjournal.request should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantjournal', 'response', 'Column balance_api_fdw.applicantjournal.response should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantjournal', 'response', 'text', 'Column balance_api_fdw.applicantjournal.response should be type text');
SELECT col_is_null(      'balance_api_fdw', 'applicantjournal', 'response', 'Column balance_api_fdw.applicantjournal.response should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantjournal', 'response', 'Column balance_api_fdw.applicantjournal.response should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantjournal', 'elapsed', 'Column balance_api_fdw.applicantjournal.elapsed should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantjournal', 'elapsed', 'numeric(8,2)', 'Column balance_api_fdw.applicantjournal.elapsed should be type numeric(8,2)');
SELECT col_is_null(      'balance_api_fdw', 'applicantjournal', 'elapsed', 'Column balance_api_fdw.applicantjournal.elapsed should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantjournal', 'elapsed', 'Column balance_api_fdw.applicantjournal.elapsed should not  have a default');

SELECT has_column(       'balance_api_fdw', 'applicantjournal', 'date_created', 'Column balance_api_fdw.applicantjournal.date_created should exist');
SELECT col_type_is(      'balance_api_fdw', 'applicantjournal', 'date_created', 'timestamp with time zone', 'Column balance_api_fdw.applicantjournal.date_created should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'applicantjournal', 'date_created', 'Column balance_api_fdw.applicantjournal.date_created should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'applicantjournal', 'date_created', 'Column balance_api_fdw.applicantjournal.date_created should not  have a default');

SELECT * FROM finish();
ROLLBACK;
