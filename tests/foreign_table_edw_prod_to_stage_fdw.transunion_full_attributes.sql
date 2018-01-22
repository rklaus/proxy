SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(755);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'transunion_full_attributes',
    'Should have foreign table edw_prod_to_stage_fdw.transunion_full_attributes'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'transunion_full_attributes',
    'Table edw_prod_to_stage_fdw.transunion_full_attributes should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'transunion_full_attributes'::name, ARRAY[
    'campaign'::name,
    'applicant_hash'::name,
    'firstname'::name,
    'middlename'::name,
    'lastname'::name,
    'fullname'::name,
    'housenumber'::name,
    'streetdirection'::name,
    'streetname'::name,
    'streetpostdir'::name,
    'streettype'::name,
    'unittype'::name,
    'unitnumber'::name,
    'city'::name,
    'state'::name,
    'zipcode'::name,
    'zip_plus_4code'::name,
    'soc_security_num'::name,
    'gna001'::name,
    'permid'::name,
    'consumer_id'::name,
    'sequence_number'::name,
    'trv01'::name,
    'cv15'::name,
    'cv16'::name,
    'bc21s'::name,
    'g100s'::name,
    'g230s'::name,
    'of24s'::name,
    's114s'::name,
    'ssub01_score'::name,
    'scrat01'::name,
    'scrat07'::name,
    'scrat09'::name,
    'scrat27'::name,
    'scrat29'::name,
    'scrbr28'::name,
    'scrre03'::name,
    'scrre28'::name,
    'scrfi01'::name,
    'scrmt01'::name,
    'scrbc01'::name,
    'scrbc21'::name,
    'scrg001'::name,
    'scrg024'::name,
    'scrg048'::name,
    'scrg096'::name,
    'scrg098'::name,
    'scrs004'::name,
    'scrs059'::name,
    'rmdspflg'::name,
    'age'::name,
    'infrage'::name,
    'colxmd24'::name,
    'colbalth'::name,
    'trdcl6'::name,
    'fiopenth'::name,
    'firatio'::name,
    'numsattr'::name,
    'revaggcr'::name,
    'bkrnage'::name,
    'bknage'::name,
    'bkopbl12'::name,
    'bktrades'::name,
    'bkagblth'::name,
    'bkagbal'::name,
    'bankmof'::name,
    'hmp4gn6'::name,
    'h2in24af'::name,
    'numinq12'::name,
    'inqnoa'::name,
    'colbl36h'::name,
    'bkavgcl'::name,
    'finscore'::name,
    'br31'::name,
    're30'::name,
    'fi28'::name,
    'fi35'::name,
    'pf28'::name,
    'pf32'::name,
    'bc27'::name,
    'rt25'::name,
    'ds20'::name,
    'fn01'::name,
    'fn20'::name,
    'bk20'::name,
    'bk28'::name,
    'bk33'::name,
    'bk35'::name,
    'cvtg2a_score'::name,
    'sbau2a_score'::name,
    'rtl_trd'::name,
    'trv08'::name,
    'trv10'::name,
    'cv21'::name,
    'at20s'::name,
    'trau_cv'::name,
    'scrg051'::name,
    'trdsat'::name,
    'scrg103'::name,
    'sbaut5_score'::name,
    'cna201_score'::name,
    'eads19_score'::name,
    'eads20_score'::name,
    'eads23_score'::name,
    'sbaut3_score'::name,
    'sbaut6_score'::name,
    'sbaut2_score'::name,
    'etie04_score'::name,
    'die'::name,
    'tie3'::name,
    'agg910'::name,
    'bc107s'::name,
    'g199s'::name,
    'g207s'::name,
    'of09s'::name,
    'of101s'::name,
    'scrs064'::name,
    'autoutil'::name,
    'fi36'::name,
    'scrs115'::name,
    'fiopenmo'::name,
    'bc102s'::name,
    'fi24s'::name,
    'g208s'::name,
    'g212s'::name,
    'g304s'::name,
    're28s'::name,
    'revs903'::name,
    'recnum'::name,
    'variable2036'::name,
    'line'::name,
    'pricetier'::name,
    'selection'::name,
    'source'::name,
    'testgroup'::name,
    'state_code'::name,
    'lasercode'::name,
    'creative'::name,
    'lastmailed'::name,
    'score1'::name,
    'score2'::name,
    'score3'::name,
    'score4'::name,
    'score5'::name,
    'score6'::name,
    'score7'::name,
    'score8'::name,
    'score9'::name,
    'score10'::name,
    'score11'::name,
    'score12'::name,
    'score13'::name,
    'score14'::name,
    'data1'::name,
    'data2'::name,
    'data3'::name,
    'data4'::name,
    'data5'::name,
    'data6'::name,
    'data7'::name,
    'data8'::name,
    'data9'::name,
    'data10'::name,
    'data11'::name,
    'data12'::name,
    'data13'::name,
    'data14'::name,
    'data15'::name,
    'test0'::name,
    'test1'::name,
    'test2'::name,
    'test3'::name,
    'test4'::name,
    'test5'::name,
    'test6'::name,
    'test7'::name,
    'test8'::name,
    'test9'::name,
    'test10'::name,
    'test11'::name,
    'test12'::name,
    'test13'::name,
    'test14'::name,
    'dti1'::name,
    'dti2'::name,
    'dti3'::name,
    'dti4'::name
]);

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'campaign', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.campaign should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'campaign', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.campaign should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'campaign', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.campaign should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'campaign', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.campaign should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'applicant_hash', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.applicant_hash should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'applicant_hash', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.applicant_hash should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'applicant_hash', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.applicant_hash should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'applicant_hash', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.applicant_hash should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'firstname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.firstname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'firstname', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.firstname should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'firstname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.firstname should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'firstname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.firstname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'middlename', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.middlename should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'middlename', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.middlename should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'middlename', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.middlename should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'middlename', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.middlename should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lastname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lastname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lastname', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lastname should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lastname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lastname should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lastname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lastname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fullname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fullname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fullname', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fullname should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fullname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fullname should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fullname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fullname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'housenumber', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.housenumber should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'housenumber', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.housenumber should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'housenumber', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.housenumber should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'housenumber', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.housenumber should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetdirection', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetdirection should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetdirection', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetdirection should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetdirection', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetdirection should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetdirection', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetdirection should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetname should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetname', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetname should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetname should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetname', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetname should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetpostdir', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetpostdir should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetpostdir', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetpostdir should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetpostdir', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetpostdir should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streetpostdir', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streetpostdir should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streettype', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streettype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streettype', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streettype should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streettype', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streettype should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'streettype', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.streettype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'unittype', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.unittype should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'unittype', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.unittype should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'unittype', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.unittype should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'unittype', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.unittype should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'unitnumber', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.unitnumber should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'unitnumber', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.unitnumber should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'unitnumber', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.unitnumber should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'unitnumber', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.unitnumber should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'city', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.city should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'city', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.city should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'city', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.city should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'city', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.city should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'state', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.state should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'state', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.state should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'state', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.state should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'state', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.state should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'zipcode', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.zipcode should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'zipcode', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.zipcode should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'zipcode', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.zipcode should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'zipcode', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.zipcode should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'zip_plus_4code', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.zip_plus_4code should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'zip_plus_4code', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.zip_plus_4code should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'zip_plus_4code', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.zip_plus_4code should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'zip_plus_4code', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.zip_plus_4code should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'soc_security_num', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.soc_security_num should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'soc_security_num', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.soc_security_num should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'soc_security_num', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.soc_security_num should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'soc_security_num', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.soc_security_num should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'gna001', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.gna001 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'gna001', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.gna001 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'gna001', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.gna001 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'gna001', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.gna001 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'permid', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.permid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'permid', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.permid should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'permid', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.permid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'permid', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.permid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'consumer_id', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.consumer_id should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'consumer_id', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.consumer_id should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'consumer_id', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.consumer_id should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'consumer_id', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.consumer_id should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sequence_number', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sequence_number should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sequence_number', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sequence_number should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sequence_number', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sequence_number should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sequence_number', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sequence_number should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv01', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv15', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv15', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv15', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv15', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv16', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv16', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv16', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv16', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc21s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc21s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc21s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc21s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc21s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc21s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc21s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc21s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g100s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g100s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g100s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g100s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g100s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g100s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g100s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g100s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g230s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g230s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g230s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g230s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g230s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g230s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g230s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g230s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of24s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of24s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of24s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of24s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of24s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of24s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of24s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of24s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 's114s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.s114s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 's114s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.s114s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 's114s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.s114s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 's114s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.s114s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'ssub01_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.ssub01_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'ssub01_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.ssub01_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'ssub01_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.ssub01_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'ssub01_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.ssub01_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat01', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat07', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat07', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat07', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat07', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat09', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat09', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat09', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat09', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat27', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat27', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat27', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat27', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat29', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat29', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat29', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrat29', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrat29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbr28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbr28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbr28', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbr28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbr28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbr28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbr28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbr28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrre03', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrre03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrre03', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrre03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrre03', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrre03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrre03', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrre03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrre28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrre28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrre28', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrre28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrre28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrre28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrre28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrre28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrfi01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrfi01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrfi01', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrfi01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrfi01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrfi01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrfi01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrfi01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrmt01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrmt01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrmt01', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrmt01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrmt01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrmt01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrmt01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrmt01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbc01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbc01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbc01', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbc01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbc01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbc01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbc01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbc01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbc21', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbc21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbc21', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbc21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbc21', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbc21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrbc21', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrbc21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg001', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg001 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg001', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg001 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg001', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg001 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg001', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg001 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg024', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg024 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg024', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg024 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg024', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg024 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg024', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg024 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg048', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg048 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg048', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg048 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg048', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg048 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg048', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg048 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg096', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg096 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg096', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg096 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg096', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg096 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg096', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg096 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg098', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg098 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg098', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg098 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg098', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg098 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg098', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg098 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs004', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs004 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs004', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs004 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs004', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs004 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs004', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs004 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs059', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs059 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs059', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs059 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs059', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs059 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs059', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs059 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rmdspflg', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rmdspflg should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rmdspflg', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rmdspflg should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rmdspflg', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rmdspflg should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rmdspflg', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rmdspflg should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'age', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.age should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'age', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.age should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'age', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.age should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'age', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.age should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'infrage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.infrage should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'infrage', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.infrage should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'infrage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.infrage should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'infrage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.infrage should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colxmd24', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colxmd24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colxmd24', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colxmd24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colxmd24', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colxmd24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colxmd24', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colxmd24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colbalth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colbalth should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colbalth', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colbalth should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colbalth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colbalth should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colbalth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colbalth should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trdcl6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trdcl6 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trdcl6', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trdcl6 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trdcl6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trdcl6 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trdcl6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trdcl6 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fiopenth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fiopenth should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fiopenth', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fiopenth should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fiopenth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fiopenth should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fiopenth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fiopenth should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'firatio', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.firatio should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'firatio', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.firatio should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'firatio', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.firatio should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'firatio', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.firatio should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'numsattr', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.numsattr should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'numsattr', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.numsattr should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'numsattr', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.numsattr should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'numsattr', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.numsattr should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'revaggcr', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.revaggcr should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'revaggcr', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.revaggcr should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'revaggcr', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.revaggcr should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'revaggcr', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.revaggcr should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkrnage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkrnage should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkrnage', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkrnage should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkrnage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkrnage should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkrnage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkrnage should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bknage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bknage should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bknage', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bknage should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bknage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bknage should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bknage', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bknage should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkopbl12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkopbl12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkopbl12', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkopbl12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkopbl12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkopbl12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkopbl12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkopbl12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bktrades', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bktrades should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bktrades', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bktrades should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bktrades', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bktrades should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bktrades', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bktrades should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkagblth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkagblth should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkagblth', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkagblth should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkagblth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkagblth should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkagblth', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkagblth should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkagbal', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkagbal should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkagbal', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkagbal should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkagbal', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkagbal should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkagbal', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkagbal should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bankmof', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bankmof should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bankmof', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bankmof should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bankmof', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bankmof should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bankmof', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bankmof should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'hmp4gn6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.hmp4gn6 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'hmp4gn6', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.hmp4gn6 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'hmp4gn6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.hmp4gn6 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'hmp4gn6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.hmp4gn6 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'h2in24af', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.h2in24af should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'h2in24af', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.h2in24af should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'h2in24af', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.h2in24af should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'h2in24af', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.h2in24af should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'numinq12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.numinq12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'numinq12', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.numinq12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'numinq12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.numinq12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'numinq12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.numinq12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'inqnoa', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.inqnoa should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'inqnoa', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.inqnoa should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'inqnoa', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.inqnoa should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'inqnoa', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.inqnoa should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colbl36h', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colbl36h should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colbl36h', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colbl36h should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colbl36h', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colbl36h should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'colbl36h', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.colbl36h should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkavgcl', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkavgcl should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkavgcl', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkavgcl should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkavgcl', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkavgcl should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bkavgcl', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bkavgcl should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'finscore', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.finscore should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'finscore', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.finscore should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'finscore', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.finscore should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'finscore', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.finscore should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'br31', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.br31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'br31', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.br31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'br31', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.br31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'br31', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.br31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 're30', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.re30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 're30', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.re30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 're30', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.re30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 're30', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.re30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi28', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi35', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi35', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi35', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi35', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pf28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pf28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pf28', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pf28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pf28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pf28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pf28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pf28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pf32', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pf32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pf32', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pf32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pf32', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pf32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pf32', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pf32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc27', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc27', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc27', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc27', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rt25', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rt25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rt25', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rt25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rt25', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rt25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rt25', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rt25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'ds20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.ds20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'ds20', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.ds20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'ds20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.ds20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'ds20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.ds20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fn01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fn01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fn01', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fn01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fn01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fn01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fn01', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fn01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fn20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fn20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fn20', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fn20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fn20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fn20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fn20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fn20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk20', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk20', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk28', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk28', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk33', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk33', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk33', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk33', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk35', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk35', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk35', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bk35', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bk35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cvtg2a_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cvtg2a_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cvtg2a_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cvtg2a_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cvtg2a_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cvtg2a_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cvtg2a_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cvtg2a_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbau2a_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbau2a_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbau2a_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbau2a_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbau2a_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbau2a_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbau2a_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbau2a_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rtl_trd', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rtl_trd should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rtl_trd', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rtl_trd should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rtl_trd', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rtl_trd should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'rtl_trd', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.rtl_trd should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv08', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv08', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv08', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv08', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv10', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trv10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trv10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv21', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv21', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv21', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cv21', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cv21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'at20s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.at20s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'at20s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.at20s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'at20s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.at20s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'at20s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.at20s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trau_cv', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trau_cv should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trau_cv', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trau_cv should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trau_cv', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trau_cv should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trau_cv', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trau_cv should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg051', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg051 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg051', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg051 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg051', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg051 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg051', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg051 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trdsat', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trdsat should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trdsat', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trdsat should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trdsat', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trdsat should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'trdsat', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.trdsat should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg103', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg103 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg103', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg103 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg103', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg103 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrg103', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrg103 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut5_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut5_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut5_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut5_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut5_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut5_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut5_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut5_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cna201_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cna201_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cna201_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cna201_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cna201_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cna201_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'cna201_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.cna201_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads19_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads19_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads19_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads19_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads19_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads19_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads19_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads19_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads20_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads20_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads20_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads20_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads20_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads20_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads20_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads20_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads23_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads23_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads23_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads23_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads23_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads23_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'eads23_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.eads23_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut3_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut3_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut3_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut3_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut3_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut3_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut3_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut3_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut6_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut6_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut6_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut6_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut6_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut6_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut6_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut6_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut2_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut2_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut2_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut2_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut2_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut2_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'sbaut2_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.sbaut2_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'etie04_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.etie04_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'etie04_score', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.etie04_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'etie04_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.etie04_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'etie04_score', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.etie04_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'die', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.die should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'die', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.die should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'die', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.die should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'die', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.die should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'tie3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.tie3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'tie3', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.tie3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'tie3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.tie3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'tie3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.tie3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'agg910', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.agg910 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'agg910', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.agg910 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'agg910', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.agg910 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'agg910', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.agg910 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc107s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc107s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc107s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc107s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc107s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc107s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc107s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc107s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g199s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g199s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g199s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g199s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g199s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g199s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g199s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g199s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g207s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g207s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g207s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g207s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g207s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g207s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g207s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g207s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of09s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of09s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of09s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of09s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of09s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of09s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of09s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of09s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of101s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of101s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of101s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of101s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of101s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of101s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'of101s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.of101s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs064', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs064 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs064', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs064 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs064', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs064 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs064', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs064 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'autoutil', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.autoutil should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'autoutil', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.autoutil should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'autoutil', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.autoutil should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'autoutil', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.autoutil should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi36', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi36', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi36', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi36', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs115', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs115 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs115', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs115 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs115', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs115 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'scrs115', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.scrs115 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fiopenmo', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fiopenmo should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fiopenmo', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fiopenmo should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fiopenmo', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fiopenmo should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fiopenmo', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fiopenmo should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc102s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc102s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc102s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc102s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc102s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc102s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'bc102s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.bc102s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi24s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi24s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi24s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi24s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi24s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi24s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'fi24s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.fi24s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g208s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g208s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g208s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g208s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g208s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g208s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g208s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g208s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g212s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g212s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g212s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g212s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g212s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g212s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g212s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g212s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g304s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g304s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g304s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g304s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g304s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g304s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'g304s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.g304s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 're28s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.re28s should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 're28s', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.re28s should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 're28s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.re28s should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 're28s', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.re28s should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'revs903', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.revs903 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'revs903', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.revs903 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'revs903', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.revs903 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'revs903', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.revs903 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'recnum', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.recnum should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'recnum', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.recnum should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'recnum', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.recnum should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'recnum', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.recnum should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'variable2036', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.variable2036 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'variable2036', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.variable2036 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'variable2036', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.variable2036 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'variable2036', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.variable2036 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'line', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.line should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'line', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.line should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'line', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.line should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'line', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.line should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pricetier', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pricetier should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pricetier', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pricetier should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pricetier', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pricetier should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'pricetier', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.pricetier should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'selection', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.selection should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'selection', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.selection should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'selection', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.selection should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'selection', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.selection should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'source', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.source should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'source', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.source should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'source', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.source should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'source', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.source should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'testgroup', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.testgroup should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'testgroup', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.testgroup should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'testgroup', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.testgroup should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'testgroup', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.testgroup should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'state_code', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.state_code should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'state_code', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.state_code should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'state_code', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.state_code should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'state_code', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.state_code should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lasercode', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lasercode should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lasercode', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lasercode should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lasercode', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lasercode should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lasercode', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lasercode should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'creative', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.creative should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'creative', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.creative should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'creative', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.creative should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'creative', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.creative should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lastmailed', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lastmailed should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lastmailed', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lastmailed should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lastmailed', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lastmailed should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'lastmailed', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.lastmailed should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score1 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score1', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score1 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score1 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score1 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score2', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score3', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score4 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score4', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score4 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score4 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score4 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score5 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score5', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score5 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score5 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score5 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score6 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score6', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score6 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score6 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score6 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score7 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score7', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score7 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score7 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score7 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score8 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score8', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score8 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score8 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score8 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score9 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score9', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score9 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score9 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score9 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score10', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score11', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score12', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score13', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score14', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'score14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.score14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data1 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data1', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data1 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data1 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data1 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data2', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data3', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data4 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data4', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data4 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data4 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data4 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data5 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data5', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data5 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data5 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data5 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data6 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data6', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data6 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data6 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data6 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data7 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data7', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data7 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data7 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data7 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data8 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data8', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data8 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data8 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data8 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data9 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data9', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data9 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data9 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data9 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data10', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data11', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data12', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data13', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data14', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data15', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data15', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data15', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'data15', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.data15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test0', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test0 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test0', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test0 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test0', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test0 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test0', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test0 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test1 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test1', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test1 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test1 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test1 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test2', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test3', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test4 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test4', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test4 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test4 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test4 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test5 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test5', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test5 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test5 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test5', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test5 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test6 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test6', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test6 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test6 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test6', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test6 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test7 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test7', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test7 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test7 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test7', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test7 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test8 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test8', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test8 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test8 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test8', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test8 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test9 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test9', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test9 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test9 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test9', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test9 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test10', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test10', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test11', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test11', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test12', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test12', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test13', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test13', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test14', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'test14', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.test14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti1 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti1', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti1 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti1 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti1', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti1 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti2', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti2', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti3', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti3', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti4 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti4', 'text', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti4 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti4 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'transunion_full_attributes', 'dti4', 'Column edw_prod_to_stage_fdw.transunion_full_attributes.dti4 should not  have a default');

SELECT * FROM finish();
ROLLBACK;
