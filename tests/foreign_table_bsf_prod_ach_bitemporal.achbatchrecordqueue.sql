SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(131);

SELECT has_foreign_table(
    'bsf_prod_ach_bitemporal', 'achbatchrecordqueue',
    'Should have foreign table bsf_prod_ach_bitemporal.achbatchrecordqueue'
);

SELECT hasnt_pk(
    'bsf_prod_ach_bitemporal', 'achbatchrecordqueue',
    'Table bsf_prod_ach_bitemporal.achbatchrecordqueue should have a primary key'
);

SELECT columns_are('bsf_prod_ach_bitemporal'::name, 'achbatchrecordqueue'::name, ARRAY[
    'achbatchrecordqueue_key'::name,
    'achbatchrecord_id'::name,
    'loan_id'::name,
    'payment_id'::name,
    'transaction_id'::name,
    'isorigination'::name,
    'loan_owner'::name,
    'endpointtype'::name,
    'endpointname'::name,
    'amount'::name,
    'effective_date'::name,
    'bankname'::name,
    'bankroutingnumber'::name,
    'bankaccountnumber'::name,
    'bankaccounttype'::name,
    'firstname'::name,
    'lastname'::name,
    'address1'::name,
    'address2'::name,
    'city'::name,
    'state'::name,
    'zipcode'::name,
    'email'::name,
    'phone'::name,
    'loanoriginalowner'::name,
    'filebatch'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name,
    'last_updated'::name,
    'product'::name,
    'brand'::name
]);

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'achbatchrecordqueue_key', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.achbatchrecordqueue_key should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'achbatchrecordqueue_key', 'integer', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.achbatchrecordqueue_key should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'achbatchrecordqueue_key', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.achbatchrecordqueue_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'achbatchrecordqueue_key', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.achbatchrecordqueue_key should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'achbatchrecord_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.achbatchrecord_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'achbatchrecord_id', 'integer', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.achbatchrecord_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'achbatchrecord_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.achbatchrecord_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'achbatchrecord_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.achbatchrecord_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loan_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loan_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loan_id', 'integer', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loan_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loan_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loan_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loan_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loan_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'payment_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.payment_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'payment_id', 'integer', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.payment_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'payment_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.payment_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'payment_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.payment_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'transaction_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.transaction_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'transaction_id', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.transaction_id should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'transaction_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.transaction_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'transaction_id', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.transaction_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'isorigination', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.isorigination should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'isorigination', 'integer', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.isorigination should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'isorigination', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.isorigination should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'isorigination', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.isorigination should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loan_owner', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loan_owner should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loan_owner', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loan_owner should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loan_owner', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loan_owner should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loan_owner', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loan_owner should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.endpointtype should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'endpointtype', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.endpointtype should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.endpointtype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'endpointtype', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.endpointtype should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'endpointname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.endpointname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'endpointname', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.endpointname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'endpointname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.endpointname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'endpointname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.endpointname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'amount', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.amount should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'amount', 'numeric(18,2)', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.amount should be type numeric(18,2)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'amount', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'amount', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.amount should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'effective_date', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.effective_date should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'effective_date', 'date', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.effective_date should be type date');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'effective_date', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.effective_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'effective_date', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.effective_date should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankname', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankroutingnumber', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankroutingnumber should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankroutingnumber', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankroutingnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankroutingnumber', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankroutingnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankroutingnumber', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankroutingnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankaccountnumber', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankaccountnumber should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankaccountnumber', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankaccountnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankaccountnumber', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankaccountnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankaccountnumber', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankaccountnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankaccounttype', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankaccounttype should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankaccounttype', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankaccounttype should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankaccounttype', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankaccounttype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'bankaccounttype', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.bankaccounttype should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'firstname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.firstname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'firstname', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.firstname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'firstname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.firstname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'firstname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.firstname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'lastname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.lastname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'lastname', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.lastname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'lastname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.lastname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'lastname', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.lastname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'address1', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.address1 should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'address1', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.address1 should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'address1', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.address1 should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'address1', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.address1 should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'address2', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.address2 should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'address2', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.address2 should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'address2', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.address2 should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'address2', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.address2 should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'city', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.city should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'city', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.city should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'city', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.city should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'city', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.city should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'state', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.state should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'state', 'character varying(2)', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.state should be type character varying(2)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'state', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.state should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'state', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.state should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'zipcode', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.zipcode should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'zipcode', 'character varying(10)', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.zipcode should be type character varying(10)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'zipcode', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.zipcode should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'zipcode', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.zipcode should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'email', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.email should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'email', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.email should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'email', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.email should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'email', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.email should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'phone', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.phone should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'phone', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.phone should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'phone', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.phone should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'phone', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.phone should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loanoriginalowner', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loanoriginalowner should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loanoriginalowner', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loanoriginalowner should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loanoriginalowner', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loanoriginalowner should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'loanoriginalowner', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.loanoriginalowner should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'filebatch', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.filebatch should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'filebatch', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.filebatch should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'filebatch', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.filebatch should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'filebatch', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.filebatch should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'effective', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.effective should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'effective', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'effective', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.effective should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'asserted', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.asserted should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'asserted', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'asserted', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.asserted should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.row_created_at should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'last_updated', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.last_updated should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'last_updated', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'last_updated', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'product', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.product should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'product', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.product should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'product', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.product should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'product', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.product should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'brand', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.brand should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'brand', 'text', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.brand should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'brand', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.brand should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achbatchrecordqueue', 'brand', 'Column bsf_prod_ach_bitemporal.achbatchrecordqueue.brand should not  have a default');

SELECT * FROM finish();
ROLLBACK;
