SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_mc_processor_extender',
    'Should have foreign table loan_pro_chorus_sandbox._mc_processor_extender'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_mc_processor_extender',
    'Table loan_pro_chorus_sandbox._mc_processor_extender should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_mc_processor_extender'::name, ARRAY[
    'id'::name,
    'mc_id'::name,
    'processor_key'::name,
    'processor_name'::name,
    'bypass'::name,
    'default'::name,
    'auto_reversal'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_mc_processor_extender', 'id', 'Column loan_pro_chorus_sandbox._mc_processor_extender.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'id', 'integer', 'Column loan_pro_chorus_sandbox._mc_processor_extender.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'id', 'Column loan_pro_chorus_sandbox._mc_processor_extender.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mc_processor_extender', 'id', 'Column loan_pro_chorus_sandbox._mc_processor_extender.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mc_processor_extender', 'mc_id', 'Column loan_pro_chorus_sandbox._mc_processor_extender.mc_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'mc_id', 'integer', 'Column loan_pro_chorus_sandbox._mc_processor_extender.mc_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'mc_id', 'Column loan_pro_chorus_sandbox._mc_processor_extender.mc_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mc_processor_extender', 'mc_id', 'Column loan_pro_chorus_sandbox._mc_processor_extender.mc_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mc_processor_extender', 'processor_key', 'Column loan_pro_chorus_sandbox._mc_processor_extender.processor_key should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'processor_key', 'character varying(45)', 'Column loan_pro_chorus_sandbox._mc_processor_extender.processor_key should be type character varying(45)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'processor_key', 'Column loan_pro_chorus_sandbox._mc_processor_extender.processor_key should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mc_processor_extender', 'processor_key', 'Column loan_pro_chorus_sandbox._mc_processor_extender.processor_key should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mc_processor_extender', 'processor_name', 'Column loan_pro_chorus_sandbox._mc_processor_extender.processor_name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'processor_name', 'text', 'Column loan_pro_chorus_sandbox._mc_processor_extender.processor_name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'processor_name', 'Column loan_pro_chorus_sandbox._mc_processor_extender.processor_name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mc_processor_extender', 'processor_name', 'Column loan_pro_chorus_sandbox._mc_processor_extender.processor_name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mc_processor_extender', 'bypass', 'Column loan_pro_chorus_sandbox._mc_processor_extender.bypass should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'bypass', 'integer', 'Column loan_pro_chorus_sandbox._mc_processor_extender.bypass should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'bypass', 'Column loan_pro_chorus_sandbox._mc_processor_extender.bypass should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mc_processor_extender', 'bypass', 'Column loan_pro_chorus_sandbox._mc_processor_extender.bypass should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mc_processor_extender', 'default', 'Column loan_pro_chorus_sandbox._mc_processor_extender."default" should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'default', 'integer', 'Column loan_pro_chorus_sandbox._mc_processor_extender."default" should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'default', 'Column loan_pro_chorus_sandbox._mc_processor_extender."default" should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mc_processor_extender', 'default', 'Column loan_pro_chorus_sandbox._mc_processor_extender."default" should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mc_processor_extender', 'auto_reversal', 'Column loan_pro_chorus_sandbox._mc_processor_extender.auto_reversal should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'auto_reversal', 'integer', 'Column loan_pro_chorus_sandbox._mc_processor_extender.auto_reversal should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'auto_reversal', 'Column loan_pro_chorus_sandbox._mc_processor_extender.auto_reversal should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mc_processor_extender', 'auto_reversal', 'Column loan_pro_chorus_sandbox._mc_processor_extender.auto_reversal should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_mc_processor_extender', 'lastupdated', 'Column loan_pro_chorus_sandbox._mc_processor_extender.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._mc_processor_extender.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_mc_processor_extender', 'lastupdated', 'Column loan_pro_chorus_sandbox._mc_processor_extender.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_mc_processor_extender', 'lastupdated', 'Column loan_pro_chorus_sandbox._mc_processor_extender.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
