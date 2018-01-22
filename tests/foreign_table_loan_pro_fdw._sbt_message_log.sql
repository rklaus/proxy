SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(71);

SELECT has_foreign_table(
    'loan_pro_fdw', '_sbt_message_log',
    'Should have foreign table loan_pro_fdw._sbt_message_log'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_sbt_message_log',
    'Table loan_pro_fdw._sbt_message_log should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_sbt_message_log'::name, ARRAY[
    'id'::name,
    'customer_id'::name,
    'customer_phone_id'::name,
    'loan_id'::name,
    'loan_display_id'::name,
    'phone'::name,
    'outbound'::name,
    'inbound'::name,
    'status'::name,
    'status_text'::name,
    'time'::name,
    'type'::name,
    'template'::name,
    'message'::name,
    'sbt_tx_ticket'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'id', 'Column loan_pro_fdw._sbt_message_log.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'id', 'integer', 'Column loan_pro_fdw._sbt_message_log.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'id', 'Column loan_pro_fdw._sbt_message_log.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'id', 'Column loan_pro_fdw._sbt_message_log.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'customer_id', 'Column loan_pro_fdw._sbt_message_log.customer_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'customer_id', 'integer', 'Column loan_pro_fdw._sbt_message_log.customer_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'customer_id', 'Column loan_pro_fdw._sbt_message_log.customer_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'customer_id', 'Column loan_pro_fdw._sbt_message_log.customer_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'customer_phone_id', 'Column loan_pro_fdw._sbt_message_log.customer_phone_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'customer_phone_id', 'integer', 'Column loan_pro_fdw._sbt_message_log.customer_phone_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'customer_phone_id', 'Column loan_pro_fdw._sbt_message_log.customer_phone_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'customer_phone_id', 'Column loan_pro_fdw._sbt_message_log.customer_phone_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'loan_id', 'Column loan_pro_fdw._sbt_message_log.loan_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'loan_id', 'integer', 'Column loan_pro_fdw._sbt_message_log.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'loan_id', 'Column loan_pro_fdw._sbt_message_log.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'loan_id', 'Column loan_pro_fdw._sbt_message_log.loan_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'loan_display_id', 'Column loan_pro_fdw._sbt_message_log.loan_display_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'loan_display_id', 'character(25)', 'Column loan_pro_fdw._sbt_message_log.loan_display_id should be type character(25)');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'loan_display_id', 'Column loan_pro_fdw._sbt_message_log.loan_display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'loan_display_id', 'Column loan_pro_fdw._sbt_message_log.loan_display_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'phone', 'Column loan_pro_fdw._sbt_message_log.phone should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'phone', 'character(20)', 'Column loan_pro_fdw._sbt_message_log.phone should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'phone', 'Column loan_pro_fdw._sbt_message_log.phone should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'phone', 'Column loan_pro_fdw._sbt_message_log.phone should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'outbound', 'Column loan_pro_fdw._sbt_message_log.outbound should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'outbound', 'integer', 'Column loan_pro_fdw._sbt_message_log.outbound should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'outbound', 'Column loan_pro_fdw._sbt_message_log.outbound should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'outbound', 'Column loan_pro_fdw._sbt_message_log.outbound should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'inbound', 'Column loan_pro_fdw._sbt_message_log.inbound should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'inbound', 'integer', 'Column loan_pro_fdw._sbt_message_log.inbound should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'inbound', 'Column loan_pro_fdw._sbt_message_log.inbound should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'inbound', 'Column loan_pro_fdw._sbt_message_log.inbound should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'status', 'Column loan_pro_fdw._sbt_message_log.status should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'status', 'integer', 'Column loan_pro_fdw._sbt_message_log.status should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'status', 'Column loan_pro_fdw._sbt_message_log.status should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'status', 'Column loan_pro_fdw._sbt_message_log.status should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'status_text', 'Column loan_pro_fdw._sbt_message_log.status_text should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'status_text', 'text', 'Column loan_pro_fdw._sbt_message_log.status_text should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'status_text', 'Column loan_pro_fdw._sbt_message_log.status_text should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'status_text', 'Column loan_pro_fdw._sbt_message_log.status_text should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'time', 'Column loan_pro_fdw._sbt_message_log."time" should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'time', 'text', 'Column loan_pro_fdw._sbt_message_log."time" should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'time', 'Column loan_pro_fdw._sbt_message_log."time" should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'time', 'Column loan_pro_fdw._sbt_message_log."time" should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'type', 'Column loan_pro_fdw._sbt_message_log.type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'type', 'character(20)', 'Column loan_pro_fdw._sbt_message_log.type should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'type', 'Column loan_pro_fdw._sbt_message_log.type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'type', 'Column loan_pro_fdw._sbt_message_log.type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'template', 'Column loan_pro_fdw._sbt_message_log.template should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'template', 'integer', 'Column loan_pro_fdw._sbt_message_log.template should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'template', 'Column loan_pro_fdw._sbt_message_log.template should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'template', 'Column loan_pro_fdw._sbt_message_log.template should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'message', 'Column loan_pro_fdw._sbt_message_log.message should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'message', 'text', 'Column loan_pro_fdw._sbt_message_log.message should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'message', 'Column loan_pro_fdw._sbt_message_log.message should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'message', 'Column loan_pro_fdw._sbt_message_log.message should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'sbt_tx_ticket', 'Column loan_pro_fdw._sbt_message_log.sbt_tx_ticket should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'sbt_tx_ticket', 'text', 'Column loan_pro_fdw._sbt_message_log.sbt_tx_ticket should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'sbt_tx_ticket', 'Column loan_pro_fdw._sbt_message_log.sbt_tx_ticket should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'sbt_tx_ticket', 'Column loan_pro_fdw._sbt_message_log.sbt_tx_ticket should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'deleted', 'Column loan_pro_fdw._sbt_message_log.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'deleted', 'integer', 'Column loan_pro_fdw._sbt_message_log.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'deleted', 'Column loan_pro_fdw._sbt_message_log.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'deleted', 'Column loan_pro_fdw._sbt_message_log.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sbt_message_log', 'lastupdated', 'Column loan_pro_fdw._sbt_message_log.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sbt_message_log', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._sbt_message_log.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_sbt_message_log', 'lastupdated', 'Column loan_pro_fdw._sbt_message_log.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sbt_message_log', 'lastupdated', 'Column loan_pro_fdw._sbt_message_log.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
