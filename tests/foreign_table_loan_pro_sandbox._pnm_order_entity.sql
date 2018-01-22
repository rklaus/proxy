SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_pnm_order_entity',
    'Should have foreign table loan_pro_sandbox._pnm_order_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_pnm_order_entity',
    'Table loan_pro_sandbox._pnm_order_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_pnm_order_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'customer_id'::name,
    'order_id'::name,
    'short_order_id'::name,
    'site_customer_id'::name,
    'status'::name,
    'slip_url'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'id', 'Column loan_pro_sandbox._pnm_order_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'id', 'integer', 'Column loan_pro_sandbox._pnm_order_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'id', 'Column loan_pro_sandbox._pnm_order_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'id', 'Column loan_pro_sandbox._pnm_order_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'loan_id', 'Column loan_pro_sandbox._pnm_order_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'loan_id', 'integer', 'Column loan_pro_sandbox._pnm_order_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'loan_id', 'Column loan_pro_sandbox._pnm_order_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'loan_id', 'Column loan_pro_sandbox._pnm_order_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'customer_id', 'Column loan_pro_sandbox._pnm_order_entity.customer_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'customer_id', 'integer', 'Column loan_pro_sandbox._pnm_order_entity.customer_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'customer_id', 'Column loan_pro_sandbox._pnm_order_entity.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'customer_id', 'Column loan_pro_sandbox._pnm_order_entity.customer_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'order_id', 'Column loan_pro_sandbox._pnm_order_entity.order_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'order_id', 'character varying(45)', 'Column loan_pro_sandbox._pnm_order_entity.order_id should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'order_id', 'Column loan_pro_sandbox._pnm_order_entity.order_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'order_id', 'Column loan_pro_sandbox._pnm_order_entity.order_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'short_order_id', 'Column loan_pro_sandbox._pnm_order_entity.short_order_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'short_order_id', 'character varying(45)', 'Column loan_pro_sandbox._pnm_order_entity.short_order_id should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'short_order_id', 'Column loan_pro_sandbox._pnm_order_entity.short_order_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'short_order_id', 'Column loan_pro_sandbox._pnm_order_entity.short_order_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'site_customer_id', 'Column loan_pro_sandbox._pnm_order_entity.site_customer_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'site_customer_id', 'character varying(45)', 'Column loan_pro_sandbox._pnm_order_entity.site_customer_id should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'site_customer_id', 'Column loan_pro_sandbox._pnm_order_entity.site_customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'site_customer_id', 'Column loan_pro_sandbox._pnm_order_entity.site_customer_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'status', 'Column loan_pro_sandbox._pnm_order_entity.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'status', 'character(6)', 'Column loan_pro_sandbox._pnm_order_entity.status should be type character(6)');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'status', 'Column loan_pro_sandbox._pnm_order_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'status', 'Column loan_pro_sandbox._pnm_order_entity.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'slip_url', 'Column loan_pro_sandbox._pnm_order_entity.slip_url should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'slip_url', 'text', 'Column loan_pro_sandbox._pnm_order_entity.slip_url should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'slip_url', 'Column loan_pro_sandbox._pnm_order_entity.slip_url should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'slip_url', 'Column loan_pro_sandbox._pnm_order_entity.slip_url should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'created', 'Column loan_pro_sandbox._pnm_order_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'created', 'text', 'Column loan_pro_sandbox._pnm_order_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'created', 'Column loan_pro_sandbox._pnm_order_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'created', 'Column loan_pro_sandbox._pnm_order_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'lastupdated', 'Column loan_pro_sandbox._pnm_order_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._pnm_order_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'lastupdated', 'Column loan_pro_sandbox._pnm_order_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'lastupdated', 'Column loan_pro_sandbox._pnm_order_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'active', 'Column loan_pro_sandbox._pnm_order_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'active', 'integer', 'Column loan_pro_sandbox._pnm_order_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'active', 'Column loan_pro_sandbox._pnm_order_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'active', 'Column loan_pro_sandbox._pnm_order_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_pnm_order_entity', 'deleted', 'Column loan_pro_sandbox._pnm_order_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_pnm_order_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._pnm_order_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_pnm_order_entity', 'deleted', 'Column loan_pro_sandbox._pnm_order_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_pnm_order_entity', 'deleted', 'Column loan_pro_sandbox._pnm_order_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
