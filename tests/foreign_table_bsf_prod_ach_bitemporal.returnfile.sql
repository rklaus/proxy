SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'bsf_prod_ach_bitemporal', 'returnfile',
    'Should have foreign table bsf_prod_ach_bitemporal.returnfile'
);

SELECT hasnt_pk(
    'bsf_prod_ach_bitemporal', 'returnfile',
    'Table bsf_prod_ach_bitemporal.returnfile should have a primary key'
);

SELECT columns_are('bsf_prod_ach_bitemporal'::name, 'returnfile'::name, ARRAY[
    'returnfile_key'::name,
    'returnfile_id'::name,
    'filename'::name,
    'uploaded_datetime'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name,
    'last_updated'::name,
    'product'::name,
    'brand'::name
]);

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'returnfile_key', 'Column bsf_prod_ach_bitemporal.returnfile.returnfile_key should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'returnfile_key', 'integer', 'Column bsf_prod_ach_bitemporal.returnfile.returnfile_key should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'returnfile_key', 'Column bsf_prod_ach_bitemporal.returnfile.returnfile_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'returnfile_key', 'Column bsf_prod_ach_bitemporal.returnfile.returnfile_key should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'returnfile_id', 'Column bsf_prod_ach_bitemporal.returnfile.returnfile_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'returnfile_id', 'integer', 'Column bsf_prod_ach_bitemporal.returnfile.returnfile_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'returnfile_id', 'Column bsf_prod_ach_bitemporal.returnfile.returnfile_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'returnfile_id', 'Column bsf_prod_ach_bitemporal.returnfile.returnfile_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'filename', 'Column bsf_prod_ach_bitemporal.returnfile.filename should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'filename', 'text', 'Column bsf_prod_ach_bitemporal.returnfile.filename should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'filename', 'Column bsf_prod_ach_bitemporal.returnfile.filename should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'filename', 'Column bsf_prod_ach_bitemporal.returnfile.filename should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'uploaded_datetime', 'Column bsf_prod_ach_bitemporal.returnfile.uploaded_datetime should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'uploaded_datetime', 'timestamp without time zone', 'Column bsf_prod_ach_bitemporal.returnfile.uploaded_datetime should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'uploaded_datetime', 'Column bsf_prod_ach_bitemporal.returnfile.uploaded_datetime should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'uploaded_datetime', 'Column bsf_prod_ach_bitemporal.returnfile.uploaded_datetime should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'effective', 'Column bsf_prod_ach_bitemporal.returnfile.effective should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.returnfile.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'effective', 'Column bsf_prod_ach_bitemporal.returnfile.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'effective', 'Column bsf_prod_ach_bitemporal.returnfile.effective should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'asserted', 'Column bsf_prod_ach_bitemporal.returnfile.asserted should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.returnfile.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'asserted', 'Column bsf_prod_ach_bitemporal.returnfile.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'asserted', 'Column bsf_prod_ach_bitemporal.returnfile.asserted should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'row_created_at', 'Column bsf_prod_ach_bitemporal.returnfile.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.returnfile.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'row_created_at', 'Column bsf_prod_ach_bitemporal.returnfile.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'row_created_at', 'Column bsf_prod_ach_bitemporal.returnfile.row_created_at should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'last_updated', 'Column bsf_prod_ach_bitemporal.returnfile.last_updated should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.returnfile.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'last_updated', 'Column bsf_prod_ach_bitemporal.returnfile.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'last_updated', 'Column bsf_prod_ach_bitemporal.returnfile.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'product', 'Column bsf_prod_ach_bitemporal.returnfile.product should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'product', 'text', 'Column bsf_prod_ach_bitemporal.returnfile.product should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'product', 'Column bsf_prod_ach_bitemporal.returnfile.product should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'product', 'Column bsf_prod_ach_bitemporal.returnfile.product should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfile', 'brand', 'Column bsf_prod_ach_bitemporal.returnfile.brand should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfile', 'brand', 'text', 'Column bsf_prod_ach_bitemporal.returnfile.brand should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfile', 'brand', 'Column bsf_prod_ach_bitemporal.returnfile.brand should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfile', 'brand', 'Column bsf_prod_ach_bitemporal.returnfile.brand should not  have a default');

SELECT * FROM finish();
ROLLBACK;
