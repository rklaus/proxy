SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_vendor_entity',
    'Should have foreign table loan_pro_sandbox._vendor_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_vendor_entity',
    'Table loan_pro_sandbox._vendor_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_vendor_entity'::name, ARRAY[
    'id'::name,
    'vendor_name'::name,
    'contact_name'::name,
    'contact_phone'::name,
    'contact_email'::name,
    'address_id'::name,
    'active'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'id', 'Column loan_pro_sandbox._vendor_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'id', 'integer', 'Column loan_pro_sandbox._vendor_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'id', 'Column loan_pro_sandbox._vendor_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'id', 'Column loan_pro_sandbox._vendor_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'vendor_name', 'Column loan_pro_sandbox._vendor_entity.vendor_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'vendor_name', 'text', 'Column loan_pro_sandbox._vendor_entity.vendor_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'vendor_name', 'Column loan_pro_sandbox._vendor_entity.vendor_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'vendor_name', 'Column loan_pro_sandbox._vendor_entity.vendor_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'contact_name', 'Column loan_pro_sandbox._vendor_entity.contact_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'contact_name', 'text', 'Column loan_pro_sandbox._vendor_entity.contact_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'contact_name', 'Column loan_pro_sandbox._vendor_entity.contact_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'contact_name', 'Column loan_pro_sandbox._vendor_entity.contact_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'contact_phone', 'Column loan_pro_sandbox._vendor_entity.contact_phone should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'contact_phone', 'character(20)', 'Column loan_pro_sandbox._vendor_entity.contact_phone should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'contact_phone', 'Column loan_pro_sandbox._vendor_entity.contact_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'contact_phone', 'Column loan_pro_sandbox._vendor_entity.contact_phone should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'contact_email', 'Column loan_pro_sandbox._vendor_entity.contact_email should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'contact_email', 'text', 'Column loan_pro_sandbox._vendor_entity.contact_email should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'contact_email', 'Column loan_pro_sandbox._vendor_entity.contact_email should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'contact_email', 'Column loan_pro_sandbox._vendor_entity.contact_email should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'address_id', 'Column loan_pro_sandbox._vendor_entity.address_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'address_id', 'integer', 'Column loan_pro_sandbox._vendor_entity.address_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'address_id', 'Column loan_pro_sandbox._vendor_entity.address_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'address_id', 'Column loan_pro_sandbox._vendor_entity.address_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'active', 'Column loan_pro_sandbox._vendor_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'active', 'integer', 'Column loan_pro_sandbox._vendor_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'active', 'Column loan_pro_sandbox._vendor_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'active', 'Column loan_pro_sandbox._vendor_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'created', 'Column loan_pro_sandbox._vendor_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'created', 'text', 'Column loan_pro_sandbox._vendor_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'created', 'Column loan_pro_sandbox._vendor_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'created', 'Column loan_pro_sandbox._vendor_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'lastupdated', 'Column loan_pro_sandbox._vendor_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._vendor_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'lastupdated', 'Column loan_pro_sandbox._vendor_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'lastupdated', 'Column loan_pro_sandbox._vendor_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_vendor_entity', 'deleted', 'Column loan_pro_sandbox._vendor_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_vendor_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._vendor_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_vendor_entity', 'deleted', 'Column loan_pro_sandbox._vendor_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_vendor_entity', 'deleted', 'Column loan_pro_sandbox._vendor_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
