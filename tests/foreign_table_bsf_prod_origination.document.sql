SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'bsf_prod_origination', 'document',
    'Should have foreign table bsf_prod_origination.document'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'document',
    'Table bsf_prod_origination.document should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'document'::name, ARRAY[
    'document_key'::name,
    'document_id'::name,
    'application_id'::name,
    'document_name'::name,
    'document_generated_at'::name,
    'document_type_id'::name,
    'acknowledged_at'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_origination', 'document', 'document_key', 'Column bsf_prod_origination.document.document_key should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'document_key', 'integer', 'Column bsf_prod_origination.document.document_key should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'document_key', 'Column bsf_prod_origination.document.document_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'document_key', 'Column bsf_prod_origination.document.document_key should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'document_id', 'Column bsf_prod_origination.document.document_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'document_id', 'bigint', 'Column bsf_prod_origination.document.document_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'document_id', 'Column bsf_prod_origination.document.document_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'document_id', 'Column bsf_prod_origination.document.document_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'application_id', 'Column bsf_prod_origination.document.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'application_id', 'bigint', 'Column bsf_prod_origination.document.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'application_id', 'Column bsf_prod_origination.document.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'application_id', 'Column bsf_prod_origination.document.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'document_name', 'Column bsf_prod_origination.document.document_name should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'document_name', 'text', 'Column bsf_prod_origination.document.document_name should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'document_name', 'Column bsf_prod_origination.document.document_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'document_name', 'Column bsf_prod_origination.document.document_name should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'document_generated_at', 'Column bsf_prod_origination.document.document_generated_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'document_generated_at', 'timestamp with time zone', 'Column bsf_prod_origination.document.document_generated_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'document_generated_at', 'Column bsf_prod_origination.document.document_generated_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'document_generated_at', 'Column bsf_prod_origination.document.document_generated_at should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'document_type_id', 'Column bsf_prod_origination.document.document_type_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'document_type_id', 'integer', 'Column bsf_prod_origination.document.document_type_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'document_type_id', 'Column bsf_prod_origination.document.document_type_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'document_type_id', 'Column bsf_prod_origination.document.document_type_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'acknowledged_at', 'Column bsf_prod_origination.document.acknowledged_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'acknowledged_at', 'timestamp with time zone', 'Column bsf_prod_origination.document.acknowledged_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'acknowledged_at', 'Column bsf_prod_origination.document.acknowledged_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'acknowledged_at', 'Column bsf_prod_origination.document.acknowledged_at should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'last_updated', 'Column bsf_prod_origination.document.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.document.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'last_updated', 'Column bsf_prod_origination.document.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'last_updated', 'Column bsf_prod_origination.document.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'effective', 'Column bsf_prod_origination.document.effective should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.document.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'effective', 'Column bsf_prod_origination.document.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'effective', 'Column bsf_prod_origination.document.effective should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'asserted', 'Column bsf_prod_origination.document.asserted should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.document.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'asserted', 'Column bsf_prod_origination.document.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'asserted', 'Column bsf_prod_origination.document.asserted should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'document', 'row_created_at', 'Column bsf_prod_origination.document.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'document', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_origination.document.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'document', 'row_created_at', 'Column bsf_prod_origination.document.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'document', 'row_created_at', 'Column bsf_prod_origination.document.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
