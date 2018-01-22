SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(63);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_bank_account_entity',
    'Should have foreign table loan_pro_sandbox._bank_account_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_bank_account_entity',
    'Table loan_pro_sandbox._bank_account_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_bank_account_entity'::name, ARRAY[
    'id'::name,
    'account_number'::name,
    'routing_number'::name,
    'bank_name'::name,
    'account_type'::name,
    'check_type'::name,
    'card_holder_name'::name,
    'card_number'::name,
    'card_expiration'::name,
    'card_type'::name,
    'address_id'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'id', 'Column loan_pro_sandbox._bank_account_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'id', 'integer', 'Column loan_pro_sandbox._bank_account_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'id', 'Column loan_pro_sandbox._bank_account_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'id', 'Column loan_pro_sandbox._bank_account_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'account_number', 'Column loan_pro_sandbox._bank_account_entity.account_number should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'account_number', 'bytea', 'Column loan_pro_sandbox._bank_account_entity.account_number should be type bytea');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'account_number', 'Column loan_pro_sandbox._bank_account_entity.account_number should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'account_number', 'Column loan_pro_sandbox._bank_account_entity.account_number should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'routing_number', 'Column loan_pro_sandbox._bank_account_entity.routing_number should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'routing_number', 'character(10)', 'Column loan_pro_sandbox._bank_account_entity.routing_number should be type character(10)');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'routing_number', 'Column loan_pro_sandbox._bank_account_entity.routing_number should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'routing_number', 'Column loan_pro_sandbox._bank_account_entity.routing_number should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'bank_name', 'Column loan_pro_sandbox._bank_account_entity.bank_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'bank_name', 'text', 'Column loan_pro_sandbox._bank_account_entity.bank_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'bank_name', 'Column loan_pro_sandbox._bank_account_entity.bank_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'bank_name', 'Column loan_pro_sandbox._bank_account_entity.bank_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'account_type', 'Column loan_pro_sandbox._bank_account_entity.account_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'account_type', 'character(30)', 'Column loan_pro_sandbox._bank_account_entity.account_type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'account_type', 'Column loan_pro_sandbox._bank_account_entity.account_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'account_type', 'Column loan_pro_sandbox._bank_account_entity.account_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'check_type', 'Column loan_pro_sandbox._bank_account_entity.check_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'check_type', 'character(30)', 'Column loan_pro_sandbox._bank_account_entity.check_type should be type character(30)');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'check_type', 'Column loan_pro_sandbox._bank_account_entity.check_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'check_type', 'Column loan_pro_sandbox._bank_account_entity.check_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'card_holder_name', 'Column loan_pro_sandbox._bank_account_entity.card_holder_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'card_holder_name', 'bytea', 'Column loan_pro_sandbox._bank_account_entity.card_holder_name should be type bytea');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'card_holder_name', 'Column loan_pro_sandbox._bank_account_entity.card_holder_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'card_holder_name', 'Column loan_pro_sandbox._bank_account_entity.card_holder_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'card_number', 'Column loan_pro_sandbox._bank_account_entity.card_number should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'card_number', 'bytea', 'Column loan_pro_sandbox._bank_account_entity.card_number should be type bytea');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'card_number', 'Column loan_pro_sandbox._bank_account_entity.card_number should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'card_number', 'Column loan_pro_sandbox._bank_account_entity.card_number should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'card_expiration', 'Column loan_pro_sandbox._bank_account_entity.card_expiration should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'card_expiration', 'bytea', 'Column loan_pro_sandbox._bank_account_entity.card_expiration should be type bytea');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'card_expiration', 'Column loan_pro_sandbox._bank_account_entity.card_expiration should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'card_expiration', 'Column loan_pro_sandbox._bank_account_entity.card_expiration should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'card_type', 'Column loan_pro_sandbox._bank_account_entity.card_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'card_type', 'character(100)', 'Column loan_pro_sandbox._bank_account_entity.card_type should be type character(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'card_type', 'Column loan_pro_sandbox._bank_account_entity.card_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'card_type', 'Column loan_pro_sandbox._bank_account_entity.card_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'address_id', 'Column loan_pro_sandbox._bank_account_entity.address_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'address_id', 'integer', 'Column loan_pro_sandbox._bank_account_entity.address_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'address_id', 'Column loan_pro_sandbox._bank_account_entity.address_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'address_id', 'Column loan_pro_sandbox._bank_account_entity.address_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'created', 'Column loan_pro_sandbox._bank_account_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'created', 'text', 'Column loan_pro_sandbox._bank_account_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'created', 'Column loan_pro_sandbox._bank_account_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'created', 'Column loan_pro_sandbox._bank_account_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'lastupdated', 'Column loan_pro_sandbox._bank_account_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._bank_account_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'lastupdated', 'Column loan_pro_sandbox._bank_account_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'lastupdated', 'Column loan_pro_sandbox._bank_account_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'active', 'Column loan_pro_sandbox._bank_account_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'active', 'integer', 'Column loan_pro_sandbox._bank_account_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'active', 'Column loan_pro_sandbox._bank_account_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'active', 'Column loan_pro_sandbox._bank_account_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_bank_account_entity', 'deleted', 'Column loan_pro_sandbox._bank_account_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_bank_account_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._bank_account_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_bank_account_entity', 'deleted', 'Column loan_pro_sandbox._bank_account_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_bank_account_entity', 'deleted', 'Column loan_pro_sandbox._bank_account_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
