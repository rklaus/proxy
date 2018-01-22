SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(103);

SELECT has_foreign_table(
    'bsf_prod_ach', 'achbatchrecordqueue',
    'Should have foreign table bsf_prod_ach.achbatchrecordqueue'
);

SELECT hasnt_pk(
    'bsf_prod_ach', 'achbatchrecordqueue',
    'Table bsf_prod_ach.achbatchrecordqueue should have a primary key'
);

SELECT columns_are('bsf_prod_ach'::name, 'achbatchrecordqueue'::name, ARRAY[
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
    'filebatch'::name
]);

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'achbatchrecord_id', 'Column bsf_prod_ach.achbatchrecordqueue.achbatchrecord_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'achbatchrecord_id', 'integer', 'Column bsf_prod_ach.achbatchrecordqueue.achbatchrecord_id should be type integer');
SELECT col_not_null(     'bsf_prod_ach', 'achbatchrecordqueue', 'achbatchrecord_id', 'Column bsf_prod_ach.achbatchrecordqueue.achbatchrecord_id should be NOT NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'achbatchrecord_id', 'Column bsf_prod_ach.achbatchrecordqueue.achbatchrecord_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'loan_id', 'Column bsf_prod_ach.achbatchrecordqueue.loan_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'loan_id', 'integer', 'Column bsf_prod_ach.achbatchrecordqueue.loan_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'loan_id', 'Column bsf_prod_ach.achbatchrecordqueue.loan_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'loan_id', 'Column bsf_prod_ach.achbatchrecordqueue.loan_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'payment_id', 'Column bsf_prod_ach.achbatchrecordqueue.payment_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'payment_id', 'integer', 'Column bsf_prod_ach.achbatchrecordqueue.payment_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'payment_id', 'Column bsf_prod_ach.achbatchrecordqueue.payment_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'payment_id', 'Column bsf_prod_ach.achbatchrecordqueue.payment_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'transaction_id', 'Column bsf_prod_ach.achbatchrecordqueue.transaction_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'transaction_id', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.transaction_id should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'transaction_id', 'Column bsf_prod_ach.achbatchrecordqueue.transaction_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'transaction_id', 'Column bsf_prod_ach.achbatchrecordqueue.transaction_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'isorigination', 'Column bsf_prod_ach.achbatchrecordqueue.isorigination should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'isorigination', 'integer', 'Column bsf_prod_ach.achbatchrecordqueue.isorigination should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'isorigination', 'Column bsf_prod_ach.achbatchrecordqueue.isorigination should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'isorigination', 'Column bsf_prod_ach.achbatchrecordqueue.isorigination should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'loan_owner', 'Column bsf_prod_ach.achbatchrecordqueue.loan_owner should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'loan_owner', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.loan_owner should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'loan_owner', 'Column bsf_prod_ach.achbatchrecordqueue.loan_owner should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'loan_owner', 'Column bsf_prod_ach.achbatchrecordqueue.loan_owner should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'endpointtype', 'Column bsf_prod_ach.achbatchrecordqueue.endpointtype should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'endpointtype', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.endpointtype should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'endpointtype', 'Column bsf_prod_ach.achbatchrecordqueue.endpointtype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'endpointtype', 'Column bsf_prod_ach.achbatchrecordqueue.endpointtype should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'endpointname', 'Column bsf_prod_ach.achbatchrecordqueue.endpointname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'endpointname', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.endpointname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'endpointname', 'Column bsf_prod_ach.achbatchrecordqueue.endpointname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'endpointname', 'Column bsf_prod_ach.achbatchrecordqueue.endpointname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'amount', 'Column bsf_prod_ach.achbatchrecordqueue.amount should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'amount', 'numeric(18,2)', 'Column bsf_prod_ach.achbatchrecordqueue.amount should be type numeric(18,2)');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'amount', 'Column bsf_prod_ach.achbatchrecordqueue.amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'amount', 'Column bsf_prod_ach.achbatchrecordqueue.amount should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'effective_date', 'Column bsf_prod_ach.achbatchrecordqueue.effective_date should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'effective_date', 'date', 'Column bsf_prod_ach.achbatchrecordqueue.effective_date should be type date');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'effective_date', 'Column bsf_prod_ach.achbatchrecordqueue.effective_date should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'effective_date', 'Column bsf_prod_ach.achbatchrecordqueue.effective_date should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'bankname', 'Column bsf_prod_ach.achbatchrecordqueue.bankname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'bankname', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.bankname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'bankname', 'Column bsf_prod_ach.achbatchrecordqueue.bankname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'bankname', 'Column bsf_prod_ach.achbatchrecordqueue.bankname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'bankroutingnumber', 'Column bsf_prod_ach.achbatchrecordqueue.bankroutingnumber should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'bankroutingnumber', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.bankroutingnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'bankroutingnumber', 'Column bsf_prod_ach.achbatchrecordqueue.bankroutingnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'bankroutingnumber', 'Column bsf_prod_ach.achbatchrecordqueue.bankroutingnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'bankaccountnumber', 'Column bsf_prod_ach.achbatchrecordqueue.bankaccountnumber should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'bankaccountnumber', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.bankaccountnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'bankaccountnumber', 'Column bsf_prod_ach.achbatchrecordqueue.bankaccountnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'bankaccountnumber', 'Column bsf_prod_ach.achbatchrecordqueue.bankaccountnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'bankaccounttype', 'Column bsf_prod_ach.achbatchrecordqueue.bankaccounttype should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'bankaccounttype', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.bankaccounttype should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'bankaccounttype', 'Column bsf_prod_ach.achbatchrecordqueue.bankaccounttype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'bankaccounttype', 'Column bsf_prod_ach.achbatchrecordqueue.bankaccounttype should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'firstname', 'Column bsf_prod_ach.achbatchrecordqueue.firstname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'firstname', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.firstname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'firstname', 'Column bsf_prod_ach.achbatchrecordqueue.firstname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'firstname', 'Column bsf_prod_ach.achbatchrecordqueue.firstname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'lastname', 'Column bsf_prod_ach.achbatchrecordqueue.lastname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'lastname', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.lastname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'lastname', 'Column bsf_prod_ach.achbatchrecordqueue.lastname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'lastname', 'Column bsf_prod_ach.achbatchrecordqueue.lastname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'address1', 'Column bsf_prod_ach.achbatchrecordqueue.address1 should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'address1', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.address1 should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'address1', 'Column bsf_prod_ach.achbatchrecordqueue.address1 should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'address1', 'Column bsf_prod_ach.achbatchrecordqueue.address1 should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'address2', 'Column bsf_prod_ach.achbatchrecordqueue.address2 should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'address2', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.address2 should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'address2', 'Column bsf_prod_ach.achbatchrecordqueue.address2 should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'address2', 'Column bsf_prod_ach.achbatchrecordqueue.address2 should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'city', 'Column bsf_prod_ach.achbatchrecordqueue.city should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'city', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.city should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'city', 'Column bsf_prod_ach.achbatchrecordqueue.city should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'city', 'Column bsf_prod_ach.achbatchrecordqueue.city should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'state', 'Column bsf_prod_ach.achbatchrecordqueue.state should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'state', 'character varying(2)', 'Column bsf_prod_ach.achbatchrecordqueue.state should be type character varying(2)');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'state', 'Column bsf_prod_ach.achbatchrecordqueue.state should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'state', 'Column bsf_prod_ach.achbatchrecordqueue.state should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'zipcode', 'Column bsf_prod_ach.achbatchrecordqueue.zipcode should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'zipcode', 'character varying(10)', 'Column bsf_prod_ach.achbatchrecordqueue.zipcode should be type character varying(10)');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'zipcode', 'Column bsf_prod_ach.achbatchrecordqueue.zipcode should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'zipcode', 'Column bsf_prod_ach.achbatchrecordqueue.zipcode should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'email', 'Column bsf_prod_ach.achbatchrecordqueue.email should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'email', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.email should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'email', 'Column bsf_prod_ach.achbatchrecordqueue.email should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'email', 'Column bsf_prod_ach.achbatchrecordqueue.email should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'phone', 'Column bsf_prod_ach.achbatchrecordqueue.phone should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'phone', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.phone should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'phone', 'Column bsf_prod_ach.achbatchrecordqueue.phone should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'phone', 'Column bsf_prod_ach.achbatchrecordqueue.phone should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'loanoriginalowner', 'Column bsf_prod_ach.achbatchrecordqueue.loanoriginalowner should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'loanoriginalowner', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.loanoriginalowner should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'loanoriginalowner', 'Column bsf_prod_ach.achbatchrecordqueue.loanoriginalowner should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'loanoriginalowner', 'Column bsf_prod_ach.achbatchrecordqueue.loanoriginalowner should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achbatchrecordqueue', 'filebatch', 'Column bsf_prod_ach.achbatchrecordqueue.filebatch should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achbatchrecordqueue', 'filebatch', 'text', 'Column bsf_prod_ach.achbatchrecordqueue.filebatch should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achbatchrecordqueue', 'filebatch', 'Column bsf_prod_ach.achbatchrecordqueue.filebatch should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achbatchrecordqueue', 'filebatch', 'Column bsf_prod_ach.achbatchrecordqueue.filebatch should not  have a default');

SELECT * FROM finish();
ROLLBACK;
