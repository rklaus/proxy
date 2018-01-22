SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_linked_loan__entity',
    'Should have foreign table loan_pro_chorus_sandbox._linked_loan__entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_linked_loan__entity',
    'Table loan_pro_chorus_sandbox._linked_loan__entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_linked_loan__entity'::name, ARRAY[
    'id'::name,
    'loan'::name,
    'linked_loan'::name,
    'option_id'::name,
    'value'::name,
    'updated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_loan__entity', 'id', 'Column loan_pro_chorus_sandbox._linked_loan__entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._linked_loan__entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'id', 'Column loan_pro_chorus_sandbox._linked_loan__entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_loan__entity', 'id', 'Column loan_pro_chorus_sandbox._linked_loan__entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_loan__entity', 'loan', 'Column loan_pro_chorus_sandbox._linked_loan__entity.loan should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'loan', 'integer', 'Column loan_pro_chorus_sandbox._linked_loan__entity.loan should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'loan', 'Column loan_pro_chorus_sandbox._linked_loan__entity.loan should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_loan__entity', 'loan', 'Column loan_pro_chorus_sandbox._linked_loan__entity.loan should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_loan__entity', 'linked_loan', 'Column loan_pro_chorus_sandbox._linked_loan__entity.linked_loan should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'linked_loan', 'integer', 'Column loan_pro_chorus_sandbox._linked_loan__entity.linked_loan should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'linked_loan', 'Column loan_pro_chorus_sandbox._linked_loan__entity.linked_loan should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_loan__entity', 'linked_loan', 'Column loan_pro_chorus_sandbox._linked_loan__entity.linked_loan should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_loan__entity', 'option_id', 'Column loan_pro_chorus_sandbox._linked_loan__entity.option_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'option_id', 'integer', 'Column loan_pro_chorus_sandbox._linked_loan__entity.option_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'option_id', 'Column loan_pro_chorus_sandbox._linked_loan__entity.option_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_loan__entity', 'option_id', 'Column loan_pro_chorus_sandbox._linked_loan__entity.option_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_loan__entity', 'value', 'Column loan_pro_chorus_sandbox._linked_loan__entity.value should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'value', 'integer', 'Column loan_pro_chorus_sandbox._linked_loan__entity.value should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'value', 'Column loan_pro_chorus_sandbox._linked_loan__entity.value should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_loan__entity', 'value', 'Column loan_pro_chorus_sandbox._linked_loan__entity.value should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_loan__entity', 'updated', 'Column loan_pro_chorus_sandbox._linked_loan__entity.updated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'updated', 'text', 'Column loan_pro_chorus_sandbox._linked_loan__entity.updated should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'updated', 'Column loan_pro_chorus_sandbox._linked_loan__entity.updated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_loan__entity', 'updated', 'Column loan_pro_chorus_sandbox._linked_loan__entity.updated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_loan__entity', 'deleted', 'Column loan_pro_chorus_sandbox._linked_loan__entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._linked_loan__entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_loan__entity', 'deleted', 'Column loan_pro_chorus_sandbox._linked_loan__entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_loan__entity', 'deleted', 'Column loan_pro_chorus_sandbox._linked_loan__entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
