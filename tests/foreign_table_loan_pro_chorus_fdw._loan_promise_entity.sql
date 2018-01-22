SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(67);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_promise_entity',
    'Should have foreign table loan_pro_chorus_fdw._loan_promise_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_promise_entity',
    'Table loan_pro_chorus_fdw._loan_promise_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_promise_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'subject'::name,
    'note'::name,
    'amount'::name,
    'fulfilled'::name,
    'due_date'::name,
    'fulfillment_date'::name,
    'type'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name,
    'logged_by'::name,
    'fulfilled_date'::name,
    'fulfilled_by'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'id', 'Column loan_pro_chorus_fdw._loan_promise_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_promise_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'id', 'Column loan_pro_chorus_fdw._loan_promise_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'id', 'Column loan_pro_chorus_fdw._loan_promise_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'loan_id', 'Column loan_pro_chorus_fdw._loan_promise_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan_promise_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'loan_id', 'Column loan_pro_chorus_fdw._loan_promise_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'loan_id', 'Column loan_pro_chorus_fdw._loan_promise_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'subject', 'Column loan_pro_chorus_fdw._loan_promise_entity.subject should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'subject', 'character varying(100)', 'Column loan_pro_chorus_fdw._loan_promise_entity.subject should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'subject', 'Column loan_pro_chorus_fdw._loan_promise_entity.subject should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'subject', 'Column loan_pro_chorus_fdw._loan_promise_entity.subject should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'note', 'Column loan_pro_chorus_fdw._loan_promise_entity.note should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'note', 'text', 'Column loan_pro_chorus_fdw._loan_promise_entity.note should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'note', 'Column loan_pro_chorus_fdw._loan_promise_entity.note should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'note', 'Column loan_pro_chorus_fdw._loan_promise_entity.note should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_promise_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'amount', 'numeric(6,2)', 'Column loan_pro_chorus_fdw._loan_promise_entity.amount should be type numeric(6,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_promise_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'amount', 'Column loan_pro_chorus_fdw._loan_promise_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled', 'integer', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'due_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.due_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'due_date', 'text', 'Column loan_pro_chorus_fdw._loan_promise_entity.due_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'due_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.due_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'due_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.due_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfillment_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfillment_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfillment_date', 'text', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfillment_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfillment_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfillment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfillment_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfillment_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'type', 'Column loan_pro_chorus_fdw._loan_promise_entity.type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'type', 'character varying(100)', 'Column loan_pro_chorus_fdw._loan_promise_entity.type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'type', 'Column loan_pro_chorus_fdw._loan_promise_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'type', 'Column loan_pro_chorus_fdw._loan_promise_entity.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'active', 'Column loan_pro_chorus_fdw._loan_promise_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._loan_promise_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'active', 'Column loan_pro_chorus_fdw._loan_promise_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'active', 'Column loan_pro_chorus_fdw._loan_promise_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_promise_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_promise_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_promise_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'deleted', 'Column loan_pro_chorus_fdw._loan_promise_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'created', 'Column loan_pro_chorus_fdw._loan_promise_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._loan_promise_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'created', 'Column loan_pro_chorus_fdw._loan_promise_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'created', 'Column loan_pro_chorus_fdw._loan_promise_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_promise_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._loan_promise_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_promise_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._loan_promise_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'logged_by', 'Column loan_pro_chorus_fdw._loan_promise_entity.logged_by should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'logged_by', 'text', 'Column loan_pro_chorus_fdw._loan_promise_entity.logged_by should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'logged_by', 'Column loan_pro_chorus_fdw._loan_promise_entity.logged_by should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'logged_by', 'Column loan_pro_chorus_fdw._loan_promise_entity.logged_by should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled_date', 'text', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled_date', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled_by', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled_by should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled_by', 'text', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled_by should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled_by', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled_by should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_promise_entity', 'fulfilled_by', 'Column loan_pro_chorus_fdw._loan_promise_entity.fulfilled_by should not  have a default');

SELECT * FROM finish();
ROLLBACK;
