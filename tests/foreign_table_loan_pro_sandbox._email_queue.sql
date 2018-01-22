SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_email_queue',
    'Should have foreign table loan_pro_sandbox._email_queue'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_email_queue',
    'Table loan_pro_sandbox._email_queue should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_email_queue'::name, ARRAY[
    'id'::name,
    'recipients'::name,
    'recipients_bcc'::name,
    'from_email'::name,
    'from_name'::name,
    'subject'::name,
    'body'::name,
    'metadata'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'id', 'Column loan_pro_sandbox._email_queue.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'id', 'integer', 'Column loan_pro_sandbox._email_queue.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'id', 'Column loan_pro_sandbox._email_queue.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'id', 'Column loan_pro_sandbox._email_queue.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'recipients', 'Column loan_pro_sandbox._email_queue.recipients should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'recipients', 'text', 'Column loan_pro_sandbox._email_queue.recipients should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'recipients', 'Column loan_pro_sandbox._email_queue.recipients should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'recipients', 'Column loan_pro_sandbox._email_queue.recipients should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'recipients_bcc', 'Column loan_pro_sandbox._email_queue.recipients_bcc should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'recipients_bcc', 'text', 'Column loan_pro_sandbox._email_queue.recipients_bcc should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'recipients_bcc', 'Column loan_pro_sandbox._email_queue.recipients_bcc should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'recipients_bcc', 'Column loan_pro_sandbox._email_queue.recipients_bcc should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'from_email', 'Column loan_pro_sandbox._email_queue.from_email should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'from_email', 'text', 'Column loan_pro_sandbox._email_queue.from_email should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'from_email', 'Column loan_pro_sandbox._email_queue.from_email should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'from_email', 'Column loan_pro_sandbox._email_queue.from_email should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'from_name', 'Column loan_pro_sandbox._email_queue.from_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'from_name', 'text', 'Column loan_pro_sandbox._email_queue.from_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'from_name', 'Column loan_pro_sandbox._email_queue.from_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'from_name', 'Column loan_pro_sandbox._email_queue.from_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'subject', 'Column loan_pro_sandbox._email_queue.subject should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'subject', 'text', 'Column loan_pro_sandbox._email_queue.subject should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'subject', 'Column loan_pro_sandbox._email_queue.subject should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'subject', 'Column loan_pro_sandbox._email_queue.subject should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'body', 'Column loan_pro_sandbox._email_queue.body should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'body', 'text', 'Column loan_pro_sandbox._email_queue.body should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'body', 'Column loan_pro_sandbox._email_queue.body should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'body', 'Column loan_pro_sandbox._email_queue.body should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'metadata', 'Column loan_pro_sandbox._email_queue.metadata should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'metadata', 'text', 'Column loan_pro_sandbox._email_queue.metadata should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'metadata', 'Column loan_pro_sandbox._email_queue.metadata should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'metadata', 'Column loan_pro_sandbox._email_queue.metadata should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'deleted', 'Column loan_pro_sandbox._email_queue.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'deleted', 'integer', 'Column loan_pro_sandbox._email_queue.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'deleted', 'Column loan_pro_sandbox._email_queue.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'deleted', 'Column loan_pro_sandbox._email_queue.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'created', 'Column loan_pro_sandbox._email_queue.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'created', 'text', 'Column loan_pro_sandbox._email_queue.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'created', 'Column loan_pro_sandbox._email_queue.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'created', 'Column loan_pro_sandbox._email_queue.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_email_queue', 'lastupdated', 'Column loan_pro_sandbox._email_queue.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_email_queue', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._email_queue.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_email_queue', 'lastupdated', 'Column loan_pro_sandbox._email_queue.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_email_queue', 'lastupdated', 'Column loan_pro_sandbox._email_queue.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
