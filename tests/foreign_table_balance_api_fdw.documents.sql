SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'balance_api_fdw', 'documents',
    'Should have foreign table balance_api_fdw.documents'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'documents',
    'Table balance_api_fdw.documents should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'documents'::name, ARRAY[
    'id'::name,
    'name'::name,
    'document_group_id'::name,
    'custom_forms'::name,
    'position'::name,
    'requested_at'::name,
    'expiration'::name,
    'status'::name,
    'rendered_url'::name,
    'envelope_id'::name,
    'loan_pro_document_id'::name
]);

SELECT has_column(       'balance_api_fdw', 'documents', 'id', 'Column balance_api_fdw.documents.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'id', 'character varying(36)', 'Column balance_api_fdw.documents.id should be type character varying(36)');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'id', 'Column balance_api_fdw.documents.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'id', 'Column balance_api_fdw.documents.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'name', 'Column balance_api_fdw.documents.name should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'name', 'text', 'Column balance_api_fdw.documents.name should be type text');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'name', 'Column balance_api_fdw.documents.name should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'name', 'Column balance_api_fdw.documents.name should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'document_group_id', 'Column balance_api_fdw.documents.document_group_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'document_group_id', 'character varying(36)', 'Column balance_api_fdw.documents.document_group_id should be type character varying(36)');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'document_group_id', 'Column balance_api_fdw.documents.document_group_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'document_group_id', 'Column balance_api_fdw.documents.document_group_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'custom_forms', 'Column balance_api_fdw.documents.custom_forms should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'custom_forms', 'jsonb', 'Column balance_api_fdw.documents.custom_forms should be type jsonb');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'custom_forms', 'Column balance_api_fdw.documents.custom_forms should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'custom_forms', 'Column balance_api_fdw.documents.custom_forms should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'position', 'Column balance_api_fdw.documents."position" should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'position', 'integer', 'Column balance_api_fdw.documents."position" should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'position', 'Column balance_api_fdw.documents."position" should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'position', 'Column balance_api_fdw.documents."position" should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'requested_at', 'Column balance_api_fdw.documents.requested_at should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'requested_at', 'timestamp with time zone', 'Column balance_api_fdw.documents.requested_at should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'requested_at', 'Column balance_api_fdw.documents.requested_at should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'requested_at', 'Column balance_api_fdw.documents.requested_at should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'expiration', 'Column balance_api_fdw.documents.expiration should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'expiration', 'timestamp with time zone', 'Column balance_api_fdw.documents.expiration should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'expiration', 'Column balance_api_fdw.documents.expiration should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'expiration', 'Column balance_api_fdw.documents.expiration should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'status', 'Column balance_api_fdw.documents.status should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'status', 'text', 'Column balance_api_fdw.documents.status should be type text');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'status', 'Column balance_api_fdw.documents.status should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'status', 'Column balance_api_fdw.documents.status should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'rendered_url', 'Column balance_api_fdw.documents.rendered_url should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'rendered_url', 'text', 'Column balance_api_fdw.documents.rendered_url should be type text');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'rendered_url', 'Column balance_api_fdw.documents.rendered_url should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'rendered_url', 'Column balance_api_fdw.documents.rendered_url should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'envelope_id', 'Column balance_api_fdw.documents.envelope_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'envelope_id', 'text', 'Column balance_api_fdw.documents.envelope_id should be type text');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'envelope_id', 'Column balance_api_fdw.documents.envelope_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'envelope_id', 'Column balance_api_fdw.documents.envelope_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'documents', 'loan_pro_document_id', 'Column balance_api_fdw.documents.loan_pro_document_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'documents', 'loan_pro_document_id', 'integer', 'Column balance_api_fdw.documents.loan_pro_document_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'documents', 'loan_pro_document_id', 'Column balance_api_fdw.documents.loan_pro_document_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'documents', 'loan_pro_document_id', 'Column balance_api_fdw.documents.loan_pro_document_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
