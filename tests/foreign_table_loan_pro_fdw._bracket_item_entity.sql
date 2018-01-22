SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_fdw', '_bracket_item_entity',
    'Should have foreign table loan_pro_fdw._bracket_item_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_bracket_item_entity',
    'Table loan_pro_fdw._bracket_item_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_bracket_item_entity'::name, ARRAY[
    'id'::name,
    'bracket_id'::name,
    'bracket_item_begin'::name,
    'bracket_item_end'::name,
    'additional_value'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_bracket_item_entity', 'id', 'Column loan_pro_fdw._bracket_item_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_bracket_item_entity', 'id', 'integer', 'Column loan_pro_fdw._bracket_item_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_bracket_item_entity', 'id', 'Column loan_pro_fdw._bracket_item_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_bracket_item_entity', 'id', 'Column loan_pro_fdw._bracket_item_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_bracket_item_entity', 'bracket_id', 'Column loan_pro_fdw._bracket_item_entity.bracket_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_bracket_item_entity', 'bracket_id', 'character(100)', 'Column loan_pro_fdw._bracket_item_entity.bracket_id should be type character(100)');
SELECT col_is_null(      'loan_pro_fdw', '_bracket_item_entity', 'bracket_id', 'Column loan_pro_fdw._bracket_item_entity.bracket_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_bracket_item_entity', 'bracket_id', 'Column loan_pro_fdw._bracket_item_entity.bracket_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_bracket_item_entity', 'bracket_item_begin', 'Column loan_pro_fdw._bracket_item_entity.bracket_item_begin should exist');
SELECT col_type_is(      'loan_pro_fdw', '_bracket_item_entity', 'bracket_item_begin', 'numeric(11,2)', 'Column loan_pro_fdw._bracket_item_entity.bracket_item_begin should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_bracket_item_entity', 'bracket_item_begin', 'Column loan_pro_fdw._bracket_item_entity.bracket_item_begin should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_bracket_item_entity', 'bracket_item_begin', 'Column loan_pro_fdw._bracket_item_entity.bracket_item_begin should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_bracket_item_entity', 'bracket_item_end', 'Column loan_pro_fdw._bracket_item_entity.bracket_item_end should exist');
SELECT col_type_is(      'loan_pro_fdw', '_bracket_item_entity', 'bracket_item_end', 'numeric(11,2)', 'Column loan_pro_fdw._bracket_item_entity.bracket_item_end should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_bracket_item_entity', 'bracket_item_end', 'Column loan_pro_fdw._bracket_item_entity.bracket_item_end should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_bracket_item_entity', 'bracket_item_end', 'Column loan_pro_fdw._bracket_item_entity.bracket_item_end should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_bracket_item_entity', 'additional_value', 'Column loan_pro_fdw._bracket_item_entity.additional_value should exist');
SELECT col_type_is(      'loan_pro_fdw', '_bracket_item_entity', 'additional_value', 'numeric(11,2)', 'Column loan_pro_fdw._bracket_item_entity.additional_value should be type numeric(11,2)');
SELECT col_is_null(      'loan_pro_fdw', '_bracket_item_entity', 'additional_value', 'Column loan_pro_fdw._bracket_item_entity.additional_value should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_bracket_item_entity', 'additional_value', 'Column loan_pro_fdw._bracket_item_entity.additional_value should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_bracket_item_entity', 'deleted', 'Column loan_pro_fdw._bracket_item_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_bracket_item_entity', 'deleted', 'integer', 'Column loan_pro_fdw._bracket_item_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_bracket_item_entity', 'deleted', 'Column loan_pro_fdw._bracket_item_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_bracket_item_entity', 'deleted', 'Column loan_pro_fdw._bracket_item_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_bracket_item_entity', 'created', 'Column loan_pro_fdw._bracket_item_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_bracket_item_entity', 'created', 'text', 'Column loan_pro_fdw._bracket_item_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_bracket_item_entity', 'created', 'Column loan_pro_fdw._bracket_item_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_bracket_item_entity', 'created', 'Column loan_pro_fdw._bracket_item_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_bracket_item_entity', 'lastupdated', 'Column loan_pro_fdw._bracket_item_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_bracket_item_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._bracket_item_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_bracket_item_entity', 'lastupdated', 'Column loan_pro_fdw._bracket_item_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_bracket_item_entity', 'lastupdated', 'Column loan_pro_fdw._bracket_item_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
