SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(83);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_collateral_entity',
    'Should have foreign table loan_pro_sandbox._collateral_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_collateral_entity',
    'Table loan_pro_sandbox._collateral_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_collateral_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'a'::name,
    'b'::name,
    'c'::name,
    'd'::name,
    'additional'::name,
    'collateral_type'::name,
    'vin'::name,
    'distance'::name,
    'book_value'::name,
    'color'::name,
    'gps_status'::name,
    'gps_code'::name,
    'license_plate'::name,
    'gap'::name,
    'warranty'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'id', 'Column loan_pro_sandbox._collateral_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'id', 'integer', 'Column loan_pro_sandbox._collateral_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'id', 'Column loan_pro_sandbox._collateral_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'id', 'Column loan_pro_sandbox._collateral_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'loan_id', 'Column loan_pro_sandbox._collateral_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'loan_id', 'integer', 'Column loan_pro_sandbox._collateral_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'loan_id', 'Column loan_pro_sandbox._collateral_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'loan_id', 'Column loan_pro_sandbox._collateral_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'a', 'Column loan_pro_sandbox._collateral_entity.a should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'a', 'character varying(100)', 'Column loan_pro_sandbox._collateral_entity.a should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'a', 'Column loan_pro_sandbox._collateral_entity.a should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'a', 'Column loan_pro_sandbox._collateral_entity.a should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'b', 'Column loan_pro_sandbox._collateral_entity.b should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'b', 'character varying(100)', 'Column loan_pro_sandbox._collateral_entity.b should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'b', 'Column loan_pro_sandbox._collateral_entity.b should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'b', 'Column loan_pro_sandbox._collateral_entity.b should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'c', 'Column loan_pro_sandbox._collateral_entity.c should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'c', 'character varying(100)', 'Column loan_pro_sandbox._collateral_entity.c should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'c', 'Column loan_pro_sandbox._collateral_entity.c should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'c', 'Column loan_pro_sandbox._collateral_entity.c should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'd', 'Column loan_pro_sandbox._collateral_entity.d should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'd', 'character varying(100)', 'Column loan_pro_sandbox._collateral_entity.d should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'd', 'Column loan_pro_sandbox._collateral_entity.d should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'd', 'Column loan_pro_sandbox._collateral_entity.d should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'additional', 'Column loan_pro_sandbox._collateral_entity.additional should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'additional', 'text', 'Column loan_pro_sandbox._collateral_entity.additional should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'additional', 'Column loan_pro_sandbox._collateral_entity.additional should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'additional', 'Column loan_pro_sandbox._collateral_entity.additional should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'collateral_type', 'Column loan_pro_sandbox._collateral_entity.collateral_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'collateral_type', 'character varying(100)', 'Column loan_pro_sandbox._collateral_entity.collateral_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'collateral_type', 'Column loan_pro_sandbox._collateral_entity.collateral_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'collateral_type', 'Column loan_pro_sandbox._collateral_entity.collateral_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'vin', 'Column loan_pro_sandbox._collateral_entity.vin should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'vin', 'character(17)', 'Column loan_pro_sandbox._collateral_entity.vin should be type character(17)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'vin', 'Column loan_pro_sandbox._collateral_entity.vin should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'vin', 'Column loan_pro_sandbox._collateral_entity.vin should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'distance', 'Column loan_pro_sandbox._collateral_entity.distance should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'distance', 'integer', 'Column loan_pro_sandbox._collateral_entity.distance should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'distance', 'Column loan_pro_sandbox._collateral_entity.distance should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'distance', 'Column loan_pro_sandbox._collateral_entity.distance should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'book_value', 'Column loan_pro_sandbox._collateral_entity.book_value should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'book_value', 'numeric(11,2)', 'Column loan_pro_sandbox._collateral_entity.book_value should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'book_value', 'Column loan_pro_sandbox._collateral_entity.book_value should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'book_value', 'Column loan_pro_sandbox._collateral_entity.book_value should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'color', 'Column loan_pro_sandbox._collateral_entity.color should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'color', 'character varying(50)', 'Column loan_pro_sandbox._collateral_entity.color should be type character varying(50)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'color', 'Column loan_pro_sandbox._collateral_entity.color should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'color', 'Column loan_pro_sandbox._collateral_entity.color should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'gps_status', 'Column loan_pro_sandbox._collateral_entity.gps_status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'gps_status', 'character(40)', 'Column loan_pro_sandbox._collateral_entity.gps_status should be type character(40)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'gps_status', 'Column loan_pro_sandbox._collateral_entity.gps_status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'gps_status', 'Column loan_pro_sandbox._collateral_entity.gps_status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'gps_code', 'Column loan_pro_sandbox._collateral_entity.gps_code should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'gps_code', 'character varying(100)', 'Column loan_pro_sandbox._collateral_entity.gps_code should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'gps_code', 'Column loan_pro_sandbox._collateral_entity.gps_code should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'gps_code', 'Column loan_pro_sandbox._collateral_entity.gps_code should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'license_plate', 'Column loan_pro_sandbox._collateral_entity.license_plate should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'license_plate', 'character varying(100)', 'Column loan_pro_sandbox._collateral_entity.license_plate should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'license_plate', 'Column loan_pro_sandbox._collateral_entity.license_plate should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'license_plate', 'Column loan_pro_sandbox._collateral_entity.license_plate should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'gap', 'Column loan_pro_sandbox._collateral_entity.gap should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'gap', 'text', 'Column loan_pro_sandbox._collateral_entity.gap should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'gap', 'Column loan_pro_sandbox._collateral_entity.gap should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'gap', 'Column loan_pro_sandbox._collateral_entity.gap should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'warranty', 'Column loan_pro_sandbox._collateral_entity.warranty should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'warranty', 'text', 'Column loan_pro_sandbox._collateral_entity.warranty should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'warranty', 'Column loan_pro_sandbox._collateral_entity.warranty should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'warranty', 'Column loan_pro_sandbox._collateral_entity.warranty should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'active', 'Column loan_pro_sandbox._collateral_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'active', 'integer', 'Column loan_pro_sandbox._collateral_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'active', 'Column loan_pro_sandbox._collateral_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'active', 'Column loan_pro_sandbox._collateral_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'deleted', 'Column loan_pro_sandbox._collateral_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._collateral_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'deleted', 'Column loan_pro_sandbox._collateral_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'deleted', 'Column loan_pro_sandbox._collateral_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_collateral_entity', 'lastupdated', 'Column loan_pro_sandbox._collateral_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_collateral_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._collateral_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_collateral_entity', 'lastupdated', 'Column loan_pro_sandbox._collateral_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_collateral_entity', 'lastupdated', 'Column loan_pro_sandbox._collateral_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
