SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(75);

SELECT has_foreign_table(
    'bsf_prod_ach_bitemporal', 'achendpoint',
    'Should have foreign table bsf_prod_ach_bitemporal.achendpoint'
);

SELECT hasnt_pk(
    'bsf_prod_ach_bitemporal', 'achendpoint',
    'Table bsf_prod_ach_bitemporal.achendpoint should have a primary key'
);

SELECT columns_are('bsf_prod_ach_bitemporal'::name, 'achendpoint'::name, ARRAY[
    'achendpoint_key'::name,
    'achendpoint_id'::name,
    'endpointname'::name,
    'endpointnameorig'::name,
    'endpointnamepymt'::name,
    'endpointtype'::name,
    'loanowner'::name,
    'loanoriginalowner'::name,
    'state'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name,
    'filebatch'::name,
    'achbatchheaderorig_id'::name,
    'achbatchheaderpymt_id'::name,
    'last_updated'::name,
    'product'::name,
    'brand'::name
]);

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'achendpoint_key', 'Column bsf_prod_ach_bitemporal.achendpoint.achendpoint_key should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'achendpoint_key', 'integer', 'Column bsf_prod_ach_bitemporal.achendpoint.achendpoint_key should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'achendpoint_key', 'Column bsf_prod_ach_bitemporal.achendpoint.achendpoint_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'achendpoint_key', 'Column bsf_prod_ach_bitemporal.achendpoint.achendpoint_key should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'achendpoint_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achendpoint_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'achendpoint_id', 'integer', 'Column bsf_prod_ach_bitemporal.achendpoint.achendpoint_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'achendpoint_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achendpoint_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'achendpoint_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achendpoint_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointname', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointname', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointname', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'endpointname', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointnameorig', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointnameorig should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointnameorig', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointnameorig should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointnameorig', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointnameorig should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'endpointnameorig', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointnameorig should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointnamepymt', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointnamepymt should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointnamepymt', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointnamepymt should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointnamepymt', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointnamepymt should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'endpointnamepymt', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointnamepymt should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointtype should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointtype', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointtype should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointtype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achendpoint.endpointtype should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'loanowner', 'Column bsf_prod_ach_bitemporal.achendpoint.loanowner should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'loanowner', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.loanowner should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'loanowner', 'Column bsf_prod_ach_bitemporal.achendpoint.loanowner should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'loanowner', 'Column bsf_prod_ach_bitemporal.achendpoint.loanowner should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'loanoriginalowner', 'Column bsf_prod_ach_bitemporal.achendpoint.loanoriginalowner should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'loanoriginalowner', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.loanoriginalowner should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'loanoriginalowner', 'Column bsf_prod_ach_bitemporal.achendpoint.loanoriginalowner should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'loanoriginalowner', 'Column bsf_prod_ach_bitemporal.achendpoint.loanoriginalowner should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'state', 'Column bsf_prod_ach_bitemporal.achendpoint.state should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'state', 'character varying(2)', 'Column bsf_prod_ach_bitemporal.achendpoint.state should be type character varying(2)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'state', 'Column bsf_prod_ach_bitemporal.achendpoint.state should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'state', 'Column bsf_prod_ach_bitemporal.achendpoint.state should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'effective', 'Column bsf_prod_ach_bitemporal.achendpoint.effective should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achendpoint.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'effective', 'Column bsf_prod_ach_bitemporal.achendpoint.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'effective', 'Column bsf_prod_ach_bitemporal.achendpoint.effective should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'asserted', 'Column bsf_prod_ach_bitemporal.achendpoint.asserted should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achendpoint.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'asserted', 'Column bsf_prod_ach_bitemporal.achendpoint.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'asserted', 'Column bsf_prod_ach_bitemporal.achendpoint.asserted should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achendpoint.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achendpoint.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achendpoint.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achendpoint.row_created_at should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'filebatch', 'Column bsf_prod_ach_bitemporal.achendpoint.filebatch should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'filebatch', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.filebatch should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'filebatch', 'Column bsf_prod_ach_bitemporal.achendpoint.filebatch should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'filebatch', 'Column bsf_prod_ach_bitemporal.achendpoint.filebatch should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'achbatchheaderorig_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achbatchheaderorig_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'achbatchheaderorig_id', 'integer', 'Column bsf_prod_ach_bitemporal.achendpoint.achbatchheaderorig_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'achbatchheaderorig_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achbatchheaderorig_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'achbatchheaderorig_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achbatchheaderorig_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'achbatchheaderpymt_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achbatchheaderpymt_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'achbatchheaderpymt_id', 'integer', 'Column bsf_prod_ach_bitemporal.achendpoint.achbatchheaderpymt_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'achbatchheaderpymt_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achbatchheaderpymt_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'achbatchheaderpymt_id', 'Column bsf_prod_ach_bitemporal.achendpoint.achbatchheaderpymt_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'last_updated', 'Column bsf_prod_ach_bitemporal.achendpoint.last_updated should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achendpoint.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'last_updated', 'Column bsf_prod_ach_bitemporal.achendpoint.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'last_updated', 'Column bsf_prod_ach_bitemporal.achendpoint.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'product', 'Column bsf_prod_ach_bitemporal.achendpoint.product should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'product', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.product should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'product', 'Column bsf_prod_ach_bitemporal.achendpoint.product should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'product', 'Column bsf_prod_ach_bitemporal.achendpoint.product should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achendpoint', 'brand', 'Column bsf_prod_ach_bitemporal.achendpoint.brand should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achendpoint', 'brand', 'text', 'Column bsf_prod_ach_bitemporal.achendpoint.brand should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achendpoint', 'brand', 'Column bsf_prod_ach_bitemporal.achendpoint.brand should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achendpoint', 'brand', 'Column bsf_prod_ach_bitemporal.achendpoint.brand should not  have a default');

SELECT * FROM finish();
ROLLBACK;
