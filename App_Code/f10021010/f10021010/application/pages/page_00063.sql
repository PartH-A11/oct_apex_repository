prompt --application/pages/page_00063
begin
--   Manifest
--     PAGE: 00063
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
 p_id=>63
,p_tab_set=>'TS1'
,p_name=>'IP Accountability Log - Master'
,p_step_title=>'IP Accountability Log - Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>'$(''section[class="uRegion uNoHeading  clearfix"]'').css({"margin-right":"5px"})'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(11045207488966824379)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9475880876599214802)
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
 p_id=>wwv_flow_imp.id(9475881281370214802)
,p_plug_name=>'IP Accountability Log - Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180572024407887)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(A.SHIP_REC_DT,''DD-MON-YYYY'') SHIP_DT, C.BOTTLE_NO, C.BATCH, TO_CHAR(NVL(C.EXP_DATE_REAL, C.EXP_DATE_LABEL),''MON-YYYY'') "Expiry Date",',
'       DECODE(C.IP_STATUS,8,''Yes'',''No'') "Kit Retention?", '''' SIGN_N_DATE, C.PATIENT_PROFILE_ID RANDOMNO, '''' "Kit Number Allocated",',
'       '''' "Date of kit returend", '''' "Recorded by Sign and date", '''' "Verified by Sign and date", H.STUDY_NUMBER, A.STUDY_SITE_ID,',
'       (SELECT SCRNO FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID) SCRNO,',
'       (SELECT TO_CHAR(ACTUAL_DATE,''DD-MON-YYYY'') FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = C.PATIENT_VISIT_ID) "Date of kit Dispensed"',
'',
'  FROM EDC_IP_SHIPMENT A',
'  JOIN EDC_IP_SHIPMENT_DTLS B',
'    ON A.SHIP_ID = B.SHIP_ID',
'  JOIN EDC_IP_DETAIL C',
'    ON B.IP_ID = C.IP_ID',
'  JOIN EDC_STUDY_SITES G',
'    ON A.STUDY_SITE_ID = G.STUDY_SITE_ID',
'  JOIN EDC_STUDY H',
'    ON G.STUDY_ID = H.STUDY_ID',
'   AND G.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' ORDER BY A.SHIP_ID, B.IP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9475881605500214803)
,p_name=>'Accountability Log - Placebo Run-In'
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
,p_internal_uid=>76247415736619896
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475882123439214804)
,p_db_column_name=>'BOTTLE_NO'
,p_display_order=>20
,p_column_identifier=>'O'
,p_column_label=>'Received<br>Kit<br>Numbers'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475882505987214804)
,p_db_column_name=>'BATCH'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>'BT Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475883344343214805)
,p_db_column_name=>'Kit Retention?'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Kit Retention?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475883779875214805)
,p_db_column_name=>'SIGN_N_DATE'
,p_display_order=>60
,p_column_identifier=>'S'
,p_column_label=>'Recorded<br>by<br>Sign & date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475884558618214806)
,p_db_column_name=>'Kit Number Allocated'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>'Kit<br>Number<br>Allocated'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475884913037214806)
,p_db_column_name=>'Date of kit Dispensed'
,p_display_order=>90
,p_column_identifier=>'V'
,p_column_label=>'Date of kit<br>Dispensed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475885323403214806)
,p_db_column_name=>'Date of kit returend'
,p_display_order=>100
,p_column_identifier=>'W'
,p_column_label=>'Date of kit<br>returned'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475885774672214807)
,p_db_column_name=>'Recorded by Sign and date'
,p_display_order=>110
,p_column_identifier=>'X'
,p_column_label=>'Recorded by<br>Sign & date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475886188952214808)
,p_db_column_name=>'Verified by Sign and date'
,p_display_order=>120
,p_column_identifier=>'Y'
,p_column_label=>'Verified by<br>Sign & date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9476880096535133014)
,p_db_column_name=>'STUDY_NUMBER'
,p_display_order=>130
,p_column_identifier=>'Z'
,p_column_label=>'Project No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9476936546426012016)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>140
,p_column_identifier=>'AC'
,p_column_label=>'Site ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9477587286816962408)
,p_db_column_name=>'Expiry Date'
,p_display_order=>150
,p_column_identifier=>'AD'
,p_column_label=>'Expiry date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9477587363253962409)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>160
,p_column_identifier=>'AE'
,p_column_label=>'Randomization<br>No.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11063307672399135680)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9477587470707962410)
,p_db_column_name=>'SHIP_DT'
,p_display_order=>170
,p_column_identifier=>'AF'
,p_column_label=>'Date of<BR>Shipment<br>Received'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9478402201982015711)
,p_db_column_name=>'SCRNO'
,p_display_order=>190
,p_column_identifier=>'AH'
,p_column_label=>'Screening No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9475886545230214808)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'762524'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'SHIP_DT:STUDY_NUMBER:BOTTLE_NO:BATCH:Expiry Date:Kit Retention?:SCRNO:RANDOMNO:Date of kit Dispensed:Verified by Sign and date:STUDY_SITE_ID:'
,p_break_on=>'STUDY_NUMBER:STUDY_SITE_ID:0:0:0:0'
,p_break_enabled_on=>'STUDY_NUMBER:STUDY_SITE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9475887037060214809)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9475887483247214809)
,p_plug_name=>'Accountability Log'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 235px;"'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_list_id=>wwv_flow_imp.id(9475859291380193361)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9399967500033068827)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9475881281370214802)
,p_button_name=>'PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9399967244299068824)
,p_name=>'P63_EDC_ROLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9475881281370214802)
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9399967357462068825)
,p_name=>'P63_EDC_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9475881281370214802)
,p_item_default=>':APP_EDC_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9399967411306068826)
,p_name=>'P63_EDC_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9475881281370214802)
,p_item_default=>':APP_EDC_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9399967690538068828)
,p_name=>'Download PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9399967500033068827)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9399967701130068829)
,p_event_id=>wwv_flow_imp.id(9399967690538068828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_IP_AL_M&_repFormat=pdf&_dataSource=default&_outFilename=IP_Accountability_Log-Master.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P63_EDC_ROLE_ID")+''&P_E'
||'DC_USER=''+ $v("P63_EDC_USER") +''&P_EDC_USER_ID=''+ $v("P63_EDC_USER_ID")+'''',''_blank'');'
);
wwv_flow_imp.component_end;
end;
/
