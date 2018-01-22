SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_investment__portfolio',
    'Should have foreign table loan_pro_sandbox._investment__portfolio'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_investment__portfolio',
    'Table loan_pro_sandbox._investment__portfolio should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_investment__portfolio'::name, ARRAY[
    'investment_id'::name,
    'portfolio_id'::name,
    'created'::name,
    'lastupdated'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_investment__portfolio', 'investment_id', 'Column loan_pro_sandbox._investment__portfolio.investment_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__portfolio', 'investment_id', 'integer', 'Column loan_pro_sandbox._investment__portfolio.investment_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__portfolio', 'investment_id', 'Column loan_pro_sandbox._investment__portfolio.investment_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__portfolio', 'investment_id', 'Column loan_pro_sandbox._investment__portfolio.investment_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment__portfolio', 'portfolio_id', 'Column loan_pro_sandbox._investment__portfolio.portfolio_id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__portfolio', 'portfolio_id', 'integer', 'Column loan_pro_sandbox._investment__portfolio.portfolio_id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__portfolio', 'portfolio_id', 'Column loan_pro_sandbox._investment__portfolio.portfolio_id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__portfolio', 'portfolio_id', 'Column loan_pro_sandbox._investment__portfolio.portfolio_id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment__portfolio', 'created', 'Column loan_pro_sandbox._investment__portfolio.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__portfolio', 'created', 'text', 'Column loan_pro_sandbox._investment__portfolio.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__portfolio', 'created', 'Column loan_pro_sandbox._investment__portfolio.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__portfolio', 'created', 'Column loan_pro_sandbox._investment__portfolio.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment__portfolio', 'lastupdated', 'Column loan_pro_sandbox._investment__portfolio.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__portfolio', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._investment__portfolio.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__portfolio', 'lastupdated', 'Column loan_pro_sandbox._investment__portfolio.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__portfolio', 'lastupdated', 'Column loan_pro_sandbox._investment__portfolio.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_investment__portfolio', 'deleted', 'Column loan_pro_sandbox._investment__portfolio.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_investment__portfolio', 'deleted', 'integer', 'Column loan_pro_sandbox._investment__portfolio.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_investment__portfolio', 'deleted', 'Column loan_pro_sandbox._investment__portfolio.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_investment__portfolio', 'deleted', 'Column loan_pro_sandbox._investment__portfolio.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
