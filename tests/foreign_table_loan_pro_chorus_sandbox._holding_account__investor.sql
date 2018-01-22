SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_holding_account__investor',
    'Should have foreign table loan_pro_chorus_sandbox._holding_account__investor'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_holding_account__investor',
    'Table loan_pro_chorus_sandbox._holding_account__investor should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_holding_account__investor'::name, ARRAY[
    'holding_account_id'::name,
    'investor_id'::name,
    'investor_role'::name,
    'investor_email_enrollment_access'::name,
    'investor_web_access'::name,
    'investor_sms_access'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'holding_account_id', 'Column loan_pro_chorus_sandbox._holding_account__investor.holding_account_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'holding_account_id', 'integer', 'Column loan_pro_chorus_sandbox._holding_account__investor.holding_account_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'holding_account_id', 'Column loan_pro_chorus_sandbox._holding_account__investor.holding_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'holding_account_id', 'Column loan_pro_chorus_sandbox._holding_account__investor.holding_account_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_id', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_id', 'integer', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_id', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_id', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_role', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_role should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_role', 'character(100)', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_role should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_role', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_role should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_role', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_role should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_email_enrollment_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_email_enrollment_access should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_email_enrollment_access', 'integer', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_email_enrollment_access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_email_enrollment_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_email_enrollment_access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_email_enrollment_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_email_enrollment_access should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_web_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_web_access should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_web_access', 'integer', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_web_access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_web_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_web_access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_web_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_web_access should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_sms_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_sms_access should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_sms_access', 'integer', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_sms_access should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_sms_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_sms_access should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'investor_sms_access', 'Column loan_pro_chorus_sandbox._holding_account__investor.investor_sms_access should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'created', 'Column loan_pro_chorus_sandbox._holding_account__investor.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'created', 'text', 'Column loan_pro_chorus_sandbox._holding_account__investor.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'created', 'Column loan_pro_chorus_sandbox._holding_account__investor.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'created', 'Column loan_pro_chorus_sandbox._holding_account__investor.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'lastupdated', 'Column loan_pro_chorus_sandbox._holding_account__investor.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._holding_account__investor.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'lastupdated', 'Column loan_pro_chorus_sandbox._holding_account__investor.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'lastupdated', 'Column loan_pro_chorus_sandbox._holding_account__investor.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_holding_account__investor', 'deleted', 'Column loan_pro_chorus_sandbox._holding_account__investor.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._holding_account__investor.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_holding_account__investor', 'deleted', 'Column loan_pro_chorus_sandbox._holding_account__investor.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_holding_account__investor', 'deleted', 'Column loan_pro_chorus_sandbox._holding_account__investor.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
