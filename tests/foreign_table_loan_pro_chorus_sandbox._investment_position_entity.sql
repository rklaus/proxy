SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_investment_position_entity',
    'Should have foreign table loan_pro_chorus_sandbox._investment_position_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_investment_position_entity',
    'Table loan_pro_chorus_sandbox._investment_position_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_investment_position_entity'::name, ARRAY[
    'id'::name,
    'holding_account_id'::name,
    'loan_id'::name,
    'position_type'::name,
    'effective_date'::name,
    'priority'::name,
    'amount_purchased'::name,
    'amount_paid'::name,
    'discount_fee'::name,
    'discount_calc_type'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'id', 'Column loan_pro_chorus_sandbox._investment_position_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._investment_position_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'id', 'Column loan_pro_chorus_sandbox._investment_position_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'id', 'Column loan_pro_chorus_sandbox._investment_position_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'holding_account_id', 'Column loan_pro_chorus_sandbox._investment_position_entity.holding_account_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'holding_account_id', 'integer', 'Column loan_pro_chorus_sandbox._investment_position_entity.holding_account_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'holding_account_id', 'Column loan_pro_chorus_sandbox._investment_position_entity.holding_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'holding_account_id', 'Column loan_pro_chorus_sandbox._investment_position_entity.holding_account_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'loan_id', 'Column loan_pro_chorus_sandbox._investment_position_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'loan_id', 'integer', 'Column loan_pro_chorus_sandbox._investment_position_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'loan_id', 'Column loan_pro_chorus_sandbox._investment_position_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'loan_id', 'Column loan_pro_chorus_sandbox._investment_position_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'position_type', 'Column loan_pro_chorus_sandbox._investment_position_entity.position_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'position_type', 'character(64)', 'Column loan_pro_chorus_sandbox._investment_position_entity.position_type should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'position_type', 'Column loan_pro_chorus_sandbox._investment_position_entity.position_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'position_type', 'Column loan_pro_chorus_sandbox._investment_position_entity.position_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'effective_date', 'Column loan_pro_chorus_sandbox._investment_position_entity.effective_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'effective_date', 'text', 'Column loan_pro_chorus_sandbox._investment_position_entity.effective_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'effective_date', 'Column loan_pro_chorus_sandbox._investment_position_entity.effective_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'effective_date', 'Column loan_pro_chorus_sandbox._investment_position_entity.effective_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'priority', 'Column loan_pro_chorus_sandbox._investment_position_entity.priority should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'priority', 'integer', 'Column loan_pro_chorus_sandbox._investment_position_entity.priority should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'priority', 'Column loan_pro_chorus_sandbox._investment_position_entity.priority should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'priority', 'Column loan_pro_chorus_sandbox._investment_position_entity.priority should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'amount_purchased', 'Column loan_pro_chorus_sandbox._investment_position_entity.amount_purchased should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'amount_purchased', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._investment_position_entity.amount_purchased should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'amount_purchased', 'Column loan_pro_chorus_sandbox._investment_position_entity.amount_purchased should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'amount_purchased', 'Column loan_pro_chorus_sandbox._investment_position_entity.amount_purchased should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'amount_paid', 'Column loan_pro_chorus_sandbox._investment_position_entity.amount_paid should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'amount_paid', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._investment_position_entity.amount_paid should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'amount_paid', 'Column loan_pro_chorus_sandbox._investment_position_entity.amount_paid should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'amount_paid', 'Column loan_pro_chorus_sandbox._investment_position_entity.amount_paid should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'discount_fee', 'Column loan_pro_chorus_sandbox._investment_position_entity.discount_fee should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'discount_fee', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._investment_position_entity.discount_fee should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'discount_fee', 'Column loan_pro_chorus_sandbox._investment_position_entity.discount_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'discount_fee', 'Column loan_pro_chorus_sandbox._investment_position_entity.discount_fee should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'discount_calc_type', 'Column loan_pro_chorus_sandbox._investment_position_entity.discount_calc_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'discount_calc_type', 'character(64)', 'Column loan_pro_chorus_sandbox._investment_position_entity.discount_calc_type should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'discount_calc_type', 'Column loan_pro_chorus_sandbox._investment_position_entity.discount_calc_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'discount_calc_type', 'Column loan_pro_chorus_sandbox._investment_position_entity.discount_calc_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'created', 'Column loan_pro_chorus_sandbox._investment_position_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._investment_position_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'created', 'Column loan_pro_chorus_sandbox._investment_position_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'created', 'Column loan_pro_chorus_sandbox._investment_position_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._investment_position_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._investment_position_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._investment_position_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._investment_position_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_investment_position_entity', 'deleted', 'Column loan_pro_chorus_sandbox._investment_position_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._investment_position_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_investment_position_entity', 'deleted', 'Column loan_pro_chorus_sandbox._investment_position_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_investment_position_entity', 'deleted', 'Column loan_pro_chorus_sandbox._investment_position_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
