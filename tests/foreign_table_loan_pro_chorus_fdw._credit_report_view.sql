SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(247);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_credit_report_view',
    'Should have foreign table loan_pro_chorus_fdw._credit_report_view'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_credit_report_view',
    'Table loan_pro_chorus_fdw._credit_report_view should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_credit_report_view'::name, ARRAY[
    'loan_id'::name,
    'display_id'::name,
    'created'::name,
    'setup_contract_date'::name,
    'loan_amount'::name,
    'loan_rate'::name,
    'loan_term'::name,
    'setup_first_payment_date'::name,
    'payment'::name,
    'today'::name,
    'loan_status'::name,
    'loan_substatus'::name,
    'credit_status'::name,
    'credit_bureau'::name,
    'ecoa_code'::name,
    'co_ecoa_code'::name,
    'settings_closed_date'::name,
    'payment_frequency'::name,
    'principal_balance'::name,
    'first_delinquency_date'::name,
    'amount_due'::name,
    'amount_past_due_30'::name,
    'last_payment_date'::name,
    'last_payment_amount'::name,
    'days_past_due'::name,
    'pricust_first_name'::name,
    'pricust_middle_name'::name,
    'pricust_last_name'::name,
    'pricust_email'::name,
    'pripriphone_phone'::name,
    'secpriphone_phone'::name,
    'pricustaddr_address1'::name,
    'pricustaddr_city'::name,
    'pricustaddr_state'::name,
    'pricustaddr_zipcode'::name,
    'pricust_ssn'::name,
    'pricust_birth_date'::name,
    'pricust_gender'::name,
    'pricust_generation_code'::name,
    'pricustemp_company_name'::name,
    'priempaddr_address1'::name,
    'priempaddr_city'::name,
    'priempaddr_state'::name,
    'priempaddr_zipcode'::name,
    'pricustemp_phone'::name,
    'secust_first_name'::name,
    'secust_middle_name'::name,
    'secust_last_name'::name,
    'secust_email'::name,
    'prisecphone_phone'::name,
    'secsecphone_phone'::name,
    'seccustaddr_address1'::name,
    'seccustaddr_city'::name,
    'seccustaddr_state'::name,
    'seccustaddr_zipcode'::name,
    'secust_ssn'::name,
    'secust_birth_date'::name,
    'secust_gender'::name,
    'secust_generation_code'::name,
    'net_charge_off'::name,
    'credit_limit'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'loan_id', 'Column loan_pro_chorus_fdw._credit_report_view.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._credit_report_view.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_id', 'Column loan_pro_chorus_fdw._credit_report_view.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'loan_id', 'Column loan_pro_chorus_fdw._credit_report_view.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'display_id', 'Column loan_pro_chorus_fdw._credit_report_view.display_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'display_id', 'character(25)', 'Column loan_pro_chorus_fdw._credit_report_view.display_id should be type character(25)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'display_id', 'Column loan_pro_chorus_fdw._credit_report_view.display_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'display_id', 'Column loan_pro_chorus_fdw._credit_report_view.display_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'created', 'Column loan_pro_chorus_fdw._credit_report_view.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'created', 'character varying(10)', 'Column loan_pro_chorus_fdw._credit_report_view.created should be type character varying(10)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'created', 'Column loan_pro_chorus_fdw._credit_report_view.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'created', 'Column loan_pro_chorus_fdw._credit_report_view.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'setup_contract_date', 'Column loan_pro_chorus_fdw._credit_report_view.setup_contract_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'setup_contract_date', 'character varying(10)', 'Column loan_pro_chorus_fdw._credit_report_view.setup_contract_date should be type character varying(10)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'setup_contract_date', 'Column loan_pro_chorus_fdw._credit_report_view.setup_contract_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'setup_contract_date', 'Column loan_pro_chorus_fdw._credit_report_view.setup_contract_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'loan_amount', 'Column loan_pro_chorus_fdw._credit_report_view.loan_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_amount', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._credit_report_view.loan_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_amount', 'Column loan_pro_chorus_fdw._credit_report_view.loan_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'loan_amount', 'Column loan_pro_chorus_fdw._credit_report_view.loan_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'loan_rate', 'Column loan_pro_chorus_fdw._credit_report_view.loan_rate should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_rate', 'numeric(11,4)', 'Column loan_pro_chorus_fdw._credit_report_view.loan_rate should be type numeric(11,4)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_rate', 'Column loan_pro_chorus_fdw._credit_report_view.loan_rate should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'loan_rate', 'Column loan_pro_chorus_fdw._credit_report_view.loan_rate should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'loan_term', 'Column loan_pro_chorus_fdw._credit_report_view.loan_term should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_term', 'numeric(11,4)', 'Column loan_pro_chorus_fdw._credit_report_view.loan_term should be type numeric(11,4)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_term', 'Column loan_pro_chorus_fdw._credit_report_view.loan_term should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'loan_term', 'Column loan_pro_chorus_fdw._credit_report_view.loan_term should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'setup_first_payment_date', 'Column loan_pro_chorus_fdw._credit_report_view.setup_first_payment_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'setup_first_payment_date', 'character varying(10)', 'Column loan_pro_chorus_fdw._credit_report_view.setup_first_payment_date should be type character varying(10)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'setup_first_payment_date', 'Column loan_pro_chorus_fdw._credit_report_view.setup_first_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'setup_first_payment_date', 'Column loan_pro_chorus_fdw._credit_report_view.setup_first_payment_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'payment', 'Column loan_pro_chorus_fdw._credit_report_view.payment should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'payment', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._credit_report_view.payment should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'payment', 'Column loan_pro_chorus_fdw._credit_report_view.payment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'payment', 'Column loan_pro_chorus_fdw._credit_report_view.payment should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'today', 'Column loan_pro_chorus_fdw._credit_report_view.today should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'today', 'character varying(10)', 'Column loan_pro_chorus_fdw._credit_report_view.today should be type character varying(10)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'today', 'Column loan_pro_chorus_fdw._credit_report_view.today should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'today', 'Column loan_pro_chorus_fdw._credit_report_view.today should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'loan_status', 'Column loan_pro_chorus_fdw._credit_report_view.loan_status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_status', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.loan_status should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_status', 'Column loan_pro_chorus_fdw._credit_report_view.loan_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'loan_status', 'Column loan_pro_chorus_fdw._credit_report_view.loan_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'loan_substatus', 'Column loan_pro_chorus_fdw._credit_report_view.loan_substatus should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_substatus', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.loan_substatus should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'loan_substatus', 'Column loan_pro_chorus_fdw._credit_report_view.loan_substatus should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'loan_substatus', 'Column loan_pro_chorus_fdw._credit_report_view.loan_substatus should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'credit_status', 'Column loan_pro_chorus_fdw._credit_report_view.credit_status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'credit_status', 'character(30)', 'Column loan_pro_chorus_fdw._credit_report_view.credit_status should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'credit_status', 'Column loan_pro_chorus_fdw._credit_report_view.credit_status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'credit_status', 'Column loan_pro_chorus_fdw._credit_report_view.credit_status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'credit_bureau', 'Column loan_pro_chorus_fdw._credit_report_view.credit_bureau should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'credit_bureau', 'character(30)', 'Column loan_pro_chorus_fdw._credit_report_view.credit_bureau should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'credit_bureau', 'Column loan_pro_chorus_fdw._credit_report_view.credit_bureau should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'credit_bureau', 'Column loan_pro_chorus_fdw._credit_report_view.credit_bureau should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'ecoa_code', 'Column loan_pro_chorus_fdw._credit_report_view.ecoa_code should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'ecoa_code', 'character(30)', 'Column loan_pro_chorus_fdw._credit_report_view.ecoa_code should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'ecoa_code', 'Column loan_pro_chorus_fdw._credit_report_view.ecoa_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'ecoa_code', 'Column loan_pro_chorus_fdw._credit_report_view.ecoa_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'co_ecoa_code', 'Column loan_pro_chorus_fdw._credit_report_view.co_ecoa_code should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'co_ecoa_code', 'character(30)', 'Column loan_pro_chorus_fdw._credit_report_view.co_ecoa_code should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'co_ecoa_code', 'Column loan_pro_chorus_fdw._credit_report_view.co_ecoa_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'co_ecoa_code', 'Column loan_pro_chorus_fdw._credit_report_view.co_ecoa_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'settings_closed_date', 'Column loan_pro_chorus_fdw._credit_report_view.settings_closed_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'settings_closed_date', 'character varying(10)', 'Column loan_pro_chorus_fdw._credit_report_view.settings_closed_date should be type character varying(10)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'settings_closed_date', 'Column loan_pro_chorus_fdw._credit_report_view.settings_closed_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'settings_closed_date', 'Column loan_pro_chorus_fdw._credit_report_view.settings_closed_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'payment_frequency', 'Column loan_pro_chorus_fdw._credit_report_view.payment_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'payment_frequency', 'character(30)', 'Column loan_pro_chorus_fdw._credit_report_view.payment_frequency should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'payment_frequency', 'Column loan_pro_chorus_fdw._credit_report_view.payment_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'payment_frequency', 'Column loan_pro_chorus_fdw._credit_report_view.payment_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'principal_balance', 'Column loan_pro_chorus_fdw._credit_report_view.principal_balance should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'principal_balance', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._credit_report_view.principal_balance should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'principal_balance', 'Column loan_pro_chorus_fdw._credit_report_view.principal_balance should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'principal_balance', 'Column loan_pro_chorus_fdw._credit_report_view.principal_balance should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'first_delinquency_date', 'Column loan_pro_chorus_fdw._credit_report_view.first_delinquency_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'first_delinquency_date', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.first_delinquency_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'first_delinquency_date', 'Column loan_pro_chorus_fdw._credit_report_view.first_delinquency_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'first_delinquency_date', 'Column loan_pro_chorus_fdw._credit_report_view.first_delinquency_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'amount_due', 'Column loan_pro_chorus_fdw._credit_report_view.amount_due should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'amount_due', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._credit_report_view.amount_due should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'amount_due', 'Column loan_pro_chorus_fdw._credit_report_view.amount_due should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'amount_due', 'Column loan_pro_chorus_fdw._credit_report_view.amount_due should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'amount_past_due_30', 'Column loan_pro_chorus_fdw._credit_report_view.amount_past_due_30 should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'amount_past_due_30', 'numeric(11,2)', 'Column loan_pro_chorus_fdw._credit_report_view.amount_past_due_30 should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'amount_past_due_30', 'Column loan_pro_chorus_fdw._credit_report_view.amount_past_due_30 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'amount_past_due_30', 'Column loan_pro_chorus_fdw._credit_report_view.amount_past_due_30 should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'last_payment_date', 'Column loan_pro_chorus_fdw._credit_report_view.last_payment_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'last_payment_date', 'character varying(10)', 'Column loan_pro_chorus_fdw._credit_report_view.last_payment_date should be type character varying(10)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'last_payment_date', 'Column loan_pro_chorus_fdw._credit_report_view.last_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'last_payment_date', 'Column loan_pro_chorus_fdw._credit_report_view.last_payment_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'last_payment_amount', 'Column loan_pro_chorus_fdw._credit_report_view.last_payment_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'last_payment_amount', 'character varying(13)', 'Column loan_pro_chorus_fdw._credit_report_view.last_payment_amount should be type character varying(13)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'last_payment_amount', 'Column loan_pro_chorus_fdw._credit_report_view.last_payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'last_payment_amount', 'Column loan_pro_chorus_fdw._credit_report_view.last_payment_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'days_past_due', 'Column loan_pro_chorus_fdw._credit_report_view.days_past_due should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'days_past_due', 'bigint', 'Column loan_pro_chorus_fdw._credit_report_view.days_past_due should be type bigint');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'days_past_due', 'Column loan_pro_chorus_fdw._credit_report_view.days_past_due should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'days_past_due', 'Column loan_pro_chorus_fdw._credit_report_view.days_past_due should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_first_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_first_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_first_name', 'character varying(50)', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_first_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_first_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_first_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricust_first_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_first_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_middle_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_middle_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_middle_name', 'character varying(50)', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_middle_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_middle_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_middle_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricust_middle_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_middle_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_last_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_last_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_last_name', 'character varying(50)', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_last_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_last_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_last_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricust_last_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_last_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_email', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_email should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_email', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_email should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_email', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_email should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricust_email', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_email should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pripriphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.pripriphone_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pripriphone_phone', 'character varying(20)', 'Column loan_pro_chorus_fdw._credit_report_view.pripriphone_phone should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pripriphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.pripriphone_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pripriphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.pripriphone_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secpriphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.secpriphone_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secpriphone_phone', 'character varying(20)', 'Column loan_pro_chorus_fdw._credit_report_view.secpriphone_phone should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secpriphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.secpriphone_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secpriphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.secpriphone_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_address1 should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_address1', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_address1 should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_address1 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_address1 should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_city should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_city', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_city should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_city should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_city should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_state should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_state', 'character varying(20)', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_state should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_zipcode should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_zipcode', 'character varying(15)', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_zipcode should be type character varying(15)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_zipcode should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricustaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.pricustaddr_zipcode should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_ssn', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_ssn should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_ssn', 'bytea', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_ssn should be type bytea');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_ssn', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_ssn should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricust_ssn', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_ssn should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_birth_date', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_birth_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_birth_date', 'bytea', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_birth_date should be type bytea');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_birth_date', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_birth_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricust_birth_date', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_birth_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_gender', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_gender should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_gender', 'character varying(100)', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_gender should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_gender', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_gender should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricust_gender', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_gender should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_generation_code', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_generation_code should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_generation_code', 'character varying(100)', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_generation_code should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricust_generation_code', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_generation_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricust_generation_code', 'Column loan_pro_chorus_fdw._credit_report_view.pricust_generation_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricustemp_company_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricustemp_company_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustemp_company_name', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.pricustemp_company_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustemp_company_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricustemp_company_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricustemp_company_name', 'Column loan_pro_chorus_fdw._credit_report_view.pricustemp_company_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_address1 should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_address1', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_address1 should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_address1 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_address1 should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_city should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_city', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_city should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_city should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_city should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_state should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_state', 'character varying(20)', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_state should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_zipcode should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_zipcode', 'character varying(15)', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_zipcode should be type character varying(15)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_zipcode should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'priempaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.priempaddr_zipcode should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'pricustemp_phone', 'Column loan_pro_chorus_fdw._credit_report_view.pricustemp_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustemp_phone', 'character varying(20)', 'Column loan_pro_chorus_fdw._credit_report_view.pricustemp_phone should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'pricustemp_phone', 'Column loan_pro_chorus_fdw._credit_report_view.pricustemp_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'pricustemp_phone', 'Column loan_pro_chorus_fdw._credit_report_view.pricustemp_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secust_first_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_first_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_first_name', 'character varying(50)', 'Column loan_pro_chorus_fdw._credit_report_view.secust_first_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_first_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_first_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secust_first_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_first_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secust_middle_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_middle_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_middle_name', 'character varying(50)', 'Column loan_pro_chorus_fdw._credit_report_view.secust_middle_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_middle_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_middle_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secust_middle_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_middle_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secust_last_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_last_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_last_name', 'character varying(50)', 'Column loan_pro_chorus_fdw._credit_report_view.secust_last_name should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_last_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_last_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secust_last_name', 'Column loan_pro_chorus_fdw._credit_report_view.secust_last_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secust_email', 'Column loan_pro_chorus_fdw._credit_report_view.secust_email should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_email', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.secust_email should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_email', 'Column loan_pro_chorus_fdw._credit_report_view.secust_email should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secust_email', 'Column loan_pro_chorus_fdw._credit_report_view.secust_email should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'prisecphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.prisecphone_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'prisecphone_phone', 'character varying(20)', 'Column loan_pro_chorus_fdw._credit_report_view.prisecphone_phone should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'prisecphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.prisecphone_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'prisecphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.prisecphone_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secsecphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.secsecphone_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secsecphone_phone', 'character varying(20)', 'Column loan_pro_chorus_fdw._credit_report_view.secsecphone_phone should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secsecphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.secsecphone_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secsecphone_phone', 'Column loan_pro_chorus_fdw._credit_report_view.secsecphone_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_address1 should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_address1', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_address1 should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_address1 should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_address1', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_address1 should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_city should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_city', 'text', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_city should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_city should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_city', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_city should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_state should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_state', 'character varying(20)', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_state should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_state should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_state', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_state should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_zipcode should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_zipcode', 'character varying(15)', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_zipcode should be type character varying(15)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_zipcode should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'seccustaddr_zipcode', 'Column loan_pro_chorus_fdw._credit_report_view.seccustaddr_zipcode should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secust_ssn', 'Column loan_pro_chorus_fdw._credit_report_view.secust_ssn should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_ssn', 'bytea', 'Column loan_pro_chorus_fdw._credit_report_view.secust_ssn should be type bytea');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_ssn', 'Column loan_pro_chorus_fdw._credit_report_view.secust_ssn should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secust_ssn', 'Column loan_pro_chorus_fdw._credit_report_view.secust_ssn should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secust_birth_date', 'Column loan_pro_chorus_fdw._credit_report_view.secust_birth_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_birth_date', 'bytea', 'Column loan_pro_chorus_fdw._credit_report_view.secust_birth_date should be type bytea');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_birth_date', 'Column loan_pro_chorus_fdw._credit_report_view.secust_birth_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secust_birth_date', 'Column loan_pro_chorus_fdw._credit_report_view.secust_birth_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secust_gender', 'Column loan_pro_chorus_fdw._credit_report_view.secust_gender should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_gender', 'character varying(100)', 'Column loan_pro_chorus_fdw._credit_report_view.secust_gender should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_gender', 'Column loan_pro_chorus_fdw._credit_report_view.secust_gender should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secust_gender', 'Column loan_pro_chorus_fdw._credit_report_view.secust_gender should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'secust_generation_code', 'Column loan_pro_chorus_fdw._credit_report_view.secust_generation_code should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_generation_code', 'character varying(50)', 'Column loan_pro_chorus_fdw._credit_report_view.secust_generation_code should be type character varying(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'secust_generation_code', 'Column loan_pro_chorus_fdw._credit_report_view.secust_generation_code should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'secust_generation_code', 'Column loan_pro_chorus_fdw._credit_report_view.secust_generation_code should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'net_charge_off', 'Column loan_pro_chorus_fdw._credit_report_view.net_charge_off should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'net_charge_off', 'numeric(3,2)', 'Column loan_pro_chorus_fdw._credit_report_view.net_charge_off should be type numeric(3,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'net_charge_off', 'Column loan_pro_chorus_fdw._credit_report_view.net_charge_off should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'net_charge_off', 'Column loan_pro_chorus_fdw._credit_report_view.net_charge_off should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_report_view', 'credit_limit', 'Column loan_pro_chorus_fdw._credit_report_view.credit_limit should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_report_view', 'credit_limit', 'character varying(13)', 'Column loan_pro_chorus_fdw._credit_report_view.credit_limit should be type character varying(13)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_report_view', 'credit_limit', 'Column loan_pro_chorus_fdw._credit_report_view.credit_limit should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_report_view', 'credit_limit', 'Column loan_pro_chorus_fdw._credit_report_view.credit_limit should not  have a default');

SELECT * FROM finish();
ROLLBACK;
