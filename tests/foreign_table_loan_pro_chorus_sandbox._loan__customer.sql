SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_loan__customer',
    'Should have foreign table loan_pro_chorus_sandbox._loan__customer'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_loan__customer',
    'Table loan_pro_chorus_sandbox._loan__customer should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_loan__customer'::name, ARRAY[
    'loan_id'::name,
    'customer_id'::name,
    'customer_role'::name,
    'customer_email_enrollment_access'::name,
    'customer_web_access'::name,
    'customer_sms_access'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__customer.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'loan_id', 'integer', 'Column loan_pro_chorus_sandbox._loan__customer.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__customer.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'loan_id', 'Column loan_pro_chorus_sandbox._loan__customer.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'customer_id', 'Column loan_pro_chorus_sandbox._loan__customer.customer_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_id', 'integer', 'Column loan_pro_chorus_sandbox._loan__customer.customer_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_id', 'Column loan_pro_chorus_sandbox._loan__customer.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'customer_id', 'Column loan_pro_chorus_sandbox._loan__customer.customer_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'customer_role', 'Column loan_pro_chorus_sandbox._loan__customer.customer_role should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_role', 'character(100)', 'Column loan_pro_chorus_sandbox._loan__customer.customer_role should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_role', 'Column loan_pro_chorus_sandbox._loan__customer.customer_role should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'customer_role', 'Column loan_pro_chorus_sandbox._loan__customer.customer_role should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'customer_email_enrollment_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_email_enrollment_access should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_email_enrollment_access', 'integer', 'Column loan_pro_chorus_sandbox._loan__customer.customer_email_enrollment_access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_email_enrollment_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_email_enrollment_access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'customer_email_enrollment_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_email_enrollment_access should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'customer_web_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_web_access should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_web_access', 'integer', 'Column loan_pro_chorus_sandbox._loan__customer.customer_web_access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_web_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_web_access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'customer_web_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_web_access should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'customer_sms_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_sms_access should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_sms_access', 'integer', 'Column loan_pro_chorus_sandbox._loan__customer.customer_sms_access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'customer_sms_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_sms_access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'customer_sms_access', 'Column loan_pro_chorus_sandbox._loan__customer.customer_sms_access should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'created', 'Column loan_pro_chorus_sandbox._loan__customer.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'created', 'text', 'Column loan_pro_chorus_sandbox._loan__customer.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'created', 'Column loan_pro_chorus_sandbox._loan__customer.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'created', 'Column loan_pro_chorus_sandbox._loan__customer.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__customer.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._loan__customer.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__customer.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'lastupdated', 'Column loan_pro_chorus_sandbox._loan__customer.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_loan__customer', 'deleted', 'Column loan_pro_chorus_sandbox._loan__customer.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_loan__customer', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._loan__customer.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_loan__customer', 'deleted', 'Column loan_pro_chorus_sandbox._loan__customer.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_loan__customer', 'deleted', 'Column loan_pro_chorus_sandbox._loan__customer.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
