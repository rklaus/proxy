SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_customer_social_profile_entity',
    'Should have foreign table loan_pro_sandbox._customer_social_profile_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_customer_social_profile_entity',
    'Table loan_pro_sandbox._customer_social_profile_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_customer_social_profile_entity'::name, ARRAY[
    'id'::name,
    'customer_id'::name,
    'profile_type'::name,
    'profile_id'::name,
    'profile_url'::name,
    'profile_username'::name,
    'profile_photo_url'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'id', 'Column loan_pro_sandbox._customer_social_profile_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'id', 'integer', 'Column loan_pro_sandbox._customer_social_profile_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'id', 'Column loan_pro_sandbox._customer_social_profile_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'id', 'Column loan_pro_sandbox._customer_social_profile_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'customer_id', 'Column loan_pro_sandbox._customer_social_profile_entity.customer_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'customer_id', 'integer', 'Column loan_pro_sandbox._customer_social_profile_entity.customer_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'customer_id', 'Column loan_pro_sandbox._customer_social_profile_entity.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'customer_id', 'Column loan_pro_sandbox._customer_social_profile_entity.customer_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_type', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_type', 'text', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_type should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_type', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'profile_type', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_id', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_id', 'text', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_id should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_id', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'profile_id', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_url', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_url should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_url', 'text', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_url should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_url', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_url should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'profile_url', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_url should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_username', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_username should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_username', 'text', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_username should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_username', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_username should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'profile_username', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_username should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_photo_url', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_photo_url should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_photo_url', 'text', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_photo_url should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'profile_photo_url', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_photo_url should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'profile_photo_url', 'Column loan_pro_sandbox._customer_social_profile_entity.profile_photo_url should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'deleted', 'Column loan_pro_sandbox._customer_social_profile_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._customer_social_profile_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'deleted', 'Column loan_pro_sandbox._customer_social_profile_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'deleted', 'Column loan_pro_sandbox._customer_social_profile_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_customer_social_profile_entity', 'lastupdated', 'Column loan_pro_sandbox._customer_social_profile_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_customer_social_profile_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._customer_social_profile_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_customer_social_profile_entity', 'lastupdated', 'Column loan_pro_sandbox._customer_social_profile_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_customer_social_profile_entity', 'lastupdated', 'Column loan_pro_sandbox._customer_social_profile_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
