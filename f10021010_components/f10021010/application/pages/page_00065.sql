prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_tab_set=>'TS1'
,p_name=>'IP Accountability Log - Subject Specific'
,p_step_title=>'IP Accountability Log - Subject Specific'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>'$(''section[class="uRegion uNoHeading  clearfix"]'').css({"margin-right":"5px"})'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(12146158257108328472)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576844846942730118)
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
 p_id=>wwv_flow_imp.id(10576845251394730119)
,p_plug_name=>'IP Accountability Log_Subject Specific'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131340165911980)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  PV AS (SELECT A.RANDOMNO, A.PTINTL, B.*, D.STUDY_NUMBER, A.STUDY_SITE_ID',
'           FROM EDC_PATIENT_PROFILE A',
'           JOIN EDC_PATIENT_VISIT B',
'             ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'           JOIN EDC_STUDY_SITES C',
'             ON A.STUDY_SITE_ID = C.STUDY_SITE_ID',
'           JOIN EDC_STUDY D',
'             ON C.STUDY_ID = D.STUDY_ID',
'            AND C.STUDY_ID = :APP_EDC_STUDY_ID',
'            AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(C.STUDY_SITE_ID) <> 0',
'            AND B.PARAM_ID IN (3,4,5)),',
'',
'  P1 AS (SELECT A.PATIENT_PROFILE_ID, A.RANDOMNO, A.PTINTL, A.ACTUAL_DATE, A.VISIT_TITLE, B.TUBES_DISPENSED, A.PARAM_ID, A.STUDY_NUMBER, A.STUDY_SITE_ID,',
'                D.BOTTLE_NO KIT_NO, CASE WHEN D.BATCH IS NULL AND D.LOT_NUMBER IS NULL THEN NULL ELSE D.BATCH||''/''||D.LOT_NUMBER END BATCH_LOT',
'           FROM PV A',
'           JOIN IWRS_CRF_DM B',
'             ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'           JOIN (SELECT B.PATIENT_PROFILE_ID, A.*',
'                   FROM IWRS_CRF_DM_IP A',
'                   JOIN EDC_PATIENT_VISIT B',
'                     ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'                    AND B.PARAM_ID = 3) C',
'             ON A.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID',
'           JOIN EDC_IP_DETAIL D',
'             ON C.IP_ID = D.IP_ID),',
'',
'  P2 AS (SELECT A.PATIENT_PROFILE_ID, A.RANDOMNO, A.PTINTL, A.ACTUAL_DATE TUBE_RET_DATE, A.VISIT_TITLE, B.TUBES_USED, B.TUBES_LOST, B.TUBES_UNUSED, '''' COLLECT_SIGN_DATE,',
'                A.PARAM_ID',
'           FROM PV A',
'           JOIN IWRS_CRF_DM B',
'             ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID),',
'',
'  PF AS (SELECT A.PATIENT_PROFILE_ID, A.RANDOMNO, A.PTINTL, A.ACTUAL_DATE, A.VISIT_TITLE, A.TUBES_DISPENSED, B.TUBES_USED, B.TUBES_LOST, B.TUBES_UNUSED, A.PARAM_ID,',
'                A.STUDY_NUMBER, A.STUDY_SITE_ID, A.KIT_NO, A.BATCH_LOT, B.TUBE_RET_DATE',
'           FROM (SELECT * FROM P1 WHERE PARAM_ID = 3) A',
'           LEFT OUTER JOIN (SELECT * FROM P2 WHERE PARAM_ID = 4) B',
'             ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'          UNION',
'         SELECT A.PATIENT_PROFILE_ID, A.RANDOMNO, A.PTINTL, A.ACTUAL_DATE, A.VISIT_TITLE, A.TUBES_DISPENSED, B.TUBES_USED, B.TUBES_LOST, B.TUBES_UNUSED, A.PARAM_ID,',
'                A.STUDY_NUMBER, A.STUDY_SITE_ID, A.KIT_NO, A.BATCH_LOT, B.TUBE_RET_DATE',
'           FROM (SELECT * FROM P1 WHERE PARAM_ID = 4) A',
'           LEFT OUTER JOIN (SELECT * FROM P2 WHERE PARAM_ID = 5) B',
'             ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID/*',
'          UNION',
'         SELECT A.PATIENT_PROFILE_ID, A.RANDOMNO, A.PTINTL, A.ACTUAL_DATE, A.VISIT_TITLE, A.TUBES_DISPENSED, B.TUBES_USED, B.TUBES_LOST, B.TUBES_UNUSED, A.PARAM_ID,',
'                A.STUDY_NUMBER, A.STUDY_SITE_ID, A.KIT_NO, A.BATCH_LOT, B.TUBE_RET_DATE',
'           FROM (SELECT * FROM P1 WHERE PARAM_ID = 5) A',
'           JOIN (SELECT * FROM P2 WHERE PARAM_ID = 5) B',
'             ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID*/)',
'',
'  SELECT PATIENT_PROFILE_ID, RANDOMNO, PTINTL, ACTUAL_DATE, VISIT_TITLE, TUBES_DISPENSED, '''' SIGN_DATE, TUBES_USED, TUBES_LOST, TUBES_UNUSED, '''' COLLECT_SIGN_DATE, STUDY_NUMBER,',
'         STUDY_SITE_ID, KIT_NO, BATCH_LOT, TUBE_RET_DATE, PARAM_ID',
'    FROM PF',
'   ORDER BY PATIENT_PROFILE_ID, PARAM_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10576845616182730120)
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
,p_internal_uid=>76260658277631120
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576849278642730123)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>70
,p_column_identifier=>'T'
,p_column_label=>'Patient<BR>Randomization ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576849736367730123)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Patient profile id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576845685609730120)
,p_db_column_name=>'PTINTL'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Patient<br>Initial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576846100510730121)
,p_db_column_name=>'ACTUAL_DATE'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'Date of<br>Dispensing'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576846549804730121)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>110
,p_column_identifier=>'AC'
,p_column_label=>'Visit ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576846910723730121)
,p_db_column_name=>'TUBES_DISPENSED'
,p_display_order=>120
,p_column_identifier=>'AD'
,p_column_label=>'IMP Tubes<br>Dispensed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576847271670730122)
,p_db_column_name=>'SIGN_DATE'
,p_display_order=>130
,p_column_identifier=>'AE'
,p_column_label=>'Dispensed by<br>(sign/date)'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576847732363730122)
,p_db_column_name=>'TUBES_USED'
,p_display_order=>140
,p_column_identifier=>'AF'
,p_column_label=>'Used Tube<br>No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576848061012730122)
,p_db_column_name=>'TUBES_LOST'
,p_display_order=>150
,p_column_identifier=>'AG'
,p_column_label=>'Misplaced/Lost Tube<br>No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576848557081730123)
,p_db_column_name=>'TUBES_UNUSED'
,p_display_order=>160
,p_column_identifier=>'AH'
,p_column_label=>'Unused Tube<br>No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576848951943730123)
,p_db_column_name=>'COLLECT_SIGN_DATE'
,p_display_order=>170
,p_column_identifier=>'AI'
,p_column_label=>'Collected and<br>recorded by<br>(sign/date)'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577831220774637110)
,p_db_column_name=>'STUDY_NUMBER'
,p_display_order=>180
,p_column_identifier=>'AJ'
,p_column_label=>'Project No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577886799665516104)
,p_db_column_name=>'BATCH_LOT'
,p_display_order=>210
,p_column_identifier=>'AM'
,p_column_label=>'Batch/Lot No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577886899151516105)
,p_db_column_name=>'KIT_NO'
,p_display_order=>220
,p_column_identifier=>'AN'
,p_column_label=>'IMP Kit No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577887056828516106)
,p_db_column_name=>'TUBE_RET_DATE'
,p_display_order=>230
,p_column_identifier=>'AO'
,p_column_label=>'Date of IMP<br>Tubes<br>Returned'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577887110164516107)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>240
,p_column_identifier=>'AP'
,p_column_label=>'Site Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10500920013092572937)
,p_db_column_name=>'PARAM_ID'
,p_display_order=>250
,p_column_identifier=>'AQ'
,p_column_label=>'Param id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10576850123588730124)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'762652'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RANDOMNO:PTINTL:KIT_NO:ACTUAL_DATE:VISIT_TITLE:TUBES_DISPENSED:TUBE_RET_DATE:TUBES_USED:TUBES_LOST:TUBES_UNUSED:STUDY_NUMBER:BATCH_LOT:STUDY_SITE_ID:'
,p_sort_column_1=>'PATIENT_PROFILE_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PARAM_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STUDY_NUMBER:STUDY_SITE_ID:BATCH_LOT:0:0:0'
,p_break_enabled_on=>'STUDY_NUMBER:STUDY_SITE_ID:BATCH_LOT:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576850560433730125)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 235px;"'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576851002311730125)
,p_plug_name=>'Accountability Log'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 235px;"'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_list_id=>wwv_flow_imp.id(10576810059521697454)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10500918917085572926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10576845251394730119)
,p_button_name=>'PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500918624010572923)
,p_name=>'P65_EDC_ROLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10576845251394730119)
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500918714320572924)
,p_name=>'P65_EDC_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10576845251394730119)
,p_item_default=>':APP_EDC_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500918830722572925)
,p_name=>'P65_EDC_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10576845251394730119)
,p_item_default=>':APP_EDC_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10500919062960572927)
,p_name=>'Download PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10500918917085572926)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10500919087202572928)
,p_event_id=>wwv_flow_imp.id(10500919062960572927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_IP_AL_SS&_repFormat=pdf&_dataSource=default&_outFilename=IP_Accountability_Log-Subject_Specific.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P65_EDC_ROLE'
||'_ID")+''&P_EDC_USER=''+ $v("P65_EDC_USER") +''&P_EDC_USER_ID=''+ $v("P65_EDC_USER_ID")+'''',''_blank'');'
);
wwv_flow_imp.component_end;
end;
/
