SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity',
    'Should have foreign table loan_pro_chorus_sandbox._curtailment_template_lines_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity',
    'Table loan_pro_chorus_sandbox._curtailment_template_lines_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_curtailment_template_lines_entity'::name, ARRAY[
    'id'::name,
    'template_id'::name,
    'days'::name,
    'amount'::name,
    'percent'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'id', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'id', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'id', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'template_id', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.template_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'template_id', 'integer', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.template_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'template_id', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'template_id', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.template_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'days', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.days should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'days', 'integer', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'days', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'days', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.days should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'amount', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'amount', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'amount', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'percent', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.percent should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'percent', 'numeric(11,7)', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.percent should be type numeric(11,7)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'percent', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.percent should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'percent', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.percent should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'deleted', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'deleted', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'deleted', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_curtailment_template_lines_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._curtailment_template_lines_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
