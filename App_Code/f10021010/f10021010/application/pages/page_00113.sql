prompt --application/pages/page_00113
begin
--   Manifest
--     PAGE: 00113
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
 p_id=>113
,p_tab_set=>'TS1'
,p_name=>'ePRO - Diary Type and Section Status Report'
,p_step_title=>'ePRO - Diary Type and Section Status Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12011216452808913207)
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
 p_id=>wwv_flow_imp.id(12011217020750913209)
,p_plug_name=>'ePRO - Diary Type and Section Status Report'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  a.patient_profile_id,',
'  b.patient_diary_id,',
'  b.schedule_id,',
'  a.study_site_id,',
'  a.study_site_id "study_site_id_nodisp",',
'  a.scrno,',
'  b.schedule_title,',
'  p.disp_schedule_name,',
'  b.diary_type,',
'  b.section_status,',
'  a.randomno,',
'  to_char(a.randomization_date) "RANDOM_DT"',
'FROM edc_patient_profile a,',
'     edc_patient_diary b,',
'     edc_patient_schedule_params p',
'WHERE a.patient_profile_id = b.patient_profile_id',
'and p.schedule_name = b.schedule_title',
'and a.study_site_id = DECODE(:P113_SITES,999999,a.study_site_id,:P113_SITES)',
'and b.section_status != 12',
'--and b.section_status =:P113_CRF_STATUS',
'ORDER BY 1,2;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'APP_EDC_STUDY_ID,APP_USER_NAME,APP_EDC_USER_TYPE,APP_EDC_USER_ID,APP_EDC_ROLE_ID,APP_EDC_ROLE_LEVEL,P113_SITES'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12011217113940913209)
,p_name=>'Subject Visits'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'100000000'
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
,p_internal_uid=>8464771606919589868
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790994080095108617)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790994444668108624)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790994903836108624)
,p_db_column_name=>'SCRNO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Screening<br/>Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790996854878108628)
,p_db_column_name=>'SCHEDULE_ID'
,p_display_order=>85
,p_column_identifier=>'AU'
,p_column_label=>'Schedule Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790997218715108629)
,p_db_column_name=>'SCHEDULE_TITLE'
,p_display_order=>95
,p_column_identifier=>'AV'
,p_column_label=>'Schedule Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790997614809108629)
,p_db_column_name=>'PATIENT_DIARY_ID'
,p_display_order=>105
,p_column_identifier=>'AW'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:RP:APP_EDC_STUDY_SITE_ID,APP_PATIENT_PROFILE_ID,APP_EDC_SCHEDULE_NAME:#study_site_id_nodisp#,#PATIENT_PROFILE_ID#,#SCHEDULE_TITLE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790943217947919986)
,p_db_column_name=>'DIARY_TYPE'
,p_display_order=>115
,p_column_identifier=>'AY'
,p_column_label=>'Diary Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790943335885919987)
,p_db_column_name=>'SECTION_STATUS'
,p_display_order=>125
,p_column_identifier=>'AZ'
,p_column_label=>'Section Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3791053516610560863)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3799288074554019344)
,p_db_column_name=>'DISP_SCHEDULE_NAME'
,p_display_order=>135
,p_column_identifier=>'BA'
,p_column_label=>'Schedule Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3569476388539287965)
,p_db_column_name=>'study_site_id_nodisp'
,p_display_order=>145
,p_column_identifier=>'BB'
,p_column_label=>'Study Site Id Nodisp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3571697219508028065)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>155
,p_column_identifier=>'BC'
,p_column_label=>'Randomization Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3571975638517280466)
,p_db_column_name=>'RANDOM_DT'
,p_display_order=>165
,p_column_identifier=>'BD'
,p_column_label=>'Randomization Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12011223930906914142)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2445529'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'PATIENT_DIARY_ID:STUDY_SITE_ID:SCRNO:DISP_SCHEDULE_NAME:DIARY_TYPE:SECTION_STATUS::study_site_id_nodisp:RANDOMNO:RANDOM_DT'
,p_sort_column_1=>'PATIENT_PROFILE_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PATIENT_DIARY_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STUDY_SITE_ID:SCRNO:RANDOMNO:RANDOM_DT:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:SCRNO:RANDOMNO:RANDOM_DT:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12011244138671018169)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
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
 p_id=>wwv_flow_imp.id(3569510292050504908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12011217020750913209)
,p_button_name=>'GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3570107910971740166)
,p_name=>'P113_CRF_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12011217020750913209)
,p_item_default=>'2'
,p_prompt=>'<b>Status</b>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISPLAY_VAL D, RETURN_VAL R FROM EDC_CRF_STATUS WHERE RETURN_VAL IN(2,3,4,4.5,6,9)',
'order by return_val'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'REDIRECT_SET_VALUE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3790998859242108641)
,p_name=>'P113_SITES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12011217020750913209)
,p_prompt=>'Sites'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r from (SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R, ''1'' s',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'union',
'select ''All Sites'' D, 999999 r, ''0'' s',
'from dual',
'order by s, d)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790999744139108659)
,p_name=>'Download PDF_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10506106941451303413)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791000216151108665)
,p_event_id=>wwv_flow_imp.id(3790999744139108659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_SV&_repFormat=csv&_dataSource=default&_outFilename=Subject_Visits.csv&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P113_EDC_ROLE_ID_1")+''&P_EDC_USER=''+ $v("P'
||'113_EDC_USER_1") +''&P_EDC_USER_ID=''+ $v("P113_EDC_USER_ID_1")+'''',''_blank'');'
);
wwv_flow_imp.component_end;
end;
/
