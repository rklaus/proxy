SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(119);

SELECT has_foreign_table(
    'bsf_prod_ach_bitemporal', 'achfilerecord',
    'Should have foreign table bsf_prod_ach_bitemporal.achfilerecord'
);

SELECT hasnt_pk(
    'bsf_prod_ach_bitemporal', 'achfilerecord',
    'Table bsf_prod_ach_bitemporal.achfilerecord should have a primary key'
);

SELECT columns_are('bsf_prod_ach_bitemporal'::name, 'achfilerecord'::name, ARRAY[
    'achfilerecord_key'::name,
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
    'endpointname'::name,
    'effective'::name,
    'asserted'::name,
    'row_created_at'::name,
    'last_updated'::name,
    'product'::name,
    'brand'::name
]);

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'achfilerecord_key', 'Column bsf_prod_ach_bitemporal.achfilerecord.achfilerecord_key should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'achfilerecord_key', 'integer', 'Column bsf_prod_ach_bitemporal.achfilerecord.achfilerecord_key should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'achfilerecord_key', 'Column bsf_prod_ach_bitemporal.achfilerecord.achfilerecord_key should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'achfilerecord_key', 'Column bsf_prod_ach_bitemporal.achfilerecord.achfilerecord_key should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'achfilerecord_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.achfilerecord_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'achfilerecord_id', 'integer', 'Column bsf_prod_ach_bitemporal.achfilerecord.achfilerecord_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'achfilerecord_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.achfilerecord_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'achfilerecord_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.achfilerecord_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'file_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.file_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'file_id', 'integer', 'Column bsf_prod_ach_bitemporal.achfilerecord.file_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'file_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.file_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'file_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.file_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'loan_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.loan_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'loan_id', 'integer', 'Column bsf_prod_ach_bitemporal.achfilerecord.loan_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'loan_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.loan_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'loan_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.loan_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'payment_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.payment_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'payment_id', 'integer', 'Column bsf_prod_ach_bitemporal.achfilerecord.payment_id should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'payment_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.payment_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'payment_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.payment_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'transaction_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.transaction_id should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'transaction_id', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.transaction_id should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'transaction_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.transaction_id should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'transaction_id', 'Column bsf_prod_ach_bitemporal.achfilerecord.transaction_id should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'isorigination', 'Column bsf_prod_ach_bitemporal.achfilerecord.isorigination should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'isorigination', 'integer', 'Column bsf_prod_ach_bitemporal.achfilerecord.isorigination should be type integer');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'isorigination', 'Column bsf_prod_ach_bitemporal.achfilerecord.isorigination should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'isorigination', 'Column bsf_prod_ach_bitemporal.achfilerecord.isorigination should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'amount', 'Column bsf_prod_ach_bitemporal.achfilerecord.amount should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'amount', 'numeric(10,2)', 'Column bsf_prod_ach_bitemporal.achfilerecord.amount should be type numeric(10,2)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'amount', 'Column bsf_prod_ach_bitemporal.achfilerecord.amount should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'amount', 'Column bsf_prod_ach_bitemporal.achfilerecord.amount should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'effectivedate', 'Column bsf_prod_ach_bitemporal.achfilerecord.effectivedate should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'effectivedate', 'date', 'Column bsf_prod_ach_bitemporal.achfilerecord.effectivedate should be type date');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'effectivedate', 'Column bsf_prod_ach_bitemporal.achfilerecord.effectivedate should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'effectivedate', 'Column bsf_prod_ach_bitemporal.achfilerecord.effectivedate should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankname', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankname', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankname', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'bankname', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankroutingnumber', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankroutingnumber should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankroutingnumber', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankroutingnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankroutingnumber', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankroutingnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'bankroutingnumber', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankroutingnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankaccountnumber', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankaccountnumber should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankaccountnumber', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankaccountnumber should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankaccountnumber', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankaccountnumber should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'bankaccountnumber', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankaccountnumber should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankaccounttype', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankaccounttype should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankaccounttype', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankaccounttype should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'bankaccounttype', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankaccounttype should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'bankaccounttype', 'Column bsf_prod_ach_bitemporal.achfilerecord.bankaccounttype should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'firstname', 'Column bsf_prod_ach_bitemporal.achfilerecord.firstname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'firstname', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.firstname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'firstname', 'Column bsf_prod_ach_bitemporal.achfilerecord.firstname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'firstname', 'Column bsf_prod_ach_bitemporal.achfilerecord.firstname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'lastname', 'Column bsf_prod_ach_bitemporal.achfilerecord.lastname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'lastname', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.lastname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'lastname', 'Column bsf_prod_ach_bitemporal.achfilerecord.lastname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'lastname', 'Column bsf_prod_ach_bitemporal.achfilerecord.lastname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'address1', 'Column bsf_prod_ach_bitemporal.achfilerecord.address1 should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'address1', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.address1 should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'address1', 'Column bsf_prod_ach_bitemporal.achfilerecord.address1 should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'address1', 'Column bsf_prod_ach_bitemporal.achfilerecord.address1 should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'address2', 'Column bsf_prod_ach_bitemporal.achfilerecord.address2 should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'address2', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.address2 should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'address2', 'Column bsf_prod_ach_bitemporal.achfilerecord.address2 should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'address2', 'Column bsf_prod_ach_bitemporal.achfilerecord.address2 should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'city', 'Column bsf_prod_ach_bitemporal.achfilerecord.city should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'city', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.city should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'city', 'Column bsf_prod_ach_bitemporal.achfilerecord.city should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'city', 'Column bsf_prod_ach_bitemporal.achfilerecord.city should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'state', 'Column bsf_prod_ach_bitemporal.achfilerecord.state should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'state', 'character varying(2)', 'Column bsf_prod_ach_bitemporal.achfilerecord.state should be type character varying(2)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'state', 'Column bsf_prod_ach_bitemporal.achfilerecord.state should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'state', 'Column bsf_prod_ach_bitemporal.achfilerecord.state should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'zipcode', 'Column bsf_prod_ach_bitemporal.achfilerecord.zipcode should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'zipcode', 'character varying(10)', 'Column bsf_prod_ach_bitemporal.achfilerecord.zipcode should be type character varying(10)');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'zipcode', 'Column bsf_prod_ach_bitemporal.achfilerecord.zipcode should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'zipcode', 'Column bsf_prod_ach_bitemporal.achfilerecord.zipcode should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'email', 'Column bsf_prod_ach_bitemporal.achfilerecord.email should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'email', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.email should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'email', 'Column bsf_prod_ach_bitemporal.achfilerecord.email should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'email', 'Column bsf_prod_ach_bitemporal.achfilerecord.email should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'phone', 'Column bsf_prod_ach_bitemporal.achfilerecord.phone should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'phone', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.phone should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'phone', 'Column bsf_prod_ach_bitemporal.achfilerecord.phone should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'phone', 'Column bsf_prod_ach_bitemporal.achfilerecord.phone should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'endpointname', 'Column bsf_prod_ach_bitemporal.achfilerecord.endpointname should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'endpointname', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.endpointname should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'endpointname', 'Column bsf_prod_ach_bitemporal.achfilerecord.endpointname should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'endpointname', 'Column bsf_prod_ach_bitemporal.achfilerecord.endpointname should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'effective', 'Column bsf_prod_ach_bitemporal.achfilerecord.effective should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'effective', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achfilerecord.effective should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'effective', 'Column bsf_prod_ach_bitemporal.achfilerecord.effective should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'effective', 'Column bsf_prod_ach_bitemporal.achfilerecord.effective should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'asserted', 'Column bsf_prod_ach_bitemporal.achfilerecord.asserted should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'asserted', 'temporal_relationships.timeperiod', 'Column bsf_prod_ach_bitemporal.achfilerecord.asserted should be type temporal_relationships.timeperiod');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'asserted', 'Column bsf_prod_ach_bitemporal.achfilerecord.asserted should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'asserted', 'Column bsf_prod_ach_bitemporal.achfilerecord.asserted should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfilerecord.row_created_at should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'row_created_at', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achfilerecord.row_created_at should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfilerecord.row_created_at should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'row_created_at', 'Column bsf_prod_ach_bitemporal.achfilerecord.row_created_at should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfilerecord.last_updated should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'last_updated', 'timestamp with time zone', 'Column bsf_prod_ach_bitemporal.achfilerecord.last_updated should be type timestamp with time zone');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfilerecord.last_updated should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'last_updated', 'Column bsf_prod_ach_bitemporal.achfilerecord.last_updated should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'product', 'Column bsf_prod_ach_bitemporal.achfilerecord.product should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'product', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.product should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'product', 'Column bsf_prod_ach_bitemporal.achfilerecord.product should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'product', 'Column bsf_prod_ach_bitemporal.achfilerecord.product should not  have a default');

SELECT has_column(       'bsf_prod_ach_bitemporal', 'achfilerecord', 'brand', 'Column bsf_prod_ach_bitemporal.achfilerecord.brand should exist');
SELECT col_type_is(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'brand', 'text', 'Column bsf_prod_ach_bitemporal.achfilerecord.brand should be type text');
SELECT col_is_null(      'bsf_prod_ach_bitemporal', 'achfilerecord', 'brand', 'Column bsf_prod_ach_bitemporal.achfilerecord.brand should allow NULL');
SELECT col_hasnt_default('bsf_prod_ach_bitemporal', 'achfilerecord', 'brand', 'Column bsf_prod_ach_bitemporal.achfilerecord.brand should not  have a default');

SELECT * FROM finish();
ROLLBACK;
