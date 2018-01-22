SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(159);

SELECT has_foreign_table(
    'loan_pro_fdw', '_escrow_subset_options_entity_backup',
    'Should have foreign table loan_pro_fdw._escrow_subset_options_entity_backup'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_escrow_subset_options_entity_backup',
    'Table loan_pro_fdw._escrow_subset_options_entity_backup should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_escrow_subset_options_entity_backup'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'subset'::name,
    'payoff_option'::name,
    'payment_application'::name,
    'apr_include'::name,
    'schedule_include'::name,
    'disclosure_lnamt_add'::name,
    'interest_bearing'::name,
    'escrow_analysis_enabled'::name,
    'cushion'::name,
    'cushion_fixed_amount'::name,
    'cushion_percentage'::name,
    'escrow_computation_year_start_date'::name,
    'next_escrow_analysis_date'::name,
    'deficiency_delimiting_dpd'::name,
    'deficiency_days_to_pay'::name,
    'deficiency_delimiting_amount'::name,
    'deficiency_delimiting_dollar'::name,
    'deficiency_delimiting_percentage'::name,
    'deficiency_catchup_payment_number'::name,
    'deficiency_action_a'::name,
    'deficiency_action_b'::name,
    'deficiency_action_c'::name,
    'shortage_days_to_pay'::name,
    'shortage_catchup_payment_number'::name,
    'shortage_delimiting_amount'::name,
    'shortage_delimiting_dollar'::name,
    'shortage_delimiting_percentage'::name,
    'shortage_action_a'::name,
    'shortage_action_b'::name,
    'surplus_allowed_surplus'::name,
    'surplus_days_to_refund'::name,
    'surplus_delimiting_dpd'::name,
    'surplus_action_a'::name,
    'surplus_action_b'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'id', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'id', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'id', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'id', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'entity_id', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.entity_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'entity_id', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'entity_id', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'entity_id', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.entity_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'entity_type', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'entity_type', 'character varying(100)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'entity_type', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'entity_type', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'subset', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.subset should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'subset', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.subset should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'subset', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.subset should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'subset', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.subset should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'payoff_option', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.payoff_option should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'payoff_option', 'character(50)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.payoff_option should be type character(50)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'payoff_option', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.payoff_option should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'payoff_option', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.payoff_option should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'payment_application', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.payment_application should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'payment_application', 'character(30)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.payment_application should be type character(30)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'payment_application', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.payment_application should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'payment_application', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.payment_application should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'apr_include', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.apr_include should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'apr_include', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.apr_include should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'apr_include', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.apr_include should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'apr_include', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.apr_include should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'schedule_include', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.schedule_include should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'schedule_include', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.schedule_include should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'schedule_include', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.schedule_include should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'schedule_include', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.schedule_include should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'disclosure_lnamt_add', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.disclosure_lnamt_add should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'disclosure_lnamt_add', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.disclosure_lnamt_add should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'disclosure_lnamt_add', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.disclosure_lnamt_add should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'disclosure_lnamt_add', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.disclosure_lnamt_add should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'interest_bearing', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.interest_bearing should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'interest_bearing', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.interest_bearing should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'interest_bearing', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.interest_bearing should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'interest_bearing', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.interest_bearing should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'escrow_analysis_enabled', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.escrow_analysis_enabled should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'escrow_analysis_enabled', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.escrow_analysis_enabled should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'escrow_analysis_enabled', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.escrow_analysis_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'escrow_analysis_enabled', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.escrow_analysis_enabled should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion_fixed_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion_fixed_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion_fixed_amount', 'numeric(11,2)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion_fixed_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion_fixed_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion_fixed_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion_fixed_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion_fixed_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion_percentage should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion_percentage', 'numeric(5,3)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion_percentage should be type numeric(5,3)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion_percentage should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'cushion_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.cushion_percentage should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'escrow_computation_year_start_date', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.escrow_computation_year_start_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'escrow_computation_year_start_date', 'text', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.escrow_computation_year_start_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'escrow_computation_year_start_date', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.escrow_computation_year_start_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'escrow_computation_year_start_date', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.escrow_computation_year_start_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'next_escrow_analysis_date', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.next_escrow_analysis_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'next_escrow_analysis_date', 'text', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.next_escrow_analysis_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'next_escrow_analysis_date', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.next_escrow_analysis_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'next_escrow_analysis_date', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.next_escrow_analysis_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_dpd', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_dpd should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_dpd', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_dpd should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_dpd', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_dpd should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_dpd', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_dpd should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_days_to_pay', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_days_to_pay should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_days_to_pay', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_days_to_pay should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_days_to_pay', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_days_to_pay should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_days_to_pay', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_days_to_pay should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_amount', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_amount should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_dollar', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_dollar should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_dollar', 'numeric(11,2)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_dollar should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_dollar', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_dollar should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_dollar', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_dollar should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_percentage should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_percentage', 'numeric(5,3)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_percentage should be type numeric(5,3)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_percentage should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_delimiting_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_delimiting_percentage should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_catchup_payment_number', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_catchup_payment_number should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_catchup_payment_number', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_catchup_payment_number should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_catchup_payment_number', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_catchup_payment_number should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_catchup_payment_number', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_catchup_payment_number should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_a should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_a', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_a should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_a should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_a should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_b should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_b', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_b should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_b should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_b should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_c', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_c should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_c', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_c should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_c', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_c should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deficiency_action_c', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deficiency_action_c should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_days_to_pay', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_days_to_pay should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_days_to_pay', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_days_to_pay should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_days_to_pay', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_days_to_pay should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_days_to_pay', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_days_to_pay should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_catchup_payment_number', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_catchup_payment_number should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_catchup_payment_number', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_catchup_payment_number should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_catchup_payment_number', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_catchup_payment_number should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_catchup_payment_number', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_catchup_payment_number should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_amount', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_amount should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_amount', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_dollar', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_dollar should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_dollar', 'numeric(11,2)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_dollar should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_dollar', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_dollar should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_dollar', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_dollar should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_percentage should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_percentage', 'numeric(5,3)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_percentage should be type numeric(5,3)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_percentage should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_delimiting_percentage', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_delimiting_percentage should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_action_a should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_action_a', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_action_a should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_action_a should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_action_a should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_action_b should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_action_b', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_action_b should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_action_b should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'shortage_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.shortage_action_b should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_allowed_surplus', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_allowed_surplus should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_allowed_surplus', 'numeric(11,2)', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_allowed_surplus should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_allowed_surplus', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_allowed_surplus should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_allowed_surplus', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_allowed_surplus should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_days_to_refund', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_days_to_refund should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_days_to_refund', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_days_to_refund should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_days_to_refund', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_days_to_refund should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_days_to_refund', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_days_to_refund should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_delimiting_dpd', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_delimiting_dpd should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_delimiting_dpd', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_delimiting_dpd should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_delimiting_dpd', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_delimiting_dpd should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_delimiting_dpd', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_delimiting_dpd should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_action_a should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_action_a', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_action_a should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_action_a should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_action_a', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_action_a should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_action_b should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_action_b', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_action_b should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_action_b should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'surplus_action_b', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.surplus_action_b should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deleted', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deleted', 'integer', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deleted', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'deleted', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'lastupdated', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_escrow_subset_options_entity_backup', 'lastupdated', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_escrow_subset_options_entity_backup', 'lastupdated', 'Column loan_pro_fdw._escrow_subset_options_entity_backup.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
