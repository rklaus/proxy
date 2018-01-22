SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(3487);

SELECT has_foreign_table(
    'edw_prod_to_stage_fdw', 'experian_full_attributes',
    'Should have foreign table edw_prod_to_stage_fdw.experian_full_attributes'
);

SELECT hasnt_pk(
    'edw_prod_to_stage_fdw', 'experian_full_attributes',
    'Table edw_prod_to_stage_fdw.experian_full_attributes should have a primary key'
);

SELECT columns_are('edw_prod_to_stage_fdw'::name, 'experian_full_attributes'::name, ARRAY[
    'campaign'::name,
    'applicant_hash'::name,
    'control_nb'::name,
    'hsn'::name,
    'encrypted_pin'::name,
    'con_last_name'::name,
    'con_first_name'::name,
    'con_mid_init'::name,
    'con_gen_cd'::name,
    'house_nb'::name,
    'predirectn_cd'::name,
    'street_name'::name,
    'street_suffix'::name,
    'pstdirectn_cd'::name,
    'unit_type'::name,
    'unit_id'::name,
    'city_name'::name,
    'state_cd'::name,
    'zip_cd'::name,
    'segment_code'::name,
    'ssn7l'::name,
    'vantage_v3_score'::name,
    'income_insight_w2'::name,
    'smartv40_aal01'::name,
    'smartv40_aal02'::name,
    'smartv40_aal03'::name,
    'smartv40_aal04'::name,
    'smartv40_aal05'::name,
    'smartv40_aal06'::name,
    'smartv40_aal07'::name,
    'smartv40_aal08'::name,
    'smartv40_aal09'::name,
    'smartv40_aal10'::name,
    'smartv40_aal11'::name,
    'smartv40_aal12'::name,
    'smartv40_aal13'::name,
    'smartv40_aal14'::name,
    'smartv40_aal15'::name,
    'smartv40_aal16'::name,
    'smartv40_aal17'::name,
    'smartv40_aal18'::name,
    'smartv40_aal19'::name,
    'smartv40_aal20'::name,
    'smartv40_aal21'::name,
    'smartv40_aal22'::name,
    'smartv40_aal23'::name,
    'smartv40_aal24'::name,
    'smartv40_aal25'::name,
    'smartv40_aal26'::name,
    'smartv40_aal27'::name,
    'smartv40_aal28'::name,
    'smartv40_aal29'::name,
    'smartv40_aal30'::name,
    'smartv40_aal31'::name,
    'smartv40_aal32'::name,
    'smartv40_aal33'::name,
    'smartv40_aal34'::name,
    'smartv40_aal37'::name,
    'smartv40_aal38'::name,
    'smartv40_aal39'::name,
    'smartv40_aal40'::name,
    'smartv40_aal41'::name,
    'smartv40_aal42'::name,
    'smartv40_aal43'::name,
    'smartv40_aal44'::name,
    'smartv40_aal45'::name,
    'smartv40_aal46'::name,
    'smartv40_aal47'::name,
    'smartv40_aal48'::name,
    'smartv40_aal49'::name,
    'smartv40_aal50'::name,
    'smartv40_aal51'::name,
    'smartv40_aal52'::name,
    'smartv40_aal53'::name,
    'smartv40_aal54'::name,
    'smartv40_aal55'::name,
    'smartv40_aal59'::name,
    'smartv40_aal60'::name,
    'smartv40_aal61'::name,
    'smartv40_aal62'::name,
    'smartv40_aal63'::name,
    'smartv40_aal64'::name,
    'smartv40_aal65'::name,
    'smartv40_aal66'::name,
    'smartv40_aal67'::name,
    'smartv40_aal68'::name,
    'smartv40_aal69'::name,
    'smartv40_aal70'::name,
    'smartv40_aau01'::name,
    'smartv40_aau02'::name,
    'smartv40_aau03'::name,
    'smartv40_aau04'::name,
    'smartv40_aau05'::name,
    'smartv40_aau06'::name,
    'smartv40_aau07'::name,
    'smartv40_aau08'::name,
    'smartv40_aau09'::name,
    'smartv40_aau10'::name,
    'smartv40_aau11'::name,
    'smartv40_aau12'::name,
    'smartv40_aau13'::name,
    'smartv40_aau14'::name,
    'smartv40_aau15'::name,
    'smartv40_aau16'::name,
    'smartv40_aau17'::name,
    'smartv40_aau18'::name,
    'smartv40_aau19'::name,
    'smartv40_aau20'::name,
    'smartv40_aau21'::name,
    'smartv40_aau22'::name,
    'smartv40_abk01'::name,
    'smartv40_abk02'::name,
    'smartv40_abk03'::name,
    'smartv40_abk04'::name,
    'smartv40_abk05'::name,
    'smartv40_abk06'::name,
    'smartv40_abk07'::name,
    'smartv40_abk08'::name,
    'smartv40_abk09'::name,
    'smartv40_abk10'::name,
    'smartv40_abk11'::name,
    'smartv40_abk12'::name,
    'smartv40_abk13'::name,
    'smartv40_abk14'::name,
    'smartv40_abk15'::name,
    'smartv40_abk16'::name,
    'smartv40_abk17'::name,
    'smartv40_abk18'::name,
    'smartv40_abk19'::name,
    'smartv40_abk20'::name,
    'smartv40_abk21'::name,
    'smartv40_abk22'::name,
    'smartv40_abk23'::name,
    'smartv40_abk24'::name,
    'smartv40_abk25'::name,
    'smartv40_abk26'::name,
    'smartv40_abk27'::name,
    'smartv40_abk28'::name,
    'smartv40_abk29'::name,
    'smartv40_abk30'::name,
    'smartv40_abk31'::name,
    'smartv40_abk32'::name,
    'smartv40_abk33'::name,
    'smartv40_abk34'::name,
    'smartv40_abk35'::name,
    'smartv40_abk36'::name,
    'smartv40_abk37'::name,
    'smartv40_abk38'::name,
    'smartv40_abk39'::name,
    'smartv40_abk40'::name,
    'smartv40_abk41'::name,
    'smartv40_abl01'::name,
    'smartv40_abl02'::name,
    'smartv40_abl03'::name,
    'smartv40_abl04'::name,
    'smartv40_abt01'::name,
    'smartv40_abt02'::name,
    'smartv40_abt03'::name,
    'smartv40_abt04'::name,
    'smartv40_abt05'::name,
    'smartv40_abt06'::name,
    'smartv40_abt07'::name,
    'smartv40_abt08'::name,
    'smartv40_abt09'::name,
    'smartv40_abt10'::name,
    'smartv40_abt11'::name,
    'smartv40_abt12'::name,
    'smartv40_acd01'::name,
    'smartv40_acd02'::name,
    'smartv40_acd03'::name,
    'smartv40_acd04'::name,
    'smartv40_acd05'::name,
    'smartv40_acd06'::name,
    'smartv40_acd07'::name,
    'smartv40_acd08'::name,
    'smartv40_acd09'::name,
    'smartv40_acd10'::name,
    'smartv40_acd11'::name,
    'smartv40_acd12'::name,
    'smartv40_acd13'::name,
    'smartv40_acd14'::name,
    'smartv40_ace01'::name,
    'smartv40_ace02'::name,
    'smartv40_ace03'::name,
    'smartv40_ace04'::name,
    'smartv40_ace05'::name,
    'smartv40_ace06'::name,
    'smartv40_ace07'::name,
    'smartv40_ace08'::name,
    'smartv40_ace09'::name,
    'smartv40_ace10'::name,
    'smartv40_ace11'::name,
    'smartv40_ace12'::name,
    'smartv40_ace13'::name,
    'smartv40_ace14'::name,
    'smartv40_ace15'::name,
    'smartv40_ace16'::name,
    'smartv40_ace17'::name,
    'smartv40_ace18'::name,
    'smartv40_ace19'::name,
    'smartv40_ace20'::name,
    'smartv40_ace21'::name,
    'smartv40_ace22'::name,
    'smartv40_ace23'::name,
    'smartv40_ace24'::name,
    'smartv40_ace25'::name,
    'smartv40_acl01'::name,
    'smartv40_acl02'::name,
    'smartv40_acl03'::name,
    'smartv40_acl04'::name,
    'smartv40_acl05'::name,
    'smartv40_acl06'::name,
    'smartv40_acl07'::name,
    'smartv40_acl08'::name,
    'smartv40_acl09'::name,
    'smartv40_acl10'::name,
    'smartv40_acl11'::name,
    'smartv40_acl12'::name,
    'smartv40_acl13'::name,
    'smartv40_acl14'::name,
    'smartv40_acl15'::name,
    'smartv40_acl16'::name,
    'smartv40_acl17'::name,
    'smartv40_acl18'::name,
    'smartv40_acl19'::name,
    'smartv40_acl20'::name,
    'smartv40_acl21'::name,
    'smartv40_acl22'::name,
    'smartv40_acl23'::name,
    'smartv40_adi01'::name,
    'smartv40_adi02'::name,
    'smartv40_adi03'::name,
    'smartv40_adi04'::name,
    'smartv40_adi05'::name,
    'smartv40_adi06'::name,
    'smartv40_adi07'::name,
    'smartv40_adi08'::name,
    'smartv40_adi09'::name,
    'smartv40_adi10'::name,
    'smartv40_adi11'::name,
    'smartv40_adi12'::name,
    'smartv40_adi13'::name,
    'smartv40_adi14'::name,
    'smartv40_adi15'::name,
    'smartv40_adi16'::name,
    'smartv40_adi17'::name,
    'smartv40_adi18'::name,
    'smartv40_adi19'::name,
    'smartv40_adi20'::name,
    'smartv40_adi21'::name,
    'smartv40_adi22'::name,
    'smartv40_adi23'::name,
    'smartv40_adi24'::name,
    'smartv40_adi25'::name,
    'smartv40_adi26'::name,
    'smartv40_adi27'::name,
    'smartv40_adi28'::name,
    'smartv40_adi29'::name,
    'smartv40_adi30'::name,
    'smartv40_adi31'::name,
    'smartv40_adi32'::name,
    'smartv40_adi33'::name,
    'smartv40_adi34'::name,
    'smartv40_adi35'::name,
    'smartv40_adi36'::name,
    'smartv40_adi37'::name,
    'smartv40_adi38'::name,
    'smartv40_adi39'::name,
    'smartv40_adi40'::name,
    'smartv40_adi41'::name,
    'smartv40_adi42'::name,
    'smartv40_adi43'::name,
    'smartv40_adi44'::name,
    'smartv40_adi45'::name,
    'smartv40_adi46'::name,
    'smartv40_aeq01'::name,
    'smartv40_aeq02'::name,
    'smartv40_aeq03'::name,
    'smartv40_aeq04'::name,
    'smartv40_aeq05'::name,
    'smartv40_aeq06'::name,
    'smartv40_aeq07'::name,
    'smartv40_aeq08'::name,
    'smartv40_aeq09'::name,
    'smartv40_aeq10'::name,
    'smartv40_aeq11'::name,
    'smartv40_aeq12'::name,
    'smartv40_aeq13'::name,
    'smartv40_aeq14'::name,
    'smartv40_aeq15'::name,
    'smartv40_aeq16'::name,
    'smartv40_aeq17'::name,
    'smartv40_aeq18'::name,
    'smartv40_aeq19'::name,
    'smartv40_aeq20'::name,
    'smartv40_aeq21'::name,
    'smartv40_aeq22'::name,
    'smartv40_aeq23'::name,
    'smartv40_ahd01'::name,
    'smartv40_ahd02'::name,
    'smartv40_ahd03'::name,
    'smartv40_ahd04'::name,
    'smartv40_ahd05'::name,
    'smartv40_ahd06'::name,
    'smartv40_ahd07'::name,
    'smartv40_ahd08'::name,
    'smartv40_ahd09'::name,
    'smartv40_ahd10'::name,
    'smartv40_ahd11'::name,
    'smartv40_ahd12'::name,
    'smartv40_ahd13'::name,
    'smartv40_ahd14'::name,
    'smartv40_ahd15'::name,
    'smartv40_ahd16'::name,
    'smartv40_ahd17'::name,
    'smartv40_ahd18'::name,
    'smartv40_ahd19'::name,
    'smartv40_ahd20'::name,
    'smartv40_ahd21'::name,
    'smartv40_ahd22'::name,
    'smartv40_ahd23'::name,
    'smartv40_ahd24'::name,
    'smartv40_ahd25'::name,
    'smartv40_ahd26'::name,
    'smartv40_ahd27'::name,
    'smartv40_ahd28'::name,
    'smartv40_ahd29'::name,
    'smartv40_ahd30'::name,
    'smartv40_ahd31'::name,
    'smartv40_ahd32'::name,
    'smartv40_ahd33'::name,
    'smartv40_ahd34'::name,
    'smartv40_ahd35'::name,
    'smartv40_ahd36'::name,
    'smartv40_ahi01'::name,
    'smartv40_ahi02'::name,
    'smartv40_ahi03'::name,
    'smartv40_ahi04'::name,
    'smartv40_ahi05'::name,
    'smartv40_ahi06'::name,
    'smartv40_ahi07'::name,
    'smartv40_ahi08'::name,
    'smartv40_ahi09'::name,
    'smartv40_ahi10'::name,
    'smartv40_ahi11'::name,
    'smartv40_ahi12'::name,
    'smartv40_ahi13'::name,
    'smartv40_ahi14'::name,
    'smartv40_ahi15'::name,
    'smartv40_ahi16'::name,
    'smartv40_ahi17'::name,
    'smartv40_ahi18'::name,
    'smartv40_ahi19'::name,
    'smartv40_ahi20'::name,
    'smartv40_ahi21'::name,
    'smartv40_ahi22'::name,
    'smartv40_ahi23'::name,
    'smartv40_ahi24'::name,
    'smartv40_ahi25'::name,
    'smartv40_ahi26'::name,
    'smartv40_ahi27'::name,
    'smartv40_ahi28'::name,
    'smartv40_ahi29'::name,
    'smartv40_ahi30'::name,
    'smartv40_ahi31'::name,
    'smartv40_ahi32'::name,
    'smartv40_ahi33'::name,
    'smartv40_ahi34'::name,
    'smartv40_ahi35'::name,
    'smartv40_ahi36'::name,
    'smartv40_ahi37'::name,
    'smartv40_ahi39'::name,
    'smartv40_ahi40'::name,
    'smartv40_ahi44'::name,
    'smartv40_ahi45'::name,
    'smartv40_ahi46'::name,
    'smartv40_ahi47'::name,
    'smartv40_ahi48'::name,
    'smartv40_ahi49'::name,
    'smartv40_ahi50'::name,
    'smartv40_ahi51'::name,
    'smartv40_ahi52'::name,
    'smartv40_ahi53'::name,
    'smartv40_ahi54'::name,
    'smartv40_ahi55'::name,
    'smartv40_ahi56'::name,
    'smartv40_ahi57'::name,
    'smartv40_ahi58'::name,
    'smartv40_ahi59'::name,
    'smartv40_ahi60'::name,
    'smartv40_ahi61'::name,
    'smartv40_ahi62'::name,
    'smartv40_ahi63'::name,
    'smartv40_ahi64'::name,
    'smartv40_ahi65'::name,
    'smartv40_ahi66'::name,
    'smartv40_ahi67'::name,
    'smartv40_ahi68'::name,
    'smartv40_ahi69'::name,
    'smartv40_ahi70'::name,
    'smartv40_ahi71'::name,
    'smartv40_ahi72'::name,
    'smartv40_ahi73'::name,
    'smartv40_ahi74'::name,
    'smartv40_ahi75'::name,
    'smartv40_ahi76'::name,
    'smartv40_ahi77'::name,
    'smartv40_ahi78'::name,
    'smartv40_ahi79'::name,
    'smartv40_ahi80'::name,
    'smartv40_ahi81'::name,
    'smartv40_ahi82'::name,
    'smartv40_ahi83'::name,
    'smartv40_ahi84'::name,
    'smartv40_ahi85'::name,
    'smartv40_ahi86'::name,
    'smartv40_ahi87'::name,
    'smartv40_ahi88'::name,
    'smartv40_ahi89'::name,
    'smartv40_ahi90'::name,
    'smartv40_ahi91'::name,
    'smartv40_ahi92'::name,
    'smartv40_ahi93'::name,
    'smartv40_ain01'::name,
    'smartv40_ain02'::name,
    'smartv40_ain03'::name,
    'smartv40_ain04'::name,
    'smartv40_ain05'::name,
    'smartv40_ain06'::name,
    'smartv40_ain07'::name,
    'smartv40_ain08'::name,
    'smartv40_ain09'::name,
    'smartv40_ain10'::name,
    'smartv40_ain11'::name,
    'smartv40_ain12'::name,
    'smartv40_ain13'::name,
    'smartv40_ain14'::name,
    'smartv40_ain15'::name,
    'smartv40_ain16'::name,
    'smartv40_ain17'::name,
    'smartv40_ain18'::name,
    'smartv40_ain19'::name,
    'smartv40_ain20'::name,
    'smartv40_ain21'::name,
    'smartv40_ain22'::name,
    'smartv40_ain23'::name,
    'smartv40_ain24'::name,
    'smartv40_ain25'::name,
    'smartv40_ain26'::name,
    'smartv40_ain27'::name,
    'smartv40_ain28'::name,
    'smartv40_ain29'::name,
    'smartv40_ain30'::name,
    'smartv40_ain31'::name,
    'smartv40_ain32'::name,
    'smartv40_ain33'::name,
    'smartv40_ain34'::name,
    'smartv40_aiq01'::name,
    'smartv40_aiq02'::name,
    'smartv40_aiq03'::name,
    'smartv40_aiq04'::name,
    'smartv40_aiq05'::name,
    'smartv40_aiq07'::name,
    'smartv40_aiq08'::name,
    'smartv40_aiq09'::name,
    'smartv40_aiq10'::name,
    'smartv40_aiq11'::name,
    'smartv40_ale01'::name,
    'smartv40_ale02'::name,
    'smartv40_ale03'::name,
    'smartv40_ale04'::name,
    'smartv40_ale05'::name,
    'smartv40_ale06'::name,
    'smartv40_ale07'::name,
    'smartv40_ale08'::name,
    'smartv40_ale09'::name,
    'smartv40_ale10'::name,
    'smartv40_ale11'::name,
    'smartv40_ale12'::name,
    'smartv40_ale13'::name,
    'smartv40_ale14'::name,
    'smartv40_ale15'::name,
    'smartv40_ale16'::name,
    'smartv40_ale17'::name,
    'smartv40_ale18'::name,
    'smartv40_ale19'::name,
    'smartv40_ale20'::name,
    'smartv40_ale21'::name,
    'smartv40_aln01'::name,
    'smartv40_aln02'::name,
    'smartv40_aln03'::name,
    'smartv40_aln04'::name,
    'smartv40_aln05'::name,
    'smartv40_aln06'::name,
    'smartv40_aln07'::name,
    'smartv40_aln08'::name,
    'smartv40_aln09'::name,
    'smartv40_aln10'::name,
    'smartv40_aln11'::name,
    'smartv40_aln12'::name,
    'smartv40_aln13'::name,
    'smartv40_aln14'::name,
    'smartv40_aln15'::name,
    'smartv40_aln16'::name,
    'smartv40_amg01'::name,
    'smartv40_amg02'::name,
    'smartv40_amg03'::name,
    'smartv40_amg04'::name,
    'smartv40_amg05'::name,
    'smartv40_amg06'::name,
    'smartv40_amg07'::name,
    'smartv40_amg08'::name,
    'smartv40_amg09'::name,
    'smartv40_amg10'::name,
    'smartv40_amg11'::name,
    'smartv40_amg12'::name,
    'smartv40_amg13'::name,
    'smartv40_amg14'::name,
    'smartv40_amg15'::name,
    'smartv40_amg16'::name,
    'smartv40_amg17'::name,
    'smartv40_amg18'::name,
    'smartv40_amg19'::name,
    'smartv40_amg20'::name,
    'smartv40_amg21'::name,
    'smartv40_amg22'::name,
    'smartv40_amg23'::name,
    'smartv40_amg24'::name,
    'smartv40_amg25'::name,
    'smartv40_amg26'::name,
    'smartv40_amg27'::name,
    'smartv40_amg28'::name,
    'smartv40_amg29'::name,
    'smartv40_amg30'::name,
    'smartv40_amg31'::name,
    'smartv40_amg32'::name,
    'smartv40_amg33'::name,
    'smartv40_amg34'::name,
    'smartv40_amg35'::name,
    'smartv40_amg36'::name,
    'smartv40_amg37'::name,
    'smartv40_amg38'::name,
    'smartv40_amg39'::name,
    'smartv40_amg40'::name,
    'smartv40_amg41'::name,
    'smartv40_amg42'::name,
    'smartv40_amg43'::name,
    'smartv40_amg44'::name,
    'smartv40_amg45'::name,
    'smartv40_amg46'::name,
    'smartv40_amg47'::name,
    'smartv40_amh01'::name,
    'smartv40_anr01'::name,
    'smartv40_anr02'::name,
    'smartv40_anr03'::name,
    'smartv40_anr04'::name,
    'smartv40_anr05'::name,
    'smartv40_anr06'::name,
    'smartv40_anr07'::name,
    'smartv40_anr08'::name,
    'smartv40_anr09'::name,
    'smartv40_anr10'::name,
    'smartv40_anr11'::name,
    'smartv40_anr12'::name,
    'smartv40_anr13'::name,
    'smartv40_anr14'::name,
    'smartv40_anr15'::name,
    'smartv40_anr16'::name,
    'smartv40_apr01'::name,
    'smartv40_apr02'::name,
    'smartv40_apr03'::name,
    'smartv40_apr04'::name,
    'smartv40_apr05'::name,
    'smartv40_apr06'::name,
    'smartv40_apr07'::name,
    'smartv40_apr08'::name,
    'smartv40_apr09'::name,
    'smartv40_apr10'::name,
    'smartv40_apr11'::name,
    'smartv40_apr12'::name,
    'smartv40_apr13'::name,
    'smartv40_apr14'::name,
    'smartv40_apr15'::name,
    'smartv40_apr16'::name,
    'smartv40_apr17'::name,
    'smartv40_apr18'::name,
    'smartv40_apr19'::name,
    'smartv40_apr20'::name,
    'smartv40_apr21'::name,
    'smartv40_apr22'::name,
    'smartv40_apr23'::name,
    'smartv40_apr24'::name,
    'smartv40_apr25'::name,
    'smartv40_apr26'::name,
    'smartv40_apr28'::name,
    'smartv40_apr29'::name,
    'smartv40_apr30'::name,
    'smartv40_apr31'::name,
    'smartv40_apr32'::name,
    'smartv40_apr33'::name,
    'smartv40_apr34'::name,
    'smartv40_apr35'::name,
    'smartv40_apr36'::name,
    'smartv40_apr37'::name,
    'smartv40_apr38'::name,
    'smartv40_apr39'::name,
    'smartv40_apr41'::name,
    'smartv40_apr43'::name,
    'smartv40_apr44'::name,
    'smartv40_apr45'::name,
    'smartv40_apr46'::name,
    'smartv40_apr47'::name,
    'smartv40_apr48'::name,
    'smartv40_apr49'::name,
    'smartv40_apr50'::name,
    'smartv40_apr51'::name,
    'smartv40_apr52'::name,
    'smartv40_apr53'::name,
    'smartv40_apr54'::name,
    'smartv40_apr55'::name,
    'smartv40_arm01'::name,
    'smartv40_arm02'::name,
    'smartv40_arm03'::name,
    'smartv40_arm04'::name,
    'smartv40_art01'::name,
    'smartv40_art02'::name,
    'smartv40_art03'::name,
    'smartv40_art04'::name,
    'smartv40_art05'::name,
    'smartv40_art06'::name,
    'smartv40_art07'::name,
    'smartv40_art08'::name,
    'smartv40_art09'::name,
    'smartv40_art10'::name,
    'smartv40_art11'::name,
    'smartv40_art12'::name,
    'smartv40_art13'::name,
    'smartv40_art14'::name,
    'smartv40_art15'::name,
    'smartv40_art16'::name,
    'smartv40_art17'::name,
    'smartv40_art18'::name,
    'smartv40_art19'::name,
    'smartv40_art20'::name,
    'smartv40_art21'::name,
    'smartv40_art22'::name,
    'smartv40_art23'::name,
    'smartv40_art24'::name,
    'smartv40_art25'::name,
    'smartv40_art26'::name,
    'smartv40_art27'::name,
    'smartv40_art28'::name,
    'smartv40_art29'::name,
    'smartv40_art30'::name,
    'smartv40_art31'::name,
    'smartv40_art32'::name,
    'smartv40_art33'::name,
    'smartv40_art34'::name,
    'smartv40_arv01'::name,
    'smartv40_arv02'::name,
    'smartv40_arv03'::name,
    'smartv40_arv04'::name,
    'smartv40_arv05'::name,
    'smartv40_arv06'::name,
    'smartv40_arv07'::name,
    'smartv40_arv08'::name,
    'smartv40_arv09'::name,
    'smartv40_arv10'::name,
    'smartv40_arv11'::name,
    'smartv40_arv12'::name,
    'smartv40_arv13'::name,
    'smartv40_arv14'::name,
    'smartv40_arv15'::name,
    'smartv40_arv16'::name,
    'smartv40_arv17'::name,
    'smartv40_arv18'::name,
    'smartv40_arv19'::name,
    'smartv40_arv20'::name,
    'smartv40_arv21'::name,
    'smartv40_arv22'::name,
    'smartv40_arv23'::name,
    'smartv40_arv24'::name,
    'smartv40_arv25'::name,
    'smartv40_arv26'::name,
    'smartv40_arv27'::name,
    'smartv40_arv28'::name,
    'smartv40_arv29'::name,
    'smartv40_arv30'::name,
    'smartv40_arv31'::name,
    'smartv40_arv32'::name,
    'smartv40_arv33'::name,
    'smartv40_arv34'::name,
    'smartv40_arv35'::name,
    'smartv40_arv36'::name,
    'smartv40_arv37'::name,
    'smartv40_arv38'::name,
    'smartv40_arv39'::name,
    'smartv40_arv40'::name,
    'smartv40_arv41'::name,
    'smartv40_asl01'::name,
    'smartv40_asl02'::name,
    'smartv40_asl03'::name,
    'smartv40_asl04'::name,
    'smartv40_asl05'::name,
    'smartv40_asl06'::name,
    'smartv40_asl07'::name,
    'smartv40_asl08'::name,
    'smartv40_asl09'::name,
    'smartv40_asl10'::name,
    'smartv40_asl11'::name,
    'smartv40_asl12'::name,
    'smartv40_asl13'::name,
    'smartv40_asl14'::name,
    'smartv40_asl15'::name,
    'smartv40_asl16'::name,
    'smartv40_asl17'::name,
    'smartv40_asl18'::name,
    'smartv40_asl19'::name,
    'smartv40_asl20'::name,
    'smartv40_asl21'::name,
    'smartv40_asl22'::name,
    'smartv40_asl23'::name,
    'smartv40_asl24'::name,
    'smartv40_asl25'::name,
    'smartv40_asl26'::name,
    'smartv40_asl27'::name,
    'smartv40_asl28'::name,
    'smartv40_asl29'::name,
    'smartv40_asl30'::name,
    'smartv40_asl31'::name,
    'smartv40_asl32'::name,
    'smartv40_asl33'::name,
    'smartv40_asl34'::name,
    'smartv40_asl35'::name,
    'smartv40_asl36'::name,
    'smartv40_asl37'::name,
    'smartv40_cau01'::name,
    'smartv40_cau04'::name,
    'smartv40_cau05'::name,
    'smartv40_cbk01'::name,
    'smartv40_cbk04'::name,
    'smartv40_cbk07'::name,
    'smartv40_cbk08'::name,
    'smartv40_cbl01'::name,
    'smartv40_cbl06'::name,
    'smartv40_ccu01'::name,
    'smartv40_ceq01'::name,
    'smartv40_ceq04'::name,
    'smartv40_cin01'::name,
    'smartv40_cin04'::name,
    'smartv40_cle01'::name,
    'smartv40_cle05'::name,
    'smartv40_cmg01'::name,
    'smartv40_cmg04'::name,
    'smartv40_cmg05'::name,
    'smartv40_crm01'::name,
    'smartv40_crn01'::name,
    'smartv40_crt01'::name,
    'smartv40_crt06'::name,
    'smartv40_csl01'::name,
    'smartv40_ddt01'::name,
    'smartv40_ddt02'::name,
    'smartv40_ddt03'::name,
    'smartv40_ddt04'::name,
    'smartv40_ddt05'::name,
    'smartv40_ddt06'::name,
    'smartv40_ddt07'::name,
    'smartv40_ddt08'::name,
    'smartv40_ddt09'::name,
    'smartv40_ddt10'::name,
    'smartv40_ddt11'::name,
    'smartv40_ddt12'::name,
    'smartv40_ddt13'::name,
    'smartv40_ddt14'::name,
    'smartv40_ddt15'::name,
    'smartv40_ddt16'::name,
    'smartv40_ddt17'::name,
    'smartv40_ddt18'::name,
    'smartv40_mdt01'::name,
    'smartv40_mdt02'::name,
    'smartv40_mdt03'::name,
    'smartv40_mdt04'::name,
    'smartv40_mdt05'::name,
    'smartv40_mdt06'::name,
    'smartv40_mdt07'::name,
    'smartv40_mdt08'::name,
    'smartv40_mdt09'::name,
    'smartv40_mdt10'::name,
    'smartv40_tal01'::name,
    'smartv40_tal02'::name,
    'smartv40_tal03'::name,
    'smartv40_tal04'::name,
    'smartv40_tal05'::name,
    'smartv40_tal06'::name,
    'smartv40_tdg01'::name,
    'smartv40_tdg03'::name,
    'smartv40_tdg04'::name,
    'smartv40_tdg05'::name,
    'smartv40_tdg06'::name,
    'smartv40_tdg07'::name,
    'smartv40_tdg08'::name,
    'smartv40_tdg09'::name,
    'smartv40_tiq01'::name,
    'smartv40_tiq02'::name,
    'dem02'::name,
    'xfc01'::name,
    'xfc02'::name,
    'xfc03'::name,
    'xfc04'::name,
    'xfc05'::name,
    'xfc06'::name,
    'xfc07'::name,
    'record_nb'::name,
    'scrambled_permid'::name,
    'line'::name,
    'price_tier'::name,
    'selection'::name,
    'source'::name,
    'test_group'::name,
    'state_code'::name,
    'lasercode'::name,
    'creative'::name,
    'last_mailed'::name,
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

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'campaign', 'Column edw_prod_to_stage_fdw.experian_full_attributes.campaign should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'campaign', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.campaign should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'campaign', 'Column edw_prod_to_stage_fdw.experian_full_attributes.campaign should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'campaign', 'Column edw_prod_to_stage_fdw.experian_full_attributes.campaign should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'applicant_hash', 'Column edw_prod_to_stage_fdw.experian_full_attributes.applicant_hash should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'applicant_hash', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.applicant_hash should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'applicant_hash', 'Column edw_prod_to_stage_fdw.experian_full_attributes.applicant_hash should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'applicant_hash', 'Column edw_prod_to_stage_fdw.experian_full_attributes.applicant_hash should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'control_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.control_nb should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'control_nb', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.control_nb should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'control_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.control_nb should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'control_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.control_nb should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'hsn', 'Column edw_prod_to_stage_fdw.experian_full_attributes.hsn should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'hsn', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.hsn should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'hsn', 'Column edw_prod_to_stage_fdw.experian_full_attributes.hsn should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'hsn', 'Column edw_prod_to_stage_fdw.experian_full_attributes.hsn should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'encrypted_pin', 'Column edw_prod_to_stage_fdw.experian_full_attributes.encrypted_pin should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'encrypted_pin', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.encrypted_pin should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'encrypted_pin', 'Column edw_prod_to_stage_fdw.experian_full_attributes.encrypted_pin should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'encrypted_pin', 'Column edw_prod_to_stage_fdw.experian_full_attributes.encrypted_pin should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_last_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_last_name should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_last_name', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_last_name should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_last_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_last_name should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_last_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_last_name should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_first_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_first_name should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_first_name', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_first_name should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_first_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_first_name should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_first_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_first_name should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_mid_init', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_mid_init should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_mid_init', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_mid_init should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_mid_init', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_mid_init should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_mid_init', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_mid_init should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_gen_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_gen_cd should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_gen_cd', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_gen_cd should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_gen_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_gen_cd should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'con_gen_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.con_gen_cd should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'house_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.house_nb should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'house_nb', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.house_nb should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'house_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.house_nb should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'house_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.house_nb should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'predirectn_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.predirectn_cd should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'predirectn_cd', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.predirectn_cd should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'predirectn_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.predirectn_cd should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'predirectn_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.predirectn_cd should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'street_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.street_name should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'street_name', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.street_name should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'street_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.street_name should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'street_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.street_name should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'street_suffix', 'Column edw_prod_to_stage_fdw.experian_full_attributes.street_suffix should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'street_suffix', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.street_suffix should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'street_suffix', 'Column edw_prod_to_stage_fdw.experian_full_attributes.street_suffix should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'street_suffix', 'Column edw_prod_to_stage_fdw.experian_full_attributes.street_suffix should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'pstdirectn_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.pstdirectn_cd should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'pstdirectn_cd', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.pstdirectn_cd should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'pstdirectn_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.pstdirectn_cd should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'pstdirectn_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.pstdirectn_cd should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'unit_type', 'Column edw_prod_to_stage_fdw.experian_full_attributes.unit_type should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'unit_type', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.unit_type should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'unit_type', 'Column edw_prod_to_stage_fdw.experian_full_attributes.unit_type should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'unit_type', 'Column edw_prod_to_stage_fdw.experian_full_attributes.unit_type should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'unit_id', 'Column edw_prod_to_stage_fdw.experian_full_attributes.unit_id should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'unit_id', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.unit_id should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'unit_id', 'Column edw_prod_to_stage_fdw.experian_full_attributes.unit_id should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'unit_id', 'Column edw_prod_to_stage_fdw.experian_full_attributes.unit_id should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'city_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.city_name should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'city_name', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.city_name should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'city_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.city_name should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'city_name', 'Column edw_prod_to_stage_fdw.experian_full_attributes.city_name should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'state_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.state_cd should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'state_cd', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.state_cd should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'state_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.state_cd should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'state_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.state_cd should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'zip_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.zip_cd should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'zip_cd', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.zip_cd should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'zip_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.zip_cd should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'zip_cd', 'Column edw_prod_to_stage_fdw.experian_full_attributes.zip_cd should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'segment_code', 'Column edw_prod_to_stage_fdw.experian_full_attributes.segment_code should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'segment_code', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.segment_code should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'segment_code', 'Column edw_prod_to_stage_fdw.experian_full_attributes.segment_code should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'segment_code', 'Column edw_prod_to_stage_fdw.experian_full_attributes.segment_code should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'ssn7l', 'Column edw_prod_to_stage_fdw.experian_full_attributes.ssn7l should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'ssn7l', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.ssn7l should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'ssn7l', 'Column edw_prod_to_stage_fdw.experian_full_attributes.ssn7l should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'ssn7l', 'Column edw_prod_to_stage_fdw.experian_full_attributes.ssn7l should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'vantage_v3_score', 'Column edw_prod_to_stage_fdw.experian_full_attributes.vantage_v3_score should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'vantage_v3_score', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.vantage_v3_score should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'vantage_v3_score', 'Column edw_prod_to_stage_fdw.experian_full_attributes.vantage_v3_score should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'vantage_v3_score', 'Column edw_prod_to_stage_fdw.experian_full_attributes.vantage_v3_score should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'income_insight_w2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.income_insight_w2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'income_insight_w2', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.income_insight_w2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'income_insight_w2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.income_insight_w2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'income_insight_w2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.income_insight_w2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal37 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal37', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal37 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal37 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal37 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal38 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal38', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal38 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal38 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal38 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal39 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal39', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal39 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal39 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal39 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal40 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal40', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal40 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal40 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal40 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal41 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal41', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal41 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal41 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal41 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal42 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal42', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal42 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal42 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal42 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal43 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal43', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal43 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal43 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal43 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal44 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal44', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal44 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal44 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal44 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal45 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal45', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal45 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal45 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal45 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal46 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal46', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal46 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal46 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal46 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal47 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal47', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal47 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal47 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal47 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal48 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal48', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal48 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal48 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal48 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal49 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal49', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal49 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal49 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal49 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal50 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal50', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal50 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal50 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal50 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal51 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal51', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal51 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal51 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal51 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal52 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal52', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal52 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal52 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal52 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal53 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal53', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal53 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal53 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal53 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal54 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal54', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal54 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal54 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal54 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal55 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal55', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal55 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal55 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal55 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal59', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal59 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal59', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal59 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal59', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal59 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal59', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal59 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal60', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal60 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal60', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal60 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal60', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal60 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal60', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal60 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal61', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal61 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal61', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal61 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal61', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal61 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal61', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal61 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal62', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal62 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal62', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal62 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal62', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal62 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal62', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal62 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal63', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal63 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal63', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal63 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal63', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal63 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal63', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal63 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal64', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal64 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal64', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal64 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal64', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal64 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal64', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal64 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal65', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal65 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal65', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal65 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal65', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal65 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal65', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal65 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal66', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal66 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal66', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal66 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal66', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal66 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal66', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal66 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal67', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal67 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal67', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal67 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal67', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal67 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal67', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal67 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal68', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal68 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal68', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal68 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal68', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal68 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal68', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal68 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal69', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal69 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal69', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal69 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal69', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal69 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal69', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal69 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal70', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal70 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal70', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal70 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal70', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal70 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aal70', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aal70 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aau22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aau22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk35', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk36', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk37 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk37', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk37 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk37 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk37 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk38 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk38', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk38 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk38 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk38 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk39 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk39', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk39 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk39 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk39 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk40 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk40', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk40 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk40 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk40 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk41 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk41', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk41 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk41 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abk41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abk41 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abl04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_abt12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_abt12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acd14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acd14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ace25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ace25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_acl23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_acl23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi35', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi36', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi37 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi37', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi37 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi37 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi37 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi38 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi38', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi38 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi38 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi38 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi39 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi39', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi39 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi39 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi39 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi40 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi40', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi40 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi40 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi40 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi41 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi41', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi41 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi41 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi41 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi42 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi42', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi42 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi42 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi42 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi43 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi43', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi43 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi43 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi43 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi44 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi44', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi44 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi44 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi44 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi45 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi45', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi45 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi45 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi45 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi46 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi46', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi46 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi46 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_adi46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_adi46 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aeq23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aeq23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd35', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd36', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahd36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahd36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi35', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi36', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi37 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi37', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi37 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi37 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi37 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi39 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi39', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi39 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi39 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi39 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi40 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi40', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi40 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi40 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi40 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi44 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi44', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi44 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi44 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi44 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi45 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi45', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi45 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi45 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi45 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi46 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi46', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi46 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi46 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi46 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi47 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi47', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi47 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi47 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi47 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi48 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi48', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi48 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi48 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi48 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi49 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi49', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi49 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi49 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi49 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi50 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi50', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi50 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi50 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi50 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi51 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi51', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi51 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi51 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi51 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi52 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi52', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi52 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi52 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi52 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi53 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi53', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi53 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi53 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi53 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi54 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi54', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi54 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi54 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi54 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi55 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi55', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi55 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi55 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi55 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi56', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi56 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi56', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi56 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi56', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi56 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi56', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi56 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi57', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi57 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi57', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi57 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi57', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi57 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi57', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi57 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi58', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi58 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi58', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi58 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi58', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi58 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi58', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi58 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi59', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi59 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi59', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi59 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi59', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi59 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi59', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi59 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi60', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi60 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi60', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi60 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi60', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi60 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi60', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi60 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi61', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi61 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi61', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi61 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi61', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi61 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi61', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi61 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi62', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi62 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi62', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi62 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi62', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi62 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi62', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi62 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi63', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi63 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi63', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi63 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi63', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi63 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi63', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi63 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi64', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi64 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi64', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi64 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi64', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi64 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi64', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi64 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi65', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi65 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi65', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi65 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi65', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi65 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi65', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi65 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi66', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi66 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi66', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi66 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi66', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi66 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi66', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi66 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi67', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi67 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi67', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi67 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi67', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi67 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi67', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi67 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi68', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi68 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi68', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi68 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi68', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi68 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi68', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi68 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi69', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi69 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi69', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi69 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi69', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi69 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi69', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi69 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi70', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi70 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi70', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi70 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi70', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi70 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi70', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi70 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi71', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi71 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi71', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi71 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi71', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi71 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi71', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi71 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi72', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi72 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi72', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi72 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi72', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi72 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi72', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi72 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi73', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi73 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi73', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi73 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi73', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi73 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi73', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi73 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi74', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi74 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi74', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi74 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi74', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi74 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi74', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi74 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi75', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi75 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi75', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi75 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi75', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi75 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi75', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi75 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi76', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi76 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi76', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi76 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi76', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi76 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi76', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi76 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi77', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi77 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi77', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi77 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi77', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi77 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi77', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi77 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi78', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi78 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi78', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi78 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi78', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi78 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi78', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi78 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi79', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi79 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi79', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi79 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi79', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi79 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi79', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi79 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi80', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi80 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi80', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi80 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi80', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi80 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi80', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi80 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi81', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi81 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi81', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi81 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi81', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi81 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi81', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi81 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi82', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi82 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi82', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi82 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi82', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi82 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi82', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi82 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi83', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi83 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi83', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi83 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi83', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi83 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi83', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi83 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi84', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi84 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi84', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi84 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi84', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi84 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi84', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi84 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi85', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi85 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi85', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi85 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi85', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi85 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi85', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi85 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi86', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi86 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi86', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi86 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi86', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi86 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi86', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi86 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi87', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi87 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi87', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi87 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi87', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi87 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi87', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi87 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi88', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi88 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi88', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi88 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi88', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi88 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi88', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi88 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi89', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi89 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi89', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi89 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi89', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi89 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi89', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi89 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi90', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi90 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi90', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi90 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi90', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi90 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi90', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi90 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi91', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi91 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi91', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi91 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi91', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi91 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi91', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi91 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi92', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi92 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi92', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi92 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi92', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi92 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi92', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi92 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi93', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi93 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi93', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi93 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi93', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi93 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ahi93', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ahi93 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ain34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ain34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aiq11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aiq11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ale21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ale21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_aln16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_aln16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg35', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg36', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg37 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg37', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg37 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg37 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg37 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg38 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg38', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg38 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg38 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg38 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg39 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg39', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg39 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg39 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg39 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg40 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg40', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg40 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg40 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg40 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg41 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg41', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg41 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg41 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg41 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg42 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg42', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg42 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg42 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg42', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg42 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg43 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg43', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg43 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg43 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg43 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg44 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg44', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg44 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg44 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg44 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg45 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg45', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg45 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg45 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg45 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg46 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg46', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg46 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg46 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg46 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg47 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg47', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg47 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg47 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amg47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amg47 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amh01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amh01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amh01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amh01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amh01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amh01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_amh01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_amh01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_anr16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_anr16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr35', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr36', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr37 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr37', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr37 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr37 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr37 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr38 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr38', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr38 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr38 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr38 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr39 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr39', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr39 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr39 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr39 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr41 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr41', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr41 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr41 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr41 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr43 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr43', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr43 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr43 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr43', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr43 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr44 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr44', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr44 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr44 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr44', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr44 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr45 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr45', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr45 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr45 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr45', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr45 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr46 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr46', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr46 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr46 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr46', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr46 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr47 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr47', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr47 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr47 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr47', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr47 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr48 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr48', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr48 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr48 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr48', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr48 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr49 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr49', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr49 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr49 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr49', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr49 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr50 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr50', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr50 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr50 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr50', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr50 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr51 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr51', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr51 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr51 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr51', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr51 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr52 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr52', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr52 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr52 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr52', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr52 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr53 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr53', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr53 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr53 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr53', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr53 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr54 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr54', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr54 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr54 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr54', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr54 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr55 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr55', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr55 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr55 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_apr55', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_apr55 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arm04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arm04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_art34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_art34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv35', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv36', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv37 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv37', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv37 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv37 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv37 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv38 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv38', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv38 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv38 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv38', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv38 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv39 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv39', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv39 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv39 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv39', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv39 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv40 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv40', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv40 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv40 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv40', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv40 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv41 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv41', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv41 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv41 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_arv41', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_arv41 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl19 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl19', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl19 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl19 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl19', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl19 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl20 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl20', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl20 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl20 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl20', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl20 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl21 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl21', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl21 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl21 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl21', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl21 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl22 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl22', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl22 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl22 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl22', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl22 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl23 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl23', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl23 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl23 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl23', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl23 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl24 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl24', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl24 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl24 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl24', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl24 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl25 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl25', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl25 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl25 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl25', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl25 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl26 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl26', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl26 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl26 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl26', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl26 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl27 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl27', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl27 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl27 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl27', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl27 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl28 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl28', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl28 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl28 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl28', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl28 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl29 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl29', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl29 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl29 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl29', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl29 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl30 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl30', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl30 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl30 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl30', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl30 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl31 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl31', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl31 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl31 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl31', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl31 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl32 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl32', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl32 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl32 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl32', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl32 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl33 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl33', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl33 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl33 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl33', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl33 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl34 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl34', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl34 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl34 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl34', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl34 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl35 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl35', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl35 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl35 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl35', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl35 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl36 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl36', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl36 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl36 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl36', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl36 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl37 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl37', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl37 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl37 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_asl37', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_asl37 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cau05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cau05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbk08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbk08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbl01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbl01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbl01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbl01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbl01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbl06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbl06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbl06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbl06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cbl06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cbl06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ccu01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ccu01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ccu01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ccu01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ccu01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ccu01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ccu01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ccu01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ceq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ceq01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ceq01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ceq01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ceq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ceq01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ceq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ceq01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ceq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ceq04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ceq04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ceq04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ceq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ceq04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ceq04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ceq04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cin01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cin01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cin01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cin01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cin01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cin01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cin01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cin01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cin04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cin04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cin04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cin04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cin04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cin04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cin04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cin04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cle01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cle01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cle01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cle01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cle01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cle01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cle01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cle01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cle05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cle05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cle05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cle05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cle05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cle05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cle05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cle05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_cmg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_cmg05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crm01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crm01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crm01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crm01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crm01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crm01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crm01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crm01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crn01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crn01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crn01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crn01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crn01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crn01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crn01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crn01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crt01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crt01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crt01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crt01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crt01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crt06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crt06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crt06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crt06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_crt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_crt06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_csl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_csl01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_csl01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_csl01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_csl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_csl01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_csl01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_csl01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt16 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt16', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt16 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt16 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt16', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt16 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt17 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt17', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt17 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt17 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt17', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt17 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt18 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt18', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt18 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt18 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_ddt18', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_ddt18 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_mdt10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_mdt10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tal06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tal06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg08 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg08', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg08 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg08 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg08', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg08 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg09 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg09', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg09 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg09 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tdg09', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tdg09 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tiq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tiq01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tiq01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tiq01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tiq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tiq01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tiq01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tiq01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tiq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tiq02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tiq02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tiq02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tiq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tiq02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'smartv40_tiq02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.smartv40_tiq02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dem02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dem02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dem02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dem02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dem02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dem02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'dem02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dem02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc01 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc01', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc01 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc01 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc01', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc01 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc02 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc02', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc02 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc02 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc02', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc02 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc03 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc03', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc03 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc03 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc03', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc03 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc04 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc04', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc04 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc04 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc04', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc04 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc05 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc05', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc05 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc05 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc05', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc05 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc06 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc06', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc06 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc06 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc06', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc06 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc07 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc07', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc07 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc07 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'xfc07', 'Column edw_prod_to_stage_fdw.experian_full_attributes.xfc07 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'record_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.record_nb should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'record_nb', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.record_nb should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'record_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.record_nb should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'record_nb', 'Column edw_prod_to_stage_fdw.experian_full_attributes.record_nb should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'scrambled_permid', 'Column edw_prod_to_stage_fdw.experian_full_attributes.scrambled_permid should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'scrambled_permid', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.scrambled_permid should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'scrambled_permid', 'Column edw_prod_to_stage_fdw.experian_full_attributes.scrambled_permid should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'scrambled_permid', 'Column edw_prod_to_stage_fdw.experian_full_attributes.scrambled_permid should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'line', 'Column edw_prod_to_stage_fdw.experian_full_attributes.line should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'line', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.line should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'line', 'Column edw_prod_to_stage_fdw.experian_full_attributes.line should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'line', 'Column edw_prod_to_stage_fdw.experian_full_attributes.line should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'price_tier', 'Column edw_prod_to_stage_fdw.experian_full_attributes.price_tier should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'price_tier', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.price_tier should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'price_tier', 'Column edw_prod_to_stage_fdw.experian_full_attributes.price_tier should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'price_tier', 'Column edw_prod_to_stage_fdw.experian_full_attributes.price_tier should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'selection', 'Column edw_prod_to_stage_fdw.experian_full_attributes.selection should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'selection', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.selection should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'selection', 'Column edw_prod_to_stage_fdw.experian_full_attributes.selection should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'selection', 'Column edw_prod_to_stage_fdw.experian_full_attributes.selection should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'source', 'Column edw_prod_to_stage_fdw.experian_full_attributes.source should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'source', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.source should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'source', 'Column edw_prod_to_stage_fdw.experian_full_attributes.source should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'source', 'Column edw_prod_to_stage_fdw.experian_full_attributes.source should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test_group', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test_group should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test_group', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test_group should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test_group', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test_group should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test_group', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test_group should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'state_code', 'Column edw_prod_to_stage_fdw.experian_full_attributes.state_code should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'state_code', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.state_code should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'state_code', 'Column edw_prod_to_stage_fdw.experian_full_attributes.state_code should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'state_code', 'Column edw_prod_to_stage_fdw.experian_full_attributes.state_code should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'lasercode', 'Column edw_prod_to_stage_fdw.experian_full_attributes.lasercode should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'lasercode', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.lasercode should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'lasercode', 'Column edw_prod_to_stage_fdw.experian_full_attributes.lasercode should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'lasercode', 'Column edw_prod_to_stage_fdw.experian_full_attributes.lasercode should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'creative', 'Column edw_prod_to_stage_fdw.experian_full_attributes.creative should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'creative', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.creative should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'creative', 'Column edw_prod_to_stage_fdw.experian_full_attributes.creative should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'creative', 'Column edw_prod_to_stage_fdw.experian_full_attributes.creative should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'last_mailed', 'Column edw_prod_to_stage_fdw.experian_full_attributes.last_mailed should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'last_mailed', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.last_mailed should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'last_mailed', 'Column edw_prod_to_stage_fdw.experian_full_attributes.last_mailed should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'last_mailed', 'Column edw_prod_to_stage_fdw.experian_full_attributes.last_mailed should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score1 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score1', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score1 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score1 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score1 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score2', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score3', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score4 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score4', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score4 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score4 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score4 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score5 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score5', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score5 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score5 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score5 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score6 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score6', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score6 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score6 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score6 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score7 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score7', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score7 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score7 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score7 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score8 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score8', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score8 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score8 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score8 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score9 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score9', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score9 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score9 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score9 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'score14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'score14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.score14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data1 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data1', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data1 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data1 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data1 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data2', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data3', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data4 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data4', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data4 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data4 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data4 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data5 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data5', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data5 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data5 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data5 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data6 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data6', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data6 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data6 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data6 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data7 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data7', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data7 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data7 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data7 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data8 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data8', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data8 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data8 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data8 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data9 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data9', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data9 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data9 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data9 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data15 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data15', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data15 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'data15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data15 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'data15', 'Column edw_prod_to_stage_fdw.experian_full_attributes.data15 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test0', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test0 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test0', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test0 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test0', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test0 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test0', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test0 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test1 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test1', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test1 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test1 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test1 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test2', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test3', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test4 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test4', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test4 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test4 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test4 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test5 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test5', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test5 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test5 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test5', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test5 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test6 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test6', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test6 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test6 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test6', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test6 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test7 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test7', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test7 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test7 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test7', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test7 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test8 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test8', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test8 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test8 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test8', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test8 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test9 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test9', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test9 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test9 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test9', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test9 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test10 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test10', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test10 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test10 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test10', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test10 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test11 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test11', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test11 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test11 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test11', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test11 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test12 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test12', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test12 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test12 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test12', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test12 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test13 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test13', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test13 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test13 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test13', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test13 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test14 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test14', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test14 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'test14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test14 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'test14', 'Column edw_prod_to_stage_fdw.experian_full_attributes.test14 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti1 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti1', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti1 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti1 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti1', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti1 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti2 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti2', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti2 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti2 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti2', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti2 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti3 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti3', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti3 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti3 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti3', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti3 should not  have a default');

SELECT has_column(       'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti4 should exist');
SELECT col_type_is(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti4', 'text', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti4 should be type text');
SELECT col_is_null(      'edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti4 should allow NULL');
SELECT col_hasnt_default('edw_prod_to_stage_fdw', 'experian_full_attributes', 'dti4', 'Column edw_prod_to_stage_fdw.experian_full_attributes.dti4 should not  have a default');

SELECT * FROM finish();
ROLLBACK;
