SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'loan_pro_fdw', '_support_transaction__topic',
    'Should have foreign table loan_pro_fdw._support_transaction__topic'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_support_transaction__topic',
    'Table loan_pro_fdw._support_transaction__topic should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_support_transaction__topic'::name, ARRAY[
    'support_transaction_id'::name,
    'topic_id'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_support_transaction__topic', 'support_transaction_id', 'Column loan_pro_fdw._support_transaction__topic.support_transaction_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_support_transaction__topic', 'support_transaction_id', 'integer', 'Column loan_pro_fdw._support_transaction__topic.support_transaction_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_support_transaction__topic', 'support_transaction_id', 'Column loan_pro_fdw._support_transaction__topic.support_transaction_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_support_transaction__topic', 'support_transaction_id', 'Column loan_pro_fdw._support_transaction__topic.support_transaction_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_support_transaction__topic', 'topic_id', 'Column loan_pro_fdw._support_transaction__topic.topic_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_support_transaction__topic', 'topic_id', 'integer', 'Column loan_pro_fdw._support_transaction__topic.topic_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_support_transaction__topic', 'topic_id', 'Column loan_pro_fdw._support_transaction__topic.topic_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_support_transaction__topic', 'topic_id', 'Column loan_pro_fdw._support_transaction__topic.topic_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_support_transaction__topic', 'lastupdated', 'Column loan_pro_fdw._support_transaction__topic.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_support_transaction__topic', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._support_transaction__topic.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_support_transaction__topic', 'lastupdated', 'Column loan_pro_fdw._support_transaction__topic.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_support_transaction__topic', 'lastupdated', 'Column loan_pro_fdw._support_transaction__topic.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
