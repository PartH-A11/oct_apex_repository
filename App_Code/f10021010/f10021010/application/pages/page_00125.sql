prompt --application/pages/page_00125
begin
--   Manifest
--     PAGE: 00125
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>125
,p_tab_set=>'TS1'
,p_name=>'IWRS - Audit Trail Report'
,p_step_title=>'IWRS - Audit Trail Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11443139374322504562)
,p_plug_name=>'IWRS - Audit Trail Report'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_2'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM (',
'SELECT C.SCRNO SCREENING_NUMBER, C.PATIENT_PROFILE_ID,',
'       --A.TABLE_NAME,',
'       A.COLUMN_NAME,',
'       DECODE(A.ACTION,''I'',''Insert'',''U'',''Update'',A.ACTION) ACTION,',
'       C.STUDY_SITE_ID as STUDY_SITE_ID,    ',
'       B.VISIT_TITLE,',
'       A.REASON_FOR_CHANGE,',
'       TO_CHAR(A.ACTION_DATE,''DD-MON-YYYY HH:MI AM'') ACTION_DATE,',
'       A.ACTION_BY,',
'       A.DATA_TYPE,',
'       CASE WHEN DATA_TYPE = ''VARCHAR2'' THEN OLD_VC',
'       WHEN DATA_TYPE = ''DATE'' THEN TO_CHAR(OLD_DATE,''DD-MON-YY'')',
'       WHEN DATA_TYPE = ''NUMBER'' THEN TO_CHAR(OLD_NUMBER)',
'       END OLD_VALUE,',
'       ',
'       CASE WHEN DATA_TYPE = ''VARCHAR2'' THEN NEW_VC',
'       WHEN DATA_TYPE = ''DATE'' THEN TO_CHAR(NEW_DATE,''DD-MON-YY'')',
'       WHEN DATA_TYPE = ''NUMBER'' THEN TO_CHAR(NEW_NUMBER)',
'       END NEW_VALUE,',
'       ',
'        (REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(B.PARAM_ID,1001,''P''||1001||''_''||A.COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''')) COLUMN_LABEL',
'FROM EDC_REASON_FOR_CH_HIST A, EDC_PATIENT_VISIT B, EDC_PATIENT_PROFILE c, IWRS_CRF_DM D',
'WHERE TABLE_NAME IN (''IWRS_CRF_DM'')',
'AND B.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'AND A.PK1 = D.DM_ID',
'AND B.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID',
'AND A.COLUMN_NAME NOT IN (''CRF_STATUS'',''STUDY_ID'',''PATIENT_VISIT_ID'') ',
'AND edc_util.DISPLAY_ITEM_IN_VISIT(B.PARAM_ID,1001,''P1001_''||COLUMN_NAME) >= 1',
'--and B.PATIENT_VISIT_ID=1',
'ORDER BY SCREENING_NUMBER)',
'WHERE NVL(OLD_VALUE,NEW_VALUE) IS NOT NULL',
'AND VISIT_TITLE = DECODE(:P125_VISIT,''ABC'',VISIT_TITLE,:P125_VISIT)',
'AND  STUDY_SITE_ID = DECODE(:P125_SITES,999999,STUDY_SITE_ID,:P125_SITES)',
'AND  PATIENT_PROFILE_ID = DECODE(:P125_SCRNO,9999989,PATIENT_PROFILE_ID,:P125_SCRNO)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P125_SITES,P125_VISIT,P125_SCRNO'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11443139467512504562)
,p_name=>'Subject Visits'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'20'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>9250614247683861491
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456126797773587464)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>65
,p_column_identifier=>'AS'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456127189108587464)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>75
,p_column_identifier=>'AT'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456127527015587465)
,p_db_column_name=>'ACTION'
,p_display_order=>125
,p_column_identifier=>'AY'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456123236387587459)
,p_db_column_name=>'SCREENING_NUMBER'
,p_display_order=>135
,p_column_identifier=>'BA'
,p_column_label=>'Screening Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456123568492587461)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>145
,p_column_identifier=>'BB'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456124012604587461)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>155
,p_column_identifier=>'BC'
,p_column_label=>'Visit Title'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456124365141587461)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>165
,p_column_identifier=>'BD'
,p_column_label=>'Action Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456124802424587462)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>175
,p_column_identifier=>'BE'
,p_column_label=>'Action By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456125179189587462)
,p_db_column_name=>'DATA_TYPE'
,p_display_order=>185
,p_column_identifier=>'BF'
,p_column_label=>'Data Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456125596754587462)
,p_db_column_name=>'COLUMN_LABEL'
,p_display_order=>195
,p_column_identifier=>'BG'
,p_column_label=>'Column Label'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456126014645587463)
,p_db_column_name=>'REASON_FOR_CHANGE'
,p_display_order=>205
,p_column_identifier=>'BH'
,p_column_label=>'Reason For Change'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2456126381833587463)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>215
,p_column_identifier=>'BJ'
,p_column_label=>'Study Site Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(760536237081759253)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>225
,p_column_identifier=>'BK'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3236662413985192303)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Report for Updated Records'
,p_report_seq=>10
,p_report_alias=>'2636027'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'OLD_VALUE:NEW_VALUE:ACTION'
,p_sort_column_1=>'SCRNO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SCHEDULE_TITLE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PANEL_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'PERFORMED_ON'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2456128329410587469)
,p_report_id=>wwv_flow_imp.id(3236662413985192303)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ACTION'
,p_operator=>'='
,p_expr=>'UPDATE'
,p_condition_sql=>'"ACTION" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''UPDATE''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11443146284478505495)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2636035'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'SCREENING_NUMBER:VISIT_TITLE:COLUMN_NAME:COLUMN_LABEL:DATA_TYPE:REASON_FOR_CHANGE:OLD_VALUE:NEW_VALUE:ACTION:ACTION_DATE:ACTION_BY:_V1:STUDY_SITE_ID:PATIENT_PROFILE_ID'
,p_sort_column_1=>'SCRNO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SCHEDULE_TITLE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PANEL_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'PERFORMED_ON'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11443166492242609522)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11443206136642831146)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2456129197442587473)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11443139374322504562)
,p_button_name=>'PRINT_XLS_AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(760535591982759247)
,p_name=>'P125_SCRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11443139374322504562)
,p_prompt=>'Select Screening Number'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r from ',
'(',
'SELECT SCRNO D , PATIENT_PROFILE_ID R , ''1'' s FROM EDC_PATIENT_PROFILE',
'UNION',
'select ''All Screening Number'' D, 9999989 r, ''0'' s',
'from dual',
')',
'ORDER BY S,R'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2456129569656587475)
,p_name=>'P125_SITES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11443139374322504562)
,p_prompt=>'Select Site'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r from (SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R, ''1'' s',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'  -- AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'union',
'select ''All Sites'' D, 999999 r, ''0'' s',
'from dual',
'order by s, d)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2456129989691587478)
,p_name=>'P125_VISIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11443139374322504562)
,p_prompt=>'Select Visit'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r from (select VISIT_NAME AS "D",VISIT_NAME r,''1'' s,PARAM_ID from Edc_Patient_Visit_Params',
'union',
'select ''All Visits'' D, ''ABC'' r, ''0'' s , 0 PARAM_ID',
'from dual',
'order by PARAM_ID,s, r)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2456131531322587487)
,p_name=>'Download PDF_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9415748219466553151)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2456132080773587489)
,p_event_id=>wwv_flow_imp.id(2456131531322587487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/DICLO_IWRS_SV&_repFormat=csv&_dataSource=default&_outFilename=Subject_Visits.csv&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P125_EDC_ROLE_ID_1")+''&P_EDC_USER=''+ '
||'$v("P125_EDC_USER_1") +''&P_EDC_USER_ID=''+ $v("P125_EDC_USER_ID_1")+'''',''_blank'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2456132496121587489)
,p_name=>'PRINT_XLS_AUDIT_TRAIL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2456129197442587473)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2456132947502587490)
,p_event_id=>wwv_flow_imp.id(2456132496121587489)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'',
'',
'window.open(''../JasperReportsIntegration/report?_repName=APPILI_COVID_TEST2/Kit Inventory/KIT_INVENTORY&_repFormat=xls&_dataSource=default&_outFilename=KIT_INVENTORY.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2456133323223587490)
,p_name=>'DISABLE '
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P125_SITES'
,p_condition_element=>'P125_SITES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2456133898679587490)
,p_event_id=>wwv_flow_imp.id(2456133323223587490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_VISIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2456134368661587491)
,p_event_id=>wwv_flow_imp.id(2456133323223587490)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_VISIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(760535758974759248)
,p_event_id=>wwv_flow_imp.id(2456133323223587490)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_VISIT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(760535867918759249)
,p_name=>'VISIT_DISABLE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P125_VISIT'
,p_condition_element=>'P125_VISIT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(760535968661759250)
,p_event_id=>wwv_flow_imp.id(760535867918759249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_SCRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(760536013383759251)
,p_event_id=>wwv_flow_imp.id(760535867918759249)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_SCRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(760536094878759252)
,p_event_id=>wwv_flow_imp.id(760535867918759249)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_SCRNO'
);
wwv_flow_imp.component_end;
end;
/
