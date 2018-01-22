SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'balance_customer_fdw', 'cache_rlimit',
    'Should have foreign table balance_customer_fdw.cache_rlimit'
);

SELECT hasnt_pk(
    'balance_customer_fdw', 'cache_rlimit',
    'Table balance_customer_fdw.cache_rlimit should have a primary key'
);

SELECT columns_are('balance_customer_fdw'::name, 'cache_rlimit'::name, ARRAY[
    'cache_key'::name,
    'value'::name,
    'expires'::name
]);

SELECT has_column(       'balance_customer_fdw', 'cache_rlimit', 'cache_key', 'Column balance_customer_fdw.cache_rlimit.cache_key should exist');
SELECT col_type_is(      'balance_customer_fdw', 'cache_rlimit', 'cache_key', 'character varying(255)', 'Column balance_customer_fdw.cache_rlimit.cache_key should be type character varying(255)');
SELECT col_is_null(      'balance_customer_fdw', 'cache_rlimit', 'cache_key', 'Column balance_customer_fdw.cache_rlimit.cache_key should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'cache_rlimit', 'cache_key', 'Column balance_customer_fdw.cache_rlimit.cache_key should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'cache_rlimit', 'value', 'Column balance_customer_fdw.cache_rlimit.value should exist');
SELECT col_type_is(      'balance_customer_fdw', 'cache_rlimit', 'value', 'text', 'Column balance_customer_fdw.cache_rlimit.value should be type text');
SELECT col_is_null(      'balance_customer_fdw', 'cache_rlimit', 'value', 'Column balance_customer_fdw.cache_rlimit.value should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'cache_rlimit', 'value', 'Column balance_customer_fdw.cache_rlimit.value should not  have a default');

SELECT has_column(       'balance_customer_fdw', 'cache_rlimit', 'expires', 'Column balance_customer_fdw.cache_rlimit.expires should exist');
SELECT col_type_is(      'balance_customer_fdw', 'cache_rlimit', 'expires', 'timestamp with time zone', 'Column balance_customer_fdw.cache_rlimit.expires should be type timestamp with time zone');
SELECT col_is_null(      'balance_customer_fdw', 'cache_rlimit', 'expires', 'Column balance_customer_fdw.cache_rlimit.expires should allow NULL');
SELECT col_hasnt_default('balance_customer_fdw', 'cache_rlimit', 'expires', 'Column balance_customer_fdw.cache_rlimit.expires should not  have a default');

SELECT * FROM finish();
ROLLBACK;
