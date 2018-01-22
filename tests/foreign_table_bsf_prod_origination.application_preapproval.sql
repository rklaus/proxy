SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'bsf_prod_origination', 'application_preapproval',
    'Should have foreign table bsf_prod_origination.application_preapproval'
);

SELECT hasnt_pk(
    'bsf_prod_origination', 'application_preapproval',
    'Table bsf_prod_origination.application_preapproval should have a primary key'
);

SELECT columns_are('bsf_prod_origination'::name, 'application_preapproval'::name, ARRAY[
    'application_id'::name,
    'preapproval_id'::name,
    'match_type'::name,
    'last_updated'::name
]);

SELECT has_column(       'bsf_prod_origination', 'application_preapproval', 'application_id', 'Column bsf_prod_origination.application_preapproval.application_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application_preapproval', 'application_id', 'bigint', 'Column bsf_prod_origination.application_preapproval.application_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'application_preapproval', 'application_id', 'Column bsf_prod_origination.application_preapproval.application_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application_preapproval', 'application_id', 'Column bsf_prod_origination.application_preapproval.application_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application_preapproval', 'preapproval_id', 'Column bsf_prod_origination.application_preapproval.preapproval_id should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application_preapproval', 'preapproval_id', 'bigint', 'Column bsf_prod_origination.application_preapproval.preapproval_id should be type bigint');
SELECT col_is_null(      'bsf_prod_origination', 'application_preapproval', 'preapproval_id', 'Column bsf_prod_origination.application_preapproval.preapproval_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application_preapproval', 'preapproval_id', 'Column bsf_prod_origination.application_preapproval.preapproval_id should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application_preapproval', 'match_type', 'Column bsf_prod_origination.application_preapproval.match_type should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application_preapproval', 'match_type', 'integer', 'Column bsf_prod_origination.application_preapproval.match_type should be type integer');
SELECT col_is_null(      'bsf_prod_origination', 'application_preapproval', 'match_type', 'Column bsf_prod_origination.application_preapproval.match_type should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application_preapproval', 'match_type', 'Column bsf_prod_origination.application_preapproval.match_type should not  have a default');

SELECT has_column(       'bsf_prod_origination', 'application_preapproval', 'last_updated', 'Column bsf_prod_origination.application_preapproval.last_updated should exist');
SELECT col_type_is(      'bsf_prod_origination', 'application_preapproval', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_origination.application_preapproval.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_origination', 'application_preapproval', 'last_updated', 'Column bsf_prod_origination.application_preapproval.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_origination', 'application_preapproval', 'last_updated', 'Column bsf_prod_origination.application_preapproval.last_updated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
