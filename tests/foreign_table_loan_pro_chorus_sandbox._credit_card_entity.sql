SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_credit_card_entity',
    'Should have foreign table loan_pro_chorus_sandbox._credit_card_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_credit_card_entity',
    'Table loan_pro_chorus_sandbox._credit_card_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_credit_card_entity'::name, ARRAY[
    'id'::name,
    'token'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_card_entity', 'id', 'Column loan_pro_chorus_sandbox._credit_card_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._credit_card_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'id', 'Column loan_pro_chorus_sandbox._credit_card_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_card_entity', 'id', 'Column loan_pro_chorus_sandbox._credit_card_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_card_entity', 'token', 'Column loan_pro_chorus_sandbox._credit_card_entity.token should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'token', 'text', 'Column loan_pro_chorus_sandbox._credit_card_entity.token should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'token', 'Column loan_pro_chorus_sandbox._credit_card_entity.token should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_card_entity', 'token', 'Column loan_pro_chorus_sandbox._credit_card_entity.token should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_card_entity', 'deleted', 'Column loan_pro_chorus_sandbox._credit_card_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._credit_card_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'deleted', 'Column loan_pro_chorus_sandbox._credit_card_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_card_entity', 'deleted', 'Column loan_pro_chorus_sandbox._credit_card_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_card_entity', 'created', 'Column loan_pro_chorus_sandbox._credit_card_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._credit_card_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'created', 'Column loan_pro_chorus_sandbox._credit_card_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_card_entity', 'created', 'Column loan_pro_chorus_sandbox._credit_card_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_credit_card_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._credit_card_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._credit_card_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_credit_card_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._credit_card_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_credit_card_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._credit_card_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
