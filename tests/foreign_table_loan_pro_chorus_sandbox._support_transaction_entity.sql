SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_support_transaction_entity',
    'Should have foreign table loan_pro_chorus_sandbox._support_transaction_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_support_transaction_entity',
    'Table loan_pro_chorus_sandbox._support_transaction_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_support_transaction_entity'::name, ARRAY[
    'id'::name,
    'title'::name,
    'support_date'::name,
    'minutes'::name,
    'adjustment_type'::name,
    'notes'::name,
    'user_id'::name,
    'created'::name,
    'lastupdated'::name,
    'staff_user_id'::name,
    'deleted'::name,
    'support_code_id'::name,
    'remote_addr'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._support_transaction_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'title', 'Column loan_pro_chorus_sandbox._support_transaction_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'title', 'character varying(100)', 'Column loan_pro_chorus_sandbox._support_transaction_entity.title should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'title', 'Column loan_pro_chorus_sandbox._support_transaction_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'title', 'Column loan_pro_chorus_sandbox._support_transaction_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'support_date', 'Column loan_pro_chorus_sandbox._support_transaction_entity.support_date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'support_date', 'text', 'Column loan_pro_chorus_sandbox._support_transaction_entity.support_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'support_date', 'Column loan_pro_chorus_sandbox._support_transaction_entity.support_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'support_date', 'Column loan_pro_chorus_sandbox._support_transaction_entity.support_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'minutes', 'Column loan_pro_chorus_sandbox._support_transaction_entity.minutes should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'minutes', 'integer', 'Column loan_pro_chorus_sandbox._support_transaction_entity.minutes should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'minutes', 'Column loan_pro_chorus_sandbox._support_transaction_entity.minutes should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'minutes', 'Column loan_pro_chorus_sandbox._support_transaction_entity.minutes should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'adjustment_type', 'Column loan_pro_chorus_sandbox._support_transaction_entity.adjustment_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'adjustment_type', 'integer', 'Column loan_pro_chorus_sandbox._support_transaction_entity.adjustment_type should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'adjustment_type', 'Column loan_pro_chorus_sandbox._support_transaction_entity.adjustment_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'adjustment_type', 'Column loan_pro_chorus_sandbox._support_transaction_entity.adjustment_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'notes', 'Column loan_pro_chorus_sandbox._support_transaction_entity.notes should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'notes', 'text', 'Column loan_pro_chorus_sandbox._support_transaction_entity.notes should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'notes', 'Column loan_pro_chorus_sandbox._support_transaction_entity.notes should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'notes', 'Column loan_pro_chorus_sandbox._support_transaction_entity.notes should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'user_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'user_id', 'integer', 'Column loan_pro_chorus_sandbox._support_transaction_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'user_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'user_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'created', 'Column loan_pro_chorus_sandbox._support_transaction_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._support_transaction_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'created', 'Column loan_pro_chorus_sandbox._support_transaction_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'created', 'Column loan_pro_chorus_sandbox._support_transaction_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._support_transaction_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._support_transaction_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._support_transaction_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._support_transaction_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'staff_user_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.staff_user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'staff_user_id', 'integer', 'Column loan_pro_chorus_sandbox._support_transaction_entity.staff_user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'staff_user_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.staff_user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'staff_user_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.staff_user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'deleted', 'Column loan_pro_chorus_sandbox._support_transaction_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._support_transaction_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'deleted', 'Column loan_pro_chorus_sandbox._support_transaction_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'deleted', 'Column loan_pro_chorus_sandbox._support_transaction_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'support_code_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.support_code_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'support_code_id', 'integer', 'Column loan_pro_chorus_sandbox._support_transaction_entity.support_code_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'support_code_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.support_code_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'support_code_id', 'Column loan_pro_chorus_sandbox._support_transaction_entity.support_code_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_support_transaction_entity', 'remote_addr', 'Column loan_pro_chorus_sandbox._support_transaction_entity.remote_addr should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'remote_addr', 'character(20)', 'Column loan_pro_chorus_sandbox._support_transaction_entity.remote_addr should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_support_transaction_entity', 'remote_addr', 'Column loan_pro_chorus_sandbox._support_transaction_entity.remote_addr should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_support_transaction_entity', 'remote_addr', 'Column loan_pro_chorus_sandbox._support_transaction_entity.remote_addr should not  have a default');

SELECT * FROM finish();
ROLLBACK;
