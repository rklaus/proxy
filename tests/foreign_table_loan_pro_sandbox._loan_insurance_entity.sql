SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(47);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_loan_insurance_entity',
    'Should have foreign table loan_pro_sandbox._loan_insurance_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_loan_insurance_entity',
    'Table loan_pro_sandbox._loan_insurance_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_loan_insurance_entity'::name, ARRAY[
    'id'::name,
    'company_name'::name,
    'insured'::name,
    'agent_name'::name,
    'policy_number'::name,
    'phone'::name,
    'deductible'::name,
    'start_date'::name,
    'end_date'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'id', 'Column loan_pro_sandbox._loan_insurance_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'id', 'integer', 'Column loan_pro_sandbox._loan_insurance_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'id', 'Column loan_pro_sandbox._loan_insurance_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'id', 'Column loan_pro_sandbox._loan_insurance_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'company_name', 'Column loan_pro_sandbox._loan_insurance_entity.company_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'company_name', 'text', 'Column loan_pro_sandbox._loan_insurance_entity.company_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'company_name', 'Column loan_pro_sandbox._loan_insurance_entity.company_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'company_name', 'Column loan_pro_sandbox._loan_insurance_entity.company_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'insured', 'Column loan_pro_sandbox._loan_insurance_entity.insured should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'insured', 'text', 'Column loan_pro_sandbox._loan_insurance_entity.insured should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'insured', 'Column loan_pro_sandbox._loan_insurance_entity.insured should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'insured', 'Column loan_pro_sandbox._loan_insurance_entity.insured should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'agent_name', 'Column loan_pro_sandbox._loan_insurance_entity.agent_name should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'agent_name', 'text', 'Column loan_pro_sandbox._loan_insurance_entity.agent_name should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'agent_name', 'Column loan_pro_sandbox._loan_insurance_entity.agent_name should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'agent_name', 'Column loan_pro_sandbox._loan_insurance_entity.agent_name should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'policy_number', 'Column loan_pro_sandbox._loan_insurance_entity.policy_number should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'policy_number', 'character(20)', 'Column loan_pro_sandbox._loan_insurance_entity.policy_number should be type character(20)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'policy_number', 'Column loan_pro_sandbox._loan_insurance_entity.policy_number should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'policy_number', 'Column loan_pro_sandbox._loan_insurance_entity.policy_number should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'phone', 'Column loan_pro_sandbox._loan_insurance_entity.phone should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'phone', 'character(15)', 'Column loan_pro_sandbox._loan_insurance_entity.phone should be type character(15)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'phone', 'Column loan_pro_sandbox._loan_insurance_entity.phone should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'phone', 'Column loan_pro_sandbox._loan_insurance_entity.phone should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'deductible', 'Column loan_pro_sandbox._loan_insurance_entity.deductible should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'deductible', 'character(15)', 'Column loan_pro_sandbox._loan_insurance_entity.deductible should be type character(15)');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'deductible', 'Column loan_pro_sandbox._loan_insurance_entity.deductible should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'deductible', 'Column loan_pro_sandbox._loan_insurance_entity.deductible should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'start_date', 'Column loan_pro_sandbox._loan_insurance_entity.start_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'start_date', 'text', 'Column loan_pro_sandbox._loan_insurance_entity.start_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'start_date', 'Column loan_pro_sandbox._loan_insurance_entity.start_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'start_date', 'Column loan_pro_sandbox._loan_insurance_entity.start_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'end_date', 'Column loan_pro_sandbox._loan_insurance_entity.end_date should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'end_date', 'text', 'Column loan_pro_sandbox._loan_insurance_entity.end_date should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'end_date', 'Column loan_pro_sandbox._loan_insurance_entity.end_date should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'end_date', 'Column loan_pro_sandbox._loan_insurance_entity.end_date should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'deleted', 'Column loan_pro_sandbox._loan_insurance_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._loan_insurance_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'deleted', 'Column loan_pro_sandbox._loan_insurance_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'deleted', 'Column loan_pro_sandbox._loan_insurance_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_loan_insurance_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_insurance_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_loan_insurance_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._loan_insurance_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_loan_insurance_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_insurance_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_loan_insurance_entity', 'lastupdated', 'Column loan_pro_sandbox._loan_insurance_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
