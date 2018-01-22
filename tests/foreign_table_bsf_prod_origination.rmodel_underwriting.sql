SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'bsf_prod_origination', 'rmodel_underwriting',
    'Should have foreign table bsf_prod_origination.rmodel_underwriting'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'rmodel_underwriting',
    'Table bsf_prod_origination.rmodel_underwriting should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'rmodel_underwriting'::name, ARRAY[
    'application_id'::name,
    'rmodel_raw_output_id'::name,
    'decision_id'::name,
    'max_loan_amount'::name,
    'last_updated'::name,
    'vantage_score'::name,
    'vantage_reason_1'::name,
    'vantage_reason_2'::name,
    'vantage_reason_3'::name,
    'vantage_reason_4'::name,
    'credit_report_date'::name
]);

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'application_id', 'Column bsf_prod_origination.rmodel_underwriting.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'application_id', 'bigint', 'Column bsf_prod_origination.rmodel_underwriting.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'application_id', 'Column bsf_prod_origination.rmodel_underwriting.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'application_id', 'Column bsf_prod_origination.rmodel_underwriting.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_underwriting.rmodel_raw_output_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'rmodel_raw_output_id', 'bigint', 'Column bsf_prod_origination.rmodel_underwriting.rmodel_raw_output_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_underwriting.rmodel_raw_output_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'rmodel_raw_output_id', 'Column bsf_prod_origination.rmodel_underwriting.rmodel_raw_output_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'decision_id', 'Column bsf_prod_origination.rmodel_underwriting.decision_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'decision_id', 'bigint', 'Column bsf_prod_origination.rmodel_underwriting.decision_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'decision_id', 'Column bsf_prod_origination.rmodel_underwriting.decision_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'decision_id', 'Column bsf_prod_origination.rmodel_underwriting.decision_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'max_loan_amount', 'Column bsf_prod_origination.rmodel_underwriting.max_loan_amount should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'max_loan_amount', 'numeric(7,2)', 'Column bsf_prod_origination.rmodel_underwriting.max_loan_amount should be type numeric(7,2)');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'max_loan_amount', 'Column bsf_prod_origination.rmodel_underwriting.max_loan_amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'max_loan_amount', 'Column bsf_prod_origination.rmodel_underwriting.max_loan_amount should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'last_updated', 'Column bsf_prod_origination.rmodel_underwriting.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.rmodel_underwriting.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'last_updated', 'Column bsf_prod_origination.rmodel_underwriting.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'last_updated', 'Column bsf_prod_origination.rmodel_underwriting.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'vantage_score', 'Column bsf_prod_origination.rmodel_underwriting.vantage_score should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_score', 'text', 'Column bsf_prod_origination.rmodel_underwriting.vantage_score should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_score', 'Column bsf_prod_origination.rmodel_underwriting.vantage_score should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'vantage_score', 'Column bsf_prod_origination.rmodel_underwriting.vantage_score should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_1', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_1 should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_1', 'text', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_1 should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_1', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_1 should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_1', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_1 should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_2', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_2 should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_2', 'text', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_2 should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_2', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_2 should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_2', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_2 should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_3', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_3 should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_3', 'text', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_3 should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_3', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_3 should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_3', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_3 should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_4', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_4 should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_4', 'text', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_4 should be type text');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_4', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_4 should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'vantage_reason_4', 'Column bsf_prod_origination.rmodel_underwriting.vantage_reason_4 should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'rmodel_underwriting', 'credit_report_date', 'Column bsf_prod_origination.rmodel_underwriting.credit_report_date should exist');
SELECT col_type_is(      'bsf_prod_origination', 'rmodel_underwriting', 'credit_report_date', 'date', 'Column bsf_prod_origination.rmodel_underwriting.credit_report_date should be type date');
SELECT col_is_null(      'bsf_prod_origination', 'rmodel_underwriting', 'credit_report_date', 'Column bsf_prod_origination.rmodel_underwriting.credit_report_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'rmodel_underwriting', 'credit_report_date', 'Column bsf_prod_origination.rmodel_underwriting.credit_report_date should not  have a default');

SELECT * FROM finish();
ROLLBACK;
