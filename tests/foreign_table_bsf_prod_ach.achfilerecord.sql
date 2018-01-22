SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(91);

SELECT has_foreign_table(
    'bsf_prod_ach', 'achfilerecord',
    'Should have foreign table bsf_prod_ach.achfilerecord'
);

SELECT hasnt_pk(
    'bsf_prod_ach', 'achfilerecord',
    'Table bsf_prod_ach.achfilerecord should have a primary key'
);

SELECT columns_are('bsf_prod_ach'::name, 'achfilerecord'::name, ARRAY[
    'achfilerecord_id'::name,
    'file_id'::name,
    'loan_id'::name,
    'payment_id'::name,
    'transaction_id'::name,
    'isorigination'::name,
    'amount'::name,
    'effectivedate'::name,
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
    'endpointname'::name
]);

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'achfilerecord_id', 'Column bsf_prod_ach.achfilerecord.achfilerecord_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'achfilerecord_id', 'integer', 'Column bsf_prod_ach.achfilerecord.achfilerecord_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'achfilerecord_id', 'Column bsf_prod_ach.achfilerecord.achfilerecord_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'achfilerecord_id', 'Column bsf_prod_ach.achfilerecord.achfilerecord_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'file_id', 'Column bsf_prod_ach.achfilerecord.file_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'file_id', 'integer', 'Column bsf_prod_ach.achfilerecord.file_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'file_id', 'Column bsf_prod_ach.achfilerecord.file_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'file_id', 'Column bsf_prod_ach.achfilerecord.file_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'loan_id', 'Column bsf_prod_ach.achfilerecord.loan_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'loan_id', 'integer', 'Column bsf_prod_ach.achfilerecord.loan_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'loan_id', 'Column bsf_prod_ach.achfilerecord.loan_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'loan_id', 'Column bsf_prod_ach.achfilerecord.loan_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'payment_id', 'Column bsf_prod_ach.achfilerecord.payment_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'payment_id', 'integer', 'Column bsf_prod_ach.achfilerecord.payment_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'payment_id', 'Column bsf_prod_ach.achfilerecord.payment_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'payment_id', 'Column bsf_prod_ach.achfilerecord.payment_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'transaction_id', 'Column bsf_prod_ach.achfilerecord.transaction_id should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'transaction_id', 'text', 'Column bsf_prod_ach.achfilerecord.transaction_id should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'transaction_id', 'Column bsf_prod_ach.achfilerecord.transaction_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'transaction_id', 'Column bsf_prod_ach.achfilerecord.transaction_id should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'isorigination', 'Column bsf_prod_ach.achfilerecord.isorigination should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'isorigination', 'integer', 'Column bsf_prod_ach.achfilerecord.isorigination should be type integer');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'isorigination', 'Column bsf_prod_ach.achfilerecord.isorigination should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'isorigination', 'Column bsf_prod_ach.achfilerecord.isorigination should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'amount', 'Column bsf_prod_ach.achfilerecord.amount should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'amount', 'numeric(18,2)', 'Column bsf_prod_ach.achfilerecord.amount should be type numeric(18,2)');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'amount', 'Column bsf_prod_ach.achfilerecord.amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'amount', 'Column bsf_prod_ach.achfilerecord.amount should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'effectivedate', 'Column bsf_prod_ach.achfilerecord.effectivedate should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'effectivedate', 'date', 'Column bsf_prod_ach.achfilerecord.effectivedate should be type date');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'effectivedate', 'Column bsf_prod_ach.achfilerecord.effectivedate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'effectivedate', 'Column bsf_prod_ach.achfilerecord.effectivedate should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'bankname', 'Column bsf_prod_ach.achfilerecord.bankname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'bankname', 'text', 'Column bsf_prod_ach.achfilerecord.bankname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'bankname', 'Column bsf_prod_ach.achfilerecord.bankname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'bankname', 'Column bsf_prod_ach.achfilerecord.bankname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'bankroutingnumber', 'Column bsf_prod_ach.achfilerecord.bankroutingnumber should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'bankroutingnumber', 'text', 'Column bsf_prod_ach.achfilerecord.bankroutingnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'bankroutingnumber', 'Column bsf_prod_ach.achfilerecord.bankroutingnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'bankroutingnumber', 'Column bsf_prod_ach.achfilerecord.bankroutingnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'bankaccountnumber', 'Column bsf_prod_ach.achfilerecord.bankaccountnumber should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'bankaccountnumber', 'text', 'Column bsf_prod_ach.achfilerecord.bankaccountnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'bankaccountnumber', 'Column bsf_prod_ach.achfilerecord.bankaccountnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'bankaccountnumber', 'Column bsf_prod_ach.achfilerecord.bankaccountnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'bankaccounttype', 'Column bsf_prod_ach.achfilerecord.bankaccounttype should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'bankaccounttype', 'text', 'Column bsf_prod_ach.achfilerecord.bankaccounttype should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'bankaccounttype', 'Column bsf_prod_ach.achfilerecord.bankaccounttype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'bankaccounttype', 'Column bsf_prod_ach.achfilerecord.bankaccounttype should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'firstname', 'Column bsf_prod_ach.achfilerecord.firstname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'firstname', 'text', 'Column bsf_prod_ach.achfilerecord.firstname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'firstname', 'Column bsf_prod_ach.achfilerecord.firstname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'firstname', 'Column bsf_prod_ach.achfilerecord.firstname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'lastname', 'Column bsf_prod_ach.achfilerecord.lastname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'lastname', 'text', 'Column bsf_prod_ach.achfilerecord.lastname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'lastname', 'Column bsf_prod_ach.achfilerecord.lastname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'lastname', 'Column bsf_prod_ach.achfilerecord.lastname should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'address1', 'Column bsf_prod_ach.achfilerecord.address1 should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'address1', 'text', 'Column bsf_prod_ach.achfilerecord.address1 should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'address1', 'Column bsf_prod_ach.achfilerecord.address1 should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'address1', 'Column bsf_prod_ach.achfilerecord.address1 should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'address2', 'Column bsf_prod_ach.achfilerecord.address2 should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'address2', 'text', 'Column bsf_prod_ach.achfilerecord.address2 should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'address2', 'Column bsf_prod_ach.achfilerecord.address2 should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'address2', 'Column bsf_prod_ach.achfilerecord.address2 should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'city', 'Column bsf_prod_ach.achfilerecord.city should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'city', 'text', 'Column bsf_prod_ach.achfilerecord.city should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'city', 'Column bsf_prod_ach.achfilerecord.city should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'city', 'Column bsf_prod_ach.achfilerecord.city should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'state', 'Column bsf_prod_ach.achfilerecord.state should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'state', 'character varying(2)', 'Column bsf_prod_ach.achfilerecord.state should be type character varying(2)');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'state', 'Column bsf_prod_ach.achfilerecord.state should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'state', 'Column bsf_prod_ach.achfilerecord.state should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'zipcode', 'Column bsf_prod_ach.achfilerecord.zipcode should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'zipcode', 'character varying(10)', 'Column bsf_prod_ach.achfilerecord.zipcode should be type character varying(10)');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'zipcode', 'Column bsf_prod_ach.achfilerecord.zipcode should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'zipcode', 'Column bsf_prod_ach.achfilerecord.zipcode should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'email', 'Column bsf_prod_ach.achfilerecord.email should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'email', 'text', 'Column bsf_prod_ach.achfilerecord.email should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'email', 'Column bsf_prod_ach.achfilerecord.email should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'email', 'Column bsf_prod_ach.achfilerecord.email should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'phone', 'Column bsf_prod_ach.achfilerecord.phone should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'phone', 'text', 'Column bsf_prod_ach.achfilerecord.phone should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'phone', 'Column bsf_prod_ach.achfilerecord.phone should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'phone', 'Column bsf_prod_ach.achfilerecord.phone should not  have a default');

SELECT has_column(       'bsf_prod_ach', 'achfilerecord', 'endpointname', 'Column bsf_prod_ach.achfilerecord.endpointname should exist');
SELECT col_type_is(      'bsf_prod_ach', 'achfilerecord', 'endpointname', 'text', 'Column bsf_prod_ach.achfilerecord.endpointname should be type text');
SELECT col_is_null(      'bsf_prod_ach', 'achfilerecord', 'endpointname', 'Column bsf_prod_ach.achfilerecord.endpointname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach', 'achfilerecord', 'endpointname', 'Column bsf_prod_ach.achfilerecord.endpointname should not  have a default');

SELECT * FROM finish();
ROLLBACK;
