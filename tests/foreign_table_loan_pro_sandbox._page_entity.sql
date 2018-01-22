SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(59);

SELECT has_foreign_table(
    'loan_pro_sandbox', '_page_entity',
    'Should have foreign table loan_pro_sandbox._page_entity'
);

SELECT hasnt_pk(
    'loan_pro_sandbox', '_page_entity',
    'Table loan_pro_sandbox._page_entity should have a primary key'
);

SELECT columns_are('loan_pro_sandbox'::name, '_page_entity'::name, ARRAY[
    'id'::name,
    'type'::name,
    'title'::name,
    'content'::name,
    'custom_code'::name,
    'javascript_code'::name,
    'css_code'::name,
    'investor_login'::name,
    'contact_form_status'::name,
    'contact_form_email'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'id', 'Column loan_pro_sandbox._page_entity.id should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'id', 'integer', 'Column loan_pro_sandbox._page_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'id', 'Column loan_pro_sandbox._page_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'id', 'Column loan_pro_sandbox._page_entity.id should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'type', 'Column loan_pro_sandbox._page_entity.type should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'type', 'character varying(100)', 'Column loan_pro_sandbox._page_entity.type should be type character varying(100)');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'type', 'Column loan_pro_sandbox._page_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'type', 'Column loan_pro_sandbox._page_entity.type should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'title', 'Column loan_pro_sandbox._page_entity.title should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'title', 'text', 'Column loan_pro_sandbox._page_entity.title should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'title', 'Column loan_pro_sandbox._page_entity.title should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'title', 'Column loan_pro_sandbox._page_entity.title should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'content', 'Column loan_pro_sandbox._page_entity.content should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'content', 'text', 'Column loan_pro_sandbox._page_entity.content should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'content', 'Column loan_pro_sandbox._page_entity.content should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'content', 'Column loan_pro_sandbox._page_entity.content should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'custom_code', 'Column loan_pro_sandbox._page_entity.custom_code should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'custom_code', 'integer', 'Column loan_pro_sandbox._page_entity.custom_code should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'custom_code', 'Column loan_pro_sandbox._page_entity.custom_code should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'custom_code', 'Column loan_pro_sandbox._page_entity.custom_code should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'javascript_code', 'Column loan_pro_sandbox._page_entity.javascript_code should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'javascript_code', 'text', 'Column loan_pro_sandbox._page_entity.javascript_code should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'javascript_code', 'Column loan_pro_sandbox._page_entity.javascript_code should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'javascript_code', 'Column loan_pro_sandbox._page_entity.javascript_code should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'css_code', 'Column loan_pro_sandbox._page_entity.css_code should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'css_code', 'text', 'Column loan_pro_sandbox._page_entity.css_code should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'css_code', 'Column loan_pro_sandbox._page_entity.css_code should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'css_code', 'Column loan_pro_sandbox._page_entity.css_code should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'investor_login', 'Column loan_pro_sandbox._page_entity.investor_login should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'investor_login', 'integer', 'Column loan_pro_sandbox._page_entity.investor_login should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'investor_login', 'Column loan_pro_sandbox._page_entity.investor_login should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'investor_login', 'Column loan_pro_sandbox._page_entity.investor_login should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'contact_form_status', 'Column loan_pro_sandbox._page_entity.contact_form_status should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'contact_form_status', 'integer', 'Column loan_pro_sandbox._page_entity.contact_form_status should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'contact_form_status', 'Column loan_pro_sandbox._page_entity.contact_form_status should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'contact_form_status', 'Column loan_pro_sandbox._page_entity.contact_form_status should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'contact_form_email', 'Column loan_pro_sandbox._page_entity.contact_form_email should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'contact_form_email', 'text', 'Column loan_pro_sandbox._page_entity.contact_form_email should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'contact_form_email', 'Column loan_pro_sandbox._page_entity.contact_form_email should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'contact_form_email', 'Column loan_pro_sandbox._page_entity.contact_form_email should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'created', 'Column loan_pro_sandbox._page_entity.created should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'created', 'text', 'Column loan_pro_sandbox._page_entity.created should be type text');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'created', 'Column loan_pro_sandbox._page_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'created', 'Column loan_pro_sandbox._page_entity.created should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'lastupdated', 'Column loan_pro_sandbox._page_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_sandbox._page_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'lastupdated', 'Column loan_pro_sandbox._page_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'lastupdated', 'Column loan_pro_sandbox._page_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'active', 'Column loan_pro_sandbox._page_entity.active should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'active', 'integer', 'Column loan_pro_sandbox._page_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'active', 'Column loan_pro_sandbox._page_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'active', 'Column loan_pro_sandbox._page_entity.active should not  have a default');

SELECT has_column(       'loan_pro_sandbox', '_page_entity', 'deleted', 'Column loan_pro_sandbox._page_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_sandbox', '_page_entity', 'deleted', 'integer', 'Column loan_pro_sandbox._page_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_sandbox', '_page_entity', 'deleted', 'Column loan_pro_sandbox._page_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_sandbox', '_page_entity', 'deleted', 'Column loan_pro_sandbox._page_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
