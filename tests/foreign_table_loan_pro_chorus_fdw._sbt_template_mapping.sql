SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_sbt_template_mapping',
    'Should have foreign table loan_pro_chorus_fdw._sbt_template_mapping'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_sbt_template_mapping',
    'Table loan_pro_chorus_fdw._sbt_template_mapping should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_sbt_template_mapping'::name, ARRAY[
    'id'::name,
    'template_id'::name,
    'template_variable'::name,
    'context_variable'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_sbt_template_mapping', 'id', 'Column loan_pro_chorus_fdw._sbt_template_mapping.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'id', 'integer', 'Column loan_pro_chorus_fdw._sbt_template_mapping.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'id', 'Column loan_pro_chorus_fdw._sbt_template_mapping.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_sbt_template_mapping', 'id', 'Column loan_pro_chorus_fdw._sbt_template_mapping.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_sbt_template_mapping', 'template_id', 'Column loan_pro_chorus_fdw._sbt_template_mapping.template_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'template_id', 'integer', 'Column loan_pro_chorus_fdw._sbt_template_mapping.template_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'template_id', 'Column loan_pro_chorus_fdw._sbt_template_mapping.template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_sbt_template_mapping', 'template_id', 'Column loan_pro_chorus_fdw._sbt_template_mapping.template_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_sbt_template_mapping', 'template_variable', 'Column loan_pro_chorus_fdw._sbt_template_mapping.template_variable should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'template_variable', 'text', 'Column loan_pro_chorus_fdw._sbt_template_mapping.template_variable should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'template_variable', 'Column loan_pro_chorus_fdw._sbt_template_mapping.template_variable should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_sbt_template_mapping', 'template_variable', 'Column loan_pro_chorus_fdw._sbt_template_mapping.template_variable should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_sbt_template_mapping', 'context_variable', 'Column loan_pro_chorus_fdw._sbt_template_mapping.context_variable should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'context_variable', 'text', 'Column loan_pro_chorus_fdw._sbt_template_mapping.context_variable should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'context_variable', 'Column loan_pro_chorus_fdw._sbt_template_mapping.context_variable should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_sbt_template_mapping', 'context_variable', 'Column loan_pro_chorus_fdw._sbt_template_mapping.context_variable should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_sbt_template_mapping', 'active', 'Column loan_pro_chorus_fdw._sbt_template_mapping.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'active', 'integer', 'Column loan_pro_chorus_fdw._sbt_template_mapping.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'active', 'Column loan_pro_chorus_fdw._sbt_template_mapping.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_sbt_template_mapping', 'active', 'Column loan_pro_chorus_fdw._sbt_template_mapping.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_sbt_template_mapping', 'deleted', 'Column loan_pro_chorus_fdw._sbt_template_mapping.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._sbt_template_mapping.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'deleted', 'Column loan_pro_chorus_fdw._sbt_template_mapping.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_sbt_template_mapping', 'deleted', 'Column loan_pro_chorus_fdw._sbt_template_mapping.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_sbt_template_mapping', 'lastupdated', 'Column loan_pro_chorus_fdw._sbt_template_mapping.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._sbt_template_mapping.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_sbt_template_mapping', 'lastupdated', 'Column loan_pro_chorus_fdw._sbt_template_mapping.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_sbt_template_mapping', 'lastupdated', 'Column loan_pro_chorus_fdw._sbt_template_mapping.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
