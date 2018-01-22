SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_sms_queue_item_entity',
    'Should have foreign table loan_pro_sandbox._loan_sms_queue_item_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_sms_queue_item_entity',
    'Table loan_pro_sandbox._loan_sms_queue_item_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_sms_queue_item_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'template_id'::name,
    'template_type'::name,
    'primary_customer_primary_phone'::name,
    'primary_customer_secondary_phone'::name,
    'secondary_customer_primary_phone'::name,
    'secondary_customer_secondary_phone'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'id', 'integer', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'loan_id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'loan_id', 'integer', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'loan_id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'loan_id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'template_id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.template_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'template_id', 'integer', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.template_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'template_id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.template_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'template_id', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.template_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'template_type', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.template_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'template_type', 'character(64)', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.template_type should be type character(64)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'template_type', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.template_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'template_type', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.template_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'primary_customer_primary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.primary_customer_primary_phone should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'primary_customer_primary_phone', 'integer', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.primary_customer_primary_phone should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'primary_customer_primary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.primary_customer_primary_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'primary_customer_primary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.primary_customer_primary_phone should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'primary_customer_secondary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.primary_customer_secondary_phone should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'primary_customer_secondary_phone', 'integer', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.primary_customer_secondary_phone should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'primary_customer_secondary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.primary_customer_secondary_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'primary_customer_secondary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.primary_customer_secondary_phone should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'secondary_customer_primary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.secondary_customer_primary_phone should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'secondary_customer_primary_phone', 'integer', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.secondary_customer_primary_phone should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'secondary_customer_primary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.secondary_customer_primary_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'secondary_customer_primary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.secondary_customer_primary_phone should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'secondary_customer_secondary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.secondary_customer_secondary_phone should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'secondary_customer_secondary_phone', 'integer', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.secondary_customer_secondary_phone should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'secondary_customer_secondary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.secondary_customer_secondary_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'secondary_customer_secondary_phone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.secondary_customer_secondary_phone should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'deleted', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'deleted', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'deleted', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'created', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'created', 'text', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'created', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'created', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_sms_queue_item_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_sms_queue_item_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_sms_queue_item_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
