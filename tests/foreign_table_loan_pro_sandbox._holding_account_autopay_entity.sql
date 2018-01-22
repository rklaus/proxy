SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(71);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_holding_account_autopay_entity',
    'Should have foreign table loan_pro_sandbox._holding_account_autopay_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_holding_account_autopay_entity',
    'Table loan_pro_sandbox._holding_account_autopay_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_holding_account_autopay_entity'::name, ARRAY[
    'id'::name,
    'holding_account_id'::name,
    'name'::name,
    'type'::name,
    'status'::name,
    'apply_date'::name,
    'process_datetime'::name,
    'amount'::name,
    'recurring_frequency'::name,
    'recurring_periods'::name,
    'days_in_period'::name,
    'last_dom_enabled'::name,
    'payment_method_id'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'id', 'Column loan_pro_sandbox._holding_account_autopay_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'id', 'integer', 'Column loan_pro_sandbox._holding_account_autopay_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'id', 'Column loan_pro_sandbox._holding_account_autopay_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'id', 'Column loan_pro_sandbox._holding_account_autopay_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'holding_account_id', 'Column loan_pro_sandbox._holding_account_autopay_entity.holding_account_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'holding_account_id', 'integer', 'Column loan_pro_sandbox._holding_account_autopay_entity.holding_account_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'holding_account_id', 'Column loan_pro_sandbox._holding_account_autopay_entity.holding_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'holding_account_id', 'Column loan_pro_sandbox._holding_account_autopay_entity.holding_account_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'name', 'Column loan_pro_sandbox._holding_account_autopay_entity.name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'name', 'text', 'Column loan_pro_sandbox._holding_account_autopay_entity.name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'name', 'Column loan_pro_sandbox._holding_account_autopay_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'name', 'Column loan_pro_sandbox._holding_account_autopay_entity.name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'type', 'Column loan_pro_sandbox._holding_account_autopay_entity.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'type', 'character(100)', 'Column loan_pro_sandbox._holding_account_autopay_entity.type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'type', 'Column loan_pro_sandbox._holding_account_autopay_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'type', 'Column loan_pro_sandbox._holding_account_autopay_entity.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'status', 'Column loan_pro_sandbox._holding_account_autopay_entity.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'status', 'character(100)', 'Column loan_pro_sandbox._holding_account_autopay_entity.status should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'status', 'Column loan_pro_sandbox._holding_account_autopay_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'status', 'Column loan_pro_sandbox._holding_account_autopay_entity.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'apply_date', 'Column loan_pro_sandbox._holding_account_autopay_entity.apply_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'apply_date', 'text', 'Column loan_pro_sandbox._holding_account_autopay_entity.apply_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'apply_date', 'Column loan_pro_sandbox._holding_account_autopay_entity.apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'apply_date', 'Column loan_pro_sandbox._holding_account_autopay_entity.apply_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'process_datetime', 'Column loan_pro_sandbox._holding_account_autopay_entity.process_datetime should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'process_datetime', 'text', 'Column loan_pro_sandbox._holding_account_autopay_entity.process_datetime should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'process_datetime', 'Column loan_pro_sandbox._holding_account_autopay_entity.process_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'process_datetime', 'Column loan_pro_sandbox._holding_account_autopay_entity.process_datetime should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'amount', 'Column loan_pro_sandbox._holding_account_autopay_entity.amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'amount', 'numeric(10,2)', 'Column loan_pro_sandbox._holding_account_autopay_entity.amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'amount', 'Column loan_pro_sandbox._holding_account_autopay_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'amount', 'Column loan_pro_sandbox._holding_account_autopay_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'recurring_frequency', 'Column loan_pro_sandbox._holding_account_autopay_entity.recurring_frequency should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'recurring_frequency', 'character(100)', 'Column loan_pro_sandbox._holding_account_autopay_entity.recurring_frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'recurring_frequency', 'Column loan_pro_sandbox._holding_account_autopay_entity.recurring_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'recurring_frequency', 'Column loan_pro_sandbox._holding_account_autopay_entity.recurring_frequency should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'recurring_periods', 'Column loan_pro_sandbox._holding_account_autopay_entity.recurring_periods should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'recurring_periods', 'integer', 'Column loan_pro_sandbox._holding_account_autopay_entity.recurring_periods should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'recurring_periods', 'Column loan_pro_sandbox._holding_account_autopay_entity.recurring_periods should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'recurring_periods', 'Column loan_pro_sandbox._holding_account_autopay_entity.recurring_periods should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'days_in_period', 'Column loan_pro_sandbox._holding_account_autopay_entity.days_in_period should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'days_in_period', 'character(100)', 'Column loan_pro_sandbox._holding_account_autopay_entity.days_in_period should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'days_in_period', 'Column loan_pro_sandbox._holding_account_autopay_entity.days_in_period should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'days_in_period', 'Column loan_pro_sandbox._holding_account_autopay_entity.days_in_period should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'last_dom_enabled', 'Column loan_pro_sandbox._holding_account_autopay_entity.last_dom_enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'last_dom_enabled', 'integer', 'Column loan_pro_sandbox._holding_account_autopay_entity.last_dom_enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'last_dom_enabled', 'Column loan_pro_sandbox._holding_account_autopay_entity.last_dom_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'last_dom_enabled', 'Column loan_pro_sandbox._holding_account_autopay_entity.last_dom_enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'payment_method_id', 'Column loan_pro_sandbox._holding_account_autopay_entity.payment_method_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'payment_method_id', 'integer', 'Column loan_pro_sandbox._holding_account_autopay_entity.payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'payment_method_id', 'Column loan_pro_sandbox._holding_account_autopay_entity.payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'payment_method_id', 'Column loan_pro_sandbox._holding_account_autopay_entity.payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'deleted', 'Column loan_pro_sandbox._holding_account_autopay_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._holding_account_autopay_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'deleted', 'Column loan_pro_sandbox._holding_account_autopay_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'deleted', 'Column loan_pro_sandbox._holding_account_autopay_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'created', 'Column loan_pro_sandbox._holding_account_autopay_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'created', 'text', 'Column loan_pro_sandbox._holding_account_autopay_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'created', 'Column loan_pro_sandbox._holding_account_autopay_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'created', 'Column loan_pro_sandbox._holding_account_autopay_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'lastupdated', 'Column loan_pro_sandbox._holding_account_autopay_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._holding_account_autopay_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'lastupdated', 'Column loan_pro_sandbox._holding_account_autopay_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'lastupdated', 'Column loan_pro_sandbox._holding_account_autopay_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_holding_account_autopay_entity', 'active', 'Column loan_pro_sandbox._holding_account_autopay_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'active', 'integer', 'Column loan_pro_sandbox._holding_account_autopay_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_holding_account_autopay_entity', 'active', 'Column loan_pro_sandbox._holding_account_autopay_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_holding_account_autopay_entity', 'active', 'Column loan_pro_sandbox._holding_account_autopay_entity.active should not  have a default');

SELECT * FROM finish();
ROLLBACK;
