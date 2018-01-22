SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'bsf_prod_ach', 'returnfile',
    'Should have foreign table bsf_prod_ach.returnfile'
);

SELECT hasnt_pk(
    'bsf_prod_ach', 'returnfile',
    'Table bsf_prod_ach.returnfile should have a primary key'
);

SELECT columns_are('bsf_prod_ach'::name, 'returnfile'::name, ARRAY[
    'returnfile_id'::name,
    'filename'::name,
    'uploaded_datetime'::name
]);

SELECT has_column(       'bsf_prod_ach', 'returnfile', 'returnfile_id', 'Column bsf_prod_ach.returnfile.returnfile_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfile', 'returnfile_id', 'integer', 'Column bsf_prod_ach.returnfile.returnfile_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'returnfile', 'returnfile_id', 'Column bsf_prod_ach.returnfile.returnfile_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfile', 'returnfile_id', 'Column bsf_prod_ach.returnfile.returnfile_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfile', 'filename', 'Column bsf_prod_ach.returnfile.filename should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfile', 'filename', 'text', 'Column bsf_prod_ach.returnfile.filename should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'returnfile', 'filename', 'Column bsf_prod_ach.returnfile.filename should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfile', 'filename', 'Column bsf_prod_ach.returnfile.filename should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfile', 'uploaded_datetime', 'Column bsf_prod_ach.returnfile.uploaded_datetime should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfile', 'uploaded_datetime', 'timestamp without time zone', 'Column bsf_prod_ach.returnfile.uploaded_datetime should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach', 'returnfile', 'uploaded_datetime', 'Column bsf_prod_ach.returnfile.uploaded_datetime should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfile', 'uploaded_datetime', 'Column bsf_prod_ach.returnfile.uploaded_datetime should not  have a default');

SELECT * FROM finish();
ROLLBACK;
