SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'bsf_prod_common', 'fraud_decision',
    'Should have foreign table bsf_prod_common.fraud_decision'
);

SELECT hasnt_pk(
    'bsf_prod_common', 'fraud_decision',
    'Table bsf_prod_common.fraud_decision should have a primary key'
);

SELECT columns_are('bsf_prod_common'::name, 'fraud_decision'::name, ARRAY[
    'fraud_decision_id'::name,
    'fraud_decision'::name
]);

SELECT has_column(       'bsf_prod_common', 'fraud_decision', 'fraud_decision_id', 'Column bsf_prod_common.fraud_decision.fraud_decision_id should exist');
SELECT col_type_is(      'bsf_prod_common', 'fraud_decision', 'fraud_decision_id', 'bigint', 'Column bsf_prod_common.fraud_decision.fraud_decision_id should be type bigint');
SELECT col_is_null(      'bsf_prod_common', 'fraud_decision', 'fraud_decision_id', 'Column bsf_prod_common.fraud_decision.fraud_decision_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'fraud_decision', 'fraud_decision_id', 'Column bsf_prod_common.fraud_decision.fraud_decision_id should not  have a default');

SELECT has_column(       'bsf_prod_common', 'fraud_decision', 'fraud_decision', 'Column bsf_prod_common.fraud_decision.fraud_decision should exist');
SELECT col_type_is(      'bsf_prod_common', 'fraud_decision', 'fraud_decision', 'text', 'Column bsf_prod_common.fraud_decision.fraud_decision should be type text');
SELECT col_is_null(      'bsf_prod_common', 'fraud_decision', 'fraud_decision', 'Column bsf_prod_common.fraud_decision.fraud_decision should allow NULL');
SELECT col_hasnt_default('bsf_prod_common', 'fraud_decision', 'fraud_decision', 'Column bsf_prod_common.fraud_decision.fraud_decision should not  have a default');

SELECT * FROM finish();
ROLLBACK;
