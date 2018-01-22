SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(107);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity',
    'Should have foreign table loan_pro_chorus_sandbox._rule_applied_charge_off_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity',
    'Table loan_pro_chorus_sandbox._rule_applied_charge_off_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_rule_applied_charge_off_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'rule'::name,
    'is_payment'::name,
    'payment_type_id'::name,
    'payment_method_id'::name,
    'amount_calc'::name,
    'amount'::name,
    'early'::name,
    'info'::name,
    'extra_tx'::name,
    'extra_periods'::name,
    'credit_category'::name,
    'reset_pastdue'::name,
    'under_pay_diff'::name,
    'over_pay_diff'::name,
    'advancement_category'::name,
    'enroll_new_loans'::name,
    'enroll_existing_loans'::name,
    'enabled'::name,
    'eval_in_daily_maint'::name,
    'eval_real_time'::name,
    'forcing'::name,
    'deleted'::name,
    'global_order'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'name', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'name', 'character varying(100)', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'name', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'name', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'rule', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.rule should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'rule', 'text', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'rule', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'rule', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'is_payment', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.is_payment should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'is_payment', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.is_payment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'is_payment', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.is_payment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'is_payment', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.is_payment should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'payment_type_id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.payment_type_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'payment_type_id', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.payment_type_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'payment_type_id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.payment_type_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'payment_type_id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.payment_type_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'payment_method_id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.payment_method_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'payment_method_id', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'payment_method_id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'payment_method_id', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'amount_calc', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.amount_calc should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'amount_calc', 'character varying(6)', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.amount_calc should be type character varying(6)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'amount_calc', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.amount_calc should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'amount_calc', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.amount_calc should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'amount', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'amount', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'amount', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'early', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.early should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'early', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.early should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'early', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.early should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'early', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.early should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'info', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.info should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'info', 'text', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.info should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'info', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.info should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'info', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.info should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'extra_tx', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.extra_tx should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'extra_tx', 'character varying(100)', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.extra_tx should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'extra_tx', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.extra_tx should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'extra_tx', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.extra_tx should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'extra_periods', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.extra_periods should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'extra_periods', 'character varying(100)', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.extra_periods should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'extra_periods', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.extra_periods should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'extra_periods', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.extra_periods should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'credit_category', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.credit_category should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'credit_category', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.credit_category should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'credit_category', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.credit_category should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'credit_category', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.credit_category should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'reset_pastdue', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.reset_pastdue should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'reset_pastdue', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.reset_pastdue should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'reset_pastdue', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.reset_pastdue should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'reset_pastdue', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.reset_pastdue should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'under_pay_diff', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.under_pay_diff should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'under_pay_diff', 'character(26)', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.under_pay_diff should be type character(26)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'under_pay_diff', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.under_pay_diff should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'under_pay_diff', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.under_pay_diff should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'over_pay_diff', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.over_pay_diff should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'over_pay_diff', 'character(28)', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.over_pay_diff should be type character(28)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'over_pay_diff', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.over_pay_diff should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'over_pay_diff', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.over_pay_diff should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'advancement_category', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.advancement_category should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'advancement_category', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.advancement_category should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'advancement_category', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.advancement_category should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'advancement_category', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.advancement_category should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enroll_new_loans', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enroll_new_loans should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enroll_new_loans', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enroll_new_loans should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enroll_new_loans', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enroll_new_loans should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enroll_new_loans', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enroll_new_loans should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enroll_existing_loans', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enroll_existing_loans should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enroll_existing_loans', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enroll_existing_loans should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enroll_existing_loans', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enroll_existing_loans should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enroll_existing_loans', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enroll_existing_loans should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enabled', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enabled', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enabled', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'enabled', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'eval_in_daily_maint', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.eval_in_daily_maint should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'eval_in_daily_maint', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.eval_in_daily_maint should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'eval_in_daily_maint', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.eval_in_daily_maint should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'eval_in_daily_maint', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.eval_in_daily_maint should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'eval_real_time', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.eval_real_time should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'eval_real_time', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.eval_real_time should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'eval_real_time', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.eval_real_time should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'eval_real_time', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.eval_real_time should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'forcing', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.forcing should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'forcing', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.forcing should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'forcing', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.forcing should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'forcing', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.forcing should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'deleted', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'deleted', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'deleted', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'global_order', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.global_order should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'global_order', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.global_order should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'global_order', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.global_order should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'global_order', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.global_order should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_charge_off_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._rule_applied_charge_off_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
