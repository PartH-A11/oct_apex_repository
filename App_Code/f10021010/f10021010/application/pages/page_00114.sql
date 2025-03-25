prompt --application/pages/page_00114
begin
--   Manifest
--     PAGE: 00114
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>114
,p_tab_set=>'TS1'
,p_name=>'ePRO - Study Statistical Analysis'
,p_step_title=>'ePRO - Study Statistical Analysis'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3792402932812560668)
,p_plug_name=>'ePRO - Study Statistical Analysis'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>',APP_EDC_SITE_TYPE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3793884190831564491)
,p_plug_name=>'RADIO LIST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11769670431167137491)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11769698117029242453)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3793469072219357090)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3792402932812560668)
,p_button_name=>'DOWNLOAD_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download XLS'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3550554799883362665)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3792402932812560668)
,p_button_name=>'DOWNLOAD_CSV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download CSV'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3552664087547194966)
,p_branch_name=>'go to page 121'
,p_branch_action=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:RP:P121_RADIO:2&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P114_RADIO'
,p_branch_condition_text=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3552663952074194965)
,p_name=>'P114_RADIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3792402932812560668)
,p_prompt=>'IWRS/ePRO'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:ePro;1,IWRS;2'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3792403086982560669)
,p_name=>'P114_SITE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3792402932812560668)
,p_prompt=>'<b>Sites</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   --AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' ORDER BY 1'))
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3793468747868357087)
,p_name=>'P114_PATIENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3792402932812560668)
,p_prompt=>'<b>Subjects</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCRNO||'' (''||PTINTL||'')'' D,PATIENT_PROFILE_ID R FROM EDC_PATIENT_PROFILE',
' WHERE STUDY_SITE_ID IN (SELECT SHUTTLE_VALUE FROM REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''SITE'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME)) AND EPRO_STATUS IS NOT NULL',
'order by 1'))
,p_lov_cascade_parent_items=>'P114_SITE'
,p_ajax_items_to_submit=>'P114_SITE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3793882060782564470)
,p_name=>'P114_VISIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3792402932812560668)
,p_prompt=>'<b>Visits</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISP_SCHEDULE_NAME d, SCHEDULE_ID r',
'FROM EDC_PATIENT_SCHEDULE_PARAMS',
'WHERE STUDY_ID = 661--:APP_EDC_STUDY_ID',
'ORDER BY SCHEDULE_ID;'))
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3793882157731564471)
,p_name=>'P114_SECTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3792402932812560668)
,p_prompt=>'<b>CRF</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT A.CRF_NAME||''-''||A.CRF_SHORT_NAME D, A.CRF_ID R',
'FROM EDC_CRF_MASTER A, EDC_PATIENT_DIARY_PAGES B',
'WHERE A.STUDY_ID = :APP_EDC_STUDY_ID',
'AND A.CRF_ID = B.CRF_ID',
'AND A.PARENT_PAGE IS NULL',
'AND B.SCHEDULE_ID IN (SELECT SHUTTLE_VALUE FROM REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''VISIT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME))',
'--AND A.CRF_ID NOT IN (28,30)',
'AND CRF_PAGE_NO IN (100,509,510)',
'ORDER BY A.CRF_ID;'))
,p_lov_cascade_parent_items=>'P114_VISIT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3793884053886564490)
,p_name=>'P114_USERNAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3793884190831564491)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3793883617837564486)
,p_name=>'DOWNLOAD_XLS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3793469072219357090)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793883720010564487)
,p_event_id=>wwv_flow_imp.id(3793883617837564486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'//var v_study = $v("P114_STUDY_ID");',
'var v_site = $v("P114_SITE_RIGHT");//P114_SITES_RIGHT',
'var m = v_site.length < 1;',
'',
'',
'if($v("P114_PATIENT") != ""){v_pat = $v("P114_PATIENT");}else{v_pat=0;}',
'if($v("P114_FLAG") != ""){v_flag= $v("P114_FLAG");}else{v_flag=0;}',
'',
'if (m)',
'    {  ',
'        alert("Please Select Any Site.");',
'    }',
'',
'else',
'{',
'//if (v_study == 661)',
'    //if (:APP_EDC_STUDY_ID = 661)',
'    //{',
'        window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/EDC_CRF_MAIN&_repFormat=xlsx&_dataSource=default&_outFilename=Study Statistical Analysis.xlsx&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERNAME")+'''',''_bla'
||'nk'');',
'    //}',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3550554889187362666)
,p_name=>'DOWNLOAD_CSV'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3550554799883362665)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3550555014822362667)
,p_event_id=>wwv_flow_imp.id(3550554889187362666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'//var v_study = $v("P114_STUDY_ID");',
'var v_site = $v("P114_SITE_RIGHT");//P114_SITES_RIGHT',
'var m = v_site.length < 1;',
'var crf = $v("P114_SECTION");',
'',
'if($v("P114_PATIENT") != ""){v_pat = $v("P114_PATIENT");}else{v_pat=0;}',
'if($v("P114_FLAG") != ""){v_flag= $v("P114_FLAG");}else{v_flag=0;}',
'',
'if (m)',
'    {  ',
'        alert("Please Select Any Site.");',
'    }',
'',
'else',
'{',
'   	   var res = crf.split('':'');',
'',
'  for ( var i in res) ',
'    {',
'      //alert(res[i]);',
'    if (res[i]==2) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_VS&_repFormat=csv&_dataSource=default&_outFilename=Vital Signs.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERNAME")+'''',''_bla'
||'nk'');}',
'    if (res[i]==3) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_SSC&_repFormat=csv&_dataSource=default&_outFilename=Saliva Sample Collection.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERN'
||'AME")+'''',''_blank'');}',
'    if (res[i]==4) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_SMA&_repFormat=csv&_dataSource=default&_outFilename=Study Medication Administration.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P11'
||'4_USERNAME")+'''',''_blank'');}',
'    if (res[i]==5) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_CSE&_repFormat=csv&_dataSource=default&_outFilename=COVID-19 Symptoms Evaluation.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_U'
||'SERNAME")+'''',''_blank'');}',
'    if (res[i]==6) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_GDA&_repFormat=csv&_dataSource=default&_outFilename=Global Daily Impression Assessment.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("'
||'P114_USERNAME")+'''',''_blank'');}',
'    if (res[i]==7) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_OM&_repFormat=csv&_dataSource=default&_outFilename=Other Medications.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERNAME")+'''''
||',''_blank'');}',
'    if (res[i]==9) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_ONS&_repFormat=csv&_dataSource=default&_outFilename=Other New Symptoms.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERNAME")+'
||''''',''_blank'');}',
'    if (res[i]==18) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_OCOMP&_repFormat=csv&_dataSource=default&_outFilename=Other Complaints.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERNAME")'
||'+'''',''_blank'');}',
'    if (res[i]==21) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_OCOM&_repFormat=csv&_dataSource=default&_outFilename=Other Comments.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERNAME")+'''''
||',''_blank'');}',
'    if (res[i]==24) {window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/XLS/APPILI_EDC_CRF_UPT&_repFormat=csv&_dataSource=default&_outFilename=Urine Pregnancy Test.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERNAME'
||'")+'''',''_blank'');}',
'',
'    }',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (crf.includes("2")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_VS&_repFormat=csv&_dataSource=default&_outFilename=Vital Signs.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_USERNAME")'
||'+'''',''_blank'');}',
'    if (crf.includes("3")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_SSC&_repFormat=csv&_dataSource=default&_outFilename=Saliva Sample Collection.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$'
||'v("P114_USERNAME")+'''',''_blank'');}',
'    if (crf.includes("4")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_SMA&_repFormat=csv&_dataSource=default&_outFilename=Study Medication Administration.csv&_repLocale=en_US&_repEncoding=UTF-8&P_U'
||'SER=''+$v("P114_USERNAME")+'''',''_blank'');}',
'    if (crf.includes("5")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_CSE&_repFormat=csv&_dataSource=default&_outFilename=COVID-19 Symptoms Evaluation.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER'
||'=''+$v("P114_USERNAME")+'''',''_blank'');}',
'    if (crf.includes("6")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_GDA&_repFormat=csv&_dataSource=default&_outFilename=Global Daily Impression Assessment.csv&_repLocale=en_US&_repEncoding=UTF-8&'
||'P_USER=''+$v("P114_USERNAME")+'''',''_blank'');}',
'    if (crf.includes("7")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_OM&_repFormat=csv&_dataSource=default&_outFilename=Other Medications.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_'
||'USERNAME")+'''',''_blank'');}',
'    if (crf.includes("9")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_ONS&_repFormat=csv&_dataSource=default&_outFilename=Other New Symptoms.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P11'
||'4_USERNAME")+'''',''_blank'');}',
'    if (crf.includes("18")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_OCOMP&_repFormat=csv&_dataSource=default&_outFilename=Other Complaints.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P1'
||'14_USERNAME")+'''',''_blank'');}',
'    if (crf.includes("21")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_OCOM&_repFormat=csv&_dataSource=default&_outFilename=Other Comments.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("P114_'
||'USERNAME")+'''',''_blank'');}',
'    if (crf.includes("24")) {window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/XLS/APPILI_EDC_CRF_UPT&_repFormat=csv&_dataSource=default&_outFilename=Urine Pregnancy Test.csv&_repLocale=en_US&_repEncoding=UTF-8&P_USER=''+$v("'
||'P114_USERNAME")+'''',''_blank'');}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3793882221631564472)
,p_name=>'Clear Site and Visit on Page Load'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793882339453564473)
,p_event_id=>wwv_flow_imp.id(3793882221631564472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P114_SITE,P114_VISIT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3793882470381564474)
,p_name=>'Set Site'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793882533182564475)
,p_event_id=>wwv_flow_imp.id(3793882470381564474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P114_SITE);',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''SITE'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''PATIENT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    for i in 1..tab.count loop',
'        ',
'        insert into REPORT_SHUTTLE_VALUES(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values(''SITE'',tab(i),:APP_USER_NAME);',
'        commit;',
'        ',
'    end loop;',
'    ',
'end;    '))
,p_attribute_02=>'APP_USER_NAME,P114_SITE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793882686193564476)
,p_event_id=>wwv_flow_imp.id(3793882470381564474)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P114_PATIENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3793882752597564477)
,p_name=>'Set Patient'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_PATIENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793882885865564478)
,p_event_id=>wwv_flow_imp.id(3793882752597564477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P114_PATIENT);',
'    ',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''PATIENT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    for i in 1..tab.count loop',
'        ',
'        insert into REPORT_SHUTTLE_VALUES(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values(''PATIENT'',tab(i),:APP_USER_NAME);',
'        commit;',
'        ',
'    end loop;',
'    ',
'end;    '))
,p_attribute_02=>'APP_USER_NAME,P114_PATIENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3793883063997564480)
,p_name=>'Set Visit'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_VISIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793883198403564481)
,p_event_id=>wwv_flow_imp.id(3793883063997564480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P114_VISIT);',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''VISIT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''SECTION'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    for i in 1..tab.count loop',
'        ',
'        insert into REPORT_SHUTTLE_VALUES(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values(''VISIT'',tab(i),:APP_USER_NAME);',
'        commit;',
'',
'    end loop;',
'',
'end;'))
,p_attribute_02=>'APP_USER_NAME,P114_VISIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793883263837564482)
,p_event_id=>wwv_flow_imp.id(3793883063997564480)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P114_SECTION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3793883350321564483)
,p_name=>'Set CRF'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P114_SECTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793883464032564484)
,p_event_id=>wwv_flow_imp.id(3793883350321564483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P114_SECTION);',
'    delete from REPORT_SHUTTLE_VALUES WHERE SHUTTLE_TYPE = ''SECTION'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    ',
'    for i in 1..tab.count loop',
'        ',
'        insert into REPORT_SHUTTLE_VALUES(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values(''SECTION'',tab(i),:APP_USER_NAME);',
'        commit;',
'        ',
'    end loop;',
'    ',
'end;'))
,p_attribute_02=>'APP_USER_NAME,P114_SECTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3793883884301564488)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete data from table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from report_shuttle_values',
'    where upper(username) = upper(:APP_USER_NAME);',
'    ',
'    commit;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2692933116160060395
);
wwv_flow_imp.component_end;
end;
/
