SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(23);

SELECT has_foreign_table(
    'loan_pro_fdw', '_iprestriction_entry_entity',
    'Should have foreign table loan_pro_fdw._iprestriction_entry_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_iprestriction_entry_entity',
    'Table loan_pro_fdw._iprestriction_entry_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_iprestriction_entry_entity'::name, ARRAY[
    'id'::name,
    'iprestriction_id'::name,
    'ip'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_iprestriction_entry_entity', 'id', 'Column loan_pro_fdw._iprestriction_entry_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_iprestriction_entry_entity', 'id', 'integer', 'Column loan_pro_fdw._iprestriction_entry_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_iprestriction_entry_entity', 'id', 'Column loan_pro_fdw._iprestriction_entry_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_iprestriction_entry_entity', 'id', 'Column loan_pro_fdw._iprestriction_entry_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_iprestriction_entry_entity', 'iprestriction_id', 'Column loan_pro_fdw._iprestriction_entry_entity.iprestriction_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_iprestriction_entry_entity', 'iprestriction_id', 'integer', 'Column loan_pro_fdw._iprestriction_entry_entity.iprestriction_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_iprestriction_entry_entity', 'iprestriction_id', 'Column loan_pro_fdw._iprestriction_entry_entity.iprestriction_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_iprestriction_entry_entity', 'iprestriction_id', 'Column loan_pro_fdw._iprestriction_entry_entity.iprestriction_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_iprestriction_entry_entity', 'ip', 'Column loan_pro_fdw._iprestriction_entry_entity.ip should exist');
SELECT col_type_is(      'loan_pro_fdw', '_iprestriction_entry_entity', 'ip', 'character varying(20)', 'Column loan_pro_fdw._iprestriction_entry_entity.ip should be type character varying(20)');
SELECT col_is_null(      'loan_pro_fdw', '_iprestriction_entry_entity', 'ip', 'Column loan_pro_fdw._iprestriction_entry_entity.ip should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_iprestriction_entry_entity', 'ip', 'Column loan_pro_fdw._iprestriction_entry_entity.ip should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_iprestriction_entry_entity', 'deleted', 'Column loan_pro_fdw._iprestriction_entry_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_iprestriction_entry_entity', 'deleted', 'bit(1)', 'Column loan_pro_fdw._iprestriction_entry_entity.deleted should be type bit(1)');
SELECT col_is_null(      'loan_pro_fdw', '_iprestriction_entry_entity', 'deleted', 'Column loan_pro_fdw._iprestriction_entry_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_iprestriction_entry_entity', 'deleted', 'Column loan_pro_fdw._iprestriction_entry_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_iprestriction_entry_entity', 'lastupdated', 'Column loan_pro_fdw._iprestriction_entry_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_iprestriction_entry_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._iprestriction_entry_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_iprestriction_entry_entity', 'lastupdated', 'Column loan_pro_fdw._iprestriction_entry_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_iprestriction_entry_entity', 'lastupdated', 'Column loan_pro_fdw._iprestriction_entry_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
