SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan__rule_applied_duedate',
    'Should have foreign table loan_pro_chorus_fdw._loan__rule_applied_duedate'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan__rule_applied_duedate',
    'Table loan_pro_chorus_fdw._loan__rule_applied_duedate should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan__rule_applied_duedate'::name, ARRAY[
    'loan_id'::name,
    'rule_applied_duedate_id'::name,
    'enabled'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'rule_applied_duedate_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.rule_applied_duedate_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'rule_applied_duedate_id', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.rule_applied_duedate_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'rule_applied_duedate_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.rule_applied_duedate_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'rule_applied_duedate_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.rule_applied_duedate_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'enabled', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_duedate', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_duedate.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
