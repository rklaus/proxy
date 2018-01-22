SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'bsf_prod_ach', 'achendpoint',
    'Should have foreign table bsf_prod_ach.achendpoint'
);

SELECT hasnt_pk(
    'bsf_prod_ach', 'achendpoint',
    'Table bsf_prod_ach.achendpoint should have a primary key'
);

SELECT columns_are('bsf_prod_ach'::name, 'achendpoint'::name, ARRAY[
    'achendpoint_id'::name,
    'endpointname'::name,
    'endpointnameorig'::name,
    'endpointnamepymt'::name,
    'endpointtype'::name,
    'loanowner'::name,
    'loanoriginalowner'::name,
    'filebatch'::name,
    'state'::name,
    'achbatchheaderorig_id'::name,
    'achbatchheaderpymt_id'::name
]);

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'achendpoint_id', 'Column bsf_prod_ach.achendpoint.achendpoint_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'achendpoint_id', 'integer', 'Column bsf_prod_ach.achendpoint.achendpoint_id should be type integer');
SELECT col_not_null(     'bsf_prod_ach', 'achendpoint', 'achendpoint_id', 'Column bsf_prod_ach.achendpoint.achendpoint_id should be NOT NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'achendpoint_id', 'Column bsf_prod_ach.achendpoint.achendpoint_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'endpointname', 'Column bsf_prod_ach.achendpoint.endpointname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'endpointname', 'text', 'Column bsf_prod_ach.achendpoint.endpointname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'endpointname', 'Column bsf_prod_ach.achendpoint.endpointname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'endpointname', 'Column bsf_prod_ach.achendpoint.endpointname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'endpointnameorig', 'Column bsf_prod_ach.achendpoint.endpointnameorig should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'endpointnameorig', 'text', 'Column bsf_prod_ach.achendpoint.endpointnameorig should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'endpointnameorig', 'Column bsf_prod_ach.achendpoint.endpointnameorig should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'endpointnameorig', 'Column bsf_prod_ach.achendpoint.endpointnameorig should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'endpointnamepymt', 'Column bsf_prod_ach.achendpoint.endpointnamepymt should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'endpointnamepymt', 'text', 'Column bsf_prod_ach.achendpoint.endpointnamepymt should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'endpointnamepymt', 'Column bsf_prod_ach.achendpoint.endpointnamepymt should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'endpointnamepymt', 'Column bsf_prod_ach.achendpoint.endpointnamepymt should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'endpointtype', 'Column bsf_prod_ach.achendpoint.endpointtype should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'endpointtype', 'text', 'Column bsf_prod_ach.achendpoint.endpointtype should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'endpointtype', 'Column bsf_prod_ach.achendpoint.endpointtype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'endpointtype', 'Column bsf_prod_ach.achendpoint.endpointtype should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'loanowner', 'Column bsf_prod_ach.achendpoint.loanowner should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'loanowner', 'text', 'Column bsf_prod_ach.achendpoint.loanowner should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'loanowner', 'Column bsf_prod_ach.achendpoint.loanowner should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'loanowner', 'Column bsf_prod_ach.achendpoint.loanowner should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'loanoriginalowner', 'Column bsf_prod_ach.achendpoint.loanoriginalowner should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'loanoriginalowner', 'text', 'Column bsf_prod_ach.achendpoint.loanoriginalowner should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'loanoriginalowner', 'Column bsf_prod_ach.achendpoint.loanoriginalowner should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'loanoriginalowner', 'Column bsf_prod_ach.achendpoint.loanoriginalowner should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'filebatch', 'Column bsf_prod_ach.achendpoint.filebatch should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'filebatch', 'text', 'Column bsf_prod_ach.achendpoint.filebatch should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'filebatch', 'Column bsf_prod_ach.achendpoint.filebatch should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'filebatch', 'Column bsf_prod_ach.achendpoint.filebatch should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'state', 'Column bsf_prod_ach.achendpoint.state should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'state', 'character varying(2)', 'Column bsf_prod_ach.achendpoint.state should be type character varying(2)');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'state', 'Column bsf_prod_ach.achendpoint.state should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'state', 'Column bsf_prod_ach.achendpoint.state should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'achbatchheaderorig_id', 'Column bsf_prod_ach.achendpoint.achbatchheaderorig_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'achbatchheaderorig_id', 'integer', 'Column bsf_prod_ach.achendpoint.achbatchheaderorig_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'achbatchheaderorig_id', 'Column bsf_prod_ach.achendpoint.achbatchheaderorig_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'achbatchheaderorig_id', 'Column bsf_prod_ach.achendpoint.achbatchheaderorig_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achendpoint', 'achbatchheaderpymt_id', 'Column bsf_prod_ach.achendpoint.achbatchheaderpymt_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achendpoint', 'achbatchheaderpymt_id', 'integer', 'Column bsf_prod_ach.achendpoint.achbatchheaderpymt_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achendpoint', 'achbatchheaderpymt_id', 'Column bsf_prod_ach.achendpoint.achbatchheaderpymt_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achendpoint', 'achbatchheaderpymt_id', 'Column bsf_prod_ach.achendpoint.achbatchheaderpymt_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
