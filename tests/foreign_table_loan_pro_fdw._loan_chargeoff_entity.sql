SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_fdw', '_loan_chargeoff_entity',
    'Should have foreign table loan_pro_fdw._loan_chargeoff_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_loan_chargeoff_entity',
    'Table loan_pro_fdw._loan_chargeoff_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_loan_chargeoff_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'payment_id'::name,
    'credit_id'::name,
    'updated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_fdw', '_loan_chargeoff_entity', 'id', 'Column loan_pro_fdw._loan_chargeoff_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_chargeoff_entity', 'id', 'integer', 'Column loan_pro_fdw._loan_chargeoff_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_chargeoff_entity', 'id', 'Column loan_pro_fdw._loan_chargeoff_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_chargeoff_entity', 'id', 'Column loan_pro_fdw._loan_chargeoff_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_chargeoff_entity', 'entity_id', 'Column loan_pro_fdw._loan_chargeoff_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_chargeoff_entity', 'entity_id', 'integer', 'Column loan_pro_fdw._loan_chargeoff_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_chargeoff_entity', 'entity_id', 'Column loan_pro_fdw._loan_chargeoff_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_chargeoff_entity', 'entity_id', 'Column loan_pro_fdw._loan_chargeoff_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_chargeoff_entity', 'entity_type', 'Column loan_pro_fdw._loan_chargeoff_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_chargeoff_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_fdw._loan_chargeoff_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_loan_chargeoff_entity', 'entity_type', 'Column loan_pro_fdw._loan_chargeoff_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_chargeoff_entity', 'entity_type', 'Column loan_pro_fdw._loan_chargeoff_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_chargeoff_entity', 'payment_id', 'Column loan_pro_fdw._loan_chargeoff_entity.payment_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_chargeoff_entity', 'payment_id', 'integer', 'Column loan_pro_fdw._loan_chargeoff_entity.payment_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_chargeoff_entity', 'payment_id', 'Column loan_pro_fdw._loan_chargeoff_entity.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_chargeoff_entity', 'payment_id', 'Column loan_pro_fdw._loan_chargeoff_entity.payment_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_chargeoff_entity', 'credit_id', 'Column loan_pro_fdw._loan_chargeoff_entity.credit_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_chargeoff_entity', 'credit_id', 'integer', 'Column loan_pro_fdw._loan_chargeoff_entity.credit_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_chargeoff_entity', 'credit_id', 'Column loan_pro_fdw._loan_chargeoff_entity.credit_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_chargeoff_entity', 'credit_id', 'Column loan_pro_fdw._loan_chargeoff_entity.credit_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_chargeoff_entity', 'updated', 'Column loan_pro_fdw._loan_chargeoff_entity.updated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_chargeoff_entity', 'updated', 'text', 'Column loan_pro_fdw._loan_chargeoff_entity.updated should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_loan_chargeoff_entity', 'updated', 'Column loan_pro_fdw._loan_chargeoff_entity.updated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_chargeoff_entity', 'updated', 'Column loan_pro_fdw._loan_chargeoff_entity.updated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_chargeoff_entity', 'active', 'Column loan_pro_fdw._loan_chargeoff_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_chargeoff_entity', 'active', 'integer', 'Column loan_pro_fdw._loan_chargeoff_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_chargeoff_entity', 'active', 'Column loan_pro_fdw._loan_chargeoff_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_chargeoff_entity', 'active', 'Column loan_pro_fdw._loan_chargeoff_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_loan_chargeoff_entity', 'deleted', 'Column loan_pro_fdw._loan_chargeoff_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_loan_chargeoff_entity', 'deleted', 'integer', 'Column loan_pro_fdw._loan_chargeoff_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_loan_chargeoff_entity', 'deleted', 'Column loan_pro_fdw._loan_chargeoff_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_loan_chargeoff_entity', 'deleted', 'Column loan_pro_fdw._loan_chargeoff_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
