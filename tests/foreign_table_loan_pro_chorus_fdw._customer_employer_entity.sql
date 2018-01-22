SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_customer_employer_entity',
    'Should have foreign table loan_pro_chorus_fdw._customer_employer_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_customer_employer_entity',
    'Table loan_pro_chorus_fdw._customer_employer_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_customer_employer_entity'::name, ARRAY[
    'id'::name,
    'company_name'::name,
    'title'::name,
    'phone'::name,
    'income'::name,
    'income_frequency'::name,
    'hire_date'::name,
    'pay_date'::name,
    'pay_date_frequency'::name,
    'address_id'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'id', 'Column loan_pro_chorus_fdw._customer_employer_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._customer_employer_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'id', 'Column loan_pro_chorus_fdw._customer_employer_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'id', 'Column loan_pro_chorus_fdw._customer_employer_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'company_name', 'Column loan_pro_chorus_fdw._customer_employer_entity.company_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'company_name', 'text', 'Column loan_pro_chorus_fdw._customer_employer_entity.company_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'company_name', 'Column loan_pro_chorus_fdw._customer_employer_entity.company_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'company_name', 'Column loan_pro_chorus_fdw._customer_employer_entity.company_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'title', 'Column loan_pro_chorus_fdw._customer_employer_entity.title should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'title', 'text', 'Column loan_pro_chorus_fdw._customer_employer_entity.title should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'title', 'Column loan_pro_chorus_fdw._customer_employer_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'title', 'Column loan_pro_chorus_fdw._customer_employer_entity.title should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'phone', 'Column loan_pro_chorus_fdw._customer_employer_entity.phone should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'phone', 'character(20)', 'Column loan_pro_chorus_fdw._customer_employer_entity.phone should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'phone', 'Column loan_pro_chorus_fdw._customer_employer_entity.phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'phone', 'Column loan_pro_chorus_fdw._customer_employer_entity.phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'income', 'Column loan_pro_chorus_fdw._customer_employer_entity.income should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'income', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._customer_employer_entity.income should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'income', 'Column loan_pro_chorus_fdw._customer_employer_entity.income should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'income', 'Column loan_pro_chorus_fdw._customer_employer_entity.income should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'income_frequency', 'Column loan_pro_chorus_fdw._customer_employer_entity.income_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'income_frequency', 'character(100)', 'Column loan_pro_chorus_fdw._customer_employer_entity.income_frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'income_frequency', 'Column loan_pro_chorus_fdw._customer_employer_entity.income_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'income_frequency', 'Column loan_pro_chorus_fdw._customer_employer_entity.income_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'hire_date', 'Column loan_pro_chorus_fdw._customer_employer_entity.hire_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'hire_date', 'text', 'Column loan_pro_chorus_fdw._customer_employer_entity.hire_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'hire_date', 'Column loan_pro_chorus_fdw._customer_employer_entity.hire_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'hire_date', 'Column loan_pro_chorus_fdw._customer_employer_entity.hire_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'pay_date', 'Column loan_pro_chorus_fdw._customer_employer_entity.pay_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'pay_date', 'text', 'Column loan_pro_chorus_fdw._customer_employer_entity.pay_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'pay_date', 'Column loan_pro_chorus_fdw._customer_employer_entity.pay_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'pay_date', 'Column loan_pro_chorus_fdw._customer_employer_entity.pay_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'pay_date_frequency', 'Column loan_pro_chorus_fdw._customer_employer_entity.pay_date_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'pay_date_frequency', 'character(100)', 'Column loan_pro_chorus_fdw._customer_employer_entity.pay_date_frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'pay_date_frequency', 'Column loan_pro_chorus_fdw._customer_employer_entity.pay_date_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'pay_date_frequency', 'Column loan_pro_chorus_fdw._customer_employer_entity.pay_date_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'address_id', 'Column loan_pro_chorus_fdw._customer_employer_entity.address_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'address_id', 'integer', 'Column loan_pro_chorus_fdw._customer_employer_entity.address_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'address_id', 'Column loan_pro_chorus_fdw._customer_employer_entity.address_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'address_id', 'Column loan_pro_chorus_fdw._customer_employer_entity.address_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'created', 'Column loan_pro_chorus_fdw._customer_employer_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._customer_employer_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'created', 'Column loan_pro_chorus_fdw._customer_employer_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'created', 'Column loan_pro_chorus_fdw._customer_employer_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._customer_employer_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._customer_employer_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._customer_employer_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._customer_employer_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'active', 'Column loan_pro_chorus_fdw._customer_employer_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._customer_employer_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'active', 'Column loan_pro_chorus_fdw._customer_employer_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'active', 'Column loan_pro_chorus_fdw._customer_employer_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_customer_employer_entity', 'deleted', 'Column loan_pro_chorus_fdw._customer_employer_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._customer_employer_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_customer_employer_entity', 'deleted', 'Column loan_pro_chorus_fdw._customer_employer_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_customer_employer_entity', 'deleted', 'Column loan_pro_chorus_fdw._customer_employer_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
