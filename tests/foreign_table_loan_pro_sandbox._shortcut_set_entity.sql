SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(99);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_shortcut_set_entity',
    'Should have foreign table loan_pro_sandbox._shortcut_set_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_shortcut_set_entity',
    'Table loan_pro_sandbox._shortcut_set_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_shortcut_set_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'log_payment_enabled'::name,
    'log_charge_enabled'::name,
    'quick_note_enabled'::name,
    'advancement_enabled'::name,
    'promises_enabled'::name,
    'change_due_date_enabled'::name,
    'custom_forms_enabled'::name,
    'loan_archive_report_enabled'::name,
    'transactions_report_enabled'::name,
    'credit_enabled'::name,
    'autopay_enabled'::name,
    'post_note_enabled'::name,
    'settings_enabled'::name,
    'collateral_enabled'::name,
    'insurance_enabled'::name,
    'servicing_tools_enabled'::name,
    'checklist_enabled'::name,
    'documents_enabled'::name,
    'delinquency_report_enabled'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'id', 'Column loan_pro_sandbox._shortcut_set_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'id', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'id', 'Column loan_pro_sandbox._shortcut_set_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'id', 'Column loan_pro_sandbox._shortcut_set_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'name', 'Column loan_pro_sandbox._shortcut_set_entity.name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'name', 'text', 'Column loan_pro_sandbox._shortcut_set_entity.name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'name', 'Column loan_pro_sandbox._shortcut_set_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'name', 'Column loan_pro_sandbox._shortcut_set_entity.name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'log_payment_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.log_payment_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'log_payment_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.log_payment_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'log_payment_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.log_payment_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'log_payment_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.log_payment_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'log_charge_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.log_charge_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'log_charge_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.log_charge_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'log_charge_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.log_charge_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'log_charge_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.log_charge_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'quick_note_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.quick_note_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'quick_note_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.quick_note_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'quick_note_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.quick_note_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'quick_note_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.quick_note_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'advancement_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.advancement_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'advancement_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.advancement_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'advancement_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.advancement_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'advancement_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.advancement_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'promises_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.promises_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'promises_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.promises_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'promises_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.promises_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'promises_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.promises_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'change_due_date_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.change_due_date_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'change_due_date_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.change_due_date_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'change_due_date_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.change_due_date_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'change_due_date_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.change_due_date_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'custom_forms_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.custom_forms_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'custom_forms_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.custom_forms_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'custom_forms_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.custom_forms_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'custom_forms_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.custom_forms_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'loan_archive_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.loan_archive_report_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'loan_archive_report_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.loan_archive_report_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'loan_archive_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.loan_archive_report_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'loan_archive_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.loan_archive_report_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'transactions_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.transactions_report_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'transactions_report_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.transactions_report_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'transactions_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.transactions_report_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'transactions_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.transactions_report_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'credit_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.credit_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'credit_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.credit_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'credit_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.credit_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'credit_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.credit_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'autopay_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.autopay_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'autopay_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.autopay_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'autopay_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.autopay_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'autopay_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.autopay_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'post_note_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.post_note_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'post_note_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.post_note_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'post_note_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.post_note_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'post_note_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.post_note_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'settings_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.settings_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'settings_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.settings_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'settings_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.settings_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'settings_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.settings_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'collateral_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.collateral_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'collateral_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.collateral_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'collateral_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.collateral_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'collateral_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.collateral_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'insurance_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.insurance_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'insurance_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.insurance_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'insurance_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.insurance_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'insurance_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.insurance_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'servicing_tools_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.servicing_tools_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'servicing_tools_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.servicing_tools_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'servicing_tools_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.servicing_tools_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'servicing_tools_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.servicing_tools_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'checklist_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.checklist_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'checklist_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.checklist_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'checklist_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.checklist_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'checklist_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.checklist_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'documents_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.documents_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'documents_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.documents_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'documents_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.documents_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'documents_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.documents_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'delinquency_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.delinquency_report_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'delinquency_report_enabled', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.delinquency_report_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'delinquency_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.delinquency_report_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'delinquency_report_enabled', 'Column loan_pro_sandbox._shortcut_set_entity.delinquency_report_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'deleted', 'Column loan_pro_sandbox._shortcut_set_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._shortcut_set_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'deleted', 'Column loan_pro_sandbox._shortcut_set_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'deleted', 'Column loan_pro_sandbox._shortcut_set_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'created', 'Column loan_pro_sandbox._shortcut_set_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'created', 'text', 'Column loan_pro_sandbox._shortcut_set_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'created', 'Column loan_pro_sandbox._shortcut_set_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'created', 'Column loan_pro_sandbox._shortcut_set_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_shortcut_set_entity', 'lastupdated', 'Column loan_pro_sandbox._shortcut_set_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_shortcut_set_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._shortcut_set_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_shortcut_set_entity', 'lastupdated', 'Column loan_pro_sandbox._shortcut_set_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_shortcut_set_entity', 'lastupdated', 'Column loan_pro_sandbox._shortcut_set_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
