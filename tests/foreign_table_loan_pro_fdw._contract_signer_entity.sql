SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_fdw', '_contract_signer_entity',
    'Should have foreign table loan_pro_fdw._contract_signer_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_contract_signer_entity',
    'Table loan_pro_fdw._contract_signer_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_contract_signer_entity'::name, ARRAY[
    'id'::name,
    'user_id'::name,
    'contract_id'::name,
    'signed'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name,
    'remote_addr'::name
]);

SELECT has_column(       'loan_pro_fdw', '_contract_signer_entity', 'id', 'Column loan_pro_fdw._contract_signer_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_contract_signer_entity', 'id', 'integer', 'Column loan_pro_fdw._contract_signer_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_contract_signer_entity', 'id', 'Column loan_pro_fdw._contract_signer_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_contract_signer_entity', 'id', 'Column loan_pro_fdw._contract_signer_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_contract_signer_entity', 'user_id', 'Column loan_pro_fdw._contract_signer_entity.user_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_contract_signer_entity', 'user_id', 'integer', 'Column loan_pro_fdw._contract_signer_entity.user_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_contract_signer_entity', 'user_id', 'Column loan_pro_fdw._contract_signer_entity.user_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_contract_signer_entity', 'user_id', 'Column loan_pro_fdw._contract_signer_entity.user_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_contract_signer_entity', 'contract_id', 'Column loan_pro_fdw._contract_signer_entity.contract_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_contract_signer_entity', 'contract_id', 'integer', 'Column loan_pro_fdw._contract_signer_entity.contract_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_contract_signer_entity', 'contract_id', 'Column loan_pro_fdw._contract_signer_entity.contract_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_contract_signer_entity', 'contract_id', 'Column loan_pro_fdw._contract_signer_entity.contract_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_contract_signer_entity', 'signed', 'Column loan_pro_fdw._contract_signer_entity.signed should exist');
SELECT col_type_is(      'loan_pro_fdw', '_contract_signer_entity', 'signed', 'integer', 'Column loan_pro_fdw._contract_signer_entity.signed should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_contract_signer_entity', 'signed', 'Column loan_pro_fdw._contract_signer_entity.signed should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_contract_signer_entity', 'signed', 'Column loan_pro_fdw._contract_signer_entity.signed should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_contract_signer_entity', 'deleted', 'Column loan_pro_fdw._contract_signer_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_contract_signer_entity', 'deleted', 'integer', 'Column loan_pro_fdw._contract_signer_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_contract_signer_entity', 'deleted', 'Column loan_pro_fdw._contract_signer_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_contract_signer_entity', 'deleted', 'Column loan_pro_fdw._contract_signer_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_contract_signer_entity', 'created', 'Column loan_pro_fdw._contract_signer_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_contract_signer_entity', 'created', 'text', 'Column loan_pro_fdw._contract_signer_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_contract_signer_entity', 'created', 'Column loan_pro_fdw._contract_signer_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_contract_signer_entity', 'created', 'Column loan_pro_fdw._contract_signer_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_contract_signer_entity', 'lastupdated', 'Column loan_pro_fdw._contract_signer_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_contract_signer_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._contract_signer_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_contract_signer_entity', 'lastupdated', 'Column loan_pro_fdw._contract_signer_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_contract_signer_entity', 'lastupdated', 'Column loan_pro_fdw._contract_signer_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_contract_signer_entity', 'remote_addr', 'Column loan_pro_fdw._contract_signer_entity.remote_addr should exist');
SELECT col_type_is(      'loan_pro_fdw', '_contract_signer_entity', 'remote_addr', 'character(20)', 'Column loan_pro_fdw._contract_signer_entity.remote_addr should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_contract_signer_entity', 'remote_addr', 'Column loan_pro_fdw._contract_signer_entity.remote_addr should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_contract_signer_entity', 'remote_addr', 'Column loan_pro_fdw._contract_signer_entity.remote_addr should not  have a default');

SELECT * FROM finish();
ROLLBACK;
