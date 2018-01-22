SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity',
    'Should have foreign table loan_pro_chorus_fdw._tenant_plugins_contract_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity',
    'Table loan_pro_chorus_fdw._tenant_plugins_contract_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_tenant_plugins_contract_entity'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'user_ip'::name,
    'contract_id'::name,
    'type'::name,
    'created'::name,
    'deleted'::name,
    'contract_info'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'user_id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'user_id', 'integer', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'user_id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'user_id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'user_ip', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.user_ip should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'user_ip', 'character(20)', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.user_ip should be type character(20)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'user_ip', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.user_ip should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'user_ip', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.user_ip should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'contract_id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.contract_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'contract_id', 'integer', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.contract_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'contract_id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.contract_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'contract_id', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.contract_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'type', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'type', 'character(50)', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.type should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'type', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'type', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'created', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'created', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'created', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'deleted', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'deleted', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'deleted', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'contract_info', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.contract_info should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'contract_info', 'text', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.contract_info should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'contract_info', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.contract_info should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_plugins_contract_entity', 'contract_info', 'Column loan_pro_chorus_fdw._tenant_plugins_contract_entity.contract_info should not  have a default');

SELECT * FROM finish();
ROLLBACK;
