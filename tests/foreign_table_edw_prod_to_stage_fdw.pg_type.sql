SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(123);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'pg_type',
    'Should have foreign table edw_prod_to_stage_fdw.pg_type'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'pg_type',
    'Table edw_prod_to_stage_fdw.pg_type should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'pg_type'::name, ARRAY[
    'oid'::name,
    'typname'::name,
    'typnamespace'::name,
    'typowner'::name,
    'typlen'::name,
    'typbyval'::name,
    'typtype'::name,
    'typcategory'::name,
    'typispreferred'::name,
    'typisdefined'::name,
    'typdelim'::name,
    'typrelid'::name,
    'typelem'::name,
    'typarray'::name,
    'typinput'::name,
    'typoutput'::name,
    'typreceive'::name,
    'typsend'::name,
    'typmodin'::name,
    'typmodout'::name,
    'typanalyze'::name,
    'typalign'::name,
    'typstorage'::name,
    'typnotnull'::name,
    'typbasetype'::name,
    'typtypmod'::name,
    'typndims'::name,
    'typcollation'::name,
    'typdefaultbin'::name,
    'typdefault'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.oid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'oid', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.oid should be type oid');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_type', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.oid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.oid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typname', 'Column edw_prod_to_stage_fdw.pg_type.typname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typname', 'name', 'Column edw_prod_to_stage_fdw.pg_type.typname should be type name');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typname', 'Column edw_prod_to_stage_fdw.pg_type.typname should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typname', 'Column edw_prod_to_stage_fdw.pg_type.typname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typnamespace', 'Column edw_prod_to_stage_fdw.pg_type.typnamespace should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typnamespace', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.typnamespace should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typnamespace', 'Column edw_prod_to_stage_fdw.pg_type.typnamespace should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typnamespace', 'Column edw_prod_to_stage_fdw.pg_type.typnamespace should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typowner', 'Column edw_prod_to_stage_fdw.pg_type.typowner should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typowner', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.typowner should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typowner', 'Column edw_prod_to_stage_fdw.pg_type.typowner should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typowner', 'Column edw_prod_to_stage_fdw.pg_type.typowner should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typlen', 'Column edw_prod_to_stage_fdw.pg_type.typlen should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typlen', 'smallint', 'Column edw_prod_to_stage_fdw.pg_type.typlen should be type smallint');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typlen', 'Column edw_prod_to_stage_fdw.pg_type.typlen should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typlen', 'Column edw_prod_to_stage_fdw.pg_type.typlen should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typbyval', 'Column edw_prod_to_stage_fdw.pg_type.typbyval should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typbyval', 'boolean', 'Column edw_prod_to_stage_fdw.pg_type.typbyval should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typbyval', 'Column edw_prod_to_stage_fdw.pg_type.typbyval should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typbyval', 'Column edw_prod_to_stage_fdw.pg_type.typbyval should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typtype', 'Column edw_prod_to_stage_fdw.pg_type.typtype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typtype', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_type.typtype should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typtype', 'Column edw_prod_to_stage_fdw.pg_type.typtype should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typtype', 'Column edw_prod_to_stage_fdw.pg_type.typtype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typcategory', 'Column edw_prod_to_stage_fdw.pg_type.typcategory should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typcategory', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_type.typcategory should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typcategory', 'Column edw_prod_to_stage_fdw.pg_type.typcategory should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typcategory', 'Column edw_prod_to_stage_fdw.pg_type.typcategory should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typispreferred', 'Column edw_prod_to_stage_fdw.pg_type.typispreferred should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typispreferred', 'boolean', 'Column edw_prod_to_stage_fdw.pg_type.typispreferred should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typispreferred', 'Column edw_prod_to_stage_fdw.pg_type.typispreferred should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typispreferred', 'Column edw_prod_to_stage_fdw.pg_type.typispreferred should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typisdefined', 'Column edw_prod_to_stage_fdw.pg_type.typisdefined should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typisdefined', 'boolean', 'Column edw_prod_to_stage_fdw.pg_type.typisdefined should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typisdefined', 'Column edw_prod_to_stage_fdw.pg_type.typisdefined should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typisdefined', 'Column edw_prod_to_stage_fdw.pg_type.typisdefined should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typdelim', 'Column edw_prod_to_stage_fdw.pg_type.typdelim should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typdelim', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_type.typdelim should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typdelim', 'Column edw_prod_to_stage_fdw.pg_type.typdelim should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typdelim', 'Column edw_prod_to_stage_fdw.pg_type.typdelim should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typrelid', 'Column edw_prod_to_stage_fdw.pg_type.typrelid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typrelid', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.typrelid should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typrelid', 'Column edw_prod_to_stage_fdw.pg_type.typrelid should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typrelid', 'Column edw_prod_to_stage_fdw.pg_type.typrelid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typelem', 'Column edw_prod_to_stage_fdw.pg_type.typelem should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typelem', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.typelem should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typelem', 'Column edw_prod_to_stage_fdw.pg_type.typelem should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typelem', 'Column edw_prod_to_stage_fdw.pg_type.typelem should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typarray', 'Column edw_prod_to_stage_fdw.pg_type.typarray should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typarray', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.typarray should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typarray', 'Column edw_prod_to_stage_fdw.pg_type.typarray should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typarray', 'Column edw_prod_to_stage_fdw.pg_type.typarray should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typinput', 'Column edw_prod_to_stage_fdw.pg_type.typinput should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typinput', 'regproc', 'Column edw_prod_to_stage_fdw.pg_type.typinput should be type regproc');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typinput', 'Column edw_prod_to_stage_fdw.pg_type.typinput should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typinput', 'Column edw_prod_to_stage_fdw.pg_type.typinput should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typoutput', 'Column edw_prod_to_stage_fdw.pg_type.typoutput should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typoutput', 'regproc', 'Column edw_prod_to_stage_fdw.pg_type.typoutput should be type regproc');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typoutput', 'Column edw_prod_to_stage_fdw.pg_type.typoutput should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typoutput', 'Column edw_prod_to_stage_fdw.pg_type.typoutput should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typreceive', 'Column edw_prod_to_stage_fdw.pg_type.typreceive should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typreceive', 'regproc', 'Column edw_prod_to_stage_fdw.pg_type.typreceive should be type regproc');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typreceive', 'Column edw_prod_to_stage_fdw.pg_type.typreceive should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typreceive', 'Column edw_prod_to_stage_fdw.pg_type.typreceive should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typsend', 'Column edw_prod_to_stage_fdw.pg_type.typsend should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typsend', 'regproc', 'Column edw_prod_to_stage_fdw.pg_type.typsend should be type regproc');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typsend', 'Column edw_prod_to_stage_fdw.pg_type.typsend should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typsend', 'Column edw_prod_to_stage_fdw.pg_type.typsend should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typmodin', 'Column edw_prod_to_stage_fdw.pg_type.typmodin should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typmodin', 'regproc', 'Column edw_prod_to_stage_fdw.pg_type.typmodin should be type regproc');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typmodin', 'Column edw_prod_to_stage_fdw.pg_type.typmodin should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typmodin', 'Column edw_prod_to_stage_fdw.pg_type.typmodin should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typmodout', 'Column edw_prod_to_stage_fdw.pg_type.typmodout should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typmodout', 'regproc', 'Column edw_prod_to_stage_fdw.pg_type.typmodout should be type regproc');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typmodout', 'Column edw_prod_to_stage_fdw.pg_type.typmodout should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typmodout', 'Column edw_prod_to_stage_fdw.pg_type.typmodout should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typanalyze', 'Column edw_prod_to_stage_fdw.pg_type.typanalyze should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typanalyze', 'regproc', 'Column edw_prod_to_stage_fdw.pg_type.typanalyze should be type regproc');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typanalyze', 'Column edw_prod_to_stage_fdw.pg_type.typanalyze should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typanalyze', 'Column edw_prod_to_stage_fdw.pg_type.typanalyze should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typalign', 'Column edw_prod_to_stage_fdw.pg_type.typalign should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typalign', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_type.typalign should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typalign', 'Column edw_prod_to_stage_fdw.pg_type.typalign should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typalign', 'Column edw_prod_to_stage_fdw.pg_type.typalign should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typstorage', 'Column edw_prod_to_stage_fdw.pg_type.typstorage should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typstorage', 'character(1)', 'Column edw_prod_to_stage_fdw.pg_type.typstorage should be type character(1)');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typstorage', 'Column edw_prod_to_stage_fdw.pg_type.typstorage should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typstorage', 'Column edw_prod_to_stage_fdw.pg_type.typstorage should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typnotnull', 'Column edw_prod_to_stage_fdw.pg_type.typnotnull should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typnotnull', 'boolean', 'Column edw_prod_to_stage_fdw.pg_type.typnotnull should be type boolean');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typnotnull', 'Column edw_prod_to_stage_fdw.pg_type.typnotnull should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typnotnull', 'Column edw_prod_to_stage_fdw.pg_type.typnotnull should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typbasetype', 'Column edw_prod_to_stage_fdw.pg_type.typbasetype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typbasetype', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.typbasetype should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typbasetype', 'Column edw_prod_to_stage_fdw.pg_type.typbasetype should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typbasetype', 'Column edw_prod_to_stage_fdw.pg_type.typbasetype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typtypmod', 'Column edw_prod_to_stage_fdw.pg_type.typtypmod should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typtypmod', 'integer', 'Column edw_prod_to_stage_fdw.pg_type.typtypmod should be type integer');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typtypmod', 'Column edw_prod_to_stage_fdw.pg_type.typtypmod should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typtypmod', 'Column edw_prod_to_stage_fdw.pg_type.typtypmod should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typndims', 'Column edw_prod_to_stage_fdw.pg_type.typndims should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typndims', 'integer', 'Column edw_prod_to_stage_fdw.pg_type.typndims should be type integer');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typndims', 'Column edw_prod_to_stage_fdw.pg_type.typndims should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typndims', 'Column edw_prod_to_stage_fdw.pg_type.typndims should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typcollation', 'Column edw_prod_to_stage_fdw.pg_type.typcollation should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typcollation', 'oid', 'Column edw_prod_to_stage_fdw.pg_type.typcollation should be type oid');
SELECT col_not_null(     'edw_prod_to_stage_fdw', 'pg_type', 'typcollation', 'Column edw_prod_to_stage_fdw.pg_type.typcollation should be NOT NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typcollation', 'Column edw_prod_to_stage_fdw.pg_type.typcollation should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typdefaultbin', 'Column edw_prod_to_stage_fdw.pg_type.typdefaultbin should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typdefaultbin', 'pg_node_tree', 'Column edw_prod_to_stage_fdw.pg_type.typdefaultbin should be type pg_node_tree');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_type', 'typdefaultbin', 'Column edw_prod_to_stage_fdw.pg_type.typdefaultbin should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typdefaultbin', 'Column edw_prod_to_stage_fdw.pg_type.typdefaultbin should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'pg_type', 'typdefault', 'Column edw_prod_to_stage_fdw.pg_type.typdefault should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'pg_type', 'typdefault', 'text', 'Column edw_prod_to_stage_fdw.pg_type.typdefault should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'pg_type', 'typdefault', 'Column edw_prod_to_stage_fdw.pg_type.typdefault should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'pg_type', 'typdefault', 'Column edw_prod_to_stage_fdw.pg_type.typdefault should not  have a default');

SELECT * FROM finish();
ROLLBACK;
