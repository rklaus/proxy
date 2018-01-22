SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan__rule_applied_settings',
    'Should have foreign table loan_pro_chorus_sandbox._loan__rule_applied_settings'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan__rule_applied_settings',
    'Table loan_pro_chorus_sandbox._loan__rule_applied_settings should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan__rule_applied_settings'::name, ARRAY[
    'loan_id'::name,
    'rule_applied_settings_id'::name,
    'enabled'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'loan_id', 'integer', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'rule_applied_settings_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.rule_applied_settings_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'rule_applied_settings_id', 'integer', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.rule_applied_settings_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'rule_applied_settings_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.rule_applied_settings_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'rule_applied_settings_id', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.rule_applied_settings_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'enabled', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'enabled', 'integer', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'enabled', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'enabled', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'deleted', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'deleted', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'deleted', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__rule_applied_settings', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__rule_applied_settings.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
