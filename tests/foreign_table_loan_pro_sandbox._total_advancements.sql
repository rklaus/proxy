SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(11);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_total_advancements',
    'Should have foreign table loan_pro_sandbox._total_advancements'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_total_advancements',
    'Table loan_pro_sandbox._total_advancements should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_total_advancements'::name, ARRAY[
    'entity_id'::name,
    'total_advancements'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_total_advancements', 'entity_id', 'Column loan_pro_sandbox._total_advancements.entity_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_total_advancements', 'entity_id', 'integer', 'Column loan_pro_sandbox._total_advancements.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_total_advancements', 'entity_id', 'Column loan_pro_sandbox._total_advancements.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_total_advancements', 'entity_id', 'Column loan_pro_sandbox._total_advancements.entity_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_total_advancements', 'total_advancements', 'Column loan_pro_sandbox._total_advancements.total_advancements should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_total_advancements', 'total_advancements', 'numeric(33,2)', 'Column loan_pro_sandbox._total_advancements.total_advancements should be type numeric(33,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_total_advancements', 'total_advancements', 'Column loan_pro_sandbox._total_advancements.total_advancements should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_total_advancements', 'total_advancements', 'Column loan_pro_sandbox._total_advancements.total_advancements should not  have a default');

SELECT * FROM finish();
ROLLBACK;
