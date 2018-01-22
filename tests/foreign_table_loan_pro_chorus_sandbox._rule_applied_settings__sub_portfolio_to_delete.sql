SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete',
    'Should have foreign table loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete',
    'Table loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_rule_applied_settings__sub_portfolio_to_delete'::name, ARRAY[
    'rule_id'::name,
    'sub_portfolio_id'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'rule_id', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.rule_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'rule_id', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.rule_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'rule_id', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.rule_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'rule_id', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.rule_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'sub_portfolio_id', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.sub_portfolio_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'sub_portfolio_id', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.sub_portfolio_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'sub_portfolio_id', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.sub_portfolio_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'sub_portfolio_id', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.sub_portfolio_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'created', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'created', 'text', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'created', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'created', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'lastupdated', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'lastupdated', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'lastupdated', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'deleted', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'deleted', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_rule_applied_settings__sub_portfolio_to_delete', 'deleted', 'Column loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
