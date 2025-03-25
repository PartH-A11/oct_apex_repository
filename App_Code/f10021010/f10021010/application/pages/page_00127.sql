prompt --application/pages/page_00127
begin
--   Manifest
--     PAGE: 00127
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
 p_id=>127
,p_tab_set=>'TS1'
,p_name=>'ePRO - Schedule Creation'
,p_step_title=>'ePRO - Schedule Creation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2465467545994890483)
,p_plug_name=>'ePRO - Schedule Creation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PATIENT_DIARY_ID, PATIENT_PROFILE_ID, SCHEDULE_TITLE,',
'(SELECT SCRNO FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID) "SCRNO",',
'TO_CHAR(SCHEDULE_DT,''DD-MON-YYYY'') "SCHEDULE_DT",',
'TO_CHAR(SCHEDULE_TM,''HH24:MI'') "SCHEDULE_TM",',
'MANCRTD_YN',
'FROM EDC_PATIENT_DIARY A',
'WHERE PATIENT_PROFILE_ID NOT IN (SELECT PATIENT_PROFILE_ID FROM EDC_PATIENT_PROFILE WHERE STATUS IN (2,4))',
'AND PATIENT_PROFILE_ID IN (SELECT PATIENT_PROFILE_ID FROM EDC_PATIENT_PROFILE WHERE USER_REGION = :P127_COUNTRY)',
'AND PATIENT_DIARY_ID IN (SELECT MAX(PATIENT_DIARY_ID) FROM EDC_PATIENT_DIARY WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID)',
'AND TO_CHAR(SCHEDULE_DT,''DD-MON-YYYY'') != :P127_CURRENT_DT1',
'--AND TO_CHAR(SCHEDULE_TM,''HH24:MI'') = :P127_CURRENT_TM',
'AND SCHEDULE_TITLE NOT IN (''Day 28'',''Early Termination'')',
'AND SCHEDULE_ID < 22',
'UNION',
'SELECT PATIENT_DIARY_ID, PATIENT_PROFILE_ID, SCHEDULE_TITLE,',
'(SELECT SCRNO FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID) "SCRNO",',
'TO_CHAR(SCHEDULE_DT,''DD-MON-YYYY'') "SCHEDULE_DT",',
'TO_CHAR(SCHEDULE_TM,''HH24:MI'') "SCHEDULE_TM",',
'MANCRTD_YN',
'FROM EDC_PATIENT_DIARY A',
'WHERE PATIENT_PROFILE_ID NOT IN (SELECT PATIENT_PROFILE_ID FROM EDC_PATIENT_PROFILE WHERE STATUS IN (2,4))',
'AND PATIENT_PROFILE_ID IN (SELECT PATIENT_PROFILE_ID FROM EDC_PATIENT_PROFILE WHERE USER_REGION = :P127_COUNTRY)',
'AND PATIENT_DIARY_ID IN (SELECT MAX(PATIENT_DIARY_ID) FROM EDC_PATIENT_DIARY WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID)',
'AND TO_CHAR(SCHEDULE_DT,''DD-MON-YYYY'') != TO_CHAR(to_date(:P127_CURRENT_DT1,''DD-MON-YYYY''),''DD-MON-YYYY'')',
'--AND TO_CHAR(SCHEDULE_DT,''DD-MON-YYYY'') != TO_CHAR(to_date(:P127_CURRENT_DT1,''DD-MON-YYYY'')-1,''DD-MON-YYYY'')',
'--AND TO_CHAR(SCHEDULE_TM,''HH24:MI'') != :P127_CURRENT_TM',
'AND SCHEDULE_TITLE NOT IN (''Day 28'',''Early Termination'')',
'AND SCHEDULE_ID >= 22',
'UNION',
'SELECT PATIENT_DIARY_ID, PATIENT_PROFILE_ID, SCHEDULE_TITLE,',
'(SELECT SCRNO FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID) "SCRNO",',
'TO_CHAR(SCHEDULE_DT,''DD-MON-YYYY'') "SCHEDULE_DT",',
'TO_CHAR(SCHEDULE_TM,''HH24:MI'') "SCHEDULE_TM",',
'MANCRTD_YN',
'FROM EDC_PATIENT_DIARY A',
'WHERE PATIENT_PROFILE_ID IN (SELECT PATIENT_PROFILE_ID FROM EDC_PATIENT_PROFILE WHERE USER_REGION = :P127_COUNTRY)',
'AND MANCRTD_YN = ''Yes''',
'ORDER BY 4 DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P127_CURRENT_DT,P127_CURRENT_TM,P127_COUNTRY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2465467772414890485)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'100000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PANKTI.VERMA'
,p_internal_uid=>272942552586247414
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2465467892420890486)
,p_db_column_name=>'SCHEDULE_DT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Schedule Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2465467954827890487)
,p_db_column_name=>'SCHEDULE_TM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Schedule Time'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2465468042122890488)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2465468210895890489)
,p_db_column_name=>'SCRNO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Screening<br/>Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2465468282267890490)
,p_db_column_name=>'SCHEDULE_TITLE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created Schedule'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2465468387945890491)
,p_db_column_name=>'PATIENT_DIARY_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Patient Diary Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2465469252050890500)
,p_db_column_name=>'MANCRTD_YN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Updated Manually'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2465578095463517726)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2730529'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'SCRNO:SCHEDULE_TITLE:SCHEDULE_DT:SCHEDULE_TM:MANCRTD_YN:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2465945745316956176)
,p_report_id=>wwv_flow_imp.id(2465578095463517726)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'MANCRTD_YN'
,p_operator=>'='
,p_expr=>'Yes'
,p_condition_sql=>' (case when ("MANCRTD_YN" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Yes''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#99FF99'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11211580063445076187)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11211607749307181149)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY_1'
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2465468667670890494)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2465467545994890483)
,p_button_name=>'GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2465466750777890475)
,p_name=>'P127_CURRENT_DT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2465467545994890483)
,p_prompt=>'<b>Current Region Date</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2465466881790890476)
,p_name=>'P127_COUNTRY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2465467545994890483)
,p_prompt=>'<b>Country</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:USA;US,Brazil;BZ,Mexico;MX'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2465467203940890479)
,p_name=>'P127_CURRENT_TM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2465467545994890483)
,p_prompt=>'<b>Current Calculation Time</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2465468812770890495)
,p_name=>'P127_CURRENT_TM1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2465467545994890483)
,p_prompt=>'<b>Current Region Time</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2465469324679890501)
,p_name=>'P127_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2465467545994890483)
,p_pre_element_text=>'<b>Note : Time mentioned is in 24 Hour Format</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2465469457456890502)
,p_name=>'P127_CURRENT_DT1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2465467545994890483)
,p_prompt=>'<b>Current Calculation Date</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2465466941183890477)
,p_name=>'Set Current Date'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_COUNTRY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2465467021825890478)
,p_event_id=>wwv_flow_imp.id(2465466941183890477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_CURRENT_DT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_dt_tz varchar2(100);',
'begin',
'',
'    IF :P127_COUNTRY = ''US'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''America/New_York''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'    ELSIF :P127_COUNTRY = ''BZ'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''Brazil/East''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'    ELSIF :P127_COUNTRY = ''MX'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''America/Mexico_City''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'    END IF;',
'    ',
'    return V_DT_TZ;',
'',
'end;'))
,p_attribute_07=>'P127_COUNTRY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2465469574353890503)
,p_name=>'Set Current Date_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_COUNTRY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2465469645273890504)
,p_event_id=>wwv_flow_imp.id(2465469574353890503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_CURRENT_DT1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_dt_tz varchar2(100);',
'    v_dt_tz1 varchar2(100);',
'begin',
'',
'    IF :P127_COUNTRY = ''US'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''America/New_York''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    ELSIF :P127_COUNTRY = ''BZ'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''Brazil/East''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    ELSIF :P127_COUNTRY = ''MX'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''America/Mexico_City''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    END IF;',
'',
'    IF V_DT_TZ >= ''06:00'' AND V_DT_TZ < ''18:00'' THEN',
'        --V_DT_TZ1:= ''08:00'';',
'        IF :P127_COUNTRY = ''US'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''America/New_York''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'        ELSIF :P127_COUNTRY = ''BZ'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''Brazil/East''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'        ELSIF :P127_COUNTRY = ''MX'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''America/Mexico_City''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'        END IF;',
'    ELSIF V_DT_TZ >= ''18:00'' AND V_DT_TZ < ''24:00'' THEN',
'        --V_DT_TZ1:= ''20:00'';',
'        IF :P127_COUNTRY = ''US'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''America/New_York''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'        ELSIF :P127_COUNTRY = ''BZ'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''Brazil/East''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'        ELSIF :P127_COUNTRY = ''MX'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''America/Mexico_City''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MON-YYYY'');',
'        END IF;',
'    ELSIF V_DT_TZ >= ''00:00'' AND V_DT_TZ < ''06:00'' THEN',
'        --V_DT_TZ1:= ''20:00'';',
'        IF :P127_COUNTRY = ''US'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''America/New_York''),''dd-mon-yyyy hh:mi:ss PM'')-1,''DD-MON-YYYY'');',
'        ELSIF :P127_COUNTRY = ''BZ'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''Brazil/East''),''dd-mon-yyyy hh:mi:ss PM'')-1,''DD-MON-YYYY'');',
'        ELSIF :P127_COUNTRY = ''MX'' THEN',
'            V_DT_TZ := to_char(to_date(get_current_local_time (''America/Mexico_City''),''dd-mon-yyyy hh:mi:ss PM'')-1,''DD-MON-YYYY'');',
'        END IF;',
'    END IF;',
'    ',
'    return V_DT_TZ;',
'',
'end;'))
,p_attribute_07=>'P127_COUNTRY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2465467256976890480)
,p_name=>'Set Current Time'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_COUNTRY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2465467361478890481)
,p_event_id=>wwv_flow_imp.id(2465467256976890480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_CURRENT_TM'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_dt_tz varchar2(100);',
'    v_dt_tz1 varchar2(100);',
'begin',
'',
'    IF :P127_COUNTRY = ''US'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''America/New_York''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    ELSIF :P127_COUNTRY = ''BZ'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''Brazil/East''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    ELSIF :P127_COUNTRY = ''MX'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''America/Mexico_City''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    END IF;',
'    ',
'    IF V_DT_TZ >= ''06:00'' AND V_DT_TZ < ''18:00'' THEN',
'        V_DT_TZ1:= ''08:00'';',
'    ELSIF V_DT_TZ >= ''18:00'' AND V_DT_TZ < ''24:00'' THEN',
'        V_DT_TZ1:= ''20:00'';',
'    ELSIF V_DT_TZ >= ''00:00'' AND V_DT_TZ < ''06:00'' THEN',
'        V_DT_TZ1:= ''20:00'';',
'    END IF;',
'    ',
'    return V_DT_TZ1;',
'',
'end;'))
,p_attribute_07=>'P127_COUNTRY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2465468899043890496)
,p_name=>'Set Current Time_1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_COUNTRY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2465468943385890497)
,p_event_id=>wwv_flow_imp.id(2465468899043890496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_CURRENT_TM1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_dt_tz varchar2(100);',
'    v_dt_tz1 varchar2(100);',
'begin',
'',
'    IF :P127_COUNTRY = ''US'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''America/New_York''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    ELSIF :P127_COUNTRY = ''BZ'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''Brazil/East''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    ELSIF :P127_COUNTRY = ''MX'' THEN',
'        V_DT_TZ := to_char(to_date(get_current_local_time (''America/Mexico_City''),''dd-mon-yyyy hh:mi:ss PM''),''HH24:MI'');',
'    END IF;',
'    ',
'    return V_DT_TZ;',
'',
'end;'))
,p_attribute_07=>'P127_COUNTRY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2465469074971890498)
,p_name=>'Hide Calculation Time'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2465469201441890499)
,p_event_id=>wwv_flow_imp.id(2465469074971890498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_CURRENT_TM,P127_CURRENT_DT1'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
