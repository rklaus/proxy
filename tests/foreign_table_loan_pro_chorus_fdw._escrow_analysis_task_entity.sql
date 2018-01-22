SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_escrow_analysis_task_entity',
    'Should have foreign table loan_pro_chorus_fdw._escrow_analysis_task_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_escrow_analysis_task_entity',
    'Table loan_pro_chorus_fdw._escrow_analysis_task_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_escrow_analysis_task_entity'::name, ARRAY[
    'process_id'::name,
    'account_id'::name,
    'created'::name,
    'lastupdated'::name,
    'create_user'::name,
    'completed'::name,
    'completed_date'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'process_id', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.process_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'process_id', 'integer', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.process_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'process_id', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.process_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'process_id', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.process_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'account_id', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.account_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'account_id', 'integer', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.account_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'account_id', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'account_id', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.account_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'created', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'created', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'created', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'create_user', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.create_user should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'create_user', 'integer', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.create_user should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'create_user', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.create_user should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'create_user', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.create_user should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'completed', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.completed should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'completed', 'integer', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.completed should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'completed', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.completed should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'completed', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.completed should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'completed_date', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.completed_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'completed_date', 'text', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.completed_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'completed_date', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.completed_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'completed_date', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.completed_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'deleted', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'deleted', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_escrow_analysis_task_entity', 'deleted', 'Column loan_pro_chorus_fdw._escrow_analysis_task_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
