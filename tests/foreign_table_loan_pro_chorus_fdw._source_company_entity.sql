SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_source_company_entity',
    'Should have foreign table loan_pro_chorus_fdw._source_company_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_source_company_entity',
    'Table loan_pro_chorus_fdw._source_company_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_source_company_entity'::name, ARRAY[
    'id'::name,
    'company_name'::name,
    'contact_name'::name,
    'contact_phone'::name,
    'contact_email'::name,
    'address_id'::name,
    'checking_account_id'::name,
    'mc_id'::name,
    'num_prefix'::name,
    'num_suffix'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'id', 'Column loan_pro_chorus_fdw._source_company_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._source_company_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'id', 'Column loan_pro_chorus_fdw._source_company_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'id', 'Column loan_pro_chorus_fdw._source_company_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'company_name', 'Column loan_pro_chorus_fdw._source_company_entity.company_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'company_name', 'text', 'Column loan_pro_chorus_fdw._source_company_entity.company_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'company_name', 'Column loan_pro_chorus_fdw._source_company_entity.company_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'company_name', 'Column loan_pro_chorus_fdw._source_company_entity.company_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'contact_name', 'Column loan_pro_chorus_fdw._source_company_entity.contact_name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'contact_name', 'text', 'Column loan_pro_chorus_fdw._source_company_entity.contact_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'contact_name', 'Column loan_pro_chorus_fdw._source_company_entity.contact_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'contact_name', 'Column loan_pro_chorus_fdw._source_company_entity.contact_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'contact_phone', 'Column loan_pro_chorus_fdw._source_company_entity.contact_phone should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'contact_phone', 'character(20)', 'Column loan_pro_chorus_fdw._source_company_entity.contact_phone should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'contact_phone', 'Column loan_pro_chorus_fdw._source_company_entity.contact_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'contact_phone', 'Column loan_pro_chorus_fdw._source_company_entity.contact_phone should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'contact_email', 'Column loan_pro_chorus_fdw._source_company_entity.contact_email should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'contact_email', 'text', 'Column loan_pro_chorus_fdw._source_company_entity.contact_email should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'contact_email', 'Column loan_pro_chorus_fdw._source_company_entity.contact_email should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'contact_email', 'Column loan_pro_chorus_fdw._source_company_entity.contact_email should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'address_id', 'Column loan_pro_chorus_fdw._source_company_entity.address_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'address_id', 'integer', 'Column loan_pro_chorus_fdw._source_company_entity.address_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'address_id', 'Column loan_pro_chorus_fdw._source_company_entity.address_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'address_id', 'Column loan_pro_chorus_fdw._source_company_entity.address_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'checking_account_id', 'Column loan_pro_chorus_fdw._source_company_entity.checking_account_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'checking_account_id', 'integer', 'Column loan_pro_chorus_fdw._source_company_entity.checking_account_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'checking_account_id', 'Column loan_pro_chorus_fdw._source_company_entity.checking_account_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'checking_account_id', 'Column loan_pro_chorus_fdw._source_company_entity.checking_account_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'mc_id', 'Column loan_pro_chorus_fdw._source_company_entity.mc_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'mc_id', 'integer', 'Column loan_pro_chorus_fdw._source_company_entity.mc_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'mc_id', 'Column loan_pro_chorus_fdw._source_company_entity.mc_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'mc_id', 'Column loan_pro_chorus_fdw._source_company_entity.mc_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'num_prefix', 'Column loan_pro_chorus_fdw._source_company_entity.num_prefix should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'num_prefix', 'character varying(20)', 'Column loan_pro_chorus_fdw._source_company_entity.num_prefix should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'num_prefix', 'Column loan_pro_chorus_fdw._source_company_entity.num_prefix should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'num_prefix', 'Column loan_pro_chorus_fdw._source_company_entity.num_prefix should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'num_suffix', 'Column loan_pro_chorus_fdw._source_company_entity.num_suffix should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'num_suffix', 'character varying(20)', 'Column loan_pro_chorus_fdw._source_company_entity.num_suffix should be type character varying(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'num_suffix', 'Column loan_pro_chorus_fdw._source_company_entity.num_suffix should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'num_suffix', 'Column loan_pro_chorus_fdw._source_company_entity.num_suffix should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'created', 'Column loan_pro_chorus_fdw._source_company_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._source_company_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'created', 'Column loan_pro_chorus_fdw._source_company_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'created', 'Column loan_pro_chorus_fdw._source_company_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._source_company_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._source_company_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._source_company_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._source_company_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'active', 'Column loan_pro_chorus_fdw._source_company_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._source_company_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'active', 'Column loan_pro_chorus_fdw._source_company_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'active', 'Column loan_pro_chorus_fdw._source_company_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_source_company_entity', 'deleted', 'Column loan_pro_chorus_fdw._source_company_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_source_company_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._source_company_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_source_company_entity', 'deleted', 'Column loan_pro_chorus_fdw._source_company_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_source_company_entity', 'deleted', 'Column loan_pro_chorus_fdw._source_company_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
