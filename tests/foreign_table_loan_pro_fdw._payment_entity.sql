SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(255);

SELECT has_foreign_table(
    'loan_pro_fdw', '_payment_entity',
    'Should have foreign table loan_pro_fdw._payment_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_payment_entity',
    'Table loan_pro_fdw._payment_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_payment_entity'::name, ARRAY[
    'id'::name,
    'display_id'::name,
    'payment_info_id'::name,
    'payment_type_id'::name,
    'payment_processor_id'::name,
    'payment_method_id'::name,
    'payment_account_id'::name,
    'tx_snapshot_id'::name,
    'amount'::name,
    'apply_date'::name,
    'early'::name,
    'payoff_flag'::name,
    'payoff_diff_apply'::name,
    'payoff_options'::name,
    'custom_application'::name,
    'info'::name,
    'extra'::name,
    'parent'::name,
    'child'::name,
    'charge_fee_type'::name,
    'charge_fee_amount'::name,
    'charge_fee_percentage'::name,
    'echeck_auth_type'::name,
    'cash_drawer_id'::name,
    'cash_drawer_tx_id'::name,
    'status'::name,
    'reverse_reason'::name,
    'reverse_date'::name,
    'comments'::name,
    'source_company'::name,
    'loan_status'::name,
    'loan_substatus'::name,
    'before_principal_balance'::name,
    'before_payoff'::name,
    'before_next_due_date'::name,
    'before_next_due_amount'::name,
    'before_amount_past_due'::name,
    'before_days_past_due'::name,
    'after_principal_balance'::name,
    'after_payoff'::name,
    'after_next_due_date'::name,
    'after_next_due_amount'::name,
    'after_amount_past_due'::name,
    'after_days_past_due'::name,
    'system_comments'::name,
    'charge_off_recovery'::name,
    'reset_past_due'::name,
    'apd_adjustment_id'::name,
    'dpd_adjustment_id'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name,
    'mod_id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'payment_method_option'::name,
    'payment_method_name'::name,
    'is_split'::name,
    'split_id'::name,
    'nacha_return_code'::name,
    'autopay_id'::name,
    'last_extra'::name
]);

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'id', 'Column loan_pro_fdw._payment_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'id', 'integer', 'Column loan_pro_fdw._payment_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'id', 'Column loan_pro_fdw._payment_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'id', 'Column loan_pro_fdw._payment_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'display_id', 'Column loan_pro_fdw._payment_entity.display_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'display_id', 'integer', 'Column loan_pro_fdw._payment_entity.display_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'display_id', 'Column loan_pro_fdw._payment_entity.display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'display_id', 'Column loan_pro_fdw._payment_entity.display_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payment_info_id', 'Column loan_pro_fdw._payment_entity.payment_info_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payment_info_id', 'integer', 'Column loan_pro_fdw._payment_entity.payment_info_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payment_info_id', 'Column loan_pro_fdw._payment_entity.payment_info_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payment_info_id', 'Column loan_pro_fdw._payment_entity.payment_info_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payment_type_id', 'Column loan_pro_fdw._payment_entity.payment_type_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payment_type_id', 'integer', 'Column loan_pro_fdw._payment_entity.payment_type_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payment_type_id', 'Column loan_pro_fdw._payment_entity.payment_type_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payment_type_id', 'Column loan_pro_fdw._payment_entity.payment_type_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payment_processor_id', 'Column loan_pro_fdw._payment_entity.payment_processor_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payment_processor_id', 'integer', 'Column loan_pro_fdw._payment_entity.payment_processor_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payment_processor_id', 'Column loan_pro_fdw._payment_entity.payment_processor_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payment_processor_id', 'Column loan_pro_fdw._payment_entity.payment_processor_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payment_method_id', 'Column loan_pro_fdw._payment_entity.payment_method_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payment_method_id', 'integer', 'Column loan_pro_fdw._payment_entity.payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payment_method_id', 'Column loan_pro_fdw._payment_entity.payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payment_method_id', 'Column loan_pro_fdw._payment_entity.payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payment_account_id', 'Column loan_pro_fdw._payment_entity.payment_account_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payment_account_id', 'integer', 'Column loan_pro_fdw._payment_entity.payment_account_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payment_account_id', 'Column loan_pro_fdw._payment_entity.payment_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payment_account_id', 'Column loan_pro_fdw._payment_entity.payment_account_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'tx_snapshot_id', 'Column loan_pro_fdw._payment_entity.tx_snapshot_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'tx_snapshot_id', 'integer', 'Column loan_pro_fdw._payment_entity.tx_snapshot_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'tx_snapshot_id', 'Column loan_pro_fdw._payment_entity.tx_snapshot_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'tx_snapshot_id', 'Column loan_pro_fdw._payment_entity.tx_snapshot_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'amount', 'Column loan_pro_fdw._payment_entity.amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'amount', 'Column loan_pro_fdw._payment_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'amount', 'Column loan_pro_fdw._payment_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'apply_date', 'Column loan_pro_fdw._payment_entity.apply_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'apply_date', 'text', 'Column loan_pro_fdw._payment_entity.apply_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'apply_date', 'Column loan_pro_fdw._payment_entity.apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'apply_date', 'Column loan_pro_fdw._payment_entity.apply_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'early', 'Column loan_pro_fdw._payment_entity.early should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'early', 'integer', 'Column loan_pro_fdw._payment_entity.early should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'early', 'Column loan_pro_fdw._payment_entity.early should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'early', 'Column loan_pro_fdw._payment_entity.early should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payoff_flag', 'Column loan_pro_fdw._payment_entity.payoff_flag should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payoff_flag', 'integer', 'Column loan_pro_fdw._payment_entity.payoff_flag should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payoff_flag', 'Column loan_pro_fdw._payment_entity.payoff_flag should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payoff_flag', 'Column loan_pro_fdw._payment_entity.payoff_flag should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payoff_diff_apply', 'Column loan_pro_fdw._payment_entity.payoff_diff_apply should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payoff_diff_apply', 'character(40)', 'Column loan_pro_fdw._payment_entity.payoff_diff_apply should be type character(40)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payoff_diff_apply', 'Column loan_pro_fdw._payment_entity.payoff_diff_apply should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payoff_diff_apply', 'Column loan_pro_fdw._payment_entity.payoff_diff_apply should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payoff_options', 'Column loan_pro_fdw._payment_entity.payoff_options should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payoff_options', 'text', 'Column loan_pro_fdw._payment_entity.payoff_options should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payoff_options', 'Column loan_pro_fdw._payment_entity.payoff_options should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payoff_options', 'Column loan_pro_fdw._payment_entity.payoff_options should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'custom_application', 'Column loan_pro_fdw._payment_entity.custom_application should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'custom_application', 'text', 'Column loan_pro_fdw._payment_entity.custom_application should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'custom_application', 'Column loan_pro_fdw._payment_entity.custom_application should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'custom_application', 'Column loan_pro_fdw._payment_entity.custom_application should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'info', 'Column loan_pro_fdw._payment_entity.info should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'info', 'text', 'Column loan_pro_fdw._payment_entity.info should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'info', 'Column loan_pro_fdw._payment_entity.info should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'info', 'Column loan_pro_fdw._payment_entity.info should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'extra', 'Column loan_pro_fdw._payment_entity.extra should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'extra', 'character varying(100)', 'Column loan_pro_fdw._payment_entity.extra should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'extra', 'Column loan_pro_fdw._payment_entity.extra should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'extra', 'Column loan_pro_fdw._payment_entity.extra should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'parent', 'Column loan_pro_fdw._payment_entity.parent should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'parent', 'integer', 'Column loan_pro_fdw._payment_entity.parent should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'parent', 'Column loan_pro_fdw._payment_entity.parent should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'parent', 'Column loan_pro_fdw._payment_entity.parent should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'child', 'Column loan_pro_fdw._payment_entity.child should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'child', 'integer', 'Column loan_pro_fdw._payment_entity.child should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'child', 'Column loan_pro_fdw._payment_entity.child should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'child', 'Column loan_pro_fdw._payment_entity.child should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'charge_fee_type', 'Column loan_pro_fdw._payment_entity.charge_fee_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'charge_fee_type', 'character varying(20)', 'Column loan_pro_fdw._payment_entity.charge_fee_type should be type character varying(20)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'charge_fee_type', 'Column loan_pro_fdw._payment_entity.charge_fee_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'charge_fee_type', 'Column loan_pro_fdw._payment_entity.charge_fee_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'charge_fee_amount', 'Column loan_pro_fdw._payment_entity.charge_fee_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'charge_fee_amount', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.charge_fee_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'charge_fee_amount', 'Column loan_pro_fdw._payment_entity.charge_fee_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'charge_fee_amount', 'Column loan_pro_fdw._payment_entity.charge_fee_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'charge_fee_percentage', 'Column loan_pro_fdw._payment_entity.charge_fee_percentage should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'charge_fee_percentage', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.charge_fee_percentage should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'charge_fee_percentage', 'Column loan_pro_fdw._payment_entity.charge_fee_percentage should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'charge_fee_percentage', 'Column loan_pro_fdw._payment_entity.charge_fee_percentage should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'echeck_auth_type', 'Column loan_pro_fdw._payment_entity.echeck_auth_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'echeck_auth_type', 'character varying(100)', 'Column loan_pro_fdw._payment_entity.echeck_auth_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'echeck_auth_type', 'Column loan_pro_fdw._payment_entity.echeck_auth_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'echeck_auth_type', 'Column loan_pro_fdw._payment_entity.echeck_auth_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'cash_drawer_id', 'Column loan_pro_fdw._payment_entity.cash_drawer_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'cash_drawer_id', 'integer', 'Column loan_pro_fdw._payment_entity.cash_drawer_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'cash_drawer_id', 'Column loan_pro_fdw._payment_entity.cash_drawer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'cash_drawer_id', 'Column loan_pro_fdw._payment_entity.cash_drawer_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'cash_drawer_tx_id', 'Column loan_pro_fdw._payment_entity.cash_drawer_tx_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'cash_drawer_tx_id', 'integer', 'Column loan_pro_fdw._payment_entity.cash_drawer_tx_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'cash_drawer_tx_id', 'Column loan_pro_fdw._payment_entity.cash_drawer_tx_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'cash_drawer_tx_id', 'Column loan_pro_fdw._payment_entity.cash_drawer_tx_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'status', 'Column loan_pro_fdw._payment_entity.status should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'status', 'character varying(45)', 'Column loan_pro_fdw._payment_entity.status should be type character varying(45)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'status', 'Column loan_pro_fdw._payment_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'status', 'Column loan_pro_fdw._payment_entity.status should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'reverse_reason', 'Column loan_pro_fdw._payment_entity.reverse_reason should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'reverse_reason', 'character varying(45)', 'Column loan_pro_fdw._payment_entity.reverse_reason should be type character varying(45)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'reverse_reason', 'Column loan_pro_fdw._payment_entity.reverse_reason should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'reverse_reason', 'Column loan_pro_fdw._payment_entity.reverse_reason should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'reverse_date', 'Column loan_pro_fdw._payment_entity.reverse_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'reverse_date', 'text', 'Column loan_pro_fdw._payment_entity.reverse_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'reverse_date', 'Column loan_pro_fdw._payment_entity.reverse_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'reverse_date', 'Column loan_pro_fdw._payment_entity.reverse_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'comments', 'Column loan_pro_fdw._payment_entity.comments should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'comments', 'text', 'Column loan_pro_fdw._payment_entity.comments should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'comments', 'Column loan_pro_fdw._payment_entity.comments should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'comments', 'Column loan_pro_fdw._payment_entity.comments should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'source_company', 'Column loan_pro_fdw._payment_entity.source_company should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'source_company', 'integer', 'Column loan_pro_fdw._payment_entity.source_company should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'source_company', 'Column loan_pro_fdw._payment_entity.source_company should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'source_company', 'Column loan_pro_fdw._payment_entity.source_company should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'loan_status', 'Column loan_pro_fdw._payment_entity.loan_status should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'loan_status', 'integer', 'Column loan_pro_fdw._payment_entity.loan_status should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'loan_status', 'Column loan_pro_fdw._payment_entity.loan_status should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'loan_status', 'Column loan_pro_fdw._payment_entity.loan_status should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'loan_substatus', 'Column loan_pro_fdw._payment_entity.loan_substatus should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'loan_substatus', 'integer', 'Column loan_pro_fdw._payment_entity.loan_substatus should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'loan_substatus', 'Column loan_pro_fdw._payment_entity.loan_substatus should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'loan_substatus', 'Column loan_pro_fdw._payment_entity.loan_substatus should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'before_principal_balance', 'Column loan_pro_fdw._payment_entity.before_principal_balance should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'before_principal_balance', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.before_principal_balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'before_principal_balance', 'Column loan_pro_fdw._payment_entity.before_principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'before_principal_balance', 'Column loan_pro_fdw._payment_entity.before_principal_balance should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'before_payoff', 'Column loan_pro_fdw._payment_entity.before_payoff should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'before_payoff', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.before_payoff should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'before_payoff', 'Column loan_pro_fdw._payment_entity.before_payoff should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'before_payoff', 'Column loan_pro_fdw._payment_entity.before_payoff should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'before_next_due_date', 'Column loan_pro_fdw._payment_entity.before_next_due_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'before_next_due_date', 'text', 'Column loan_pro_fdw._payment_entity.before_next_due_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'before_next_due_date', 'Column loan_pro_fdw._payment_entity.before_next_due_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'before_next_due_date', 'Column loan_pro_fdw._payment_entity.before_next_due_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'before_next_due_amount', 'Column loan_pro_fdw._payment_entity.before_next_due_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'before_next_due_amount', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.before_next_due_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'before_next_due_amount', 'Column loan_pro_fdw._payment_entity.before_next_due_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'before_next_due_amount', 'Column loan_pro_fdw._payment_entity.before_next_due_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'before_amount_past_due', 'Column loan_pro_fdw._payment_entity.before_amount_past_due should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'before_amount_past_due', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.before_amount_past_due should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'before_amount_past_due', 'Column loan_pro_fdw._payment_entity.before_amount_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'before_amount_past_due', 'Column loan_pro_fdw._payment_entity.before_amount_past_due should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'before_days_past_due', 'Column loan_pro_fdw._payment_entity.before_days_past_due should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'before_days_past_due', 'integer', 'Column loan_pro_fdw._payment_entity.before_days_past_due should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'before_days_past_due', 'Column loan_pro_fdw._payment_entity.before_days_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'before_days_past_due', 'Column loan_pro_fdw._payment_entity.before_days_past_due should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'after_principal_balance', 'Column loan_pro_fdw._payment_entity.after_principal_balance should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'after_principal_balance', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.after_principal_balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'after_principal_balance', 'Column loan_pro_fdw._payment_entity.after_principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'after_principal_balance', 'Column loan_pro_fdw._payment_entity.after_principal_balance should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'after_payoff', 'Column loan_pro_fdw._payment_entity.after_payoff should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'after_payoff', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.after_payoff should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'after_payoff', 'Column loan_pro_fdw._payment_entity.after_payoff should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'after_payoff', 'Column loan_pro_fdw._payment_entity.after_payoff should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'after_next_due_date', 'Column loan_pro_fdw._payment_entity.after_next_due_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'after_next_due_date', 'text', 'Column loan_pro_fdw._payment_entity.after_next_due_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'after_next_due_date', 'Column loan_pro_fdw._payment_entity.after_next_due_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'after_next_due_date', 'Column loan_pro_fdw._payment_entity.after_next_due_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'after_next_due_amount', 'Column loan_pro_fdw._payment_entity.after_next_due_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'after_next_due_amount', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.after_next_due_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'after_next_due_amount', 'Column loan_pro_fdw._payment_entity.after_next_due_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'after_next_due_amount', 'Column loan_pro_fdw._payment_entity.after_next_due_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'after_amount_past_due', 'Column loan_pro_fdw._payment_entity.after_amount_past_due should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'after_amount_past_due', 'numeric(11,2)', 'Column loan_pro_fdw._payment_entity.after_amount_past_due should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'after_amount_past_due', 'Column loan_pro_fdw._payment_entity.after_amount_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'after_amount_past_due', 'Column loan_pro_fdw._payment_entity.after_amount_past_due should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'after_days_past_due', 'Column loan_pro_fdw._payment_entity.after_days_past_due should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'after_days_past_due', 'integer', 'Column loan_pro_fdw._payment_entity.after_days_past_due should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'after_days_past_due', 'Column loan_pro_fdw._payment_entity.after_days_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'after_days_past_due', 'Column loan_pro_fdw._payment_entity.after_days_past_due should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'system_comments', 'Column loan_pro_fdw._payment_entity.system_comments should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'system_comments', 'text', 'Column loan_pro_fdw._payment_entity.system_comments should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'system_comments', 'Column loan_pro_fdw._payment_entity.system_comments should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'system_comments', 'Column loan_pro_fdw._payment_entity.system_comments should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'charge_off_recovery', 'Column loan_pro_fdw._payment_entity.charge_off_recovery should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'charge_off_recovery', 'integer', 'Column loan_pro_fdw._payment_entity.charge_off_recovery should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'charge_off_recovery', 'Column loan_pro_fdw._payment_entity.charge_off_recovery should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'charge_off_recovery', 'Column loan_pro_fdw._payment_entity.charge_off_recovery should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'reset_past_due', 'Column loan_pro_fdw._payment_entity.reset_past_due should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'reset_past_due', 'integer', 'Column loan_pro_fdw._payment_entity.reset_past_due should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'reset_past_due', 'Column loan_pro_fdw._payment_entity.reset_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'reset_past_due', 'Column loan_pro_fdw._payment_entity.reset_past_due should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'apd_adjustment_id', 'Column loan_pro_fdw._payment_entity.apd_adjustment_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'apd_adjustment_id', 'integer', 'Column loan_pro_fdw._payment_entity.apd_adjustment_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'apd_adjustment_id', 'Column loan_pro_fdw._payment_entity.apd_adjustment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'apd_adjustment_id', 'Column loan_pro_fdw._payment_entity.apd_adjustment_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'dpd_adjustment_id', 'Column loan_pro_fdw._payment_entity.dpd_adjustment_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'dpd_adjustment_id', 'integer', 'Column loan_pro_fdw._payment_entity.dpd_adjustment_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'dpd_adjustment_id', 'Column loan_pro_fdw._payment_entity.dpd_adjustment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'dpd_adjustment_id', 'Column loan_pro_fdw._payment_entity.dpd_adjustment_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'active', 'Column loan_pro_fdw._payment_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'active', 'integer', 'Column loan_pro_fdw._payment_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'active', 'Column loan_pro_fdw._payment_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'active', 'Column loan_pro_fdw._payment_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'deleted', 'Column loan_pro_fdw._payment_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'deleted', 'integer', 'Column loan_pro_fdw._payment_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'deleted', 'Column loan_pro_fdw._payment_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'deleted', 'Column loan_pro_fdw._payment_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'created', 'Column loan_pro_fdw._payment_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'created', 'text', 'Column loan_pro_fdw._payment_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'created', 'Column loan_pro_fdw._payment_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'created', 'Column loan_pro_fdw._payment_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'lastupdated', 'Column loan_pro_fdw._payment_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._payment_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'lastupdated', 'Column loan_pro_fdw._payment_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'lastupdated', 'Column loan_pro_fdw._payment_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'mod_id', 'Column loan_pro_fdw._payment_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'mod_id', 'integer', 'Column loan_pro_fdw._payment_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'mod_id', 'Column loan_pro_fdw._payment_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'mod_id', 'Column loan_pro_fdw._payment_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'entity_id', 'Column loan_pro_fdw._payment_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'entity_id', 'integer', 'Column loan_pro_fdw._payment_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'entity_id', 'Column loan_pro_fdw._payment_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'entity_id', 'Column loan_pro_fdw._payment_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'entity_type', 'Column loan_pro_fdw._payment_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_fdw._payment_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'entity_type', 'Column loan_pro_fdw._payment_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'entity_type', 'Column loan_pro_fdw._payment_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payment_method_option', 'Column loan_pro_fdw._payment_entity.payment_method_option should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payment_method_option', 'character varying(45)', 'Column loan_pro_fdw._payment_entity.payment_method_option should be type character varying(45)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payment_method_option', 'Column loan_pro_fdw._payment_entity.payment_method_option should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payment_method_option', 'Column loan_pro_fdw._payment_entity.payment_method_option should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'payment_method_name', 'Column loan_pro_fdw._payment_entity.payment_method_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'payment_method_name', 'text', 'Column loan_pro_fdw._payment_entity.payment_method_name should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'payment_method_name', 'Column loan_pro_fdw._payment_entity.payment_method_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'payment_method_name', 'Column loan_pro_fdw._payment_entity.payment_method_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'is_split', 'Column loan_pro_fdw._payment_entity.is_split should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'is_split', 'integer', 'Column loan_pro_fdw._payment_entity.is_split should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'is_split', 'Column loan_pro_fdw._payment_entity.is_split should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'is_split', 'Column loan_pro_fdw._payment_entity.is_split should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'split_id', 'Column loan_pro_fdw._payment_entity.split_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'split_id', 'integer', 'Column loan_pro_fdw._payment_entity.split_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'split_id', 'Column loan_pro_fdw._payment_entity.split_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'split_id', 'Column loan_pro_fdw._payment_entity.split_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'nacha_return_code', 'Column loan_pro_fdw._payment_entity.nacha_return_code should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'nacha_return_code', 'text', 'Column loan_pro_fdw._payment_entity.nacha_return_code should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'nacha_return_code', 'Column loan_pro_fdw._payment_entity.nacha_return_code should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'nacha_return_code', 'Column loan_pro_fdw._payment_entity.nacha_return_code should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'autopay_id', 'Column loan_pro_fdw._payment_entity.autopay_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'autopay_id', 'integer', 'Column loan_pro_fdw._payment_entity.autopay_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'autopay_id', 'Column loan_pro_fdw._payment_entity.autopay_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'autopay_id', 'Column loan_pro_fdw._payment_entity.autopay_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_payment_entity', 'last_extra', 'Column loan_pro_fdw._payment_entity.last_extra should exist');
SELECT col_type_is(      'loan_pro_fdw', '_payment_entity', 'last_extra', 'character varying(100)', 'Column loan_pro_fdw._payment_entity.last_extra should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_payment_entity', 'last_extra', 'Column loan_pro_fdw._payment_entity.last_extra should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_payment_entity', 'last_extra', 'Column loan_pro_fdw._payment_entity.last_extra should not  have a default');

SELECT * FROM finish();
ROLLBACK;
