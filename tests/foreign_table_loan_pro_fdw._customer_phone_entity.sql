SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(87);

SELECT has_foreign_table(
    'loan_pro_fdw', '_customer_phone_entity',
    'Should have foreign table loan_pro_fdw._customer_phone_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_customer_phone_entity',
    'Table loan_pro_fdw._customer_phone_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_customer_phone_entity'::name, ARRAY[
    'id'::name,
    'entity_id'::name,
    'entity_type'::name,
    'phone'::name,
    'type'::name,
    'is_primary'::name,
    'is_secondary'::name,
    'sbt_act_verify_pending'::name,
    'sbt_act_verify_pin'::name,
    'sbt_act_verified'::name,
    'sbt_mkt_verify_pending'::name,
    'sbt_mkt_verify_pin'::name,
    'sbt_mkt_verified'::name,
    'carrier_name'::name,
    'carrier_verified'::name,
    'landline'::name,
    'dnd_enabled'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'id', 'Column loan_pro_fdw._customer_phone_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'id', 'integer', 'Column loan_pro_fdw._customer_phone_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'id', 'Column loan_pro_fdw._customer_phone_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'id', 'Column loan_pro_fdw._customer_phone_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'entity_id', 'Column loan_pro_fdw._customer_phone_entity.entity_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'entity_id', 'integer', 'Column loan_pro_fdw._customer_phone_entity.entity_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'entity_id', 'Column loan_pro_fdw._customer_phone_entity.entity_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'entity_id', 'Column loan_pro_fdw._customer_phone_entity.entity_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'entity_type', 'Column loan_pro_fdw._customer_phone_entity.entity_type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'entity_type', 'character(100)', 'Column loan_pro_fdw._customer_phone_entity.entity_type should be type character(100)');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'entity_type', 'Column loan_pro_fdw._customer_phone_entity.entity_type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'entity_type', 'Column loan_pro_fdw._customer_phone_entity.entity_type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'phone', 'Column loan_pro_fdw._customer_phone_entity.phone should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'phone', 'character(20)', 'Column loan_pro_fdw._customer_phone_entity.phone should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'phone', 'Column loan_pro_fdw._customer_phone_entity.phone should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'phone', 'Column loan_pro_fdw._customer_phone_entity.phone should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'type', 'Column loan_pro_fdw._customer_phone_entity.type should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'type', 'character(100)', 'Column loan_pro_fdw._customer_phone_entity.type should be type character(100)');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'type', 'Column loan_pro_fdw._customer_phone_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'type', 'Column loan_pro_fdw._customer_phone_entity.type should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'is_primary', 'Column loan_pro_fdw._customer_phone_entity.is_primary should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'is_primary', 'integer', 'Column loan_pro_fdw._customer_phone_entity.is_primary should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'is_primary', 'Column loan_pro_fdw._customer_phone_entity.is_primary should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'is_primary', 'Column loan_pro_fdw._customer_phone_entity.is_primary should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'is_secondary', 'Column loan_pro_fdw._customer_phone_entity.is_secondary should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'is_secondary', 'integer', 'Column loan_pro_fdw._customer_phone_entity.is_secondary should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'is_secondary', 'Column loan_pro_fdw._customer_phone_entity.is_secondary should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'is_secondary', 'Column loan_pro_fdw._customer_phone_entity.is_secondary should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verify_pending', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verify_pending should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verify_pending', 'integer', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verify_pending should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verify_pending', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verify_pending should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verify_pending', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verify_pending should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verify_pin', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verify_pin should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verify_pin', 'character(20)', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verify_pin should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verify_pin', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verify_pin should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verify_pin', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verify_pin should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verified', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verified should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verified', 'integer', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verified should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verified', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verified should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'sbt_act_verified', 'Column loan_pro_fdw._customer_phone_entity.sbt_act_verified should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verify_pending', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verify_pending should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verify_pending', 'integer', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verify_pending should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verify_pending', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verify_pending should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verify_pending', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verify_pending should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verify_pin', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verify_pin should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verify_pin', 'character(20)', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verify_pin should be type character(20)');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verify_pin', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verify_pin should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verify_pin', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verify_pin should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verified', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verified should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verified', 'integer', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verified should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verified', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verified should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'sbt_mkt_verified', 'Column loan_pro_fdw._customer_phone_entity.sbt_mkt_verified should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'carrier_name', 'Column loan_pro_fdw._customer_phone_entity.carrier_name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'carrier_name', 'text', 'Column loan_pro_fdw._customer_phone_entity.carrier_name should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'carrier_name', 'Column loan_pro_fdw._customer_phone_entity.carrier_name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'carrier_name', 'Column loan_pro_fdw._customer_phone_entity.carrier_name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'carrier_verified', 'Column loan_pro_fdw._customer_phone_entity.carrier_verified should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'carrier_verified', 'integer', 'Column loan_pro_fdw._customer_phone_entity.carrier_verified should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'carrier_verified', 'Column loan_pro_fdw._customer_phone_entity.carrier_verified should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'carrier_verified', 'Column loan_pro_fdw._customer_phone_entity.carrier_verified should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'landline', 'Column loan_pro_fdw._customer_phone_entity.landline should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'landline', 'integer', 'Column loan_pro_fdw._customer_phone_entity.landline should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'landline', 'Column loan_pro_fdw._customer_phone_entity.landline should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'landline', 'Column loan_pro_fdw._customer_phone_entity.landline should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'dnd_enabled', 'Column loan_pro_fdw._customer_phone_entity.dnd_enabled should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'dnd_enabled', 'integer', 'Column loan_pro_fdw._customer_phone_entity.dnd_enabled should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'dnd_enabled', 'Column loan_pro_fdw._customer_phone_entity.dnd_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'dnd_enabled', 'Column loan_pro_fdw._customer_phone_entity.dnd_enabled should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'active', 'Column loan_pro_fdw._customer_phone_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'active', 'integer', 'Column loan_pro_fdw._customer_phone_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'active', 'Column loan_pro_fdw._customer_phone_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'active', 'Column loan_pro_fdw._customer_phone_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'deleted', 'Column loan_pro_fdw._customer_phone_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'deleted', 'integer', 'Column loan_pro_fdw._customer_phone_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'deleted', 'Column loan_pro_fdw._customer_phone_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'deleted', 'Column loan_pro_fdw._customer_phone_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'created', 'Column loan_pro_fdw._customer_phone_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'created', 'text', 'Column loan_pro_fdw._customer_phone_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'created', 'Column loan_pro_fdw._customer_phone_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'created', 'Column loan_pro_fdw._customer_phone_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_customer_phone_entity', 'lastupdated', 'Column loan_pro_fdw._customer_phone_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_customer_phone_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._customer_phone_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_customer_phone_entity', 'lastupdated', 'Column loan_pro_fdw._customer_phone_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_customer_phone_entity', 'lastupdated', 'Column loan_pro_fdw._customer_phone_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
