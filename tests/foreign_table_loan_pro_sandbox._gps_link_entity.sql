SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_gps_link_entity',
    'Should have foreign table loan_pro_sandbox._gps_link_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_gps_link_entity',
    'Table loan_pro_sandbox._gps_link_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_gps_link_entity'::name, ARRAY[
    'id'::name,
    'url'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_gps_link_entity', 'id', 'Column loan_pro_sandbox._gps_link_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_gps_link_entity', 'id', 'integer', 'Column loan_pro_sandbox._gps_link_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_gps_link_entity', 'id', 'Column loan_pro_sandbox._gps_link_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_gps_link_entity', 'id', 'Column loan_pro_sandbox._gps_link_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_gps_link_entity', 'url', 'Column loan_pro_sandbox._gps_link_entity.url should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_gps_link_entity', 'url', 'text', 'Column loan_pro_sandbox._gps_link_entity.url should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_gps_link_entity', 'url', 'Column loan_pro_sandbox._gps_link_entity.url should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_gps_link_entity', 'url', 'Column loan_pro_sandbox._gps_link_entity.url should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_gps_link_entity', 'active', 'Column loan_pro_sandbox._gps_link_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_gps_link_entity', 'active', 'integer', 'Column loan_pro_sandbox._gps_link_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_gps_link_entity', 'active', 'Column loan_pro_sandbox._gps_link_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_gps_link_entity', 'active', 'Column loan_pro_sandbox._gps_link_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_gps_link_entity', 'deleted', 'Column loan_pro_sandbox._gps_link_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_gps_link_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._gps_link_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_gps_link_entity', 'deleted', 'Column loan_pro_sandbox._gps_link_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_gps_link_entity', 'deleted', 'Column loan_pro_sandbox._gps_link_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_gps_link_entity', 'created', 'Column loan_pro_sandbox._gps_link_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_gps_link_entity', 'created', 'text', 'Column loan_pro_sandbox._gps_link_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_gps_link_entity', 'created', 'Column loan_pro_sandbox._gps_link_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_gps_link_entity', 'created', 'Column loan_pro_sandbox._gps_link_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_gps_link_entity', 'lastupdated', 'Column loan_pro_sandbox._gps_link_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_gps_link_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._gps_link_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_gps_link_entity', 'lastupdated', 'Column loan_pro_sandbox._gps_link_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_gps_link_entity', 'lastupdated', 'Column loan_pro_sandbox._gps_link_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
