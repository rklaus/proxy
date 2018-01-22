SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_mail_house_entity',
    'Should have foreign table loan_pro_chorus_sandbox._mail_house_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_mail_house_entity',
    'Table loan_pro_chorus_sandbox._mail_house_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_mail_house_entity'::name, ARRAY[
    'id'::name,
    'custom_form_id'::name,
    'from_name'::name,
    'from_street'::name,
    'from_city'::name,
    'from_state'::name,
    'from_zipcode'::name,
    'is_primary_address'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'id', 'Column loan_pro_chorus_sandbox._mail_house_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._mail_house_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'id', 'Column loan_pro_chorus_sandbox._mail_house_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'id', 'Column loan_pro_chorus_sandbox._mail_house_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'custom_form_id', 'Column loan_pro_chorus_sandbox._mail_house_entity.custom_form_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'custom_form_id', 'integer', 'Column loan_pro_chorus_sandbox._mail_house_entity.custom_form_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'custom_form_id', 'Column loan_pro_chorus_sandbox._mail_house_entity.custom_form_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'custom_form_id', 'Column loan_pro_chorus_sandbox._mail_house_entity.custom_form_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_name', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_name', 'text', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_name', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'from_name', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_street', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_street should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_street', 'text', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_street should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_street', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_street should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'from_street', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_street should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_city', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_city should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_city', 'text', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_city should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_city', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_city should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'from_city', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_city should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_state', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_state should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_state', 'text', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_state should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_state', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'from_state', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_zipcode', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_zipcode should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_zipcode', 'text', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_zipcode should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'from_zipcode', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_zipcode should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'from_zipcode', 'Column loan_pro_chorus_sandbox._mail_house_entity.from_zipcode should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'is_primary_address', 'Column loan_pro_chorus_sandbox._mail_house_entity.is_primary_address should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'is_primary_address', 'integer', 'Column loan_pro_chorus_sandbox._mail_house_entity.is_primary_address should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'is_primary_address', 'Column loan_pro_chorus_sandbox._mail_house_entity.is_primary_address should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'is_primary_address', 'Column loan_pro_chorus_sandbox._mail_house_entity.is_primary_address should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'created', 'Column loan_pro_chorus_sandbox._mail_house_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._mail_house_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'created', 'Column loan_pro_chorus_sandbox._mail_house_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'created', 'Column loan_pro_chorus_sandbox._mail_house_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._mail_house_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._mail_house_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._mail_house_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._mail_house_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mail_house_entity', 'deleted', 'Column loan_pro_chorus_sandbox._mail_house_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._mail_house_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mail_house_entity', 'deleted', 'Column loan_pro_chorus_sandbox._mail_house_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mail_house_entity', 'deleted', 'Column loan_pro_chorus_sandbox._mail_house_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
