SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(43);

SELECT has_foreign_table(
    'loan_pro_fdw', '_tcn_queue_item_entity',
    'Should have foreign table loan_pro_fdw._tcn_queue_item_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_tcn_queue_item_entity',
    'Table loan_pro_fdw._tcn_queue_item_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_tcn_queue_item_entity'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'cust_primary'::name,
    'cust_primary_phone'::name,
    'cust_primary_phone_sec'::name,
    'cust_secondary'::name,
    'cust_secondary_phone'::name,
    'cust_secondary_phone_sec'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'id', 'Column loan_pro_fdw._tcn_queue_item_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'id', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'id', 'Column loan_pro_fdw._tcn_queue_item_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'id', 'Column loan_pro_fdw._tcn_queue_item_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'loan_id', 'Column loan_pro_fdw._tcn_queue_item_entity.loan_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'loan_id', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'loan_id', 'Column loan_pro_fdw._tcn_queue_item_entity.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'loan_id', 'Column loan_pro_fdw._tcn_queue_item_entity.loan_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary_phone', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary_phone should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary_phone', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary_phone should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary_phone', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary_phone', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary_phone should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary_phone_sec', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary_phone_sec should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary_phone_sec', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary_phone_sec should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary_phone_sec', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary_phone_sec should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'cust_primary_phone_sec', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_primary_phone_sec should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary_phone', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary_phone should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary_phone', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary_phone should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary_phone', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary_phone should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary_phone', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary_phone should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary_phone_sec', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary_phone_sec should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary_phone_sec', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary_phone_sec should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary_phone_sec', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary_phone_sec should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'cust_secondary_phone_sec', 'Column loan_pro_fdw._tcn_queue_item_entity.cust_secondary_phone_sec should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'deleted', 'Column loan_pro_fdw._tcn_queue_item_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'deleted', 'integer', 'Column loan_pro_fdw._tcn_queue_item_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'deleted', 'Column loan_pro_fdw._tcn_queue_item_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'deleted', 'Column loan_pro_fdw._tcn_queue_item_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_tcn_queue_item_entity', 'lastupdated', 'Column loan_pro_fdw._tcn_queue_item_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_tcn_queue_item_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._tcn_queue_item_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_tcn_queue_item_entity', 'lastupdated', 'Column loan_pro_fdw._tcn_queue_item_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_tcn_queue_item_entity', 'lastupdated', 'Column loan_pro_fdw._tcn_queue_item_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
