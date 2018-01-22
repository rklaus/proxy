SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity',
    'Should have foreign table loan_pro_chorus_fdw._custom_boarding_process_step_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity',
    'Table loan_pro_chorus_fdw._custom_boarding_process_step_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_custom_boarding_process_step_entity'::name, ARRAY[
    'id'::name,
    'custom_boarding_process_id'::name,
    'step_id'::name,
    'label'::name,
    'position'::name,
    'can_skip'::name,
    'step_constraints'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'custom_boarding_process_id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.custom_boarding_process_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'custom_boarding_process_id', 'integer', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.custom_boarding_process_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'custom_boarding_process_id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.custom_boarding_process_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'custom_boarding_process_id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.custom_boarding_process_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'step_id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.step_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'step_id', 'character(100)', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.step_id should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'step_id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.step_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'step_id', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.step_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'label', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.label should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'label', 'text', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.label should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'label', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.label should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'label', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.label should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'position', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity."position" should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'position', 'integer', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity."position" should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'position', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity."position" should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'position', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity."position" should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'can_skip', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.can_skip should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'can_skip', 'integer', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.can_skip should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'can_skip', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.can_skip should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'can_skip', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.can_skip should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'step_constraints', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.step_constraints should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'step_constraints', 'text', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.step_constraints should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'step_constraints', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.step_constraints should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'step_constraints', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.step_constraints should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'deleted', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'deleted', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'deleted', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'created', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'created', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'created', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_custom_boarding_process_step_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._custom_boarding_process_step_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
