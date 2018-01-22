SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'bsf_prod_ach', 'returnfilerecord',
    'Should have foreign table bsf_prod_ach.returnfilerecord'
);

SELECT hasnt_pk(
    'bsf_prod_ach', 'returnfilerecord',
    'Table bsf_prod_ach.returnfilerecord should have a primary key'
);

SELECT columns_are('bsf_prod_ach'::name, 'returnfilerecord'::name, ARRAY[
    'returnfilerecord_id'::name,
    'transaction_id'::name,
    'amount'::name,
    'returncode'::name,
    'full_name'::name,
    'returndate'::name,
    'processed_datetime'::name,
    'errormessage'::name,
    'originalachrecord_id'::name,
    'returnfile_id'::name
]);

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'returnfilerecord_id', 'Column bsf_prod_ach.returnfilerecord.returnfilerecord_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'returnfilerecord_id', 'integer', 'Column bsf_prod_ach.returnfilerecord.returnfilerecord_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'returnfilerecord_id', 'Column bsf_prod_ach.returnfilerecord.returnfilerecord_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'returnfilerecord_id', 'Column bsf_prod_ach.returnfilerecord.returnfilerecord_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'transaction_id', 'Column bsf_prod_ach.returnfilerecord.transaction_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'transaction_id', 'text', 'Column bsf_prod_ach.returnfilerecord.transaction_id should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'transaction_id', 'Column bsf_prod_ach.returnfilerecord.transaction_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'transaction_id', 'Column bsf_prod_ach.returnfilerecord.transaction_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'amount', 'Column bsf_prod_ach.returnfilerecord.amount should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'amount', 'numeric(18,2)', 'Column bsf_prod_ach.returnfilerecord.amount should be type numeric(18,2)');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'amount', 'Column bsf_prod_ach.returnfilerecord.amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'amount', 'Column bsf_prod_ach.returnfilerecord.amount should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'returncode', 'Column bsf_prod_ach.returnfilerecord.returncode should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'returncode', 'character varying(3)', 'Column bsf_prod_ach.returnfilerecord.returncode should be type character varying(3)');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'returncode', 'Column bsf_prod_ach.returnfilerecord.returncode should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'returncode', 'Column bsf_prod_ach.returnfilerecord.returncode should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'full_name', 'Column bsf_prod_ach.returnfilerecord.full_name should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'full_name', 'text', 'Column bsf_prod_ach.returnfilerecord.full_name should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'full_name', 'Column bsf_prod_ach.returnfilerecord.full_name should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'full_name', 'Column bsf_prod_ach.returnfilerecord.full_name should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'returndate', 'Column bsf_prod_ach.returnfilerecord.returndate should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'returndate', 'date', 'Column bsf_prod_ach.returnfilerecord.returndate should be type date');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'returndate', 'Column bsf_prod_ach.returnfilerecord.returndate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'returndate', 'Column bsf_prod_ach.returnfilerecord.returndate should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'processed_datetime', 'Column bsf_prod_ach.returnfilerecord.processed_datetime should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'processed_datetime', 'timestamp without time zone', 'Column bsf_prod_ach.returnfilerecord.processed_datetime should be type timestamp without time zone');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'processed_datetime', 'Column bsf_prod_ach.returnfilerecord.processed_datetime should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'processed_datetime', 'Column bsf_prod_ach.returnfilerecord.processed_datetime should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'errormessage', 'Column bsf_prod_ach.returnfilerecord.errormessage should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'errormessage', 'text', 'Column bsf_prod_ach.returnfilerecord.errormessage should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'errormessage', 'Column bsf_prod_ach.returnfilerecord.errormessage should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'errormessage', 'Column bsf_prod_ach.returnfilerecord.errormessage should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'originalachrecord_id', 'Column bsf_prod_ach.returnfilerecord.originalachrecord_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'originalachrecord_id', 'integer', 'Column bsf_prod_ach.returnfilerecord.originalachrecord_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'originalachrecord_id', 'Column bsf_prod_ach.returnfilerecord.originalachrecord_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'originalachrecord_id', 'Column bsf_prod_ach.returnfilerecord.originalachrecord_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'returnfilerecord', 'returnfile_id', 'Column bsf_prod_ach.returnfilerecord.returnfile_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'returnfilerecord', 'returnfile_id', 'integer', 'Column bsf_prod_ach.returnfilerecord.returnfile_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'returnfilerecord', 'returnfile_id', 'Column bsf_prod_ach.returnfilerecord.returnfile_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'returnfilerecord', 'returnfile_id', 'Column bsf_prod_ach.returnfilerecord.returnfile_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
