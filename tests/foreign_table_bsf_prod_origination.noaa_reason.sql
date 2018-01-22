SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'bsf_prod_origination', 'noaa_reason',
    'Should have foreign table bsf_prod_origination.noaa_reason'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'noaa_reason',
    'Table bsf_prod_origination.noaa_reason should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'noaa_reason'::name, ARRAY[
    'noaa_id'::name,
    'noaa_reason_id'::name,
    'last_updated'::name
]);

SELECT has_column(       'bsf_prod_origination', 'noaa_reason', 'noaa_id', 'Column bsf_prod_origination.noaa_reason.noaa_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa_reason', 'noaa_id', 'bigint', 'Column bsf_prod_origination.noaa_reason.noaa_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'noaa_reason', 'noaa_id', 'Column bsf_prod_origination.noaa_reason.noaa_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa_reason', 'noaa_id', 'Column bsf_prod_origination.noaa_reason.noaa_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa_reason', 'noaa_reason_id', 'Column bsf_prod_origination.noaa_reason.noaa_reason_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa_reason', 'noaa_reason_id', 'bigint', 'Column bsf_prod_origination.noaa_reason.noaa_reason_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'noaa_reason', 'noaa_reason_id', 'Column bsf_prod_origination.noaa_reason.noaa_reason_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa_reason', 'noaa_reason_id', 'Column bsf_prod_origination.noaa_reason.noaa_reason_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'noaa_reason', 'last_updated', 'Column bsf_prod_origination.noaa_reason.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'noaa_reason', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.noaa_reason.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'noaa_reason', 'last_updated', 'Column bsf_prod_origination.noaa_reason.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'noaa_reason', 'last_updated', 'Column bsf_prod_origination.noaa_reason.last_updated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
