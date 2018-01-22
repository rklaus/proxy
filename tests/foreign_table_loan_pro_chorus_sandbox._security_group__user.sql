SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(15);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_security_group__user',
    'Should have foreign table loan_pro_chorus_sandbox._security_group__user'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_security_group__user',
    'Table loan_pro_chorus_sandbox._security_group__user should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_security_group__user'::name, ARRAY[
    'id'::name,
    'security_group_id'::name,
    'tenant_user_id'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_security_group__user', 'id', 'Column loan_pro_chorus_sandbox._security_group__user.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_security_group__user', 'id', 'integer', 'Column loan_pro_chorus_sandbox._security_group__user.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_security_group__user', 'id', 'Column loan_pro_chorus_sandbox._security_group__user.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_security_group__user', 'id', 'Column loan_pro_chorus_sandbox._security_group__user.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_security_group__user', 'security_group_id', 'Column loan_pro_chorus_sandbox._security_group__user.security_group_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_security_group__user', 'security_group_id', 'integer', 'Column loan_pro_chorus_sandbox._security_group__user.security_group_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_security_group__user', 'security_group_id', 'Column loan_pro_chorus_sandbox._security_group__user.security_group_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_security_group__user', 'security_group_id', 'Column loan_pro_chorus_sandbox._security_group__user.security_group_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_security_group__user', 'tenant_user_id', 'Column loan_pro_chorus_sandbox._security_group__user.tenant_user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_security_group__user', 'tenant_user_id', 'integer', 'Column loan_pro_chorus_sandbox._security_group__user.tenant_user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_security_group__user', 'tenant_user_id', 'Column loan_pro_chorus_sandbox._security_group__user.tenant_user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_security_group__user', 'tenant_user_id', 'Column loan_pro_chorus_sandbox._security_group__user.tenant_user_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
