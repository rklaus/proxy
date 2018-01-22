SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_restriction_group__user',
    'Should have foreign table loan_pro_chorus_fdw._restriction_group__user'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_restriction_group__user',
    'Table loan_pro_chorus_fdw._restriction_group__user should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_restriction_group__user'::name, ARRAY[
    'user_id'::name,
    'restriction_group_id'::name,
    'created'::name,
    'lastupdated'::name,
    'id'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group__user', 'user_id', 'Column loan_pro_chorus_fdw._restriction_group__user.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group__user', 'user_id', 'integer', 'Column loan_pro_chorus_fdw._restriction_group__user.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group__user', 'user_id', 'Column loan_pro_chorus_fdw._restriction_group__user.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group__user', 'user_id', 'Column loan_pro_chorus_fdw._restriction_group__user.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group__user', 'restriction_group_id', 'Column loan_pro_chorus_fdw._restriction_group__user.restriction_group_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group__user', 'restriction_group_id', 'integer', 'Column loan_pro_chorus_fdw._restriction_group__user.restriction_group_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group__user', 'restriction_group_id', 'Column loan_pro_chorus_fdw._restriction_group__user.restriction_group_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group__user', 'restriction_group_id', 'Column loan_pro_chorus_fdw._restriction_group__user.restriction_group_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group__user', 'created', 'Column loan_pro_chorus_fdw._restriction_group__user.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group__user', 'created', 'text', 'Column loan_pro_chorus_fdw._restriction_group__user.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group__user', 'created', 'Column loan_pro_chorus_fdw._restriction_group__user.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group__user', 'created', 'Column loan_pro_chorus_fdw._restriction_group__user.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group__user', 'lastupdated', 'Column loan_pro_chorus_fdw._restriction_group__user.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group__user', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._restriction_group__user.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group__user', 'lastupdated', 'Column loan_pro_chorus_fdw._restriction_group__user.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group__user', 'lastupdated', 'Column loan_pro_chorus_fdw._restriction_group__user.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group__user', 'id', 'Column loan_pro_chorus_fdw._restriction_group__user.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group__user', 'id', 'integer', 'Column loan_pro_chorus_fdw._restriction_group__user.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group__user', 'id', 'Column loan_pro_chorus_fdw._restriction_group__user.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group__user', 'id', 'Column loan_pro_chorus_fdw._restriction_group__user.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_restriction_group__user', 'deleted', 'Column loan_pro_chorus_fdw._restriction_group__user.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_restriction_group__user', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._restriction_group__user.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_restriction_group__user', 'deleted', 'Column loan_pro_chorus_fdw._restriction_group__user.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_restriction_group__user', 'deleted', 'Column loan_pro_chorus_fdw._restriction_group__user.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
