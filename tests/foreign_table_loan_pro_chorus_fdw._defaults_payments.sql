SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_defaults_payments',
    'Should have foreign table loan_pro_chorus_fdw._defaults_payments'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_defaults_payments',
    'Table loan_pro_chorus_fdw._defaults_payments should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_defaults_payments'::name, ARRAY[
    'id'::name,
    'loan_class'::name,
    'loan_type'::name,
    'payment_type'::name,
    'payment_method_id'::name,
    'extra_towards_transactions'::name,
    'extra_towards_periods'::name,
    'charge_fee'::name,
    'early_payment'::name,
    'echeck_auth_type'::name,
    'reset_past_due'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'id', 'Column loan_pro_chorus_fdw._defaults_payments.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'id', 'integer', 'Column loan_pro_chorus_fdw._defaults_payments.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'id', 'Column loan_pro_chorus_fdw._defaults_payments.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'id', 'Column loan_pro_chorus_fdw._defaults_payments.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_payments.loan_class should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'loan_class', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_payments.loan_class should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_payments.loan_class should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_payments.loan_class should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_payments.loan_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'loan_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_payments.loan_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_payments.loan_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_payments.loan_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'payment_type', 'Column loan_pro_chorus_fdw._defaults_payments.payment_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'payment_type', 'integer', 'Column loan_pro_chorus_fdw._defaults_payments.payment_type should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'payment_type', 'Column loan_pro_chorus_fdw._defaults_payments.payment_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'payment_type', 'Column loan_pro_chorus_fdw._defaults_payments.payment_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'payment_method_id', 'Column loan_pro_chorus_fdw._defaults_payments.payment_method_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'payment_method_id', 'integer', 'Column loan_pro_chorus_fdw._defaults_payments.payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'payment_method_id', 'Column loan_pro_chorus_fdw._defaults_payments.payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'payment_method_id', 'Column loan_pro_chorus_fdw._defaults_payments.payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'extra_towards_transactions', 'Column loan_pro_chorus_fdw._defaults_payments.extra_towards_transactions should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'extra_towards_transactions', 'character(40)', 'Column loan_pro_chorus_fdw._defaults_payments.extra_towards_transactions should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'extra_towards_transactions', 'Column loan_pro_chorus_fdw._defaults_payments.extra_towards_transactions should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'extra_towards_transactions', 'Column loan_pro_chorus_fdw._defaults_payments.extra_towards_transactions should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'extra_towards_periods', 'Column loan_pro_chorus_fdw._defaults_payments.extra_towards_periods should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'extra_towards_periods', 'character(40)', 'Column loan_pro_chorus_fdw._defaults_payments.extra_towards_periods should be type character(40)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'extra_towards_periods', 'Column loan_pro_chorus_fdw._defaults_payments.extra_towards_periods should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'extra_towards_periods', 'Column loan_pro_chorus_fdw._defaults_payments.extra_towards_periods should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'charge_fee', 'Column loan_pro_chorus_fdw._defaults_payments.charge_fee should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'charge_fee', 'integer', 'Column loan_pro_chorus_fdw._defaults_payments.charge_fee should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'charge_fee', 'Column loan_pro_chorus_fdw._defaults_payments.charge_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'charge_fee', 'Column loan_pro_chorus_fdw._defaults_payments.charge_fee should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'early_payment', 'Column loan_pro_chorus_fdw._defaults_payments.early_payment should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'early_payment', 'integer', 'Column loan_pro_chorus_fdw._defaults_payments.early_payment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'early_payment', 'Column loan_pro_chorus_fdw._defaults_payments.early_payment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'early_payment', 'Column loan_pro_chorus_fdw._defaults_payments.early_payment should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'echeck_auth_type', 'Column loan_pro_chorus_fdw._defaults_payments.echeck_auth_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'echeck_auth_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_payments.echeck_auth_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'echeck_auth_type', 'Column loan_pro_chorus_fdw._defaults_payments.echeck_auth_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'echeck_auth_type', 'Column loan_pro_chorus_fdw._defaults_payments.echeck_auth_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'reset_past_due', 'Column loan_pro_chorus_fdw._defaults_payments.reset_past_due should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'reset_past_due', 'integer', 'Column loan_pro_chorus_fdw._defaults_payments.reset_past_due should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'reset_past_due', 'Column loan_pro_chorus_fdw._defaults_payments.reset_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'reset_past_due', 'Column loan_pro_chorus_fdw._defaults_payments.reset_past_due should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'deleted', 'Column loan_pro_chorus_fdw._defaults_payments.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._defaults_payments.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'deleted', 'Column loan_pro_chorus_fdw._defaults_payments.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'deleted', 'Column loan_pro_chorus_fdw._defaults_payments.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_payments', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_payments.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_payments', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._defaults_payments.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_payments', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_payments.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_payments', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_payments.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
