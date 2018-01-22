SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(71);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_payment_info_entity',
    'Should have foreign table loan_pro_sandbox._payment_info_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_payment_info_entity',
    'Table loan_pro_sandbox._payment_info_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_payment_info_entity'::name, ARRAY[
    'id'::name,
    'payment_id'::name,
    'processor_id'::name,
    'processor_tx_id'::name,
    'transaction_id'::name,
    'processor_status'::name,
    'status'::name,
    'description'::name,
    'batch_id'::name,
    'applied_date'::name,
    'pnm_retailer_name'::name,
    'pnm_retailer_id'::name,
    'pnm_retailer_addr'::name,
    'pnm_retailer_lat'::name,
    'pnm_retailer_lon'::name,
    'updated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'id', 'Column loan_pro_sandbox._payment_info_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'id', 'integer', 'Column loan_pro_sandbox._payment_info_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'id', 'Column loan_pro_sandbox._payment_info_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'id', 'Column loan_pro_sandbox._payment_info_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'payment_id', 'Column loan_pro_sandbox._payment_info_entity.payment_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'payment_id', 'integer', 'Column loan_pro_sandbox._payment_info_entity.payment_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'payment_id', 'Column loan_pro_sandbox._payment_info_entity.payment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'payment_id', 'Column loan_pro_sandbox._payment_info_entity.payment_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'processor_id', 'Column loan_pro_sandbox._payment_info_entity.processor_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'processor_id', 'text', 'Column loan_pro_sandbox._payment_info_entity.processor_id should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'processor_id', 'Column loan_pro_sandbox._payment_info_entity.processor_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'processor_id', 'Column loan_pro_sandbox._payment_info_entity.processor_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'processor_tx_id', 'Column loan_pro_sandbox._payment_info_entity.processor_tx_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'processor_tx_id', 'character varying(45)', 'Column loan_pro_sandbox._payment_info_entity.processor_tx_id should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'processor_tx_id', 'Column loan_pro_sandbox._payment_info_entity.processor_tx_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'processor_tx_id', 'Column loan_pro_sandbox._payment_info_entity.processor_tx_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'transaction_id', 'Column loan_pro_sandbox._payment_info_entity.transaction_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'transaction_id', 'character varying(45)', 'Column loan_pro_sandbox._payment_info_entity.transaction_id should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'transaction_id', 'Column loan_pro_sandbox._payment_info_entity.transaction_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'transaction_id', 'Column loan_pro_sandbox._payment_info_entity.transaction_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'processor_status', 'Column loan_pro_sandbox._payment_info_entity.processor_status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'processor_status', 'character varying(45)', 'Column loan_pro_sandbox._payment_info_entity.processor_status should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'processor_status', 'Column loan_pro_sandbox._payment_info_entity.processor_status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'processor_status', 'Column loan_pro_sandbox._payment_info_entity.processor_status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'status', 'Column loan_pro_sandbox._payment_info_entity.status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'status', 'character varying(45)', 'Column loan_pro_sandbox._payment_info_entity.status should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'status', 'Column loan_pro_sandbox._payment_info_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'status', 'Column loan_pro_sandbox._payment_info_entity.status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'description', 'Column loan_pro_sandbox._payment_info_entity.description should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'description', 'text', 'Column loan_pro_sandbox._payment_info_entity.description should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'description', 'Column loan_pro_sandbox._payment_info_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'description', 'Column loan_pro_sandbox._payment_info_entity.description should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'batch_id', 'Column loan_pro_sandbox._payment_info_entity.batch_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'batch_id', 'character varying(45)', 'Column loan_pro_sandbox._payment_info_entity.batch_id should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'batch_id', 'Column loan_pro_sandbox._payment_info_entity.batch_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'batch_id', 'Column loan_pro_sandbox._payment_info_entity.batch_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'applied_date', 'Column loan_pro_sandbox._payment_info_entity.applied_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'applied_date', 'text', 'Column loan_pro_sandbox._payment_info_entity.applied_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'applied_date', 'Column loan_pro_sandbox._payment_info_entity.applied_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'applied_date', 'Column loan_pro_sandbox._payment_info_entity.applied_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_name', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_name', 'text', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_name', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_name', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_id', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_id', 'character varying(45)', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_id should be type character varying(45)');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_id', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_id', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_addr', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_addr should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_addr', 'text', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_addr should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_addr', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_addr should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_addr', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_addr should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_lat', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_lat should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_lat', 'text', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_lat should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_lat', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_lat should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_lat', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_lat should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_lon', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_lon should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_lon', 'text', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_lon should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_lon', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_lon should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'pnm_retailer_lon', 'Column loan_pro_sandbox._payment_info_entity.pnm_retailer_lon should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'updated', 'Column loan_pro_sandbox._payment_info_entity.updated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'updated', 'text', 'Column loan_pro_sandbox._payment_info_entity.updated should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'updated', 'Column loan_pro_sandbox._payment_info_entity.updated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'updated', 'Column loan_pro_sandbox._payment_info_entity.updated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_payment_info_entity', 'deleted', 'Column loan_pro_sandbox._payment_info_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_payment_info_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._payment_info_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_payment_info_entity', 'deleted', 'Column loan_pro_sandbox._payment_info_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_payment_info_entity', 'deleted', 'Column loan_pro_sandbox._payment_info_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
