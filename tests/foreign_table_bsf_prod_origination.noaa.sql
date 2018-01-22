SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'bsf_prod_origination', 'noaa',
    'Should have foreign table bsf_prod_origination.noaa'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'noaa',
    'Table bsf_prod_origination.noaa should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'noaa'::name, ARRAY[
    'noaa_key'::name,
    'noaa_id'::name,
    'application_id'::name,
    'document_name'::name,
    'document_generated_at'::name,
    'last_updated'::name,
    'email_log_id'::name,
    'application_sub_status_id'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_origination', 'noaa', 'noaa_key', 'Column bsf_prod_origination.noaa.noaa_key should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'noaa_key', 'integer', 'Column bsf_prod_origination.noaa.noaa_key should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'noaa_key', 'Column bsf_prod_origination.noaa.noaa_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'noaa_key', 'Column bsf_prod_origination.noaa.noaa_key should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'noaa_id', 'Column bsf_prod_origination.noaa.noaa_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'noaa_id', 'bigint', 'Column bsf_prod_origination.noaa.noaa_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'noaa_id', 'Column bsf_prod_origination.noaa.noaa_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'noaa_id', 'Column bsf_prod_origination.noaa.noaa_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'application_id', 'Column bsf_prod_origination.noaa.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'application_id', 'bigint', 'Column bsf_prod_origination.noaa.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'application_id', 'Column bsf_prod_origination.noaa.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'application_id', 'Column bsf_prod_origination.noaa.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'document_name', 'Column bsf_prod_origination.noaa.document_name should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'document_name', 'text', 'Column bsf_prod_origination.noaa.document_name should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'document_name', 'Column bsf_prod_origination.noaa.document_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'document_name', 'Column bsf_prod_origination.noaa.document_name should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'document_generated_at', 'Column bsf_prod_origination.noaa.document_generated_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'document_generated_at', 'timestamp with time zone', 'Column bsf_prod_origination.noaa.document_generated_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'document_generated_at', 'Column bsf_prod_origination.noaa.document_generated_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'document_generated_at', 'Column bsf_prod_origination.noaa.document_generated_at should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'last_updated', 'Column bsf_prod_origination.noaa.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.noaa.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'last_updated', 'Column bsf_prod_origination.noaa.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'last_updated', 'Column bsf_prod_origination.noaa.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'email_log_id', 'Column bsf_prod_origination.noaa.email_log_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'email_log_id', 'bigint', 'Column bsf_prod_origination.noaa.email_log_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'email_log_id', 'Column bsf_prod_origination.noaa.email_log_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'email_log_id', 'Column bsf_prod_origination.noaa.email_log_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'application_sub_status_id', 'Column bsf_prod_origination.noaa.application_sub_status_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'application_sub_status_id', 'integer', 'Column bsf_prod_origination.noaa.application_sub_status_id should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'application_sub_status_id', 'Column bsf_prod_origination.noaa.application_sub_status_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'application_sub_status_id', 'Column bsf_prod_origination.noaa.application_sub_status_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'effective', 'Column bsf_prod_origination.noaa.effective should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.noaa.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'effective', 'Column bsf_prod_origination.noaa.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'effective', 'Column bsf_prod_origination.noaa.effective should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'asserted', 'Column bsf_prod_origination.noaa.asserted should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_origination.noaa.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'asserted', 'Column bsf_prod_origination.noaa.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'asserted', 'Column bsf_prod_origination.noaa.asserted should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa', 'row_created_at', 'Column bsf_prod_origination.noaa.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_origination.noaa.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'noaa', 'row_created_at', 'Column bsf_prod_origination.noaa.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa', 'row_created_at', 'Column bsf_prod_origination.noaa.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
