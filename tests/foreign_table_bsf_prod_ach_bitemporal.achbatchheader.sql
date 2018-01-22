SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'bsf_prod_ach_bitemporal', 'achbatchheader',
    'Should have foreign table bsf_prod_ach_bitemporal.achbatchheader'
);

SELECT hasnt_pk(
    'bsf_prod_ach_bitemporal', 'achbatchheader',
    'Table bsf_prod_ach_bitemporal.achbatchheader should have a primary key'
);

SELECT columns_are('bsf_prod_ach_bitemporal'::name, 'achbatchheader'::name, ARRAY[
    'achbatchheader_key'::name,
    'achbatchheader_id'::name,
    'achfileheader_id'::name,
    'companyname'::name,
    'companydiscretionarydata'::name,
    'companyidentificationnumber'::name,
    'companyentrydescription'::name,
    'originatingdfiroutingnumber'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'achbatchheader_key', 'Column bsf_prod_ach_bitemporal.achbatchheader.achbatchheader_key should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'achbatchheader_key', 'integer', 'Column bsf_prod_ach_bitemporal.achbatchheader.achbatchheader_key should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'achbatchheader_key', 'Column bsf_prod_ach_bitemporal.achbatchheader.achbatchheader_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'achbatchheader_key', 'Column bsf_prod_ach_bitemporal.achbatchheader.achbatchheader_key should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'achbatchheader_id', 'Column bsf_prod_ach_bitemporal.achbatchheader.achbatchheader_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'achbatchheader_id', 'integer', 'Column bsf_prod_ach_bitemporal.achbatchheader.achbatchheader_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'achbatchheader_id', 'Column bsf_prod_ach_bitemporal.achbatchheader.achbatchheader_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'achbatchheader_id', 'Column bsf_prod_ach_bitemporal.achbatchheader.achbatchheader_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'achfileheader_id', 'Column bsf_prod_ach_bitemporal.achbatchheader.achfileheader_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'achfileheader_id', 'integer', 'Column bsf_prod_ach_bitemporal.achbatchheader.achfileheader_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'achfileheader_id', 'Column bsf_prod_ach_bitemporal.achbatchheader.achfileheader_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'achfileheader_id', 'Column bsf_prod_ach_bitemporal.achbatchheader.achfileheader_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyname', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyname', 'text', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyname', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'companyname', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'companydiscretionarydata', 'Column bsf_prod_ach_bitemporal.achbatchheader.companydiscretionarydata should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'companydiscretionarydata', 'text', 'Column bsf_prod_ach_bitemporal.achbatchheader.companydiscretionarydata should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'companydiscretionarydata', 'Column bsf_prod_ach_bitemporal.achbatchheader.companydiscretionarydata should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'companydiscretionarydata', 'Column bsf_prod_ach_bitemporal.achbatchheader.companydiscretionarydata should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyidentificationnumber', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyidentificationnumber should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyidentificationnumber', 'text', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyidentificationnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyidentificationnumber', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyidentificationnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'companyidentificationnumber', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyidentificationnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyentrydescription', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyentrydescription should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyentrydescription', 'text', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyentrydescription should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'companyentrydescription', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyentrydescription should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'companyentrydescription', 'Column bsf_prod_ach_bitemporal.achbatchheader.companyentrydescription should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'originatingdfiroutingnumber', 'Column bsf_prod_ach_bitemporal.achbatchheader.originatingdfiroutingnumber should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'originatingdfiroutingnumber', 'bigint', 'Column bsf_prod_ach_bitemporal.achbatchheader.originatingdfiroutingnumber should be type bigint');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'originatingdfiroutingnumber', 'Column bsf_prod_ach_bitemporal.achbatchheader.originatingdfiroutingnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'originatingdfiroutingnumber', 'Column bsf_prod_ach_bitemporal.achbatchheader.originatingdfiroutingnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'last_updated', 'Column bsf_prod_ach_bitemporal.achbatchheader.last_updated should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achbatchheader.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'last_updated', 'Column bsf_prod_ach_bitemporal.achbatchheader.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'last_updated', 'Column bsf_prod_ach_bitemporal.achbatchheader.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'effective', 'Column bsf_prod_ach_bitemporal.achbatchheader.effective should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achbatchheader.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'effective', 'Column bsf_prod_ach_bitemporal.achbatchheader.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'effective', 'Column bsf_prod_ach_bitemporal.achbatchheader.effective should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'asserted', 'Column bsf_prod_ach_bitemporal.achbatchheader.asserted should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achbatchheader.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'asserted', 'Column bsf_prod_ach_bitemporal.achbatchheader.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'asserted', 'Column bsf_prod_ach_bitemporal.achbatchheader.asserted should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchheader', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achbatchheader.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achbatchheader.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchheader', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achbatchheader.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchheader', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achbatchheader.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
