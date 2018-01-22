SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'employment_duration',
    'Should have foreign table bsf_prod_common.employment_duration'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'employment_duration',
    'Table bsf_prod_common.employment_duration should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'employment_duration'::name, ARRAY[
    'employment_duration_id'::name,
    'employment_duration'::name
]);

SELECT has_column(       'bsf_prod_common', 'employment_duration', 'employment_duration_id', 'Column bsf_prod_common.employment_duration.employment_duration_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'employment_duration', 'employment_duration_id', 'integer', 'Column bsf_prod_common.employment_duration.employment_duration_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'employment_duration', 'employment_duration_id', 'Column bsf_prod_common.employment_duration.employment_duration_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'employment_duration', 'employment_duration_id', 'Column bsf_prod_common.employment_duration.employment_duration_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'employment_duration', 'employment_duration', 'Column bsf_prod_common.employment_duration.employment_duration should exist');
SELECT col_type_is(      'bsf_prod_common', 'employment_duration', 'employment_duration', 'text', 'Column bsf_prod_common.employment_duration.employment_duration should be type text');
SELECT col_is_null(      'bsf_prod_common', 'employment_duration', 'employment_duration', 'Column bsf_prod_common.employment_duration.employment_duration should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'employment_duration', 'employment_duration', 'Column bsf_prod_common.employment_duration.employment_duration should not  have a default');

SELECT * FROM finish();
ROLLBACK;
