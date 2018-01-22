SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_fdw', '_web_delivery_entity',
    'Should have foreign table loan_pro_fdw._web_delivery_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_web_delivery_entity',
    'Table loan_pro_fdw._web_delivery_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_web_delivery_entity'::name, ARRAY[
    'id'::name,
    'delivery_id'::name,
    'draft'::name,
    'restriction'::name,
    'restriction_ui'::name,
    'eval_real_time'::name,
    'active'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'id', 'Column loan_pro_fdw._web_delivery_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'id', 'integer', 'Column loan_pro_fdw._web_delivery_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'id', 'Column loan_pro_fdw._web_delivery_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'id', 'Column loan_pro_fdw._web_delivery_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'delivery_id', 'Column loan_pro_fdw._web_delivery_entity.delivery_id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'delivery_id', 'integer', 'Column loan_pro_fdw._web_delivery_entity.delivery_id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'delivery_id', 'Column loan_pro_fdw._web_delivery_entity.delivery_id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'delivery_id', 'Column loan_pro_fdw._web_delivery_entity.delivery_id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'draft', 'Column loan_pro_fdw._web_delivery_entity.draft should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'draft', 'text', 'Column loan_pro_fdw._web_delivery_entity.draft should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'draft', 'Column loan_pro_fdw._web_delivery_entity.draft should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'draft', 'Column loan_pro_fdw._web_delivery_entity.draft should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'restriction', 'Column loan_pro_fdw._web_delivery_entity.restriction should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'restriction', 'text', 'Column loan_pro_fdw._web_delivery_entity.restriction should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'restriction', 'Column loan_pro_fdw._web_delivery_entity.restriction should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'restriction', 'Column loan_pro_fdw._web_delivery_entity.restriction should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'restriction_ui', 'Column loan_pro_fdw._web_delivery_entity.restriction_ui should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'restriction_ui', 'text', 'Column loan_pro_fdw._web_delivery_entity.restriction_ui should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'restriction_ui', 'Column loan_pro_fdw._web_delivery_entity.restriction_ui should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'restriction_ui', 'Column loan_pro_fdw._web_delivery_entity.restriction_ui should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'eval_real_time', 'Column loan_pro_fdw._web_delivery_entity.eval_real_time should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'eval_real_time', 'integer', 'Column loan_pro_fdw._web_delivery_entity.eval_real_time should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'eval_real_time', 'Column loan_pro_fdw._web_delivery_entity.eval_real_time should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'eval_real_time', 'Column loan_pro_fdw._web_delivery_entity.eval_real_time should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'active', 'Column loan_pro_fdw._web_delivery_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'active', 'integer', 'Column loan_pro_fdw._web_delivery_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'active', 'Column loan_pro_fdw._web_delivery_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'active', 'Column loan_pro_fdw._web_delivery_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'deleted', 'Column loan_pro_fdw._web_delivery_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'deleted', 'integer', 'Column loan_pro_fdw._web_delivery_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'deleted', 'Column loan_pro_fdw._web_delivery_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'deleted', 'Column loan_pro_fdw._web_delivery_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_web_delivery_entity', 'lastupdated', 'Column loan_pro_fdw._web_delivery_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_web_delivery_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._web_delivery_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_web_delivery_entity', 'lastupdated', 'Column loan_pro_fdw._web_delivery_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_web_delivery_entity', 'lastupdated', 'Column loan_pro_fdw._web_delivery_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
