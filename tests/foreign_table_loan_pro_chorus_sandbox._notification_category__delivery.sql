SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(19);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_notification_category__delivery',
    'Should have foreign table loan_pro_chorus_sandbox._notification_category__delivery'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_notification_category__delivery',
    'Table loan_pro_chorus_sandbox._notification_category__delivery should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_notification_category__delivery'::name, ARRAY[
    'category_id'::name,
    'delivery_id'::name,
    'deleted'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_notification_category__delivery', 'category_id', 'Column loan_pro_chorus_sandbox._notification_category__delivery.category_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_notification_category__delivery', 'category_id', 'integer', 'Column loan_pro_chorus_sandbox._notification_category__delivery.category_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_notification_category__delivery', 'category_id', 'Column loan_pro_chorus_sandbox._notification_category__delivery.category_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_notification_category__delivery', 'category_id', 'Column loan_pro_chorus_sandbox._notification_category__delivery.category_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_notification_category__delivery', 'delivery_id', 'Column loan_pro_chorus_sandbox._notification_category__delivery.delivery_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_notification_category__delivery', 'delivery_id', 'integer', 'Column loan_pro_chorus_sandbox._notification_category__delivery.delivery_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_notification_category__delivery', 'delivery_id', 'Column loan_pro_chorus_sandbox._notification_category__delivery.delivery_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_notification_category__delivery', 'delivery_id', 'Column loan_pro_chorus_sandbox._notification_category__delivery.delivery_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_notification_category__delivery', 'deleted', 'Column loan_pro_chorus_sandbox._notification_category__delivery.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_notification_category__delivery', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._notification_category__delivery.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_notification_category__delivery', 'deleted', 'Column loan_pro_chorus_sandbox._notification_category__delivery.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_notification_category__delivery', 'deleted', 'Column loan_pro_chorus_sandbox._notification_category__delivery.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_notification_category__delivery', 'lastupdated', 'Column loan_pro_chorus_sandbox._notification_category__delivery.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_notification_category__delivery', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._notification_category__delivery.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_notification_category__delivery', 'lastupdated', 'Column loan_pro_chorus_sandbox._notification_category__delivery.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_notification_category__delivery', 'lastupdated', 'Column loan_pro_chorus_sandbox._notification_category__delivery.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
