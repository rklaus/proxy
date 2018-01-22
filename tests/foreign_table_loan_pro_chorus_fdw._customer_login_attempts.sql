SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(31);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_customer_login_attempts',
    'Should have foreign table loan_pro_chorus_fdw._customer_login_attempts'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_customer_login_attempts',
    'Table loan_pro_chorus_fdw._customer_login_attempts should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_customer_login_attempts'::name, ARRAY[
    'id'::name,
    'customer_id'::name,
    'attempt_time'::name,
    'ip_address'::name,
    'client_info'::name,
    'was_successful'::name,
    'username_used'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_login_attempts', 'id', 'Column loan_pro_chorus_fdw._customer_login_attempts.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'id', 'integer', 'Column loan_pro_chorus_fdw._customer_login_attempts.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'id', 'Column loan_pro_chorus_fdw._customer_login_attempts.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_login_attempts', 'id', 'Column loan_pro_chorus_fdw._customer_login_attempts.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_login_attempts', 'customer_id', 'Column loan_pro_chorus_fdw._customer_login_attempts.customer_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'customer_id', 'integer', 'Column loan_pro_chorus_fdw._customer_login_attempts.customer_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'customer_id', 'Column loan_pro_chorus_fdw._customer_login_attempts.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_login_attempts', 'customer_id', 'Column loan_pro_chorus_fdw._customer_login_attempts.customer_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_login_attempts', 'attempt_time', 'Column loan_pro_chorus_fdw._customer_login_attempts.attempt_time should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'attempt_time', 'text', 'Column loan_pro_chorus_fdw._customer_login_attempts.attempt_time should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'attempt_time', 'Column loan_pro_chorus_fdw._customer_login_attempts.attempt_time should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_login_attempts', 'attempt_time', 'Column loan_pro_chorus_fdw._customer_login_attempts.attempt_time should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_login_attempts', 'ip_address', 'Column loan_pro_chorus_fdw._customer_login_attempts.ip_address should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'ip_address', 'text', 'Column loan_pro_chorus_fdw._customer_login_attempts.ip_address should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'ip_address', 'Column loan_pro_chorus_fdw._customer_login_attempts.ip_address should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_login_attempts', 'ip_address', 'Column loan_pro_chorus_fdw._customer_login_attempts.ip_address should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_login_attempts', 'client_info', 'Column loan_pro_chorus_fdw._customer_login_attempts.client_info should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'client_info', 'text', 'Column loan_pro_chorus_fdw._customer_login_attempts.client_info should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'client_info', 'Column loan_pro_chorus_fdw._customer_login_attempts.client_info should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_login_attempts', 'client_info', 'Column loan_pro_chorus_fdw._customer_login_attempts.client_info should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_login_attempts', 'was_successful', 'Column loan_pro_chorus_fdw._customer_login_attempts.was_successful should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'was_successful', 'integer', 'Column loan_pro_chorus_fdw._customer_login_attempts.was_successful should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'was_successful', 'Column loan_pro_chorus_fdw._customer_login_attempts.was_successful should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_login_attempts', 'was_successful', 'Column loan_pro_chorus_fdw._customer_login_attempts.was_successful should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_login_attempts', 'username_used', 'Column loan_pro_chorus_fdw._customer_login_attempts.username_used should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'username_used', 'text', 'Column loan_pro_chorus_fdw._customer_login_attempts.username_used should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_login_attempts', 'username_used', 'Column loan_pro_chorus_fdw._customer_login_attempts.username_used should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_login_attempts', 'username_used', 'Column loan_pro_chorus_fdw._customer_login_attempts.username_used should not  have a default');

SELECT * FROM finish();
ROLLBACK;
