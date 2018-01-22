SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'balance_customer_fdw', 'block_ip_blockip',
    'Should have foreign table balance_customer_fdw.block_ip_blockip'
);

SELECT hasnt_pk(
    'balance_customer_fdw', 'block_ip_blockip',
    'Table balance_customer_fdw.block_ip_blockip should have a primary key'
);

SELECT columns_are('balance_customer_fdw'::name, 'block_ip_blockip'::name, ARRAY[
    'id'::name,
    'network'::name,
    'reason_for_block'::name
]);

SELECT has_column(       'balance_customer_fdw', 'block_ip_blockip', 'id', 'Column balance_customer_fdw.block_ip_blockip.id should exist');
SELECT col_type_is(      'balance_customer_fdw', 'block_ip_blockip', 'id', 'integer', 'Column balance_customer_fdw.block_ip_blockip.id should be type integer');
SELECT col_is_null(      'balance_customer_fdw', 'block_ip_blockip', 'id', 'Column balance_customer_fdw.block_ip_blockip.id should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'block_ip_blockip', 'id', 'Column balance_customer_fdw.block_ip_blockip.id should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'block_ip_blockip', 'network', 'Column balance_customer_fdw.block_ip_blockip.network should exist');
SELECT col_type_is(      'balance_customer_fdw', 'block_ip_blockip', 'network', 'character varying(18)', 'Column balance_customer_fdw.block_ip_blockip.network should be type character varying(18)');
SELECT col_is_null(      'balance_customer_fdw', 'block_ip_blockip', 'network', 'Column balance_customer_fdw.block_ip_blockip.network should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'block_ip_blockip', 'network', 'Column balance_customer_fdw.block_ip_blockip.network should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'block_ip_blockip', 'reason_for_block', 'Column balance_customer_fdw.block_ip_blockip.reason_for_block should exist');
SELECT col_type_is(      'balance_customer_fdw', 'block_ip_blockip', 'reason_for_block', 'text', 'Column balance_customer_fdw.block_ip_blockip.reason_for_block should be type text');
SELECT col_is_null(      'balance_customer_fdw', 'block_ip_blockip', 'reason_for_block', 'Column balance_customer_fdw.block_ip_blockip.reason_for_block should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'block_ip_blockip', 'reason_for_block', 'Column balance_customer_fdw.block_ip_blockip.reason_for_block should not  have a default');

SELECT * FROM finish();
ROLLBACK;
