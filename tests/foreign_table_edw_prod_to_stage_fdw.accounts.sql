SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(159);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'accounts',
    'Should have foreign table edw_prod_to_stage_fdw.accounts'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'accounts',
    'Table edw_prod_to_stage_fdw.accounts should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'accounts'::name, ARRAY[
    'id'::name,
    'customeridentifier'::name,
    'amountinput'::name,
    'errormessage'::name,
    'iserror'::name,
    'isstarted'::name,
    'activityenddate'::name,
    'asofdate'::name,
    'routingnumberentered'::name,
    'averagebalancerecent'::name,
    'chartsid'::name,
    'accountnumberentered'::name,
    'notes'::name,
    'isverified'::name,
    'availablebalance'::name,
    'accountname'::name,
    'statustext'::name,
    'nameentered'::name,
    'processedstatus'::name,
    'totaldebits'::name,
    'accountnumberfound'::name,
    'lastrefresherrormessage'::name,
    'emailaddress'::name,
    'iscompleted'::name,
    'accounttype'::name,
    'nameconfidence'::name,
    'status'::name,
    'isachsupported'::name,
    'currentbalance'::name,
    'institutionname'::name,
    'statuscodecolor'::name,
    'isactivityavailable'::name,
    'accountnumberconfidence'::name,
    'totalcredits'::name,
    'namefound'::name,
    'isloginvalid'::name,
    'requestcode'::name,
    'averagebalance'::name,
    'activitystartdate'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'id', 'Column edw_prod_to_stage_fdw.accounts.id should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'id', 'integer', 'Column edw_prod_to_stage_fdw.accounts.id should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'id', 'Column edw_prod_to_stage_fdw.accounts.id should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'id', 'Column edw_prod_to_stage_fdw.accounts.id should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'customeridentifier', 'Column edw_prod_to_stage_fdw.accounts.customeridentifier should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'customeridentifier', 'text', 'Column edw_prod_to_stage_fdw.accounts.customeridentifier should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'customeridentifier', 'Column edw_prod_to_stage_fdw.accounts.customeridentifier should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'customeridentifier', 'Column edw_prod_to_stage_fdw.accounts.customeridentifier should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'amountinput', 'Column edw_prod_to_stage_fdw.accounts.amountinput should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'amountinput', 'numeric', 'Column edw_prod_to_stage_fdw.accounts.amountinput should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'amountinput', 'Column edw_prod_to_stage_fdw.accounts.amountinput should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'amountinput', 'Column edw_prod_to_stage_fdw.accounts.amountinput should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'errormessage', 'Column edw_prod_to_stage_fdw.accounts.errormessage should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'errormessage', 'text', 'Column edw_prod_to_stage_fdw.accounts.errormessage should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'errormessage', 'Column edw_prod_to_stage_fdw.accounts.errormessage should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'errormessage', 'Column edw_prod_to_stage_fdw.accounts.errormessage should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'iserror', 'Column edw_prod_to_stage_fdw.accounts.iserror should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'iserror', 'boolean', 'Column edw_prod_to_stage_fdw.accounts.iserror should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'iserror', 'Column edw_prod_to_stage_fdw.accounts.iserror should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'iserror', 'Column edw_prod_to_stage_fdw.accounts.iserror should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'isstarted', 'Column edw_prod_to_stage_fdw.accounts.isstarted should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'isstarted', 'boolean', 'Column edw_prod_to_stage_fdw.accounts.isstarted should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'isstarted', 'Column edw_prod_to_stage_fdw.accounts.isstarted should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'isstarted', 'Column edw_prod_to_stage_fdw.accounts.isstarted should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'activityenddate', 'Column edw_prod_to_stage_fdw.accounts.activityenddate should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'activityenddate', 'date', 'Column edw_prod_to_stage_fdw.accounts.activityenddate should be type date');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'activityenddate', 'Column edw_prod_to_stage_fdw.accounts.activityenddate should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'activityenddate', 'Column edw_prod_to_stage_fdw.accounts.activityenddate should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'asofdate', 'Column edw_prod_to_stage_fdw.accounts.asofdate should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'asofdate', 'date', 'Column edw_prod_to_stage_fdw.accounts.asofdate should be type date');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'asofdate', 'Column edw_prod_to_stage_fdw.accounts.asofdate should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'asofdate', 'Column edw_prod_to_stage_fdw.accounts.asofdate should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'routingnumberentered', 'Column edw_prod_to_stage_fdw.accounts.routingnumberentered should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'routingnumberentered', 'text', 'Column edw_prod_to_stage_fdw.accounts.routingnumberentered should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'routingnumberentered', 'Column edw_prod_to_stage_fdw.accounts.routingnumberentered should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'routingnumberentered', 'Column edw_prod_to_stage_fdw.accounts.routingnumberentered should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'averagebalancerecent', 'Column edw_prod_to_stage_fdw.accounts.averagebalancerecent should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'averagebalancerecent', 'numeric', 'Column edw_prod_to_stage_fdw.accounts.averagebalancerecent should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'averagebalancerecent', 'Column edw_prod_to_stage_fdw.accounts.averagebalancerecent should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'averagebalancerecent', 'Column edw_prod_to_stage_fdw.accounts.averagebalancerecent should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'chartsid', 'Column edw_prod_to_stage_fdw.accounts.chartsid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'chartsid', 'integer', 'Column edw_prod_to_stage_fdw.accounts.chartsid should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'chartsid', 'Column edw_prod_to_stage_fdw.accounts.chartsid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'chartsid', 'Column edw_prod_to_stage_fdw.accounts.chartsid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'accountnumberentered', 'Column edw_prod_to_stage_fdw.accounts.accountnumberentered should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'accountnumberentered', 'text', 'Column edw_prod_to_stage_fdw.accounts.accountnumberentered should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'accountnumberentered', 'Column edw_prod_to_stage_fdw.accounts.accountnumberentered should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'accountnumberentered', 'Column edw_prod_to_stage_fdw.accounts.accountnumberentered should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'notes', 'Column edw_prod_to_stage_fdw.accounts.notes should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'notes', 'text', 'Column edw_prod_to_stage_fdw.accounts.notes should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'notes', 'Column edw_prod_to_stage_fdw.accounts.notes should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'notes', 'Column edw_prod_to_stage_fdw.accounts.notes should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'isverified', 'Column edw_prod_to_stage_fdw.accounts.isverified should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'isverified', 'boolean', 'Column edw_prod_to_stage_fdw.accounts.isverified should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'isverified', 'Column edw_prod_to_stage_fdw.accounts.isverified should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'isverified', 'Column edw_prod_to_stage_fdw.accounts.isverified should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'availablebalance', 'Column edw_prod_to_stage_fdw.accounts.availablebalance should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'availablebalance', 'numeric', 'Column edw_prod_to_stage_fdw.accounts.availablebalance should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'availablebalance', 'Column edw_prod_to_stage_fdw.accounts.availablebalance should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'availablebalance', 'Column edw_prod_to_stage_fdw.accounts.availablebalance should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'accountname', 'Column edw_prod_to_stage_fdw.accounts.accountname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'accountname', 'text', 'Column edw_prod_to_stage_fdw.accounts.accountname should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'accountname', 'Column edw_prod_to_stage_fdw.accounts.accountname should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'accountname', 'Column edw_prod_to_stage_fdw.accounts.accountname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'statustext', 'Column edw_prod_to_stage_fdw.accounts.statustext should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'statustext', 'text', 'Column edw_prod_to_stage_fdw.accounts.statustext should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'statustext', 'Column edw_prod_to_stage_fdw.accounts.statustext should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'statustext', 'Column edw_prod_to_stage_fdw.accounts.statustext should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'nameentered', 'Column edw_prod_to_stage_fdw.accounts.nameentered should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'nameentered', 'text', 'Column edw_prod_to_stage_fdw.accounts.nameentered should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'nameentered', 'Column edw_prod_to_stage_fdw.accounts.nameentered should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'nameentered', 'Column edw_prod_to_stage_fdw.accounts.nameentered should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'processedstatus', 'Column edw_prod_to_stage_fdw.accounts.processedstatus should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'processedstatus', 'integer', 'Column edw_prod_to_stage_fdw.accounts.processedstatus should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'processedstatus', 'Column edw_prod_to_stage_fdw.accounts.processedstatus should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'processedstatus', 'Column edw_prod_to_stage_fdw.accounts.processedstatus should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'totaldebits', 'Column edw_prod_to_stage_fdw.accounts.totaldebits should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'totaldebits', 'numeric', 'Column edw_prod_to_stage_fdw.accounts.totaldebits should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'totaldebits', 'Column edw_prod_to_stage_fdw.accounts.totaldebits should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'totaldebits', 'Column edw_prod_to_stage_fdw.accounts.totaldebits should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'accountnumberfound', 'Column edw_prod_to_stage_fdw.accounts.accountnumberfound should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'accountnumberfound', 'text', 'Column edw_prod_to_stage_fdw.accounts.accountnumberfound should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'accountnumberfound', 'Column edw_prod_to_stage_fdw.accounts.accountnumberfound should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'accountnumberfound', 'Column edw_prod_to_stage_fdw.accounts.accountnumberfound should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'lastrefresherrormessage', 'Column edw_prod_to_stage_fdw.accounts.lastrefresherrormessage should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'lastrefresherrormessage', 'text', 'Column edw_prod_to_stage_fdw.accounts.lastrefresherrormessage should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'lastrefresherrormessage', 'Column edw_prod_to_stage_fdw.accounts.lastrefresherrormessage should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'lastrefresherrormessage', 'Column edw_prod_to_stage_fdw.accounts.lastrefresherrormessage should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'emailaddress', 'Column edw_prod_to_stage_fdw.accounts.emailaddress should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'emailaddress', 'text', 'Column edw_prod_to_stage_fdw.accounts.emailaddress should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'emailaddress', 'Column edw_prod_to_stage_fdw.accounts.emailaddress should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'emailaddress', 'Column edw_prod_to_stage_fdw.accounts.emailaddress should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'iscompleted', 'Column edw_prod_to_stage_fdw.accounts.iscompleted should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'iscompleted', 'boolean', 'Column edw_prod_to_stage_fdw.accounts.iscompleted should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'iscompleted', 'Column edw_prod_to_stage_fdw.accounts.iscompleted should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'iscompleted', 'Column edw_prod_to_stage_fdw.accounts.iscompleted should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'accounttype', 'Column edw_prod_to_stage_fdw.accounts.accounttype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'accounttype', 'text', 'Column edw_prod_to_stage_fdw.accounts.accounttype should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'accounttype', 'Column edw_prod_to_stage_fdw.accounts.accounttype should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'accounttype', 'Column edw_prod_to_stage_fdw.accounts.accounttype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'nameconfidence', 'Column edw_prod_to_stage_fdw.accounts.nameconfidence should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'nameconfidence', 'integer', 'Column edw_prod_to_stage_fdw.accounts.nameconfidence should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'nameconfidence', 'Column edw_prod_to_stage_fdw.accounts.nameconfidence should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'nameconfidence', 'Column edw_prod_to_stage_fdw.accounts.nameconfidence should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'status', 'Column edw_prod_to_stage_fdw.accounts.status should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'status', 'integer', 'Column edw_prod_to_stage_fdw.accounts.status should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'status', 'Column edw_prod_to_stage_fdw.accounts.status should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'status', 'Column edw_prod_to_stage_fdw.accounts.status should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'isachsupported', 'Column edw_prod_to_stage_fdw.accounts.isachsupported should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'isachsupported', 'boolean', 'Column edw_prod_to_stage_fdw.accounts.isachsupported should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'isachsupported', 'Column edw_prod_to_stage_fdw.accounts.isachsupported should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'isachsupported', 'Column edw_prod_to_stage_fdw.accounts.isachsupported should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'currentbalance', 'Column edw_prod_to_stage_fdw.accounts.currentbalance should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'currentbalance', 'numeric', 'Column edw_prod_to_stage_fdw.accounts.currentbalance should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'currentbalance', 'Column edw_prod_to_stage_fdw.accounts.currentbalance should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'currentbalance', 'Column edw_prod_to_stage_fdw.accounts.currentbalance should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'institutionname', 'Column edw_prod_to_stage_fdw.accounts.institutionname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'institutionname', 'text', 'Column edw_prod_to_stage_fdw.accounts.institutionname should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'institutionname', 'Column edw_prod_to_stage_fdw.accounts.institutionname should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'institutionname', 'Column edw_prod_to_stage_fdw.accounts.institutionname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'statuscodecolor', 'Column edw_prod_to_stage_fdw.accounts.statuscodecolor should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'statuscodecolor', 'text', 'Column edw_prod_to_stage_fdw.accounts.statuscodecolor should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'statuscodecolor', 'Column edw_prod_to_stage_fdw.accounts.statuscodecolor should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'statuscodecolor', 'Column edw_prod_to_stage_fdw.accounts.statuscodecolor should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'isactivityavailable', 'Column edw_prod_to_stage_fdw.accounts.isactivityavailable should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'isactivityavailable', 'boolean', 'Column edw_prod_to_stage_fdw.accounts.isactivityavailable should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'isactivityavailable', 'Column edw_prod_to_stage_fdw.accounts.isactivityavailable should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'isactivityavailable', 'Column edw_prod_to_stage_fdw.accounts.isactivityavailable should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'accountnumberconfidence', 'Column edw_prod_to_stage_fdw.accounts.accountnumberconfidence should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'accountnumberconfidence', 'integer', 'Column edw_prod_to_stage_fdw.accounts.accountnumberconfidence should be type integer');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'accountnumberconfidence', 'Column edw_prod_to_stage_fdw.accounts.accountnumberconfidence should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'accountnumberconfidence', 'Column edw_prod_to_stage_fdw.accounts.accountnumberconfidence should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'totalcredits', 'Column edw_prod_to_stage_fdw.accounts.totalcredits should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'totalcredits', 'numeric', 'Column edw_prod_to_stage_fdw.accounts.totalcredits should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'totalcredits', 'Column edw_prod_to_stage_fdw.accounts.totalcredits should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'totalcredits', 'Column edw_prod_to_stage_fdw.accounts.totalcredits should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'namefound', 'Column edw_prod_to_stage_fdw.accounts.namefound should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'namefound', 'text', 'Column edw_prod_to_stage_fdw.accounts.namefound should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'namefound', 'Column edw_prod_to_stage_fdw.accounts.namefound should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'namefound', 'Column edw_prod_to_stage_fdw.accounts.namefound should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'isloginvalid', 'Column edw_prod_to_stage_fdw.accounts.isloginvalid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'isloginvalid', 'boolean', 'Column edw_prod_to_stage_fdw.accounts.isloginvalid should be type boolean');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'isloginvalid', 'Column edw_prod_to_stage_fdw.accounts.isloginvalid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'isloginvalid', 'Column edw_prod_to_stage_fdw.accounts.isloginvalid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'requestcode', 'Column edw_prod_to_stage_fdw.accounts.requestcode should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'requestcode', 'text', 'Column edw_prod_to_stage_fdw.accounts.requestcode should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'requestcode', 'Column edw_prod_to_stage_fdw.accounts.requestcode should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'requestcode', 'Column edw_prod_to_stage_fdw.accounts.requestcode should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'averagebalance', 'Column edw_prod_to_stage_fdw.accounts.averagebalance should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'averagebalance', 'numeric', 'Column edw_prod_to_stage_fdw.accounts.averagebalance should be type numeric');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'averagebalance', 'Column edw_prod_to_stage_fdw.accounts.averagebalance should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'averagebalance', 'Column edw_prod_to_stage_fdw.accounts.averagebalance should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'accounts', 'activitystartdate', 'Column edw_prod_to_stage_fdw.accounts.activitystartdate should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'accounts', 'activitystartdate', 'date', 'Column edw_prod_to_stage_fdw.accounts.activitystartdate should be type date');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'accounts', 'activitystartdate', 'Column edw_prod_to_stage_fdw.accounts.activitystartdate should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'accounts', 'activitystartdate', 'Column edw_prod_to_stage_fdw.accounts.activitystartdate should not  have a default');

SELECT * FROM finish();
ROLLBACK;
