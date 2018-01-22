SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(87);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_entity',
    'Should have foreign table loan_pro_sandbox._loan_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_entity',
    'Table loan_pro_sandbox._loan_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_entity'::name, ARRAY[
    'id'::name,
    'display_id'::name,
    'title'::name,
    'settings_id'::name,
    'setup_id'::name,
    'insurance_policy_id'::name,
    'collateral_id'::name,
    'linked_loan'::name,
    'mod_id'::name,
    'mod_total'::name,
    'human_activity_date'::name,
    'last_maint_run'::name,
    'created'::name,
    'lastupdated'::name,
    'created_by'::name,
    'active'::name,
    'archived'::name,
    'loan_alert'::name,
    'deleted'::name,
    'deleted_at'::name,
    'temporary_account'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'id', 'Column loan_pro_sandbox._loan_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'id', 'integer', 'Column loan_pro_sandbox._loan_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'id', 'Column loan_pro_sandbox._loan_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'id', 'Column loan_pro_sandbox._loan_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'display_id', 'Column loan_pro_sandbox._loan_entity.display_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'display_id', 'character(25)', 'Column loan_pro_sandbox._loan_entity.display_id should be type character(25)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'display_id', 'Column loan_pro_sandbox._loan_entity.display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'display_id', 'Column loan_pro_sandbox._loan_entity.display_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'title', 'Column loan_pro_sandbox._loan_entity.title should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'title', 'text', 'Column loan_pro_sandbox._loan_entity.title should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'title', 'Column loan_pro_sandbox._loan_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'title', 'Column loan_pro_sandbox._loan_entity.title should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'settings_id', 'Column loan_pro_sandbox._loan_entity.settings_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'settings_id', 'integer', 'Column loan_pro_sandbox._loan_entity.settings_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'settings_id', 'Column loan_pro_sandbox._loan_entity.settings_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'settings_id', 'Column loan_pro_sandbox._loan_entity.settings_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'setup_id', 'Column loan_pro_sandbox._loan_entity.setup_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'setup_id', 'integer', 'Column loan_pro_sandbox._loan_entity.setup_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'setup_id', 'Column loan_pro_sandbox._loan_entity.setup_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'setup_id', 'Column loan_pro_sandbox._loan_entity.setup_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'insurance_policy_id', 'Column loan_pro_sandbox._loan_entity.insurance_policy_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'insurance_policy_id', 'integer', 'Column loan_pro_sandbox._loan_entity.insurance_policy_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'insurance_policy_id', 'Column loan_pro_sandbox._loan_entity.insurance_policy_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'insurance_policy_id', 'Column loan_pro_sandbox._loan_entity.insurance_policy_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'collateral_id', 'Column loan_pro_sandbox._loan_entity.collateral_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'collateral_id', 'integer', 'Column loan_pro_sandbox._loan_entity.collateral_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'collateral_id', 'Column loan_pro_sandbox._loan_entity.collateral_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'collateral_id', 'Column loan_pro_sandbox._loan_entity.collateral_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'linked_loan', 'Column loan_pro_sandbox._loan_entity.linked_loan should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'linked_loan', 'integer', 'Column loan_pro_sandbox._loan_entity.linked_loan should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'linked_loan', 'Column loan_pro_sandbox._loan_entity.linked_loan should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'linked_loan', 'Column loan_pro_sandbox._loan_entity.linked_loan should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'mod_id', 'Column loan_pro_sandbox._loan_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'mod_id', 'integer', 'Column loan_pro_sandbox._loan_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'mod_id', 'Column loan_pro_sandbox._loan_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'mod_id', 'Column loan_pro_sandbox._loan_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'mod_total', 'Column loan_pro_sandbox._loan_entity.mod_total should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'mod_total', 'integer', 'Column loan_pro_sandbox._loan_entity.mod_total should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'mod_total', 'Column loan_pro_sandbox._loan_entity.mod_total should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'mod_total', 'Column loan_pro_sandbox._loan_entity.mod_total should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'human_activity_date', 'Column loan_pro_sandbox._loan_entity.human_activity_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'human_activity_date', 'text', 'Column loan_pro_sandbox._loan_entity.human_activity_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'human_activity_date', 'Column loan_pro_sandbox._loan_entity.human_activity_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'human_activity_date', 'Column loan_pro_sandbox._loan_entity.human_activity_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'last_maint_run', 'Column loan_pro_sandbox._loan_entity.last_maint_run should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'last_maint_run', 'text', 'Column loan_pro_sandbox._loan_entity.last_maint_run should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'last_maint_run', 'Column loan_pro_sandbox._loan_entity.last_maint_run should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'last_maint_run', 'Column loan_pro_sandbox._loan_entity.last_maint_run should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'created', 'Column loan_pro_sandbox._loan_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'created', 'text', 'Column loan_pro_sandbox._loan_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'created', 'Column loan_pro_sandbox._loan_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'created', 'Column loan_pro_sandbox._loan_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._loan_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'created_by', 'Column loan_pro_sandbox._loan_entity.created_by should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'created_by', 'integer', 'Column loan_pro_sandbox._loan_entity.created_by should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'created_by', 'Column loan_pro_sandbox._loan_entity.created_by should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'created_by', 'Column loan_pro_sandbox._loan_entity.created_by should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'active', 'Column loan_pro_sandbox._loan_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'active', 'integer', 'Column loan_pro_sandbox._loan_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'active', 'Column loan_pro_sandbox._loan_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'active', 'Column loan_pro_sandbox._loan_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'archived', 'Column loan_pro_sandbox._loan_entity.archived should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'archived', 'integer', 'Column loan_pro_sandbox._loan_entity.archived should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'archived', 'Column loan_pro_sandbox._loan_entity.archived should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'archived', 'Column loan_pro_sandbox._loan_entity.archived should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'loan_alert', 'Column loan_pro_sandbox._loan_entity.loan_alert should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'loan_alert', 'text', 'Column loan_pro_sandbox._loan_entity.loan_alert should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'loan_alert', 'Column loan_pro_sandbox._loan_entity.loan_alert should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'loan_alert', 'Column loan_pro_sandbox._loan_entity.loan_alert should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'deleted', 'Column loan_pro_sandbox._loan_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._loan_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'deleted', 'Column loan_pro_sandbox._loan_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'deleted', 'Column loan_pro_sandbox._loan_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'deleted_at', 'Column loan_pro_sandbox._loan_entity.deleted_at should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'deleted_at', 'text', 'Column loan_pro_sandbox._loan_entity.deleted_at should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'deleted_at', 'Column loan_pro_sandbox._loan_entity.deleted_at should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'deleted_at', 'Column loan_pro_sandbox._loan_entity.deleted_at should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_entity', 'temporary_account', 'Column loan_pro_sandbox._loan_entity.temporary_account should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_entity', 'temporary_account', 'integer', 'Column loan_pro_sandbox._loan_entity.temporary_account should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_entity', 'temporary_account', 'Column loan_pro_sandbox._loan_entity.temporary_account should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_entity', 'temporary_account', 'Column loan_pro_sandbox._loan_entity.temporary_account should not  have a default');

SELECT * FROM finish();
ROLLBACK;
