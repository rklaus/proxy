SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'bsf_prod_ach', 'achbatchheader',
    'Should have foreign table bsf_prod_ach.achbatchheader'
);

SELECT hasnt_pk(
    'bsf_prod_ach', 'achbatchheader',
    'Table bsf_prod_ach.achbatchheader should have a primary key'
);

SELECT columns_are('bsf_prod_ach'::name, 'achbatchheader'::name, ARRAY[
    'achbatchheader_id'::name,
    'achfileheader_id'::name,
    'companyname'::name,
    'companydiscretionarydata'::name,
    'companyidentificationnumber'::name,
    'companyentrydescription'::name,
    'originatingdfiroutingnumber'::name
]);

SELECT has_column(       'bsf_prod_ach', 'achbatchheader', 'achbatchheader_id', 'Column bsf_prod_ach.achbatchheader.achbatchheader_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchheader', 'achbatchheader_id', 'integer', 'Column bsf_prod_ach.achbatchheader.achbatchheader_id should be type integer');
SELECT col_not_null(     'bsf_prod_ach', 'achbatchheader', 'achbatchheader_id', 'Column bsf_prod_ach.achbatchheader.achbatchheader_id should be NOT NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchheader', 'achbatchheader_id', 'Column bsf_prod_ach.achbatchheader.achbatchheader_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchheader', 'achfileheader_id', 'Column bsf_prod_ach.achbatchheader.achfileheader_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchheader', 'achfileheader_id', 'integer', 'Column bsf_prod_ach.achbatchheader.achfileheader_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchheader', 'achfileheader_id', 'Column bsf_prod_ach.achbatchheader.achfileheader_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchheader', 'achfileheader_id', 'Column bsf_prod_ach.achbatchheader.achfileheader_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchheader', 'companyname', 'Column bsf_prod_ach.achbatchheader.companyname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchheader', 'companyname', 'text', 'Column bsf_prod_ach.achbatchheader.companyname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchheader', 'companyname', 'Column bsf_prod_ach.achbatchheader.companyname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchheader', 'companyname', 'Column bsf_prod_ach.achbatchheader.companyname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchheader', 'companydiscretionarydata', 'Column bsf_prod_ach.achbatchheader.companydiscretionarydata should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchheader', 'companydiscretionarydata', 'text', 'Column bsf_prod_ach.achbatchheader.companydiscretionarydata should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchheader', 'companydiscretionarydata', 'Column bsf_prod_ach.achbatchheader.companydiscretionarydata should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchheader', 'companydiscretionarydata', 'Column bsf_prod_ach.achbatchheader.companydiscretionarydata should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchheader', 'companyidentificationnumber', 'Column bsf_prod_ach.achbatchheader.companyidentificationnumber should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchheader', 'companyidentificationnumber', 'text', 'Column bsf_prod_ach.achbatchheader.companyidentificationnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchheader', 'companyidentificationnumber', 'Column bsf_prod_ach.achbatchheader.companyidentificationnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchheader', 'companyidentificationnumber', 'Column bsf_prod_ach.achbatchheader.companyidentificationnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchheader', 'companyentrydescription', 'Column bsf_prod_ach.achbatchheader.companyentrydescription should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchheader', 'companyentrydescription', 'text', 'Column bsf_prod_ach.achbatchheader.companyentrydescription should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchheader', 'companyentrydescription', 'Column bsf_prod_ach.achbatchheader.companyentrydescription should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchheader', 'companyentrydescription', 'Column bsf_prod_ach.achbatchheader.companyentrydescription should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchheader', 'originatingdfiroutingnumber', 'Column bsf_prod_ach.achbatchheader.originatingdfiroutingnumber should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchheader', 'originatingdfiroutingnumber', 'bigint', 'Column bsf_prod_ach.achbatchheader.originatingdfiroutingnumber should be type bigint');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchheader', 'originatingdfiroutingnumber', 'Column bsf_prod_ach.achbatchheader.originatingdfiroutingnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchheader', 'originatingdfiroutingnumber', 'Column bsf_prod_ach.achbatchheader.originatingdfiroutingnumber should not  have a default');

SELECT * FROM finish();
ROLLBACK;
