SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_fdw', '_customer_credit_score_entity',
    'Should have foreign table loan_pro_fdw._customer_credit_score_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_customer_credit_score_entity',
    'Table loan_pro_fdw._customer_credit_score_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_customer_credit_score_entity'::name, ARRAY[
    'id'::name,
    'customer_id'::name,
    'equifax_score'::name,
    'transunion_score'::name,
    'experian_score'::name,
    'created'::name,
    'lastupdated'::name,
    'modified'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'id', 'Column loan_pro_fdw._customer_credit_score_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'id', 'integer', 'Column loan_pro_fdw._customer_credit_score_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'id', 'Column loan_pro_fdw._customer_credit_score_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'id', 'Column loan_pro_fdw._customer_credit_score_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'customer_id', 'Column loan_pro_fdw._customer_credit_score_entity.customer_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'customer_id', 'integer', 'Column loan_pro_fdw._customer_credit_score_entity.customer_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'customer_id', 'Column loan_pro_fdw._customer_credit_score_entity.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'customer_id', 'Column loan_pro_fdw._customer_credit_score_entity.customer_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'equifax_score', 'Column loan_pro_fdw._customer_credit_score_entity.equifax_score should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'equifax_score', 'integer', 'Column loan_pro_fdw._customer_credit_score_entity.equifax_score should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'equifax_score', 'Column loan_pro_fdw._customer_credit_score_entity.equifax_score should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'equifax_score', 'Column loan_pro_fdw._customer_credit_score_entity.equifax_score should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'transunion_score', 'Column loan_pro_fdw._customer_credit_score_entity.transunion_score should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'transunion_score', 'integer', 'Column loan_pro_fdw._customer_credit_score_entity.transunion_score should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'transunion_score', 'Column loan_pro_fdw._customer_credit_score_entity.transunion_score should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'transunion_score', 'Column loan_pro_fdw._customer_credit_score_entity.transunion_score should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'experian_score', 'Column loan_pro_fdw._customer_credit_score_entity.experian_score should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'experian_score', 'integer', 'Column loan_pro_fdw._customer_credit_score_entity.experian_score should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'experian_score', 'Column loan_pro_fdw._customer_credit_score_entity.experian_score should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'experian_score', 'Column loan_pro_fdw._customer_credit_score_entity.experian_score should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'created', 'Column loan_pro_fdw._customer_credit_score_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'created', 'text', 'Column loan_pro_fdw._customer_credit_score_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'created', 'Column loan_pro_fdw._customer_credit_score_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'created', 'Column loan_pro_fdw._customer_credit_score_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'lastupdated', 'Column loan_pro_fdw._customer_credit_score_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._customer_credit_score_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'lastupdated', 'Column loan_pro_fdw._customer_credit_score_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'lastupdated', 'Column loan_pro_fdw._customer_credit_score_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'modified', 'Column loan_pro_fdw._customer_credit_score_entity.modified should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'modified', 'text', 'Column loan_pro_fdw._customer_credit_score_entity.modified should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'modified', 'Column loan_pro_fdw._customer_credit_score_entity.modified should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'modified', 'Column loan_pro_fdw._customer_credit_score_entity.modified should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_credit_score_entity', 'deleted', 'Column loan_pro_fdw._customer_credit_score_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_credit_score_entity', 'deleted', 'integer', 'Column loan_pro_fdw._customer_credit_score_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_credit_score_entity', 'deleted', 'Column loan_pro_fdw._customer_credit_score_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_credit_score_entity', 'deleted', 'Column loan_pro_fdw._customer_credit_score_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
