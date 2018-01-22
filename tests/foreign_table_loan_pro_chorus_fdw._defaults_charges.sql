SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_defaults_charges',
    'Should have foreign table loan_pro_chorus_fdw._defaults_charges'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_defaults_charges',
    'Table loan_pro_chorus_fdw._defaults_charges should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_defaults_charges'::name, ARRAY[
    'id'::name,
    'loan_class'::name,
    'loan_type'::name,
    'type'::name,
    'application_type'::name,
    'interest_bearing'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_charges', 'id', 'Column loan_pro_chorus_fdw._defaults_charges.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_charges', 'id', 'integer', 'Column loan_pro_chorus_fdw._defaults_charges.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_charges', 'id', 'Column loan_pro_chorus_fdw._defaults_charges.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_charges', 'id', 'Column loan_pro_chorus_fdw._defaults_charges.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_charges', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_charges.loan_class should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_charges', 'loan_class', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_charges.loan_class should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_charges', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_charges.loan_class should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_charges', 'loan_class', 'Column loan_pro_chorus_fdw._defaults_charges.loan_class should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_charges', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_charges.loan_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_charges', 'loan_type', 'character(30)', 'Column loan_pro_chorus_fdw._defaults_charges.loan_type should be type character(30)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_charges', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_charges.loan_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_charges', 'loan_type', 'Column loan_pro_chorus_fdw._defaults_charges.loan_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_charges', 'type', 'Column loan_pro_chorus_fdw._defaults_charges.type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_charges', 'type', 'integer', 'Column loan_pro_chorus_fdw._defaults_charges.type should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_charges', 'type', 'Column loan_pro_chorus_fdw._defaults_charges.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_charges', 'type', 'Column loan_pro_chorus_fdw._defaults_charges.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_charges', 'application_type', 'Column loan_pro_chorus_fdw._defaults_charges.application_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_charges', 'application_type', 'character varying(100)', 'Column loan_pro_chorus_fdw._defaults_charges.application_type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_charges', 'application_type', 'Column loan_pro_chorus_fdw._defaults_charges.application_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_charges', 'application_type', 'Column loan_pro_chorus_fdw._defaults_charges.application_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_charges', 'interest_bearing', 'Column loan_pro_chorus_fdw._defaults_charges.interest_bearing should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_charges', 'interest_bearing', 'integer', 'Column loan_pro_chorus_fdw._defaults_charges.interest_bearing should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_charges', 'interest_bearing', 'Column loan_pro_chorus_fdw._defaults_charges.interest_bearing should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_charges', 'interest_bearing', 'Column loan_pro_chorus_fdw._defaults_charges.interest_bearing should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_charges', 'deleted', 'Column loan_pro_chorus_fdw._defaults_charges.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_charges', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._defaults_charges.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_charges', 'deleted', 'Column loan_pro_chorus_fdw._defaults_charges.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_charges', 'deleted', 'Column loan_pro_chorus_fdw._defaults_charges.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_defaults_charges', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_charges.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_defaults_charges', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._defaults_charges.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_defaults_charges', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_charges.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_defaults_charges', 'lastupdated', 'Column loan_pro_chorus_fdw._defaults_charges.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
