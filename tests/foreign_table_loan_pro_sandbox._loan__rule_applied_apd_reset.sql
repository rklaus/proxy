SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan__rule_applied_apd_reset',
    'Should have foreign table loan_pro_sandbox._loan__rule_applied_apd_reset'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan__rule_applied_apd_reset',
    'Table loan_pro_sandbox._loan__rule_applied_apd_reset should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan__rule_applied_apd_reset'::name, ARRAY[
    'loan_id'::name,
    'rule_applied_apd_reset_id'::name,
    'enabled'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'loan_id', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'loan_id', 'integer', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'loan_id', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'loan_id', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'rule_applied_apd_reset_id', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.rule_applied_apd_reset_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'rule_applied_apd_reset_id', 'integer', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.rule_applied_apd_reset_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'rule_applied_apd_reset_id', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.rule_applied_apd_reset_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'rule_applied_apd_reset_id', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.rule_applied_apd_reset_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'enabled', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'enabled', 'integer', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'enabled', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'enabled', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'deleted', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'deleted', 'integer', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'deleted', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'deleted', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'lastupdated', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'lastupdated', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan__rule_applied_apd_reset', 'lastupdated', 'Column loan_pro_sandbox._loan__rule_applied_apd_reset.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
