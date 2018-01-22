SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off',
    'Should have foreign table loan_pro_chorus_fdw._loan__rule_applied_charge_off'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off',
    'Table loan_pro_chorus_fdw._loan__rule_applied_charge_off should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan__rule_applied_charge_off'::name, ARRAY[
    'loan_id'::name,
    'rule_applied_charge_off_id'::name,
    'enabled'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'loan_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'rule_applied_charge_off_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.rule_applied_charge_off_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'rule_applied_charge_off_id', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.rule_applied_charge_off_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'rule_applied_charge_off_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.rule_applied_charge_off_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'rule_applied_charge_off_id', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.rule_applied_charge_off_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'enabled', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'enabled', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'deleted', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan__rule_applied_charge_off', 'lastupdated', 'Column loan_pro_chorus_fdw._loan__rule_applied_charge_off.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
