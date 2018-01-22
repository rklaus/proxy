SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(75);

SELECT has_foreign_table(
    'loan_pro_fdw', '_disbursement_entity',
    'Should have foreign table loan_pro_fdw._disbursement_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_disbursement_entity',
    'Table loan_pro_fdw._disbursement_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_disbursement_entity'::name, ARRAY[
    'id'::name,
    'account_type'::name,
    'account_id'::name,
    'escrow_subset_id'::name,
    'date'::name,
    'estimated_amount'::name,
    'last_payment_date'::name,
    'last_payment_amount'::name,
    'actual_amount'::name,
    'recurring_frequency'::name,
    'next_payment_date'::name,
    'next_payment_amount'::name,
    'memo'::name,
    'vendor_id'::name,
    'category_id'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'id', 'Column loan_pro_fdw._disbursement_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'id', 'integer', 'Column loan_pro_fdw._disbursement_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'id', 'Column loan_pro_fdw._disbursement_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'id', 'Column loan_pro_fdw._disbursement_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'account_type', 'Column loan_pro_fdw._disbursement_entity.account_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'account_type', 'character(32)', 'Column loan_pro_fdw._disbursement_entity.account_type should be type character(32)');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'account_type', 'Column loan_pro_fdw._disbursement_entity.account_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'account_type', 'Column loan_pro_fdw._disbursement_entity.account_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'account_id', 'Column loan_pro_fdw._disbursement_entity.account_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'account_id', 'integer', 'Column loan_pro_fdw._disbursement_entity.account_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'account_id', 'Column loan_pro_fdw._disbursement_entity.account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'account_id', 'Column loan_pro_fdw._disbursement_entity.account_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'escrow_subset_id', 'Column loan_pro_fdw._disbursement_entity.escrow_subset_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'escrow_subset_id', 'integer', 'Column loan_pro_fdw._disbursement_entity.escrow_subset_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'escrow_subset_id', 'Column loan_pro_fdw._disbursement_entity.escrow_subset_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'escrow_subset_id', 'Column loan_pro_fdw._disbursement_entity.escrow_subset_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'date', 'Column loan_pro_fdw._disbursement_entity.date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'date', 'text', 'Column loan_pro_fdw._disbursement_entity.date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'date', 'Column loan_pro_fdw._disbursement_entity.date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'date', 'Column loan_pro_fdw._disbursement_entity.date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'estimated_amount', 'Column loan_pro_fdw._disbursement_entity.estimated_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'estimated_amount', 'numeric(11,2)', 'Column loan_pro_fdw._disbursement_entity.estimated_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'estimated_amount', 'Column loan_pro_fdw._disbursement_entity.estimated_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'estimated_amount', 'Column loan_pro_fdw._disbursement_entity.estimated_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'last_payment_date', 'Column loan_pro_fdw._disbursement_entity.last_payment_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'last_payment_date', 'text', 'Column loan_pro_fdw._disbursement_entity.last_payment_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'last_payment_date', 'Column loan_pro_fdw._disbursement_entity.last_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'last_payment_date', 'Column loan_pro_fdw._disbursement_entity.last_payment_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'last_payment_amount', 'Column loan_pro_fdw._disbursement_entity.last_payment_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'last_payment_amount', 'numeric(11,2)', 'Column loan_pro_fdw._disbursement_entity.last_payment_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'last_payment_amount', 'Column loan_pro_fdw._disbursement_entity.last_payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'last_payment_amount', 'Column loan_pro_fdw._disbursement_entity.last_payment_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'actual_amount', 'Column loan_pro_fdw._disbursement_entity.actual_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'actual_amount', 'numeric(11,2)', 'Column loan_pro_fdw._disbursement_entity.actual_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'actual_amount', 'Column loan_pro_fdw._disbursement_entity.actual_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'actual_amount', 'Column loan_pro_fdw._disbursement_entity.actual_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'recurring_frequency', 'Column loan_pro_fdw._disbursement_entity.recurring_frequency should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'recurring_frequency', 'character(64)', 'Column loan_pro_fdw._disbursement_entity.recurring_frequency should be type character(64)');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'recurring_frequency', 'Column loan_pro_fdw._disbursement_entity.recurring_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'recurring_frequency', 'Column loan_pro_fdw._disbursement_entity.recurring_frequency should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'next_payment_date', 'Column loan_pro_fdw._disbursement_entity.next_payment_date should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'next_payment_date', 'text', 'Column loan_pro_fdw._disbursement_entity.next_payment_date should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'next_payment_date', 'Column loan_pro_fdw._disbursement_entity.next_payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'next_payment_date', 'Column loan_pro_fdw._disbursement_entity.next_payment_date should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'next_payment_amount', 'Column loan_pro_fdw._disbursement_entity.next_payment_amount should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'next_payment_amount', 'numeric(11,2)', 'Column loan_pro_fdw._disbursement_entity.next_payment_amount should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'next_payment_amount', 'Column loan_pro_fdw._disbursement_entity.next_payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'next_payment_amount', 'Column loan_pro_fdw._disbursement_entity.next_payment_amount should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'memo', 'Column loan_pro_fdw._disbursement_entity.memo should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'memo', 'text', 'Column loan_pro_fdw._disbursement_entity.memo should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'memo', 'Column loan_pro_fdw._disbursement_entity.memo should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'memo', 'Column loan_pro_fdw._disbursement_entity.memo should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'vendor_id', 'Column loan_pro_fdw._disbursement_entity.vendor_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'vendor_id', 'integer', 'Column loan_pro_fdw._disbursement_entity.vendor_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'vendor_id', 'Column loan_pro_fdw._disbursement_entity.vendor_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'vendor_id', 'Column loan_pro_fdw._disbursement_entity.vendor_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'category_id', 'Column loan_pro_fdw._disbursement_entity.category_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'category_id', 'integer', 'Column loan_pro_fdw._disbursement_entity.category_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'category_id', 'Column loan_pro_fdw._disbursement_entity.category_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'category_id', 'Column loan_pro_fdw._disbursement_entity.category_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'created', 'Column loan_pro_fdw._disbursement_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'created', 'text', 'Column loan_pro_fdw._disbursement_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'created', 'Column loan_pro_fdw._disbursement_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'created', 'Column loan_pro_fdw._disbursement_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'lastupdated', 'Column loan_pro_fdw._disbursement_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._disbursement_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'lastupdated', 'Column loan_pro_fdw._disbursement_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'lastupdated', 'Column loan_pro_fdw._disbursement_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_disbursement_entity', 'deleted', 'Column loan_pro_fdw._disbursement_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_disbursement_entity', 'deleted', 'integer', 'Column loan_pro_fdw._disbursement_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_disbursement_entity', 'deleted', 'Column loan_pro_fdw._disbursement_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_disbursement_entity', 'deleted', 'Column loan_pro_fdw._disbursement_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
