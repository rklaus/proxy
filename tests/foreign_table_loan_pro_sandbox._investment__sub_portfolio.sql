SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_investment__sub_portfolio',
    'Should have foreign table loan_pro_sandbox._investment__sub_portfolio'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_investment__sub_portfolio',
    'Table loan_pro_sandbox._investment__sub_portfolio should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_investment__sub_portfolio'::name, ARRAY[
    'investment_id'::name,
    'sub_portfolio_id'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_investment__sub_portfolio', 'investment_id', 'Column loan_pro_sandbox._investment__sub_portfolio.investment_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__sub_portfolio', 'investment_id', 'integer', 'Column loan_pro_sandbox._investment__sub_portfolio.investment_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__sub_portfolio', 'investment_id', 'Column loan_pro_sandbox._investment__sub_portfolio.investment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__sub_portfolio', 'investment_id', 'Column loan_pro_sandbox._investment__sub_portfolio.investment_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment__sub_portfolio', 'sub_portfolio_id', 'Column loan_pro_sandbox._investment__sub_portfolio.sub_portfolio_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__sub_portfolio', 'sub_portfolio_id', 'integer', 'Column loan_pro_sandbox._investment__sub_portfolio.sub_portfolio_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__sub_portfolio', 'sub_portfolio_id', 'Column loan_pro_sandbox._investment__sub_portfolio.sub_portfolio_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__sub_portfolio', 'sub_portfolio_id', 'Column loan_pro_sandbox._investment__sub_portfolio.sub_portfolio_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment__sub_portfolio', 'created', 'Column loan_pro_sandbox._investment__sub_portfolio.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__sub_portfolio', 'created', 'text', 'Column loan_pro_sandbox._investment__sub_portfolio.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__sub_portfolio', 'created', 'Column loan_pro_sandbox._investment__sub_portfolio.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__sub_portfolio', 'created', 'Column loan_pro_sandbox._investment__sub_portfolio.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment__sub_portfolio', 'lastupdated', 'Column loan_pro_sandbox._investment__sub_portfolio.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__sub_portfolio', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._investment__sub_portfolio.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__sub_portfolio', 'lastupdated', 'Column loan_pro_sandbox._investment__sub_portfolio.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__sub_portfolio', 'lastupdated', 'Column loan_pro_sandbox._investment__sub_portfolio.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment__sub_portfolio', 'deleted', 'Column loan_pro_sandbox._investment__sub_portfolio.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__sub_portfolio', 'deleted', 'integer', 'Column loan_pro_sandbox._investment__sub_portfolio.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__sub_portfolio', 'deleted', 'Column loan_pro_sandbox._investment__sub_portfolio.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__sub_portfolio', 'deleted', 'Column loan_pro_sandbox._investment__sub_portfolio.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
