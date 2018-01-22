SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'bsf_prod_origination', 'rmodel_ev1',
    'Should have foreign table bsf_prod_origination.rmodel_ev1'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'rmodel_ev1',
    'Table bsf_prod_origination.rmodel_ev1 should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'rmodel_ev1'::name, ARRAY[
    'application_id'::name,
    'rmodel_raw_output_id'::name,
    'fraud_decision_id'::name,
    'fraud_reason_codes'::name,
    'last_updated'::name
]);

SELECT has_column(       'bsf_prod_origination', 'rmodel_ev1', 'application_id', 'Column bsf_prod_origination.rmodel_ev1.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_ev1', 'application_id', 'bigint', 'Column bsf_prod_origination.rmodel_ev1.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_ev1', 'application_id', 'Column bsf_prod_origination.rmodel_ev1.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_ev1', 'application_id', 'Column bsf_prod_origination.rmodel_ev1.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_ev1', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_ev1.rmodel_raw_output_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_ev1', 'rmodel_raw_output_id', 'bigint', 'Column bsf_prod_origination.rmodel_ev1.rmodel_raw_output_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_ev1', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_ev1.rmodel_raw_output_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_ev1', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_ev1.rmodel_raw_output_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_ev1', 'fraud_decision_id', 'Column bsf_prod_origination.rmodel_ev1.fraud_decision_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_ev1', 'fraud_decision_id', 'bigint', 'Column bsf_prod_origination.rmodel_ev1.fraud_decision_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_ev1', 'fraud_decision_id', 'Column bsf_prod_origination.rmodel_ev1.fraud_decision_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_ev1', 'fraud_decision_id', 'Column bsf_prod_origination.rmodel_ev1.fraud_decision_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_ev1', 'fraud_reason_codes', 'Column bsf_prod_origination.rmodel_ev1.fraud_reason_codes should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_ev1', 'fraud_reason_codes', 'text', 'Column bsf_prod_origination.rmodel_ev1.fraud_reason_codes should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_ev1', 'fraud_reason_codes', 'Column bsf_prod_origination.rmodel_ev1.fraud_reason_codes should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_ev1', 'fraud_reason_codes', 'Column bsf_prod_origination.rmodel_ev1.fraud_reason_codes should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_ev1', 'last_updated', 'Column bsf_prod_origination.rmodel_ev1.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_ev1', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.rmodel_ev1.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_ev1', 'last_updated', 'Column bsf_prod_origination.rmodel_ev1.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_ev1', 'last_updated', 'Column bsf_prod_origination.rmodel_ev1.last_updated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
