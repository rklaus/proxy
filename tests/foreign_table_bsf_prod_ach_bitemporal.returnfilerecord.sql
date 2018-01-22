SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(71);

SELECT has_foreign_table(
    'bsf_prod_ach_bitemporal', 'returnfilerecord',
    'Should have foreign table bsf_prod_ach_bitemporal.returnfilerecord'
);

SELECT hasnt_pk(
    'bsf_prod_ach_bitemporal', 'returnfilerecord',
    'Table bsf_prod_ach_bitemporal.returnfilerecord should have a primary key'
);

SELECT columns_are('bsf_prod_ach_bitemporal'::name, 'returnfilerecord'::name, ARRAY[
    'returnfilerecord_key'::name,
    'returnfilerecord_id'::name,
    'transaction_id'::name,
    'amount'::name,
    'returncode'::name,
    'full_name'::name,
    'returndate'::name,
    'processed_datetime'::name,
    'errormessage'::name,
    'originalachrecord_id'::name,
    'returnfile_id'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name,
    'last_updated'::name,
    'product'::name,
    'brand'::name
]);

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfilerecord_key', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfilerecord_key should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfilerecord_key', 'integer', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfilerecord_key should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfilerecord_key', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfilerecord_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfilerecord_key', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfilerecord_key should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfilerecord_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfilerecord_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfilerecord_id', 'integer', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfilerecord_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfilerecord_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfilerecord_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfilerecord_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfilerecord_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'transaction_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.transaction_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'transaction_id', 'text', 'Column bsf_prod_ach_bitemporal.returnfilerecord.transaction_id should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'transaction_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.transaction_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'transaction_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.transaction_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'amount', 'Column bsf_prod_ach_bitemporal.returnfilerecord.amount should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'amount', 'numeric(18,2)', 'Column bsf_prod_ach_bitemporal.returnfilerecord.amount should be type numeric(18,2)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'amount', 'Column bsf_prod_ach_bitemporal.returnfilerecord.amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'amount', 'Column bsf_prod_ach_bitemporal.returnfilerecord.amount should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returncode', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returncode should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returncode', 'character varying(3)', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returncode should be type character varying(3)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returncode', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returncode should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'returncode', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returncode should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'full_name', 'Column bsf_prod_ach_bitemporal.returnfilerecord.full_name should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'full_name', 'text', 'Column bsf_prod_ach_bitemporal.returnfilerecord.full_name should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'full_name', 'Column bsf_prod_ach_bitemporal.returnfilerecord.full_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'full_name', 'Column bsf_prod_ach_bitemporal.returnfilerecord.full_name should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returndate', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returndate should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returndate', 'date', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returndate should be type date');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returndate', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returndate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'returndate', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returndate should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'processed_datetime', 'Column bsf_prod_ach_bitemporal.returnfilerecord.processed_datetime should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'processed_datetime', 'timestamp without time zone', 'Column bsf_prod_ach_bitemporal.returnfilerecord.processed_datetime should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'processed_datetime', 'Column bsf_prod_ach_bitemporal.returnfilerecord.processed_datetime should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'processed_datetime', 'Column bsf_prod_ach_bitemporal.returnfilerecord.processed_datetime should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'errormessage', 'Column bsf_prod_ach_bitemporal.returnfilerecord.errormessage should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'errormessage', 'text', 'Column bsf_prod_ach_bitemporal.returnfilerecord.errormessage should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'errormessage', 'Column bsf_prod_ach_bitemporal.returnfilerecord.errormessage should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'errormessage', 'Column bsf_prod_ach_bitemporal.returnfilerecord.errormessage should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'originalachrecord_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.originalachrecord_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'originalachrecord_id', 'integer', 'Column bsf_prod_ach_bitemporal.returnfilerecord.originalachrecord_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'originalachrecord_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.originalachrecord_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'originalachrecord_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.originalachrecord_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfile_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfile_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfile_id', 'integer', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfile_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfile_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfile_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'returnfile_id', 'Column bsf_prod_ach_bitemporal.returnfilerecord.returnfile_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'effective', 'Column bsf_prod_ach_bitemporal.returnfilerecord.effective should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.returnfilerecord.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'effective', 'Column bsf_prod_ach_bitemporal.returnfilerecord.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'effective', 'Column bsf_prod_ach_bitemporal.returnfilerecord.effective should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'asserted', 'Column bsf_prod_ach_bitemporal.returnfilerecord.asserted should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.returnfilerecord.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'asserted', 'Column bsf_prod_ach_bitemporal.returnfilerecord.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'asserted', 'Column bsf_prod_ach_bitemporal.returnfilerecord.asserted should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'row_created_at', 'Column bsf_prod_ach_bitemporal.returnfilerecord.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.returnfilerecord.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'row_created_at', 'Column bsf_prod_ach_bitemporal.returnfilerecord.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'row_created_at', 'Column bsf_prod_ach_bitemporal.returnfilerecord.row_created_at should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'last_updated', 'Column bsf_prod_ach_bitemporal.returnfilerecord.last_updated should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.returnfilerecord.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'last_updated', 'Column bsf_prod_ach_bitemporal.returnfilerecord.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'last_updated', 'Column bsf_prod_ach_bitemporal.returnfilerecord.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'product', 'Column bsf_prod_ach_bitemporal.returnfilerecord.product should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'product', 'text', 'Column bsf_prod_ach_bitemporal.returnfilerecord.product should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'product', 'Column bsf_prod_ach_bitemporal.returnfilerecord.product should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'product', 'Column bsf_prod_ach_bitemporal.returnfilerecord.product should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'returnfilerecord', 'brand', 'Column bsf_prod_ach_bitemporal.returnfilerecord.brand should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'brand', 'text', 'Column bsf_prod_ach_bitemporal.returnfilerecord.brand should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'returnfilerecord', 'brand', 'Column bsf_prod_ach_bitemporal.returnfilerecord.brand should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'returnfilerecord', 'brand', 'Column bsf_prod_ach_bitemporal.returnfilerecord.brand should not  have a default');

SELECT * FROM finish();
ROLLBACK;
