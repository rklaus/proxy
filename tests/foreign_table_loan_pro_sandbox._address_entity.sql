SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(63);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_address_entity',
    'Should have foreign table loan_pro_sandbox._address_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_address_entity',
    'Table loan_pro_sandbox._address_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_address_entity'::name, ARRAY[
    'id'::name,
    'address1'::name,
    'address2'::name,
    'city'::name,
    'state'::name,
    'zipcode'::name,
    'country'::name,
    'geo_lat'::name,
    'geo_lon'::name,
    'is_verified'::name,
    'is_standardized'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'id', 'Column loan_pro_sandbox._address_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'id', 'integer', 'Column loan_pro_sandbox._address_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'id', 'Column loan_pro_sandbox._address_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'id', 'Column loan_pro_sandbox._address_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'address1', 'Column loan_pro_sandbox._address_entity.address1 should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'address1', 'text', 'Column loan_pro_sandbox._address_entity.address1 should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'address1', 'Column loan_pro_sandbox._address_entity.address1 should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'address1', 'Column loan_pro_sandbox._address_entity.address1 should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'address2', 'Column loan_pro_sandbox._address_entity.address2 should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'address2', 'text', 'Column loan_pro_sandbox._address_entity.address2 should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'address2', 'Column loan_pro_sandbox._address_entity.address2 should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'address2', 'Column loan_pro_sandbox._address_entity.address2 should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'city', 'Column loan_pro_sandbox._address_entity.city should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'city', 'text', 'Column loan_pro_sandbox._address_entity.city should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'city', 'Column loan_pro_sandbox._address_entity.city should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'city', 'Column loan_pro_sandbox._address_entity.city should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'state', 'Column loan_pro_sandbox._address_entity.state should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'state', 'character(20)', 'Column loan_pro_sandbox._address_entity.state should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'state', 'Column loan_pro_sandbox._address_entity.state should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'state', 'Column loan_pro_sandbox._address_entity.state should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'zipcode', 'Column loan_pro_sandbox._address_entity.zipcode should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'zipcode', 'character(15)', 'Column loan_pro_sandbox._address_entity.zipcode should be type character(15)');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'zipcode', 'Column loan_pro_sandbox._address_entity.zipcode should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'zipcode', 'Column loan_pro_sandbox._address_entity.zipcode should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'country', 'Column loan_pro_sandbox._address_entity.country should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'country', 'character(20)', 'Column loan_pro_sandbox._address_entity.country should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'country', 'Column loan_pro_sandbox._address_entity.country should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'country', 'Column loan_pro_sandbox._address_entity.country should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'geo_lat', 'Column loan_pro_sandbox._address_entity.geo_lat should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'geo_lat', 'text', 'Column loan_pro_sandbox._address_entity.geo_lat should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'geo_lat', 'Column loan_pro_sandbox._address_entity.geo_lat should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'geo_lat', 'Column loan_pro_sandbox._address_entity.geo_lat should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'geo_lon', 'Column loan_pro_sandbox._address_entity.geo_lon should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'geo_lon', 'text', 'Column loan_pro_sandbox._address_entity.geo_lon should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'geo_lon', 'Column loan_pro_sandbox._address_entity.geo_lon should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'geo_lon', 'Column loan_pro_sandbox._address_entity.geo_lon should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'is_verified', 'Column loan_pro_sandbox._address_entity.is_verified should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'is_verified', 'integer', 'Column loan_pro_sandbox._address_entity.is_verified should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'is_verified', 'Column loan_pro_sandbox._address_entity.is_verified should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'is_verified', 'Column loan_pro_sandbox._address_entity.is_verified should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'is_standardized', 'Column loan_pro_sandbox._address_entity.is_standardized should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'is_standardized', 'integer', 'Column loan_pro_sandbox._address_entity.is_standardized should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'is_standardized', 'Column loan_pro_sandbox._address_entity.is_standardized should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'is_standardized', 'Column loan_pro_sandbox._address_entity.is_standardized should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'created', 'Column loan_pro_sandbox._address_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'created', 'text', 'Column loan_pro_sandbox._address_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'created', 'Column loan_pro_sandbox._address_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'created', 'Column loan_pro_sandbox._address_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'lastupdated', 'Column loan_pro_sandbox._address_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._address_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'lastupdated', 'Column loan_pro_sandbox._address_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'lastupdated', 'Column loan_pro_sandbox._address_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'active', 'Column loan_pro_sandbox._address_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'active', 'integer', 'Column loan_pro_sandbox._address_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'active', 'Column loan_pro_sandbox._address_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'active', 'Column loan_pro_sandbox._address_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_address_entity', 'deleted', 'Column loan_pro_sandbox._address_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_address_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._address_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_address_entity', 'deleted', 'Column loan_pro_sandbox._address_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_address_entity', 'deleted', 'Column loan_pro_sandbox._address_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
