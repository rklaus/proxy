SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(99);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_recurring_charge_entity',
    'Should have foreign table loan_pro_chorus_sandbox._recurring_charge_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_recurring_charge_entity',
    'Table loan_pro_chorus_sandbox._recurring_charge_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_recurring_charge_entity'::name, ARRAY[
    'id'::name,
    'charge_application_type'::name,
    'is_enabled'::name,
    'apply_in_new_loan'::name,
    'title'::name,
    'info'::name,
    'calculation'::name,
    'fixed_amount'::name,
    'percentage'::name,
    'percentage_base'::name,
    'contingency_bracket_id'::name,
    'trigger_type'::name,
    'loan_type'::name,
    'trigger_event'::name,
    'trigger_sub_event'::name,
    'trigger_event_value'::name,
    'trigger_rule'::name,
    'restriction_rule'::name,
    'restriction_ui'::name,
    'interest_bearing'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'id', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'id', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'id', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'charge_application_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.charge_application_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'charge_application_type', 'character(25)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.charge_application_type should be type character(25)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'charge_application_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.charge_application_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'charge_application_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.charge_application_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'is_enabled', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.is_enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'is_enabled', 'integer', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.is_enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'is_enabled', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.is_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'is_enabled', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.is_enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'apply_in_new_loan', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.apply_in_new_loan should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'apply_in_new_loan', 'integer', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.apply_in_new_loan should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'apply_in_new_loan', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.apply_in_new_loan should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'apply_in_new_loan', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.apply_in_new_loan should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'title', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'title', 'character varying(100)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.title should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'title', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'title', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'info', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.info should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'info', 'character varying(100)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.info should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'info', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.info should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'info', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.info should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'calculation', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.calculation should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'calculation', 'character(41)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.calculation should be type character(41)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'calculation', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.calculation should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'calculation', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.calculation should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'fixed_amount', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.fixed_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'fixed_amount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.fixed_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'fixed_amount', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.fixed_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'fixed_amount', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.fixed_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'percentage', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.percentage should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'percentage', 'numeric(5,2)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.percentage should be type numeric(5,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'percentage', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.percentage should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'percentage', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.percentage should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'percentage_base', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.percentage_base should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'percentage_base', 'character(36)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.percentage_base should be type character(36)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'percentage_base', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.percentage_base should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'percentage_base', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.percentage_base should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'contingency_bracket_id', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.contingency_bracket_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'contingency_bracket_id', 'character(33)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.contingency_bracket_id should be type character(33)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'contingency_bracket_id', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.contingency_bracket_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'contingency_bracket_id', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.contingency_bracket_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_type', 'character(35)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_type should be type character(35)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'loan_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.loan_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'loan_type', 'character(30)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.loan_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'loan_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.loan_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'loan_type', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.loan_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_event', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_event should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_event', 'character(42)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_event should be type character(42)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_event', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_event should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_event', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_event should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_sub_event', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_sub_event should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_sub_event', 'character(52)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_sub_event should be type character(52)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_sub_event', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_sub_event should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_sub_event', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_sub_event should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_event_value', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_event_value should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_event_value', 'character(25)', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_event_value should be type character(25)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_event_value', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_event_value should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_event_value', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_event_value should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_rule', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_rule should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_rule', 'text', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_rule', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'trigger_rule', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.trigger_rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'restriction_rule', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.restriction_rule should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'restriction_rule', 'text', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.restriction_rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'restriction_rule', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.restriction_rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'restriction_rule', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.restriction_rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'restriction_ui', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.restriction_ui should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'restriction_ui', 'text', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.restriction_ui should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'restriction_ui', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.restriction_ui should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'restriction_ui', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.restriction_ui should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'interest_bearing', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.interest_bearing should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'interest_bearing', 'integer', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.interest_bearing should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'interest_bearing', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.interest_bearing should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'interest_bearing', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.interest_bearing should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'active', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'active', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'active', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'deleted', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'deleted', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'deleted', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'created', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'created', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'created', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_recurring_charge_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_recurring_charge_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._recurring_charge_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
