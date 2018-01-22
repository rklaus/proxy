SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_tcn_campaign_entity',
    'Should have foreign table loan_pro_chorus_sandbox._tcn_campaign_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_tcn_campaign_entity',
    'Table loan_pro_chorus_sandbox._tcn_campaign_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_tcn_campaign_entity'::name, ARRAY[
    'id'::name,
    'broadcast_id'::name,
    'broadcast_start'::name,
    'lastupdated'::name,
    'broadcast_template'::name,
    'recipients'::name,
    'status'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'id', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'id', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'id', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_id', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_id', 'integer', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_id', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_id', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_start', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_start should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_start', 'text', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_start should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_start', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_start should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_start', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_start should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_template', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_template should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_template', 'integer', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_template should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_template', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_template should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'broadcast_template', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.broadcast_template should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'recipients', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.recipients should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'recipients', 'text', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.recipients should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'recipients', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.recipients should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'recipients', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.recipients should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'status', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.status should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'status', 'integer', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.status should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'status', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'status', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.status should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'deleted', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'deleted', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_tcn_campaign_entity', 'deleted', 'Column loan_pro_chorus_sandbox._tcn_campaign_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
