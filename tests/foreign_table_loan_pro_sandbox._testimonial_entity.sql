SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(35);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_testimonial_entity',
    'Should have foreign table loan_pro_sandbox._testimonial_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_testimonial_entity',
    'Table loan_pro_sandbox._testimonial_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_testimonial_entity'::name, ARRAY[
    'id'::name,
    'from'::name,
    'location'::name,
    'testimonial'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_testimonial_entity', 'id', 'Column loan_pro_sandbox._testimonial_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_testimonial_entity', 'id', 'integer', 'Column loan_pro_sandbox._testimonial_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_testimonial_entity', 'id', 'Column loan_pro_sandbox._testimonial_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_testimonial_entity', 'id', 'Column loan_pro_sandbox._testimonial_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_testimonial_entity', 'from', 'Column loan_pro_sandbox._testimonial_entity."from" should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_testimonial_entity', 'from', 'text', 'Column loan_pro_sandbox._testimonial_entity."from" should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_testimonial_entity', 'from', 'Column loan_pro_sandbox._testimonial_entity."from" should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_testimonial_entity', 'from', 'Column loan_pro_sandbox._testimonial_entity."from" should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_testimonial_entity', 'location', 'Column loan_pro_sandbox._testimonial_entity.location should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_testimonial_entity', 'location', 'text', 'Column loan_pro_sandbox._testimonial_entity.location should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_testimonial_entity', 'location', 'Column loan_pro_sandbox._testimonial_entity.location should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_testimonial_entity', 'location', 'Column loan_pro_sandbox._testimonial_entity.location should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_testimonial_entity', 'testimonial', 'Column loan_pro_sandbox._testimonial_entity.testimonial should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_testimonial_entity', 'testimonial', 'text', 'Column loan_pro_sandbox._testimonial_entity.testimonial should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_testimonial_entity', 'testimonial', 'Column loan_pro_sandbox._testimonial_entity.testimonial should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_testimonial_entity', 'testimonial', 'Column loan_pro_sandbox._testimonial_entity.testimonial should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_testimonial_entity', 'created', 'Column loan_pro_sandbox._testimonial_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_testimonial_entity', 'created', 'text', 'Column loan_pro_sandbox._testimonial_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_testimonial_entity', 'created', 'Column loan_pro_sandbox._testimonial_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_testimonial_entity', 'created', 'Column loan_pro_sandbox._testimonial_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_testimonial_entity', 'lastupdated', 'Column loan_pro_sandbox._testimonial_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_testimonial_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._testimonial_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_testimonial_entity', 'lastupdated', 'Column loan_pro_sandbox._testimonial_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_testimonial_entity', 'lastupdated', 'Column loan_pro_sandbox._testimonial_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_testimonial_entity', 'active', 'Column loan_pro_sandbox._testimonial_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_testimonial_entity', 'active', 'integer', 'Column loan_pro_sandbox._testimonial_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_testimonial_entity', 'active', 'Column loan_pro_sandbox._testimonial_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_testimonial_entity', 'active', 'Column loan_pro_sandbox._testimonial_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_testimonial_entity', 'deleted', 'Column loan_pro_sandbox._testimonial_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_testimonial_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._testimonial_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_testimonial_entity', 'deleted', 'Column loan_pro_sandbox._testimonial_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_testimonial_entity', 'deleted', 'Column loan_pro_sandbox._testimonial_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
