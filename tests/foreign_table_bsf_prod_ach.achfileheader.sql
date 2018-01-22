SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'bsf_prod_ach', 'achfileheader',
    'Should have foreign table bsf_prod_ach.achfileheader'
);

SELECT hasnt_pk(
    'bsf_prod_ach', 'achfileheader',
    'Table bsf_prod_ach.achfileheader should have a primary key'
);

SELECT columns_are('bsf_prod_ach'::name, 'achfileheader'::name, ARRAY[
    'achfileheader_id'::name,
    'immediateoriginname'::name,
    'immediateoriginidentificationnumber'::name,
    'immediatedestinationname'::name,
    'immediatedestinationroutingnumber'::name,
    'referencecode'::name
]);

SELECT has_column(       'bsf_prod_ach', 'achfileheader', 'achfileheader_id', 'Column bsf_prod_ach.achfileheader.achfileheader_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfileheader', 'achfileheader_id', 'integer', 'Column bsf_prod_ach.achfileheader.achfileheader_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achfileheader', 'achfileheader_id', 'Column bsf_prod_ach.achfileheader.achfileheader_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfileheader', 'achfileheader_id', 'Column bsf_prod_ach.achfileheader.achfileheader_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfileheader', 'immediateoriginname', 'Column bsf_prod_ach.achfileheader.immediateoriginname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfileheader', 'immediateoriginname', 'text', 'Column bsf_prod_ach.achfileheader.immediateoriginname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfileheader', 'immediateoriginname', 'Column bsf_prod_ach.achfileheader.immediateoriginname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfileheader', 'immediateoriginname', 'Column bsf_prod_ach.achfileheader.immediateoriginname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfileheader', 'immediateoriginidentificationnumber', 'Column bsf_prod_ach.achfileheader.immediateoriginidentificationnumber should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfileheader', 'immediateoriginidentificationnumber', 'bigint', 'Column bsf_prod_ach.achfileheader.immediateoriginidentificationnumber should be type bigint');
SELECT col_is_null(      'bsf_prod_ach', 'achfileheader', 'immediateoriginidentificationnumber', 'Column bsf_prod_ach.achfileheader.immediateoriginidentificationnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfileheader', 'immediateoriginidentificationnumber', 'Column bsf_prod_ach.achfileheader.immediateoriginidentificationnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfileheader', 'immediatedestinationname', 'Column bsf_prod_ach.achfileheader.immediatedestinationname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfileheader', 'immediatedestinationname', 'text', 'Column bsf_prod_ach.achfileheader.immediatedestinationname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfileheader', 'immediatedestinationname', 'Column bsf_prod_ach.achfileheader.immediatedestinationname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfileheader', 'immediatedestinationname', 'Column bsf_prod_ach.achfileheader.immediatedestinationname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfileheader', 'immediatedestinationroutingnumber', 'Column bsf_prod_ach.achfileheader.immediatedestinationroutingnumber should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfileheader', 'immediatedestinationroutingnumber', 'bigint', 'Column bsf_prod_ach.achfileheader.immediatedestinationroutingnumber should be type bigint');
SELECT col_is_null(      'bsf_prod_ach', 'achfileheader', 'immediatedestinationroutingnumber', 'Column bsf_prod_ach.achfileheader.immediatedestinationroutingnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfileheader', 'immediatedestinationroutingnumber', 'Column bsf_prod_ach.achfileheader.immediatedestinationroutingnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfileheader', 'referencecode', 'Column bsf_prod_ach.achfileheader.referencecode should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfileheader', 'referencecode', 'text', 'Column bsf_prod_ach.achfileheader.referencecode should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfileheader', 'referencecode', 'Column bsf_prod_ach.achfileheader.referencecode should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfileheader', 'referencecode', 'Column bsf_prod_ach.achfileheader.referencecode should not  have a default');

SELECT * FROM finish();
ROLLBACK;
