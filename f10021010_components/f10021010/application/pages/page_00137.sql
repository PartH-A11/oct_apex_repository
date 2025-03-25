prompt --application/pages/page_00137
begin
--   Manifest
--     PAGE: 00137
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
 p_id=>137
,p_tab_set=>'TS1'
,p_name=>'Audit Trail'
,p_step_title=>'Audit Trail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10802460560158189119)
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
 p_id=>wwv_flow_imp.id(10802461138202189122)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.scrno,',
'       D.Randomno,',
'       c.visit_title,',
'       --GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) COLUMN_NAME,',
'      -- case when 1001 = 1001 then',
'       REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(c.param_id,1001,''P1001''||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''') column_name,',
'        --else GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end COLUMN_NAME,',
'       DECODE(ACTION,''I'',''Insert'',''U'',''Update'') ACTION,',
'       to_char(ACTION_DATE,''DD-MON-YYYY HH:MI PM'')action_date,',
'       ACTION_BY,',
'       --TABLE_PRIMARY_KEY,',
'      --TABLE_ROW_VERSION,',
'        decode(a.data_type,',
'                        ''NUMBER'',to_char(old_number),',
'                        ''VARCHAR2'',substr(old_vc,1,50),',
'                        --''DATE'',to_char(old_date,''DD-MON-YYY HH24:MI:SS'')||'' > ''||to_char(new_date,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''DATE'',to_char(old_date,''DD-MON-YYYY''),',
'                        ''TIMESTAMP'',to_char(old_ts,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''TIMESTAMP WITH TIMEZONE'',to_char(old_tswtz,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''TIMESTAMP WITH LOCAL TIMEZONE'',to_char(old_tswltz,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''BLOB'',''length ''||dbms_lob.getlength(old_blob),',
'                        ''CLOB'',dbms_lob.substr(old_vc,50,1)) old_value,',
'                   decode(a.data_type,',
'                        ''VARCHAR2'',substr(A.New_Vc,1,50),',
'                        --''DATE'',to_char(old_date,''DD-MON-YYY HH24:MI:SS'')||'' > ''||to_char(new_date,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''DATE'',to_char(a.new_date,''DD-MON-YYYY''),',
'                        ''TIMESTAMP'',to_char(a.new_ts,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''TIMESTAMP WITH TIMEZONE'',to_char(a.new_tswtz,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''TIMESTAMP WITH LOCAL TIMEZONE'',to_char(a.new_tswltz,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''BLOB'',''length ''||dbms_lob.getlength(a.new_blob),',
'                        ''CLOB'',dbms_lob.substr(a.new_vc,50,1),',
'                         ''NUMBER'',A.New_Number',
'                        ) new_value,          ',
'       REASON_FOR_CHANGE',
'  FROM EDC_REASON_FOR_CH_HIST a, iwrs_Crf_dm b, edc_patient_visit c,edc_patient_profile d',
' WHERE  a.pk1 = b.dm_id',
'   and b.patient_visit_id = c.patient_visit_id',
'   and c.patient_profile_id = d.patient_profile_id',
'   --and b.patient_visit_id = 2721',
'   and REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(c.param_id,1001,''P1001''||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''') <> ''Not Defined''',
'   AND table_name IN (''IWRS_CRF_DM'')',
'AND VISIT_TITLE = DECODE(:P137_VISIT,''ABC'',VISIT_TITLE,:P137_VISIT)',
'AND  STUDY_SITE_ID = DECODE(:P137_SITES,999999,STUDY_SITE_ID,:P137_SITES)',
'AND  D.PATIENT_PROFILE_ID = DECODE(:P137_SCRNO,9999989,D.PATIENT_PROFILE_ID,:P137_SCRNO)',
'AND COLUMN_NAME NOT IN(''ASSENT_STOP'')',
'   order by d.scrno,c.patient_visit_id;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P137_SITES,P137_VISIT,P137_SCRNO'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10802461246240189122)
,p_name=>'Placebo Dispensing Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AVINASH.BHATIYA'
,p_internal_uid=>8724531080949726825
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294960467248920567)
,p_db_column_name=>'SCRNO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Screening No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294958137787920563)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Visit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294966626341941198)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>29
,p_column_identifier=>'L'
,p_column_label=>'Randomization No. '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294966700666941199)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>39
,p_column_identifier=>'M'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294966835909941200)
,p_db_column_name=>'ACTION'
,p_display_order=>49
,p_column_identifier=>'N'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294966907035941201)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>59
,p_column_identifier=>'O'
,p_column_label=>'Action Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294967058172941202)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>69
,p_column_identifier=>'P'
,p_column_label=>'Action By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294967113664941203)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>79
,p_column_identifier=>'Q'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294967232322941204)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>89
,p_column_identifier=>'R'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2294967356183941205)
,p_db_column_name=>'REASON_FOR_CHANGE'
,p_display_order=>99
,p_column_identifier=>'S'
,p_column_label=>'Reason For Change'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10802474401179348081)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2170319'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SCRNO:VISIT_TITLE::RANDOMNO:COLUMN_NAME:ACTION:ACTION_DATE:ACTION_BY:OLD_VALUE:NEW_VALUE:REASON_FOR_CHANGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10802471677040331510)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 235px;margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2294962562194920571)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10802461138202189122)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2294962866404920572)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10802461138202189122)
,p_button_name=>'PRINT_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1859847358258037274)
,p_name=>'P137_SITES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10802461138202189122)
,p_prompt=>'Select Site'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r from (SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R, ''1'' s',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
' AND SUN_21010_DEV.EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'  -- AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'union',
'select ''All Sites'' D, 999999 r, ''0'' s',
'from dual',
'order by s, d)',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1859847481099037275)
,p_name=>'P137_VISIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10802461138202189122)
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
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1859847931217037279)
,p_name=>'P137_SCRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10802461138202189122)
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
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2294963865384920576)
,p_name=>'PRINT_PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2294962562194920571)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2294964378420920577)
,p_event_id=>wwv_flow_imp.id(2294963865384920576)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Kit Dispense Status/KIT_DISPENSE_STATUS&_repFormat=pdf&_dataSource=default&_outFilename=KIT_DISPENSE_STATUS.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY'
||'_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2294964846951920578)
,p_name=>'PRINT_XLS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2294962866404920572)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2294965332514920578)
,p_event_id=>wwv_flow_imp.id(2294964846951920578)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Kit Dispense Status/KIT_DISPENSE_STATUS&_repFormat=xls&_dataSource=default&_outFilename=KIT_DISPENSE_STATUS.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY'
||'_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1859847596183037276)
,p_name=>'DISABLE '
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_SITES'
,p_condition_element=>'P137_SITES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859847661439037277)
,p_event_id=>wwv_flow_imp.id(1859847596183037276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_VISIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859847796974037278)
,p_event_id=>wwv_flow_imp.id(1859847596183037276)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_VISIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859848384489037284)
,p_event_id=>wwv_flow_imp.id(1859847596183037276)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_VISIT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1859847975290037280)
,p_name=>'DISABLE_VISIT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_VISIT'
,p_condition_element=>'P137_VISIT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859848104148037281)
,p_event_id=>wwv_flow_imp.id(1859847975290037280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SCRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859848260693037283)
,p_event_id=>wwv_flow_imp.id(1859847975290037280)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SCRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859848176665037282)
,p_event_id=>wwv_flow_imp.id(1859847975290037280)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SCRNO'
);
wwv_flow_imp.component_end;
end;
/
