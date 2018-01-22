SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_notification_entity',
    'Should have foreign table loan_pro_sandbox._notification_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_notification_entity',
    'Table loan_pro_sandbox._notification_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_notification_entity'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'loan_id'::name,
    'name'::name,
    'type'::name,
    'metadata'::name,
    'is_read'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'id', 'Column loan_pro_sandbox._notification_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'id', 'integer', 'Column loan_pro_sandbox._notification_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'id', 'Column loan_pro_sandbox._notification_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'id', 'Column loan_pro_sandbox._notification_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'user_id', 'Column loan_pro_sandbox._notification_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'user_id', 'integer', 'Column loan_pro_sandbox._notification_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'user_id', 'Column loan_pro_sandbox._notification_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'user_id', 'Column loan_pro_sandbox._notification_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'loan_id', 'Column loan_pro_sandbox._notification_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'loan_id', 'integer', 'Column loan_pro_sandbox._notification_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'loan_id', 'Column loan_pro_sandbox._notification_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'loan_id', 'Column loan_pro_sandbox._notification_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'name', 'Column loan_pro_sandbox._notification_entity.name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'name', 'character varying(100)', 'Column loan_pro_sandbox._notification_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'name', 'Column loan_pro_sandbox._notification_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'name', 'Column loan_pro_sandbox._notification_entity.name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'type', 'Column loan_pro_sandbox._notification_entity.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'type', 'character varying(100)', 'Column loan_pro_sandbox._notification_entity.type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'type', 'Column loan_pro_sandbox._notification_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'type', 'Column loan_pro_sandbox._notification_entity.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'metadata', 'Column loan_pro_sandbox._notification_entity.metadata should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'metadata', 'text', 'Column loan_pro_sandbox._notification_entity.metadata should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'metadata', 'Column loan_pro_sandbox._notification_entity.metadata should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'metadata', 'Column loan_pro_sandbox._notification_entity.metadata should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'is_read', 'Column loan_pro_sandbox._notification_entity.is_read should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'is_read', 'integer', 'Column loan_pro_sandbox._notification_entity.is_read should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'is_read', 'Column loan_pro_sandbox._notification_entity.is_read should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'is_read', 'Column loan_pro_sandbox._notification_entity.is_read should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'active', 'Column loan_pro_sandbox._notification_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'active', 'integer', 'Column loan_pro_sandbox._notification_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'active', 'Column loan_pro_sandbox._notification_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'active', 'Column loan_pro_sandbox._notification_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'deleted', 'Column loan_pro_sandbox._notification_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._notification_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'deleted', 'Column loan_pro_sandbox._notification_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'deleted', 'Column loan_pro_sandbox._notification_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'created', 'Column loan_pro_sandbox._notification_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'created', 'text', 'Column loan_pro_sandbox._notification_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'created', 'Column loan_pro_sandbox._notification_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'created', 'Column loan_pro_sandbox._notification_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_notification_entity', 'lastupdated', 'Column loan_pro_sandbox._notification_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_notification_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._notification_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_notification_entity', 'lastupdated', 'Column loan_pro_sandbox._notification_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_notification_entity', 'lastupdated', 'Column loan_pro_sandbox._notification_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
