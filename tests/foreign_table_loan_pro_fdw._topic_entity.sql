SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_fdw', '_topic_entity',
    'Should have foreign table loan_pro_fdw._topic_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_topic_entity',
    'Table loan_pro_fdw._topic_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_topic_entity'::name, ARRAY[
    'id'::name,
    'topic_name'::name,
    'parent_topic'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_topic_entity', 'id', 'Column loan_pro_fdw._topic_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_topic_entity', 'id', 'integer', 'Column loan_pro_fdw._topic_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_topic_entity', 'id', 'Column loan_pro_fdw._topic_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_topic_entity', 'id', 'Column loan_pro_fdw._topic_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_topic_entity', 'topic_name', 'Column loan_pro_fdw._topic_entity.topic_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_topic_entity', 'topic_name', 'character varying(50)', 'Column loan_pro_fdw._topic_entity.topic_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_fdw', '_topic_entity', 'topic_name', 'Column loan_pro_fdw._topic_entity.topic_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_topic_entity', 'topic_name', 'Column loan_pro_fdw._topic_entity.topic_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_topic_entity', 'parent_topic', 'Column loan_pro_fdw._topic_entity.parent_topic should exist');
SELECT col_type_is(      'loan_pro_fdw', '_topic_entity', 'parent_topic', 'integer', 'Column loan_pro_fdw._topic_entity.parent_topic should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_topic_entity', 'parent_topic', 'Column loan_pro_fdw._topic_entity.parent_topic should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_topic_entity', 'parent_topic', 'Column loan_pro_fdw._topic_entity.parent_topic should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_topic_entity', 'deleted', 'Column loan_pro_fdw._topic_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_topic_entity', 'deleted', 'integer', 'Column loan_pro_fdw._topic_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_topic_entity', 'deleted', 'Column loan_pro_fdw._topic_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_topic_entity', 'deleted', 'Column loan_pro_fdw._topic_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_topic_entity', 'lastupdated', 'Column loan_pro_fdw._topic_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_topic_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._topic_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_topic_entity', 'lastupdated', 'Column loan_pro_fdw._topic_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_topic_entity', 'lastupdated', 'Column loan_pro_fdw._topic_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
