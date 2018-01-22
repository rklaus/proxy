SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_linked_info__entity',
    'Should have foreign table loan_pro_chorus_sandbox._linked_info__entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_linked_info__entity',
    'Table loan_pro_chorus_sandbox._linked_info__entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_linked_info__entity'::name, ARRAY[
    'id'::name,
    'linked_loan'::name,
    'entity_type'::name,
    'entity_id'::name,
    'linked_entity_id'::name,
    'direction'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_info__entity', 'id', 'Column loan_pro_chorus_sandbox._linked_info__entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._linked_info__entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'id', 'Column loan_pro_chorus_sandbox._linked_info__entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_info__entity', 'id', 'Column loan_pro_chorus_sandbox._linked_info__entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_info__entity', 'linked_loan', 'Column loan_pro_chorus_sandbox._linked_info__entity.linked_loan should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'linked_loan', 'integer', 'Column loan_pro_chorus_sandbox._linked_info__entity.linked_loan should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'linked_loan', 'Column loan_pro_chorus_sandbox._linked_info__entity.linked_loan should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_info__entity', 'linked_loan', 'Column loan_pro_chorus_sandbox._linked_info__entity.linked_loan should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_info__entity', 'entity_type', 'Column loan_pro_chorus_sandbox._linked_info__entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._linked_info__entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'entity_type', 'Column loan_pro_chorus_sandbox._linked_info__entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_info__entity', 'entity_type', 'Column loan_pro_chorus_sandbox._linked_info__entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_info__entity', 'entity_id', 'Column loan_pro_chorus_sandbox._linked_info__entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'entity_id', 'integer', 'Column loan_pro_chorus_sandbox._linked_info__entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'entity_id', 'Column loan_pro_chorus_sandbox._linked_info__entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_info__entity', 'entity_id', 'Column loan_pro_chorus_sandbox._linked_info__entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_info__entity', 'linked_entity_id', 'Column loan_pro_chorus_sandbox._linked_info__entity.linked_entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'linked_entity_id', 'integer', 'Column loan_pro_chorus_sandbox._linked_info__entity.linked_entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'linked_entity_id', 'Column loan_pro_chorus_sandbox._linked_info__entity.linked_entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_info__entity', 'linked_entity_id', 'Column loan_pro_chorus_sandbox._linked_info__entity.linked_entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_info__entity', 'direction', 'Column loan_pro_chorus_sandbox._linked_info__entity.direction should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'direction', 'text', 'Column loan_pro_chorus_sandbox._linked_info__entity.direction should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'direction', 'Column loan_pro_chorus_sandbox._linked_info__entity.direction should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_info__entity', 'direction', 'Column loan_pro_chorus_sandbox._linked_info__entity.direction should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_info__entity', 'deleted', 'Column loan_pro_chorus_sandbox._linked_info__entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._linked_info__entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'deleted', 'Column loan_pro_chorus_sandbox._linked_info__entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_info__entity', 'deleted', 'Column loan_pro_chorus_sandbox._linked_info__entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_linked_info__entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._linked_info__entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._linked_info__entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_linked_info__entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._linked_info__entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_linked_info__entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._linked_info__entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
