SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(71);

SELECT has_foreign_table(
    'loan_pro_fdw', '_loan_reverse_status_archive',
    'Should have foreign table loan_pro_fdw._loan_reverse_status_archive'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_loan_reverse_status_archive',
    'Table loan_pro_fdw._loan_reverse_status_archive should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_loan_reverse_status_archive'::name, ARRAY[
    'loan_id'::name,
    'date'::name,
    'mod_id'::name,
    'principal_balance'::name,
    'payoff_fees'::name,
    'loan_age'::name,
    'amount_past_due_30'::name,
    'days_past_due'::name,
    'daily_accrued_interest'::name,
    'due_discount'::name,
    'due_interest'::name,
    'due_fees'::name,
    'due_principal'::name,
    'due_escrows'::name,
    'net_charge_off'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'loan_id', 'Column loan_pro_fdw._loan_reverse_status_archive.loan_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'loan_id', 'integer', 'Column loan_pro_fdw._loan_reverse_status_archive.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'loan_id', 'Column loan_pro_fdw._loan_reverse_status_archive.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'loan_id', 'Column loan_pro_fdw._loan_reverse_status_archive.loan_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'date', 'Column loan_pro_fdw._loan_reverse_status_archive.date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'date', 'date', 'Column loan_pro_fdw._loan_reverse_status_archive.date should be type date');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'date', 'Column loan_pro_fdw._loan_reverse_status_archive.date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'date', 'Column loan_pro_fdw._loan_reverse_status_archive.date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'mod_id', 'Column loan_pro_fdw._loan_reverse_status_archive.mod_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'mod_id', 'integer', 'Column loan_pro_fdw._loan_reverse_status_archive.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'mod_id', 'Column loan_pro_fdw._loan_reverse_status_archive.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'mod_id', 'Column loan_pro_fdw._loan_reverse_status_archive.mod_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'principal_balance', 'Column loan_pro_fdw._loan_reverse_status_archive.principal_balance should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'principal_balance', 'numeric(11,2)', 'Column loan_pro_fdw._loan_reverse_status_archive.principal_balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'principal_balance', 'Column loan_pro_fdw._loan_reverse_status_archive.principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'principal_balance', 'Column loan_pro_fdw._loan_reverse_status_archive.principal_balance should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'payoff_fees', 'Column loan_pro_fdw._loan_reverse_status_archive.payoff_fees should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'payoff_fees', 'numeric(11,2)', 'Column loan_pro_fdw._loan_reverse_status_archive.payoff_fees should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'payoff_fees', 'Column loan_pro_fdw._loan_reverse_status_archive.payoff_fees should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'payoff_fees', 'Column loan_pro_fdw._loan_reverse_status_archive.payoff_fees should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'loan_age', 'Column loan_pro_fdw._loan_reverse_status_archive.loan_age should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'loan_age', 'integer', 'Column loan_pro_fdw._loan_reverse_status_archive.loan_age should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'loan_age', 'Column loan_pro_fdw._loan_reverse_status_archive.loan_age should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'loan_age', 'Column loan_pro_fdw._loan_reverse_status_archive.loan_age should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'amount_past_due_30', 'Column loan_pro_fdw._loan_reverse_status_archive.amount_past_due_30 should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'amount_past_due_30', 'numeric(11,2)', 'Column loan_pro_fdw._loan_reverse_status_archive.amount_past_due_30 should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'amount_past_due_30', 'Column loan_pro_fdw._loan_reverse_status_archive.amount_past_due_30 should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'amount_past_due_30', 'Column loan_pro_fdw._loan_reverse_status_archive.amount_past_due_30 should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'days_past_due', 'Column loan_pro_fdw._loan_reverse_status_archive.days_past_due should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'days_past_due', 'integer', 'Column loan_pro_fdw._loan_reverse_status_archive.days_past_due should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'days_past_due', 'Column loan_pro_fdw._loan_reverse_status_archive.days_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'days_past_due', 'Column loan_pro_fdw._loan_reverse_status_archive.days_past_due should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'daily_accrued_interest', 'Column loan_pro_fdw._loan_reverse_status_archive.daily_accrued_interest should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'daily_accrued_interest', 'numeric(16,7)', 'Column loan_pro_fdw._loan_reverse_status_archive.daily_accrued_interest should be type numeric(16,7)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'daily_accrued_interest', 'Column loan_pro_fdw._loan_reverse_status_archive.daily_accrued_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'daily_accrued_interest', 'Column loan_pro_fdw._loan_reverse_status_archive.daily_accrued_interest should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'due_discount', 'Column loan_pro_fdw._loan_reverse_status_archive.due_discount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_discount', 'numeric(11,2)', 'Column loan_pro_fdw._loan_reverse_status_archive.due_discount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_discount', 'Column loan_pro_fdw._loan_reverse_status_archive.due_discount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'due_discount', 'Column loan_pro_fdw._loan_reverse_status_archive.due_discount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'due_interest', 'Column loan_pro_fdw._loan_reverse_status_archive.due_interest should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_interest', 'numeric(11,2)', 'Column loan_pro_fdw._loan_reverse_status_archive.due_interest should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_interest', 'Column loan_pro_fdw._loan_reverse_status_archive.due_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'due_interest', 'Column loan_pro_fdw._loan_reverse_status_archive.due_interest should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'due_fees', 'Column loan_pro_fdw._loan_reverse_status_archive.due_fees should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_fees', 'numeric(11,2)', 'Column loan_pro_fdw._loan_reverse_status_archive.due_fees should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_fees', 'Column loan_pro_fdw._loan_reverse_status_archive.due_fees should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'due_fees', 'Column loan_pro_fdw._loan_reverse_status_archive.due_fees should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'due_principal', 'Column loan_pro_fdw._loan_reverse_status_archive.due_principal should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_principal', 'numeric(11,2)', 'Column loan_pro_fdw._loan_reverse_status_archive.due_principal should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_principal', 'Column loan_pro_fdw._loan_reverse_status_archive.due_principal should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'due_principal', 'Column loan_pro_fdw._loan_reverse_status_archive.due_principal should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'due_escrows', 'Column loan_pro_fdw._loan_reverse_status_archive.due_escrows should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_escrows', 'text', 'Column loan_pro_fdw._loan_reverse_status_archive.due_escrows should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'due_escrows', 'Column loan_pro_fdw._loan_reverse_status_archive.due_escrows should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'due_escrows', 'Column loan_pro_fdw._loan_reverse_status_archive.due_escrows should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'net_charge_off', 'Column loan_pro_fdw._loan_reverse_status_archive.net_charge_off should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'net_charge_off', 'numeric(11,2)', 'Column loan_pro_fdw._loan_reverse_status_archive.net_charge_off should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'net_charge_off', 'Column loan_pro_fdw._loan_reverse_status_archive.net_charge_off should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'net_charge_off', 'Column loan_pro_fdw._loan_reverse_status_archive.net_charge_off should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'deleted', 'Column loan_pro_fdw._loan_reverse_status_archive.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'deleted', 'integer', 'Column loan_pro_fdw._loan_reverse_status_archive.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'deleted', 'Column loan_pro_fdw._loan_reverse_status_archive.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'deleted', 'Column loan_pro_fdw._loan_reverse_status_archive.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_reverse_status_archive', 'lastupdated', 'Column loan_pro_fdw._loan_reverse_status_archive.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_reverse_status_archive', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._loan_reverse_status_archive.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_loan_reverse_status_archive', 'lastupdated', 'Column loan_pro_fdw._loan_reverse_status_archive.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_reverse_status_archive', 'lastupdated', 'Column loan_pro_fdw._loan_reverse_status_archive.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
