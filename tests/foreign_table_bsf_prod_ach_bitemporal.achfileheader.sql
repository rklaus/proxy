SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'bsf_prod_ach_bitemporal', 'achfileheader',
    'Should have foreign table bsf_prod_ach_bitemporal.achfileheader'
);

SELECT hasnt_pk(
    'bsf_prod_ach_bitemporal', 'achfileheader',
    'Table bsf_prod_ach_bitemporal.achfileheader should have a primary key'
);

SELECT columns_are('bsf_prod_ach_bitemporal'::name, 'achfileheader'::name, ARRAY[
    'achfileheader_key'::name,
    'achfileheader_id'::name,
    'immediateoriginname'::name,
    'immediateoriginidentificationnumber'::name,
    'immediatedestinationname'::name,
    'immediatedestinationroutingnumber'::name,
    'referencecode'::name,
    'last_updated'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name
]);

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'achfileheader_key', 'Column bsf_prod_ach_bitemporal.achfileheader.achfileheader_key should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'achfileheader_key', 'integer', 'Column bsf_prod_ach_bitemporal.achfileheader.achfileheader_key should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'achfileheader_key', 'Column bsf_prod_ach_bitemporal.achfileheader.achfileheader_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'achfileheader_key', 'Column bsf_prod_ach_bitemporal.achfileheader.achfileheader_key should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'achfileheader_id', 'Column bsf_prod_ach_bitemporal.achfileheader.achfileheader_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'achfileheader_id', 'integer', 'Column bsf_prod_ach_bitemporal.achfileheader.achfileheader_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'achfileheader_id', 'Column bsf_prod_ach_bitemporal.achfileheader.achfileheader_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'achfileheader_id', 'Column bsf_prod_ach_bitemporal.achfileheader.achfileheader_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'immediateoriginname', 'Column bsf_prod_ach_bitemporal.achfileheader.immediateoriginname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'immediateoriginname', 'text', 'Column bsf_prod_ach_bitemporal.achfileheader.immediateoriginname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'immediateoriginname', 'Column bsf_prod_ach_bitemporal.achfileheader.immediateoriginname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'immediateoriginname', 'Column bsf_prod_ach_bitemporal.achfileheader.immediateoriginname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'immediateoriginidentificationnumber', 'Column bsf_prod_ach_bitemporal.achfileheader.immediateoriginidentificationnumber should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'immediateoriginidentificationnumber', 'bigint', 'Column bsf_prod_ach_bitemporal.achfileheader.immediateoriginidentificationnumber should be type bigint');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'immediateoriginidentificationnumber', 'Column bsf_prod_ach_bitemporal.achfileheader.immediateoriginidentificationnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'immediateoriginidentificationnumber', 'Column bsf_prod_ach_bitemporal.achfileheader.immediateoriginidentificationnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'immediatedestinationname', 'Column bsf_prod_ach_bitemporal.achfileheader.immediatedestinationname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'immediatedestinationname', 'text', 'Column bsf_prod_ach_bitemporal.achfileheader.immediatedestinationname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'immediatedestinationname', 'Column bsf_prod_ach_bitemporal.achfileheader.immediatedestinationname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'immediatedestinationname', 'Column bsf_prod_ach_bitemporal.achfileheader.immediatedestinationname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'immediatedestinationroutingnumber', 'Column bsf_prod_ach_bitemporal.achfileheader.immediatedestinationroutingnumber should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'immediatedestinationroutingnumber', 'bigint', 'Column bsf_prod_ach_bitemporal.achfileheader.immediatedestinationroutingnumber should be type bigint');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'immediatedestinationroutingnumber', 'Column bsf_prod_ach_bitemporal.achfileheader.immediatedestinationroutingnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'immediatedestinationroutingnumber', 'Column bsf_prod_ach_bitemporal.achfileheader.immediatedestinationroutingnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'referencecode', 'Column bsf_prod_ach_bitemporal.achfileheader.referencecode should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'referencecode', 'text', 'Column bsf_prod_ach_bitemporal.achfileheader.referencecode should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'referencecode', 'Column bsf_prod_ach_bitemporal.achfileheader.referencecode should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'referencecode', 'Column bsf_prod_ach_bitemporal.achfileheader.referencecode should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfileheader.last_updated should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achfileheader.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfileheader.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfileheader.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'effective', 'Column bsf_prod_ach_bitemporal.achfileheader.effective should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achfileheader.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'effective', 'Column bsf_prod_ach_bitemporal.achfileheader.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'effective', 'Column bsf_prod_ach_bitemporal.achfileheader.effective should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'asserted', 'Column bsf_prod_ach_bitemporal.achfileheader.asserted should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achfileheader.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'asserted', 'Column bsf_prod_ach_bitemporal.achfileheader.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'asserted', 'Column bsf_prod_ach_bitemporal.achfileheader.asserted should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfileheader', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfileheader.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfileheader', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achfileheader.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfileheader', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfileheader.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfileheader', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfileheader.row_created_at should not  have a default');

SELECT * FROM finish();
ROLLBACK;
