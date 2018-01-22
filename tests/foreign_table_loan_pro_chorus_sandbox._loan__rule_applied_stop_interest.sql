SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest',
    'Should have foreign table loan_pro_chorus_sandbox._loan__rule_applied_stop_interest'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest',
    'Table loan_pro_chorus_sandbox._loan__rule_applied_stop_interest should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan__rule_applied_stop_interest'::name, ARRAY[
    'loan_id'::name,
    'rule_applied_stop_interest_id'::name,
    'enabled'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'loan_id', 'integer', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'rule_applied_stop_interest_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.rule_applied_stop_interest_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'rule_applied_stop_interest_id', 'integer', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.rule_applied_stop_interest_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'rule_applied_stop_interest_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.rule_applied_stop_interest_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'rule_applied_stop_interest_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.rule_applied_stop_interest_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'enabled', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'enabled', 'integer', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'enabled', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'enabled', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'deleted', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'deleted', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'deleted', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_stop_interest', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__rule_applied_stop_interest.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
