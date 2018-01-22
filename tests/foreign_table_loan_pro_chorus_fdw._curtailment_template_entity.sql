SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_curtailment_template_entity',
    'Should have foreign table loan_pro_chorus_fdw._curtailment_template_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_curtailment_template_entity',
    'Table loan_pro_chorus_fdw._curtailment_template_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_curtailment_template_entity'::name, ARRAY[
    'id'::name,
    'title'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_curtailment_template_entity', 'id', 'Column loan_pro_chorus_fdw._curtailment_template_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_curtailment_template_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._curtailment_template_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_curtailment_template_entity', 'id', 'Column loan_pro_chorus_fdw._curtailment_template_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_curtailment_template_entity', 'id', 'Column loan_pro_chorus_fdw._curtailment_template_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_curtailment_template_entity', 'title', 'Column loan_pro_chorus_fdw._curtailment_template_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_curtailment_template_entity', 'title', 'text', 'Column loan_pro_chorus_fdw._curtailment_template_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_curtailment_template_entity', 'title', 'Column loan_pro_chorus_fdw._curtailment_template_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_curtailment_template_entity', 'title', 'Column loan_pro_chorus_fdw._curtailment_template_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_curtailment_template_entity', 'deleted', 'Column loan_pro_chorus_fdw._curtailment_template_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_curtailment_template_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._curtailment_template_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_curtailment_template_entity', 'deleted', 'Column loan_pro_chorus_fdw._curtailment_template_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_curtailment_template_entity', 'deleted', 'Column loan_pro_chorus_fdw._curtailment_template_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_curtailment_template_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._curtailment_template_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_curtailment_template_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._curtailment_template_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_curtailment_template_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._curtailment_template_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_curtailment_template_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._curtailment_template_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
