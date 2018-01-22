SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(51);

SELECT has_foreign_table(
    'balance_api_fdw', 'promocodes',
    'Should have foreign table balance_api_fdw.promocodes'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'promocodes',
    'Table balance_api_fdw.promocodes should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'promocodes'::name, ARRAY[
    'id'::name,
    'label'::name,
    'code'::name,
    'expiration_date'::name,
    'tier_key'::name,
    'begin_date'::name,
    'pricing_tier_id'::name,
    'mktg_level1'::name,
    'mktg_level2'::name,
    'mktg_level3'::name,
    'priority'::name,
    'store_type'::name
]);

SELECT has_column(       'balance_api_fdw', 'promocodes', 'id', 'Column balance_api_fdw.promocodes.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'id', 'integer', 'Column balance_api_fdw.promocodes.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'id', 'Column balance_api_fdw.promocodes.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'id', 'Column balance_api_fdw.promocodes.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'label', 'Column balance_api_fdw.promocodes.label should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'label', 'character varying(250)', 'Column balance_api_fdw.promocodes.label should be type character varying(250)');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'label', 'Column balance_api_fdw.promocodes.label should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'label', 'Column balance_api_fdw.promocodes.label should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'code', 'Column balance_api_fdw.promocodes.code should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'code', 'character varying(10)', 'Column balance_api_fdw.promocodes.code should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'code', 'Column balance_api_fdw.promocodes.code should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'code', 'Column balance_api_fdw.promocodes.code should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'expiration_date', 'Column balance_api_fdw.promocodes.expiration_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'expiration_date', 'date', 'Column balance_api_fdw.promocodes.expiration_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'expiration_date', 'Column balance_api_fdw.promocodes.expiration_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'expiration_date', 'Column balance_api_fdw.promocodes.expiration_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'tier_key', 'Column balance_api_fdw.promocodes.tier_key should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'tier_key', 'character varying(255)', 'Column balance_api_fdw.promocodes.tier_key should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'tier_key', 'Column balance_api_fdw.promocodes.tier_key should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'tier_key', 'Column balance_api_fdw.promocodes.tier_key should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'begin_date', 'Column balance_api_fdw.promocodes.begin_date should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'begin_date', 'date', 'Column balance_api_fdw.promocodes.begin_date should be type date');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'begin_date', 'Column balance_api_fdw.promocodes.begin_date should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'begin_date', 'Column balance_api_fdw.promocodes.begin_date should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'pricing_tier_id', 'Column balance_api_fdw.promocodes.pricing_tier_id should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'pricing_tier_id', 'integer', 'Column balance_api_fdw.promocodes.pricing_tier_id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'pricing_tier_id', 'Column balance_api_fdw.promocodes.pricing_tier_id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'pricing_tier_id', 'Column balance_api_fdw.promocodes.pricing_tier_id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'mktg_level1', 'Column balance_api_fdw.promocodes.mktg_level1 should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'mktg_level1', 'character varying(100)', 'Column balance_api_fdw.promocodes.mktg_level1 should be type character varying(100)');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'mktg_level1', 'Column balance_api_fdw.promocodes.mktg_level1 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'mktg_level1', 'Column balance_api_fdw.promocodes.mktg_level1 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'mktg_level2', 'Column balance_api_fdw.promocodes.mktg_level2 should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'mktg_level2', 'character varying(100)', 'Column balance_api_fdw.promocodes.mktg_level2 should be type character varying(100)');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'mktg_level2', 'Column balance_api_fdw.promocodes.mktg_level2 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'mktg_level2', 'Column balance_api_fdw.promocodes.mktg_level2 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'mktg_level3', 'Column balance_api_fdw.promocodes.mktg_level3 should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'mktg_level3', 'character varying(100)', 'Column balance_api_fdw.promocodes.mktg_level3 should be type character varying(100)');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'mktg_level3', 'Column balance_api_fdw.promocodes.mktg_level3 should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'mktg_level3', 'Column balance_api_fdw.promocodes.mktg_level3 should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'priority', 'Column balance_api_fdw.promocodes.priority should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'priority', 'integer', 'Column balance_api_fdw.promocodes.priority should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'priority', 'Column balance_api_fdw.promocodes.priority should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'priority', 'Column balance_api_fdw.promocodes.priority should not  have a default');

SELECT has_column(       'balance_api_fdw', 'promocodes', 'store_type', 'Column balance_api_fdw.promocodes.store_type should exist');
SELECT col_type_is(      'balance_api_fdw', 'promocodes', 'store_type', 'character varying(20)', 'Column balance_api_fdw.promocodes.store_type should be type character varying(20)');
SELECT col_is_null(      'balance_api_fdw', 'promocodes', 'store_type', 'Column balance_api_fdw.promocodes.store_type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'promocodes', 'store_type', 'Column balance_api_fdw.promocodes.store_type should not  have a default');

SELECT * FROM finish();
ROLLBACK;
