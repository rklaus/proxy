SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_fdw', '_tenant_backup_log_entity',
    'Should have foreign table loan_pro_fdw._tenant_backup_log_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_tenant_backup_log_entity',
    'Table loan_pro_fdw._tenant_backup_log_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_tenant_backup_log_entity'::name, ARRAY[
    'id'::name,
    'batch_id'::name,
    'database'::name,
    's3_bucket'::name,
    's3_path'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_fdw', '_tenant_backup_log_entity', 'id', 'Column loan_pro_fdw._tenant_backup_log_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_backup_log_entity', 'id', 'integer', 'Column loan_pro_fdw._tenant_backup_log_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_backup_log_entity', 'id', 'Column loan_pro_fdw._tenant_backup_log_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_backup_log_entity', 'id', 'Column loan_pro_fdw._tenant_backup_log_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_backup_log_entity', 'batch_id', 'Column loan_pro_fdw._tenant_backup_log_entity.batch_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_backup_log_entity', 'batch_id', 'character(20)', 'Column loan_pro_fdw._tenant_backup_log_entity.batch_id should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_backup_log_entity', 'batch_id', 'Column loan_pro_fdw._tenant_backup_log_entity.batch_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_backup_log_entity', 'batch_id', 'Column loan_pro_fdw._tenant_backup_log_entity.batch_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_backup_log_entity', 'database', 'Column loan_pro_fdw._tenant_backup_log_entity.database should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_backup_log_entity', 'database', 'character(50)', 'Column loan_pro_fdw._tenant_backup_log_entity.database should be type character(50)');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_backup_log_entity', 'database', 'Column loan_pro_fdw._tenant_backup_log_entity.database should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_backup_log_entity', 'database', 'Column loan_pro_fdw._tenant_backup_log_entity.database should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_backup_log_entity', 's3_bucket', 'Column loan_pro_fdw._tenant_backup_log_entity.s3_bucket should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_backup_log_entity', 's3_bucket', 'character(50)', 'Column loan_pro_fdw._tenant_backup_log_entity.s3_bucket should be type character(50)');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_backup_log_entity', 's3_bucket', 'Column loan_pro_fdw._tenant_backup_log_entity.s3_bucket should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_backup_log_entity', 's3_bucket', 'Column loan_pro_fdw._tenant_backup_log_entity.s3_bucket should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_backup_log_entity', 's3_path', 'Column loan_pro_fdw._tenant_backup_log_entity.s3_path should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_backup_log_entity', 's3_path', 'text', 'Column loan_pro_fdw._tenant_backup_log_entity.s3_path should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_backup_log_entity', 's3_path', 'Column loan_pro_fdw._tenant_backup_log_entity.s3_path should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_backup_log_entity', 's3_path', 'Column loan_pro_fdw._tenant_backup_log_entity.s3_path should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_backup_log_entity', 'created', 'Column loan_pro_fdw._tenant_backup_log_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_backup_log_entity', 'created', 'text', 'Column loan_pro_fdw._tenant_backup_log_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_backup_log_entity', 'created', 'Column loan_pro_fdw._tenant_backup_log_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_backup_log_entity', 'created', 'Column loan_pro_fdw._tenant_backup_log_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_backup_log_entity', 'lastupdated', 'Column loan_pro_fdw._tenant_backup_log_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_backup_log_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._tenant_backup_log_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_backup_log_entity', 'lastupdated', 'Column loan_pro_fdw._tenant_backup_log_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_backup_log_entity', 'lastupdated', 'Column loan_pro_fdw._tenant_backup_log_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tenant_backup_log_entity', 'deleted', 'Column loan_pro_fdw._tenant_backup_log_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tenant_backup_log_entity', 'deleted', 'integer', 'Column loan_pro_fdw._tenant_backup_log_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tenant_backup_log_entity', 'deleted', 'Column loan_pro_fdw._tenant_backup_log_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tenant_backup_log_entity', 'deleted', 'Column loan_pro_fdw._tenant_backup_log_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
