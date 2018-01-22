SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'bsf_prod_ach', 'achfile',
    'Should have foreign table bsf_prod_ach.achfile'
);

SELECT hasnt_pk(
    'bsf_prod_ach', 'achfile',
    'Table bsf_prod_ach.achfile should have a primary key'
);

SELECT columns_are('bsf_prod_ach'::name, 'achfile'::name, ARRAY[
    'file_id'::name,
    'filename'::name,
    'filetype'::name,
    'createddate'::name,
    'generateddate'::name,
    'downloadeddate'::name,
    'endpointtype'::name,
    'filebatch'::name,
    'isfilesent'::name
]);

SELECT has_column(       'bsf_prod_ach', 'achfile', 'file_id', 'Column bsf_prod_ach.achfile.file_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'file_id', 'integer', 'Column bsf_prod_ach.achfile.file_id should be type integer');
SELECT col_not_null(     'bsf_prod_ach', 'achfile', 'file_id', 'Column bsf_prod_ach.achfile.file_id should be NOT NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'file_id', 'Column bsf_prod_ach.achfile.file_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfile', 'filename', 'Column bsf_prod_ach.achfile.filename should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'filename', 'text', 'Column bsf_prod_ach.achfile.filename should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfile', 'filename', 'Column bsf_prod_ach.achfile.filename should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'filename', 'Column bsf_prod_ach.achfile.filename should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfile', 'filetype', 'Column bsf_prod_ach.achfile.filetype should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'filetype', 'text', 'Column bsf_prod_ach.achfile.filetype should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfile', 'filetype', 'Column bsf_prod_ach.achfile.filetype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'filetype', 'Column bsf_prod_ach.achfile.filetype should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfile', 'createddate', 'Column bsf_prod_ach.achfile.createddate should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'createddate', 'timestamp without time zone', 'Column bsf_prod_ach.achfile.createddate should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach', 'achfile', 'createddate', 'Column bsf_prod_ach.achfile.createddate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'createddate', 'Column bsf_prod_ach.achfile.createddate should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfile', 'generateddate', 'Column bsf_prod_ach.achfile.generateddate should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'generateddate', 'timestamp without time zone', 'Column bsf_prod_ach.achfile.generateddate should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach', 'achfile', 'generateddate', 'Column bsf_prod_ach.achfile.generateddate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'generateddate', 'Column bsf_prod_ach.achfile.generateddate should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfile', 'downloadeddate', 'Column bsf_prod_ach.achfile.downloadeddate should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'downloadeddate', 'timestamp without time zone', 'Column bsf_prod_ach.achfile.downloadeddate should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach', 'achfile', 'downloadeddate', 'Column bsf_prod_ach.achfile.downloadeddate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'downloadeddate', 'Column bsf_prod_ach.achfile.downloadeddate should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfile', 'endpointtype', 'Column bsf_prod_ach.achfile.endpointtype should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'endpointtype', 'text', 'Column bsf_prod_ach.achfile.endpointtype should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfile', 'endpointtype', 'Column bsf_prod_ach.achfile.endpointtype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'endpointtype', 'Column bsf_prod_ach.achfile.endpointtype should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfile', 'filebatch', 'Column bsf_prod_ach.achfile.filebatch should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'filebatch', 'text', 'Column bsf_prod_ach.achfile.filebatch should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfile', 'filebatch', 'Column bsf_prod_ach.achfile.filebatch should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'filebatch', 'Column bsf_prod_ach.achfile.filebatch should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfile', 'isfilesent', 'Column bsf_prod_ach.achfile.isfilesent should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfile', 'isfilesent', 'integer', 'Column bsf_prod_ach.achfile.isfilesent should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achfile', 'isfilesent', 'Column bsf_prod_ach.achfile.isfilesent should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfile', 'isfilesent', 'Column bsf_prod_ach.achfile.isfilesent should not  have a default');

SELECT * FROM finish();
ROLLBACK;
