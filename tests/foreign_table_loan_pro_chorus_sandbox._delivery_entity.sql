SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(79);

SELECT has_foreign_table(
    'loan_pro_chorus_sandbox', '_delivery_entity',
    'Should have foreign table loan_pro_chorus_sandbox._delivery_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_sandbox', '_delivery_entity',
    'Table loan_pro_chorus_sandbox._delivery_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_sandbox'::name, '_delivery_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'description'::name,
    'blurb'::name,
    'short_blurb'::name,
    'type'::name,
    'event'::name,
    'rule'::name,
    'custom_definition'::name,
    'ntf_visible'::name,
    'ntc_visible'::name,
    'email_id'::name,
    'web_id'::name,
    'sms_id'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name,
    'mail_house_id'::name
]);

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'id', 'Column loan_pro_chorus_sandbox._delivery_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'id', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'id', 'Column loan_pro_chorus_sandbox._delivery_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'id', 'Column loan_pro_chorus_sandbox._delivery_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'name', 'Column loan_pro_chorus_sandbox._delivery_entity.name should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'name', 'text', 'Column loan_pro_chorus_sandbox._delivery_entity.name should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'name', 'Column loan_pro_chorus_sandbox._delivery_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'name', 'Column loan_pro_chorus_sandbox._delivery_entity.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'description', 'Column loan_pro_chorus_sandbox._delivery_entity.description should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'description', 'text', 'Column loan_pro_chorus_sandbox._delivery_entity.description should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'description', 'Column loan_pro_chorus_sandbox._delivery_entity.description should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'description', 'Column loan_pro_chorus_sandbox._delivery_entity.description should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'blurb', 'Column loan_pro_chorus_sandbox._delivery_entity.blurb should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'blurb', 'text', 'Column loan_pro_chorus_sandbox._delivery_entity.blurb should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'blurb', 'Column loan_pro_chorus_sandbox._delivery_entity.blurb should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'blurb', 'Column loan_pro_chorus_sandbox._delivery_entity.blurb should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'short_blurb', 'Column loan_pro_chorus_sandbox._delivery_entity.short_blurb should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'short_blurb', 'character varying(100)', 'Column loan_pro_chorus_sandbox._delivery_entity.short_blurb should be type character varying(100)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'short_blurb', 'Column loan_pro_chorus_sandbox._delivery_entity.short_blurb should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'short_blurb', 'Column loan_pro_chorus_sandbox._delivery_entity.short_blurb should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'type', 'Column loan_pro_chorus_sandbox._delivery_entity.type should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'type', 'character(27)', 'Column loan_pro_chorus_sandbox._delivery_entity.type should be type character(27)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'type', 'Column loan_pro_chorus_sandbox._delivery_entity.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'type', 'Column loan_pro_chorus_sandbox._delivery_entity.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'event', 'Column loan_pro_chorus_sandbox._delivery_entity.event should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'event', 'character(50)', 'Column loan_pro_chorus_sandbox._delivery_entity.event should be type character(50)');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'event', 'Column loan_pro_chorus_sandbox._delivery_entity.event should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'event', 'Column loan_pro_chorus_sandbox._delivery_entity.event should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'rule', 'Column loan_pro_chorus_sandbox._delivery_entity.rule should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'rule', 'text', 'Column loan_pro_chorus_sandbox._delivery_entity.rule should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'rule', 'Column loan_pro_chorus_sandbox._delivery_entity.rule should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'rule', 'Column loan_pro_chorus_sandbox._delivery_entity.rule should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'custom_definition', 'Column loan_pro_chorus_sandbox._delivery_entity.custom_definition should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'custom_definition', 'text', 'Column loan_pro_chorus_sandbox._delivery_entity.custom_definition should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'custom_definition', 'Column loan_pro_chorus_sandbox._delivery_entity.custom_definition should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'custom_definition', 'Column loan_pro_chorus_sandbox._delivery_entity.custom_definition should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'ntf_visible', 'Column loan_pro_chorus_sandbox._delivery_entity.ntf_visible should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'ntf_visible', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.ntf_visible should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'ntf_visible', 'Column loan_pro_chorus_sandbox._delivery_entity.ntf_visible should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'ntf_visible', 'Column loan_pro_chorus_sandbox._delivery_entity.ntf_visible should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'ntc_visible', 'Column loan_pro_chorus_sandbox._delivery_entity.ntc_visible should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'ntc_visible', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.ntc_visible should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'ntc_visible', 'Column loan_pro_chorus_sandbox._delivery_entity.ntc_visible should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'ntc_visible', 'Column loan_pro_chorus_sandbox._delivery_entity.ntc_visible should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'email_id', 'Column loan_pro_chorus_sandbox._delivery_entity.email_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'email_id', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.email_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'email_id', 'Column loan_pro_chorus_sandbox._delivery_entity.email_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'email_id', 'Column loan_pro_chorus_sandbox._delivery_entity.email_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'web_id', 'Column loan_pro_chorus_sandbox._delivery_entity.web_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'web_id', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.web_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'web_id', 'Column loan_pro_chorus_sandbox._delivery_entity.web_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'web_id', 'Column loan_pro_chorus_sandbox._delivery_entity.web_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'sms_id', 'Column loan_pro_chorus_sandbox._delivery_entity.sms_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'sms_id', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.sms_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'sms_id', 'Column loan_pro_chorus_sandbox._delivery_entity.sms_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'sms_id', 'Column loan_pro_chorus_sandbox._delivery_entity.sms_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'active', 'Column loan_pro_chorus_sandbox._delivery_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'active', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'active', 'Column loan_pro_chorus_sandbox._delivery_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'active', 'Column loan_pro_chorus_sandbox._delivery_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'deleted', 'Column loan_pro_chorus_sandbox._delivery_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'deleted', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'deleted', 'Column loan_pro_chorus_sandbox._delivery_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'deleted', 'Column loan_pro_chorus_sandbox._delivery_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'created', 'Column loan_pro_chorus_sandbox._delivery_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'created', 'text', 'Column loan_pro_chorus_sandbox._delivery_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'created', 'Column loan_pro_chorus_sandbox._delivery_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'created', 'Column loan_pro_chorus_sandbox._delivery_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._delivery_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_sandbox._delivery_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._delivery_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'lastupdated', 'Column loan_pro_chorus_sandbox._delivery_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_sandbox', '_delivery_entity', 'mail_house_id', 'Column loan_pro_chorus_sandbox._delivery_entity.mail_house_id should exist');
SELECT col_type_is(      'loan_pro_chorus_sandbox', '_delivery_entity', 'mail_house_id', 'integer', 'Column loan_pro_chorus_sandbox._delivery_entity.mail_house_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_sandbox', '_delivery_entity', 'mail_house_id', 'Column loan_pro_chorus_sandbox._delivery_entity.mail_house_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_sandbox', '_delivery_entity', 'mail_house_id', 'Column loan_pro_chorus_sandbox._delivery_entity.mail_house_id should not  have a default');

SELECT * FROM finish();
ROLLBACK;
