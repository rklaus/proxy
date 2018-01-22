SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'loan_purpose',
    'Should have foreign table bsf_prod_common.loan_purpose'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'loan_purpose',
    'Table bsf_prod_common.loan_purpose should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'loan_purpose'::name, ARRAY[
    'loan_purpose_id'::name,
    'loan_purpose'::name
]);

SELECT has_column(       'bsf_prod_common', 'loan_purpose', 'loan_purpose_id', 'Column bsf_prod_common.loan_purpose.loan_purpose_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'loan_purpose', 'loan_purpose_id', 'integer', 'Column bsf_prod_common.loan_purpose.loan_purpose_id should be type integer');
SELECT col_is_null(      'bsf_prod_common', 'loan_purpose', 'loan_purpose_id', 'Column bsf_prod_common.loan_purpose.loan_purpose_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'loan_purpose', 'loan_purpose_id', 'Column bsf_prod_common.loan_purpose.loan_purpose_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'loan_purpose', 'loan_purpose', 'Column bsf_prod_common.loan_purpose.loan_purpose should exist');
SELECT col_type_is(      'bsf_prod_common', 'loan_purpose', 'loan_purpose', 'text', 'Column bsf_prod_common.loan_purpose.loan_purpose should be type text');
SELECT col_is_null(      'bsf_prod_common', 'loan_purpose', 'loan_purpose', 'Column bsf_prod_common.loan_purpose.loan_purpose should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'loan_purpose', 'loan_purpose', 'Column bsf_prod_common.loan_purpose.loan_purpose should not  have a default');

SELECT * FROM finish();
ROLLBACK;
