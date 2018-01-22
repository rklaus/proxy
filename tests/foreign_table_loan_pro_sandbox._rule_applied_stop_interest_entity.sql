SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(63);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_rule_applied_stop_interest_entity',
    'Should have foreign table loan_pro_sandbox._rule_applied_stop_interest_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_rule_applied_stop_interest_entity',
    'Table loan_pro_sandbox._rule_applied_stop_interest_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_rule_applied_stop_interest_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'rule'::name,
    'days_from_today'::name,
    'type'::name,
    'enroll_new_loans'::name,
    'enroll_existing_loans'::name,
    'enabled'::name,
    'eval_in_daily_maint'::name,
    'eval_real_time'::name,
    'forcing'::name,
    'deleted'::name,
    'global_order'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'id', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'id', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'id', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'id', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'name', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'name', 'character varying(100)', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'name', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'name', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'rule', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.rule should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'rule', 'text', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.rule should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'rule', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'rule', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.rule should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'days_from_today', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.days_from_today should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'days_from_today', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.days_from_today should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'days_from_today', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.days_from_today should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'days_from_today', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.days_from_today should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'type', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'type', 'character(30)', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'type', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'type', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enroll_new_loans', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enroll_new_loans should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enroll_new_loans', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enroll_new_loans should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enroll_new_loans', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enroll_new_loans should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enroll_new_loans', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enroll_new_loans should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enroll_existing_loans', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enroll_existing_loans should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enroll_existing_loans', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enroll_existing_loans should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enroll_existing_loans', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enroll_existing_loans should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enroll_existing_loans', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enroll_existing_loans should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enabled', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enabled should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enabled', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enabled should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enabled', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'enabled', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.enabled should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'eval_in_daily_maint', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.eval_in_daily_maint should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'eval_in_daily_maint', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.eval_in_daily_maint should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'eval_in_daily_maint', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.eval_in_daily_maint should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'eval_in_daily_maint', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.eval_in_daily_maint should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'eval_real_time', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.eval_real_time should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'eval_real_time', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.eval_real_time should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'eval_real_time', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.eval_real_time should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'eval_real_time', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.eval_real_time should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'forcing', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.forcing should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'forcing', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.forcing should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'forcing', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.forcing should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'forcing', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.forcing should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'deleted', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'deleted', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'deleted', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'global_order', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.global_order should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'global_order', 'integer', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.global_order should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'global_order', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.global_order should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'global_order', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.global_order should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'created', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'created', 'text', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'created', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'created', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'lastupdated', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'lastupdated', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_rule_applied_stop_interest_entity', 'lastupdated', 'Column loan_pro_sandbox._rule_applied_stop_interest_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
