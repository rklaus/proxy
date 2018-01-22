SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(2429);

SELECT schemas_are(ARRAY[
    'amazon_s3_fdw',
    'balance_api_fdw',
    'balance_customer_fdw',
    'bitemporal_internal',
    'bsf_prod_ach',
    'bsf_prod_ach_bitemporal',
    'bsf_prod_catalog',
    'bsf_prod_common',
    'bsf_prod_dm_chorus',
    'bsf_prod_identity',
    'bsf_prod_origination',
    'edw_new_fdw',
    'edw_prod_to_stage_fdw',
    'epic_fdw',
    'gds_fdw',
    'loan_pro_chorus_fdw',
    'loan_pro_chorus_sandbox',
    'loan_pro_fdw',
    'loan_pro_sandbox',
    'temporal_relationships',
    'public'
]);

SELECT schema_owner_is('amazon_s3_fdw','dw_owner');
SELECT schema_owner_is('balance_api_fdw','dw_owner');
SELECT schema_owner_is('balance_customer_fdw','dw_owner');
SELECT schema_owner_is('bitemporal_internal','ubuntu');
SELECT schema_owner_is('bsf_prod_ach','dw_owner');
SELECT schema_owner_is('bsf_prod_ach_bitemporal','dw_owner');
SELECT schema_owner_is('bsf_prod_catalog','dw_owner');
SELECT schema_owner_is('bsf_prod_common','dw_owner');
SELECT schema_owner_is('bsf_prod_dm_chorus','dw_owner');
SELECT schema_owner_is('bsf_prod_identity','dw_owner');
SELECT schema_owner_is('bsf_prod_origination','dw_owner');
SELECT schema_owner_is('edw_new_fdw','dw_owner');
SELECT schema_owner_is('edw_prod_to_stage_fdw','dw_owner');
SELECT schema_owner_is('epic_fdw','dw_owner');
SELECT schema_owner_is('gds_fdw','dw_owner');
SELECT schema_owner_is('loan_pro_chorus_fdw','dw_owner');
SELECT schema_owner_is('loan_pro_chorus_sandbox','dw_owner');
SELECT schema_owner_is('loan_pro_fdw','dw_owner');
SELECT schema_owner_is('loan_pro_sandbox','dw_owner');
SELECT schema_owner_is('temporal_relationships','ubuntu');
SELECT foreign_tables_are('balance_api_fdw', ARRAY[
    'achendpoints',
    'applicantjournal',
    'applicantrevisions',
    'applicants',
    'applicanttransactions',
    'badbanks',
    'customerinformation',
    'customerinformationbuild',
    'customerinformationrules',
    'documentgroups',
    'documents',
    'installmentloanpaymentrates',
    'installmentloanpaymentrates_archive',
    'installmentloans',
    'installmentloans_archive',
    'installmentloansterms',
    'leads',
    'leadtransactions',
    'loaninformation',
    'loaninformationbuild',
    'loanprocalllogs',
    'locations',
    'preapprovedapplicants',
    'pricingtiers',
    'promocodes',
    'routingnumbers'
]);

SELECT foreign_table_owner_is('balance_api_fdw','achendpoints','dw_owner', 'balance_api_fdw.achendpoints owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','applicantjournal','dw_owner', 'balance_api_fdw.applicantjournal owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','applicantrevisions','dw_owner', 'balance_api_fdw.applicantrevisions owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','applicants','dw_owner', 'balance_api_fdw.applicants owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','applicanttransactions','dw_owner', 'balance_api_fdw.applicanttransactions owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','badbanks','dw_owner', 'balance_api_fdw.badbanks owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','customerinformation','dw_owner', 'balance_api_fdw.customerinformation owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','customerinformationbuild','dw_owner', 'balance_api_fdw.customerinformationbuild owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','customerinformationrules','dw_owner', 'balance_api_fdw.customerinformationrules owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','documentgroups','dw_owner', 'balance_api_fdw.documentgroups owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','documents','dw_owner', 'balance_api_fdw.documents owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','installmentloanpaymentrates','dw_owner', 'balance_api_fdw.installmentloanpaymentrates owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','installmentloanpaymentrates_archive','dw_owner', 'balance_api_fdw.installmentloanpaymentrates_archive owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','installmentloans','dw_owner', 'balance_api_fdw.installmentloans owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','installmentloans_archive','dw_owner', 'balance_api_fdw.installmentloans_archive owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','installmentloansterms','dw_owner', 'balance_api_fdw.installmentloansterms owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','leads','dw_owner', 'balance_api_fdw.leads owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','leadtransactions','dw_owner', 'balance_api_fdw.leadtransactions owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','loaninformation','dw_owner', 'balance_api_fdw.loaninformation owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','loaninformationbuild','dw_owner', 'balance_api_fdw.loaninformationbuild owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','loanprocalllogs','dw_owner', 'balance_api_fdw.loanprocalllogs owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','locations','dw_owner', 'balance_api_fdw.locations owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','preapprovedapplicants','dw_owner', 'balance_api_fdw.preapprovedapplicants owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','pricingtiers','dw_owner', 'balance_api_fdw.pricingtiers owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','promocodes','dw_owner', 'balance_api_fdw.promocodes owner is dw_owner');
SELECT foreign_table_owner_is('balance_api_fdw','routingnumbers','dw_owner', 'balance_api_fdw.routingnumbers owner is dw_owner');
SELECT foreign_tables_are('balance_customer_fdw', ARRAY[
    'accounts_balanceuser',
    'accounts_balanceuser_groups',
    'accounts_balanceuser_user_permissions',
    'auth_group',
    'auth_group_permissions',
    'auth_permission',
    'block_ip_blockip',
    'cache_rlimit'
]);

SELECT foreign_table_owner_is('balance_customer_fdw','accounts_balanceuser','dw_owner', 'balance_customer_fdw.accounts_balanceuser owner is dw_owner');
SELECT foreign_table_owner_is('balance_customer_fdw','accounts_balanceuser_groups','dw_owner', 'balance_customer_fdw.accounts_balanceuser_groups owner is dw_owner');
SELECT foreign_table_owner_is('balance_customer_fdw','accounts_balanceuser_user_permissions','dw_owner', 'balance_customer_fdw.accounts_balanceuser_user_permissions owner is dw_owner');
SELECT foreign_table_owner_is('balance_customer_fdw','auth_group','dw_owner', 'balance_customer_fdw.auth_group owner is dw_owner');
SELECT foreign_table_owner_is('balance_customer_fdw','auth_group_permissions','dw_owner', 'balance_customer_fdw.auth_group_permissions owner is dw_owner');
SELECT foreign_table_owner_is('balance_customer_fdw','auth_permission','dw_owner', 'balance_customer_fdw.auth_permission owner is dw_owner');
SELECT foreign_table_owner_is('balance_customer_fdw','block_ip_blockip','dw_owner', 'balance_customer_fdw.block_ip_blockip owner is dw_owner');
SELECT foreign_table_owner_is('balance_customer_fdw','cache_rlimit','dw_owner', 'balance_customer_fdw.cache_rlimit owner is dw_owner');
SELECT tables_are('bitemporal_internal', ARRAY[
    'fk_constraint_type'
]);

SELECT table_owner_is('bitemporal_internal','fk_constraint_type','ubuntu','bitemporal_internal.fk_constraint_type owner is ubuntu');
SELECT functions_are('bitemporal_internal', ARRAY[
    'add_constraint',
    'conname_prefix',
    'find_constraints',
    'find_fk',
    'find_pk',
    'fk_constraint',
    'fk_constraint',
    'll_bitemporal_correction',
    'll_bitemporal_correction',
    'll_bitemporal_delete',
    'll_bitemporal_inactivate',
    'll_bitemporal_insert',
    'll_bitemporal_insert_select',
    'll_bitemporal_list_of_fields',
    'll_bitemporal_update',
    'll_bitemporal_update_select',
    'll_check_bitemporal_update_conditions',
    'll_create_bitemporal_table',
    'll_is_bitemporal_table',
    'mk_conname',
    'mk_constraint',
    'pk_constraint',
    'select_constraint_value',
    'split_out_fk',
    'unique_constraint'
]);

SELECT foreign_tables_are('bsf_prod_ach', ARRAY[
    'achbatchheader',
    'achbatchrecordqueue',
    'achendpoint',
    'achfile',
    'achfileheader',
    'achfilerecord',
    'returnfile',
    'returnfilerecord'
]);

SELECT foreign_table_owner_is('bsf_prod_ach','achbatchheader','dw_owner', 'bsf_prod_ach.achbatchheader owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach','achbatchrecordqueue','dw_owner', 'bsf_prod_ach.achbatchrecordqueue owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach','achendpoint','dw_owner', 'bsf_prod_ach.achendpoint owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach','achfile','dw_owner', 'bsf_prod_ach.achfile owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach','achfileheader','dw_owner', 'bsf_prod_ach.achfileheader owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach','achfilerecord','dw_owner', 'bsf_prod_ach.achfilerecord owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach','returnfile','dw_owner', 'bsf_prod_ach.returnfile owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach','returnfilerecord','dw_owner', 'bsf_prod_ach.returnfilerecord owner is dw_owner');
SELECT foreign_tables_are('bsf_prod_ach_bitemporal', ARRAY[
    'achbatchheader',
    'achbatchrecordqueue',
    'achendpoint',
    'achfile',
    'achfileheader',
    'achfilerecord',
    'returnfile',
    'returnfilerecord'
]);

SELECT foreign_table_owner_is('bsf_prod_ach_bitemporal','achbatchheader','dw_owner', 'bsf_prod_ach_bitemporal.achbatchheader owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach_bitemporal','achbatchrecordqueue','dw_owner', 'bsf_prod_ach_bitemporal.achbatchrecordqueue owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach_bitemporal','achendpoint','dw_owner', 'bsf_prod_ach_bitemporal.achendpoint owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach_bitemporal','achfile','dw_owner', 'bsf_prod_ach_bitemporal.achfile owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach_bitemporal','achfileheader','dw_owner', 'bsf_prod_ach_bitemporal.achfileheader owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach_bitemporal','achfilerecord','dw_owner', 'bsf_prod_ach_bitemporal.achfilerecord owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach_bitemporal','returnfile','dw_owner', 'bsf_prod_ach_bitemporal.returnfile owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_ach_bitemporal','returnfilerecord','dw_owner', 'bsf_prod_ach_bitemporal.returnfilerecord owner is dw_owner');
SELECT foreign_tables_are('bsf_prod_catalog', ARRAY[
    'columns',
    'tables'
]);

SELECT foreign_table_owner_is('bsf_prod_catalog','columns','dw_owner', 'bsf_prod_catalog.columns owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_catalog','tables','dw_owner', 'bsf_prod_catalog.tables owner is dw_owner');
SELECT foreign_tables_are('bsf_prod_common', ARRAY[
    'account_lock_status',
    'address_priority',
    'application_status',
    'application_sub_status',
    'bank_account_type',
    'decision',
    'document_type',
    'email_reason',
    'employment_duration',
    'failure_reason',
    'fraud_decision',
    'income_source',
    'loan_purpose',
    'marital_status',
    'noaa_reason',
    'note_category',
    'payment_frequency',
    'payment_method',
    'phone_priority',
    'phone_type',
    'response_type',
    'states',
    'time_at_address'
]);

SELECT foreign_table_owner_is('bsf_prod_common','account_lock_status','dw_owner', 'bsf_prod_common.account_lock_status owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','address_priority','dw_owner', 'bsf_prod_common.address_priority owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','application_status','dw_owner', 'bsf_prod_common.application_status owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','application_sub_status','dw_owner', 'bsf_prod_common.application_sub_status owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','bank_account_type','dw_owner', 'bsf_prod_common.bank_account_type owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','decision','dw_owner', 'bsf_prod_common.decision owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','document_type','dw_owner', 'bsf_prod_common.document_type owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','email_reason','dw_owner', 'bsf_prod_common.email_reason owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','employment_duration','dw_owner', 'bsf_prod_common.employment_duration owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','failure_reason','dw_owner', 'bsf_prod_common.failure_reason owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','fraud_decision','dw_owner', 'bsf_prod_common.fraud_decision owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','income_source','dw_owner', 'bsf_prod_common.income_source owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','loan_purpose','dw_owner', 'bsf_prod_common.loan_purpose owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','marital_status','dw_owner', 'bsf_prod_common.marital_status owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','noaa_reason','dw_owner', 'bsf_prod_common.noaa_reason owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','note_category','dw_owner', 'bsf_prod_common.note_category owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','payment_frequency','dw_owner', 'bsf_prod_common.payment_frequency owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','payment_method','dw_owner', 'bsf_prod_common.payment_method owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','phone_priority','dw_owner', 'bsf_prod_common.phone_priority owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','phone_type','dw_owner', 'bsf_prod_common.phone_type owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','response_type','dw_owner', 'bsf_prod_common.response_type owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','states','dw_owner', 'bsf_prod_common.states owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_common','time_at_address','dw_owner', 'bsf_prod_common.time_at_address owner is dw_owner');
SELECT foreign_tables_are('bsf_prod_dm_chorus', ARRAY[
    'preapprovals'
]);

SELECT foreign_table_owner_is('bsf_prod_dm_chorus','preapprovals','dw_owner', 'bsf_prod_dm_chorus.preapprovals owner is dw_owner');
SELECT foreign_tables_are('bsf_prod_identity', ARRAY[
    'address',
    'bank_information',
    'email_address',
    'loan',
    'note',
    'person',
    'phone',
    'user_account'
]);

SELECT foreign_table_owner_is('bsf_prod_identity','address','dw_owner', 'bsf_prod_identity.address owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_identity','bank_information','dw_owner', 'bsf_prod_identity.bank_information owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_identity','email_address','dw_owner', 'bsf_prod_identity.email_address owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_identity','loan','dw_owner', 'bsf_prod_identity.loan owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_identity','note','dw_owner', 'bsf_prod_identity.note owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_identity','person','dw_owner', 'bsf_prod_identity.person owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_identity','phone','dw_owner', 'bsf_prod_identity.phone owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_identity','user_account','dw_owner', 'bsf_prod_identity.user_account owner is dw_owner');
SELECT foreign_tables_are('bsf_prod_origination', ARRAY[
    'application',
    'application_preapproval',
    'credit_bureau',
    'document',
    'ev2',
    'noaa',
    'noaa_reason',
    'offer',
    'rmodel_ev1',
    'rmodel_raw_output',
    'rmodel_underwriting'
]);

SELECT foreign_table_owner_is('bsf_prod_origination','application','dw_owner', 'bsf_prod_origination.application owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','application_preapproval','dw_owner', 'bsf_prod_origination.application_preapproval owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','credit_bureau','dw_owner', 'bsf_prod_origination.credit_bureau owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','document','dw_owner', 'bsf_prod_origination.document owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','ev2','dw_owner', 'bsf_prod_origination.ev2 owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','noaa','dw_owner', 'bsf_prod_origination.noaa owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','noaa_reason','dw_owner', 'bsf_prod_origination.noaa_reason owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','offer','dw_owner', 'bsf_prod_origination.offer owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','rmodel_ev1','dw_owner', 'bsf_prod_origination.rmodel_ev1 owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','rmodel_raw_output','dw_owner', 'bsf_prod_origination.rmodel_raw_output owner is dw_owner');
SELECT foreign_table_owner_is('bsf_prod_origination','rmodel_underwriting','dw_owner', 'bsf_prod_origination.rmodel_underwriting owner is dw_owner');
SELECT foreign_tables_are('edw_new_fdw', ARRAY[
    '_preapprovedapplicants',
    'customerinformation_dw',
    'loaninformation_dw'
]);

SELECT foreign_table_owner_is('edw_new_fdw','_preapprovedapplicants','dw_owner', 'edw_new_fdw._preapprovedapplicants owner is dw_owner');
SELECT foreign_table_owner_is('edw_new_fdw','customerinformation_dw','dw_owner', 'edw_new_fdw.customerinformation_dw owner is dw_owner');
SELECT foreign_table_owner_is('edw_new_fdw','loaninformation_dw','dw_owner', 'edw_new_fdw.loaninformation_dw owner is dw_owner');
SELECT foreign_tables_are('edw_prod_to_stage_fdw', ARRAY[
    'accounts',
    'experian_full_attributes',
    'pg_class',
    'pg_namespace',
    'pg_proc',
    'pg_roles',
    'pg_type',
    'preapprovedapplicants_dw',
    'scores',
    'transactions',
    'transunion_full_attributes'
]);

SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','accounts','dw_owner', 'edw_prod_to_stage_fdw.accounts owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','experian_full_attributes','dw_owner', 'edw_prod_to_stage_fdw.experian_full_attributes owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','pg_class','dw_owner', 'edw_prod_to_stage_fdw.pg_class owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','pg_namespace','dw_owner', 'edw_prod_to_stage_fdw.pg_namespace owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','pg_proc','dw_owner', 'edw_prod_to_stage_fdw.pg_proc owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','pg_roles','dw_owner', 'edw_prod_to_stage_fdw.pg_roles owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','pg_type','dw_owner', 'edw_prod_to_stage_fdw.pg_type owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','preapprovedapplicants_dw','dw_owner', 'edw_prod_to_stage_fdw.preapprovedapplicants_dw owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','scores','dw_owner', 'edw_prod_to_stage_fdw.scores owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','transactions','dw_owner', 'edw_prod_to_stage_fdw.transactions owner is dw_owner');
SELECT foreign_table_owner_is('edw_prod_to_stage_fdw','transunion_full_attributes','dw_owner', 'edw_prod_to_stage_fdw.transunion_full_attributes owner is dw_owner');
SELECT sequences_are('edw_prod_to_stage_fdw', ARRAY[
    'preapprovedapplicants_dw_id_seq'
]);

SELECT sequence_owner_is('edw_prod_to_stage_fdw','preapprovedapplicants_dw_id_seq','dw_owner','edw_prod_to_stage_fdw.preapprovedapplicants_dw_id_seq owner is dw_owner');
SELECT foreign_tables_are('loan_pro_chorus_fdw', ARRAY[
    '_ach_return_code_action_entity',
    '_address_entity',
    '_admin_tool__loan',
    '_admin_tool_entity',
    '_advance_category_entity',
    '_all_cust_info_view',
    '_bank_account_entity',
    '_billing_tool__loan',
    '_billing_tool_entity',
    '_bracket_entity',
    '_bracket_item_entity',
    '_cash_drawer__payment_method',
    '_cash_drawer_entity',
    '_cash_drawer_transaction_entity',
    '_cash_drawer_tx_category_entity',
    '_charge_entity',
    '_checking_account_entity',
    '_checklist_entity',
    '_checklist_item__entity',
    '_checklist_item_entity',
    '_collateral_entity',
    '_collateral_field_entity',
    '_collection',
    '_collection_item',
    '_collector_queue__loan',
    '_collector_queue_entity',
    '_collector_queue_question_entity',
    '_collector_queue_work_item_entity',
    '_comment_thread_comments',
    '_comment_thread_topics',
    '_computation_field_entity',
    '_contract_signer_entity',
    '_credit_breakdown_report',
    '_credit_card_entity',
    '_credit_category_entity',
    '_credit_report_history',
    '_credit_report_queue',
    '_credit_report_view',
    '_curtailment_template_entity',
    '_curtailment_template_lines_entity',
    '_custom_billing_template_entity',
    '_custom_billing_theme_entity',
    '_custom_boarding_process_entity',
    '_custom_boarding_process_step_entity',
    '_custom_charge_type_entity',
    '_custom_field',
    '_custom_field__entity',
    '_custom_form_entity',
    '_custom_form_section_entity',
    '_custom_form_tool__loan',
    '_custom_form_tool_entity',
    '_custom_payment_method_entity',
    '_custom_payment_type_entity',
    '_customer_credit_score_entity',
    '_customer_document_entity',
    '_customer_employer_entity',
    '_customer_entity',
    '_customer_login_attempts',
    '_customer_payment_method_entity',
    '_customer_phone_entity',
    '_customer_reference_entity',
    '_customer_social_profile_entity',
    '_customer_status_entity',
    '_data_dump_entity',
    '_data_import_entity',
    '_default_billing_options_entity',
    '_default_billing_template_entity',
    '_default_billing_theme_entity',
    '_defaults_autopay',
    '_defaults_charges',
    '_defaults_escrow_calculator',
    '_defaults_late_fee__buckets',
    '_defaults_payments',
    '_defaults_system_loan',
    '_defaults_user_loan',
    '_delivery_entity',
    '_disbursement_entity',
    '_doc_section_entity',
    '_due_to_date_view',
    '_email_delivery_entity',
    '_email_queue',
    '_email_template_entity',
    '_email_tool__loan',
    '_email_tool_entity',
    '_email_trigger_entity',
    '_escrow__transactions',
    '_escrow_adjustment_entity',
    '_escrow_analysis_process_entity',
    '_escrow_analysis_task_entity',
    '_escrow_calculator_entity',
    '_escrow_subset_entity',
    '_escrow_subset_options_entity',
    '_escrow_subset_options_entity_backup',
    '_escrow_transaction_entity',
    '_escrow_tx_category_entity',
    '_faq_entry_entity',
    '_file_attachment_entity',
    '_first_loan_payment_transaction_view',
    '_flag_entity',
    '_flag_status_archive',
    '_form_section_entity',
    '_gps_link_entity',
    '_history_funding_report_view',
    '_holding_account__investor',
    '_holding_account_archive_entity',
    '_holding_account_autopay_entity',
    '_holding_account_category_entity',
    '_holding_account_settings_entity',
    '_holding_account_status_entity',
    '_holding_account_sub_status_entity',
    '_holding_account_transaction_category_entity',
    '_holding_account_transaction_entity',
    '_homepage_image_entity',
    '_investment__portfolio',
    '_investment__sub_portfolio',
    '_investment_document_entity',
    '_investment_entity',
    '_investment_position_entity',
    '_investor_document_entity',
    '_investor_entity',
    '_investor_status_entity',
    '_iprestriction_entity',
    '_iprestriction_entry_entity',
    '_last_loan_payment_transaction_view',
    '_link_entity',
    '_linked_info__entity',
    '_linked_loan__entity',
    '_linked_loan_option_entity',
    '_loan__customer',
    '_loan__portfolio',
    '_loan__recurrent_charge',
    '_loan__rule_applied_apd_reset',
    '_loan__rule_applied_charge_off',
    '_loan__rule_applied_checklist',
    '_loan__rule_applied_duedate',
    '_loan__rule_applied_settings',
    '_loan__rule_applied_stop_interest',
    '_loan__sub_portfolio',
    '_loan_active_time_tx',
    '_loan_advancement_entity',
    '_loan_apd_adjustment_entity',
    '_loan_autopay_entity',
    '_loan_autopay_entity_old',
    '_loan_chargeoff__transactions',
    '_loan_chargeoff_entity',
    '_loan_collected_stats_view',
    '_loan_credit_entity',
    '_loan_curtail_date_entity',
    '_loan_delinquency_history_entity',
    '_loan_document_entity',
    '_loan_dpd_adjustment_entity',
    '_loan_duedate_change_entity',
    '_loan_entity',
    '_loan_escrow_tx_view',
    '_loan_funding_entity',
    '_loan_future_stats_view',
    '_loan_insurance_entity',
    '_loan_last_payment_view',
    '_loan_late_fee__buckets',
    '_loan_modification_entity',
    '_loan_next_forecast_payment_view',
    '_loan_next_scheduled_payment_view',
    '_loan_past_stats_view',
    '_loan_payment_seq',
    '_loan_portfolio_view',
    '_loan_promise_entity',
    '_loan_reverse_calc_settings',
    '_loan_reverse_status_archive',
    '_loan_schedule_payments_view',
    '_loan_schedule_roll_entity',
    '_loan_settings_entity',
    '_loan_setup_entity',
    '_loan_sms_queue_item_entity',
    '_loan_status_archive',
    '_loan_status_archive_current_date_view',
    '_loan_status_entity',
    '_loan_stop_interest_date_entity',
    '_loan_sub_status_entity',
    '_loan_subportfolio_view',
    '_loan_tx',
    '_loan_tx_payment_view',
    '_loan_yearly_stats_view',
    '_mail_house_delivery_entity',
    '_mail_house_entity',
    '_mail_house_loan',
    '_mail_house_tool_entity',
    '_mc_processor_extender',
    '_my_applications_setting_entity',
    '_my_loans_setting_entity',
    '_next_autopay_view',
    '_note_category_entity',
    '_note_entity',
    '_notification_category__delivery',
    '_notification_category_entity',
    '_notification_dnd_period_entity',
    '_notification_entity',
    '_page_entity',
    '_payment__portfolio',
    '_payment__sub_portfolio',
    '_payment_account_entity',
    '_payment_entity',
    '_payment_info_entity',
    '_payment_reversed_tx_snapshot',
    '_pnm_order_entity',
    '_portfolio_category_entity',
    '_portfolio_entity',
    '_preconfigured_loan__portfolio',
    '_preconfigured_loan__sub_portfolio',
    '_preconfigured_loan_entity',
    '_preconfigured_loan_settings_entity',
    '_quick_note_entity',
    '_recurring_charge_entity',
    '_report_cache',
    '_restriction_group__user',
    '_restriction_group_entity',
    '_restriction_group_entry_archive',
    '_restriction_group_entry_entity',
    '_rule__category',
    '_rule_applied_apd_reset_entity',
    '_rule_applied_charge_off_entity',
    '_rule_applied_checklist_entity',
    '_rule_applied_duedate_entity',
    '_rule_applied_loan_settings_entity',
    '_rule_applied_settings__portfolio',
    '_rule_applied_settings__portfolio_to_delete',
    '_rule_applied_settings__sub_portfolio',
    '_rule_applied_settings__sub_portfolio_to_delete',
    '_rule_applied_stop_interest_entity',
    '_rule_category_entity',
    '_rule_entity',
    '_sample_entity',
    '_saved_search_entity',
    '_sbt_dnd_periods',
    '_sbt_message_log',
    '_sbt_template_mapping',
    '_schedule_roll_template_entity',
    '_schedule_template_lines_entity',
    '_scheduled_action_entity',
    '_scheduled_report_entity',
    '_schema_version',
    '_search_index_error_log',
    '_search_restriction_group_entity',
    '_search_restriction_setting_entity',
    '_security_group',
    '_security_group__user',
    '_shortcut_set_entity',
    '_sms_delivery_entity',
    '_sms_trigger_entity',
    '_sound_group_entity',
    '_sound_group_item_entity',
    '_source_company_entity',
    '_special_report_entity',
    '_stoplight_entity',
    '_sub_portfolio_entity',
    '_support_transaction__topic',
    '_support_transaction_entity',
    '_system_note_entity',
    '_tcn_campaign_entity',
    '_tcn_queue_item_entity',
    '_tenant_backup_log_entity',
    '_tenant_bulk_purchase_entity',
    '_tenant_checklist_category_entity',
    '_tenant_checklist_entity',
    '_tenant_plugins_contract_entity',
    '_tenant_pricing_tier_entity',
    '_tenant_setting__entity',
    '_testimonial_entity',
    '_time_slot_entity',
    '_topic_entity',
    '_total_advancements',
    '_total_credits_view',
    '_transaction_entity',
    '_user__delivery',
    '_user_chart_settings_entity',
    '_user_search_settings_entity',
    '_user_tenant_configuration',
    '_vendor_entity',
    '_view_module_entity',
    '_view_template__view_module',
    '_view_template_entity',
    '_view_widget_entity',
    '_web_delivery_entity',
    '_work_item__questions'
]);

SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_ach_return_code_action_entity','dw_owner', 'loan_pro_chorus_fdw._ach_return_code_action_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_address_entity','dw_owner', 'loan_pro_chorus_fdw._address_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_admin_tool__loan','dw_owner', 'loan_pro_chorus_fdw._admin_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_admin_tool_entity','dw_owner', 'loan_pro_chorus_fdw._admin_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_advance_category_entity','dw_owner', 'loan_pro_chorus_fdw._advance_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_all_cust_info_view','dw_owner', 'loan_pro_chorus_fdw._all_cust_info_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_bank_account_entity','dw_owner', 'loan_pro_chorus_fdw._bank_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_billing_tool__loan','dw_owner', 'loan_pro_chorus_fdw._billing_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_billing_tool_entity','dw_owner', 'loan_pro_chorus_fdw._billing_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_bracket_entity','dw_owner', 'loan_pro_chorus_fdw._bracket_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_bracket_item_entity','dw_owner', 'loan_pro_chorus_fdw._bracket_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_cash_drawer__payment_method','dw_owner', 'loan_pro_chorus_fdw._cash_drawer__payment_method owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_cash_drawer_entity','dw_owner', 'loan_pro_chorus_fdw._cash_drawer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_cash_drawer_transaction_entity','dw_owner', 'loan_pro_chorus_fdw._cash_drawer_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_cash_drawer_tx_category_entity','dw_owner', 'loan_pro_chorus_fdw._cash_drawer_tx_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_charge_entity','dw_owner', 'loan_pro_chorus_fdw._charge_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_checking_account_entity','dw_owner', 'loan_pro_chorus_fdw._checking_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_checklist_entity','dw_owner', 'loan_pro_chorus_fdw._checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_checklist_item__entity','dw_owner', 'loan_pro_chorus_fdw._checklist_item__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_checklist_item_entity','dw_owner', 'loan_pro_chorus_fdw._checklist_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_collateral_entity','dw_owner', 'loan_pro_chorus_fdw._collateral_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_collateral_field_entity','dw_owner', 'loan_pro_chorus_fdw._collateral_field_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_collection','dw_owner', 'loan_pro_chorus_fdw._collection owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_collection_item','dw_owner', 'loan_pro_chorus_fdw._collection_item owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_collector_queue__loan','dw_owner', 'loan_pro_chorus_fdw._collector_queue__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_collector_queue_entity','dw_owner', 'loan_pro_chorus_fdw._collector_queue_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_collector_queue_question_entity','dw_owner', 'loan_pro_chorus_fdw._collector_queue_question_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_collector_queue_work_item_entity','dw_owner', 'loan_pro_chorus_fdw._collector_queue_work_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_comment_thread_comments','dw_owner', 'loan_pro_chorus_fdw._comment_thread_comments owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_comment_thread_topics','dw_owner', 'loan_pro_chorus_fdw._comment_thread_topics owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_computation_field_entity','dw_owner', 'loan_pro_chorus_fdw._computation_field_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_contract_signer_entity','dw_owner', 'loan_pro_chorus_fdw._contract_signer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_credit_breakdown_report','dw_owner', 'loan_pro_chorus_fdw._credit_breakdown_report owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_credit_card_entity','dw_owner', 'loan_pro_chorus_fdw._credit_card_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_credit_category_entity','dw_owner', 'loan_pro_chorus_fdw._credit_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_credit_report_history','dw_owner', 'loan_pro_chorus_fdw._credit_report_history owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_credit_report_queue','dw_owner', 'loan_pro_chorus_fdw._credit_report_queue owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_credit_report_view','dw_owner', 'loan_pro_chorus_fdw._credit_report_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_curtailment_template_entity','dw_owner', 'loan_pro_chorus_fdw._curtailment_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_curtailment_template_lines_entity','dw_owner', 'loan_pro_chorus_fdw._curtailment_template_lines_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_billing_template_entity','dw_owner', 'loan_pro_chorus_fdw._custom_billing_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_billing_theme_entity','dw_owner', 'loan_pro_chorus_fdw._custom_billing_theme_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_boarding_process_entity','dw_owner', 'loan_pro_chorus_fdw._custom_boarding_process_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_boarding_process_step_entity','dw_owner', 'loan_pro_chorus_fdw._custom_boarding_process_step_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_charge_type_entity','dw_owner', 'loan_pro_chorus_fdw._custom_charge_type_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_field','dw_owner', 'loan_pro_chorus_fdw._custom_field owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_field__entity','dw_owner', 'loan_pro_chorus_fdw._custom_field__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_form_entity','dw_owner', 'loan_pro_chorus_fdw._custom_form_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_form_section_entity','dw_owner', 'loan_pro_chorus_fdw._custom_form_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_form_tool__loan','dw_owner', 'loan_pro_chorus_fdw._custom_form_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_form_tool_entity','dw_owner', 'loan_pro_chorus_fdw._custom_form_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_payment_method_entity','dw_owner', 'loan_pro_chorus_fdw._custom_payment_method_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_custom_payment_type_entity','dw_owner', 'loan_pro_chorus_fdw._custom_payment_type_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_credit_score_entity','dw_owner', 'loan_pro_chorus_fdw._customer_credit_score_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_document_entity','dw_owner', 'loan_pro_chorus_fdw._customer_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_employer_entity','dw_owner', 'loan_pro_chorus_fdw._customer_employer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_entity','dw_owner', 'loan_pro_chorus_fdw._customer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_login_attempts','dw_owner', 'loan_pro_chorus_fdw._customer_login_attempts owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_payment_method_entity','dw_owner', 'loan_pro_chorus_fdw._customer_payment_method_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_phone_entity','dw_owner', 'loan_pro_chorus_fdw._customer_phone_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_reference_entity','dw_owner', 'loan_pro_chorus_fdw._customer_reference_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_social_profile_entity','dw_owner', 'loan_pro_chorus_fdw._customer_social_profile_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_customer_status_entity','dw_owner', 'loan_pro_chorus_fdw._customer_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_data_dump_entity','dw_owner', 'loan_pro_chorus_fdw._data_dump_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_data_import_entity','dw_owner', 'loan_pro_chorus_fdw._data_import_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_default_billing_options_entity','dw_owner', 'loan_pro_chorus_fdw._default_billing_options_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_default_billing_template_entity','dw_owner', 'loan_pro_chorus_fdw._default_billing_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_default_billing_theme_entity','dw_owner', 'loan_pro_chorus_fdw._default_billing_theme_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_defaults_autopay','dw_owner', 'loan_pro_chorus_fdw._defaults_autopay owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_defaults_charges','dw_owner', 'loan_pro_chorus_fdw._defaults_charges owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_defaults_escrow_calculator','dw_owner', 'loan_pro_chorus_fdw._defaults_escrow_calculator owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_defaults_late_fee__buckets','dw_owner', 'loan_pro_chorus_fdw._defaults_late_fee__buckets owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_defaults_payments','dw_owner', 'loan_pro_chorus_fdw._defaults_payments owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_defaults_system_loan','dw_owner', 'loan_pro_chorus_fdw._defaults_system_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_defaults_user_loan','dw_owner', 'loan_pro_chorus_fdw._defaults_user_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_delivery_entity','dw_owner', 'loan_pro_chorus_fdw._delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_disbursement_entity','dw_owner', 'loan_pro_chorus_fdw._disbursement_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_doc_section_entity','dw_owner', 'loan_pro_chorus_fdw._doc_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_due_to_date_view','dw_owner', 'loan_pro_chorus_fdw._due_to_date_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_email_delivery_entity','dw_owner', 'loan_pro_chorus_fdw._email_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_email_queue','dw_owner', 'loan_pro_chorus_fdw._email_queue owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_email_template_entity','dw_owner', 'loan_pro_chorus_fdw._email_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_email_tool__loan','dw_owner', 'loan_pro_chorus_fdw._email_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_email_tool_entity','dw_owner', 'loan_pro_chorus_fdw._email_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_email_trigger_entity','dw_owner', 'loan_pro_chorus_fdw._email_trigger_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow__transactions','dw_owner', 'loan_pro_chorus_fdw._escrow__transactions owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_adjustment_entity','dw_owner', 'loan_pro_chorus_fdw._escrow_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_analysis_process_entity','dw_owner', 'loan_pro_chorus_fdw._escrow_analysis_process_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_analysis_task_entity','dw_owner', 'loan_pro_chorus_fdw._escrow_analysis_task_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_calculator_entity','dw_owner', 'loan_pro_chorus_fdw._escrow_calculator_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_subset_entity','dw_owner', 'loan_pro_chorus_fdw._escrow_subset_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_subset_options_entity','dw_owner', 'loan_pro_chorus_fdw._escrow_subset_options_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_subset_options_entity_backup','dw_owner', 'loan_pro_chorus_fdw._escrow_subset_options_entity_backup owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_transaction_entity','dw_owner', 'loan_pro_chorus_fdw._escrow_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_escrow_tx_category_entity','dw_owner', 'loan_pro_chorus_fdw._escrow_tx_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_faq_entry_entity','dw_owner', 'loan_pro_chorus_fdw._faq_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_file_attachment_entity','dw_owner', 'loan_pro_chorus_fdw._file_attachment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_first_loan_payment_transaction_view','dw_owner', 'loan_pro_chorus_fdw._first_loan_payment_transaction_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_flag_entity','dw_owner', 'loan_pro_chorus_fdw._flag_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_flag_status_archive','dw_owner', 'loan_pro_chorus_fdw._flag_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_form_section_entity','dw_owner', 'loan_pro_chorus_fdw._form_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_gps_link_entity','dw_owner', 'loan_pro_chorus_fdw._gps_link_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_history_funding_report_view','dw_owner', 'loan_pro_chorus_fdw._history_funding_report_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account__investor','dw_owner', 'loan_pro_chorus_fdw._holding_account__investor owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account_archive_entity','dw_owner', 'loan_pro_chorus_fdw._holding_account_archive_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account_autopay_entity','dw_owner', 'loan_pro_chorus_fdw._holding_account_autopay_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account_category_entity','dw_owner', 'loan_pro_chorus_fdw._holding_account_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account_settings_entity','dw_owner', 'loan_pro_chorus_fdw._holding_account_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account_status_entity','dw_owner', 'loan_pro_chorus_fdw._holding_account_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account_sub_status_entity','dw_owner', 'loan_pro_chorus_fdw._holding_account_sub_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account_transaction_category_entity','dw_owner', 'loan_pro_chorus_fdw._holding_account_transaction_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_holding_account_transaction_entity','dw_owner', 'loan_pro_chorus_fdw._holding_account_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_homepage_image_entity','dw_owner', 'loan_pro_chorus_fdw._homepage_image_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_investment__portfolio','dw_owner', 'loan_pro_chorus_fdw._investment__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_investment__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw._investment__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_investment_document_entity','dw_owner', 'loan_pro_chorus_fdw._investment_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_investment_entity','dw_owner', 'loan_pro_chorus_fdw._investment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_investment_position_entity','dw_owner', 'loan_pro_chorus_fdw._investment_position_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_investor_document_entity','dw_owner', 'loan_pro_chorus_fdw._investor_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_investor_entity','dw_owner', 'loan_pro_chorus_fdw._investor_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_investor_status_entity','dw_owner', 'loan_pro_chorus_fdw._investor_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_iprestriction_entity','dw_owner', 'loan_pro_chorus_fdw._iprestriction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_iprestriction_entry_entity','dw_owner', 'loan_pro_chorus_fdw._iprestriction_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_last_loan_payment_transaction_view','dw_owner', 'loan_pro_chorus_fdw._last_loan_payment_transaction_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_link_entity','dw_owner', 'loan_pro_chorus_fdw._link_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_linked_info__entity','dw_owner', 'loan_pro_chorus_fdw._linked_info__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_linked_loan__entity','dw_owner', 'loan_pro_chorus_fdw._linked_loan__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_linked_loan_option_entity','dw_owner', 'loan_pro_chorus_fdw._linked_loan_option_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__customer','dw_owner', 'loan_pro_chorus_fdw._loan__customer owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__portfolio','dw_owner', 'loan_pro_chorus_fdw._loan__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__recurrent_charge','dw_owner', 'loan_pro_chorus_fdw._loan__recurrent_charge owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__rule_applied_apd_reset','dw_owner', 'loan_pro_chorus_fdw._loan__rule_applied_apd_reset owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__rule_applied_charge_off','dw_owner', 'loan_pro_chorus_fdw._loan__rule_applied_charge_off owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__rule_applied_checklist','dw_owner', 'loan_pro_chorus_fdw._loan__rule_applied_checklist owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__rule_applied_duedate','dw_owner', 'loan_pro_chorus_fdw._loan__rule_applied_duedate owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__rule_applied_settings','dw_owner', 'loan_pro_chorus_fdw._loan__rule_applied_settings owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__rule_applied_stop_interest','dw_owner', 'loan_pro_chorus_fdw._loan__rule_applied_stop_interest owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw._loan__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_active_time_tx','dw_owner', 'loan_pro_chorus_fdw._loan_active_time_tx owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_advancement_entity','dw_owner', 'loan_pro_chorus_fdw._loan_advancement_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_apd_adjustment_entity','dw_owner', 'loan_pro_chorus_fdw._loan_apd_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_autopay_entity','dw_owner', 'loan_pro_chorus_fdw._loan_autopay_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_autopay_entity_old','dw_owner', 'loan_pro_chorus_fdw._loan_autopay_entity_old owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_chargeoff__transactions','dw_owner', 'loan_pro_chorus_fdw._loan_chargeoff__transactions owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_chargeoff_entity','dw_owner', 'loan_pro_chorus_fdw._loan_chargeoff_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_collected_stats_view','dw_owner', 'loan_pro_chorus_fdw._loan_collected_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_credit_entity','dw_owner', 'loan_pro_chorus_fdw._loan_credit_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_curtail_date_entity','dw_owner', 'loan_pro_chorus_fdw._loan_curtail_date_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_delinquency_history_entity','dw_owner', 'loan_pro_chorus_fdw._loan_delinquency_history_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_document_entity','dw_owner', 'loan_pro_chorus_fdw._loan_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_dpd_adjustment_entity','dw_owner', 'loan_pro_chorus_fdw._loan_dpd_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_duedate_change_entity','dw_owner', 'loan_pro_chorus_fdw._loan_duedate_change_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_entity','dw_owner', 'loan_pro_chorus_fdw._loan_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_escrow_tx_view','dw_owner', 'loan_pro_chorus_fdw._loan_escrow_tx_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_funding_entity','dw_owner', 'loan_pro_chorus_fdw._loan_funding_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_future_stats_view','dw_owner', 'loan_pro_chorus_fdw._loan_future_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_insurance_entity','dw_owner', 'loan_pro_chorus_fdw._loan_insurance_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_last_payment_view','dw_owner', 'loan_pro_chorus_fdw._loan_last_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_late_fee__buckets','dw_owner', 'loan_pro_chorus_fdw._loan_late_fee__buckets owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_modification_entity','dw_owner', 'loan_pro_chorus_fdw._loan_modification_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_next_forecast_payment_view','dw_owner', 'loan_pro_chorus_fdw._loan_next_forecast_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_next_scheduled_payment_view','dw_owner', 'loan_pro_chorus_fdw._loan_next_scheduled_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_past_stats_view','dw_owner', 'loan_pro_chorus_fdw._loan_past_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_payment_seq','dw_owner', 'loan_pro_chorus_fdw._loan_payment_seq owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_portfolio_view','dw_owner', 'loan_pro_chorus_fdw._loan_portfolio_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_promise_entity','dw_owner', 'loan_pro_chorus_fdw._loan_promise_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_reverse_calc_settings','dw_owner', 'loan_pro_chorus_fdw._loan_reverse_calc_settings owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_reverse_status_archive','dw_owner', 'loan_pro_chorus_fdw._loan_reverse_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_schedule_payments_view','dw_owner', 'loan_pro_chorus_fdw._loan_schedule_payments_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_schedule_roll_entity','dw_owner', 'loan_pro_chorus_fdw._loan_schedule_roll_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_settings_entity','dw_owner', 'loan_pro_chorus_fdw._loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_setup_entity','dw_owner', 'loan_pro_chorus_fdw._loan_setup_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_sms_queue_item_entity','dw_owner', 'loan_pro_chorus_fdw._loan_sms_queue_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_status_archive','dw_owner', 'loan_pro_chorus_fdw._loan_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_status_archive_current_date_view','dw_owner', 'loan_pro_chorus_fdw._loan_status_archive_current_date_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_status_entity','dw_owner', 'loan_pro_chorus_fdw._loan_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_stop_interest_date_entity','dw_owner', 'loan_pro_chorus_fdw._loan_stop_interest_date_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_sub_status_entity','dw_owner', 'loan_pro_chorus_fdw._loan_sub_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_subportfolio_view','dw_owner', 'loan_pro_chorus_fdw._loan_subportfolio_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_tx','dw_owner', 'loan_pro_chorus_fdw._loan_tx owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_tx_payment_view','dw_owner', 'loan_pro_chorus_fdw._loan_tx_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_loan_yearly_stats_view','dw_owner', 'loan_pro_chorus_fdw._loan_yearly_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_mail_house_delivery_entity','dw_owner', 'loan_pro_chorus_fdw._mail_house_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_mail_house_entity','dw_owner', 'loan_pro_chorus_fdw._mail_house_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_mail_house_loan','dw_owner', 'loan_pro_chorus_fdw._mail_house_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_mail_house_tool_entity','dw_owner', 'loan_pro_chorus_fdw._mail_house_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_mc_processor_extender','dw_owner', 'loan_pro_chorus_fdw._mc_processor_extender owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_my_applications_setting_entity','dw_owner', 'loan_pro_chorus_fdw._my_applications_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_my_loans_setting_entity','dw_owner', 'loan_pro_chorus_fdw._my_loans_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_next_autopay_view','dw_owner', 'loan_pro_chorus_fdw._next_autopay_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_note_category_entity','dw_owner', 'loan_pro_chorus_fdw._note_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_note_entity','dw_owner', 'loan_pro_chorus_fdw._note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_notification_category__delivery','dw_owner', 'loan_pro_chorus_fdw._notification_category__delivery owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_notification_category_entity','dw_owner', 'loan_pro_chorus_fdw._notification_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_notification_dnd_period_entity','dw_owner', 'loan_pro_chorus_fdw._notification_dnd_period_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_notification_entity','dw_owner', 'loan_pro_chorus_fdw._notification_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_page_entity','dw_owner', 'loan_pro_chorus_fdw._page_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_payment__portfolio','dw_owner', 'loan_pro_chorus_fdw._payment__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_payment__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw._payment__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_payment_account_entity','dw_owner', 'loan_pro_chorus_fdw._payment_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_payment_entity','dw_owner', 'loan_pro_chorus_fdw._payment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_payment_info_entity','dw_owner', 'loan_pro_chorus_fdw._payment_info_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_payment_reversed_tx_snapshot','dw_owner', 'loan_pro_chorus_fdw._payment_reversed_tx_snapshot owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_pnm_order_entity','dw_owner', 'loan_pro_chorus_fdw._pnm_order_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_portfolio_category_entity','dw_owner', 'loan_pro_chorus_fdw._portfolio_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_portfolio_entity','dw_owner', 'loan_pro_chorus_fdw._portfolio_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_preconfigured_loan__portfolio','dw_owner', 'loan_pro_chorus_fdw._preconfigured_loan__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_preconfigured_loan__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw._preconfigured_loan__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_preconfigured_loan_entity','dw_owner', 'loan_pro_chorus_fdw._preconfigured_loan_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_preconfigured_loan_settings_entity','dw_owner', 'loan_pro_chorus_fdw._preconfigured_loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_quick_note_entity','dw_owner', 'loan_pro_chorus_fdw._quick_note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_recurring_charge_entity','dw_owner', 'loan_pro_chorus_fdw._recurring_charge_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_report_cache','dw_owner', 'loan_pro_chorus_fdw._report_cache owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_restriction_group__user','dw_owner', 'loan_pro_chorus_fdw._restriction_group__user owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_restriction_group_entity','dw_owner', 'loan_pro_chorus_fdw._restriction_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_restriction_group_entry_archive','dw_owner', 'loan_pro_chorus_fdw._restriction_group_entry_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_restriction_group_entry_entity','dw_owner', 'loan_pro_chorus_fdw._restriction_group_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule__category','dw_owner', 'loan_pro_chorus_fdw._rule__category owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_apd_reset_entity','dw_owner', 'loan_pro_chorus_fdw._rule_applied_apd_reset_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_charge_off_entity','dw_owner', 'loan_pro_chorus_fdw._rule_applied_charge_off_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_checklist_entity','dw_owner', 'loan_pro_chorus_fdw._rule_applied_checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_duedate_entity','dw_owner', 'loan_pro_chorus_fdw._rule_applied_duedate_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_loan_settings_entity','dw_owner', 'loan_pro_chorus_fdw._rule_applied_loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_settings__portfolio','dw_owner', 'loan_pro_chorus_fdw._rule_applied_settings__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_settings__portfolio_to_delete','dw_owner', 'loan_pro_chorus_fdw._rule_applied_settings__portfolio_to_delete owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_settings__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw._rule_applied_settings__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_settings__sub_portfolio_to_delete','dw_owner', 'loan_pro_chorus_fdw._rule_applied_settings__sub_portfolio_to_delete owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_applied_stop_interest_entity','dw_owner', 'loan_pro_chorus_fdw._rule_applied_stop_interest_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_category_entity','dw_owner', 'loan_pro_chorus_fdw._rule_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_rule_entity','dw_owner', 'loan_pro_chorus_fdw._rule_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sample_entity','dw_owner', 'loan_pro_chorus_fdw._sample_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_saved_search_entity','dw_owner', 'loan_pro_chorus_fdw._saved_search_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sbt_dnd_periods','dw_owner', 'loan_pro_chorus_fdw._sbt_dnd_periods owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sbt_message_log','dw_owner', 'loan_pro_chorus_fdw._sbt_message_log owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sbt_template_mapping','dw_owner', 'loan_pro_chorus_fdw._sbt_template_mapping owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_schedule_roll_template_entity','dw_owner', 'loan_pro_chorus_fdw._schedule_roll_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_schedule_template_lines_entity','dw_owner', 'loan_pro_chorus_fdw._schedule_template_lines_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_scheduled_action_entity','dw_owner', 'loan_pro_chorus_fdw._scheduled_action_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_scheduled_report_entity','dw_owner', 'loan_pro_chorus_fdw._scheduled_report_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_schema_version','dw_owner', 'loan_pro_chorus_fdw._schema_version owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_search_index_error_log','dw_owner', 'loan_pro_chorus_fdw._search_index_error_log owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_search_restriction_group_entity','dw_owner', 'loan_pro_chorus_fdw._search_restriction_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_search_restriction_setting_entity','dw_owner', 'loan_pro_chorus_fdw._search_restriction_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_security_group','dw_owner', 'loan_pro_chorus_fdw._security_group owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_security_group__user','dw_owner', 'loan_pro_chorus_fdw._security_group__user owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_shortcut_set_entity','dw_owner', 'loan_pro_chorus_fdw._shortcut_set_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sms_delivery_entity','dw_owner', 'loan_pro_chorus_fdw._sms_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sms_trigger_entity','dw_owner', 'loan_pro_chorus_fdw._sms_trigger_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sound_group_entity','dw_owner', 'loan_pro_chorus_fdw._sound_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sound_group_item_entity','dw_owner', 'loan_pro_chorus_fdw._sound_group_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_source_company_entity','dw_owner', 'loan_pro_chorus_fdw._source_company_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_special_report_entity','dw_owner', 'loan_pro_chorus_fdw._special_report_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_stoplight_entity','dw_owner', 'loan_pro_chorus_fdw._stoplight_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_sub_portfolio_entity','dw_owner', 'loan_pro_chorus_fdw._sub_portfolio_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_support_transaction__topic','dw_owner', 'loan_pro_chorus_fdw._support_transaction__topic owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_support_transaction_entity','dw_owner', 'loan_pro_chorus_fdw._support_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_system_note_entity','dw_owner', 'loan_pro_chorus_fdw._system_note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tcn_campaign_entity','dw_owner', 'loan_pro_chorus_fdw._tcn_campaign_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tcn_queue_item_entity','dw_owner', 'loan_pro_chorus_fdw._tcn_queue_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tenant_backup_log_entity','dw_owner', 'loan_pro_chorus_fdw._tenant_backup_log_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tenant_bulk_purchase_entity','dw_owner', 'loan_pro_chorus_fdw._tenant_bulk_purchase_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tenant_checklist_category_entity','dw_owner', 'loan_pro_chorus_fdw._tenant_checklist_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tenant_checklist_entity','dw_owner', 'loan_pro_chorus_fdw._tenant_checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tenant_plugins_contract_entity','dw_owner', 'loan_pro_chorus_fdw._tenant_plugins_contract_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tenant_pricing_tier_entity','dw_owner', 'loan_pro_chorus_fdw._tenant_pricing_tier_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_tenant_setting__entity','dw_owner', 'loan_pro_chorus_fdw._tenant_setting__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_testimonial_entity','dw_owner', 'loan_pro_chorus_fdw._testimonial_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_time_slot_entity','dw_owner', 'loan_pro_chorus_fdw._time_slot_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_topic_entity','dw_owner', 'loan_pro_chorus_fdw._topic_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_total_advancements','dw_owner', 'loan_pro_chorus_fdw._total_advancements owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_total_credits_view','dw_owner', 'loan_pro_chorus_fdw._total_credits_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_transaction_entity','dw_owner', 'loan_pro_chorus_fdw._transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_user__delivery','dw_owner', 'loan_pro_chorus_fdw._user__delivery owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_user_chart_settings_entity','dw_owner', 'loan_pro_chorus_fdw._user_chart_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_user_search_settings_entity','dw_owner', 'loan_pro_chorus_fdw._user_search_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_user_tenant_configuration','dw_owner', 'loan_pro_chorus_fdw._user_tenant_configuration owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_vendor_entity','dw_owner', 'loan_pro_chorus_fdw._vendor_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_view_module_entity','dw_owner', 'loan_pro_chorus_fdw._view_module_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_view_template__view_module','dw_owner', 'loan_pro_chorus_fdw._view_template__view_module owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_view_template_entity','dw_owner', 'loan_pro_chorus_fdw._view_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_view_widget_entity','dw_owner', 'loan_pro_chorus_fdw._view_widget_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_web_delivery_entity','dw_owner', 'loan_pro_chorus_fdw._web_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_fdw','_work_item__questions','dw_owner', 'loan_pro_chorus_fdw._work_item__questions owner is dw_owner');
SELECT views_are('loan_pro_chorus_fdw', ARRAY[
    '_system_note_customer_email',
    'ach_return_code_action_entity',
    'address_entity',
    'admin_tool__loan',
    'admin_tool_entity',
    'advance_category_entity',
    'all_cust_info_view',
    'bank_account_entity',
    'billing_tool__loan',
    'billing_tool_entity',
    'bracket_entity',
    'bracket_item_entity',
    'cash_drawer__payment_method',
    'cash_drawer_entity',
    'cash_drawer_transaction_entity',
    'cash_drawer_tx_category_entity',
    'charge_entity',
    'checking_account_entity',
    'checklist_entity',
    'checklist_item__entity',
    'checklist_item_entity',
    'collateral_entity',
    'collateral_field_entity',
    'collection',
    'collection_item',
    'collector_queue__loan',
    'collector_queue_entity',
    'collector_queue_question_entity',
    'collector_queue_work_item_entity',
    'comment_thread_comments',
    'comment_thread_topics',
    'computation_field_entity',
    'contract_signer_entity',
    'credit_breakdown_report',
    'credit_card_entity',
    'credit_category_entity',
    'credit_report_history',
    'credit_report_queue',
    'credit_report_view',
    'curtailment_template_entity',
    'curtailment_template_lines_entity',
    'custom_billing_template_entity',
    'custom_billing_theme_entity',
    'custom_boarding_process_entity',
    'custom_boarding_process_step_entity',
    'custom_charge_type_entity',
    'custom_field',
    'custom_field__entity',
    'custom_form_entity',
    'custom_form_section_entity',
    'custom_form_tool__loan',
    'custom_form_tool_entity',
    'custom_payment_method_entity',
    'custom_payment_type_entity',
    'customer_credit_score_entity',
    'customer_document_entity',
    'customer_employer_entity',
    'customer_entity',
    'customer_login_attempts',
    'customer_payment_method_entity',
    'customer_phone_entity',
    'customer_reference_entity',
    'customer_social_profile_entity',
    'customer_status_entity',
    'data_dump_entity',
    'data_import_entity',
    'default_billing_options_entity',
    'default_billing_template_entity',
    'default_billing_theme_entity',
    'defaults_autopay',
    'defaults_charges',
    'defaults_escrow_calculator',
    'defaults_late_fee__buckets',
    'defaults_payments',
    'defaults_system_loan',
    'defaults_user_loan',
    'delivery_entity',
    'disbursement_entity',
    'doc_section_entity',
    'due_to_date_view',
    'email_delivery_entity',
    'email_queue',
    'email_template_entity',
    'email_tool__loan',
    'email_tool_entity',
    'email_trigger_entity',
    'escrow__transactions',
    'escrow_adjustment_entity',
    'escrow_analysis_process_entity',
    'escrow_analysis_task_entity',
    'escrow_calculator_entity',
    'escrow_subset_entity',
    'escrow_subset_options_entity',
    'escrow_subset_options_entity_backup',
    'escrow_transaction_entity',
    'escrow_tx_category_entity',
    'faq_entry_entity',
    'file_attachment_entity',
    'first_loan_payment_transaction_view',
    'flag_entity',
    'flag_status_archive',
    'form_section_entity',
    'gps_link_entity',
    'history_funding_report_view',
    'holding_account__investor',
    'holding_account_archive_entity',
    'holding_account_autopay_entity',
    'holding_account_category_entity',
    'holding_account_settings_entity',
    'holding_account_status_entity',
    'holding_account_sub_status_entity',
    'holding_account_transaction_category_entity',
    'holding_account_transaction_entity',
    'homepage_image_entity',
    'investment__portfolio',
    'investment__sub_portfolio',
    'investment_document_entity',
    'investment_entity',
    'investment_position_entity',
    'investor_document_entity',
    'investor_entity',
    'investor_status_entity',
    'iprestriction_entity',
    'iprestriction_entry_entity',
    'last_loan_payment_transaction_view',
    'link_entity',
    'linked_info__entity',
    'linked_loan__entity',
    'linked_loan_option_entity',
    'loan__customer',
    'loan__portfolio',
    'loan__recurrent_charge',
    'loan__rule_applied_apd_reset',
    'loan__rule_applied_charge_off',
    'loan__rule_applied_checklist',
    'loan__rule_applied_duedate',
    'loan__rule_applied_settings',
    'loan__rule_applied_stop_interest',
    'loan__sub_portfolio',
    'loan_active_time_tx',
    'loan_advancement_entity',
    'loan_apd_adjustment_entity',
    'loan_autopay_entity',
    'loan_autopay_entity_old',
    'loan_chargeoff__transactions',
    'loan_chargeoff_entity',
    'loan_collected_stats_view',
    'loan_credit_entity',
    'loan_curtail_date_entity',
    'loan_delinquency_history_entity',
    'loan_document_entity',
    'loan_dpd_adjustment_entity',
    'loan_duedate_change_entity',
    'loan_entity',
    'loan_escrow_tx_view',
    'loan_funding_entity',
    'loan_future_stats_view',
    'loan_insurance_entity',
    'loan_last_payment_view',
    'loan_late_fee__buckets',
    'loan_modification_entity',
    'loan_next_forecast_payment_view',
    'loan_next_scheduled_payment_view',
    'loan_past_stats_view',
    'loan_payment_seq',
    'loan_portfolio_view',
    'loan_promise_entity',
    'loan_reverse_calc_settings',
    'loan_reverse_status_archive',
    'loan_schedule_payments_view',
    'loan_schedule_roll_entity',
    'loan_settings_entity',
    'loan_setup_entity',
    'loan_sms_queue_item_entity',
    'loan_status_archive',
    'loan_status_archive_current_date_view',
    'loan_status_entity',
    'loan_stop_interest_date_entity',
    'loan_sub_status_entity',
    'loan_subportfolio_view',
    'loan_tx',
    'loan_tx_payment_view',
    'loan_yearly_stats_view',
    'mail_house_delivery_entity',
    'mail_house_entity',
    'mail_house_loan',
    'mail_house_tool_entity',
    'mc_processor_extender',
    'my_applications_setting_entity',
    'my_loans_setting_entity',
    'next_autopay_view',
    'note_category_entity',
    'note_entity',
    'notification_category__delivery',
    'notification_category_entity',
    'notification_dnd_period_entity',
    'notification_entity',
    'page_entity',
    'payment__portfolio',
    'payment__sub_portfolio',
    'payment_account_entity',
    'payment_entity',
    'payment_info_entity',
    'payment_receipt_select_small_v',
    'payment_receipt_select_v',
    'payment_reversed_tx_snapshot',
    'pnm_order_entity',
    'portfolio_category_entity',
    'portfolio_entity',
    'preconfigured_loan__portfolio',
    'preconfigured_loan__sub_portfolio',
    'preconfigured_loan_entity',
    'preconfigured_loan_settings_entity',
    'quick_note_entity',
    'recurring_charge_entity',
    'report_cache',
    'restriction_group__user',
    'restriction_group_entity',
    'restriction_group_entry_archive',
    'restriction_group_entry_entity',
    'rule__category',
    'rule_applied_apd_reset_entity',
    'rule_applied_charge_off_entity',
    'rule_applied_checklist_entity',
    'rule_applied_duedate_entity',
    'rule_applied_loan_settings_entity',
    'rule_applied_settings__portfolio',
    'rule_applied_settings__portfolio_to_delete',
    'rule_applied_settings__sub_portfolio',
    'rule_applied_settings__sub_portfolio_to_delete',
    'rule_applied_stop_interest_entity',
    'rule_category_entity',
    'rule_entity',
    'sample_entity',
    'saved_search_entity',
    'sbt_dnd_periods',
    'sbt_message_log',
    'sbt_template_mapping',
    'schedule_roll_template_entity',
    'schedule_template_lines_entity',
    'scheduled_action_entity',
    'scheduled_report_entity',
    'schema_version',
    'search_index_error_log',
    'search_restriction_group_entity',
    'search_restriction_setting_entity',
    'security_group',
    'security_group__user',
    'shortcut_set_entity',
    'sms_delivery_entity',
    'sms_trigger_entity',
    'sound_group_entity',
    'sound_group_item_entity',
    'source_company_entity',
    'special_report_entity',
    'stoplight_entity',
    'sub_portfolio_entity',
    'support_transaction__topic',
    'support_transaction_entity',
    'system_note_entity',
    'tcn_campaign_entity',
    'tcn_queue_item_entity',
    'tenant_backup_log_entity',
    'tenant_bulk_purchase_entity',
    'tenant_checklist_category_entity',
    'tenant_checklist_entity',
    'tenant_plugins_contract_entity',
    'tenant_pricing_tier_entity',
    'tenant_setting__entity',
    'testimonial_entity',
    'time_slot_entity',
    'topic_entity',
    'total_advancements',
    'total_credits_view',
    'transaction_entity',
    'user__delivery',
    'user_chart_settings_entity',
    'user_search_settings_entity',
    'user_tenant_configuration',
    'vendor_entity',
    'view_module_entity',
    'view_template__view_module',
    'view_template_entity',
    'view_widget_entity',
    'web_delivery_entity',
    'work_item__questions'
]);

SELECT view_owner_is('loan_pro_chorus_fdw','_system_note_customer_email','dw_owner', 'loan_pro_chorus_fdw._system_note_customer_email owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','ach_return_code_action_entity','dw_owner', 'loan_pro_chorus_fdw.ach_return_code_action_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','address_entity','dw_owner', 'loan_pro_chorus_fdw.address_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','admin_tool__loan','dw_owner', 'loan_pro_chorus_fdw.admin_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','admin_tool_entity','dw_owner', 'loan_pro_chorus_fdw.admin_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','advance_category_entity','dw_owner', 'loan_pro_chorus_fdw.advance_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','all_cust_info_view','dw_owner', 'loan_pro_chorus_fdw.all_cust_info_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','bank_account_entity','dw_owner', 'loan_pro_chorus_fdw.bank_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','billing_tool__loan','dw_owner', 'loan_pro_chorus_fdw.billing_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','billing_tool_entity','dw_owner', 'loan_pro_chorus_fdw.billing_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','bracket_entity','dw_owner', 'loan_pro_chorus_fdw.bracket_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','bracket_item_entity','dw_owner', 'loan_pro_chorus_fdw.bracket_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','cash_drawer__payment_method','dw_owner', 'loan_pro_chorus_fdw.cash_drawer__payment_method owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','cash_drawer_entity','dw_owner', 'loan_pro_chorus_fdw.cash_drawer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','cash_drawer_transaction_entity','dw_owner', 'loan_pro_chorus_fdw.cash_drawer_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','cash_drawer_tx_category_entity','dw_owner', 'loan_pro_chorus_fdw.cash_drawer_tx_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','charge_entity','dw_owner', 'loan_pro_chorus_fdw.charge_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','checking_account_entity','dw_owner', 'loan_pro_chorus_fdw.checking_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','checklist_entity','dw_owner', 'loan_pro_chorus_fdw.checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','checklist_item__entity','dw_owner', 'loan_pro_chorus_fdw.checklist_item__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','checklist_item_entity','dw_owner', 'loan_pro_chorus_fdw.checklist_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','collateral_entity','dw_owner', 'loan_pro_chorus_fdw.collateral_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','collateral_field_entity','dw_owner', 'loan_pro_chorus_fdw.collateral_field_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','collection','dw_owner', 'loan_pro_chorus_fdw.collection owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','collection_item','dw_owner', 'loan_pro_chorus_fdw.collection_item owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','collector_queue__loan','dw_owner', 'loan_pro_chorus_fdw.collector_queue__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','collector_queue_entity','dw_owner', 'loan_pro_chorus_fdw.collector_queue_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','collector_queue_question_entity','dw_owner', 'loan_pro_chorus_fdw.collector_queue_question_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','collector_queue_work_item_entity','dw_owner', 'loan_pro_chorus_fdw.collector_queue_work_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','comment_thread_comments','dw_owner', 'loan_pro_chorus_fdw.comment_thread_comments owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','comment_thread_topics','dw_owner', 'loan_pro_chorus_fdw.comment_thread_topics owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','computation_field_entity','dw_owner', 'loan_pro_chorus_fdw.computation_field_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','contract_signer_entity','dw_owner', 'loan_pro_chorus_fdw.contract_signer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','credit_breakdown_report','dw_owner', 'loan_pro_chorus_fdw.credit_breakdown_report owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','credit_card_entity','dw_owner', 'loan_pro_chorus_fdw.credit_card_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','credit_category_entity','dw_owner', 'loan_pro_chorus_fdw.credit_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','credit_report_history','dw_owner', 'loan_pro_chorus_fdw.credit_report_history owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','credit_report_queue','dw_owner', 'loan_pro_chorus_fdw.credit_report_queue owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','credit_report_view','dw_owner', 'loan_pro_chorus_fdw.credit_report_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','curtailment_template_entity','dw_owner', 'loan_pro_chorus_fdw.curtailment_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','curtailment_template_lines_entity','dw_owner', 'loan_pro_chorus_fdw.curtailment_template_lines_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_billing_template_entity','dw_owner', 'loan_pro_chorus_fdw.custom_billing_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_billing_theme_entity','dw_owner', 'loan_pro_chorus_fdw.custom_billing_theme_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_boarding_process_entity','dw_owner', 'loan_pro_chorus_fdw.custom_boarding_process_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_boarding_process_step_entity','dw_owner', 'loan_pro_chorus_fdw.custom_boarding_process_step_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_charge_type_entity','dw_owner', 'loan_pro_chorus_fdw.custom_charge_type_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_field','dw_owner', 'loan_pro_chorus_fdw.custom_field owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_field__entity','dw_owner', 'loan_pro_chorus_fdw.custom_field__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_form_entity','dw_owner', 'loan_pro_chorus_fdw.custom_form_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_form_section_entity','dw_owner', 'loan_pro_chorus_fdw.custom_form_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_form_tool__loan','dw_owner', 'loan_pro_chorus_fdw.custom_form_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_form_tool_entity','dw_owner', 'loan_pro_chorus_fdw.custom_form_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_payment_method_entity','dw_owner', 'loan_pro_chorus_fdw.custom_payment_method_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','custom_payment_type_entity','dw_owner', 'loan_pro_chorus_fdw.custom_payment_type_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_credit_score_entity','dw_owner', 'loan_pro_chorus_fdw.customer_credit_score_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_document_entity','dw_owner', 'loan_pro_chorus_fdw.customer_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_employer_entity','dw_owner', 'loan_pro_chorus_fdw.customer_employer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_entity','dw_owner', 'loan_pro_chorus_fdw.customer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_login_attempts','dw_owner', 'loan_pro_chorus_fdw.customer_login_attempts owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_payment_method_entity','dw_owner', 'loan_pro_chorus_fdw.customer_payment_method_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_phone_entity','dw_owner', 'loan_pro_chorus_fdw.customer_phone_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_reference_entity','dw_owner', 'loan_pro_chorus_fdw.customer_reference_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_social_profile_entity','dw_owner', 'loan_pro_chorus_fdw.customer_social_profile_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','customer_status_entity','dw_owner', 'loan_pro_chorus_fdw.customer_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','data_dump_entity','dw_owner', 'loan_pro_chorus_fdw.data_dump_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','data_import_entity','dw_owner', 'loan_pro_chorus_fdw.data_import_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','default_billing_options_entity','dw_owner', 'loan_pro_chorus_fdw.default_billing_options_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','default_billing_template_entity','dw_owner', 'loan_pro_chorus_fdw.default_billing_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','default_billing_theme_entity','dw_owner', 'loan_pro_chorus_fdw.default_billing_theme_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','defaults_autopay','dw_owner', 'loan_pro_chorus_fdw.defaults_autopay owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','defaults_charges','dw_owner', 'loan_pro_chorus_fdw.defaults_charges owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','defaults_escrow_calculator','dw_owner', 'loan_pro_chorus_fdw.defaults_escrow_calculator owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','defaults_late_fee__buckets','dw_owner', 'loan_pro_chorus_fdw.defaults_late_fee__buckets owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','defaults_payments','dw_owner', 'loan_pro_chorus_fdw.defaults_payments owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','defaults_system_loan','dw_owner', 'loan_pro_chorus_fdw.defaults_system_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','defaults_user_loan','dw_owner', 'loan_pro_chorus_fdw.defaults_user_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','delivery_entity','dw_owner', 'loan_pro_chorus_fdw.delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','disbursement_entity','dw_owner', 'loan_pro_chorus_fdw.disbursement_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','doc_section_entity','dw_owner', 'loan_pro_chorus_fdw.doc_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','due_to_date_view','dw_owner', 'loan_pro_chorus_fdw.due_to_date_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','email_delivery_entity','dw_owner', 'loan_pro_chorus_fdw.email_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','email_queue','dw_owner', 'loan_pro_chorus_fdw.email_queue owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','email_template_entity','dw_owner', 'loan_pro_chorus_fdw.email_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','email_tool__loan','dw_owner', 'loan_pro_chorus_fdw.email_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','email_tool_entity','dw_owner', 'loan_pro_chorus_fdw.email_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','email_trigger_entity','dw_owner', 'loan_pro_chorus_fdw.email_trigger_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow__transactions','dw_owner', 'loan_pro_chorus_fdw.escrow__transactions owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_adjustment_entity','dw_owner', 'loan_pro_chorus_fdw.escrow_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_analysis_process_entity','dw_owner', 'loan_pro_chorus_fdw.escrow_analysis_process_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_analysis_task_entity','dw_owner', 'loan_pro_chorus_fdw.escrow_analysis_task_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_calculator_entity','dw_owner', 'loan_pro_chorus_fdw.escrow_calculator_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_subset_entity','dw_owner', 'loan_pro_chorus_fdw.escrow_subset_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_subset_options_entity','dw_owner', 'loan_pro_chorus_fdw.escrow_subset_options_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_subset_options_entity_backup','dw_owner', 'loan_pro_chorus_fdw.escrow_subset_options_entity_backup owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_transaction_entity','dw_owner', 'loan_pro_chorus_fdw.escrow_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','escrow_tx_category_entity','dw_owner', 'loan_pro_chorus_fdw.escrow_tx_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','faq_entry_entity','dw_owner', 'loan_pro_chorus_fdw.faq_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','file_attachment_entity','dw_owner', 'loan_pro_chorus_fdw.file_attachment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','first_loan_payment_transaction_view','dw_owner', 'loan_pro_chorus_fdw.first_loan_payment_transaction_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','flag_entity','dw_owner', 'loan_pro_chorus_fdw.flag_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','flag_status_archive','dw_owner', 'loan_pro_chorus_fdw.flag_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','form_section_entity','dw_owner', 'loan_pro_chorus_fdw.form_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','gps_link_entity','dw_owner', 'loan_pro_chorus_fdw.gps_link_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','history_funding_report_view','dw_owner', 'loan_pro_chorus_fdw.history_funding_report_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account__investor','dw_owner', 'loan_pro_chorus_fdw.holding_account__investor owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account_archive_entity','dw_owner', 'loan_pro_chorus_fdw.holding_account_archive_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account_autopay_entity','dw_owner', 'loan_pro_chorus_fdw.holding_account_autopay_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account_category_entity','dw_owner', 'loan_pro_chorus_fdw.holding_account_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account_settings_entity','dw_owner', 'loan_pro_chorus_fdw.holding_account_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account_status_entity','dw_owner', 'loan_pro_chorus_fdw.holding_account_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account_sub_status_entity','dw_owner', 'loan_pro_chorus_fdw.holding_account_sub_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account_transaction_category_entity','dw_owner', 'loan_pro_chorus_fdw.holding_account_transaction_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','holding_account_transaction_entity','dw_owner', 'loan_pro_chorus_fdw.holding_account_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','homepage_image_entity','dw_owner', 'loan_pro_chorus_fdw.homepage_image_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','investment__portfolio','dw_owner', 'loan_pro_chorus_fdw.investment__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','investment__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw.investment__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','investment_document_entity','dw_owner', 'loan_pro_chorus_fdw.investment_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','investment_entity','dw_owner', 'loan_pro_chorus_fdw.investment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','investment_position_entity','dw_owner', 'loan_pro_chorus_fdw.investment_position_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','investor_document_entity','dw_owner', 'loan_pro_chorus_fdw.investor_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','investor_entity','dw_owner', 'loan_pro_chorus_fdw.investor_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','investor_status_entity','dw_owner', 'loan_pro_chorus_fdw.investor_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','iprestriction_entity','dw_owner', 'loan_pro_chorus_fdw.iprestriction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','iprestriction_entry_entity','dw_owner', 'loan_pro_chorus_fdw.iprestriction_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','last_loan_payment_transaction_view','dw_owner', 'loan_pro_chorus_fdw.last_loan_payment_transaction_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','link_entity','dw_owner', 'loan_pro_chorus_fdw.link_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','linked_info__entity','dw_owner', 'loan_pro_chorus_fdw.linked_info__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','linked_loan__entity','dw_owner', 'loan_pro_chorus_fdw.linked_loan__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','linked_loan_option_entity','dw_owner', 'loan_pro_chorus_fdw.linked_loan_option_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__customer','dw_owner', 'loan_pro_chorus_fdw.loan__customer owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__portfolio','dw_owner', 'loan_pro_chorus_fdw.loan__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__recurrent_charge','dw_owner', 'loan_pro_chorus_fdw.loan__recurrent_charge owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__rule_applied_apd_reset','dw_owner', 'loan_pro_chorus_fdw.loan__rule_applied_apd_reset owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__rule_applied_charge_off','dw_owner', 'loan_pro_chorus_fdw.loan__rule_applied_charge_off owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__rule_applied_checklist','dw_owner', 'loan_pro_chorus_fdw.loan__rule_applied_checklist owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__rule_applied_duedate','dw_owner', 'loan_pro_chorus_fdw.loan__rule_applied_duedate owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__rule_applied_settings','dw_owner', 'loan_pro_chorus_fdw.loan__rule_applied_settings owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__rule_applied_stop_interest','dw_owner', 'loan_pro_chorus_fdw.loan__rule_applied_stop_interest owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw.loan__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_active_time_tx','dw_owner', 'loan_pro_chorus_fdw.loan_active_time_tx owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_advancement_entity','dw_owner', 'loan_pro_chorus_fdw.loan_advancement_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_apd_adjustment_entity','dw_owner', 'loan_pro_chorus_fdw.loan_apd_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_autopay_entity','dw_owner', 'loan_pro_chorus_fdw.loan_autopay_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_autopay_entity_old','dw_owner', 'loan_pro_chorus_fdw.loan_autopay_entity_old owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_chargeoff__transactions','dw_owner', 'loan_pro_chorus_fdw.loan_chargeoff__transactions owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_chargeoff_entity','dw_owner', 'loan_pro_chorus_fdw.loan_chargeoff_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_collected_stats_view','dw_owner', 'loan_pro_chorus_fdw.loan_collected_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_credit_entity','dw_owner', 'loan_pro_chorus_fdw.loan_credit_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_curtail_date_entity','dw_owner', 'loan_pro_chorus_fdw.loan_curtail_date_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_delinquency_history_entity','dw_owner', 'loan_pro_chorus_fdw.loan_delinquency_history_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_document_entity','dw_owner', 'loan_pro_chorus_fdw.loan_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_dpd_adjustment_entity','dw_owner', 'loan_pro_chorus_fdw.loan_dpd_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_duedate_change_entity','dw_owner', 'loan_pro_chorus_fdw.loan_duedate_change_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_entity','dw_owner', 'loan_pro_chorus_fdw.loan_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_escrow_tx_view','dw_owner', 'loan_pro_chorus_fdw.loan_escrow_tx_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_funding_entity','dw_owner', 'loan_pro_chorus_fdw.loan_funding_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_future_stats_view','dw_owner', 'loan_pro_chorus_fdw.loan_future_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_insurance_entity','dw_owner', 'loan_pro_chorus_fdw.loan_insurance_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_last_payment_view','dw_owner', 'loan_pro_chorus_fdw.loan_last_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_late_fee__buckets','dw_owner', 'loan_pro_chorus_fdw.loan_late_fee__buckets owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_modification_entity','dw_owner', 'loan_pro_chorus_fdw.loan_modification_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_next_forecast_payment_view','dw_owner', 'loan_pro_chorus_fdw.loan_next_forecast_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_next_scheduled_payment_view','dw_owner', 'loan_pro_chorus_fdw.loan_next_scheduled_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_past_stats_view','dw_owner', 'loan_pro_chorus_fdw.loan_past_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_payment_seq','dw_owner', 'loan_pro_chorus_fdw.loan_payment_seq owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_portfolio_view','dw_owner', 'loan_pro_chorus_fdw.loan_portfolio_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_promise_entity','dw_owner', 'loan_pro_chorus_fdw.loan_promise_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_reverse_calc_settings','dw_owner', 'loan_pro_chorus_fdw.loan_reverse_calc_settings owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_reverse_status_archive','dw_owner', 'loan_pro_chorus_fdw.loan_reverse_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_schedule_payments_view','dw_owner', 'loan_pro_chorus_fdw.loan_schedule_payments_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_schedule_roll_entity','dw_owner', 'loan_pro_chorus_fdw.loan_schedule_roll_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_settings_entity','dw_owner', 'loan_pro_chorus_fdw.loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_setup_entity','dw_owner', 'loan_pro_chorus_fdw.loan_setup_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_sms_queue_item_entity','dw_owner', 'loan_pro_chorus_fdw.loan_sms_queue_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_status_archive','dw_owner', 'loan_pro_chorus_fdw.loan_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_status_archive_current_date_view','dw_owner', 'loan_pro_chorus_fdw.loan_status_archive_current_date_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_status_entity','dw_owner', 'loan_pro_chorus_fdw.loan_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_stop_interest_date_entity','dw_owner', 'loan_pro_chorus_fdw.loan_stop_interest_date_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_sub_status_entity','dw_owner', 'loan_pro_chorus_fdw.loan_sub_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_subportfolio_view','dw_owner', 'loan_pro_chorus_fdw.loan_subportfolio_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_tx','dw_owner', 'loan_pro_chorus_fdw.loan_tx owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_tx_payment_view','dw_owner', 'loan_pro_chorus_fdw.loan_tx_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','loan_yearly_stats_view','dw_owner', 'loan_pro_chorus_fdw.loan_yearly_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','mail_house_delivery_entity','dw_owner', 'loan_pro_chorus_fdw.mail_house_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','mail_house_entity','dw_owner', 'loan_pro_chorus_fdw.mail_house_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','mail_house_loan','dw_owner', 'loan_pro_chorus_fdw.mail_house_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','mail_house_tool_entity','dw_owner', 'loan_pro_chorus_fdw.mail_house_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','mc_processor_extender','dw_owner', 'loan_pro_chorus_fdw.mc_processor_extender owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','my_applications_setting_entity','dw_owner', 'loan_pro_chorus_fdw.my_applications_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','my_loans_setting_entity','dw_owner', 'loan_pro_chorus_fdw.my_loans_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','next_autopay_view','dw_owner', 'loan_pro_chorus_fdw.next_autopay_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','note_category_entity','dw_owner', 'loan_pro_chorus_fdw.note_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','note_entity','dw_owner', 'loan_pro_chorus_fdw.note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','notification_category__delivery','dw_owner', 'loan_pro_chorus_fdw.notification_category__delivery owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','notification_category_entity','dw_owner', 'loan_pro_chorus_fdw.notification_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','notification_dnd_period_entity','dw_owner', 'loan_pro_chorus_fdw.notification_dnd_period_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','notification_entity','dw_owner', 'loan_pro_chorus_fdw.notification_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','page_entity','dw_owner', 'loan_pro_chorus_fdw.page_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','payment__portfolio','dw_owner', 'loan_pro_chorus_fdw.payment__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','payment__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw.payment__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','payment_account_entity','dw_owner', 'loan_pro_chorus_fdw.payment_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','payment_entity','dw_owner', 'loan_pro_chorus_fdw.payment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','payment_info_entity','dw_owner', 'loan_pro_chorus_fdw.payment_info_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','payment_receipt_select_small_v','dw_owner', 'loan_pro_chorus_fdw.payment_receipt_select_small_v owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','payment_receipt_select_v','dw_owner', 'loan_pro_chorus_fdw.payment_receipt_select_v owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','payment_reversed_tx_snapshot','dw_owner', 'loan_pro_chorus_fdw.payment_reversed_tx_snapshot owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','pnm_order_entity','dw_owner', 'loan_pro_chorus_fdw.pnm_order_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','portfolio_category_entity','dw_owner', 'loan_pro_chorus_fdw.portfolio_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','portfolio_entity','dw_owner', 'loan_pro_chorus_fdw.portfolio_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','preconfigured_loan__portfolio','dw_owner', 'loan_pro_chorus_fdw.preconfigured_loan__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','preconfigured_loan__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw.preconfigured_loan__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','preconfigured_loan_entity','dw_owner', 'loan_pro_chorus_fdw.preconfigured_loan_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','preconfigured_loan_settings_entity','dw_owner', 'loan_pro_chorus_fdw.preconfigured_loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','quick_note_entity','dw_owner', 'loan_pro_chorus_fdw.quick_note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','recurring_charge_entity','dw_owner', 'loan_pro_chorus_fdw.recurring_charge_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','report_cache','dw_owner', 'loan_pro_chorus_fdw.report_cache owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','restriction_group__user','dw_owner', 'loan_pro_chorus_fdw.restriction_group__user owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','restriction_group_entity','dw_owner', 'loan_pro_chorus_fdw.restriction_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','restriction_group_entry_archive','dw_owner', 'loan_pro_chorus_fdw.restriction_group_entry_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','restriction_group_entry_entity','dw_owner', 'loan_pro_chorus_fdw.restriction_group_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule__category','dw_owner', 'loan_pro_chorus_fdw.rule__category owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_apd_reset_entity','dw_owner', 'loan_pro_chorus_fdw.rule_applied_apd_reset_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_charge_off_entity','dw_owner', 'loan_pro_chorus_fdw.rule_applied_charge_off_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_checklist_entity','dw_owner', 'loan_pro_chorus_fdw.rule_applied_checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_duedate_entity','dw_owner', 'loan_pro_chorus_fdw.rule_applied_duedate_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_loan_settings_entity','dw_owner', 'loan_pro_chorus_fdw.rule_applied_loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_settings__portfolio','dw_owner', 'loan_pro_chorus_fdw.rule_applied_settings__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_settings__portfolio_to_delete','dw_owner', 'loan_pro_chorus_fdw.rule_applied_settings__portfolio_to_delete owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_settings__sub_portfolio','dw_owner', 'loan_pro_chorus_fdw.rule_applied_settings__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_settings__sub_portfolio_to_delete','dw_owner', 'loan_pro_chorus_fdw.rule_applied_settings__sub_portfolio_to_delete owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_applied_stop_interest_entity','dw_owner', 'loan_pro_chorus_fdw.rule_applied_stop_interest_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_category_entity','dw_owner', 'loan_pro_chorus_fdw.rule_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','rule_entity','dw_owner', 'loan_pro_chorus_fdw.rule_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sample_entity','dw_owner', 'loan_pro_chorus_fdw.sample_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','saved_search_entity','dw_owner', 'loan_pro_chorus_fdw.saved_search_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sbt_dnd_periods','dw_owner', 'loan_pro_chorus_fdw.sbt_dnd_periods owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sbt_message_log','dw_owner', 'loan_pro_chorus_fdw.sbt_message_log owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sbt_template_mapping','dw_owner', 'loan_pro_chorus_fdw.sbt_template_mapping owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','schedule_roll_template_entity','dw_owner', 'loan_pro_chorus_fdw.schedule_roll_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','schedule_template_lines_entity','dw_owner', 'loan_pro_chorus_fdw.schedule_template_lines_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','scheduled_action_entity','dw_owner', 'loan_pro_chorus_fdw.scheduled_action_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','scheduled_report_entity','dw_owner', 'loan_pro_chorus_fdw.scheduled_report_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','schema_version','dw_owner', 'loan_pro_chorus_fdw.schema_version owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','search_index_error_log','dw_owner', 'loan_pro_chorus_fdw.search_index_error_log owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','search_restriction_group_entity','dw_owner', 'loan_pro_chorus_fdw.search_restriction_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','search_restriction_setting_entity','dw_owner', 'loan_pro_chorus_fdw.search_restriction_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','security_group','dw_owner', 'loan_pro_chorus_fdw.security_group owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','security_group__user','dw_owner', 'loan_pro_chorus_fdw.security_group__user owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','shortcut_set_entity','dw_owner', 'loan_pro_chorus_fdw.shortcut_set_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sms_delivery_entity','dw_owner', 'loan_pro_chorus_fdw.sms_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sms_trigger_entity','dw_owner', 'loan_pro_chorus_fdw.sms_trigger_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sound_group_entity','dw_owner', 'loan_pro_chorus_fdw.sound_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sound_group_item_entity','dw_owner', 'loan_pro_chorus_fdw.sound_group_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','source_company_entity','dw_owner', 'loan_pro_chorus_fdw.source_company_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','special_report_entity','dw_owner', 'loan_pro_chorus_fdw.special_report_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','stoplight_entity','dw_owner', 'loan_pro_chorus_fdw.stoplight_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','sub_portfolio_entity','dw_owner', 'loan_pro_chorus_fdw.sub_portfolio_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','support_transaction__topic','dw_owner', 'loan_pro_chorus_fdw.support_transaction__topic owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','support_transaction_entity','dw_owner', 'loan_pro_chorus_fdw.support_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','system_note_entity','dw_owner', 'loan_pro_chorus_fdw.system_note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tcn_campaign_entity','dw_owner', 'loan_pro_chorus_fdw.tcn_campaign_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tcn_queue_item_entity','dw_owner', 'loan_pro_chorus_fdw.tcn_queue_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tenant_backup_log_entity','dw_owner', 'loan_pro_chorus_fdw.tenant_backup_log_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tenant_bulk_purchase_entity','dw_owner', 'loan_pro_chorus_fdw.tenant_bulk_purchase_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tenant_checklist_category_entity','dw_owner', 'loan_pro_chorus_fdw.tenant_checklist_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tenant_checklist_entity','dw_owner', 'loan_pro_chorus_fdw.tenant_checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tenant_plugins_contract_entity','dw_owner', 'loan_pro_chorus_fdw.tenant_plugins_contract_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tenant_pricing_tier_entity','dw_owner', 'loan_pro_chorus_fdw.tenant_pricing_tier_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','tenant_setting__entity','dw_owner', 'loan_pro_chorus_fdw.tenant_setting__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','testimonial_entity','dw_owner', 'loan_pro_chorus_fdw.testimonial_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','time_slot_entity','dw_owner', 'loan_pro_chorus_fdw.time_slot_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','topic_entity','dw_owner', 'loan_pro_chorus_fdw.topic_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','total_advancements','dw_owner', 'loan_pro_chorus_fdw.total_advancements owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','total_credits_view','dw_owner', 'loan_pro_chorus_fdw.total_credits_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','transaction_entity','dw_owner', 'loan_pro_chorus_fdw.transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','user__delivery','dw_owner', 'loan_pro_chorus_fdw.user__delivery owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','user_chart_settings_entity','dw_owner', 'loan_pro_chorus_fdw.user_chart_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','user_search_settings_entity','dw_owner', 'loan_pro_chorus_fdw.user_search_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','user_tenant_configuration','dw_owner', 'loan_pro_chorus_fdw.user_tenant_configuration owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','vendor_entity','dw_owner', 'loan_pro_chorus_fdw.vendor_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','view_module_entity','dw_owner', 'loan_pro_chorus_fdw.view_module_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','view_template__view_module','dw_owner', 'loan_pro_chorus_fdw.view_template__view_module owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','view_template_entity','dw_owner', 'loan_pro_chorus_fdw.view_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','view_widget_entity','dw_owner', 'loan_pro_chorus_fdw.view_widget_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','web_delivery_entity','dw_owner', 'loan_pro_chorus_fdw.web_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_fdw','work_item__questions','dw_owner', 'loan_pro_chorus_fdw.work_item__questions owner is dw_owner');
SELECT foreign_tables_are('loan_pro_chorus_sandbox', ARRAY[
    '_ach_return_code_action_entity',
    '_address_entity',
    '_admin_tool__loan',
    '_admin_tool_entity',
    '_advance_category_entity',
    '_all_cust_info_view',
    '_bank_account_entity',
    '_billing_tool__loan',
    '_billing_tool_entity',
    '_bracket_entity',
    '_bracket_item_entity',
    '_cash_drawer__payment_method',
    '_cash_drawer_entity',
    '_cash_drawer_transaction_entity',
    '_cash_drawer_tx_category_entity',
    '_charge_entity',
    '_checking_account_entity',
    '_checklist_entity',
    '_checklist_item__entity',
    '_checklist_item_entity',
    '_collateral_entity',
    '_collateral_field_entity',
    '_collection',
    '_collection_item',
    '_collector_queue__loan',
    '_collector_queue_entity',
    '_collector_queue_question_entity',
    '_collector_queue_work_item_entity',
    '_comment_thread_comments',
    '_comment_thread_topics',
    '_computation_field_entity',
    '_contract_signer_entity',
    '_credit_breakdown_report',
    '_credit_card_entity',
    '_credit_category_entity',
    '_credit_report_history',
    '_credit_report_queue',
    '_credit_report_view',
    '_curtailment_template_entity',
    '_curtailment_template_lines_entity',
    '_custom_billing_template_entity',
    '_custom_billing_theme_entity',
    '_custom_boarding_process_entity',
    '_custom_boarding_process_step_entity',
    '_custom_charge_type_entity',
    '_custom_field',
    '_custom_field__entity',
    '_custom_form_entity',
    '_custom_form_section_entity',
    '_custom_form_tool__loan',
    '_custom_form_tool_entity',
    '_custom_payment_method_entity',
    '_custom_payment_type_entity',
    '_customer_credit_score_entity',
    '_customer_document_entity',
    '_customer_employer_entity',
    '_customer_entity',
    '_customer_login_attempts',
    '_customer_payment_method_entity',
    '_customer_phone_entity',
    '_customer_reference_entity',
    '_customer_social_profile_entity',
    '_customer_status_entity',
    '_data_dump_entity',
    '_data_import_entity',
    '_default_billing_options_entity',
    '_default_billing_template_entity',
    '_default_billing_theme_entity',
    '_defaults_autopay',
    '_defaults_charges',
    '_defaults_escrow_calculator',
    '_defaults_late_fee__buckets',
    '_defaults_payments',
    '_defaults_system_loan',
    '_defaults_user_loan',
    '_delivery_entity',
    '_disbursement_entity',
    '_doc_section_entity',
    '_due_to_date_view',
    '_email_delivery_entity',
    '_email_queue',
    '_email_template_entity',
    '_email_tool__loan',
    '_email_tool_entity',
    '_email_trigger_entity',
    '_escrow__transactions',
    '_escrow_adjustment_entity',
    '_escrow_analysis_process_entity',
    '_escrow_analysis_task_entity',
    '_escrow_calculator_entity',
    '_escrow_subset_entity',
    '_escrow_subset_options_entity',
    '_escrow_subset_options_entity_backup',
    '_escrow_transaction_entity',
    '_escrow_tx_category_entity',
    '_faq_entry_entity',
    '_file_attachment_entity',
    '_first_loan_payment_transaction_view',
    '_flag_entity',
    '_flag_status_archive',
    '_form_section_entity',
    '_gps_link_entity',
    '_history_funding_report_view',
    '_holding_account__investor',
    '_holding_account_archive_entity',
    '_holding_account_autopay_entity',
    '_holding_account_category_entity',
    '_holding_account_settings_entity',
    '_holding_account_status_entity',
    '_holding_account_sub_status_entity',
    '_holding_account_transaction_category_entity',
    '_holding_account_transaction_entity',
    '_homepage_image_entity',
    '_investment__portfolio',
    '_investment__sub_portfolio',
    '_investment_document_entity',
    '_investment_entity',
    '_investment_position_entity',
    '_investor_document_entity',
    '_investor_entity',
    '_investor_status_entity',
    '_iprestriction_entity',
    '_iprestriction_entry_entity',
    '_last_loan_payment_transaction_view',
    '_link_entity',
    '_linked_info__entity',
    '_linked_loan__entity',
    '_linked_loan_option_entity',
    '_loan__customer',
    '_loan__portfolio',
    '_loan__recurrent_charge',
    '_loan__rule_applied_apd_reset',
    '_loan__rule_applied_charge_off',
    '_loan__rule_applied_checklist',
    '_loan__rule_applied_duedate',
    '_loan__rule_applied_settings',
    '_loan__rule_applied_stop_interest',
    '_loan__sub_portfolio',
    '_loan_active_time_tx',
    '_loan_advancement_entity',
    '_loan_apd_adjustment_entity',
    '_loan_autopay_entity',
    '_loan_autopay_entity_old',
    '_loan_chargeoff__transactions',
    '_loan_chargeoff_entity',
    '_loan_collected_stats_view',
    '_loan_credit_entity',
    '_loan_curtail_date_entity',
    '_loan_delinquency_history_entity',
    '_loan_document_entity',
    '_loan_dpd_adjustment_entity',
    '_loan_duedate_change_entity',
    '_loan_entity',
    '_loan_escrow_tx_view',
    '_loan_funding_entity',
    '_loan_future_stats_view',
    '_loan_insurance_entity',
    '_loan_last_payment_view',
    '_loan_late_fee__buckets',
    '_loan_modification_entity',
    '_loan_next_forecast_payment_view',
    '_loan_next_scheduled_payment_view',
    '_loan_past_stats_view',
    '_loan_payment_seq',
    '_loan_portfolio_view',
    '_loan_promise_entity',
    '_loan_reverse_calc_settings',
    '_loan_reverse_status_archive',
    '_loan_schedule_payments_view',
    '_loan_schedule_roll_entity',
    '_loan_settings_entity',
    '_loan_setup_entity',
    '_loan_sms_queue_item_entity',
    '_loan_status_archive',
    '_loan_status_archive_current_date_view',
    '_loan_status_entity',
    '_loan_stop_interest_date_entity',
    '_loan_sub_status_entity',
    '_loan_subportfolio_view',
    '_loan_tx',
    '_loan_tx_payment_view',
    '_loan_yearly_stats_view',
    '_mail_house_delivery_entity',
    '_mail_house_entity',
    '_mail_house_loan',
    '_mail_house_tool_entity',
    '_mc_processor_extender',
    '_my_applications_setting_entity',
    '_my_loans_setting_entity',
    '_next_autopay_view',
    '_note_category_entity',
    '_note_entity',
    '_notification_category__delivery',
    '_notification_category_entity',
    '_notification_dnd_period_entity',
    '_notification_entity',
    '_page_entity',
    '_payment__portfolio',
    '_payment__sub_portfolio',
    '_payment_account_entity',
    '_payment_entity',
    '_payment_info_entity',
    '_payment_reversed_tx_snapshot',
    '_pnm_order_entity',
    '_portfolio_category_entity',
    '_portfolio_entity',
    '_preconfigured_loan__portfolio',
    '_preconfigured_loan__sub_portfolio',
    '_preconfigured_loan_entity',
    '_preconfigured_loan_settings_entity',
    '_quick_note_entity',
    '_recurring_charge_entity',
    '_report_cache',
    '_restriction_group__user',
    '_restriction_group_entity',
    '_restriction_group_entry_archive',
    '_restriction_group_entry_entity',
    '_rule__category',
    '_rule_applied_apd_reset_entity',
    '_rule_applied_charge_off_entity',
    '_rule_applied_checklist_entity',
    '_rule_applied_duedate_entity',
    '_rule_applied_loan_settings_entity',
    '_rule_applied_settings__portfolio',
    '_rule_applied_settings__portfolio_to_delete',
    '_rule_applied_settings__sub_portfolio',
    '_rule_applied_settings__sub_portfolio_to_delete',
    '_rule_applied_stop_interest_entity',
    '_rule_category_entity',
    '_rule_entity',
    '_sample_entity',
    '_saved_search_entity',
    '_sbt_dnd_periods',
    '_sbt_message_log',
    '_sbt_template_mapping',
    '_schedule_roll_template_entity',
    '_schedule_template_lines_entity',
    '_scheduled_action_entity',
    '_scheduled_report_entity',
    '_schema_version',
    '_search_index_error_log',
    '_search_restriction_group_entity',
    '_search_restriction_setting_entity',
    '_security_group',
    '_security_group__user',
    '_shortcut_set_entity',
    '_sms_delivery_entity',
    '_sms_trigger_entity',
    '_sound_group_entity',
    '_sound_group_item_entity',
    '_source_company_entity',
    '_special_report_entity',
    '_stoplight_entity',
    '_sub_portfolio_entity',
    '_support_transaction__topic',
    '_support_transaction_entity',
    '_system_note_entity',
    '_tcn_campaign_entity',
    '_tcn_queue_item_entity',
    '_tenant_backup_log_entity',
    '_tenant_bulk_purchase_entity',
    '_tenant_checklist_category_entity',
    '_tenant_checklist_entity',
    '_tenant_plugins_contract_entity',
    '_tenant_pricing_tier_entity',
    '_tenant_setting__entity',
    '_testimonial_entity',
    '_time_slot_entity',
    '_topic_entity',
    '_total_advancements',
    '_total_credits_view',
    '_transaction_entity',
    '_user__delivery',
    '_user_chart_settings_entity',
    '_user_search_settings_entity',
    '_user_tenant_configuration',
    '_vendor_entity',
    '_view_module_entity',
    '_view_template__view_module',
    '_view_template_entity',
    '_view_widget_entity',
    '_web_delivery_entity',
    '_work_item__questions'
]);

SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_ach_return_code_action_entity','dw_owner', 'loan_pro_chorus_sandbox._ach_return_code_action_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_address_entity','dw_owner', 'loan_pro_chorus_sandbox._address_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_admin_tool__loan','dw_owner', 'loan_pro_chorus_sandbox._admin_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_admin_tool_entity','dw_owner', 'loan_pro_chorus_sandbox._admin_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_advance_category_entity','dw_owner', 'loan_pro_chorus_sandbox._advance_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_all_cust_info_view','dw_owner', 'loan_pro_chorus_sandbox._all_cust_info_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_bank_account_entity','dw_owner', 'loan_pro_chorus_sandbox._bank_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_billing_tool__loan','dw_owner', 'loan_pro_chorus_sandbox._billing_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_billing_tool_entity','dw_owner', 'loan_pro_chorus_sandbox._billing_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_bracket_entity','dw_owner', 'loan_pro_chorus_sandbox._bracket_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_bracket_item_entity','dw_owner', 'loan_pro_chorus_sandbox._bracket_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_cash_drawer__payment_method','dw_owner', 'loan_pro_chorus_sandbox._cash_drawer__payment_method owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_cash_drawer_entity','dw_owner', 'loan_pro_chorus_sandbox._cash_drawer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_cash_drawer_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox._cash_drawer_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_cash_drawer_tx_category_entity','dw_owner', 'loan_pro_chorus_sandbox._cash_drawer_tx_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_charge_entity','dw_owner', 'loan_pro_chorus_sandbox._charge_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_checking_account_entity','dw_owner', 'loan_pro_chorus_sandbox._checking_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_checklist_entity','dw_owner', 'loan_pro_chorus_sandbox._checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_checklist_item__entity','dw_owner', 'loan_pro_chorus_sandbox._checklist_item__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_checklist_item_entity','dw_owner', 'loan_pro_chorus_sandbox._checklist_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_collateral_entity','dw_owner', 'loan_pro_chorus_sandbox._collateral_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_collateral_field_entity','dw_owner', 'loan_pro_chorus_sandbox._collateral_field_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_collection','dw_owner', 'loan_pro_chorus_sandbox._collection owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_collection_item','dw_owner', 'loan_pro_chorus_sandbox._collection_item owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_collector_queue__loan','dw_owner', 'loan_pro_chorus_sandbox._collector_queue__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_collector_queue_entity','dw_owner', 'loan_pro_chorus_sandbox._collector_queue_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_collector_queue_question_entity','dw_owner', 'loan_pro_chorus_sandbox._collector_queue_question_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_collector_queue_work_item_entity','dw_owner', 'loan_pro_chorus_sandbox._collector_queue_work_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_comment_thread_comments','dw_owner', 'loan_pro_chorus_sandbox._comment_thread_comments owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_comment_thread_topics','dw_owner', 'loan_pro_chorus_sandbox._comment_thread_topics owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_computation_field_entity','dw_owner', 'loan_pro_chorus_sandbox._computation_field_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_contract_signer_entity','dw_owner', 'loan_pro_chorus_sandbox._contract_signer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_credit_breakdown_report','dw_owner', 'loan_pro_chorus_sandbox._credit_breakdown_report owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_credit_card_entity','dw_owner', 'loan_pro_chorus_sandbox._credit_card_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_credit_category_entity','dw_owner', 'loan_pro_chorus_sandbox._credit_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_credit_report_history','dw_owner', 'loan_pro_chorus_sandbox._credit_report_history owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_credit_report_queue','dw_owner', 'loan_pro_chorus_sandbox._credit_report_queue owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_credit_report_view','dw_owner', 'loan_pro_chorus_sandbox._credit_report_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_curtailment_template_entity','dw_owner', 'loan_pro_chorus_sandbox._curtailment_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_curtailment_template_lines_entity','dw_owner', 'loan_pro_chorus_sandbox._curtailment_template_lines_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_billing_template_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_billing_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_billing_theme_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_billing_theme_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_boarding_process_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_boarding_process_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_boarding_process_step_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_boarding_process_step_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_charge_type_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_charge_type_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_field','dw_owner', 'loan_pro_chorus_sandbox._custom_field owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_field__entity','dw_owner', 'loan_pro_chorus_sandbox._custom_field__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_form_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_form_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_form_section_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_form_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_form_tool__loan','dw_owner', 'loan_pro_chorus_sandbox._custom_form_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_form_tool_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_form_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_payment_method_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_payment_method_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_custom_payment_type_entity','dw_owner', 'loan_pro_chorus_sandbox._custom_payment_type_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_credit_score_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_credit_score_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_document_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_employer_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_employer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_login_attempts','dw_owner', 'loan_pro_chorus_sandbox._customer_login_attempts owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_payment_method_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_payment_method_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_phone_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_phone_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_reference_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_reference_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_social_profile_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_social_profile_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_customer_status_entity','dw_owner', 'loan_pro_chorus_sandbox._customer_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_data_dump_entity','dw_owner', 'loan_pro_chorus_sandbox._data_dump_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_data_import_entity','dw_owner', 'loan_pro_chorus_sandbox._data_import_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_default_billing_options_entity','dw_owner', 'loan_pro_chorus_sandbox._default_billing_options_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_default_billing_template_entity','dw_owner', 'loan_pro_chorus_sandbox._default_billing_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_default_billing_theme_entity','dw_owner', 'loan_pro_chorus_sandbox._default_billing_theme_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_defaults_autopay','dw_owner', 'loan_pro_chorus_sandbox._defaults_autopay owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_defaults_charges','dw_owner', 'loan_pro_chorus_sandbox._defaults_charges owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_defaults_escrow_calculator','dw_owner', 'loan_pro_chorus_sandbox._defaults_escrow_calculator owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_defaults_late_fee__buckets','dw_owner', 'loan_pro_chorus_sandbox._defaults_late_fee__buckets owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_defaults_payments','dw_owner', 'loan_pro_chorus_sandbox._defaults_payments owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_defaults_system_loan','dw_owner', 'loan_pro_chorus_sandbox._defaults_system_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_defaults_user_loan','dw_owner', 'loan_pro_chorus_sandbox._defaults_user_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox._delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_disbursement_entity','dw_owner', 'loan_pro_chorus_sandbox._disbursement_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_doc_section_entity','dw_owner', 'loan_pro_chorus_sandbox._doc_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_due_to_date_view','dw_owner', 'loan_pro_chorus_sandbox._due_to_date_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_email_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox._email_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_email_queue','dw_owner', 'loan_pro_chorus_sandbox._email_queue owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_email_template_entity','dw_owner', 'loan_pro_chorus_sandbox._email_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_email_tool__loan','dw_owner', 'loan_pro_chorus_sandbox._email_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_email_tool_entity','dw_owner', 'loan_pro_chorus_sandbox._email_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_email_trigger_entity','dw_owner', 'loan_pro_chorus_sandbox._email_trigger_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow__transactions','dw_owner', 'loan_pro_chorus_sandbox._escrow__transactions owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_adjustment_entity','dw_owner', 'loan_pro_chorus_sandbox._escrow_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_analysis_process_entity','dw_owner', 'loan_pro_chorus_sandbox._escrow_analysis_process_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_analysis_task_entity','dw_owner', 'loan_pro_chorus_sandbox._escrow_analysis_task_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_calculator_entity','dw_owner', 'loan_pro_chorus_sandbox._escrow_calculator_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_subset_entity','dw_owner', 'loan_pro_chorus_sandbox._escrow_subset_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_subset_options_entity','dw_owner', 'loan_pro_chorus_sandbox._escrow_subset_options_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_subset_options_entity_backup','dw_owner', 'loan_pro_chorus_sandbox._escrow_subset_options_entity_backup owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox._escrow_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_escrow_tx_category_entity','dw_owner', 'loan_pro_chorus_sandbox._escrow_tx_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_faq_entry_entity','dw_owner', 'loan_pro_chorus_sandbox._faq_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_file_attachment_entity','dw_owner', 'loan_pro_chorus_sandbox._file_attachment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_first_loan_payment_transaction_view','dw_owner', 'loan_pro_chorus_sandbox._first_loan_payment_transaction_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_flag_entity','dw_owner', 'loan_pro_chorus_sandbox._flag_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_flag_status_archive','dw_owner', 'loan_pro_chorus_sandbox._flag_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_form_section_entity','dw_owner', 'loan_pro_chorus_sandbox._form_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_gps_link_entity','dw_owner', 'loan_pro_chorus_sandbox._gps_link_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_history_funding_report_view','dw_owner', 'loan_pro_chorus_sandbox._history_funding_report_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account__investor','dw_owner', 'loan_pro_chorus_sandbox._holding_account__investor owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account_archive_entity','dw_owner', 'loan_pro_chorus_sandbox._holding_account_archive_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account_autopay_entity','dw_owner', 'loan_pro_chorus_sandbox._holding_account_autopay_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account_category_entity','dw_owner', 'loan_pro_chorus_sandbox._holding_account_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account_settings_entity','dw_owner', 'loan_pro_chorus_sandbox._holding_account_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account_status_entity','dw_owner', 'loan_pro_chorus_sandbox._holding_account_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account_sub_status_entity','dw_owner', 'loan_pro_chorus_sandbox._holding_account_sub_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account_transaction_category_entity','dw_owner', 'loan_pro_chorus_sandbox._holding_account_transaction_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_holding_account_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox._holding_account_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_homepage_image_entity','dw_owner', 'loan_pro_chorus_sandbox._homepage_image_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_investment__portfolio','dw_owner', 'loan_pro_chorus_sandbox._investment__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_investment__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox._investment__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_investment_document_entity','dw_owner', 'loan_pro_chorus_sandbox._investment_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_investment_entity','dw_owner', 'loan_pro_chorus_sandbox._investment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_investment_position_entity','dw_owner', 'loan_pro_chorus_sandbox._investment_position_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_investor_document_entity','dw_owner', 'loan_pro_chorus_sandbox._investor_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_investor_entity','dw_owner', 'loan_pro_chorus_sandbox._investor_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_investor_status_entity','dw_owner', 'loan_pro_chorus_sandbox._investor_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_iprestriction_entity','dw_owner', 'loan_pro_chorus_sandbox._iprestriction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_iprestriction_entry_entity','dw_owner', 'loan_pro_chorus_sandbox._iprestriction_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_last_loan_payment_transaction_view','dw_owner', 'loan_pro_chorus_sandbox._last_loan_payment_transaction_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_link_entity','dw_owner', 'loan_pro_chorus_sandbox._link_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_linked_info__entity','dw_owner', 'loan_pro_chorus_sandbox._linked_info__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_linked_loan__entity','dw_owner', 'loan_pro_chorus_sandbox._linked_loan__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_linked_loan_option_entity','dw_owner', 'loan_pro_chorus_sandbox._linked_loan_option_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__customer','dw_owner', 'loan_pro_chorus_sandbox._loan__customer owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__portfolio','dw_owner', 'loan_pro_chorus_sandbox._loan__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__recurrent_charge','dw_owner', 'loan_pro_chorus_sandbox._loan__recurrent_charge owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__rule_applied_apd_reset','dw_owner', 'loan_pro_chorus_sandbox._loan__rule_applied_apd_reset owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__rule_applied_charge_off','dw_owner', 'loan_pro_chorus_sandbox._loan__rule_applied_charge_off owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__rule_applied_checklist','dw_owner', 'loan_pro_chorus_sandbox._loan__rule_applied_checklist owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__rule_applied_duedate','dw_owner', 'loan_pro_chorus_sandbox._loan__rule_applied_duedate owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__rule_applied_settings','dw_owner', 'loan_pro_chorus_sandbox._loan__rule_applied_settings owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__rule_applied_stop_interest','dw_owner', 'loan_pro_chorus_sandbox._loan__rule_applied_stop_interest owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox._loan__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_active_time_tx','dw_owner', 'loan_pro_chorus_sandbox._loan_active_time_tx owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_advancement_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_advancement_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_apd_adjustment_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_apd_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_autopay_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_autopay_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_autopay_entity_old','dw_owner', 'loan_pro_chorus_sandbox._loan_autopay_entity_old owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_chargeoff__transactions','dw_owner', 'loan_pro_chorus_sandbox._loan_chargeoff__transactions owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_chargeoff_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_chargeoff_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_collected_stats_view','dw_owner', 'loan_pro_chorus_sandbox._loan_collected_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_credit_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_credit_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_curtail_date_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_curtail_date_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_delinquency_history_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_delinquency_history_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_document_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_dpd_adjustment_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_dpd_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_duedate_change_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_duedate_change_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_escrow_tx_view','dw_owner', 'loan_pro_chorus_sandbox._loan_escrow_tx_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_funding_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_funding_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_future_stats_view','dw_owner', 'loan_pro_chorus_sandbox._loan_future_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_insurance_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_insurance_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_last_payment_view','dw_owner', 'loan_pro_chorus_sandbox._loan_last_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_late_fee__buckets','dw_owner', 'loan_pro_chorus_sandbox._loan_late_fee__buckets owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_modification_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_modification_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_next_forecast_payment_view','dw_owner', 'loan_pro_chorus_sandbox._loan_next_forecast_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_next_scheduled_payment_view','dw_owner', 'loan_pro_chorus_sandbox._loan_next_scheduled_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_past_stats_view','dw_owner', 'loan_pro_chorus_sandbox._loan_past_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_payment_seq','dw_owner', 'loan_pro_chorus_sandbox._loan_payment_seq owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_portfolio_view','dw_owner', 'loan_pro_chorus_sandbox._loan_portfolio_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_promise_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_promise_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_reverse_calc_settings','dw_owner', 'loan_pro_chorus_sandbox._loan_reverse_calc_settings owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_reverse_status_archive','dw_owner', 'loan_pro_chorus_sandbox._loan_reverse_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_schedule_payments_view','dw_owner', 'loan_pro_chorus_sandbox._loan_schedule_payments_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_schedule_roll_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_schedule_roll_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_settings_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_setup_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_setup_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_sms_queue_item_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_sms_queue_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_status_archive','dw_owner', 'loan_pro_chorus_sandbox._loan_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_status_archive_current_date_view','dw_owner', 'loan_pro_chorus_sandbox._loan_status_archive_current_date_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_status_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_stop_interest_date_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_stop_interest_date_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_sub_status_entity','dw_owner', 'loan_pro_chorus_sandbox._loan_sub_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_subportfolio_view','dw_owner', 'loan_pro_chorus_sandbox._loan_subportfolio_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_tx','dw_owner', 'loan_pro_chorus_sandbox._loan_tx owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_tx_payment_view','dw_owner', 'loan_pro_chorus_sandbox._loan_tx_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_loan_yearly_stats_view','dw_owner', 'loan_pro_chorus_sandbox._loan_yearly_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_mail_house_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox._mail_house_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_mail_house_entity','dw_owner', 'loan_pro_chorus_sandbox._mail_house_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_mail_house_loan','dw_owner', 'loan_pro_chorus_sandbox._mail_house_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_mail_house_tool_entity','dw_owner', 'loan_pro_chorus_sandbox._mail_house_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_mc_processor_extender','dw_owner', 'loan_pro_chorus_sandbox._mc_processor_extender owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_my_applications_setting_entity','dw_owner', 'loan_pro_chorus_sandbox._my_applications_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_my_loans_setting_entity','dw_owner', 'loan_pro_chorus_sandbox._my_loans_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_next_autopay_view','dw_owner', 'loan_pro_chorus_sandbox._next_autopay_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_note_category_entity','dw_owner', 'loan_pro_chorus_sandbox._note_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_note_entity','dw_owner', 'loan_pro_chorus_sandbox._note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_notification_category__delivery','dw_owner', 'loan_pro_chorus_sandbox._notification_category__delivery owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_notification_category_entity','dw_owner', 'loan_pro_chorus_sandbox._notification_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_notification_dnd_period_entity','dw_owner', 'loan_pro_chorus_sandbox._notification_dnd_period_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_notification_entity','dw_owner', 'loan_pro_chorus_sandbox._notification_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_page_entity','dw_owner', 'loan_pro_chorus_sandbox._page_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_payment__portfolio','dw_owner', 'loan_pro_chorus_sandbox._payment__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_payment__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox._payment__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_payment_account_entity','dw_owner', 'loan_pro_chorus_sandbox._payment_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_payment_entity','dw_owner', 'loan_pro_chorus_sandbox._payment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_payment_info_entity','dw_owner', 'loan_pro_chorus_sandbox._payment_info_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_payment_reversed_tx_snapshot','dw_owner', 'loan_pro_chorus_sandbox._payment_reversed_tx_snapshot owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_pnm_order_entity','dw_owner', 'loan_pro_chorus_sandbox._pnm_order_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_portfolio_category_entity','dw_owner', 'loan_pro_chorus_sandbox._portfolio_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_portfolio_entity','dw_owner', 'loan_pro_chorus_sandbox._portfolio_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_preconfigured_loan__portfolio','dw_owner', 'loan_pro_chorus_sandbox._preconfigured_loan__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_preconfigured_loan__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox._preconfigured_loan__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_preconfigured_loan_entity','dw_owner', 'loan_pro_chorus_sandbox._preconfigured_loan_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_preconfigured_loan_settings_entity','dw_owner', 'loan_pro_chorus_sandbox._preconfigured_loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_quick_note_entity','dw_owner', 'loan_pro_chorus_sandbox._quick_note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_recurring_charge_entity','dw_owner', 'loan_pro_chorus_sandbox._recurring_charge_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_report_cache','dw_owner', 'loan_pro_chorus_sandbox._report_cache owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_restriction_group__user','dw_owner', 'loan_pro_chorus_sandbox._restriction_group__user owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_restriction_group_entity','dw_owner', 'loan_pro_chorus_sandbox._restriction_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_restriction_group_entry_archive','dw_owner', 'loan_pro_chorus_sandbox._restriction_group_entry_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_restriction_group_entry_entity','dw_owner', 'loan_pro_chorus_sandbox._restriction_group_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule__category','dw_owner', 'loan_pro_chorus_sandbox._rule__category owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_apd_reset_entity','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_apd_reset_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_charge_off_entity','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_charge_off_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_checklist_entity','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_duedate_entity','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_duedate_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_loan_settings_entity','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_settings__portfolio','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_settings__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_settings__portfolio_to_delete','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_settings__portfolio_to_delete owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_settings__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_settings__sub_portfolio_to_delete','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_settings__sub_portfolio_to_delete owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_applied_stop_interest_entity','dw_owner', 'loan_pro_chorus_sandbox._rule_applied_stop_interest_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_category_entity','dw_owner', 'loan_pro_chorus_sandbox._rule_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_rule_entity','dw_owner', 'loan_pro_chorus_sandbox._rule_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sample_entity','dw_owner', 'loan_pro_chorus_sandbox._sample_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_saved_search_entity','dw_owner', 'loan_pro_chorus_sandbox._saved_search_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sbt_dnd_periods','dw_owner', 'loan_pro_chorus_sandbox._sbt_dnd_periods owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sbt_message_log','dw_owner', 'loan_pro_chorus_sandbox._sbt_message_log owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sbt_template_mapping','dw_owner', 'loan_pro_chorus_sandbox._sbt_template_mapping owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_schedule_roll_template_entity','dw_owner', 'loan_pro_chorus_sandbox._schedule_roll_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_schedule_template_lines_entity','dw_owner', 'loan_pro_chorus_sandbox._schedule_template_lines_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_scheduled_action_entity','dw_owner', 'loan_pro_chorus_sandbox._scheduled_action_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_scheduled_report_entity','dw_owner', 'loan_pro_chorus_sandbox._scheduled_report_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_schema_version','dw_owner', 'loan_pro_chorus_sandbox._schema_version owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_search_index_error_log','dw_owner', 'loan_pro_chorus_sandbox._search_index_error_log owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_search_restriction_group_entity','dw_owner', 'loan_pro_chorus_sandbox._search_restriction_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_search_restriction_setting_entity','dw_owner', 'loan_pro_chorus_sandbox._search_restriction_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_security_group','dw_owner', 'loan_pro_chorus_sandbox._security_group owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_security_group__user','dw_owner', 'loan_pro_chorus_sandbox._security_group__user owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_shortcut_set_entity','dw_owner', 'loan_pro_chorus_sandbox._shortcut_set_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sms_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox._sms_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sms_trigger_entity','dw_owner', 'loan_pro_chorus_sandbox._sms_trigger_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sound_group_entity','dw_owner', 'loan_pro_chorus_sandbox._sound_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sound_group_item_entity','dw_owner', 'loan_pro_chorus_sandbox._sound_group_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_source_company_entity','dw_owner', 'loan_pro_chorus_sandbox._source_company_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_special_report_entity','dw_owner', 'loan_pro_chorus_sandbox._special_report_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_stoplight_entity','dw_owner', 'loan_pro_chorus_sandbox._stoplight_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_sub_portfolio_entity','dw_owner', 'loan_pro_chorus_sandbox._sub_portfolio_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_support_transaction__topic','dw_owner', 'loan_pro_chorus_sandbox._support_transaction__topic owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_support_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox._support_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_system_note_entity','dw_owner', 'loan_pro_chorus_sandbox._system_note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tcn_campaign_entity','dw_owner', 'loan_pro_chorus_sandbox._tcn_campaign_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tcn_queue_item_entity','dw_owner', 'loan_pro_chorus_sandbox._tcn_queue_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tenant_backup_log_entity','dw_owner', 'loan_pro_chorus_sandbox._tenant_backup_log_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tenant_bulk_purchase_entity','dw_owner', 'loan_pro_chorus_sandbox._tenant_bulk_purchase_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tenant_checklist_category_entity','dw_owner', 'loan_pro_chorus_sandbox._tenant_checklist_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tenant_checklist_entity','dw_owner', 'loan_pro_chorus_sandbox._tenant_checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tenant_plugins_contract_entity','dw_owner', 'loan_pro_chorus_sandbox._tenant_plugins_contract_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tenant_pricing_tier_entity','dw_owner', 'loan_pro_chorus_sandbox._tenant_pricing_tier_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_tenant_setting__entity','dw_owner', 'loan_pro_chorus_sandbox._tenant_setting__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_testimonial_entity','dw_owner', 'loan_pro_chorus_sandbox._testimonial_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_time_slot_entity','dw_owner', 'loan_pro_chorus_sandbox._time_slot_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_topic_entity','dw_owner', 'loan_pro_chorus_sandbox._topic_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_total_advancements','dw_owner', 'loan_pro_chorus_sandbox._total_advancements owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_total_credits_view','dw_owner', 'loan_pro_chorus_sandbox._total_credits_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox._transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_user__delivery','dw_owner', 'loan_pro_chorus_sandbox._user__delivery owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_user_chart_settings_entity','dw_owner', 'loan_pro_chorus_sandbox._user_chart_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_user_search_settings_entity','dw_owner', 'loan_pro_chorus_sandbox._user_search_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_user_tenant_configuration','dw_owner', 'loan_pro_chorus_sandbox._user_tenant_configuration owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_vendor_entity','dw_owner', 'loan_pro_chorus_sandbox._vendor_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_view_module_entity','dw_owner', 'loan_pro_chorus_sandbox._view_module_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_view_template__view_module','dw_owner', 'loan_pro_chorus_sandbox._view_template__view_module owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_view_template_entity','dw_owner', 'loan_pro_chorus_sandbox._view_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_view_widget_entity','dw_owner', 'loan_pro_chorus_sandbox._view_widget_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_web_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox._web_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_chorus_sandbox','_work_item__questions','dw_owner', 'loan_pro_chorus_sandbox._work_item__questions owner is dw_owner');
SELECT views_are('loan_pro_chorus_sandbox', ARRAY[
    'ach_return_code_action_entity',
    'address_entity',
    'admin_tool__loan',
    'admin_tool_entity',
    'advance_category_entity',
    'all_cust_info_view',
    'bank_account_entity',
    'billing_tool__loan',
    'billing_tool_entity',
    'bracket_entity',
    'bracket_item_entity',
    'cash_drawer__payment_method',
    'cash_drawer_entity',
    'cash_drawer_transaction_entity',
    'cash_drawer_tx_category_entity',
    'charge_entity',
    'checking_account_entity',
    'checklist_entity',
    'checklist_item__entity',
    'checklist_item_entity',
    'collateral_entity',
    'collateral_field_entity',
    'collection',
    'collection_item',
    'collector_queue__loan',
    'collector_queue_entity',
    'collector_queue_question_entity',
    'collector_queue_work_item_entity',
    'comment_thread_comments',
    'comment_thread_topics',
    'computation_field_entity',
    'contract_signer_entity',
    'credit_breakdown_report',
    'credit_card_entity',
    'credit_category_entity',
    'credit_report_history',
    'credit_report_queue',
    'credit_report_view',
    'curtailment_template_entity',
    'curtailment_template_lines_entity',
    'custom_billing_template_entity',
    'custom_billing_theme_entity',
    'custom_boarding_process_entity',
    'custom_boarding_process_step_entity',
    'custom_charge_type_entity',
    'custom_field',
    'custom_field__entity',
    'custom_form_entity',
    'custom_form_section_entity',
    'custom_form_tool__loan',
    'custom_form_tool_entity',
    'custom_payment_method_entity',
    'custom_payment_type_entity',
    'customer_credit_score_entity',
    'customer_document_entity',
    'customer_employer_entity',
    'customer_entity',
    'customer_login_attempts',
    'customer_payment_method_entity',
    'customer_phone_entity',
    'customer_reference_entity',
    'customer_social_profile_entity',
    'customer_status_entity',
    'data_dump_entity',
    'data_import_entity',
    'default_billing_options_entity',
    'default_billing_template_entity',
    'default_billing_theme_entity',
    'defaults_autopay',
    'defaults_charges',
    'defaults_escrow_calculator',
    'defaults_late_fee__buckets',
    'defaults_payments',
    'defaults_system_loan',
    'defaults_user_loan',
    'delivery_entity',
    'disbursement_entity',
    'doc_section_entity',
    'due_to_date_view',
    'email_delivery_entity',
    'email_queue',
    'email_template_entity',
    'email_tool__loan',
    'email_tool_entity',
    'email_trigger_entity',
    'escrow__transactions',
    'escrow_adjustment_entity',
    'escrow_analysis_process_entity',
    'escrow_analysis_task_entity',
    'escrow_calculator_entity',
    'escrow_subset_entity',
    'escrow_subset_options_entity',
    'escrow_subset_options_entity_backup',
    'escrow_transaction_entity',
    'escrow_tx_category_entity',
    'faq_entry_entity',
    'file_attachment_entity',
    'first_loan_payment_transaction_view',
    'flag_entity',
    'flag_status_archive',
    'form_section_entity',
    'gps_link_entity',
    'history_funding_report_view',
    'holding_account__investor',
    'holding_account_archive_entity',
    'holding_account_autopay_entity',
    'holding_account_category_entity',
    'holding_account_settings_entity',
    'holding_account_status_entity',
    'holding_account_sub_status_entity',
    'holding_account_transaction_category_entity',
    'holding_account_transaction_entity',
    'homepage_image_entity',
    'investment__portfolio',
    'investment__sub_portfolio',
    'investment_document_entity',
    'investment_entity',
    'investment_position_entity',
    'investor_document_entity',
    'investor_entity',
    'investor_status_entity',
    'iprestriction_entity',
    'iprestriction_entry_entity',
    'last_loan_payment_transaction_view',
    'link_entity',
    'linked_info__entity',
    'linked_loan__entity',
    'linked_loan_option_entity',
    'loan__customer',
    'loan__portfolio',
    'loan__recurrent_charge',
    'loan__rule_applied_apd_reset',
    'loan__rule_applied_charge_off',
    'loan__rule_applied_checklist',
    'loan__rule_applied_duedate',
    'loan__rule_applied_settings',
    'loan__rule_applied_stop_interest',
    'loan__sub_portfolio',
    'loan_active_time_tx',
    'loan_advancement_entity',
    'loan_apd_adjustment_entity',
    'loan_autopay_entity',
    'loan_autopay_entity_old',
    'loan_chargeoff__transactions',
    'loan_chargeoff_entity',
    'loan_collected_stats_view',
    'loan_credit_entity',
    'loan_curtail_date_entity',
    'loan_delinquency_history_entity',
    'loan_document_entity',
    'loan_dpd_adjustment_entity',
    'loan_duedate_change_entity',
    'loan_entity',
    'loan_escrow_tx_view',
    'loan_funding_entity',
    'loan_future_stats_view',
    'loan_insurance_entity',
    'loan_last_payment_view',
    'loan_late_fee__buckets',
    'loan_modification_entity',
    'loan_next_forecast_payment_view',
    'loan_next_scheduled_payment_view',
    'loan_past_stats_view',
    'loan_payment_seq',
    'loan_portfolio_view',
    'loan_promise_entity',
    'loan_reverse_calc_settings',
    'loan_reverse_status_archive',
    'loan_schedule_payments_view',
    'loan_schedule_roll_entity',
    'loan_settings_entity',
    'loan_setup_entity',
    'loan_sms_queue_item_entity',
    'loan_status_archive',
    'loan_status_archive_current_date_view',
    'loan_status_entity',
    'loan_stop_interest_date_entity',
    'loan_sub_status_entity',
    'loan_subportfolio_view',
    'loan_tx',
    'loan_tx_payment_view',
    'loan_yearly_stats_view',
    'mail_house_delivery_entity',
    'mail_house_entity',
    'mail_house_loan',
    'mail_house_tool_entity',
    'mc_processor_extender',
    'my_applications_setting_entity',
    'my_loans_setting_entity',
    'next_autopay_view',
    'note_category_entity',
    'note_entity',
    'notification_category__delivery',
    'notification_category_entity',
    'notification_dnd_period_entity',
    'notification_entity',
    'page_entity',
    'payment__portfolio',
    'payment__sub_portfolio',
    'payment_account_entity',
    'payment_entity',
    'payment_info_entity',
    'payment_receipt_select_small_v',
    'payment_receipt_select_v',
    'payment_reversed_tx_snapshot',
    'pnm_order_entity',
    'portfolio_category_entity',
    'portfolio_entity',
    'preconfigured_loan__portfolio',
    'preconfigured_loan__sub_portfolio',
    'preconfigured_loan_entity',
    'preconfigured_loan_settings_entity',
    'quick_note_entity',
    'recurring_charge_entity',
    'report_cache',
    'restriction_group__user',
    'restriction_group_entity',
    'restriction_group_entry_archive',
    'restriction_group_entry_entity',
    'rule__category',
    'rule_applied_apd_reset_entity',
    'rule_applied_charge_off_entity',
    'rule_applied_checklist_entity',
    'rule_applied_duedate_entity',
    'rule_applied_loan_settings_entity',
    'rule_applied_settings__portfolio',
    'rule_applied_settings__portfolio_to_delete',
    'rule_applied_settings__sub_portfolio',
    'rule_applied_settings__sub_portfolio_to_delete',
    'rule_applied_stop_interest_entity',
    'rule_category_entity',
    'rule_entity',
    'sample_entity',
    'saved_search_entity',
    'sbt_dnd_periods',
    'sbt_message_log',
    'sbt_template_mapping',
    'schedule_roll_template_entity',
    'schedule_template_lines_entity',
    'scheduled_action_entity',
    'scheduled_report_entity',
    'schema_version',
    'search_index_error_log',
    'search_restriction_group_entity',
    'search_restriction_setting_entity',
    'security_group',
    'security_group__user',
    'shortcut_set_entity',
    'sms_delivery_entity',
    'sms_trigger_entity',
    'sound_group_entity',
    'sound_group_item_entity',
    'source_company_entity',
    'special_report_entity',
    'stoplight_entity',
    'sub_portfolio_entity',
    'support_transaction__topic',
    'support_transaction_entity',
    'system_note_entity',
    'tcn_campaign_entity',
    'tcn_queue_item_entity',
    'tenant_backup_log_entity',
    'tenant_bulk_purchase_entity',
    'tenant_checklist_category_entity',
    'tenant_checklist_entity',
    'tenant_plugins_contract_entity',
    'tenant_pricing_tier_entity',
    'tenant_setting__entity',
    'testimonial_entity',
    'time_slot_entity',
    'topic_entity',
    'total_advancements',
    'total_credits_view',
    'transaction_entity',
    'user__delivery',
    'user_chart_settings_entity',
    'user_search_settings_entity',
    'user_tenant_configuration',
    'vendor_entity',
    'view_module_entity',
    'view_template__view_module',
    'view_template_entity',
    'view_widget_entity',
    'web_delivery_entity',
    'work_item__questions'
]);

SELECT view_owner_is('loan_pro_chorus_sandbox','ach_return_code_action_entity','dw_owner', 'loan_pro_chorus_sandbox.ach_return_code_action_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','address_entity','dw_owner', 'loan_pro_chorus_sandbox.address_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','admin_tool__loan','dw_owner', 'loan_pro_chorus_sandbox.admin_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','admin_tool_entity','dw_owner', 'loan_pro_chorus_sandbox.admin_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','advance_category_entity','dw_owner', 'loan_pro_chorus_sandbox.advance_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','all_cust_info_view','dw_owner', 'loan_pro_chorus_sandbox.all_cust_info_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','bank_account_entity','dw_owner', 'loan_pro_chorus_sandbox.bank_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','billing_tool__loan','dw_owner', 'loan_pro_chorus_sandbox.billing_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','billing_tool_entity','dw_owner', 'loan_pro_chorus_sandbox.billing_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','bracket_entity','dw_owner', 'loan_pro_chorus_sandbox.bracket_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','bracket_item_entity','dw_owner', 'loan_pro_chorus_sandbox.bracket_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','cash_drawer__payment_method','dw_owner', 'loan_pro_chorus_sandbox.cash_drawer__payment_method owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','cash_drawer_entity','dw_owner', 'loan_pro_chorus_sandbox.cash_drawer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','cash_drawer_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox.cash_drawer_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','cash_drawer_tx_category_entity','dw_owner', 'loan_pro_chorus_sandbox.cash_drawer_tx_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','charge_entity','dw_owner', 'loan_pro_chorus_sandbox.charge_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','checking_account_entity','dw_owner', 'loan_pro_chorus_sandbox.checking_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','checklist_entity','dw_owner', 'loan_pro_chorus_sandbox.checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','checklist_item__entity','dw_owner', 'loan_pro_chorus_sandbox.checklist_item__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','checklist_item_entity','dw_owner', 'loan_pro_chorus_sandbox.checklist_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','collateral_entity','dw_owner', 'loan_pro_chorus_sandbox.collateral_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','collateral_field_entity','dw_owner', 'loan_pro_chorus_sandbox.collateral_field_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','collection','dw_owner', 'loan_pro_chorus_sandbox.collection owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','collection_item','dw_owner', 'loan_pro_chorus_sandbox.collection_item owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','collector_queue__loan','dw_owner', 'loan_pro_chorus_sandbox.collector_queue__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','collector_queue_entity','dw_owner', 'loan_pro_chorus_sandbox.collector_queue_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','collector_queue_question_entity','dw_owner', 'loan_pro_chorus_sandbox.collector_queue_question_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','collector_queue_work_item_entity','dw_owner', 'loan_pro_chorus_sandbox.collector_queue_work_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','comment_thread_comments','dw_owner', 'loan_pro_chorus_sandbox.comment_thread_comments owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','comment_thread_topics','dw_owner', 'loan_pro_chorus_sandbox.comment_thread_topics owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','computation_field_entity','dw_owner', 'loan_pro_chorus_sandbox.computation_field_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','contract_signer_entity','dw_owner', 'loan_pro_chorus_sandbox.contract_signer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','credit_breakdown_report','dw_owner', 'loan_pro_chorus_sandbox.credit_breakdown_report owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','credit_card_entity','dw_owner', 'loan_pro_chorus_sandbox.credit_card_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','credit_category_entity','dw_owner', 'loan_pro_chorus_sandbox.credit_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','credit_report_history','dw_owner', 'loan_pro_chorus_sandbox.credit_report_history owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','credit_report_queue','dw_owner', 'loan_pro_chorus_sandbox.credit_report_queue owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','credit_report_view','dw_owner', 'loan_pro_chorus_sandbox.credit_report_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','curtailment_template_entity','dw_owner', 'loan_pro_chorus_sandbox.curtailment_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','curtailment_template_lines_entity','dw_owner', 'loan_pro_chorus_sandbox.curtailment_template_lines_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_billing_template_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_billing_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_billing_theme_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_billing_theme_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_boarding_process_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_boarding_process_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_boarding_process_step_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_boarding_process_step_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_charge_type_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_charge_type_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_field','dw_owner', 'loan_pro_chorus_sandbox.custom_field owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_field__entity','dw_owner', 'loan_pro_chorus_sandbox.custom_field__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_form_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_form_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_form_section_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_form_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_form_tool__loan','dw_owner', 'loan_pro_chorus_sandbox.custom_form_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_form_tool_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_form_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_payment_method_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_payment_method_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','custom_payment_type_entity','dw_owner', 'loan_pro_chorus_sandbox.custom_payment_type_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_credit_score_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_credit_score_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_document_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_employer_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_employer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_login_attempts','dw_owner', 'loan_pro_chorus_sandbox.customer_login_attempts owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_payment_method_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_payment_method_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_phone_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_phone_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_reference_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_reference_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_social_profile_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_social_profile_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','customer_status_entity','dw_owner', 'loan_pro_chorus_sandbox.customer_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','data_dump_entity','dw_owner', 'loan_pro_chorus_sandbox.data_dump_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','data_import_entity','dw_owner', 'loan_pro_chorus_sandbox.data_import_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','default_billing_options_entity','dw_owner', 'loan_pro_chorus_sandbox.default_billing_options_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','default_billing_template_entity','dw_owner', 'loan_pro_chorus_sandbox.default_billing_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','default_billing_theme_entity','dw_owner', 'loan_pro_chorus_sandbox.default_billing_theme_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','defaults_autopay','dw_owner', 'loan_pro_chorus_sandbox.defaults_autopay owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','defaults_charges','dw_owner', 'loan_pro_chorus_sandbox.defaults_charges owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','defaults_escrow_calculator','dw_owner', 'loan_pro_chorus_sandbox.defaults_escrow_calculator owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','defaults_late_fee__buckets','dw_owner', 'loan_pro_chorus_sandbox.defaults_late_fee__buckets owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','defaults_payments','dw_owner', 'loan_pro_chorus_sandbox.defaults_payments owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','defaults_system_loan','dw_owner', 'loan_pro_chorus_sandbox.defaults_system_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','defaults_user_loan','dw_owner', 'loan_pro_chorus_sandbox.defaults_user_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','delivery_entity','dw_owner', 'loan_pro_chorus_sandbox.delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','disbursement_entity','dw_owner', 'loan_pro_chorus_sandbox.disbursement_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','doc_section_entity','dw_owner', 'loan_pro_chorus_sandbox.doc_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','due_to_date_view','dw_owner', 'loan_pro_chorus_sandbox.due_to_date_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','email_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox.email_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','email_queue','dw_owner', 'loan_pro_chorus_sandbox.email_queue owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','email_template_entity','dw_owner', 'loan_pro_chorus_sandbox.email_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','email_tool__loan','dw_owner', 'loan_pro_chorus_sandbox.email_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','email_tool_entity','dw_owner', 'loan_pro_chorus_sandbox.email_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','email_trigger_entity','dw_owner', 'loan_pro_chorus_sandbox.email_trigger_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow__transactions','dw_owner', 'loan_pro_chorus_sandbox.escrow__transactions owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_adjustment_entity','dw_owner', 'loan_pro_chorus_sandbox.escrow_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_analysis_process_entity','dw_owner', 'loan_pro_chorus_sandbox.escrow_analysis_process_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_analysis_task_entity','dw_owner', 'loan_pro_chorus_sandbox.escrow_analysis_task_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_calculator_entity','dw_owner', 'loan_pro_chorus_sandbox.escrow_calculator_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_subset_entity','dw_owner', 'loan_pro_chorus_sandbox.escrow_subset_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_subset_options_entity','dw_owner', 'loan_pro_chorus_sandbox.escrow_subset_options_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_subset_options_entity_backup','dw_owner', 'loan_pro_chorus_sandbox.escrow_subset_options_entity_backup owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox.escrow_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','escrow_tx_category_entity','dw_owner', 'loan_pro_chorus_sandbox.escrow_tx_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','faq_entry_entity','dw_owner', 'loan_pro_chorus_sandbox.faq_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','file_attachment_entity','dw_owner', 'loan_pro_chorus_sandbox.file_attachment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','first_loan_payment_transaction_view','dw_owner', 'loan_pro_chorus_sandbox.first_loan_payment_transaction_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','flag_entity','dw_owner', 'loan_pro_chorus_sandbox.flag_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','flag_status_archive','dw_owner', 'loan_pro_chorus_sandbox.flag_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','form_section_entity','dw_owner', 'loan_pro_chorus_sandbox.form_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','gps_link_entity','dw_owner', 'loan_pro_chorus_sandbox.gps_link_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','history_funding_report_view','dw_owner', 'loan_pro_chorus_sandbox.history_funding_report_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account__investor','dw_owner', 'loan_pro_chorus_sandbox.holding_account__investor owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account_archive_entity','dw_owner', 'loan_pro_chorus_sandbox.holding_account_archive_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account_autopay_entity','dw_owner', 'loan_pro_chorus_sandbox.holding_account_autopay_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account_category_entity','dw_owner', 'loan_pro_chorus_sandbox.holding_account_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account_settings_entity','dw_owner', 'loan_pro_chorus_sandbox.holding_account_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account_status_entity','dw_owner', 'loan_pro_chorus_sandbox.holding_account_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account_sub_status_entity','dw_owner', 'loan_pro_chorus_sandbox.holding_account_sub_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account_transaction_category_entity','dw_owner', 'loan_pro_chorus_sandbox.holding_account_transaction_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','holding_account_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox.holding_account_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','homepage_image_entity','dw_owner', 'loan_pro_chorus_sandbox.homepage_image_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','investment__portfolio','dw_owner', 'loan_pro_chorus_sandbox.investment__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','investment__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox.investment__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','investment_document_entity','dw_owner', 'loan_pro_chorus_sandbox.investment_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','investment_entity','dw_owner', 'loan_pro_chorus_sandbox.investment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','investment_position_entity','dw_owner', 'loan_pro_chorus_sandbox.investment_position_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','investor_document_entity','dw_owner', 'loan_pro_chorus_sandbox.investor_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','investor_entity','dw_owner', 'loan_pro_chorus_sandbox.investor_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','investor_status_entity','dw_owner', 'loan_pro_chorus_sandbox.investor_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','iprestriction_entity','dw_owner', 'loan_pro_chorus_sandbox.iprestriction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','iprestriction_entry_entity','dw_owner', 'loan_pro_chorus_sandbox.iprestriction_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','last_loan_payment_transaction_view','dw_owner', 'loan_pro_chorus_sandbox.last_loan_payment_transaction_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','link_entity','dw_owner', 'loan_pro_chorus_sandbox.link_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','linked_info__entity','dw_owner', 'loan_pro_chorus_sandbox.linked_info__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','linked_loan__entity','dw_owner', 'loan_pro_chorus_sandbox.linked_loan__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','linked_loan_option_entity','dw_owner', 'loan_pro_chorus_sandbox.linked_loan_option_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__customer','dw_owner', 'loan_pro_chorus_sandbox.loan__customer owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__portfolio','dw_owner', 'loan_pro_chorus_sandbox.loan__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__recurrent_charge','dw_owner', 'loan_pro_chorus_sandbox.loan__recurrent_charge owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__rule_applied_apd_reset','dw_owner', 'loan_pro_chorus_sandbox.loan__rule_applied_apd_reset owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__rule_applied_charge_off','dw_owner', 'loan_pro_chorus_sandbox.loan__rule_applied_charge_off owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__rule_applied_checklist','dw_owner', 'loan_pro_chorus_sandbox.loan__rule_applied_checklist owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__rule_applied_duedate','dw_owner', 'loan_pro_chorus_sandbox.loan__rule_applied_duedate owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__rule_applied_settings','dw_owner', 'loan_pro_chorus_sandbox.loan__rule_applied_settings owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__rule_applied_stop_interest','dw_owner', 'loan_pro_chorus_sandbox.loan__rule_applied_stop_interest owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox.loan__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_active_time_tx','dw_owner', 'loan_pro_chorus_sandbox.loan_active_time_tx owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_advancement_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_advancement_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_apd_adjustment_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_apd_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_autopay_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_autopay_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_autopay_entity_old','dw_owner', 'loan_pro_chorus_sandbox.loan_autopay_entity_old owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_chargeoff__transactions','dw_owner', 'loan_pro_chorus_sandbox.loan_chargeoff__transactions owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_chargeoff_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_chargeoff_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_collected_stats_view','dw_owner', 'loan_pro_chorus_sandbox.loan_collected_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_credit_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_credit_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_curtail_date_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_curtail_date_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_delinquency_history_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_delinquency_history_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_document_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_dpd_adjustment_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_dpd_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_duedate_change_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_duedate_change_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_escrow_tx_view','dw_owner', 'loan_pro_chorus_sandbox.loan_escrow_tx_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_funding_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_funding_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_future_stats_view','dw_owner', 'loan_pro_chorus_sandbox.loan_future_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_insurance_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_insurance_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_last_payment_view','dw_owner', 'loan_pro_chorus_sandbox.loan_last_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_late_fee__buckets','dw_owner', 'loan_pro_chorus_sandbox.loan_late_fee__buckets owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_modification_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_modification_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_next_forecast_payment_view','dw_owner', 'loan_pro_chorus_sandbox.loan_next_forecast_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_next_scheduled_payment_view','dw_owner', 'loan_pro_chorus_sandbox.loan_next_scheduled_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_past_stats_view','dw_owner', 'loan_pro_chorus_sandbox.loan_past_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_payment_seq','dw_owner', 'loan_pro_chorus_sandbox.loan_payment_seq owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_portfolio_view','dw_owner', 'loan_pro_chorus_sandbox.loan_portfolio_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_promise_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_promise_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_reverse_calc_settings','dw_owner', 'loan_pro_chorus_sandbox.loan_reverse_calc_settings owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_reverse_status_archive','dw_owner', 'loan_pro_chorus_sandbox.loan_reverse_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_schedule_payments_view','dw_owner', 'loan_pro_chorus_sandbox.loan_schedule_payments_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_schedule_roll_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_schedule_roll_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_settings_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_setup_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_setup_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_sms_queue_item_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_sms_queue_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_status_archive','dw_owner', 'loan_pro_chorus_sandbox.loan_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_status_archive_current_date_view','dw_owner', 'loan_pro_chorus_sandbox.loan_status_archive_current_date_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_status_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_stop_interest_date_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_stop_interest_date_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_sub_status_entity','dw_owner', 'loan_pro_chorus_sandbox.loan_sub_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_subportfolio_view','dw_owner', 'loan_pro_chorus_sandbox.loan_subportfolio_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_tx','dw_owner', 'loan_pro_chorus_sandbox.loan_tx owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_tx_payment_view','dw_owner', 'loan_pro_chorus_sandbox.loan_tx_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','loan_yearly_stats_view','dw_owner', 'loan_pro_chorus_sandbox.loan_yearly_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','mail_house_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox.mail_house_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','mail_house_entity','dw_owner', 'loan_pro_chorus_sandbox.mail_house_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','mail_house_loan','dw_owner', 'loan_pro_chorus_sandbox.mail_house_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','mail_house_tool_entity','dw_owner', 'loan_pro_chorus_sandbox.mail_house_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','mc_processor_extender','dw_owner', 'loan_pro_chorus_sandbox.mc_processor_extender owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','my_applications_setting_entity','dw_owner', 'loan_pro_chorus_sandbox.my_applications_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','my_loans_setting_entity','dw_owner', 'loan_pro_chorus_sandbox.my_loans_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','next_autopay_view','dw_owner', 'loan_pro_chorus_sandbox.next_autopay_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','note_category_entity','dw_owner', 'loan_pro_chorus_sandbox.note_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','note_entity','dw_owner', 'loan_pro_chorus_sandbox.note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','notification_category__delivery','dw_owner', 'loan_pro_chorus_sandbox.notification_category__delivery owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','notification_category_entity','dw_owner', 'loan_pro_chorus_sandbox.notification_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','notification_dnd_period_entity','dw_owner', 'loan_pro_chorus_sandbox.notification_dnd_period_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','notification_entity','dw_owner', 'loan_pro_chorus_sandbox.notification_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','page_entity','dw_owner', 'loan_pro_chorus_sandbox.page_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','payment__portfolio','dw_owner', 'loan_pro_chorus_sandbox.payment__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','payment__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox.payment__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','payment_account_entity','dw_owner', 'loan_pro_chorus_sandbox.payment_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','payment_entity','dw_owner', 'loan_pro_chorus_sandbox.payment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','payment_info_entity','dw_owner', 'loan_pro_chorus_sandbox.payment_info_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','payment_receipt_select_small_v','dw_owner', 'loan_pro_chorus_sandbox.payment_receipt_select_small_v owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','payment_receipt_select_v','dw_owner', 'loan_pro_chorus_sandbox.payment_receipt_select_v owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','payment_reversed_tx_snapshot','dw_owner', 'loan_pro_chorus_sandbox.payment_reversed_tx_snapshot owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','pnm_order_entity','dw_owner', 'loan_pro_chorus_sandbox.pnm_order_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','portfolio_category_entity','dw_owner', 'loan_pro_chorus_sandbox.portfolio_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','portfolio_entity','dw_owner', 'loan_pro_chorus_sandbox.portfolio_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','preconfigured_loan__portfolio','dw_owner', 'loan_pro_chorus_sandbox.preconfigured_loan__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','preconfigured_loan__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox.preconfigured_loan__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','preconfigured_loan_entity','dw_owner', 'loan_pro_chorus_sandbox.preconfigured_loan_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','preconfigured_loan_settings_entity','dw_owner', 'loan_pro_chorus_sandbox.preconfigured_loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','quick_note_entity','dw_owner', 'loan_pro_chorus_sandbox.quick_note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','recurring_charge_entity','dw_owner', 'loan_pro_chorus_sandbox.recurring_charge_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','report_cache','dw_owner', 'loan_pro_chorus_sandbox.report_cache owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','restriction_group__user','dw_owner', 'loan_pro_chorus_sandbox.restriction_group__user owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','restriction_group_entity','dw_owner', 'loan_pro_chorus_sandbox.restriction_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','restriction_group_entry_archive','dw_owner', 'loan_pro_chorus_sandbox.restriction_group_entry_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','restriction_group_entry_entity','dw_owner', 'loan_pro_chorus_sandbox.restriction_group_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule__category','dw_owner', 'loan_pro_chorus_sandbox.rule__category owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_apd_reset_entity','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_apd_reset_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_charge_off_entity','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_charge_off_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_checklist_entity','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_duedate_entity','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_duedate_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_loan_settings_entity','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_settings__portfolio','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_settings__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_settings__portfolio_to_delete','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_settings__portfolio_to_delete owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_settings__sub_portfolio','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_settings__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_settings__sub_portfolio_to_delete','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_settings__sub_portfolio_to_delete owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_applied_stop_interest_entity','dw_owner', 'loan_pro_chorus_sandbox.rule_applied_stop_interest_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_category_entity','dw_owner', 'loan_pro_chorus_sandbox.rule_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','rule_entity','dw_owner', 'loan_pro_chorus_sandbox.rule_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sample_entity','dw_owner', 'loan_pro_chorus_sandbox.sample_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','saved_search_entity','dw_owner', 'loan_pro_chorus_sandbox.saved_search_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sbt_dnd_periods','dw_owner', 'loan_pro_chorus_sandbox.sbt_dnd_periods owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sbt_message_log','dw_owner', 'loan_pro_chorus_sandbox.sbt_message_log owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sbt_template_mapping','dw_owner', 'loan_pro_chorus_sandbox.sbt_template_mapping owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','schedule_roll_template_entity','dw_owner', 'loan_pro_chorus_sandbox.schedule_roll_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','schedule_template_lines_entity','dw_owner', 'loan_pro_chorus_sandbox.schedule_template_lines_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','scheduled_action_entity','dw_owner', 'loan_pro_chorus_sandbox.scheduled_action_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','scheduled_report_entity','dw_owner', 'loan_pro_chorus_sandbox.scheduled_report_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','schema_version','dw_owner', 'loan_pro_chorus_sandbox.schema_version owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','search_index_error_log','dw_owner', 'loan_pro_chorus_sandbox.search_index_error_log owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','search_restriction_group_entity','dw_owner', 'loan_pro_chorus_sandbox.search_restriction_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','search_restriction_setting_entity','dw_owner', 'loan_pro_chorus_sandbox.search_restriction_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','security_group','dw_owner', 'loan_pro_chorus_sandbox.security_group owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','security_group__user','dw_owner', 'loan_pro_chorus_sandbox.security_group__user owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','shortcut_set_entity','dw_owner', 'loan_pro_chorus_sandbox.shortcut_set_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sms_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox.sms_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sms_trigger_entity','dw_owner', 'loan_pro_chorus_sandbox.sms_trigger_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sound_group_entity','dw_owner', 'loan_pro_chorus_sandbox.sound_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sound_group_item_entity','dw_owner', 'loan_pro_chorus_sandbox.sound_group_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','source_company_entity','dw_owner', 'loan_pro_chorus_sandbox.source_company_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','special_report_entity','dw_owner', 'loan_pro_chorus_sandbox.special_report_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','stoplight_entity','dw_owner', 'loan_pro_chorus_sandbox.stoplight_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','sub_portfolio_entity','dw_owner', 'loan_pro_chorus_sandbox.sub_portfolio_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','support_transaction__topic','dw_owner', 'loan_pro_chorus_sandbox.support_transaction__topic owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','support_transaction_entity','dw_owner', 'loan_pro_chorus_sandbox.support_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','system_note_entity','dw_owner', 'loan_pro_chorus_sandbox.system_note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tcn_campaign_entity','dw_owner', 'loan_pro_chorus_sandbox.tcn_campaign_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tcn_queue_item_entity','dw_owner', 'loan_pro_chorus_sandbox.tcn_queue_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tenant_backup_log_entity','dw_owner', 'loan_pro_chorus_sandbox.tenant_backup_log_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tenant_bulk_purchase_entity','dw_owner', 'loan_pro_chorus_sandbox.tenant_bulk_purchase_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tenant_checklist_category_entity','dw_owner', 'loan_pro_chorus_sandbox.tenant_checklist_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tenant_checklist_entity','dw_owner', 'loan_pro_chorus_sandbox.tenant_checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tenant_plugins_contract_entity','dw_owner', 'loan_pro_chorus_sandbox.tenant_plugins_contract_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tenant_pricing_tier_entity','dw_owner', 'loan_pro_chorus_sandbox.tenant_pricing_tier_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','tenant_setting__entity','dw_owner', 'loan_pro_chorus_sandbox.tenant_setting__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','testimonial_entity','dw_owner', 'loan_pro_chorus_sandbox.testimonial_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','time_slot_entity','dw_owner', 'loan_pro_chorus_sandbox.time_slot_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','topic_entity','dw_owner', 'loan_pro_chorus_sandbox.topic_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','total_advancements','dw_owner', 'loan_pro_chorus_sandbox.total_advancements owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','total_credits_view','dw_owner', 'loan_pro_chorus_sandbox.total_credits_view owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','transaction_entity','dw_owner', 'loan_pro_chorus_sandbox.transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','user__delivery','dw_owner', 'loan_pro_chorus_sandbox.user__delivery owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','user_chart_settings_entity','dw_owner', 'loan_pro_chorus_sandbox.user_chart_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','user_search_settings_entity','dw_owner', 'loan_pro_chorus_sandbox.user_search_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','user_tenant_configuration','dw_owner', 'loan_pro_chorus_sandbox.user_tenant_configuration owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','vendor_entity','dw_owner', 'loan_pro_chorus_sandbox.vendor_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','view_module_entity','dw_owner', 'loan_pro_chorus_sandbox.view_module_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','view_template__view_module','dw_owner', 'loan_pro_chorus_sandbox.view_template__view_module owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','view_template_entity','dw_owner', 'loan_pro_chorus_sandbox.view_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','view_widget_entity','dw_owner', 'loan_pro_chorus_sandbox.view_widget_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','web_delivery_entity','dw_owner', 'loan_pro_chorus_sandbox.web_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_chorus_sandbox','work_item__questions','dw_owner', 'loan_pro_chorus_sandbox.work_item__questions owner is dw_owner');
SELECT foreign_tables_are('loan_pro_fdw', ARRAY[
    '_ach_return_code_action_entity',
    '_address_entity',
    '_admin_tool__loan',
    '_admin_tool_entity',
    '_advance_category_entity',
    '_all_cust_info_view',
    '_bank_account_entity',
    '_billing_tool__loan',
    '_billing_tool_entity',
    '_bracket_entity',
    '_bracket_item_entity',
    '_cash_drawer__payment_method',
    '_cash_drawer_entity',
    '_cash_drawer_transaction_entity',
    '_cash_drawer_tx_category_entity',
    '_charge_entity',
    '_checking_account_entity',
    '_checklist_entity',
    '_checklist_item__entity',
    '_checklist_item_entity',
    '_collateral_entity',
    '_collateral_field_entity',
    '_collection',
    '_collection_item',
    '_collector_queue__loan',
    '_collector_queue_entity',
    '_collector_queue_question_entity',
    '_collector_queue_work_item_entity',
    '_comment_thread_comments',
    '_comment_thread_topics',
    '_computation_field_entity',
    '_contract_signer_entity',
    '_credit_breakdown_report',
    '_credit_card_entity',
    '_credit_category_entity',
    '_credit_report_history',
    '_credit_report_queue',
    '_credit_report_view',
    '_curtailment_template_entity',
    '_curtailment_template_lines_entity',
    '_custom_billing_template_entity',
    '_custom_billing_theme_entity',
    '_custom_boarding_process_entity',
    '_custom_boarding_process_step_entity',
    '_custom_charge_type_entity',
    '_custom_field',
    '_custom_field__entity',
    '_custom_form_entity',
    '_custom_form_section_entity',
    '_custom_form_tool__loan',
    '_custom_form_tool_entity',
    '_custom_payment_method_entity',
    '_custom_payment_type_entity',
    '_customer_credit_score_entity',
    '_customer_document_entity',
    '_customer_employer_entity',
    '_customer_entity',
    '_customer_login_attempts',
    '_customer_payment_method_entity',
    '_customer_phone_entity',
    '_customer_reference_entity',
    '_customer_social_profile_entity',
    '_customer_status_entity',
    '_data_dump_entity',
    '_data_import_entity',
    '_default_billing_options_entity',
    '_default_billing_template_entity',
    '_default_billing_theme_entity',
    '_defaults_autopay',
    '_defaults_charges',
    '_defaults_escrow_calculator',
    '_defaults_late_fee__buckets',
    '_defaults_payments',
    '_defaults_system_loan',
    '_defaults_user_loan',
    '_delivery_entity',
    '_disbursement_entity',
    '_doc_section_entity',
    '_due_to_date_view',
    '_email_delivery_entity',
    '_email_queue',
    '_email_template_entity',
    '_email_tool__loan',
    '_email_tool_entity',
    '_email_trigger_entity',
    '_escrow__transactions',
    '_escrow_adjustment_entity',
    '_escrow_analysis_process_entity',
    '_escrow_analysis_task_entity',
    '_escrow_calculator_entity',
    '_escrow_subset_entity',
    '_escrow_subset_options_entity',
    '_escrow_subset_options_entity_backup',
    '_escrow_transaction_entity',
    '_escrow_tx_category_entity',
    '_faq_entry_entity',
    '_file_attachment_entity',
    '_first_loan_payment_transaction_view',
    '_flag_entity',
    '_flag_status_archive',
    '_form_section_entity',
    '_gps_link_entity',
    '_history_funding_report_view',
    '_holding_account__investor',
    '_holding_account_archive_entity',
    '_holding_account_autopay_entity',
    '_holding_account_category_entity',
    '_holding_account_settings_entity',
    '_holding_account_status_entity',
    '_holding_account_sub_status_entity',
    '_holding_account_transaction_category_entity',
    '_holding_account_transaction_entity',
    '_homepage_image_entity',
    '_investment__portfolio',
    '_investment__sub_portfolio',
    '_investment_document_entity',
    '_investment_entity',
    '_investment_position_entity',
    '_investor_document_entity',
    '_investor_entity',
    '_investor_status_entity',
    '_iprestriction_entity',
    '_iprestriction_entry_entity',
    '_last_loan_payment_transaction_view',
    '_link_entity',
    '_linked_info__entity',
    '_linked_loan__entity',
    '_linked_loan_option_entity',
    '_loan__customer',
    '_loan__portfolio',
    '_loan__recurrent_charge',
    '_loan__rule_applied_apd_reset',
    '_loan__rule_applied_charge_off',
    '_loan__rule_applied_checklist',
    '_loan__rule_applied_duedate',
    '_loan__rule_applied_settings',
    '_loan__rule_applied_stop_interest',
    '_loan__sub_portfolio',
    '_loan_active_time_tx',
    '_loan_advancement_entity',
    '_loan_apd_adjustment_entity',
    '_loan_autopay_entity',
    '_loan_autopay_entity_old',
    '_loan_chargeoff__transactions',
    '_loan_chargeoff_entity',
    '_loan_collected_stats_view',
    '_loan_credit_entity',
    '_loan_curtail_date_entity',
    '_loan_delinquency_history_entity',
    '_loan_document_entity',
    '_loan_dpd_adjustment_entity',
    '_loan_duedate_change_entity',
    '_loan_entity',
    '_loan_escrow_tx_view',
    '_loan_funding_entity',
    '_loan_future_stats_view',
    '_loan_insurance_entity',
    '_loan_last_payment_view',
    '_loan_late_fee__buckets',
    '_loan_modification_entity',
    '_loan_next_forecast_payment_view',
    '_loan_next_scheduled_payment_view',
    '_loan_past_stats_view',
    '_loan_payment_seq',
    '_loan_portfolio_view',
    '_loan_promise_entity',
    '_loan_reverse_calc_settings',
    '_loan_reverse_status_archive',
    '_loan_schedule_payments_view',
    '_loan_schedule_roll_entity',
    '_loan_settings_entity',
    '_loan_setup_entity',
    '_loan_sms_queue_item_entity',
    '_loan_status_archive',
    '_loan_status_archive_current_date_view',
    '_loan_status_entity',
    '_loan_stop_interest_date_entity',
    '_loan_sub_status_entity',
    '_loan_subportfolio_view',
    '_loan_tx',
    '_loan_tx_payment_view',
    '_loan_yearly_stats_view',
    '_mail_house_delivery_entity',
    '_mail_house_entity',
    '_mail_house_loan',
    '_mail_house_tool_entity',
    '_mc_processor_extender',
    '_my_applications_setting_entity',
    '_my_loans_setting_entity',
    '_next_autopay_view',
    '_note_category_entity',
    '_note_entity',
    '_notification_category__delivery',
    '_notification_category_entity',
    '_notification_dnd_period_entity',
    '_notification_entity',
    '_page_entity',
    '_payment__portfolio',
    '_payment__sub_portfolio',
    '_payment_account_entity',
    '_payment_entity',
    '_payment_info_entity',
    '_payment_reversed_tx_snapshot',
    '_pnm_order_entity',
    '_portfolio_category_entity',
    '_portfolio_entity',
    '_preconfigured_loan__portfolio',
    '_preconfigured_loan__sub_portfolio',
    '_preconfigured_loan_entity',
    '_preconfigured_loan_settings_entity',
    '_quick_note_entity',
    '_recurring_charge_entity',
    '_report_cache',
    '_restriction_group__user',
    '_restriction_group_entity',
    '_restriction_group_entry_archive',
    '_restriction_group_entry_entity',
    '_rule__category',
    '_rule_applied_apd_reset_entity',
    '_rule_applied_charge_off_entity',
    '_rule_applied_checklist_entity',
    '_rule_applied_duedate_entity',
    '_rule_applied_loan_settings_entity',
    '_rule_applied_settings__portfolio',
    '_rule_applied_settings__portfolio_to_delete',
    '_rule_applied_settings__sub_portfolio',
    '_rule_applied_settings__sub_portfolio_to_delete',
    '_rule_applied_stop_interest_entity',
    '_rule_category_entity',
    '_rule_entity',
    '_sample_entity',
    '_saved_search_entity',
    '_sbt_dnd_periods',
    '_sbt_message_log',
    '_sbt_template_mapping',
    '_schedule_roll_template_entity',
    '_schedule_template_lines_entity',
    '_scheduled_action_entity',
    '_scheduled_report_entity',
    '_schema_version',
    '_search_index_error_log',
    '_search_restriction_group_entity',
    '_search_restriction_setting_entity',
    '_security_group',
    '_security_group__user',
    '_shortcut_set_entity',
    '_sms_delivery_entity',
    '_sms_trigger_entity',
    '_sound_group_entity',
    '_sound_group_item_entity',
    '_source_company_entity',
    '_special_report_entity',
    '_stoplight_entity',
    '_sub_portfolio_entity',
    '_support_transaction__topic',
    '_support_transaction_entity',
    '_system_note_entity',
    '_tcn_campaign_entity',
    '_tcn_queue_item_entity',
    '_tenant_backup_log_entity',
    '_tenant_bulk_purchase_entity',
    '_tenant_checklist_category_entity',
    '_tenant_checklist_entity',
    '_tenant_plugins_contract_entity',
    '_tenant_pricing_tier_entity',
    '_tenant_setting__entity',
    '_testimonial_entity',
    '_time_slot_entity',
    '_topic_entity',
    '_total_advancements',
    '_total_credits_view',
    '_transaction_entity',
    '_user__delivery',
    '_user_chart_settings_entity',
    '_user_search_settings_entity',
    '_user_tenant_configuration',
    '_vendor_entity',
    '_view_module_entity',
    '_view_template__view_module',
    '_view_template_entity',
    '_view_widget_entity',
    '_web_delivery_entity',
    '_work_item__questions'
]);

SELECT foreign_table_owner_is('loan_pro_fdw','_ach_return_code_action_entity','dw_owner', 'loan_pro_fdw._ach_return_code_action_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_address_entity','dw_owner', 'loan_pro_fdw._address_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_admin_tool__loan','dw_owner', 'loan_pro_fdw._admin_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_admin_tool_entity','dw_owner', 'loan_pro_fdw._admin_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_advance_category_entity','dw_owner', 'loan_pro_fdw._advance_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_all_cust_info_view','dw_owner', 'loan_pro_fdw._all_cust_info_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_bank_account_entity','dw_owner', 'loan_pro_fdw._bank_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_billing_tool__loan','dw_owner', 'loan_pro_fdw._billing_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_billing_tool_entity','dw_owner', 'loan_pro_fdw._billing_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_bracket_entity','dw_owner', 'loan_pro_fdw._bracket_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_bracket_item_entity','dw_owner', 'loan_pro_fdw._bracket_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_cash_drawer__payment_method','dw_owner', 'loan_pro_fdw._cash_drawer__payment_method owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_cash_drawer_entity','dw_owner', 'loan_pro_fdw._cash_drawer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_cash_drawer_transaction_entity','dw_owner', 'loan_pro_fdw._cash_drawer_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_cash_drawer_tx_category_entity','dw_owner', 'loan_pro_fdw._cash_drawer_tx_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_charge_entity','dw_owner', 'loan_pro_fdw._charge_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_checking_account_entity','dw_owner', 'loan_pro_fdw._checking_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_checklist_entity','dw_owner', 'loan_pro_fdw._checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_checklist_item__entity','dw_owner', 'loan_pro_fdw._checklist_item__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_checklist_item_entity','dw_owner', 'loan_pro_fdw._checklist_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_collateral_entity','dw_owner', 'loan_pro_fdw._collateral_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_collateral_field_entity','dw_owner', 'loan_pro_fdw._collateral_field_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_collection','dw_owner', 'loan_pro_fdw._collection owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_collection_item','dw_owner', 'loan_pro_fdw._collection_item owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_collector_queue__loan','dw_owner', 'loan_pro_fdw._collector_queue__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_collector_queue_entity','dw_owner', 'loan_pro_fdw._collector_queue_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_collector_queue_question_entity','dw_owner', 'loan_pro_fdw._collector_queue_question_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_collector_queue_work_item_entity','dw_owner', 'loan_pro_fdw._collector_queue_work_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_comment_thread_comments','dw_owner', 'loan_pro_fdw._comment_thread_comments owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_comment_thread_topics','dw_owner', 'loan_pro_fdw._comment_thread_topics owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_computation_field_entity','dw_owner', 'loan_pro_fdw._computation_field_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_contract_signer_entity','dw_owner', 'loan_pro_fdw._contract_signer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_credit_breakdown_report','dw_owner', 'loan_pro_fdw._credit_breakdown_report owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_credit_card_entity','dw_owner', 'loan_pro_fdw._credit_card_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_credit_category_entity','dw_owner', 'loan_pro_fdw._credit_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_credit_report_history','dw_owner', 'loan_pro_fdw._credit_report_history owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_credit_report_queue','dw_owner', 'loan_pro_fdw._credit_report_queue owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_credit_report_view','dw_owner', 'loan_pro_fdw._credit_report_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_curtailment_template_entity','dw_owner', 'loan_pro_fdw._curtailment_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_curtailment_template_lines_entity','dw_owner', 'loan_pro_fdw._curtailment_template_lines_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_billing_template_entity','dw_owner', 'loan_pro_fdw._custom_billing_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_billing_theme_entity','dw_owner', 'loan_pro_fdw._custom_billing_theme_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_boarding_process_entity','dw_owner', 'loan_pro_fdw._custom_boarding_process_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_boarding_process_step_entity','dw_owner', 'loan_pro_fdw._custom_boarding_process_step_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_charge_type_entity','dw_owner', 'loan_pro_fdw._custom_charge_type_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_field','dw_owner', 'loan_pro_fdw._custom_field owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_field__entity','dw_owner', 'loan_pro_fdw._custom_field__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_form_entity','dw_owner', 'loan_pro_fdw._custom_form_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_form_section_entity','dw_owner', 'loan_pro_fdw._custom_form_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_form_tool__loan','dw_owner', 'loan_pro_fdw._custom_form_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_form_tool_entity','dw_owner', 'loan_pro_fdw._custom_form_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_payment_method_entity','dw_owner', 'loan_pro_fdw._custom_payment_method_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_custom_payment_type_entity','dw_owner', 'loan_pro_fdw._custom_payment_type_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_credit_score_entity','dw_owner', 'loan_pro_fdw._customer_credit_score_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_document_entity','dw_owner', 'loan_pro_fdw._customer_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_employer_entity','dw_owner', 'loan_pro_fdw._customer_employer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_entity','dw_owner', 'loan_pro_fdw._customer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_login_attempts','dw_owner', 'loan_pro_fdw._customer_login_attempts owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_payment_method_entity','dw_owner', 'loan_pro_fdw._customer_payment_method_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_phone_entity','dw_owner', 'loan_pro_fdw._customer_phone_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_reference_entity','dw_owner', 'loan_pro_fdw._customer_reference_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_social_profile_entity','dw_owner', 'loan_pro_fdw._customer_social_profile_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_customer_status_entity','dw_owner', 'loan_pro_fdw._customer_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_data_dump_entity','dw_owner', 'loan_pro_fdw._data_dump_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_data_import_entity','dw_owner', 'loan_pro_fdw._data_import_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_default_billing_options_entity','dw_owner', 'loan_pro_fdw._default_billing_options_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_default_billing_template_entity','dw_owner', 'loan_pro_fdw._default_billing_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_default_billing_theme_entity','dw_owner', 'loan_pro_fdw._default_billing_theme_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_defaults_autopay','dw_owner', 'loan_pro_fdw._defaults_autopay owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_defaults_charges','dw_owner', 'loan_pro_fdw._defaults_charges owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_defaults_escrow_calculator','dw_owner', 'loan_pro_fdw._defaults_escrow_calculator owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_defaults_late_fee__buckets','dw_owner', 'loan_pro_fdw._defaults_late_fee__buckets owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_defaults_payments','dw_owner', 'loan_pro_fdw._defaults_payments owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_defaults_system_loan','dw_owner', 'loan_pro_fdw._defaults_system_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_defaults_user_loan','dw_owner', 'loan_pro_fdw._defaults_user_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_delivery_entity','dw_owner', 'loan_pro_fdw._delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_disbursement_entity','dw_owner', 'loan_pro_fdw._disbursement_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_doc_section_entity','dw_owner', 'loan_pro_fdw._doc_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_due_to_date_view','dw_owner', 'loan_pro_fdw._due_to_date_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_email_delivery_entity','dw_owner', 'loan_pro_fdw._email_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_email_queue','dw_owner', 'loan_pro_fdw._email_queue owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_email_template_entity','dw_owner', 'loan_pro_fdw._email_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_email_tool__loan','dw_owner', 'loan_pro_fdw._email_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_email_tool_entity','dw_owner', 'loan_pro_fdw._email_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_email_trigger_entity','dw_owner', 'loan_pro_fdw._email_trigger_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow__transactions','dw_owner', 'loan_pro_fdw._escrow__transactions owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_adjustment_entity','dw_owner', 'loan_pro_fdw._escrow_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_analysis_process_entity','dw_owner', 'loan_pro_fdw._escrow_analysis_process_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_analysis_task_entity','dw_owner', 'loan_pro_fdw._escrow_analysis_task_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_calculator_entity','dw_owner', 'loan_pro_fdw._escrow_calculator_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_subset_entity','dw_owner', 'loan_pro_fdw._escrow_subset_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_subset_options_entity','dw_owner', 'loan_pro_fdw._escrow_subset_options_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_subset_options_entity_backup','dw_owner', 'loan_pro_fdw._escrow_subset_options_entity_backup owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_transaction_entity','dw_owner', 'loan_pro_fdw._escrow_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_escrow_tx_category_entity','dw_owner', 'loan_pro_fdw._escrow_tx_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_faq_entry_entity','dw_owner', 'loan_pro_fdw._faq_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_file_attachment_entity','dw_owner', 'loan_pro_fdw._file_attachment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_first_loan_payment_transaction_view','dw_owner', 'loan_pro_fdw._first_loan_payment_transaction_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_flag_entity','dw_owner', 'loan_pro_fdw._flag_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_flag_status_archive','dw_owner', 'loan_pro_fdw._flag_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_form_section_entity','dw_owner', 'loan_pro_fdw._form_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_gps_link_entity','dw_owner', 'loan_pro_fdw._gps_link_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_history_funding_report_view','dw_owner', 'loan_pro_fdw._history_funding_report_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account__investor','dw_owner', 'loan_pro_fdw._holding_account__investor owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account_archive_entity','dw_owner', 'loan_pro_fdw._holding_account_archive_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account_autopay_entity','dw_owner', 'loan_pro_fdw._holding_account_autopay_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account_category_entity','dw_owner', 'loan_pro_fdw._holding_account_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account_settings_entity','dw_owner', 'loan_pro_fdw._holding_account_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account_status_entity','dw_owner', 'loan_pro_fdw._holding_account_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account_sub_status_entity','dw_owner', 'loan_pro_fdw._holding_account_sub_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account_transaction_category_entity','dw_owner', 'loan_pro_fdw._holding_account_transaction_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_holding_account_transaction_entity','dw_owner', 'loan_pro_fdw._holding_account_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_homepage_image_entity','dw_owner', 'loan_pro_fdw._homepage_image_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_investment__portfolio','dw_owner', 'loan_pro_fdw._investment__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_investment__sub_portfolio','dw_owner', 'loan_pro_fdw._investment__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_investment_document_entity','dw_owner', 'loan_pro_fdw._investment_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_investment_entity','dw_owner', 'loan_pro_fdw._investment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_investment_position_entity','dw_owner', 'loan_pro_fdw._investment_position_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_investor_document_entity','dw_owner', 'loan_pro_fdw._investor_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_investor_entity','dw_owner', 'loan_pro_fdw._investor_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_investor_status_entity','dw_owner', 'loan_pro_fdw._investor_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_iprestriction_entity','dw_owner', 'loan_pro_fdw._iprestriction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_iprestriction_entry_entity','dw_owner', 'loan_pro_fdw._iprestriction_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_last_loan_payment_transaction_view','dw_owner', 'loan_pro_fdw._last_loan_payment_transaction_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_link_entity','dw_owner', 'loan_pro_fdw._link_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_linked_info__entity','dw_owner', 'loan_pro_fdw._linked_info__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_linked_loan__entity','dw_owner', 'loan_pro_fdw._linked_loan__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_linked_loan_option_entity','dw_owner', 'loan_pro_fdw._linked_loan_option_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__customer','dw_owner', 'loan_pro_fdw._loan__customer owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__portfolio','dw_owner', 'loan_pro_fdw._loan__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__recurrent_charge','dw_owner', 'loan_pro_fdw._loan__recurrent_charge owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__rule_applied_apd_reset','dw_owner', 'loan_pro_fdw._loan__rule_applied_apd_reset owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__rule_applied_charge_off','dw_owner', 'loan_pro_fdw._loan__rule_applied_charge_off owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__rule_applied_checklist','dw_owner', 'loan_pro_fdw._loan__rule_applied_checklist owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__rule_applied_duedate','dw_owner', 'loan_pro_fdw._loan__rule_applied_duedate owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__rule_applied_settings','dw_owner', 'loan_pro_fdw._loan__rule_applied_settings owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__rule_applied_stop_interest','dw_owner', 'loan_pro_fdw._loan__rule_applied_stop_interest owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan__sub_portfolio','dw_owner', 'loan_pro_fdw._loan__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_active_time_tx','dw_owner', 'loan_pro_fdw._loan_active_time_tx owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_advancement_entity','dw_owner', 'loan_pro_fdw._loan_advancement_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_apd_adjustment_entity','dw_owner', 'loan_pro_fdw._loan_apd_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_autopay_entity','dw_owner', 'loan_pro_fdw._loan_autopay_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_autopay_entity_old','dw_owner', 'loan_pro_fdw._loan_autopay_entity_old owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_chargeoff__transactions','dw_owner', 'loan_pro_fdw._loan_chargeoff__transactions owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_chargeoff_entity','dw_owner', 'loan_pro_fdw._loan_chargeoff_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_collected_stats_view','dw_owner', 'loan_pro_fdw._loan_collected_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_credit_entity','dw_owner', 'loan_pro_fdw._loan_credit_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_curtail_date_entity','dw_owner', 'loan_pro_fdw._loan_curtail_date_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_delinquency_history_entity','dw_owner', 'loan_pro_fdw._loan_delinquency_history_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_document_entity','dw_owner', 'loan_pro_fdw._loan_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_dpd_adjustment_entity','dw_owner', 'loan_pro_fdw._loan_dpd_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_duedate_change_entity','dw_owner', 'loan_pro_fdw._loan_duedate_change_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_entity','dw_owner', 'loan_pro_fdw._loan_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_escrow_tx_view','dw_owner', 'loan_pro_fdw._loan_escrow_tx_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_funding_entity','dw_owner', 'loan_pro_fdw._loan_funding_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_future_stats_view','dw_owner', 'loan_pro_fdw._loan_future_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_insurance_entity','dw_owner', 'loan_pro_fdw._loan_insurance_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_last_payment_view','dw_owner', 'loan_pro_fdw._loan_last_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_late_fee__buckets','dw_owner', 'loan_pro_fdw._loan_late_fee__buckets owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_modification_entity','dw_owner', 'loan_pro_fdw._loan_modification_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_next_forecast_payment_view','dw_owner', 'loan_pro_fdw._loan_next_forecast_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_next_scheduled_payment_view','dw_owner', 'loan_pro_fdw._loan_next_scheduled_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_past_stats_view','dw_owner', 'loan_pro_fdw._loan_past_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_payment_seq','dw_owner', 'loan_pro_fdw._loan_payment_seq owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_portfolio_view','dw_owner', 'loan_pro_fdw._loan_portfolio_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_promise_entity','dw_owner', 'loan_pro_fdw._loan_promise_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_reverse_calc_settings','dw_owner', 'loan_pro_fdw._loan_reverse_calc_settings owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_reverse_status_archive','dw_owner', 'loan_pro_fdw._loan_reverse_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_schedule_payments_view','dw_owner', 'loan_pro_fdw._loan_schedule_payments_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_schedule_roll_entity','dw_owner', 'loan_pro_fdw._loan_schedule_roll_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_settings_entity','dw_owner', 'loan_pro_fdw._loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_setup_entity','dw_owner', 'loan_pro_fdw._loan_setup_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_sms_queue_item_entity','dw_owner', 'loan_pro_fdw._loan_sms_queue_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_status_archive','dw_owner', 'loan_pro_fdw._loan_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_status_archive_current_date_view','dw_owner', 'loan_pro_fdw._loan_status_archive_current_date_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_status_entity','dw_owner', 'loan_pro_fdw._loan_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_stop_interest_date_entity','dw_owner', 'loan_pro_fdw._loan_stop_interest_date_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_sub_status_entity','dw_owner', 'loan_pro_fdw._loan_sub_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_subportfolio_view','dw_owner', 'loan_pro_fdw._loan_subportfolio_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_tx','dw_owner', 'loan_pro_fdw._loan_tx owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_tx_payment_view','dw_owner', 'loan_pro_fdw._loan_tx_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_loan_yearly_stats_view','dw_owner', 'loan_pro_fdw._loan_yearly_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_mail_house_delivery_entity','dw_owner', 'loan_pro_fdw._mail_house_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_mail_house_entity','dw_owner', 'loan_pro_fdw._mail_house_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_mail_house_loan','dw_owner', 'loan_pro_fdw._mail_house_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_mail_house_tool_entity','dw_owner', 'loan_pro_fdw._mail_house_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_mc_processor_extender','dw_owner', 'loan_pro_fdw._mc_processor_extender owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_my_applications_setting_entity','dw_owner', 'loan_pro_fdw._my_applications_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_my_loans_setting_entity','dw_owner', 'loan_pro_fdw._my_loans_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_next_autopay_view','dw_owner', 'loan_pro_fdw._next_autopay_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_note_category_entity','dw_owner', 'loan_pro_fdw._note_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_note_entity','dw_owner', 'loan_pro_fdw._note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_notification_category__delivery','dw_owner', 'loan_pro_fdw._notification_category__delivery owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_notification_category_entity','dw_owner', 'loan_pro_fdw._notification_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_notification_dnd_period_entity','dw_owner', 'loan_pro_fdw._notification_dnd_period_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_notification_entity','dw_owner', 'loan_pro_fdw._notification_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_page_entity','dw_owner', 'loan_pro_fdw._page_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_payment__portfolio','dw_owner', 'loan_pro_fdw._payment__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_payment__sub_portfolio','dw_owner', 'loan_pro_fdw._payment__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_payment_account_entity','dw_owner', 'loan_pro_fdw._payment_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_payment_entity','dw_owner', 'loan_pro_fdw._payment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_payment_info_entity','dw_owner', 'loan_pro_fdw._payment_info_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_payment_reversed_tx_snapshot','dw_owner', 'loan_pro_fdw._payment_reversed_tx_snapshot owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_pnm_order_entity','dw_owner', 'loan_pro_fdw._pnm_order_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_portfolio_category_entity','dw_owner', 'loan_pro_fdw._portfolio_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_portfolio_entity','dw_owner', 'loan_pro_fdw._portfolio_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_preconfigured_loan__portfolio','dw_owner', 'loan_pro_fdw._preconfigured_loan__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_preconfigured_loan__sub_portfolio','dw_owner', 'loan_pro_fdw._preconfigured_loan__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_preconfigured_loan_entity','dw_owner', 'loan_pro_fdw._preconfigured_loan_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_preconfigured_loan_settings_entity','dw_owner', 'loan_pro_fdw._preconfigured_loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_quick_note_entity','dw_owner', 'loan_pro_fdw._quick_note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_recurring_charge_entity','dw_owner', 'loan_pro_fdw._recurring_charge_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_report_cache','dw_owner', 'loan_pro_fdw._report_cache owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_restriction_group__user','dw_owner', 'loan_pro_fdw._restriction_group__user owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_restriction_group_entity','dw_owner', 'loan_pro_fdw._restriction_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_restriction_group_entry_archive','dw_owner', 'loan_pro_fdw._restriction_group_entry_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_restriction_group_entry_entity','dw_owner', 'loan_pro_fdw._restriction_group_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule__category','dw_owner', 'loan_pro_fdw._rule__category owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_apd_reset_entity','dw_owner', 'loan_pro_fdw._rule_applied_apd_reset_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_charge_off_entity','dw_owner', 'loan_pro_fdw._rule_applied_charge_off_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_checklist_entity','dw_owner', 'loan_pro_fdw._rule_applied_checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_duedate_entity','dw_owner', 'loan_pro_fdw._rule_applied_duedate_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_loan_settings_entity','dw_owner', 'loan_pro_fdw._rule_applied_loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_settings__portfolio','dw_owner', 'loan_pro_fdw._rule_applied_settings__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_settings__portfolio_to_delete','dw_owner', 'loan_pro_fdw._rule_applied_settings__portfolio_to_delete owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_settings__sub_portfolio','dw_owner', 'loan_pro_fdw._rule_applied_settings__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_settings__sub_portfolio_to_delete','dw_owner', 'loan_pro_fdw._rule_applied_settings__sub_portfolio_to_delete owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_applied_stop_interest_entity','dw_owner', 'loan_pro_fdw._rule_applied_stop_interest_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_category_entity','dw_owner', 'loan_pro_fdw._rule_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_rule_entity','dw_owner', 'loan_pro_fdw._rule_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sample_entity','dw_owner', 'loan_pro_fdw._sample_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_saved_search_entity','dw_owner', 'loan_pro_fdw._saved_search_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sbt_dnd_periods','dw_owner', 'loan_pro_fdw._sbt_dnd_periods owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sbt_message_log','dw_owner', 'loan_pro_fdw._sbt_message_log owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sbt_template_mapping','dw_owner', 'loan_pro_fdw._sbt_template_mapping owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_schedule_roll_template_entity','dw_owner', 'loan_pro_fdw._schedule_roll_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_schedule_template_lines_entity','dw_owner', 'loan_pro_fdw._schedule_template_lines_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_scheduled_action_entity','dw_owner', 'loan_pro_fdw._scheduled_action_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_scheduled_report_entity','dw_owner', 'loan_pro_fdw._scheduled_report_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_schema_version','dw_owner', 'loan_pro_fdw._schema_version owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_search_index_error_log','dw_owner', 'loan_pro_fdw._search_index_error_log owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_search_restriction_group_entity','dw_owner', 'loan_pro_fdw._search_restriction_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_search_restriction_setting_entity','dw_owner', 'loan_pro_fdw._search_restriction_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_security_group','dw_owner', 'loan_pro_fdw._security_group owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_security_group__user','dw_owner', 'loan_pro_fdw._security_group__user owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_shortcut_set_entity','dw_owner', 'loan_pro_fdw._shortcut_set_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sms_delivery_entity','dw_owner', 'loan_pro_fdw._sms_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sms_trigger_entity','dw_owner', 'loan_pro_fdw._sms_trigger_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sound_group_entity','dw_owner', 'loan_pro_fdw._sound_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sound_group_item_entity','dw_owner', 'loan_pro_fdw._sound_group_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_source_company_entity','dw_owner', 'loan_pro_fdw._source_company_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_special_report_entity','dw_owner', 'loan_pro_fdw._special_report_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_stoplight_entity','dw_owner', 'loan_pro_fdw._stoplight_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_sub_portfolio_entity','dw_owner', 'loan_pro_fdw._sub_portfolio_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_support_transaction__topic','dw_owner', 'loan_pro_fdw._support_transaction__topic owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_support_transaction_entity','dw_owner', 'loan_pro_fdw._support_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_system_note_entity','dw_owner', 'loan_pro_fdw._system_note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tcn_campaign_entity','dw_owner', 'loan_pro_fdw._tcn_campaign_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tcn_queue_item_entity','dw_owner', 'loan_pro_fdw._tcn_queue_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tenant_backup_log_entity','dw_owner', 'loan_pro_fdw._tenant_backup_log_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tenant_bulk_purchase_entity','dw_owner', 'loan_pro_fdw._tenant_bulk_purchase_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tenant_checklist_category_entity','dw_owner', 'loan_pro_fdw._tenant_checklist_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tenant_checklist_entity','dw_owner', 'loan_pro_fdw._tenant_checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tenant_plugins_contract_entity','dw_owner', 'loan_pro_fdw._tenant_plugins_contract_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tenant_pricing_tier_entity','dw_owner', 'loan_pro_fdw._tenant_pricing_tier_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_tenant_setting__entity','dw_owner', 'loan_pro_fdw._tenant_setting__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_testimonial_entity','dw_owner', 'loan_pro_fdw._testimonial_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_time_slot_entity','dw_owner', 'loan_pro_fdw._time_slot_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_topic_entity','dw_owner', 'loan_pro_fdw._topic_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_total_advancements','dw_owner', 'loan_pro_fdw._total_advancements owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_total_credits_view','dw_owner', 'loan_pro_fdw._total_credits_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_transaction_entity','dw_owner', 'loan_pro_fdw._transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_user__delivery','dw_owner', 'loan_pro_fdw._user__delivery owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_user_chart_settings_entity','dw_owner', 'loan_pro_fdw._user_chart_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_user_search_settings_entity','dw_owner', 'loan_pro_fdw._user_search_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_user_tenant_configuration','dw_owner', 'loan_pro_fdw._user_tenant_configuration owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_vendor_entity','dw_owner', 'loan_pro_fdw._vendor_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_view_module_entity','dw_owner', 'loan_pro_fdw._view_module_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_view_template__view_module','dw_owner', 'loan_pro_fdw._view_template__view_module owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_view_template_entity','dw_owner', 'loan_pro_fdw._view_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_view_widget_entity','dw_owner', 'loan_pro_fdw._view_widget_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_web_delivery_entity','dw_owner', 'loan_pro_fdw._web_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_fdw','_work_item__questions','dw_owner', 'loan_pro_fdw._work_item__questions owner is dw_owner');
SELECT views_are('loan_pro_fdw', ARRAY[
    '_system_note_customer_email',
    'ach_return_code_action_entity',
    'address_entity',
    'admin_tool__loan',
    'admin_tool_entity',
    'advance_category_entity',
    'all_cust_info_view',
    'bank_account_entity',
    'billing_tool__loan',
    'billing_tool_entity',
    'bracket_entity',
    'bracket_item_entity',
    'cash_drawer__payment_method',
    'cash_drawer_entity',
    'cash_drawer_transaction_entity',
    'cash_drawer_tx_category_entity',
    'charge_entity',
    'checking_account_entity',
    'checklist_entity',
    'checklist_item__entity',
    'checklist_item_entity',
    'collateral_entity',
    'collateral_field_entity',
    'collection',
    'collection_item',
    'collector_queue__loan',
    'collector_queue_entity',
    'collector_queue_question_entity',
    'collector_queue_work_item_entity',
    'comment_thread_comments',
    'comment_thread_topics',
    'computation_field_entity',
    'contract_signer_entity',
    'credit_breakdown_report',
    'credit_card_entity',
    'credit_category_entity',
    'credit_report_history',
    'credit_report_queue',
    'credit_report_view',
    'curtailment_template_entity',
    'curtailment_template_lines_entity',
    'custom_billing_template_entity',
    'custom_billing_theme_entity',
    'custom_boarding_process_entity',
    'custom_boarding_process_step_entity',
    'custom_charge_type_entity',
    'custom_field',
    'custom_field__entity',
    'custom_form_entity',
    'custom_form_section_entity',
    'custom_form_tool__loan',
    'custom_form_tool_entity',
    'custom_payment_method_entity',
    'custom_payment_type_entity',
    'customer_credit_score_entity',
    'customer_document_entity',
    'customer_employer_entity',
    'customer_entity',
    'customer_login_attempts',
    'customer_payment_method_entity',
    'customer_phone_entity',
    'customer_reference_entity',
    'customer_social_profile_entity',
    'customer_status_entity',
    'data_dump_entity',
    'data_import_entity',
    'default_billing_options_entity',
    'default_billing_template_entity',
    'default_billing_theme_entity',
    'defaults_autopay',
    'defaults_charges',
    'defaults_escrow_calculator',
    'defaults_late_fee__buckets',
    'defaults_payments',
    'defaults_system_loan',
    'defaults_user_loan',
    'delivery_entity',
    'disbursement_entity',
    'doc_section_entity',
    'due_to_date_view',
    'email_delivery_entity',
    'email_queue',
    'email_template_entity',
    'email_tool__loan',
    'email_tool_entity',
    'email_trigger_entity',
    'escrow__transactions',
    'escrow_adjustment_entity',
    'escrow_analysis_process_entity',
    'escrow_analysis_task_entity',
    'escrow_calculator_entity',
    'escrow_subset_entity',
    'escrow_subset_options_entity',
    'escrow_subset_options_entity_backup',
    'escrow_transaction_entity',
    'escrow_tx_category_entity',
    'faq_entry_entity',
    'file_attachment_entity',
    'first_loan_payment_transaction_view',
    'flag_entity',
    'flag_status_archive',
    'form_section_entity',
    'gps_link_entity',
    'history_funding_report_view',
    'holding_account__investor',
    'holding_account_archive_entity',
    'holding_account_autopay_entity',
    'holding_account_category_entity',
    'holding_account_settings_entity',
    'holding_account_status_entity',
    'holding_account_sub_status_entity',
    'holding_account_transaction_category_entity',
    'holding_account_transaction_entity',
    'homepage_image_entity',
    'investment__portfolio',
    'investment__sub_portfolio',
    'investment_document_entity',
    'investment_entity',
    'investment_position_entity',
    'investor_document_entity',
    'investor_entity',
    'investor_status_entity',
    'iprestriction_entity',
    'iprestriction_entry_entity',
    'last_loan_payment_transaction_view',
    'link_entity',
    'linked_info__entity',
    'linked_loan__entity',
    'linked_loan_option_entity',
    'loan__customer',
    'loan__portfolio',
    'loan__recurrent_charge',
    'loan__rule_applied_apd_reset',
    'loan__rule_applied_charge_off',
    'loan__rule_applied_checklist',
    'loan__rule_applied_duedate',
    'loan__rule_applied_settings',
    'loan__rule_applied_stop_interest',
    'loan__sub_portfolio',
    'loan_active_time_tx',
    'loan_advancement_entity',
    'loan_apd_adjustment_entity',
    'loan_autopay_entity',
    'loan_autopay_entity_old',
    'loan_chargeoff__transactions',
    'loan_chargeoff_entity',
    'loan_collected_stats_view',
    'loan_credit_entity',
    'loan_curtail_date_entity',
    'loan_delinquency_history_entity',
    'loan_document_entity',
    'loan_dpd_adjustment_entity',
    'loan_duedate_change_entity',
    'loan_entity',
    'loan_escrow_tx_view',
    'loan_funding_entity',
    'loan_future_stats_view',
    'loan_insurance_entity',
    'loan_last_payment_view',
    'loan_late_fee__buckets',
    'loan_modification_entity',
    'loan_next_forecast_payment_view',
    'loan_next_scheduled_payment_view',
    'loan_past_stats_view',
    'loan_payment_seq',
    'loan_portfolio_view',
    'loan_promise_entity',
    'loan_reverse_calc_settings',
    'loan_reverse_status_archive',
    'loan_schedule_payments_view',
    'loan_schedule_roll_entity',
    'loan_settings_entity',
    'loan_setup_entity',
    'loan_sms_queue_item_entity',
    'loan_status_archive',
    'loan_status_archive_current_date_view',
    'loan_status_entity',
    'loan_stop_interest_date_entity',
    'loan_sub_status_entity',
    'loan_subportfolio_view',
    'loan_tx',
    'loan_tx_payment_view',
    'loan_yearly_stats_view',
    'mail_house_delivery_entity',
    'mail_house_entity',
    'mail_house_loan',
    'mail_house_tool_entity',
    'mc_processor_extender',
    'my_applications_setting_entity',
    'my_loans_setting_entity',
    'next_autopay_view',
    'note_category_entity',
    'note_entity',
    'notification_category__delivery',
    'notification_category_entity',
    'notification_dnd_period_entity',
    'notification_entity',
    'page_entity',
    'payment__portfolio',
    'payment__sub_portfolio',
    'payment_account_entity',
    'payment_entity',
    'payment_info_entity',
    'payment_receipt_select_small_v',
    'payment_receipt_select_v',
    'payment_reversed_tx_snapshot',
    'pnm_order_entity',
    'portfolio_category_entity',
    'portfolio_entity',
    'preconfigured_loan__portfolio',
    'preconfigured_loan__sub_portfolio',
    'preconfigured_loan_entity',
    'preconfigured_loan_settings_entity',
    'quick_note_entity',
    'recurring_charge_entity',
    'report_cache',
    'restriction_group__user',
    'restriction_group_entity',
    'restriction_group_entry_archive',
    'restriction_group_entry_entity',
    'rule__category',
    'rule_applied_apd_reset_entity',
    'rule_applied_charge_off_entity',
    'rule_applied_checklist_entity',
    'rule_applied_duedate_entity',
    'rule_applied_loan_settings_entity',
    'rule_applied_settings__portfolio',
    'rule_applied_settings__portfolio_to_delete',
    'rule_applied_settings__sub_portfolio',
    'rule_applied_settings__sub_portfolio_to_delete',
    'rule_applied_stop_interest_entity',
    'rule_category_entity',
    'rule_entity',
    'sample_entity',
    'saved_search_entity',
    'sbt_dnd_periods',
    'sbt_message_log',
    'sbt_template_mapping',
    'schedule_roll_template_entity',
    'schedule_template_lines_entity',
    'scheduled_action_entity',
    'scheduled_report_entity',
    'schema_version',
    'search_index_error_log',
    'search_restriction_group_entity',
    'search_restriction_setting_entity',
    'security_group',
    'security_group__user',
    'shortcut_set_entity',
    'sms_delivery_entity',
    'sms_trigger_entity',
    'sound_group_entity',
    'sound_group_item_entity',
    'source_company_entity',
    'special_report_entity',
    'stoplight_entity',
    'sub_portfolio_entity',
    'support_transaction__topic',
    'support_transaction_entity',
    'system_note_entity',
    'tcn_campaign_entity',
    'tcn_queue_item_entity',
    'tenant_backup_log_entity',
    'tenant_bulk_purchase_entity',
    'tenant_checklist_category_entity',
    'tenant_checklist_entity',
    'tenant_plugins_contract_entity',
    'tenant_pricing_tier_entity',
    'tenant_setting__entity',
    'testimonial_entity',
    'time_slot_entity',
    'topic_entity',
    'total_advancements',
    'total_credits_view',
    'transaction_entity',
    'user__delivery',
    'user_chart_settings_entity',
    'user_search_settings_entity',
    'user_tenant_configuration',
    'vendor_entity',
    'view_module_entity',
    'view_template__view_module',
    'view_template_entity',
    'view_widget_entity',
    'web_delivery_entity',
    'work_item__questions'
]);

SELECT view_owner_is('loan_pro_fdw','_system_note_customer_email','dw_owner', 'loan_pro_fdw._system_note_customer_email owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','ach_return_code_action_entity','dw_owner', 'loan_pro_fdw.ach_return_code_action_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','address_entity','dw_owner', 'loan_pro_fdw.address_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','admin_tool__loan','dw_owner', 'loan_pro_fdw.admin_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','admin_tool_entity','dw_owner', 'loan_pro_fdw.admin_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','advance_category_entity','dw_owner', 'loan_pro_fdw.advance_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','all_cust_info_view','dw_owner', 'loan_pro_fdw.all_cust_info_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','bank_account_entity','dw_owner', 'loan_pro_fdw.bank_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','billing_tool__loan','dw_owner', 'loan_pro_fdw.billing_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','billing_tool_entity','dw_owner', 'loan_pro_fdw.billing_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','bracket_entity','dw_owner', 'loan_pro_fdw.bracket_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','bracket_item_entity','dw_owner', 'loan_pro_fdw.bracket_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','cash_drawer__payment_method','dw_owner', 'loan_pro_fdw.cash_drawer__payment_method owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','cash_drawer_entity','dw_owner', 'loan_pro_fdw.cash_drawer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','cash_drawer_transaction_entity','dw_owner', 'loan_pro_fdw.cash_drawer_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','cash_drawer_tx_category_entity','dw_owner', 'loan_pro_fdw.cash_drawer_tx_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','charge_entity','dw_owner', 'loan_pro_fdw.charge_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','checking_account_entity','dw_owner', 'loan_pro_fdw.checking_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','checklist_entity','dw_owner', 'loan_pro_fdw.checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','checklist_item__entity','dw_owner', 'loan_pro_fdw.checklist_item__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','checklist_item_entity','dw_owner', 'loan_pro_fdw.checklist_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','collateral_entity','dw_owner', 'loan_pro_fdw.collateral_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','collateral_field_entity','dw_owner', 'loan_pro_fdw.collateral_field_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','collection','dw_owner', 'loan_pro_fdw.collection owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','collection_item','dw_owner', 'loan_pro_fdw.collection_item owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','collector_queue__loan','dw_owner', 'loan_pro_fdw.collector_queue__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','collector_queue_entity','dw_owner', 'loan_pro_fdw.collector_queue_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','collector_queue_question_entity','dw_owner', 'loan_pro_fdw.collector_queue_question_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','collector_queue_work_item_entity','dw_owner', 'loan_pro_fdw.collector_queue_work_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','comment_thread_comments','dw_owner', 'loan_pro_fdw.comment_thread_comments owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','comment_thread_topics','dw_owner', 'loan_pro_fdw.comment_thread_topics owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','computation_field_entity','dw_owner', 'loan_pro_fdw.computation_field_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','contract_signer_entity','dw_owner', 'loan_pro_fdw.contract_signer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','credit_breakdown_report','dw_owner', 'loan_pro_fdw.credit_breakdown_report owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','credit_card_entity','dw_owner', 'loan_pro_fdw.credit_card_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','credit_category_entity','dw_owner', 'loan_pro_fdw.credit_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','credit_report_history','dw_owner', 'loan_pro_fdw.credit_report_history owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','credit_report_queue','dw_owner', 'loan_pro_fdw.credit_report_queue owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','credit_report_view','dw_owner', 'loan_pro_fdw.credit_report_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','curtailment_template_entity','dw_owner', 'loan_pro_fdw.curtailment_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','curtailment_template_lines_entity','dw_owner', 'loan_pro_fdw.curtailment_template_lines_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_billing_template_entity','dw_owner', 'loan_pro_fdw.custom_billing_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_billing_theme_entity','dw_owner', 'loan_pro_fdw.custom_billing_theme_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_boarding_process_entity','dw_owner', 'loan_pro_fdw.custom_boarding_process_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_boarding_process_step_entity','dw_owner', 'loan_pro_fdw.custom_boarding_process_step_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_charge_type_entity','dw_owner', 'loan_pro_fdw.custom_charge_type_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_field','dw_owner', 'loan_pro_fdw.custom_field owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_field__entity','dw_owner', 'loan_pro_fdw.custom_field__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_form_entity','dw_owner', 'loan_pro_fdw.custom_form_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_form_section_entity','dw_owner', 'loan_pro_fdw.custom_form_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_form_tool__loan','dw_owner', 'loan_pro_fdw.custom_form_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_form_tool_entity','dw_owner', 'loan_pro_fdw.custom_form_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_payment_method_entity','dw_owner', 'loan_pro_fdw.custom_payment_method_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','custom_payment_type_entity','dw_owner', 'loan_pro_fdw.custom_payment_type_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_credit_score_entity','dw_owner', 'loan_pro_fdw.customer_credit_score_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_document_entity','dw_owner', 'loan_pro_fdw.customer_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_employer_entity','dw_owner', 'loan_pro_fdw.customer_employer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_entity','dw_owner', 'loan_pro_fdw.customer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_login_attempts','dw_owner', 'loan_pro_fdw.customer_login_attempts owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_payment_method_entity','dw_owner', 'loan_pro_fdw.customer_payment_method_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_phone_entity','dw_owner', 'loan_pro_fdw.customer_phone_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_reference_entity','dw_owner', 'loan_pro_fdw.customer_reference_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_social_profile_entity','dw_owner', 'loan_pro_fdw.customer_social_profile_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','customer_status_entity','dw_owner', 'loan_pro_fdw.customer_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','data_dump_entity','dw_owner', 'loan_pro_fdw.data_dump_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','data_import_entity','dw_owner', 'loan_pro_fdw.data_import_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','default_billing_options_entity','dw_owner', 'loan_pro_fdw.default_billing_options_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','default_billing_template_entity','dw_owner', 'loan_pro_fdw.default_billing_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','default_billing_theme_entity','dw_owner', 'loan_pro_fdw.default_billing_theme_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','defaults_autopay','dw_owner', 'loan_pro_fdw.defaults_autopay owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','defaults_charges','dw_owner', 'loan_pro_fdw.defaults_charges owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','defaults_escrow_calculator','dw_owner', 'loan_pro_fdw.defaults_escrow_calculator owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','defaults_late_fee__buckets','dw_owner', 'loan_pro_fdw.defaults_late_fee__buckets owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','defaults_payments','dw_owner', 'loan_pro_fdw.defaults_payments owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','defaults_system_loan','dw_owner', 'loan_pro_fdw.defaults_system_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','defaults_user_loan','dw_owner', 'loan_pro_fdw.defaults_user_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','delivery_entity','dw_owner', 'loan_pro_fdw.delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','disbursement_entity','dw_owner', 'loan_pro_fdw.disbursement_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','doc_section_entity','dw_owner', 'loan_pro_fdw.doc_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','due_to_date_view','dw_owner', 'loan_pro_fdw.due_to_date_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','email_delivery_entity','dw_owner', 'loan_pro_fdw.email_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','email_queue','dw_owner', 'loan_pro_fdw.email_queue owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','email_template_entity','dw_owner', 'loan_pro_fdw.email_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','email_tool__loan','dw_owner', 'loan_pro_fdw.email_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','email_tool_entity','dw_owner', 'loan_pro_fdw.email_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','email_trigger_entity','dw_owner', 'loan_pro_fdw.email_trigger_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow__transactions','dw_owner', 'loan_pro_fdw.escrow__transactions owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_adjustment_entity','dw_owner', 'loan_pro_fdw.escrow_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_analysis_process_entity','dw_owner', 'loan_pro_fdw.escrow_analysis_process_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_analysis_task_entity','dw_owner', 'loan_pro_fdw.escrow_analysis_task_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_calculator_entity','dw_owner', 'loan_pro_fdw.escrow_calculator_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_subset_entity','dw_owner', 'loan_pro_fdw.escrow_subset_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_subset_options_entity','dw_owner', 'loan_pro_fdw.escrow_subset_options_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_subset_options_entity_backup','dw_owner', 'loan_pro_fdw.escrow_subset_options_entity_backup owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_transaction_entity','dw_owner', 'loan_pro_fdw.escrow_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','escrow_tx_category_entity','dw_owner', 'loan_pro_fdw.escrow_tx_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','faq_entry_entity','dw_owner', 'loan_pro_fdw.faq_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','file_attachment_entity','dw_owner', 'loan_pro_fdw.file_attachment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','first_loan_payment_transaction_view','dw_owner', 'loan_pro_fdw.first_loan_payment_transaction_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','flag_entity','dw_owner', 'loan_pro_fdw.flag_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','flag_status_archive','dw_owner', 'loan_pro_fdw.flag_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','form_section_entity','dw_owner', 'loan_pro_fdw.form_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','gps_link_entity','dw_owner', 'loan_pro_fdw.gps_link_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','history_funding_report_view','dw_owner', 'loan_pro_fdw.history_funding_report_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account__investor','dw_owner', 'loan_pro_fdw.holding_account__investor owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account_archive_entity','dw_owner', 'loan_pro_fdw.holding_account_archive_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account_autopay_entity','dw_owner', 'loan_pro_fdw.holding_account_autopay_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account_category_entity','dw_owner', 'loan_pro_fdw.holding_account_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account_settings_entity','dw_owner', 'loan_pro_fdw.holding_account_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account_status_entity','dw_owner', 'loan_pro_fdw.holding_account_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account_sub_status_entity','dw_owner', 'loan_pro_fdw.holding_account_sub_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account_transaction_category_entity','dw_owner', 'loan_pro_fdw.holding_account_transaction_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','holding_account_transaction_entity','dw_owner', 'loan_pro_fdw.holding_account_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','homepage_image_entity','dw_owner', 'loan_pro_fdw.homepage_image_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','investment__portfolio','dw_owner', 'loan_pro_fdw.investment__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','investment__sub_portfolio','dw_owner', 'loan_pro_fdw.investment__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','investment_document_entity','dw_owner', 'loan_pro_fdw.investment_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','investment_entity','dw_owner', 'loan_pro_fdw.investment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','investment_position_entity','dw_owner', 'loan_pro_fdw.investment_position_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','investor_document_entity','dw_owner', 'loan_pro_fdw.investor_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','investor_entity','dw_owner', 'loan_pro_fdw.investor_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','investor_status_entity','dw_owner', 'loan_pro_fdw.investor_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','iprestriction_entity','dw_owner', 'loan_pro_fdw.iprestriction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','iprestriction_entry_entity','dw_owner', 'loan_pro_fdw.iprestriction_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','last_loan_payment_transaction_view','dw_owner', 'loan_pro_fdw.last_loan_payment_transaction_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','link_entity','dw_owner', 'loan_pro_fdw.link_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','linked_info__entity','dw_owner', 'loan_pro_fdw.linked_info__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','linked_loan__entity','dw_owner', 'loan_pro_fdw.linked_loan__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','linked_loan_option_entity','dw_owner', 'loan_pro_fdw.linked_loan_option_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__customer','dw_owner', 'loan_pro_fdw.loan__customer owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__portfolio','dw_owner', 'loan_pro_fdw.loan__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__recurrent_charge','dw_owner', 'loan_pro_fdw.loan__recurrent_charge owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__rule_applied_apd_reset','dw_owner', 'loan_pro_fdw.loan__rule_applied_apd_reset owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__rule_applied_charge_off','dw_owner', 'loan_pro_fdw.loan__rule_applied_charge_off owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__rule_applied_checklist','dw_owner', 'loan_pro_fdw.loan__rule_applied_checklist owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__rule_applied_duedate','dw_owner', 'loan_pro_fdw.loan__rule_applied_duedate owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__rule_applied_settings','dw_owner', 'loan_pro_fdw.loan__rule_applied_settings owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__rule_applied_stop_interest','dw_owner', 'loan_pro_fdw.loan__rule_applied_stop_interest owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan__sub_portfolio','dw_owner', 'loan_pro_fdw.loan__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_active_time_tx','dw_owner', 'loan_pro_fdw.loan_active_time_tx owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_advancement_entity','dw_owner', 'loan_pro_fdw.loan_advancement_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_apd_adjustment_entity','dw_owner', 'loan_pro_fdw.loan_apd_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_autopay_entity','dw_owner', 'loan_pro_fdw.loan_autopay_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_autopay_entity_old','dw_owner', 'loan_pro_fdw.loan_autopay_entity_old owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_chargeoff__transactions','dw_owner', 'loan_pro_fdw.loan_chargeoff__transactions owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_chargeoff_entity','dw_owner', 'loan_pro_fdw.loan_chargeoff_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_collected_stats_view','dw_owner', 'loan_pro_fdw.loan_collected_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_credit_entity','dw_owner', 'loan_pro_fdw.loan_credit_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_curtail_date_entity','dw_owner', 'loan_pro_fdw.loan_curtail_date_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_delinquency_history_entity','dw_owner', 'loan_pro_fdw.loan_delinquency_history_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_document_entity','dw_owner', 'loan_pro_fdw.loan_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_dpd_adjustment_entity','dw_owner', 'loan_pro_fdw.loan_dpd_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_duedate_change_entity','dw_owner', 'loan_pro_fdw.loan_duedate_change_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_entity','dw_owner', 'loan_pro_fdw.loan_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_escrow_tx_view','dw_owner', 'loan_pro_fdw.loan_escrow_tx_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_funding_entity','dw_owner', 'loan_pro_fdw.loan_funding_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_future_stats_view','dw_owner', 'loan_pro_fdw.loan_future_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_insurance_entity','dw_owner', 'loan_pro_fdw.loan_insurance_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_last_payment_view','dw_owner', 'loan_pro_fdw.loan_last_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_late_fee__buckets','dw_owner', 'loan_pro_fdw.loan_late_fee__buckets owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_modification_entity','dw_owner', 'loan_pro_fdw.loan_modification_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_next_forecast_payment_view','dw_owner', 'loan_pro_fdw.loan_next_forecast_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_next_scheduled_payment_view','dw_owner', 'loan_pro_fdw.loan_next_scheduled_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_past_stats_view','dw_owner', 'loan_pro_fdw.loan_past_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_payment_seq','dw_owner', 'loan_pro_fdw.loan_payment_seq owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_portfolio_view','dw_owner', 'loan_pro_fdw.loan_portfolio_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_promise_entity','dw_owner', 'loan_pro_fdw.loan_promise_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_reverse_calc_settings','dw_owner', 'loan_pro_fdw.loan_reverse_calc_settings owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_reverse_status_archive','dw_owner', 'loan_pro_fdw.loan_reverse_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_schedule_payments_view','dw_owner', 'loan_pro_fdw.loan_schedule_payments_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_schedule_roll_entity','dw_owner', 'loan_pro_fdw.loan_schedule_roll_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_settings_entity','dw_owner', 'loan_pro_fdw.loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_setup_entity','dw_owner', 'loan_pro_fdw.loan_setup_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_sms_queue_item_entity','dw_owner', 'loan_pro_fdw.loan_sms_queue_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_status_archive','dw_owner', 'loan_pro_fdw.loan_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_status_archive_current_date_view','dw_owner', 'loan_pro_fdw.loan_status_archive_current_date_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_status_entity','dw_owner', 'loan_pro_fdw.loan_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_stop_interest_date_entity','dw_owner', 'loan_pro_fdw.loan_stop_interest_date_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_sub_status_entity','dw_owner', 'loan_pro_fdw.loan_sub_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_subportfolio_view','dw_owner', 'loan_pro_fdw.loan_subportfolio_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_tx','dw_owner', 'loan_pro_fdw.loan_tx owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_tx_payment_view','dw_owner', 'loan_pro_fdw.loan_tx_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','loan_yearly_stats_view','dw_owner', 'loan_pro_fdw.loan_yearly_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','mail_house_delivery_entity','dw_owner', 'loan_pro_fdw.mail_house_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','mail_house_entity','dw_owner', 'loan_pro_fdw.mail_house_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','mail_house_loan','dw_owner', 'loan_pro_fdw.mail_house_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','mail_house_tool_entity','dw_owner', 'loan_pro_fdw.mail_house_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','mc_processor_extender','dw_owner', 'loan_pro_fdw.mc_processor_extender owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','my_applications_setting_entity','dw_owner', 'loan_pro_fdw.my_applications_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','my_loans_setting_entity','dw_owner', 'loan_pro_fdw.my_loans_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','next_autopay_view','dw_owner', 'loan_pro_fdw.next_autopay_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','note_category_entity','dw_owner', 'loan_pro_fdw.note_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','note_entity','dw_owner', 'loan_pro_fdw.note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','notification_category__delivery','dw_owner', 'loan_pro_fdw.notification_category__delivery owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','notification_category_entity','dw_owner', 'loan_pro_fdw.notification_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','notification_dnd_period_entity','dw_owner', 'loan_pro_fdw.notification_dnd_period_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','notification_entity','dw_owner', 'loan_pro_fdw.notification_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','page_entity','dw_owner', 'loan_pro_fdw.page_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','payment__portfolio','dw_owner', 'loan_pro_fdw.payment__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','payment__sub_portfolio','dw_owner', 'loan_pro_fdw.payment__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','payment_account_entity','dw_owner', 'loan_pro_fdw.payment_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','payment_entity','dw_owner', 'loan_pro_fdw.payment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','payment_info_entity','dw_owner', 'loan_pro_fdw.payment_info_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','payment_receipt_select_small_v','dw_owner', 'loan_pro_fdw.payment_receipt_select_small_v owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','payment_receipt_select_v','dw_owner', 'loan_pro_fdw.payment_receipt_select_v owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','payment_reversed_tx_snapshot','dw_owner', 'loan_pro_fdw.payment_reversed_tx_snapshot owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','pnm_order_entity','dw_owner', 'loan_pro_fdw.pnm_order_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','portfolio_category_entity','dw_owner', 'loan_pro_fdw.portfolio_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','portfolio_entity','dw_owner', 'loan_pro_fdw.portfolio_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','preconfigured_loan__portfolio','dw_owner', 'loan_pro_fdw.preconfigured_loan__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','preconfigured_loan__sub_portfolio','dw_owner', 'loan_pro_fdw.preconfigured_loan__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','preconfigured_loan_entity','dw_owner', 'loan_pro_fdw.preconfigured_loan_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','preconfigured_loan_settings_entity','dw_owner', 'loan_pro_fdw.preconfigured_loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','quick_note_entity','dw_owner', 'loan_pro_fdw.quick_note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','recurring_charge_entity','dw_owner', 'loan_pro_fdw.recurring_charge_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','report_cache','dw_owner', 'loan_pro_fdw.report_cache owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','restriction_group__user','dw_owner', 'loan_pro_fdw.restriction_group__user owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','restriction_group_entity','dw_owner', 'loan_pro_fdw.restriction_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','restriction_group_entry_archive','dw_owner', 'loan_pro_fdw.restriction_group_entry_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','restriction_group_entry_entity','dw_owner', 'loan_pro_fdw.restriction_group_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule__category','dw_owner', 'loan_pro_fdw.rule__category owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_apd_reset_entity','dw_owner', 'loan_pro_fdw.rule_applied_apd_reset_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_charge_off_entity','dw_owner', 'loan_pro_fdw.rule_applied_charge_off_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_checklist_entity','dw_owner', 'loan_pro_fdw.rule_applied_checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_duedate_entity','dw_owner', 'loan_pro_fdw.rule_applied_duedate_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_loan_settings_entity','dw_owner', 'loan_pro_fdw.rule_applied_loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_settings__portfolio','dw_owner', 'loan_pro_fdw.rule_applied_settings__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_settings__portfolio_to_delete','dw_owner', 'loan_pro_fdw.rule_applied_settings__portfolio_to_delete owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_settings__sub_portfolio','dw_owner', 'loan_pro_fdw.rule_applied_settings__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_settings__sub_portfolio_to_delete','dw_owner', 'loan_pro_fdw.rule_applied_settings__sub_portfolio_to_delete owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_applied_stop_interest_entity','dw_owner', 'loan_pro_fdw.rule_applied_stop_interest_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_category_entity','dw_owner', 'loan_pro_fdw.rule_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','rule_entity','dw_owner', 'loan_pro_fdw.rule_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sample_entity','dw_owner', 'loan_pro_fdw.sample_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','saved_search_entity','dw_owner', 'loan_pro_fdw.saved_search_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sbt_dnd_periods','dw_owner', 'loan_pro_fdw.sbt_dnd_periods owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sbt_message_log','dw_owner', 'loan_pro_fdw.sbt_message_log owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sbt_template_mapping','dw_owner', 'loan_pro_fdw.sbt_template_mapping owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','schedule_roll_template_entity','dw_owner', 'loan_pro_fdw.schedule_roll_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','schedule_template_lines_entity','dw_owner', 'loan_pro_fdw.schedule_template_lines_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','scheduled_action_entity','dw_owner', 'loan_pro_fdw.scheduled_action_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','scheduled_report_entity','dw_owner', 'loan_pro_fdw.scheduled_report_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','schema_version','dw_owner', 'loan_pro_fdw.schema_version owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','search_index_error_log','dw_owner', 'loan_pro_fdw.search_index_error_log owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','search_restriction_group_entity','dw_owner', 'loan_pro_fdw.search_restriction_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','search_restriction_setting_entity','dw_owner', 'loan_pro_fdw.search_restriction_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','security_group','dw_owner', 'loan_pro_fdw.security_group owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','security_group__user','dw_owner', 'loan_pro_fdw.security_group__user owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','shortcut_set_entity','dw_owner', 'loan_pro_fdw.shortcut_set_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sms_delivery_entity','dw_owner', 'loan_pro_fdw.sms_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sms_trigger_entity','dw_owner', 'loan_pro_fdw.sms_trigger_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sound_group_entity','dw_owner', 'loan_pro_fdw.sound_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sound_group_item_entity','dw_owner', 'loan_pro_fdw.sound_group_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','source_company_entity','dw_owner', 'loan_pro_fdw.source_company_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','special_report_entity','dw_owner', 'loan_pro_fdw.special_report_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','stoplight_entity','dw_owner', 'loan_pro_fdw.stoplight_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','sub_portfolio_entity','dw_owner', 'loan_pro_fdw.sub_portfolio_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','support_transaction__topic','dw_owner', 'loan_pro_fdw.support_transaction__topic owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','support_transaction_entity','dw_owner', 'loan_pro_fdw.support_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','system_note_entity','dw_owner', 'loan_pro_fdw.system_note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tcn_campaign_entity','dw_owner', 'loan_pro_fdw.tcn_campaign_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tcn_queue_item_entity','dw_owner', 'loan_pro_fdw.tcn_queue_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tenant_backup_log_entity','dw_owner', 'loan_pro_fdw.tenant_backup_log_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tenant_bulk_purchase_entity','dw_owner', 'loan_pro_fdw.tenant_bulk_purchase_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tenant_checklist_category_entity','dw_owner', 'loan_pro_fdw.tenant_checklist_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tenant_checklist_entity','dw_owner', 'loan_pro_fdw.tenant_checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tenant_plugins_contract_entity','dw_owner', 'loan_pro_fdw.tenant_plugins_contract_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tenant_pricing_tier_entity','dw_owner', 'loan_pro_fdw.tenant_pricing_tier_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','tenant_setting__entity','dw_owner', 'loan_pro_fdw.tenant_setting__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','testimonial_entity','dw_owner', 'loan_pro_fdw.testimonial_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','time_slot_entity','dw_owner', 'loan_pro_fdw.time_slot_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','topic_entity','dw_owner', 'loan_pro_fdw.topic_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','total_advancements','dw_owner', 'loan_pro_fdw.total_advancements owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','total_credits_view','dw_owner', 'loan_pro_fdw.total_credits_view owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','transaction_entity','dw_owner', 'loan_pro_fdw.transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','user__delivery','dw_owner', 'loan_pro_fdw.user__delivery owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','user_chart_settings_entity','dw_owner', 'loan_pro_fdw.user_chart_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','user_search_settings_entity','dw_owner', 'loan_pro_fdw.user_search_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','user_tenant_configuration','dw_owner', 'loan_pro_fdw.user_tenant_configuration owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','vendor_entity','dw_owner', 'loan_pro_fdw.vendor_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','view_module_entity','dw_owner', 'loan_pro_fdw.view_module_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','view_template__view_module','dw_owner', 'loan_pro_fdw.view_template__view_module owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','view_template_entity','dw_owner', 'loan_pro_fdw.view_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','view_widget_entity','dw_owner', 'loan_pro_fdw.view_widget_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','web_delivery_entity','dw_owner', 'loan_pro_fdw.web_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_fdw','work_item__questions','dw_owner', 'loan_pro_fdw.work_item__questions owner is dw_owner');
SELECT foreign_tables_are('loan_pro_sandbox', ARRAY[
    '_ach_return_code_action_entity',
    '_address_entity',
    '_admin_tool__loan',
    '_admin_tool_entity',
    '_advance_category_entity',
    '_all_cust_info_view',
    '_bank_account_entity',
    '_billing_tool__loan',
    '_billing_tool_entity',
    '_bracket_entity',
    '_bracket_item_entity',
    '_cash_drawer__payment_method',
    '_cash_drawer_entity',
    '_cash_drawer_transaction_entity',
    '_cash_drawer_tx_category_entity',
    '_charge_entity',
    '_checking_account_entity',
    '_checklist_entity',
    '_checklist_item__entity',
    '_checklist_item_entity',
    '_collateral_entity',
    '_collateral_field_entity',
    '_collection',
    '_collection_item',
    '_collector_queue__loan',
    '_collector_queue_entity',
    '_collector_queue_question_entity',
    '_collector_queue_work_item_entity',
    '_comment_thread_comments',
    '_comment_thread_topics',
    '_computation_field_entity',
    '_contract_signer_entity',
    '_credit_breakdown_report',
    '_credit_card_entity',
    '_credit_category_entity',
    '_credit_report_history',
    '_credit_report_queue',
    '_credit_report_view',
    '_curtailment_template_entity',
    '_curtailment_template_lines_entity',
    '_custom_billing_template_entity',
    '_custom_billing_theme_entity',
    '_custom_boarding_process_entity',
    '_custom_boarding_process_step_entity',
    '_custom_charge_type_entity',
    '_custom_field',
    '_custom_field__entity',
    '_custom_form_entity',
    '_custom_form_section_entity',
    '_custom_form_tool__loan',
    '_custom_form_tool_entity',
    '_custom_payment_method_entity',
    '_custom_payment_type_entity',
    '_customer_credit_score_entity',
    '_customer_document_entity',
    '_customer_employer_entity',
    '_customer_entity',
    '_customer_login_attempts',
    '_customer_payment_method_entity',
    '_customer_phone_entity',
    '_customer_reference_entity',
    '_customer_social_profile_entity',
    '_customer_status_entity',
    '_data_dump_entity',
    '_data_import_entity',
    '_default_billing_options_entity',
    '_default_billing_template_entity',
    '_default_billing_theme_entity',
    '_defaults_autopay',
    '_defaults_charges',
    '_defaults_escrow_calculator',
    '_defaults_late_fee__buckets',
    '_defaults_payments',
    '_defaults_system_loan',
    '_defaults_user_loan',
    '_delivery_entity',
    '_disbursement_entity',
    '_doc_section_entity',
    '_due_to_date_view',
    '_email_delivery_entity',
    '_email_queue',
    '_email_template_entity',
    '_email_tool__loan',
    '_email_tool_entity',
    '_email_trigger_entity',
    '_escrow__transactions',
    '_escrow_adjustment_entity',
    '_escrow_analysis_process_entity',
    '_escrow_analysis_task_entity',
    '_escrow_calculator_entity',
    '_escrow_subset_entity',
    '_escrow_subset_options_entity',
    '_escrow_subset_options_entity_backup',
    '_escrow_transaction_entity',
    '_escrow_tx_category_entity',
    '_faq_entry_entity',
    '_file_attachment_entity',
    '_first_loan_payment_transaction_view',
    '_flag_entity',
    '_flag_status_archive',
    '_form_section_entity',
    '_gps_link_entity',
    '_history_funding_report_view',
    '_holding_account__investor',
    '_holding_account_archive_entity',
    '_holding_account_autopay_entity',
    '_holding_account_category_entity',
    '_holding_account_settings_entity',
    '_holding_account_status_entity',
    '_holding_account_sub_status_entity',
    '_holding_account_transaction_category_entity',
    '_holding_account_transaction_entity',
    '_homepage_image_entity',
    '_investment__portfolio',
    '_investment__sub_portfolio',
    '_investment_document_entity',
    '_investment_entity',
    '_investment_position_entity',
    '_investor_document_entity',
    '_investor_entity',
    '_investor_status_entity',
    '_iprestriction_entity',
    '_iprestriction_entry_entity',
    '_last_loan_payment_transaction_view',
    '_link_entity',
    '_linked_info__entity',
    '_linked_loan__entity',
    '_linked_loan_option_entity',
    '_loan__customer',
    '_loan__portfolio',
    '_loan__recurrent_charge',
    '_loan__rule_applied_apd_reset',
    '_loan__rule_applied_charge_off',
    '_loan__rule_applied_checklist',
    '_loan__rule_applied_duedate',
    '_loan__rule_applied_settings',
    '_loan__rule_applied_stop_interest',
    '_loan__sub_portfolio',
    '_loan_active_time_tx',
    '_loan_advancement_entity',
    '_loan_apd_adjustment_entity',
    '_loan_autopay_entity',
    '_loan_autopay_entity_old',
    '_loan_chargeoff__transactions',
    '_loan_chargeoff_entity',
    '_loan_collected_stats_view',
    '_loan_credit_entity',
    '_loan_curtail_date_entity',
    '_loan_delinquency_history_entity',
    '_loan_document_entity',
    '_loan_dpd_adjustment_entity',
    '_loan_duedate_change_entity',
    '_loan_entity',
    '_loan_escrow_tx_view',
    '_loan_funding_entity',
    '_loan_future_stats_view',
    '_loan_insurance_entity',
    '_loan_last_payment_view',
    '_loan_late_fee__buckets',
    '_loan_modification_entity',
    '_loan_next_forecast_payment_view',
    '_loan_next_scheduled_payment_view',
    '_loan_past_stats_view',
    '_loan_payment_seq',
    '_loan_portfolio_view',
    '_loan_promise_entity',
    '_loan_reverse_calc_settings',
    '_loan_reverse_status_archive',
    '_loan_schedule_payments_view',
    '_loan_schedule_roll_entity',
    '_loan_settings_entity',
    '_loan_setup_entity',
    '_loan_sms_queue_item_entity',
    '_loan_status_archive',
    '_loan_status_archive_current_date_view',
    '_loan_status_entity',
    '_loan_stop_interest_date_entity',
    '_loan_sub_status_entity',
    '_loan_subportfolio_view',
    '_loan_tx',
    '_loan_tx_payment_view',
    '_loan_yearly_stats_view',
    '_mail_house_delivery_entity',
    '_mail_house_entity',
    '_mail_house_loan',
    '_mail_house_tool_entity',
    '_mc_processor_extender',
    '_my_applications_setting_entity',
    '_my_loans_setting_entity',
    '_next_autopay_view',
    '_note_category_entity',
    '_note_entity',
    '_notification_category__delivery',
    '_notification_category_entity',
    '_notification_dnd_period_entity',
    '_notification_entity',
    '_page_entity',
    '_payment__portfolio',
    '_payment__sub_portfolio',
    '_payment_account_entity',
    '_payment_entity',
    '_payment_info_entity',
    '_payment_reversed_tx_snapshot',
    '_pnm_order_entity',
    '_portfolio_category_entity',
    '_portfolio_entity',
    '_preconfigured_loan__portfolio',
    '_preconfigured_loan__sub_portfolio',
    '_preconfigured_loan_entity',
    '_preconfigured_loan_settings_entity',
    '_quick_note_entity',
    '_recurring_charge_entity',
    '_report_cache',
    '_restriction_group__user',
    '_restriction_group_entity',
    '_restriction_group_entry_archive',
    '_restriction_group_entry_entity',
    '_rule__category',
    '_rule_applied_apd_reset_entity',
    '_rule_applied_charge_off_entity',
    '_rule_applied_checklist_entity',
    '_rule_applied_duedate_entity',
    '_rule_applied_loan_settings_entity',
    '_rule_applied_settings__portfolio',
    '_rule_applied_settings__portfolio_to_delete',
    '_rule_applied_settings__sub_portfolio',
    '_rule_applied_settings__sub_portfolio_to_delete',
    '_rule_applied_stop_interest_entity',
    '_rule_category_entity',
    '_rule_entity',
    '_sample_entity',
    '_saved_search_entity',
    '_sbt_dnd_periods',
    '_sbt_message_log',
    '_sbt_template_mapping',
    '_schedule_roll_template_entity',
    '_schedule_template_lines_entity',
    '_scheduled_action_entity',
    '_scheduled_report_entity',
    '_schema_version',
    '_search_index_error_log',
    '_search_restriction_group_entity',
    '_search_restriction_setting_entity',
    '_security_group',
    '_security_group__user',
    '_shortcut_set_entity',
    '_sms_delivery_entity',
    '_sms_trigger_entity',
    '_sound_group_entity',
    '_sound_group_item_entity',
    '_source_company_entity',
    '_special_report_entity',
    '_stoplight_entity',
    '_sub_portfolio_entity',
    '_support_transaction__topic',
    '_support_transaction_entity',
    '_system_note_entity',
    '_tcn_campaign_entity',
    '_tcn_queue_item_entity',
    '_tenant_backup_log_entity',
    '_tenant_bulk_purchase_entity',
    '_tenant_checklist_category_entity',
    '_tenant_checklist_entity',
    '_tenant_plugins_contract_entity',
    '_tenant_pricing_tier_entity',
    '_tenant_setting__entity',
    '_testimonial_entity',
    '_time_slot_entity',
    '_topic_entity',
    '_total_advancements',
    '_total_credits_view',
    '_transaction_entity',
    '_user__delivery',
    '_user_chart_settings_entity',
    '_user_search_settings_entity',
    '_user_tenant_configuration',
    '_vendor_entity',
    '_view_module_entity',
    '_view_template__view_module',
    '_view_template_entity',
    '_view_widget_entity',
    '_web_delivery_entity',
    '_work_item__questions'
]);

SELECT foreign_table_owner_is('loan_pro_sandbox','_ach_return_code_action_entity','dw_owner', 'loan_pro_sandbox._ach_return_code_action_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_address_entity','dw_owner', 'loan_pro_sandbox._address_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_admin_tool__loan','dw_owner', 'loan_pro_sandbox._admin_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_admin_tool_entity','dw_owner', 'loan_pro_sandbox._admin_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_advance_category_entity','dw_owner', 'loan_pro_sandbox._advance_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_all_cust_info_view','dw_owner', 'loan_pro_sandbox._all_cust_info_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_bank_account_entity','dw_owner', 'loan_pro_sandbox._bank_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_billing_tool__loan','dw_owner', 'loan_pro_sandbox._billing_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_billing_tool_entity','dw_owner', 'loan_pro_sandbox._billing_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_bracket_entity','dw_owner', 'loan_pro_sandbox._bracket_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_bracket_item_entity','dw_owner', 'loan_pro_sandbox._bracket_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_cash_drawer__payment_method','dw_owner', 'loan_pro_sandbox._cash_drawer__payment_method owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_cash_drawer_entity','dw_owner', 'loan_pro_sandbox._cash_drawer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_cash_drawer_transaction_entity','dw_owner', 'loan_pro_sandbox._cash_drawer_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_cash_drawer_tx_category_entity','dw_owner', 'loan_pro_sandbox._cash_drawer_tx_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_charge_entity','dw_owner', 'loan_pro_sandbox._charge_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_checking_account_entity','dw_owner', 'loan_pro_sandbox._checking_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_checklist_entity','dw_owner', 'loan_pro_sandbox._checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_checklist_item__entity','dw_owner', 'loan_pro_sandbox._checklist_item__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_checklist_item_entity','dw_owner', 'loan_pro_sandbox._checklist_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_collateral_entity','dw_owner', 'loan_pro_sandbox._collateral_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_collateral_field_entity','dw_owner', 'loan_pro_sandbox._collateral_field_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_collection','dw_owner', 'loan_pro_sandbox._collection owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_collection_item','dw_owner', 'loan_pro_sandbox._collection_item owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_collector_queue__loan','dw_owner', 'loan_pro_sandbox._collector_queue__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_collector_queue_entity','dw_owner', 'loan_pro_sandbox._collector_queue_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_collector_queue_question_entity','dw_owner', 'loan_pro_sandbox._collector_queue_question_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_collector_queue_work_item_entity','dw_owner', 'loan_pro_sandbox._collector_queue_work_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_comment_thread_comments','dw_owner', 'loan_pro_sandbox._comment_thread_comments owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_comment_thread_topics','dw_owner', 'loan_pro_sandbox._comment_thread_topics owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_computation_field_entity','dw_owner', 'loan_pro_sandbox._computation_field_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_contract_signer_entity','dw_owner', 'loan_pro_sandbox._contract_signer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_credit_breakdown_report','dw_owner', 'loan_pro_sandbox._credit_breakdown_report owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_credit_card_entity','dw_owner', 'loan_pro_sandbox._credit_card_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_credit_category_entity','dw_owner', 'loan_pro_sandbox._credit_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_credit_report_history','dw_owner', 'loan_pro_sandbox._credit_report_history owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_credit_report_queue','dw_owner', 'loan_pro_sandbox._credit_report_queue owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_credit_report_view','dw_owner', 'loan_pro_sandbox._credit_report_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_curtailment_template_entity','dw_owner', 'loan_pro_sandbox._curtailment_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_curtailment_template_lines_entity','dw_owner', 'loan_pro_sandbox._curtailment_template_lines_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_billing_template_entity','dw_owner', 'loan_pro_sandbox._custom_billing_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_billing_theme_entity','dw_owner', 'loan_pro_sandbox._custom_billing_theme_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_boarding_process_entity','dw_owner', 'loan_pro_sandbox._custom_boarding_process_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_boarding_process_step_entity','dw_owner', 'loan_pro_sandbox._custom_boarding_process_step_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_charge_type_entity','dw_owner', 'loan_pro_sandbox._custom_charge_type_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_field','dw_owner', 'loan_pro_sandbox._custom_field owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_field__entity','dw_owner', 'loan_pro_sandbox._custom_field__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_form_entity','dw_owner', 'loan_pro_sandbox._custom_form_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_form_section_entity','dw_owner', 'loan_pro_sandbox._custom_form_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_form_tool__loan','dw_owner', 'loan_pro_sandbox._custom_form_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_form_tool_entity','dw_owner', 'loan_pro_sandbox._custom_form_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_payment_method_entity','dw_owner', 'loan_pro_sandbox._custom_payment_method_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_custom_payment_type_entity','dw_owner', 'loan_pro_sandbox._custom_payment_type_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_credit_score_entity','dw_owner', 'loan_pro_sandbox._customer_credit_score_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_document_entity','dw_owner', 'loan_pro_sandbox._customer_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_employer_entity','dw_owner', 'loan_pro_sandbox._customer_employer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_entity','dw_owner', 'loan_pro_sandbox._customer_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_login_attempts','dw_owner', 'loan_pro_sandbox._customer_login_attempts owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_payment_method_entity','dw_owner', 'loan_pro_sandbox._customer_payment_method_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_phone_entity','dw_owner', 'loan_pro_sandbox._customer_phone_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_reference_entity','dw_owner', 'loan_pro_sandbox._customer_reference_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_social_profile_entity','dw_owner', 'loan_pro_sandbox._customer_social_profile_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_customer_status_entity','dw_owner', 'loan_pro_sandbox._customer_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_data_dump_entity','dw_owner', 'loan_pro_sandbox._data_dump_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_data_import_entity','dw_owner', 'loan_pro_sandbox._data_import_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_default_billing_options_entity','dw_owner', 'loan_pro_sandbox._default_billing_options_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_default_billing_template_entity','dw_owner', 'loan_pro_sandbox._default_billing_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_default_billing_theme_entity','dw_owner', 'loan_pro_sandbox._default_billing_theme_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_defaults_autopay','dw_owner', 'loan_pro_sandbox._defaults_autopay owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_defaults_charges','dw_owner', 'loan_pro_sandbox._defaults_charges owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_defaults_escrow_calculator','dw_owner', 'loan_pro_sandbox._defaults_escrow_calculator owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_defaults_late_fee__buckets','dw_owner', 'loan_pro_sandbox._defaults_late_fee__buckets owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_defaults_payments','dw_owner', 'loan_pro_sandbox._defaults_payments owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_defaults_system_loan','dw_owner', 'loan_pro_sandbox._defaults_system_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_defaults_user_loan','dw_owner', 'loan_pro_sandbox._defaults_user_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_delivery_entity','dw_owner', 'loan_pro_sandbox._delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_disbursement_entity','dw_owner', 'loan_pro_sandbox._disbursement_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_doc_section_entity','dw_owner', 'loan_pro_sandbox._doc_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_due_to_date_view','dw_owner', 'loan_pro_sandbox._due_to_date_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_email_delivery_entity','dw_owner', 'loan_pro_sandbox._email_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_email_queue','dw_owner', 'loan_pro_sandbox._email_queue owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_email_template_entity','dw_owner', 'loan_pro_sandbox._email_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_email_tool__loan','dw_owner', 'loan_pro_sandbox._email_tool__loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_email_tool_entity','dw_owner', 'loan_pro_sandbox._email_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_email_trigger_entity','dw_owner', 'loan_pro_sandbox._email_trigger_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow__transactions','dw_owner', 'loan_pro_sandbox._escrow__transactions owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_adjustment_entity','dw_owner', 'loan_pro_sandbox._escrow_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_analysis_process_entity','dw_owner', 'loan_pro_sandbox._escrow_analysis_process_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_analysis_task_entity','dw_owner', 'loan_pro_sandbox._escrow_analysis_task_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_calculator_entity','dw_owner', 'loan_pro_sandbox._escrow_calculator_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_subset_entity','dw_owner', 'loan_pro_sandbox._escrow_subset_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_subset_options_entity','dw_owner', 'loan_pro_sandbox._escrow_subset_options_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_subset_options_entity_backup','dw_owner', 'loan_pro_sandbox._escrow_subset_options_entity_backup owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_transaction_entity','dw_owner', 'loan_pro_sandbox._escrow_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_escrow_tx_category_entity','dw_owner', 'loan_pro_sandbox._escrow_tx_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_faq_entry_entity','dw_owner', 'loan_pro_sandbox._faq_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_file_attachment_entity','dw_owner', 'loan_pro_sandbox._file_attachment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_first_loan_payment_transaction_view','dw_owner', 'loan_pro_sandbox._first_loan_payment_transaction_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_flag_entity','dw_owner', 'loan_pro_sandbox._flag_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_flag_status_archive','dw_owner', 'loan_pro_sandbox._flag_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_form_section_entity','dw_owner', 'loan_pro_sandbox._form_section_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_gps_link_entity','dw_owner', 'loan_pro_sandbox._gps_link_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_history_funding_report_view','dw_owner', 'loan_pro_sandbox._history_funding_report_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account__investor','dw_owner', 'loan_pro_sandbox._holding_account__investor owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account_archive_entity','dw_owner', 'loan_pro_sandbox._holding_account_archive_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account_autopay_entity','dw_owner', 'loan_pro_sandbox._holding_account_autopay_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account_category_entity','dw_owner', 'loan_pro_sandbox._holding_account_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account_settings_entity','dw_owner', 'loan_pro_sandbox._holding_account_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account_status_entity','dw_owner', 'loan_pro_sandbox._holding_account_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account_sub_status_entity','dw_owner', 'loan_pro_sandbox._holding_account_sub_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account_transaction_category_entity','dw_owner', 'loan_pro_sandbox._holding_account_transaction_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_holding_account_transaction_entity','dw_owner', 'loan_pro_sandbox._holding_account_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_homepage_image_entity','dw_owner', 'loan_pro_sandbox._homepage_image_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_investment__portfolio','dw_owner', 'loan_pro_sandbox._investment__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_investment__sub_portfolio','dw_owner', 'loan_pro_sandbox._investment__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_investment_document_entity','dw_owner', 'loan_pro_sandbox._investment_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_investment_entity','dw_owner', 'loan_pro_sandbox._investment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_investment_position_entity','dw_owner', 'loan_pro_sandbox._investment_position_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_investor_document_entity','dw_owner', 'loan_pro_sandbox._investor_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_investor_entity','dw_owner', 'loan_pro_sandbox._investor_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_investor_status_entity','dw_owner', 'loan_pro_sandbox._investor_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_iprestriction_entity','dw_owner', 'loan_pro_sandbox._iprestriction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_iprestriction_entry_entity','dw_owner', 'loan_pro_sandbox._iprestriction_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_last_loan_payment_transaction_view','dw_owner', 'loan_pro_sandbox._last_loan_payment_transaction_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_link_entity','dw_owner', 'loan_pro_sandbox._link_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_linked_info__entity','dw_owner', 'loan_pro_sandbox._linked_info__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_linked_loan__entity','dw_owner', 'loan_pro_sandbox._linked_loan__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_linked_loan_option_entity','dw_owner', 'loan_pro_sandbox._linked_loan_option_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__customer','dw_owner', 'loan_pro_sandbox._loan__customer owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__portfolio','dw_owner', 'loan_pro_sandbox._loan__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__recurrent_charge','dw_owner', 'loan_pro_sandbox._loan__recurrent_charge owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__rule_applied_apd_reset','dw_owner', 'loan_pro_sandbox._loan__rule_applied_apd_reset owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__rule_applied_charge_off','dw_owner', 'loan_pro_sandbox._loan__rule_applied_charge_off owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__rule_applied_checklist','dw_owner', 'loan_pro_sandbox._loan__rule_applied_checklist owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__rule_applied_duedate','dw_owner', 'loan_pro_sandbox._loan__rule_applied_duedate owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__rule_applied_settings','dw_owner', 'loan_pro_sandbox._loan__rule_applied_settings owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__rule_applied_stop_interest','dw_owner', 'loan_pro_sandbox._loan__rule_applied_stop_interest owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan__sub_portfolio','dw_owner', 'loan_pro_sandbox._loan__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_active_time_tx','dw_owner', 'loan_pro_sandbox._loan_active_time_tx owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_advancement_entity','dw_owner', 'loan_pro_sandbox._loan_advancement_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_apd_adjustment_entity','dw_owner', 'loan_pro_sandbox._loan_apd_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_autopay_entity','dw_owner', 'loan_pro_sandbox._loan_autopay_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_autopay_entity_old','dw_owner', 'loan_pro_sandbox._loan_autopay_entity_old owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_chargeoff__transactions','dw_owner', 'loan_pro_sandbox._loan_chargeoff__transactions owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_chargeoff_entity','dw_owner', 'loan_pro_sandbox._loan_chargeoff_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_collected_stats_view','dw_owner', 'loan_pro_sandbox._loan_collected_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_credit_entity','dw_owner', 'loan_pro_sandbox._loan_credit_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_curtail_date_entity','dw_owner', 'loan_pro_sandbox._loan_curtail_date_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_delinquency_history_entity','dw_owner', 'loan_pro_sandbox._loan_delinquency_history_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_document_entity','dw_owner', 'loan_pro_sandbox._loan_document_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_dpd_adjustment_entity','dw_owner', 'loan_pro_sandbox._loan_dpd_adjustment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_duedate_change_entity','dw_owner', 'loan_pro_sandbox._loan_duedate_change_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_entity','dw_owner', 'loan_pro_sandbox._loan_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_escrow_tx_view','dw_owner', 'loan_pro_sandbox._loan_escrow_tx_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_funding_entity','dw_owner', 'loan_pro_sandbox._loan_funding_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_future_stats_view','dw_owner', 'loan_pro_sandbox._loan_future_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_insurance_entity','dw_owner', 'loan_pro_sandbox._loan_insurance_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_last_payment_view','dw_owner', 'loan_pro_sandbox._loan_last_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_late_fee__buckets','dw_owner', 'loan_pro_sandbox._loan_late_fee__buckets owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_modification_entity','dw_owner', 'loan_pro_sandbox._loan_modification_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_next_forecast_payment_view','dw_owner', 'loan_pro_sandbox._loan_next_forecast_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_next_scheduled_payment_view','dw_owner', 'loan_pro_sandbox._loan_next_scheduled_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_past_stats_view','dw_owner', 'loan_pro_sandbox._loan_past_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_payment_seq','dw_owner', 'loan_pro_sandbox._loan_payment_seq owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_portfolio_view','dw_owner', 'loan_pro_sandbox._loan_portfolio_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_promise_entity','dw_owner', 'loan_pro_sandbox._loan_promise_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_reverse_calc_settings','dw_owner', 'loan_pro_sandbox._loan_reverse_calc_settings owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_reverse_status_archive','dw_owner', 'loan_pro_sandbox._loan_reverse_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_schedule_payments_view','dw_owner', 'loan_pro_sandbox._loan_schedule_payments_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_schedule_roll_entity','dw_owner', 'loan_pro_sandbox._loan_schedule_roll_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_settings_entity','dw_owner', 'loan_pro_sandbox._loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_setup_entity','dw_owner', 'loan_pro_sandbox._loan_setup_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_sms_queue_item_entity','dw_owner', 'loan_pro_sandbox._loan_sms_queue_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_status_archive','dw_owner', 'loan_pro_sandbox._loan_status_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_status_archive_current_date_view','dw_owner', 'loan_pro_sandbox._loan_status_archive_current_date_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_status_entity','dw_owner', 'loan_pro_sandbox._loan_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_stop_interest_date_entity','dw_owner', 'loan_pro_sandbox._loan_stop_interest_date_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_sub_status_entity','dw_owner', 'loan_pro_sandbox._loan_sub_status_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_subportfolio_view','dw_owner', 'loan_pro_sandbox._loan_subportfolio_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_tx','dw_owner', 'loan_pro_sandbox._loan_tx owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_tx_payment_view','dw_owner', 'loan_pro_sandbox._loan_tx_payment_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_loan_yearly_stats_view','dw_owner', 'loan_pro_sandbox._loan_yearly_stats_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_mail_house_delivery_entity','dw_owner', 'loan_pro_sandbox._mail_house_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_mail_house_entity','dw_owner', 'loan_pro_sandbox._mail_house_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_mail_house_loan','dw_owner', 'loan_pro_sandbox._mail_house_loan owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_mail_house_tool_entity','dw_owner', 'loan_pro_sandbox._mail_house_tool_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_mc_processor_extender','dw_owner', 'loan_pro_sandbox._mc_processor_extender owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_my_applications_setting_entity','dw_owner', 'loan_pro_sandbox._my_applications_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_my_loans_setting_entity','dw_owner', 'loan_pro_sandbox._my_loans_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_next_autopay_view','dw_owner', 'loan_pro_sandbox._next_autopay_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_note_category_entity','dw_owner', 'loan_pro_sandbox._note_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_note_entity','dw_owner', 'loan_pro_sandbox._note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_notification_category__delivery','dw_owner', 'loan_pro_sandbox._notification_category__delivery owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_notification_category_entity','dw_owner', 'loan_pro_sandbox._notification_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_notification_dnd_period_entity','dw_owner', 'loan_pro_sandbox._notification_dnd_period_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_notification_entity','dw_owner', 'loan_pro_sandbox._notification_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_page_entity','dw_owner', 'loan_pro_sandbox._page_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_payment__portfolio','dw_owner', 'loan_pro_sandbox._payment__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_payment__sub_portfolio','dw_owner', 'loan_pro_sandbox._payment__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_payment_account_entity','dw_owner', 'loan_pro_sandbox._payment_account_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_payment_entity','dw_owner', 'loan_pro_sandbox._payment_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_payment_info_entity','dw_owner', 'loan_pro_sandbox._payment_info_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_payment_reversed_tx_snapshot','dw_owner', 'loan_pro_sandbox._payment_reversed_tx_snapshot owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_pnm_order_entity','dw_owner', 'loan_pro_sandbox._pnm_order_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_portfolio_category_entity','dw_owner', 'loan_pro_sandbox._portfolio_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_portfolio_entity','dw_owner', 'loan_pro_sandbox._portfolio_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_preconfigured_loan__portfolio','dw_owner', 'loan_pro_sandbox._preconfigured_loan__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_preconfigured_loan__sub_portfolio','dw_owner', 'loan_pro_sandbox._preconfigured_loan__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_preconfigured_loan_entity','dw_owner', 'loan_pro_sandbox._preconfigured_loan_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_preconfigured_loan_settings_entity','dw_owner', 'loan_pro_sandbox._preconfigured_loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_quick_note_entity','dw_owner', 'loan_pro_sandbox._quick_note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_recurring_charge_entity','dw_owner', 'loan_pro_sandbox._recurring_charge_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_report_cache','dw_owner', 'loan_pro_sandbox._report_cache owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_restriction_group__user','dw_owner', 'loan_pro_sandbox._restriction_group__user owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_restriction_group_entity','dw_owner', 'loan_pro_sandbox._restriction_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_restriction_group_entry_archive','dw_owner', 'loan_pro_sandbox._restriction_group_entry_archive owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_restriction_group_entry_entity','dw_owner', 'loan_pro_sandbox._restriction_group_entry_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule__category','dw_owner', 'loan_pro_sandbox._rule__category owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_apd_reset_entity','dw_owner', 'loan_pro_sandbox._rule_applied_apd_reset_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_charge_off_entity','dw_owner', 'loan_pro_sandbox._rule_applied_charge_off_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_checklist_entity','dw_owner', 'loan_pro_sandbox._rule_applied_checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_duedate_entity','dw_owner', 'loan_pro_sandbox._rule_applied_duedate_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_loan_settings_entity','dw_owner', 'loan_pro_sandbox._rule_applied_loan_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_settings__portfolio','dw_owner', 'loan_pro_sandbox._rule_applied_settings__portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_settings__portfolio_to_delete','dw_owner', 'loan_pro_sandbox._rule_applied_settings__portfolio_to_delete owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_settings__sub_portfolio','dw_owner', 'loan_pro_sandbox._rule_applied_settings__sub_portfolio owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_settings__sub_portfolio_to_delete','dw_owner', 'loan_pro_sandbox._rule_applied_settings__sub_portfolio_to_delete owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_applied_stop_interest_entity','dw_owner', 'loan_pro_sandbox._rule_applied_stop_interest_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_category_entity','dw_owner', 'loan_pro_sandbox._rule_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_rule_entity','dw_owner', 'loan_pro_sandbox._rule_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sample_entity','dw_owner', 'loan_pro_sandbox._sample_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_saved_search_entity','dw_owner', 'loan_pro_sandbox._saved_search_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sbt_dnd_periods','dw_owner', 'loan_pro_sandbox._sbt_dnd_periods owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sbt_message_log','dw_owner', 'loan_pro_sandbox._sbt_message_log owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sbt_template_mapping','dw_owner', 'loan_pro_sandbox._sbt_template_mapping owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_schedule_roll_template_entity','dw_owner', 'loan_pro_sandbox._schedule_roll_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_schedule_template_lines_entity','dw_owner', 'loan_pro_sandbox._schedule_template_lines_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_scheduled_action_entity','dw_owner', 'loan_pro_sandbox._scheduled_action_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_scheduled_report_entity','dw_owner', 'loan_pro_sandbox._scheduled_report_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_schema_version','dw_owner', 'loan_pro_sandbox._schema_version owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_search_index_error_log','dw_owner', 'loan_pro_sandbox._search_index_error_log owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_search_restriction_group_entity','dw_owner', 'loan_pro_sandbox._search_restriction_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_search_restriction_setting_entity','dw_owner', 'loan_pro_sandbox._search_restriction_setting_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_security_group','dw_owner', 'loan_pro_sandbox._security_group owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_security_group__user','dw_owner', 'loan_pro_sandbox._security_group__user owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_shortcut_set_entity','dw_owner', 'loan_pro_sandbox._shortcut_set_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sms_delivery_entity','dw_owner', 'loan_pro_sandbox._sms_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sms_trigger_entity','dw_owner', 'loan_pro_sandbox._sms_trigger_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sound_group_entity','dw_owner', 'loan_pro_sandbox._sound_group_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sound_group_item_entity','dw_owner', 'loan_pro_sandbox._sound_group_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_source_company_entity','dw_owner', 'loan_pro_sandbox._source_company_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_special_report_entity','dw_owner', 'loan_pro_sandbox._special_report_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_stoplight_entity','dw_owner', 'loan_pro_sandbox._stoplight_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_sub_portfolio_entity','dw_owner', 'loan_pro_sandbox._sub_portfolio_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_support_transaction__topic','dw_owner', 'loan_pro_sandbox._support_transaction__topic owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_support_transaction_entity','dw_owner', 'loan_pro_sandbox._support_transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_system_note_entity','dw_owner', 'loan_pro_sandbox._system_note_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tcn_campaign_entity','dw_owner', 'loan_pro_sandbox._tcn_campaign_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tcn_queue_item_entity','dw_owner', 'loan_pro_sandbox._tcn_queue_item_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tenant_backup_log_entity','dw_owner', 'loan_pro_sandbox._tenant_backup_log_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tenant_bulk_purchase_entity','dw_owner', 'loan_pro_sandbox._tenant_bulk_purchase_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tenant_checklist_category_entity','dw_owner', 'loan_pro_sandbox._tenant_checklist_category_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tenant_checklist_entity','dw_owner', 'loan_pro_sandbox._tenant_checklist_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tenant_plugins_contract_entity','dw_owner', 'loan_pro_sandbox._tenant_plugins_contract_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tenant_pricing_tier_entity','dw_owner', 'loan_pro_sandbox._tenant_pricing_tier_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_tenant_setting__entity','dw_owner', 'loan_pro_sandbox._tenant_setting__entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_testimonial_entity','dw_owner', 'loan_pro_sandbox._testimonial_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_time_slot_entity','dw_owner', 'loan_pro_sandbox._time_slot_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_topic_entity','dw_owner', 'loan_pro_sandbox._topic_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_total_advancements','dw_owner', 'loan_pro_sandbox._total_advancements owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_total_credits_view','dw_owner', 'loan_pro_sandbox._total_credits_view owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_transaction_entity','dw_owner', 'loan_pro_sandbox._transaction_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_user__delivery','dw_owner', 'loan_pro_sandbox._user__delivery owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_user_chart_settings_entity','dw_owner', 'loan_pro_sandbox._user_chart_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_user_search_settings_entity','dw_owner', 'loan_pro_sandbox._user_search_settings_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_user_tenant_configuration','dw_owner', 'loan_pro_sandbox._user_tenant_configuration owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_vendor_entity','dw_owner', 'loan_pro_sandbox._vendor_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_view_module_entity','dw_owner', 'loan_pro_sandbox._view_module_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_view_template__view_module','dw_owner', 'loan_pro_sandbox._view_template__view_module owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_view_template_entity','dw_owner', 'loan_pro_sandbox._view_template_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_view_widget_entity','dw_owner', 'loan_pro_sandbox._view_widget_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_web_delivery_entity','dw_owner', 'loan_pro_sandbox._web_delivery_entity owner is dw_owner');
SELECT foreign_table_owner_is('loan_pro_sandbox','_work_item__questions','dw_owner', 'loan_pro_sandbox._work_item__questions owner is dw_owner');
SELECT views_are('loan_pro_sandbox', ARRAY[
    'ach_return_code_action_entity',
    'address_entity',
    'admin_tool__loan',
    'admin_tool_entity',
    'advance_category_entity',
    'all_cust_info_view',
    'bank_account_entity',
    'billing_tool__loan',
    'billing_tool_entity',
    'bracket_entity',
    'bracket_item_entity',
    'cash_drawer__payment_method',
    'cash_drawer_entity',
    'cash_drawer_transaction_entity',
    'cash_drawer_tx_category_entity',
    'charge_entity',
    'checking_account_entity',
    'checklist_entity',
    'checklist_item__entity',
    'checklist_item_entity',
    'collateral_entity',
    'collateral_field_entity',
    'collection',
    'collection_item',
    'collector_queue__loan',
    'collector_queue_entity',
    'collector_queue_question_entity',
    'collector_queue_work_item_entity',
    'comment_thread_comments',
    'comment_thread_topics',
    'computation_field_entity',
    'contract_signer_entity',
    'credit_breakdown_report',
    'credit_card_entity',
    'credit_category_entity',
    'credit_report_history',
    'credit_report_queue',
    'credit_report_view',
    'curtailment_template_entity',
    'curtailment_template_lines_entity',
    'custom_billing_template_entity',
    'custom_billing_theme_entity',
    'custom_boarding_process_entity',
    'custom_boarding_process_step_entity',
    'custom_charge_type_entity',
    'custom_field',
    'custom_field__entity',
    'custom_form_entity',
    'custom_form_section_entity',
    'custom_form_tool__loan',
    'custom_form_tool_entity',
    'custom_payment_method_entity',
    'custom_payment_type_entity',
    'customer_credit_score_entity',
    'customer_document_entity',
    'customer_employer_entity',
    'customer_entity',
    'customer_login_attempts',
    'customer_payment_method_entity',
    'customer_phone_entity',
    'customer_reference_entity',
    'customer_social_profile_entity',
    'customer_status_entity',
    'data_dump_entity',
    'data_import_entity',
    'default_billing_options_entity',
    'default_billing_template_entity',
    'default_billing_theme_entity',
    'defaults_autopay',
    'defaults_charges',
    'defaults_escrow_calculator',
    'defaults_late_fee__buckets',
    'defaults_payments',
    'defaults_system_loan',
    'defaults_user_loan',
    'delivery_entity',
    'disbursement_entity',
    'doc_section_entity',
    'due_to_date_view',
    'email_delivery_entity',
    'email_queue',
    'email_template_entity',
    'email_tool__loan',
    'email_tool_entity',
    'email_trigger_entity',
    'escrow__transactions',
    'escrow_adjustment_entity',
    'escrow_analysis_process_entity',
    'escrow_analysis_task_entity',
    'escrow_calculator_entity',
    'escrow_subset_entity',
    'escrow_subset_options_entity',
    'escrow_subset_options_entity_backup',
    'escrow_transaction_entity',
    'escrow_tx_category_entity',
    'faq_entry_entity',
    'file_attachment_entity',
    'first_loan_payment_transaction_view',
    'flag_entity',
    'flag_status_archive',
    'form_section_entity',
    'gps_link_entity',
    'history_funding_report_view',
    'holding_account__investor',
    'holding_account_archive_entity',
    'holding_account_autopay_entity',
    'holding_account_category_entity',
    'holding_account_settings_entity',
    'holding_account_status_entity',
    'holding_account_sub_status_entity',
    'holding_account_transaction_category_entity',
    'holding_account_transaction_entity',
    'homepage_image_entity',
    'investment__portfolio',
    'investment__sub_portfolio',
    'investment_document_entity',
    'investment_entity',
    'investment_position_entity',
    'investor_document_entity',
    'investor_entity',
    'investor_status_entity',
    'iprestriction_entity',
    'iprestriction_entry_entity',
    'last_loan_payment_transaction_view',
    'link_entity',
    'linked_info__entity',
    'linked_loan__entity',
    'linked_loan_option_entity',
    'loan__customer',
    'loan__portfolio',
    'loan__recurrent_charge',
    'loan__rule_applied_apd_reset',
    'loan__rule_applied_charge_off',
    'loan__rule_applied_checklist',
    'loan__rule_applied_duedate',
    'loan__rule_applied_settings',
    'loan__rule_applied_stop_interest',
    'loan__sub_portfolio',
    'loan_active_time_tx',
    'loan_advancement_entity',
    'loan_apd_adjustment_entity',
    'loan_autopay_entity',
    'loan_autopay_entity_old',
    'loan_chargeoff__transactions',
    'loan_chargeoff_entity',
    'loan_collected_stats_view',
    'loan_credit_entity',
    'loan_curtail_date_entity',
    'loan_delinquency_history_entity',
    'loan_document_entity',
    'loan_dpd_adjustment_entity',
    'loan_duedate_change_entity',
    'loan_entity',
    'loan_escrow_tx_view',
    'loan_funding_entity',
    'loan_future_stats_view',
    'loan_insurance_entity',
    'loan_last_payment_view',
    'loan_late_fee__buckets',
    'loan_modification_entity',
    'loan_next_forecast_payment_view',
    'loan_next_scheduled_payment_view',
    'loan_past_stats_view',
    'loan_payment_seq',
    'loan_portfolio_view',
    'loan_promise_entity',
    'loan_reverse_calc_settings',
    'loan_reverse_status_archive',
    'loan_schedule_payments_view',
    'loan_schedule_roll_entity',
    'loan_settings_entity',
    'loan_setup_entity',
    'loan_sms_queue_item_entity',
    'loan_status_archive',
    'loan_status_archive_current_date_view',
    'loan_status_entity',
    'loan_stop_interest_date_entity',
    'loan_sub_status_entity',
    'loan_subportfolio_view',
    'loan_tx',
    'loan_tx_payment_view',
    'loan_yearly_stats_view',
    'mail_house_delivery_entity',
    'mail_house_entity',
    'mail_house_loan',
    'mail_house_tool_entity',
    'mc_processor_extender',
    'my_applications_setting_entity',
    'my_loans_setting_entity',
    'next_autopay_view',
    'note_category_entity',
    'note_entity',
    'notification_category__delivery',
    'notification_category_entity',
    'notification_dnd_period_entity',
    'notification_entity',
    'page_entity',
    'payment__portfolio',
    'payment__sub_portfolio',
    'payment_account_entity',
    'payment_entity',
    'payment_info_entity',
    'payment_receipt_select_small_v',
    'payment_receipt_select_v',
    'payment_reversed_tx_snapshot',
    'pnm_order_entity',
    'portfolio_category_entity',
    'portfolio_entity',
    'preconfigured_loan__portfolio',
    'preconfigured_loan__sub_portfolio',
    'preconfigured_loan_entity',
    'preconfigured_loan_settings_entity',
    'quick_note_entity',
    'recurring_charge_entity',
    'report_cache',
    'restriction_group__user',
    'restriction_group_entity',
    'restriction_group_entry_archive',
    'restriction_group_entry_entity',
    'rule__category',
    'rule_applied_apd_reset_entity',
    'rule_applied_charge_off_entity',
    'rule_applied_checklist_entity',
    'rule_applied_duedate_entity',
    'rule_applied_loan_settings_entity',
    'rule_applied_settings__portfolio',
    'rule_applied_settings__portfolio_to_delete',
    'rule_applied_settings__sub_portfolio',
    'rule_applied_settings__sub_portfolio_to_delete',
    'rule_applied_stop_interest_entity',
    'rule_category_entity',
    'rule_entity',
    'sample_entity',
    'saved_search_entity',
    'sbt_dnd_periods',
    'sbt_message_log',
    'sbt_template_mapping',
    'schedule_roll_template_entity',
    'schedule_template_lines_entity',
    'scheduled_action_entity',
    'scheduled_report_entity',
    'schema_version',
    'search_index_error_log',
    'search_restriction_group_entity',
    'search_restriction_setting_entity',
    'security_group',
    'security_group__user',
    'shortcut_set_entity',
    'sms_delivery_entity',
    'sms_trigger_entity',
    'sound_group_entity',
    'sound_group_item_entity',
    'source_company_entity',
    'special_report_entity',
    'stoplight_entity',
    'sub_portfolio_entity',
    'support_transaction__topic',
    'support_transaction_entity',
    'system_note_entity',
    'tcn_campaign_entity',
    'tcn_queue_item_entity',
    'tenant_backup_log_entity',
    'tenant_bulk_purchase_entity',
    'tenant_checklist_category_entity',
    'tenant_checklist_entity',
    'tenant_plugins_contract_entity',
    'tenant_pricing_tier_entity',
    'tenant_setting__entity',
    'testimonial_entity',
    'time_slot_entity',
    'topic_entity',
    'total_advancements',
    'total_credits_view',
    'transaction_entity',
    'user__delivery',
    'user_chart_settings_entity',
    'user_search_settings_entity',
    'user_tenant_configuration',
    'vendor_entity',
    'view_module_entity',
    'view_template__view_module',
    'view_template_entity',
    'view_widget_entity',
    'web_delivery_entity',
    'work_item__questions'
]);

SELECT view_owner_is('loan_pro_sandbox','ach_return_code_action_entity','dw_owner', 'loan_pro_sandbox.ach_return_code_action_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','address_entity','dw_owner', 'loan_pro_sandbox.address_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','admin_tool__loan','dw_owner', 'loan_pro_sandbox.admin_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','admin_tool_entity','dw_owner', 'loan_pro_sandbox.admin_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','advance_category_entity','dw_owner', 'loan_pro_sandbox.advance_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','all_cust_info_view','dw_owner', 'loan_pro_sandbox.all_cust_info_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','bank_account_entity','dw_owner', 'loan_pro_sandbox.bank_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','billing_tool__loan','dw_owner', 'loan_pro_sandbox.billing_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','billing_tool_entity','dw_owner', 'loan_pro_sandbox.billing_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','bracket_entity','dw_owner', 'loan_pro_sandbox.bracket_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','bracket_item_entity','dw_owner', 'loan_pro_sandbox.bracket_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','cash_drawer__payment_method','dw_owner', 'loan_pro_sandbox.cash_drawer__payment_method owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','cash_drawer_entity','dw_owner', 'loan_pro_sandbox.cash_drawer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','cash_drawer_transaction_entity','dw_owner', 'loan_pro_sandbox.cash_drawer_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','cash_drawer_tx_category_entity','dw_owner', 'loan_pro_sandbox.cash_drawer_tx_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','charge_entity','dw_owner', 'loan_pro_sandbox.charge_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','checking_account_entity','dw_owner', 'loan_pro_sandbox.checking_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','checklist_entity','dw_owner', 'loan_pro_sandbox.checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','checklist_item__entity','dw_owner', 'loan_pro_sandbox.checklist_item__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','checklist_item_entity','dw_owner', 'loan_pro_sandbox.checklist_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','collateral_entity','dw_owner', 'loan_pro_sandbox.collateral_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','collateral_field_entity','dw_owner', 'loan_pro_sandbox.collateral_field_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','collection','dw_owner', 'loan_pro_sandbox.collection owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','collection_item','dw_owner', 'loan_pro_sandbox.collection_item owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','collector_queue__loan','dw_owner', 'loan_pro_sandbox.collector_queue__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','collector_queue_entity','dw_owner', 'loan_pro_sandbox.collector_queue_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','collector_queue_question_entity','dw_owner', 'loan_pro_sandbox.collector_queue_question_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','collector_queue_work_item_entity','dw_owner', 'loan_pro_sandbox.collector_queue_work_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','comment_thread_comments','dw_owner', 'loan_pro_sandbox.comment_thread_comments owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','comment_thread_topics','dw_owner', 'loan_pro_sandbox.comment_thread_topics owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','computation_field_entity','dw_owner', 'loan_pro_sandbox.computation_field_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','contract_signer_entity','dw_owner', 'loan_pro_sandbox.contract_signer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','credit_breakdown_report','dw_owner', 'loan_pro_sandbox.credit_breakdown_report owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','credit_card_entity','dw_owner', 'loan_pro_sandbox.credit_card_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','credit_category_entity','dw_owner', 'loan_pro_sandbox.credit_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','credit_report_history','dw_owner', 'loan_pro_sandbox.credit_report_history owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','credit_report_queue','dw_owner', 'loan_pro_sandbox.credit_report_queue owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','credit_report_view','dw_owner', 'loan_pro_sandbox.credit_report_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','curtailment_template_entity','dw_owner', 'loan_pro_sandbox.curtailment_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','curtailment_template_lines_entity','dw_owner', 'loan_pro_sandbox.curtailment_template_lines_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_billing_template_entity','dw_owner', 'loan_pro_sandbox.custom_billing_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_billing_theme_entity','dw_owner', 'loan_pro_sandbox.custom_billing_theme_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_boarding_process_entity','dw_owner', 'loan_pro_sandbox.custom_boarding_process_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_boarding_process_step_entity','dw_owner', 'loan_pro_sandbox.custom_boarding_process_step_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_charge_type_entity','dw_owner', 'loan_pro_sandbox.custom_charge_type_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_field','dw_owner', 'loan_pro_sandbox.custom_field owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_field__entity','dw_owner', 'loan_pro_sandbox.custom_field__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_form_entity','dw_owner', 'loan_pro_sandbox.custom_form_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_form_section_entity','dw_owner', 'loan_pro_sandbox.custom_form_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_form_tool__loan','dw_owner', 'loan_pro_sandbox.custom_form_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_form_tool_entity','dw_owner', 'loan_pro_sandbox.custom_form_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_payment_method_entity','dw_owner', 'loan_pro_sandbox.custom_payment_method_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','custom_payment_type_entity','dw_owner', 'loan_pro_sandbox.custom_payment_type_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_credit_score_entity','dw_owner', 'loan_pro_sandbox.customer_credit_score_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_document_entity','dw_owner', 'loan_pro_sandbox.customer_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_employer_entity','dw_owner', 'loan_pro_sandbox.customer_employer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_entity','dw_owner', 'loan_pro_sandbox.customer_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_login_attempts','dw_owner', 'loan_pro_sandbox.customer_login_attempts owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_payment_method_entity','dw_owner', 'loan_pro_sandbox.customer_payment_method_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_phone_entity','dw_owner', 'loan_pro_sandbox.customer_phone_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_reference_entity','dw_owner', 'loan_pro_sandbox.customer_reference_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_social_profile_entity','dw_owner', 'loan_pro_sandbox.customer_social_profile_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','customer_status_entity','dw_owner', 'loan_pro_sandbox.customer_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','data_dump_entity','dw_owner', 'loan_pro_sandbox.data_dump_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','data_import_entity','dw_owner', 'loan_pro_sandbox.data_import_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','default_billing_options_entity','dw_owner', 'loan_pro_sandbox.default_billing_options_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','default_billing_template_entity','dw_owner', 'loan_pro_sandbox.default_billing_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','default_billing_theme_entity','dw_owner', 'loan_pro_sandbox.default_billing_theme_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','defaults_autopay','dw_owner', 'loan_pro_sandbox.defaults_autopay owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','defaults_charges','dw_owner', 'loan_pro_sandbox.defaults_charges owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','defaults_escrow_calculator','dw_owner', 'loan_pro_sandbox.defaults_escrow_calculator owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','defaults_late_fee__buckets','dw_owner', 'loan_pro_sandbox.defaults_late_fee__buckets owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','defaults_payments','dw_owner', 'loan_pro_sandbox.defaults_payments owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','defaults_system_loan','dw_owner', 'loan_pro_sandbox.defaults_system_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','defaults_user_loan','dw_owner', 'loan_pro_sandbox.defaults_user_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','delivery_entity','dw_owner', 'loan_pro_sandbox.delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','disbursement_entity','dw_owner', 'loan_pro_sandbox.disbursement_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','doc_section_entity','dw_owner', 'loan_pro_sandbox.doc_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','due_to_date_view','dw_owner', 'loan_pro_sandbox.due_to_date_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','email_delivery_entity','dw_owner', 'loan_pro_sandbox.email_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','email_queue','dw_owner', 'loan_pro_sandbox.email_queue owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','email_template_entity','dw_owner', 'loan_pro_sandbox.email_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','email_tool__loan','dw_owner', 'loan_pro_sandbox.email_tool__loan owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','email_tool_entity','dw_owner', 'loan_pro_sandbox.email_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','email_trigger_entity','dw_owner', 'loan_pro_sandbox.email_trigger_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow__transactions','dw_owner', 'loan_pro_sandbox.escrow__transactions owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_adjustment_entity','dw_owner', 'loan_pro_sandbox.escrow_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_analysis_process_entity','dw_owner', 'loan_pro_sandbox.escrow_analysis_process_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_analysis_task_entity','dw_owner', 'loan_pro_sandbox.escrow_analysis_task_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_calculator_entity','dw_owner', 'loan_pro_sandbox.escrow_calculator_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_subset_entity','dw_owner', 'loan_pro_sandbox.escrow_subset_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_subset_options_entity','dw_owner', 'loan_pro_sandbox.escrow_subset_options_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_subset_options_entity_backup','dw_owner', 'loan_pro_sandbox.escrow_subset_options_entity_backup owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_transaction_entity','dw_owner', 'loan_pro_sandbox.escrow_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','escrow_tx_category_entity','dw_owner', 'loan_pro_sandbox.escrow_tx_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','faq_entry_entity','dw_owner', 'loan_pro_sandbox.faq_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','file_attachment_entity','dw_owner', 'loan_pro_sandbox.file_attachment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','first_loan_payment_transaction_view','dw_owner', 'loan_pro_sandbox.first_loan_payment_transaction_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','flag_entity','dw_owner', 'loan_pro_sandbox.flag_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','flag_status_archive','dw_owner', 'loan_pro_sandbox.flag_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','form_section_entity','dw_owner', 'loan_pro_sandbox.form_section_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','gps_link_entity','dw_owner', 'loan_pro_sandbox.gps_link_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','history_funding_report_view','dw_owner', 'loan_pro_sandbox.history_funding_report_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account__investor','dw_owner', 'loan_pro_sandbox.holding_account__investor owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account_archive_entity','dw_owner', 'loan_pro_sandbox.holding_account_archive_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account_autopay_entity','dw_owner', 'loan_pro_sandbox.holding_account_autopay_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account_category_entity','dw_owner', 'loan_pro_sandbox.holding_account_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account_settings_entity','dw_owner', 'loan_pro_sandbox.holding_account_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account_status_entity','dw_owner', 'loan_pro_sandbox.holding_account_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account_sub_status_entity','dw_owner', 'loan_pro_sandbox.holding_account_sub_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account_transaction_category_entity','dw_owner', 'loan_pro_sandbox.holding_account_transaction_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','holding_account_transaction_entity','dw_owner', 'loan_pro_sandbox.holding_account_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','homepage_image_entity','dw_owner', 'loan_pro_sandbox.homepage_image_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','investment__portfolio','dw_owner', 'loan_pro_sandbox.investment__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','investment__sub_portfolio','dw_owner', 'loan_pro_sandbox.investment__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','investment_document_entity','dw_owner', 'loan_pro_sandbox.investment_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','investment_entity','dw_owner', 'loan_pro_sandbox.investment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','investment_position_entity','dw_owner', 'loan_pro_sandbox.investment_position_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','investor_document_entity','dw_owner', 'loan_pro_sandbox.investor_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','investor_entity','dw_owner', 'loan_pro_sandbox.investor_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','investor_status_entity','dw_owner', 'loan_pro_sandbox.investor_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','iprestriction_entity','dw_owner', 'loan_pro_sandbox.iprestriction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','iprestriction_entry_entity','dw_owner', 'loan_pro_sandbox.iprestriction_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','last_loan_payment_transaction_view','dw_owner', 'loan_pro_sandbox.last_loan_payment_transaction_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','link_entity','dw_owner', 'loan_pro_sandbox.link_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','linked_info__entity','dw_owner', 'loan_pro_sandbox.linked_info__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','linked_loan__entity','dw_owner', 'loan_pro_sandbox.linked_loan__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','linked_loan_option_entity','dw_owner', 'loan_pro_sandbox.linked_loan_option_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__customer','dw_owner', 'loan_pro_sandbox.loan__customer owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__portfolio','dw_owner', 'loan_pro_sandbox.loan__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__recurrent_charge','dw_owner', 'loan_pro_sandbox.loan__recurrent_charge owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__rule_applied_apd_reset','dw_owner', 'loan_pro_sandbox.loan__rule_applied_apd_reset owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__rule_applied_charge_off','dw_owner', 'loan_pro_sandbox.loan__rule_applied_charge_off owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__rule_applied_checklist','dw_owner', 'loan_pro_sandbox.loan__rule_applied_checklist owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__rule_applied_duedate','dw_owner', 'loan_pro_sandbox.loan__rule_applied_duedate owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__rule_applied_settings','dw_owner', 'loan_pro_sandbox.loan__rule_applied_settings owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__rule_applied_stop_interest','dw_owner', 'loan_pro_sandbox.loan__rule_applied_stop_interest owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan__sub_portfolio','dw_owner', 'loan_pro_sandbox.loan__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_active_time_tx','dw_owner', 'loan_pro_sandbox.loan_active_time_tx owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_advancement_entity','dw_owner', 'loan_pro_sandbox.loan_advancement_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_apd_adjustment_entity','dw_owner', 'loan_pro_sandbox.loan_apd_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_autopay_entity','dw_owner', 'loan_pro_sandbox.loan_autopay_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_autopay_entity_old','dw_owner', 'loan_pro_sandbox.loan_autopay_entity_old owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_chargeoff__transactions','dw_owner', 'loan_pro_sandbox.loan_chargeoff__transactions owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_chargeoff_entity','dw_owner', 'loan_pro_sandbox.loan_chargeoff_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_collected_stats_view','dw_owner', 'loan_pro_sandbox.loan_collected_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_credit_entity','dw_owner', 'loan_pro_sandbox.loan_credit_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_curtail_date_entity','dw_owner', 'loan_pro_sandbox.loan_curtail_date_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_delinquency_history_entity','dw_owner', 'loan_pro_sandbox.loan_delinquency_history_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_document_entity','dw_owner', 'loan_pro_sandbox.loan_document_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_dpd_adjustment_entity','dw_owner', 'loan_pro_sandbox.loan_dpd_adjustment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_duedate_change_entity','dw_owner', 'loan_pro_sandbox.loan_duedate_change_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_entity','dw_owner', 'loan_pro_sandbox.loan_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_escrow_tx_view','dw_owner', 'loan_pro_sandbox.loan_escrow_tx_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_funding_entity','dw_owner', 'loan_pro_sandbox.loan_funding_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_future_stats_view','dw_owner', 'loan_pro_sandbox.loan_future_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_insurance_entity','dw_owner', 'loan_pro_sandbox.loan_insurance_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_last_payment_view','dw_owner', 'loan_pro_sandbox.loan_last_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_late_fee__buckets','dw_owner', 'loan_pro_sandbox.loan_late_fee__buckets owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_modification_entity','dw_owner', 'loan_pro_sandbox.loan_modification_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_next_forecast_payment_view','dw_owner', 'loan_pro_sandbox.loan_next_forecast_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_next_scheduled_payment_view','dw_owner', 'loan_pro_sandbox.loan_next_scheduled_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_past_stats_view','dw_owner', 'loan_pro_sandbox.loan_past_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_payment_seq','dw_owner', 'loan_pro_sandbox.loan_payment_seq owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_portfolio_view','dw_owner', 'loan_pro_sandbox.loan_portfolio_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_promise_entity','dw_owner', 'loan_pro_sandbox.loan_promise_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_reverse_calc_settings','dw_owner', 'loan_pro_sandbox.loan_reverse_calc_settings owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_reverse_status_archive','dw_owner', 'loan_pro_sandbox.loan_reverse_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_schedule_payments_view','dw_owner', 'loan_pro_sandbox.loan_schedule_payments_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_schedule_roll_entity','dw_owner', 'loan_pro_sandbox.loan_schedule_roll_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_settings_entity','dw_owner', 'loan_pro_sandbox.loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_setup_entity','dw_owner', 'loan_pro_sandbox.loan_setup_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_sms_queue_item_entity','dw_owner', 'loan_pro_sandbox.loan_sms_queue_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_status_archive','dw_owner', 'loan_pro_sandbox.loan_status_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_status_archive_current_date_view','dw_owner', 'loan_pro_sandbox.loan_status_archive_current_date_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_status_entity','dw_owner', 'loan_pro_sandbox.loan_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_stop_interest_date_entity','dw_owner', 'loan_pro_sandbox.loan_stop_interest_date_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_sub_status_entity','dw_owner', 'loan_pro_sandbox.loan_sub_status_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_subportfolio_view','dw_owner', 'loan_pro_sandbox.loan_subportfolio_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_tx','dw_owner', 'loan_pro_sandbox.loan_tx owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_tx_payment_view','dw_owner', 'loan_pro_sandbox.loan_tx_payment_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','loan_yearly_stats_view','dw_owner', 'loan_pro_sandbox.loan_yearly_stats_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','mail_house_delivery_entity','dw_owner', 'loan_pro_sandbox.mail_house_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','mail_house_entity','dw_owner', 'loan_pro_sandbox.mail_house_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','mail_house_loan','dw_owner', 'loan_pro_sandbox.mail_house_loan owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','mail_house_tool_entity','dw_owner', 'loan_pro_sandbox.mail_house_tool_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','mc_processor_extender','dw_owner', 'loan_pro_sandbox.mc_processor_extender owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','my_applications_setting_entity','dw_owner', 'loan_pro_sandbox.my_applications_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','my_loans_setting_entity','dw_owner', 'loan_pro_sandbox.my_loans_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','next_autopay_view','dw_owner', 'loan_pro_sandbox.next_autopay_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','note_category_entity','dw_owner', 'loan_pro_sandbox.note_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','note_entity','dw_owner', 'loan_pro_sandbox.note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','notification_category__delivery','dw_owner', 'loan_pro_sandbox.notification_category__delivery owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','notification_category_entity','dw_owner', 'loan_pro_sandbox.notification_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','notification_dnd_period_entity','dw_owner', 'loan_pro_sandbox.notification_dnd_period_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','notification_entity','dw_owner', 'loan_pro_sandbox.notification_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','page_entity','dw_owner', 'loan_pro_sandbox.page_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','payment__portfolio','dw_owner', 'loan_pro_sandbox.payment__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','payment__sub_portfolio','dw_owner', 'loan_pro_sandbox.payment__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','payment_account_entity','dw_owner', 'loan_pro_sandbox.payment_account_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','payment_entity','dw_owner', 'loan_pro_sandbox.payment_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','payment_info_entity','dw_owner', 'loan_pro_sandbox.payment_info_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','payment_receipt_select_small_v','dw_owner', 'loan_pro_sandbox.payment_receipt_select_small_v owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','payment_receipt_select_v','dw_owner', 'loan_pro_sandbox.payment_receipt_select_v owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','payment_reversed_tx_snapshot','dw_owner', 'loan_pro_sandbox.payment_reversed_tx_snapshot owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','pnm_order_entity','dw_owner', 'loan_pro_sandbox.pnm_order_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','portfolio_category_entity','dw_owner', 'loan_pro_sandbox.portfolio_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','portfolio_entity','dw_owner', 'loan_pro_sandbox.portfolio_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','preconfigured_loan__portfolio','dw_owner', 'loan_pro_sandbox.preconfigured_loan__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','preconfigured_loan__sub_portfolio','dw_owner', 'loan_pro_sandbox.preconfigured_loan__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','preconfigured_loan_entity','dw_owner', 'loan_pro_sandbox.preconfigured_loan_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','preconfigured_loan_settings_entity','dw_owner', 'loan_pro_sandbox.preconfigured_loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','quick_note_entity','dw_owner', 'loan_pro_sandbox.quick_note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','recurring_charge_entity','dw_owner', 'loan_pro_sandbox.recurring_charge_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','report_cache','dw_owner', 'loan_pro_sandbox.report_cache owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','restriction_group__user','dw_owner', 'loan_pro_sandbox.restriction_group__user owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','restriction_group_entity','dw_owner', 'loan_pro_sandbox.restriction_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','restriction_group_entry_archive','dw_owner', 'loan_pro_sandbox.restriction_group_entry_archive owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','restriction_group_entry_entity','dw_owner', 'loan_pro_sandbox.restriction_group_entry_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule__category','dw_owner', 'loan_pro_sandbox.rule__category owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_apd_reset_entity','dw_owner', 'loan_pro_sandbox.rule_applied_apd_reset_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_charge_off_entity','dw_owner', 'loan_pro_sandbox.rule_applied_charge_off_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_checklist_entity','dw_owner', 'loan_pro_sandbox.rule_applied_checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_duedate_entity','dw_owner', 'loan_pro_sandbox.rule_applied_duedate_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_loan_settings_entity','dw_owner', 'loan_pro_sandbox.rule_applied_loan_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_settings__portfolio','dw_owner', 'loan_pro_sandbox.rule_applied_settings__portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_settings__portfolio_to_delete','dw_owner', 'loan_pro_sandbox.rule_applied_settings__portfolio_to_delete owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_settings__sub_portfolio','dw_owner', 'loan_pro_sandbox.rule_applied_settings__sub_portfolio owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_settings__sub_portfolio_to_delete','dw_owner', 'loan_pro_sandbox.rule_applied_settings__sub_portfolio_to_delete owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_applied_stop_interest_entity','dw_owner', 'loan_pro_sandbox.rule_applied_stop_interest_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_category_entity','dw_owner', 'loan_pro_sandbox.rule_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','rule_entity','dw_owner', 'loan_pro_sandbox.rule_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sample_entity','dw_owner', 'loan_pro_sandbox.sample_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','saved_search_entity','dw_owner', 'loan_pro_sandbox.saved_search_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sbt_dnd_periods','dw_owner', 'loan_pro_sandbox.sbt_dnd_periods owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sbt_message_log','dw_owner', 'loan_pro_sandbox.sbt_message_log owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sbt_template_mapping','dw_owner', 'loan_pro_sandbox.sbt_template_mapping owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','schedule_roll_template_entity','dw_owner', 'loan_pro_sandbox.schedule_roll_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','schedule_template_lines_entity','dw_owner', 'loan_pro_sandbox.schedule_template_lines_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','scheduled_action_entity','dw_owner', 'loan_pro_sandbox.scheduled_action_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','scheduled_report_entity','dw_owner', 'loan_pro_sandbox.scheduled_report_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','schema_version','dw_owner', 'loan_pro_sandbox.schema_version owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','search_index_error_log','dw_owner', 'loan_pro_sandbox.search_index_error_log owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','search_restriction_group_entity','dw_owner', 'loan_pro_sandbox.search_restriction_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','search_restriction_setting_entity','dw_owner', 'loan_pro_sandbox.search_restriction_setting_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','security_group','dw_owner', 'loan_pro_sandbox.security_group owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','security_group__user','dw_owner', 'loan_pro_sandbox.security_group__user owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','shortcut_set_entity','dw_owner', 'loan_pro_sandbox.shortcut_set_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sms_delivery_entity','dw_owner', 'loan_pro_sandbox.sms_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sms_trigger_entity','dw_owner', 'loan_pro_sandbox.sms_trigger_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sound_group_entity','dw_owner', 'loan_pro_sandbox.sound_group_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sound_group_item_entity','dw_owner', 'loan_pro_sandbox.sound_group_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','source_company_entity','dw_owner', 'loan_pro_sandbox.source_company_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','special_report_entity','dw_owner', 'loan_pro_sandbox.special_report_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','stoplight_entity','dw_owner', 'loan_pro_sandbox.stoplight_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','sub_portfolio_entity','dw_owner', 'loan_pro_sandbox.sub_portfolio_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','support_transaction__topic','dw_owner', 'loan_pro_sandbox.support_transaction__topic owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','support_transaction_entity','dw_owner', 'loan_pro_sandbox.support_transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','system_note_entity','dw_owner', 'loan_pro_sandbox.system_note_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tcn_campaign_entity','dw_owner', 'loan_pro_sandbox.tcn_campaign_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tcn_queue_item_entity','dw_owner', 'loan_pro_sandbox.tcn_queue_item_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tenant_backup_log_entity','dw_owner', 'loan_pro_sandbox.tenant_backup_log_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tenant_bulk_purchase_entity','dw_owner', 'loan_pro_sandbox.tenant_bulk_purchase_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tenant_checklist_category_entity','dw_owner', 'loan_pro_sandbox.tenant_checklist_category_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tenant_checklist_entity','dw_owner', 'loan_pro_sandbox.tenant_checklist_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tenant_plugins_contract_entity','dw_owner', 'loan_pro_sandbox.tenant_plugins_contract_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tenant_pricing_tier_entity','dw_owner', 'loan_pro_sandbox.tenant_pricing_tier_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','tenant_setting__entity','dw_owner', 'loan_pro_sandbox.tenant_setting__entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','testimonial_entity','dw_owner', 'loan_pro_sandbox.testimonial_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','time_slot_entity','dw_owner', 'loan_pro_sandbox.time_slot_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','topic_entity','dw_owner', 'loan_pro_sandbox.topic_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','total_advancements','dw_owner', 'loan_pro_sandbox.total_advancements owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','total_credits_view','dw_owner', 'loan_pro_sandbox.total_credits_view owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','transaction_entity','dw_owner', 'loan_pro_sandbox.transaction_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','user__delivery','dw_owner', 'loan_pro_sandbox.user__delivery owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','user_chart_settings_entity','dw_owner', 'loan_pro_sandbox.user_chart_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','user_search_settings_entity','dw_owner', 'loan_pro_sandbox.user_search_settings_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','user_tenant_configuration','dw_owner', 'loan_pro_sandbox.user_tenant_configuration owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','vendor_entity','dw_owner', 'loan_pro_sandbox.vendor_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','view_module_entity','dw_owner', 'loan_pro_sandbox.view_module_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','view_template__view_module','dw_owner', 'loan_pro_sandbox.view_template__view_module owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','view_template_entity','dw_owner', 'loan_pro_sandbox.view_template_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','view_widget_entity','dw_owner', 'loan_pro_sandbox.view_widget_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','web_delivery_entity','dw_owner', 'loan_pro_sandbox.web_delivery_entity owner is dw_owner');
SELECT view_owner_is('loan_pro_sandbox','work_item__questions','dw_owner', 'loan_pro_sandbox.work_item__questions owner is dw_owner');
SELECT functions_are('temporal_relationships', ARRAY[
    'equals',
    'fst',
    'has_aligns_with',
    'has_before',
    'has_contains',
    'has_during',
    'has_encloses',
    'has_excludes',
    'has_finishes',
    'has_includes',
    'has_meets',
    'has_overlaps',
    'has_starts',
    'is_after',
    'is_before',
    'is_contained_in',
    'is_during',
    'is_meets',
    'is_overlaps',
    'snd',
    'timeperiod',
    'timeperiod_range',
    'xor'
]);

SELECT * FROM finish();
ROLLBACK;
