SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_security_group',
    'Should have foreign table loan_pro_chorus_fdw._security_group'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_security_group',
    'Table loan_pro_chorus_fdw._security_group should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_security_group'::name, ARRAY[
    'id'::name,
    'name'::name,
    'description'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_security_group', 'id', 'Column loan_pro_chorus_fdw._security_group.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_security_group', 'id', 'integer', 'Column loan_pro_chorus_fdw._security_group.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_security_group', 'id', 'Column loan_pro_chorus_fdw._security_group.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_security_group', 'id', 'Column loan_pro_chorus_fdw._security_group.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_security_group', 'name', 'Column loan_pro_chorus_fdw._security_group.name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_security_group', 'name', 'character varying(50)', 'Column loan_pro_chorus_fdw._security_group.name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_security_group', 'name', 'Column loan_pro_chorus_fdw._security_group.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_security_group', 'name', 'Column loan_pro_chorus_fdw._security_group.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_security_group', 'description', 'Column loan_pro_chorus_fdw._security_group.description should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_security_group', 'description', 'text', 'Column loan_pro_chorus_fdw._security_group.description should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_security_group', 'description', 'Column loan_pro_chorus_fdw._security_group.description should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_security_group', 'description', 'Column loan_pro_chorus_fdw._security_group.description should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_security_group', 'active', 'Column loan_pro_chorus_fdw._security_group.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_security_group', 'active', 'integer', 'Column loan_pro_chorus_fdw._security_group.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_security_group', 'active', 'Column loan_pro_chorus_fdw._security_group.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_security_group', 'active', 'Column loan_pro_chorus_fdw._security_group.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_security_group', 'deleted', 'Column loan_pro_chorus_fdw._security_group.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_security_group', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._security_group.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_security_group', 'deleted', 'Column loan_pro_chorus_fdw._security_group.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_security_group', 'deleted', 'Column loan_pro_chorus_fdw._security_group.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_security_group', 'lastupdated', 'Column loan_pro_chorus_fdw._security_group.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_security_group', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._security_group.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_security_group', 'lastupdated', 'Column loan_pro_chorus_fdw._security_group.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_security_group', 'lastupdated', 'Column loan_pro_chorus_fdw._security_group.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
