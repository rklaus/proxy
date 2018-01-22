SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(71);

SELECT has_foreign_table(
    'bsf_prod_ach_bitemporal', 'achfile',
    'Should have foreign table bsf_prod_ach_bitemporal.achfile'
);

SELECT hasnt_pk(
    'bsf_prod_ach_bitemporal', 'achfile',
    'Table bsf_prod_ach_bitemporal.achfile should have a primary key'
);

SELECT columns_are('bsf_prod_ach_bitemporal'::name, 'achfile'::name, ARRAY[
    'achfile_key'::name,
    'file_id'::name,
    'filename'::name,
    'filetype'::name,
    'createddate'::name,
    'generateddate'::name,
    'downloadeddate'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name,
    'endpointtype'::name,
    'filebatch'::name,
    'isfilesent'::name,
    'last_updated'::name,
    'isfilesentverified'::name,
    'product'::name,
    'brand'::name
]);

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'achfile_key', 'Column bsf_prod_ach_bitemporal.achfile.achfile_key should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'achfile_key', 'integer', 'Column bsf_prod_ach_bitemporal.achfile.achfile_key should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'achfile_key', 'Column bsf_prod_ach_bitemporal.achfile.achfile_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'achfile_key', 'Column bsf_prod_ach_bitemporal.achfile.achfile_key should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'file_id', 'Column bsf_prod_ach_bitemporal.achfile.file_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'file_id', 'integer', 'Column bsf_prod_ach_bitemporal.achfile.file_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'file_id', 'Column bsf_prod_ach_bitemporal.achfile.file_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'file_id', 'Column bsf_prod_ach_bitemporal.achfile.file_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'filename', 'Column bsf_prod_ach_bitemporal.achfile.filename should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'filename', 'text', 'Column bsf_prod_ach_bitemporal.achfile.filename should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'filename', 'Column bsf_prod_ach_bitemporal.achfile.filename should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'filename', 'Column bsf_prod_ach_bitemporal.achfile.filename should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'filetype', 'Column bsf_prod_ach_bitemporal.achfile.filetype should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'filetype', 'text', 'Column bsf_prod_ach_bitemporal.achfile.filetype should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'filetype', 'Column bsf_prod_ach_bitemporal.achfile.filetype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'filetype', 'Column bsf_prod_ach_bitemporal.achfile.filetype should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'createddate', 'Column bsf_prod_ach_bitemporal.achfile.createddate should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'createddate', 'timestamp without time zone', 'Column bsf_prod_ach_bitemporal.achfile.createddate should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'createddate', 'Column bsf_prod_ach_bitemporal.achfile.createddate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'createddate', 'Column bsf_prod_ach_bitemporal.achfile.createddate should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'generateddate', 'Column bsf_prod_ach_bitemporal.achfile.generateddate should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'generateddate', 'timestamp without time zone', 'Column bsf_prod_ach_bitemporal.achfile.generateddate should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'generateddate', 'Column bsf_prod_ach_bitemporal.achfile.generateddate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'generateddate', 'Column bsf_prod_ach_bitemporal.achfile.generateddate should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'downloadeddate', 'Column bsf_prod_ach_bitemporal.achfile.downloadeddate should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'downloadeddate', 'timestamp without time zone', 'Column bsf_prod_ach_bitemporal.achfile.downloadeddate should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'downloadeddate', 'Column bsf_prod_ach_bitemporal.achfile.downloadeddate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'downloadeddate', 'Column bsf_prod_ach_bitemporal.achfile.downloadeddate should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'effective', 'Column bsf_prod_ach_bitemporal.achfile.effective should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achfile.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'effective', 'Column bsf_prod_ach_bitemporal.achfile.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'effective', 'Column bsf_prod_ach_bitemporal.achfile.effective should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'asserted', 'Column bsf_prod_ach_bitemporal.achfile.asserted should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achfile.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'asserted', 'Column bsf_prod_ach_bitemporal.achfile.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'asserted', 'Column bsf_prod_ach_bitemporal.achfile.asserted should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfile.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achfile.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfile.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfile.row_created_at should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achfile.endpointtype should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'endpointtype', 'text', 'Column bsf_prod_ach_bitemporal.achfile.endpointtype should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achfile.endpointtype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achfile.endpointtype should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'filebatch', 'Column bsf_prod_ach_bitemporal.achfile.filebatch should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'filebatch', 'text', 'Column bsf_prod_ach_bitemporal.achfile.filebatch should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'filebatch', 'Column bsf_prod_ach_bitemporal.achfile.filebatch should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'filebatch', 'Column bsf_prod_ach_bitemporal.achfile.filebatch should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'isfilesent', 'Column bsf_prod_ach_bitemporal.achfile.isfilesent should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'isfilesent', 'integer', 'Column bsf_prod_ach_bitemporal.achfile.isfilesent should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'isfilesent', 'Column bsf_prod_ach_bitemporal.achfile.isfilesent should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'isfilesent', 'Column bsf_prod_ach_bitemporal.achfile.isfilesent should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfile.last_updated should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achfile.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfile.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfile.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'isfilesentverified', 'Column bsf_prod_ach_bitemporal.achfile.isfilesentverified should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'isfilesentverified', 'integer', 'Column bsf_prod_ach_bitemporal.achfile.isfilesentverified should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'isfilesentverified', 'Column bsf_prod_ach_bitemporal.achfile.isfilesentverified should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'isfilesentverified', 'Column bsf_prod_ach_bitemporal.achfile.isfilesentverified should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'product', 'Column bsf_prod_ach_bitemporal.achfile.product should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'product', 'text', 'Column bsf_prod_ach_bitemporal.achfile.product should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'product', 'Column bsf_prod_ach_bitemporal.achfile.product should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'product', 'Column bsf_prod_ach_bitemporal.achfile.product should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfile', 'brand', 'Column bsf_prod_ach_bitemporal.achfile.brand should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfile', 'brand', 'text', 'Column bsf_prod_ach_bitemporal.achfile.brand should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfile', 'brand', 'Column bsf_prod_ach_bitemporal.achfile.brand should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfile', 'brand', 'Column bsf_prod_ach_bitemporal.achfile.brand should not  have a default');

SELECT * FROM finish();
ROLLBACK;
