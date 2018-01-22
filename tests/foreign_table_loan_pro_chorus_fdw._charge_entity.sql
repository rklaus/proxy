SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(87);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_charge_entity',
    'Should have foreign table loan_pro_chorus_fdw._charge_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_charge_entity',
    'Table loan_pro_chorus_fdw._charge_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_charge_entity'::name, ARRAY[
    'id'::name,
    'display_id'::name,
    'charge_application_type'::name,
    'type'::name,
    'amount'::name,
    'apply_date'::name,
    'info'::name,
    'paid_amount'::name,
    'paid_percent'::name,
    'past_due_calculation'::name,
    'interest_bearing'::name,
    'edit_comment'::name,
    'parent'::name,
    'child'::name,
    'active'::name,
    'deleted'::name,
    'mod_id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'related_payment_id'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'id', 'Column loan_pro_chorus_fdw._charge_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'id', 'Column loan_pro_chorus_fdw._charge_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'id', 'Column loan_pro_chorus_fdw._charge_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'display_id', 'Column loan_pro_chorus_fdw._charge_entity.display_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'display_id', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.display_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'display_id', 'Column loan_pro_chorus_fdw._charge_entity.display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'display_id', 'Column loan_pro_chorus_fdw._charge_entity.display_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'charge_application_type', 'Column loan_pro_chorus_fdw._charge_entity.charge_application_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'charge_application_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._charge_entity.charge_application_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'charge_application_type', 'Column loan_pro_chorus_fdw._charge_entity.charge_application_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'charge_application_type', 'Column loan_pro_chorus_fdw._charge_entity.charge_application_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'type', 'Column loan_pro_chorus_fdw._charge_entity.type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'type', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.type should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'type', 'Column loan_pro_chorus_fdw._charge_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'type', 'Column loan_pro_chorus_fdw._charge_entity.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'amount', 'Column loan_pro_chorus_fdw._charge_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._charge_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'amount', 'Column loan_pro_chorus_fdw._charge_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'amount', 'Column loan_pro_chorus_fdw._charge_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'apply_date', 'Column loan_pro_chorus_fdw._charge_entity.apply_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'apply_date', 'text', 'Column loan_pro_chorus_fdw._charge_entity.apply_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'apply_date', 'Column loan_pro_chorus_fdw._charge_entity.apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'apply_date', 'Column loan_pro_chorus_fdw._charge_entity.apply_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'info', 'Column loan_pro_chorus_fdw._charge_entity.info should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'info', 'text', 'Column loan_pro_chorus_fdw._charge_entity.info should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'info', 'Column loan_pro_chorus_fdw._charge_entity.info should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'info', 'Column loan_pro_chorus_fdw._charge_entity.info should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'paid_amount', 'Column loan_pro_chorus_fdw._charge_entity.paid_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'paid_amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._charge_entity.paid_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'paid_amount', 'Column loan_pro_chorus_fdw._charge_entity.paid_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'paid_amount', 'Column loan_pro_chorus_fdw._charge_entity.paid_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'paid_percent', 'Column loan_pro_chorus_fdw._charge_entity.paid_percent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'paid_percent', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._charge_entity.paid_percent should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'paid_percent', 'Column loan_pro_chorus_fdw._charge_entity.paid_percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'paid_percent', 'Column loan_pro_chorus_fdw._charge_entity.paid_percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'past_due_calculation', 'Column loan_pro_chorus_fdw._charge_entity.past_due_calculation should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'past_due_calculation', 'character(30)', 'Column loan_pro_chorus_fdw._charge_entity.past_due_calculation should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'past_due_calculation', 'Column loan_pro_chorus_fdw._charge_entity.past_due_calculation should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'past_due_calculation', 'Column loan_pro_chorus_fdw._charge_entity.past_due_calculation should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'interest_bearing', 'Column loan_pro_chorus_fdw._charge_entity.interest_bearing should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'interest_bearing', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.interest_bearing should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'interest_bearing', 'Column loan_pro_chorus_fdw._charge_entity.interest_bearing should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'interest_bearing', 'Column loan_pro_chorus_fdw._charge_entity.interest_bearing should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'edit_comment', 'Column loan_pro_chorus_fdw._charge_entity.edit_comment should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'edit_comment', 'text', 'Column loan_pro_chorus_fdw._charge_entity.edit_comment should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'edit_comment', 'Column loan_pro_chorus_fdw._charge_entity.edit_comment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'edit_comment', 'Column loan_pro_chorus_fdw._charge_entity.edit_comment should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'parent', 'Column loan_pro_chorus_fdw._charge_entity.parent should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'parent', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.parent should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'parent', 'Column loan_pro_chorus_fdw._charge_entity.parent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'parent', 'Column loan_pro_chorus_fdw._charge_entity.parent should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'child', 'Column loan_pro_chorus_fdw._charge_entity.child should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'child', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.child should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'child', 'Column loan_pro_chorus_fdw._charge_entity.child should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'child', 'Column loan_pro_chorus_fdw._charge_entity.child should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'active', 'Column loan_pro_chorus_fdw._charge_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'active', 'Column loan_pro_chorus_fdw._charge_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'active', 'Column loan_pro_chorus_fdw._charge_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'deleted', 'Column loan_pro_chorus_fdw._charge_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'deleted', 'Column loan_pro_chorus_fdw._charge_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'deleted', 'Column loan_pro_chorus_fdw._charge_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'mod_id', 'Column loan_pro_chorus_fdw._charge_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'mod_id', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'mod_id', 'Column loan_pro_chorus_fdw._charge_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'mod_id', 'Column loan_pro_chorus_fdw._charge_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'entity_id', 'Column loan_pro_chorus_fdw._charge_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'entity_id', 'Column loan_pro_chorus_fdw._charge_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'entity_id', 'Column loan_pro_chorus_fdw._charge_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'entity_type', 'Column loan_pro_chorus_fdw._charge_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._charge_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'entity_type', 'Column loan_pro_chorus_fdw._charge_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'entity_type', 'Column loan_pro_chorus_fdw._charge_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'related_payment_id', 'Column loan_pro_chorus_fdw._charge_entity.related_payment_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'related_payment_id', 'integer', 'Column loan_pro_chorus_fdw._charge_entity.related_payment_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'related_payment_id', 'Column loan_pro_chorus_fdw._charge_entity.related_payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'related_payment_id', 'Column loan_pro_chorus_fdw._charge_entity.related_payment_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_charge_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._charge_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_charge_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._charge_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_charge_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._charge_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_charge_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._charge_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
