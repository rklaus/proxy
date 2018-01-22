SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_sample_entity',
    'Should have foreign table loan_pro_chorus_sandbox._sample_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_sample_entity',
    'Table loan_pro_chorus_sandbox._sample_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_sample_entity'::name, ARRAY[
    'id'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_sample_entity', 'id', 'Column loan_pro_chorus_sandbox._sample_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sample_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._sample_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sample_entity', 'id', 'Column loan_pro_chorus_sandbox._sample_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sample_entity', 'id', 'Column loan_pro_chorus_sandbox._sample_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sample_entity', 'active', 'Column loan_pro_chorus_sandbox._sample_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sample_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._sample_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sample_entity', 'active', 'Column loan_pro_chorus_sandbox._sample_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sample_entity', 'active', 'Column loan_pro_chorus_sandbox._sample_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sample_entity', 'deleted', 'Column loan_pro_chorus_sandbox._sample_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sample_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._sample_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sample_entity', 'deleted', 'Column loan_pro_chorus_sandbox._sample_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sample_entity', 'deleted', 'Column loan_pro_chorus_sandbox._sample_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_sample_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._sample_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_sample_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._sample_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_sample_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._sample_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_sample_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._sample_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
