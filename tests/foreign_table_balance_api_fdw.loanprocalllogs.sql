SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(55);

SELECT has_foreign_table(
    'balance_api_fdw', 'loanprocalllogs',
    'Should have foreign table balance_api_fdw.loanprocalllogs'
);

SELECT hasnt_pk(
    'balance_api_fdw', 'loanprocalllogs',
    'Table balance_api_fdw.loanprocalllogs should have a primary key'
);

SELECT columns_are('balance_api_fdw'::name, 'loanprocalllogs'::name, ARRAY[
    'id'::name,
    'context'::name,
    'label'::name,
    'type'::name,
    'endpoint'::name,
    'request'::name,
    'response'::name,
    'status'::name,
    'elapsed'::name,
    'error'::name,
    'incomplete'::name,
    'return_timestamp'::name,
    'request_timestamp'::name
]);

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'id', 'Column balance_api_fdw.loanprocalllogs.id should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'id', 'integer', 'Column balance_api_fdw.loanprocalllogs.id should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'id', 'Column balance_api_fdw.loanprocalllogs.id should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'id', 'Column balance_api_fdw.loanprocalllogs.id should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'context', 'Column balance_api_fdw.loanprocalllogs.context should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'context', 'character varying(36)', 'Column balance_api_fdw.loanprocalllogs.context should be type character varying(36)');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'context', 'Column balance_api_fdw.loanprocalllogs.context should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'context', 'Column balance_api_fdw.loanprocalllogs.context should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'label', 'Column balance_api_fdw.loanprocalllogs.label should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'label', 'character varying(255)', 'Column balance_api_fdw.loanprocalllogs.label should be type character varying(255)');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'label', 'Column balance_api_fdw.loanprocalllogs.label should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'label', 'Column balance_api_fdw.loanprocalllogs.label should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'type', 'Column balance_api_fdw.loanprocalllogs.type should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'type', 'character varying(10)', 'Column balance_api_fdw.loanprocalllogs.type should be type character varying(10)');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'type', 'Column balance_api_fdw.loanprocalllogs.type should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'type', 'Column balance_api_fdw.loanprocalllogs.type should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'endpoint', 'Column balance_api_fdw.loanprocalllogs.endpoint should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'endpoint', 'character varying(1000)', 'Column balance_api_fdw.loanprocalllogs.endpoint should be type character varying(1000)');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'endpoint', 'Column balance_api_fdw.loanprocalllogs.endpoint should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'endpoint', 'Column balance_api_fdw.loanprocalllogs.endpoint should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'request', 'Column balance_api_fdw.loanprocalllogs.request should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'request', 'text', 'Column balance_api_fdw.loanprocalllogs.request should be type text');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'request', 'Column balance_api_fdw.loanprocalllogs.request should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'request', 'Column balance_api_fdw.loanprocalllogs.request should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'response', 'Column balance_api_fdw.loanprocalllogs.response should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'response', 'text', 'Column balance_api_fdw.loanprocalllogs.response should be type text');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'response', 'Column balance_api_fdw.loanprocalllogs.response should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'response', 'Column balance_api_fdw.loanprocalllogs.response should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'status', 'Column balance_api_fdw.loanprocalllogs.status should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'status', 'integer', 'Column balance_api_fdw.loanprocalllogs.status should be type integer');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'status', 'Column balance_api_fdw.loanprocalllogs.status should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'status', 'Column balance_api_fdw.loanprocalllogs.status should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'elapsed', 'Column balance_api_fdw.loanprocalllogs.elapsed should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'elapsed', 'numeric(8,2)', 'Column balance_api_fdw.loanprocalllogs.elapsed should be type numeric(8,2)');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'elapsed', 'Column balance_api_fdw.loanprocalllogs.elapsed should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'elapsed', 'Column balance_api_fdw.loanprocalllogs.elapsed should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'error', 'Column balance_api_fdw.loanprocalllogs.error should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'error', 'text', 'Column balance_api_fdw.loanprocalllogs.error should be type text');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'error', 'Column balance_api_fdw.loanprocalllogs.error should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'error', 'Column balance_api_fdw.loanprocalllogs.error should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'incomplete', 'Column balance_api_fdw.loanprocalllogs.incomplete should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'incomplete', 'boolean', 'Column balance_api_fdw.loanprocalllogs.incomplete should be type boolean');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'incomplete', 'Column balance_api_fdw.loanprocalllogs.incomplete should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'incomplete', 'Column balance_api_fdw.loanprocalllogs.incomplete should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'return_timestamp', 'Column balance_api_fdw.loanprocalllogs.return_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'return_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.loanprocalllogs.return_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'return_timestamp', 'Column balance_api_fdw.loanprocalllogs.return_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'return_timestamp', 'Column balance_api_fdw.loanprocalllogs.return_timestamp should not  have a default');

SELECT has_column(       'balance_api_fdw', 'loanprocalllogs', 'request_timestamp', 'Column balance_api_fdw.loanprocalllogs.request_timestamp should exist');
SELECT col_type_is(      'balance_api_fdw', 'loanprocalllogs', 'request_timestamp', 'timestamp with time zone', 'Column balance_api_fdw.loanprocalllogs.request_timestamp should be type timestamp with time zone');
SELECT col_is_null(      'balance_api_fdw', 'loanprocalllogs', 'request_timestamp', 'Column balance_api_fdw.loanprocalllogs.request_timestamp should allow NULL');
SELECT col_hasnt_default('balance_api_fdw', 'loanprocalllogs', 'request_timestamp', 'Column balance_api_fdw.loanprocalllogs.request_timestamp should not  have a default');

SELECT * FROM finish();
ROLLBACK;
