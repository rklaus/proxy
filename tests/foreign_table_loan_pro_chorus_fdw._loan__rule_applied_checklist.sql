SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan__rule_applied_checklist',
    'Should have foreign table loan_pro_chorus_fdw._loan__rule_applied_checklist'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan__rule_applied_checklist',
    'Table loan_pro_chorus_fdw._loan__rule_applied_checklist should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan__rule_applied_checklist'::name, ARRAY[
    'loan_id'::name,
    'rule_applied_checklist_id'::name,
    'enabled'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'rule_applied_checklist_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.rule_applied_checklist_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'rule_applied_checklist_id', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.rule_applied_checklist_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'rule_applied_checklist_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.rule_applied_checklist_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'rule_applied_checklist_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.rule_applied_checklist_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'enabled', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_checklist', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_checklist.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
