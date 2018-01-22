SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_credit_breakdown_report',
    'Should have foreign table loan_pro_chorus_fdw._credit_breakdown_report'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_credit_breakdown_report',
    'Table loan_pro_chorus_fdw._credit_breakdown_report should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_credit_breakdown_report'::name, ARRAY[
    'entity_id'::name,
    'entity_type'::name,
    'credit_id'::name,
    'apply_date'::name,
    'payment_date'::name,
    'payment_amount'::name,
    'payment_interest'::name,
    'payment_principal'::name,
    'payment_discount'::name,
    'payment_fees'::name,
    'payment_escrow'::name,
    'payment_fees_breakdown'::name,
    'posted_by'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'entity_id', 'Column loan_pro_chorus_fdw._credit_breakdown_report.entity_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'entity_id', 'integer', 'Column loan_pro_chorus_fdw._credit_breakdown_report.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'entity_id', 'Column loan_pro_chorus_fdw._credit_breakdown_report.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'entity_id', 'Column loan_pro_chorus_fdw._credit_breakdown_report.entity_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'entity_type', 'Column loan_pro_chorus_fdw._credit_breakdown_report.entity_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'entity_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._credit_breakdown_report.entity_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'entity_type', 'Column loan_pro_chorus_fdw._credit_breakdown_report.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'entity_type', 'Column loan_pro_chorus_fdw._credit_breakdown_report.entity_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'credit_id', 'Column loan_pro_chorus_fdw._credit_breakdown_report.credit_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'credit_id', 'integer', 'Column loan_pro_chorus_fdw._credit_breakdown_report.credit_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'credit_id', 'Column loan_pro_chorus_fdw._credit_breakdown_report.credit_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'credit_id', 'Column loan_pro_chorus_fdw._credit_breakdown_report.credit_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'apply_date', 'Column loan_pro_chorus_fdw._credit_breakdown_report.apply_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'apply_date', 'text', 'Column loan_pro_chorus_fdw._credit_breakdown_report.apply_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'apply_date', 'Column loan_pro_chorus_fdw._credit_breakdown_report.apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'apply_date', 'Column loan_pro_chorus_fdw._credit_breakdown_report.apply_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_date', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_date', 'text', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_date', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_date', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_amount', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_amount', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_amount', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_amount', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_interest', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_interest should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_interest', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_interest should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_interest', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_interest should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_interest', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_interest should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_principal', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_principal should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_principal', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_principal should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_principal', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_principal should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_principal', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_principal should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_discount', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_discount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_discount', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_discount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_discount', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_discount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_discount', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_discount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_fees', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_fees should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_fees', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_fees should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_fees', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_fees should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_fees', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_fees should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_escrow', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_escrow should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_escrow', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_escrow should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_escrow', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_escrow should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_escrow', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_escrow should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_fees_breakdown', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_fees_breakdown should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_fees_breakdown', 'text', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_fees_breakdown should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_fees_breakdown', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_fees_breakdown should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'payment_fees_breakdown', 'Column loan_pro_chorus_fdw._credit_breakdown_report.payment_fees_breakdown should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'posted_by', 'Column loan_pro_chorus_fdw._credit_breakdown_report.posted_by should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'posted_by', 'integer', 'Column loan_pro_chorus_fdw._credit_breakdown_report.posted_by should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'posted_by', 'Column loan_pro_chorus_fdw._credit_breakdown_report.posted_by should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'posted_by', 'Column loan_pro_chorus_fdw._credit_breakdown_report.posted_by should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_credit_breakdown_report', 'lastupdated', 'Column loan_pro_chorus_fdw._credit_breakdown_report.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._credit_breakdown_report.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_credit_breakdown_report', 'lastupdated', 'Column loan_pro_chorus_fdw._credit_breakdown_report.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_credit_breakdown_report', 'lastupdated', 'Column loan_pro_chorus_fdw._credit_breakdown_report.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
