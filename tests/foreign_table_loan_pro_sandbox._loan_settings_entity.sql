SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(95);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_settings_entity',
    'Should have foreign table loan_pro_sandbox._loan_settings_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_settings_entity',
    'Table loan_pro_sandbox._loan_settings_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_settings_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'card_fee_amount'::name,
    'card_fee_type'::name,
    'card_fee_percent'::name,
    'agent'::name,
    'loan_status_id'::name,
    'loan_sub_status_id'::name,
    'source_company'::name,
    'ebilling'::name,
    'ecoa_code'::name,
    'co_ecoa_code'::name,
    'credit_status'::name,
    'credit_bureau'::name,
    'reporting_type'::name,
    'secured'::name,
    'autopay_enabled'::name,
    'repo_date'::name,
    'closed_date'::name,
    'liquidation_date'::name,
    'is_stoplight_manually_set'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'id', 'Column loan_pro_sandbox._loan_settings_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'id', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'id', 'Column loan_pro_sandbox._loan_settings_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'id', 'Column loan_pro_sandbox._loan_settings_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'loan_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'loan_id', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'loan_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'loan_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_amount', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_amount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_amount', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'card_fee_amount', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_type', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_type', 'character(30)', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_type', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'card_fee_type', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_percent', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_percent should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_percent', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'card_fee_percent', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_percent should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'card_fee_percent', 'Column loan_pro_sandbox._loan_settings_entity.card_fee_percent should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'agent', 'Column loan_pro_sandbox._loan_settings_entity.agent should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'agent', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.agent should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'agent', 'Column loan_pro_sandbox._loan_settings_entity.agent should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'agent', 'Column loan_pro_sandbox._loan_settings_entity.agent should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'loan_status_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_status_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'loan_status_id', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.loan_status_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'loan_status_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_status_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'loan_status_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_status_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'loan_sub_status_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_sub_status_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'loan_sub_status_id', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.loan_sub_status_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'loan_sub_status_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_sub_status_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'loan_sub_status_id', 'Column loan_pro_sandbox._loan_settings_entity.loan_sub_status_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'source_company', 'Column loan_pro_sandbox._loan_settings_entity.source_company should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'source_company', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.source_company should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'source_company', 'Column loan_pro_sandbox._loan_settings_entity.source_company should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'source_company', 'Column loan_pro_sandbox._loan_settings_entity.source_company should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'ebilling', 'Column loan_pro_sandbox._loan_settings_entity.ebilling should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'ebilling', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.ebilling should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'ebilling', 'Column loan_pro_sandbox._loan_settings_entity.ebilling should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'ebilling', 'Column loan_pro_sandbox._loan_settings_entity.ebilling should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'ecoa_code', 'Column loan_pro_sandbox._loan_settings_entity.ecoa_code should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'ecoa_code', 'character(30)', 'Column loan_pro_sandbox._loan_settings_entity.ecoa_code should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'ecoa_code', 'Column loan_pro_sandbox._loan_settings_entity.ecoa_code should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'ecoa_code', 'Column loan_pro_sandbox._loan_settings_entity.ecoa_code should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'co_ecoa_code', 'Column loan_pro_sandbox._loan_settings_entity.co_ecoa_code should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'co_ecoa_code', 'character(30)', 'Column loan_pro_sandbox._loan_settings_entity.co_ecoa_code should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'co_ecoa_code', 'Column loan_pro_sandbox._loan_settings_entity.co_ecoa_code should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'co_ecoa_code', 'Column loan_pro_sandbox._loan_settings_entity.co_ecoa_code should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'credit_status', 'Column loan_pro_sandbox._loan_settings_entity.credit_status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'credit_status', 'character(30)', 'Column loan_pro_sandbox._loan_settings_entity.credit_status should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'credit_status', 'Column loan_pro_sandbox._loan_settings_entity.credit_status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'credit_status', 'Column loan_pro_sandbox._loan_settings_entity.credit_status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'credit_bureau', 'Column loan_pro_sandbox._loan_settings_entity.credit_bureau should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'credit_bureau', 'character(30)', 'Column loan_pro_sandbox._loan_settings_entity.credit_bureau should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'credit_bureau', 'Column loan_pro_sandbox._loan_settings_entity.credit_bureau should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'credit_bureau', 'Column loan_pro_sandbox._loan_settings_entity.credit_bureau should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'reporting_type', 'Column loan_pro_sandbox._loan_settings_entity.reporting_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'reporting_type', 'character(30)', 'Column loan_pro_sandbox._loan_settings_entity.reporting_type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'reporting_type', 'Column loan_pro_sandbox._loan_settings_entity.reporting_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'reporting_type', 'Column loan_pro_sandbox._loan_settings_entity.reporting_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'secured', 'Column loan_pro_sandbox._loan_settings_entity.secured should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'secured', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.secured should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'secured', 'Column loan_pro_sandbox._loan_settings_entity.secured should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'secured', 'Column loan_pro_sandbox._loan_settings_entity.secured should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'autopay_enabled', 'Column loan_pro_sandbox._loan_settings_entity.autopay_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'autopay_enabled', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.autopay_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'autopay_enabled', 'Column loan_pro_sandbox._loan_settings_entity.autopay_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'autopay_enabled', 'Column loan_pro_sandbox._loan_settings_entity.autopay_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'repo_date', 'Column loan_pro_sandbox._loan_settings_entity.repo_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'repo_date', 'text', 'Column loan_pro_sandbox._loan_settings_entity.repo_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'repo_date', 'Column loan_pro_sandbox._loan_settings_entity.repo_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'repo_date', 'Column loan_pro_sandbox._loan_settings_entity.repo_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'closed_date', 'Column loan_pro_sandbox._loan_settings_entity.closed_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'closed_date', 'text', 'Column loan_pro_sandbox._loan_settings_entity.closed_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'closed_date', 'Column loan_pro_sandbox._loan_settings_entity.closed_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'closed_date', 'Column loan_pro_sandbox._loan_settings_entity.closed_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'liquidation_date', 'Column loan_pro_sandbox._loan_settings_entity.liquidation_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'liquidation_date', 'text', 'Column loan_pro_sandbox._loan_settings_entity.liquidation_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'liquidation_date', 'Column loan_pro_sandbox._loan_settings_entity.liquidation_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'liquidation_date', 'Column loan_pro_sandbox._loan_settings_entity.liquidation_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'is_stoplight_manually_set', 'Column loan_pro_sandbox._loan_settings_entity.is_stoplight_manually_set should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'is_stoplight_manually_set', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.is_stoplight_manually_set should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'is_stoplight_manually_set', 'Column loan_pro_sandbox._loan_settings_entity.is_stoplight_manually_set should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'is_stoplight_manually_set', 'Column loan_pro_sandbox._loan_settings_entity.is_stoplight_manually_set should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'deleted', 'Column loan_pro_sandbox._loan_settings_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._loan_settings_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'deleted', 'Column loan_pro_sandbox._loan_settings_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'deleted', 'Column loan_pro_sandbox._loan_settings_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_settings_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_settings_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_settings_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._loan_settings_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_settings_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_settings_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_settings_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_settings_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
