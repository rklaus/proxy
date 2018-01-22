SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_apd_adjustment_entity',
    'Should have foreign table loan_pro_sandbox._loan_apd_adjustment_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_apd_adjustment_entity',
    'Table loan_pro_sandbox._loan_apd_adjustment_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_apd_adjustment_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'mod_id'::name,
    'date'::name,
    'type'::name,
    'dollar_amount'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'id', 'integer', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'entity_id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'entity_id', 'integer', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'entity_id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'entity_id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'entity_type', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'entity_type', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'entity_type', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'mod_id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'mod_id', 'integer', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'mod_id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'mod_id', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'date', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'date', 'text', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'date', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'date', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'type', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'type', 'character(40)', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.type should be type character(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'type', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'type', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'dollar_amount', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.dollar_amount should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'dollar_amount', 'numeric(11,2)', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.dollar_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'dollar_amount', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.dollar_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'dollar_amount', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.dollar_amount should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'deleted', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'deleted', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'deleted', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_apd_adjustment_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_apd_adjustment_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_apd_adjustment_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
