SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_fdw', '_rule__category',
    'Should have foreign table loan_pro_fdw._rule__category'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_rule__category',
    'Table loan_pro_fdw._rule__category should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_rule__category'::name, ARRAY[
    'rule_id'::name,
    'category_id'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_fdw', '_rule__category', 'rule_id', 'Column loan_pro_fdw._rule__category.rule_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_rule__category', 'rule_id', 'integer', 'Column loan_pro_fdw._rule__category.rule_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_rule__category', 'rule_id', 'Column loan_pro_fdw._rule__category.rule_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_rule__category', 'rule_id', 'Column loan_pro_fdw._rule__category.rule_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_rule__category', 'category_id', 'Column loan_pro_fdw._rule__category.category_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_rule__category', 'category_id', 'integer', 'Column loan_pro_fdw._rule__category.category_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_rule__category', 'category_id', 'Column loan_pro_fdw._rule__category.category_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_rule__category', 'category_id', 'Column loan_pro_fdw._rule__category.category_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_rule__category', 'created', 'Column loan_pro_fdw._rule__category.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_rule__category', 'created', 'text', 'Column loan_pro_fdw._rule__category.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_rule__category', 'created', 'Column loan_pro_fdw._rule__category.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_rule__category', 'created', 'Column loan_pro_fdw._rule__category.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_rule__category', 'lastupdated', 'Column loan_pro_fdw._rule__category.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_rule__category', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._rule__category.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_rule__category', 'lastupdated', 'Column loan_pro_fdw._rule__category.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_rule__category', 'lastupdated', 'Column loan_pro_fdw._rule__category.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_rule__category', 'deleted', 'Column loan_pro_fdw._rule__category.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_rule__category', 'deleted', 'integer', 'Column loan_pro_fdw._rule__category.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_rule__category', 'deleted', 'Column loan_pro_fdw._rule__category.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_rule__category', 'deleted', 'Column loan_pro_fdw._rule__category.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
