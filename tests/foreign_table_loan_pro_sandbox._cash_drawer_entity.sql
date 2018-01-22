SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_cash_drawer_entity',
    'Should have foreign table loan_pro_sandbox._cash_drawer_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_cash_drawer_entity',
    'Table loan_pro_sandbox._cash_drawer_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_cash_drawer_entity'::name, ARRAY[
    'id'::name,
    'title'::name,
    'balance'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer_entity', 'id', 'Column loan_pro_sandbox._cash_drawer_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer_entity', 'id', 'integer', 'Column loan_pro_sandbox._cash_drawer_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer_entity', 'id', 'Column loan_pro_sandbox._cash_drawer_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer_entity', 'id', 'Column loan_pro_sandbox._cash_drawer_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer_entity', 'title', 'Column loan_pro_sandbox._cash_drawer_entity.title should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer_entity', 'title', 'character varying(100)', 'Column loan_pro_sandbox._cash_drawer_entity.title should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer_entity', 'title', 'Column loan_pro_sandbox._cash_drawer_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer_entity', 'title', 'Column loan_pro_sandbox._cash_drawer_entity.title should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer_entity', 'balance', 'Column loan_pro_sandbox._cash_drawer_entity.balance should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer_entity', 'balance', 'numeric(11,2)', 'Column loan_pro_sandbox._cash_drawer_entity.balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer_entity', 'balance', 'Column loan_pro_sandbox._cash_drawer_entity.balance should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer_entity', 'balance', 'Column loan_pro_sandbox._cash_drawer_entity.balance should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer_entity', 'created', 'Column loan_pro_sandbox._cash_drawer_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer_entity', 'created', 'text', 'Column loan_pro_sandbox._cash_drawer_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer_entity', 'created', 'Column loan_pro_sandbox._cash_drawer_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer_entity', 'created', 'Column loan_pro_sandbox._cash_drawer_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer_entity', 'lastupdated', 'Column loan_pro_sandbox._cash_drawer_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._cash_drawer_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer_entity', 'lastupdated', 'Column loan_pro_sandbox._cash_drawer_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer_entity', 'lastupdated', 'Column loan_pro_sandbox._cash_drawer_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer_entity', 'active', 'Column loan_pro_sandbox._cash_drawer_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer_entity', 'active', 'integer', 'Column loan_pro_sandbox._cash_drawer_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer_entity', 'active', 'Column loan_pro_sandbox._cash_drawer_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer_entity', 'active', 'Column loan_pro_sandbox._cash_drawer_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_cash_drawer_entity', 'deleted', 'Column loan_pro_sandbox._cash_drawer_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_cash_drawer_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._cash_drawer_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_cash_drawer_entity', 'deleted', 'Column loan_pro_sandbox._cash_drawer_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_cash_drawer_entity', 'deleted', 'Column loan_pro_sandbox._cash_drawer_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
