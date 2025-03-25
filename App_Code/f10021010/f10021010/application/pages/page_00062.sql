prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_tab_set=>'TS1'
,p_name=>'Accountability Log - Rescue Medication'
,p_step_title=>'Accountability Log - Rescue Medication'
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
 p_id=>wwv_flow_imp.id(10576818467675711423)
,p_plug_name=>'Accountability Log - Rescue Medication'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131340165911980)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.PATIENT_PROFILE_ID, A.SCRNO, A.PTINTL, B.VISIT_TITLE, E.STUDY_NUMBER, A.STUDY_SITE_ID, B.PARAM_ID, ',
'       CASE WHEN B.PARAM_ID IN (3,4) THEN B.ACTUAL_DATE',
'       ELSE NULL END DATE_OF_DISPANCE,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN NULL',
'       ELSE C.DISPENSED_RESCUE END TABLET_DISPANCE,',
'',
'       '''' SIGN_DISPANCER,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN B.ACTUAL_DATE',
'       ELSE NULL END DATE_OF_RETURN,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN C.CONSUMED_RESCUE',
'       ELSE NULL END CONSUMED_RESCUE,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN C.RETURNED_RESCUE',
'       ELSE NULL END RETURNED_RESCUE,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN C.LOST_RESCUE',
'       ELSE NULL END LOST_RESCUE,',
'',
'       '''' RECORDED_BY',
'',
'  FROM EDC_PATIENT_PROFILE A',
'  JOIN EDC_PATIENT_VISIT B',
'    ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'  JOIN IWRS_CRF_DM C',
'    ON B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'  JOIN EDC_STUDY_SITES D',
'    ON A.STUDY_SITE_ID = D.STUDY_SITE_ID',
'  JOIN EDC_STUDY E',
'    ON D.STUDY_ID = E.STUDY_ID',
'   AND B.PARAM_ID IN (3,4,5)',
'   AND D.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(D.STUDY_SITE_ID) <> 0',
' ORDER BY A.PATIENT_PROFILE_ID, B.PARAM_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.PATIENT_PROFILE_ID, A.SCRNO, A.PTINTL, G.EXP_DATE_REAL EXPIRY_DATE, G.BATCH BATCH_NO, B.VISIT_TITLE, E.STUDY_NUMBER, A.STUDY_SITE_ID,',
'       CASE WHEN B.PARAM_ID IN (3,4) THEN B.ACTUAL_DATE',
'       ELSE NULL END DATE_OF_DISPANCE,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN NULL',
'       ELSE C.DISPENSED_RESCUE END TABLET_DISPANCE,',
'',
'       '''' SIGN_DISPANCER,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN B.ACTUAL_DATE',
'       ELSE NULL END DATE_OF_RETURN,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN C.CONSUMED_RESCUE',
'       ELSE NULL END CONSUMED_RESCUE,',
'',
'       CASE B.PARAM_ID WHEN 5 THEN C.RETURNED_RESCUE',
'       ELSE NULL END RETURNED_RESCUE,',
'',
'       '''' RECORDED_BY',
'  FROM EDC_PATIENT_PROFILE A',
'  JOIN EDC_PATIENT_VISIT B',
'    ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'  JOIN IWRS_CRF_DM C',
'    ON B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'  JOIN EDC_STUDY_SITES D',
'    ON A.STUDY_SITE_ID = D.STUDY_SITE_ID',
'  JOIN EDC_STUDY E',
'    ON D.STUDY_ID = E.STUDY_ID',
'  JOIN IWRS_CRF_DM_IP F',
'    ON B.PATIENT_VISIT_ID = F.PATIENT_VISIT_ID',
'  JOIN EDC_IP_DETAIL G',
'    ON F.IP_ID = G.IP_ID',
'   AND B.PARAM_ID IN (3,4,5)',
' ORDER BY A.PATIENT_PROFILE_ID, B.PARAM_ID'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10576818951618711424)
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
,p_internal_uid=>76233993713612424
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576819035625711425)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576819435054711425)
,p_db_column_name=>'SCRNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient<br>Screening<br>No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576819794761711426)
,p_db_column_name=>'PTINTL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Patient<br>Initials'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576820963782711428)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>33
,p_column_identifier=>'P'
,p_column_label=>'Visit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576821386467711428)
,p_db_column_name=>'DATE_OF_DISPANCE'
,p_display_order=>43
,p_column_identifier=>'Q'
,p_column_label=>'Date of<br>Dispensing'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576821854913711429)
,p_db_column_name=>'TABLET_DISPANCE'
,p_display_order=>53
,p_column_identifier=>'R'
,p_column_label=>'No. of<br>Tablets<br>Dispensed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576822216253711430)
,p_db_column_name=>'SIGN_DISPANCER'
,p_display_order=>63
,p_column_identifier=>'S'
,p_column_label=>'Signature of<br>Dispenser'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576822645570711430)
,p_db_column_name=>'DATE_OF_RETURN'
,p_display_order=>73
,p_column_identifier=>'T'
,p_column_label=>'Date of<br>Returned'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576823012612711431)
,p_db_column_name=>'CONSUMED_RESCUE'
,p_display_order=>83
,p_column_identifier=>'U'
,p_column_label=>'No. of Tablets<br>Consumed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576823424706711431)
,p_db_column_name=>'RETURNED_RESCUE'
,p_display_order=>93
,p_column_identifier=>'V'
,p_column_label=>'No. of Tablets<br>Returned'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576823795728711432)
,p_db_column_name=>'RECORDED_BY'
,p_display_order=>103
,p_column_identifier=>'W'
,p_column_label=>'Recorded by<br>Sign'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577830274235637101)
,p_db_column_name=>'STUDY_NUMBER'
,p_display_order=>113
,p_column_identifier=>'X'
,p_column_label=>'Project No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577887192974516108)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>133
,p_column_identifier=>'AB'
,p_column_label=>'Site ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577888386298516120)
,p_db_column_name=>'PARAM_ID'
,p_display_order=>143
,p_column_identifier=>'AC'
,p_column_label=>'Param id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10579352774683519802)
,p_db_column_name=>'LOST_RESCUE'
,p_display_order=>153
,p_column_identifier=>'AE'
,p_column_label=>'No. of<br>Tablets Lost/<br>Misplaced'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10576824161166711433)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'762393'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SCRNO:PTINTL:VISIT_TITLE:DATE_OF_DISPANCE:TABLET_DISPANCE:DATE_OF_RETURN:CONSUMED_RESCUE:RETURNED_RESCUE:LOST_RESCUE:STUDY_NUMBER:STUDY_SITE_ID:'
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
,p_break_on=>'STUDY_NUMBER:STUDY_SITE_ID:0:0:0:0'
,p_break_enabled_on=>'STUDY_NUMBER:STUDY_SITE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576824680033711434)
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
 p_id=>wwv_flow_imp.id(10576825112099711435)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576825500120711436)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10500917450669572911)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10576818467675711423)
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
 p_id=>wwv_flow_imp.id(10500917475413572912)
,p_name=>'P62_EDC_ROLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10576818467675711423)
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500917615075572913)
,p_name=>'P62_EDC_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10576818467675711423)
,p_item_default=>':APP_EDC_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500917716566572914)
,p_name=>'P62_EDC_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10576818467675711423)
,p_item_default=>':APP_EDC_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10500917844620572915)
,p_name=>'Download PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10500917450669572911)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10500917899099572916)
,p_event_id=>wwv_flow_imp.id(10500917844620572915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_AL_RM&_repFormat=pdf&_dataSource=default&_outFilename=Accountability_Log-Rescue_Medication.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P62_EDC_ROLE_ID")'
||'+''&P_EDC_USER=''+ $v("P62_EDC_USER") +''&P_EDC_USER_ID=''+ $v("P62_EDC_USER_ID")+'''',''_blank'');'
);
wwv_flow_imp.component_end;
end;
/
