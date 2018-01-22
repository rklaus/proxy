SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_checking_account_entity',
    'Should have foreign table loan_pro_chorus_sandbox._checking_account_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_checking_account_entity',
    'Table loan_pro_chorus_sandbox._checking_account_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_checking_account_entity'::name, ARRAY[
    'id'::name,
    'token'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name,
    'address_id'::name,
    'processor'::name,
    'account_type'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_checking_account_entity', 'id', 'Column loan_pro_chorus_sandbox._checking_account_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._checking_account_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'id', 'Column loan_pro_chorus_sandbox._checking_account_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_checking_account_entity', 'id', 'Column loan_pro_chorus_sandbox._checking_account_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_checking_account_entity', 'token', 'Column loan_pro_chorus_sandbox._checking_account_entity.token should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'token', 'text', 'Column loan_pro_chorus_sandbox._checking_account_entity.token should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'token', 'Column loan_pro_chorus_sandbox._checking_account_entity.token should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_checking_account_entity', 'token', 'Column loan_pro_chorus_sandbox._checking_account_entity.token should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_checking_account_entity', 'deleted', 'Column loan_pro_chorus_sandbox._checking_account_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._checking_account_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'deleted', 'Column loan_pro_chorus_sandbox._checking_account_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_checking_account_entity', 'deleted', 'Column loan_pro_chorus_sandbox._checking_account_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_checking_account_entity', 'created', 'Column loan_pro_chorus_sandbox._checking_account_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._checking_account_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'created', 'Column loan_pro_chorus_sandbox._checking_account_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_checking_account_entity', 'created', 'Column loan_pro_chorus_sandbox._checking_account_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_checking_account_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._checking_account_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._checking_account_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._checking_account_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_checking_account_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._checking_account_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_checking_account_entity', 'address_id', 'Column loan_pro_chorus_sandbox._checking_account_entity.address_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'address_id', 'integer', 'Column loan_pro_chorus_sandbox._checking_account_entity.address_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'address_id', 'Column loan_pro_chorus_sandbox._checking_account_entity.address_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_checking_account_entity', 'address_id', 'Column loan_pro_chorus_sandbox._checking_account_entity.address_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_checking_account_entity', 'processor', 'Column loan_pro_chorus_sandbox._checking_account_entity.processor should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'processor', 'character varying(100)', 'Column loan_pro_chorus_sandbox._checking_account_entity.processor should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'processor', 'Column loan_pro_chorus_sandbox._checking_account_entity.processor should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_checking_account_entity', 'processor', 'Column loan_pro_chorus_sandbox._checking_account_entity.processor should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_checking_account_entity', 'account_type', 'Column loan_pro_chorus_sandbox._checking_account_entity.account_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'account_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._checking_account_entity.account_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_checking_account_entity', 'account_type', 'Column loan_pro_chorus_sandbox._checking_account_entity.account_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_checking_account_entity', 'account_type', 'Column loan_pro_chorus_sandbox._checking_account_entity.account_type should not  have a default');

SELECT * FROM finish();
ROLLBACK;
