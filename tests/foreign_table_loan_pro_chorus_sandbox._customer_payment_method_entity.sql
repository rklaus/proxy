SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_customer_payment_method_entity',
    'Should have foreign table loan_pro_chorus_sandbox._customer_payment_method_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_customer_payment_method_entity',
    'Table loan_pro_chorus_sandbox._customer_payment_method_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_customer_payment_method_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'title'::name,
    'type'::name,
    'bank_account_id'::name,
    'is_primary'::name,
    'is_secondary'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'title', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'title', 'text', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'title', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'title', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'type', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'type', 'character(100)', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'type', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'type', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'bank_account_id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.bank_account_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'bank_account_id', 'integer', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.bank_account_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'bank_account_id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.bank_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'bank_account_id', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.bank_account_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'is_primary', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.is_primary should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'is_primary', 'integer', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.is_primary should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'is_primary', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.is_primary should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'is_primary', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.is_primary should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'is_secondary', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.is_secondary should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'is_secondary', 'integer', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.is_secondary should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'is_secondary', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.is_secondary should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'is_secondary', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.is_secondary should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'created', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'created', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'created', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'active', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'active', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'active', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'deleted', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'deleted', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_customer_payment_method_entity', 'deleted', 'Column loan_pro_chorus_sandbox._customer_payment_method_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
