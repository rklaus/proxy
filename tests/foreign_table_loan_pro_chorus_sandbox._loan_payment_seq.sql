SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan_payment_seq',
    'Should have foreign table loan_pro_chorus_sandbox._loan_payment_seq'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan_payment_seq',
    'Table loan_pro_chorus_sandbox._loan_payment_seq should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan_payment_seq'::name, ARRAY[
    'entity_id'::name,
    'entity_type'::name,
    'seq'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_payment_seq', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_payment_seq.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_payment_seq', 'entity_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_payment_seq.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_payment_seq', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_payment_seq.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_payment_seq', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_payment_seq.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_payment_seq', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_payment_seq.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_payment_seq', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._loan_payment_seq.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_payment_seq', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_payment_seq.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_payment_seq', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_payment_seq.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_payment_seq', 'seq', 'Column loan_pro_chorus_sandbox._loan_payment_seq.seq should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_payment_seq', 'seq', 'integer', 'Column loan_pro_chorus_sandbox._loan_payment_seq.seq should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_payment_seq', 'seq', 'Column loan_pro_chorus_sandbox._loan_payment_seq.seq should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_payment_seq', 'seq', 'Column loan_pro_chorus_sandbox._loan_payment_seq.seq should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_payment_seq', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_payment_seq.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_payment_seq', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._loan_payment_seq.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_payment_seq', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_payment_seq.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_payment_seq', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_payment_seq.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
