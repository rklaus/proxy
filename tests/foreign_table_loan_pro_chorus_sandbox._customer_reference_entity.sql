SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_customer_reference_entity',
    'Should have foreign table loan_pro_chorus_sandbox._customer_reference_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_customer_reference_entity',
    'Table loan_pro_chorus_sandbox._customer_reference_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_customer_reference_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'relation'::name,
    'primary_phone'::name,
    'secondary_phone'::name,
    'address_id'::name,
    'customer_id'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._customer_reference_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'name', 'Column loan_pro_chorus_sandbox._customer_reference_entity.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'name', 'text', 'Column loan_pro_chorus_sandbox._customer_reference_entity.name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'name', 'Column loan_pro_chorus_sandbox._customer_reference_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'name', 'Column loan_pro_chorus_sandbox._customer_reference_entity.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'relation', 'Column loan_pro_chorus_sandbox._customer_reference_entity.relation should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'relation', 'character(100)', 'Column loan_pro_chorus_sandbox._customer_reference_entity.relation should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'relation', 'Column loan_pro_chorus_sandbox._customer_reference_entity.relation should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'relation', 'Column loan_pro_chorus_sandbox._customer_reference_entity.relation should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'primary_phone', 'Column loan_pro_chorus_sandbox._customer_reference_entity.primary_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'primary_phone', 'character(20)', 'Column loan_pro_chorus_sandbox._customer_reference_entity.primary_phone should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'primary_phone', 'Column loan_pro_chorus_sandbox._customer_reference_entity.primary_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'primary_phone', 'Column loan_pro_chorus_sandbox._customer_reference_entity.primary_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'secondary_phone', 'Column loan_pro_chorus_sandbox._customer_reference_entity.secondary_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'secondary_phone', 'character(20)', 'Column loan_pro_chorus_sandbox._customer_reference_entity.secondary_phone should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'secondary_phone', 'Column loan_pro_chorus_sandbox._customer_reference_entity.secondary_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'secondary_phone', 'Column loan_pro_chorus_sandbox._customer_reference_entity.secondary_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'address_id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.address_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'address_id', 'integer', 'Column loan_pro_chorus_sandbox._customer_reference_entity.address_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'address_id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.address_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'address_id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.address_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'customer_id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.customer_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'customer_id', 'integer', 'Column loan_pro_chorus_sandbox._customer_reference_entity.customer_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'customer_id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'customer_id', 'Column loan_pro_chorus_sandbox._customer_reference_entity.customer_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'created', 'Column loan_pro_chorus_sandbox._customer_reference_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._customer_reference_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'created', 'Column loan_pro_chorus_sandbox._customer_reference_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'created', 'Column loan_pro_chorus_sandbox._customer_reference_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._customer_reference_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._customer_reference_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._customer_reference_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._customer_reference_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'active', 'Column loan_pro_chorus_sandbox._customer_reference_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._customer_reference_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'active', 'Column loan_pro_chorus_sandbox._customer_reference_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'active', 'Column loan_pro_chorus_sandbox._customer_reference_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_reference_entity', 'deleted', 'Column loan_pro_chorus_sandbox._customer_reference_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._customer_reference_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_reference_entity', 'deleted', 'Column loan_pro_chorus_sandbox._customer_reference_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_reference_entity', 'deleted', 'Column loan_pro_chorus_sandbox._customer_reference_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
