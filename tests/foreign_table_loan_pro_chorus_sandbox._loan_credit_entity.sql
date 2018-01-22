SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(71);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan_credit_entity',
    'Should have foreign table loan_pro_chorus_sandbox._loan_credit_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan_credit_entity',
    'Table loan_pro_chorus_sandbox._loan_credit_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan_credit_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'import_id'::name,
    'mod_id'::name,
    'title'::name,
    'date'::name,
    'amount'::name,
    'category'::name,
    'payment_type'::name,
    'custom_application'::name,
    'reset_past_due'::name,
    'apd_adjustment_id'::name,
    'dpd_adjustment_id'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'entity_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'entity_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_credit_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_sandbox._loan_credit_entity.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_credit_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'entity_type', 'Column loan_pro_chorus_sandbox._loan_credit_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'import_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.import_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'import_id', 'character varying(15)', 'Column loan_pro_chorus_sandbox._loan_credit_entity.import_id should be type character varying(15)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'import_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.import_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'import_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.import_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.mod_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'mod_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.mod_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.mod_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'mod_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.mod_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'title', 'Column loan_pro_chorus_sandbox._loan_credit_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'title', 'text', 'Column loan_pro_chorus_sandbox._loan_credit_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'title', 'Column loan_pro_chorus_sandbox._loan_credit_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'title', 'Column loan_pro_chorus_sandbox._loan_credit_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'date', 'Column loan_pro_chorus_sandbox._loan_credit_entity.date should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'date', 'text', 'Column loan_pro_chorus_sandbox._loan_credit_entity.date should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'date', 'Column loan_pro_chorus_sandbox._loan_credit_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'date', 'Column loan_pro_chorus_sandbox._loan_credit_entity.date should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'amount', 'Column loan_pro_chorus_sandbox._loan_credit_entity.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'amount', 'numeric(11,2)', 'Column loan_pro_chorus_sandbox._loan_credit_entity.amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'amount', 'Column loan_pro_chorus_sandbox._loan_credit_entity.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'amount', 'Column loan_pro_chorus_sandbox._loan_credit_entity.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'category', 'Column loan_pro_chorus_sandbox._loan_credit_entity.category should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'category', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.category should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'category', 'Column loan_pro_chorus_sandbox._loan_credit_entity.category should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'category', 'Column loan_pro_chorus_sandbox._loan_credit_entity.category should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'payment_type', 'Column loan_pro_chorus_sandbox._loan_credit_entity.payment_type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'payment_type', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.payment_type should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'payment_type', 'Column loan_pro_chorus_sandbox._loan_credit_entity.payment_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'payment_type', 'Column loan_pro_chorus_sandbox._loan_credit_entity.payment_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'custom_application', 'Column loan_pro_chorus_sandbox._loan_credit_entity.custom_application should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'custom_application', 'text', 'Column loan_pro_chorus_sandbox._loan_credit_entity.custom_application should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'custom_application', 'Column loan_pro_chorus_sandbox._loan_credit_entity.custom_application should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'custom_application', 'Column loan_pro_chorus_sandbox._loan_credit_entity.custom_application should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'reset_past_due', 'Column loan_pro_chorus_sandbox._loan_credit_entity.reset_past_due should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'reset_past_due', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.reset_past_due should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'reset_past_due', 'Column loan_pro_chorus_sandbox._loan_credit_entity.reset_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'reset_past_due', 'Column loan_pro_chorus_sandbox._loan_credit_entity.reset_past_due should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'apd_adjustment_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.apd_adjustment_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'apd_adjustment_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.apd_adjustment_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'apd_adjustment_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.apd_adjustment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'apd_adjustment_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.apd_adjustment_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'dpd_adjustment_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.dpd_adjustment_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'dpd_adjustment_id', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.dpd_adjustment_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'dpd_adjustment_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.dpd_adjustment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'dpd_adjustment_id', 'Column loan_pro_chorus_sandbox._loan_credit_entity.dpd_adjustment_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_credit_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._loan_credit_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_credit_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'deleted', 'Column loan_pro_chorus_sandbox._loan_credit_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_credit_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._loan_credit_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_credit_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'created', 'Column loan_pro_chorus_sandbox._loan_credit_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan_credit_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_credit_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._loan_credit_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan_credit_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_credit_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan_credit_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan_credit_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
