prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_tab_set=>'TS1'
,p_name=>'Accountability Log - Placebo Run-In'
,p_step_title=>'Accountability Log - Placebo Run-In'
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
 p_id=>wwv_flow_imp.id(10576801455640697438)
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
 p_id=>wwv_flow_imp.id(10576801770341697438)
,p_plug_name=>'Accountability Log - Placebo Run-In'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131340165911980)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  KT AS (SELECT A.BATCH, CASE WHEN A.IP_STATUS IN (4) THEN A.BOTTLE_NO ELSE NULL END KIT_NO, CASE A.IP_STATUS WHEN 8 THEN A.BOTTLE_NO ELSE NULL END BOTTLE_NO, B.SHIPPED_STATUS,',
'                B.IP_ID, B.DTLS_ID, A.IP_STATUS, C.SHIP_REC_DT, C.STUDY_SITE_ID, E.STUDY_NUMBER, A.PATIENT_PROFILE_ID, A.PATIENT_VISIT_ID, A.STUDY_ARM_ID',
'           FROM EDC_IP_DETAIL A',
'           JOIN EDC_IP_SHIPMENT_DTLS B',
'             ON A.IP_ID = B.IP_ID',
'           JOIN EDC_IP_SHIPMENT C',
'             ON B.SHIP_ID = C.SHIP_ID',
'           JOIN EDC_STUDY_SITES D',
'             ON C.STUDY_SITE_ID = D.STUDY_SITE_ID',
'           JOIN EDC_STUDY E',
'             ON D.STUDY_ID = E.STUDY_ID',
'            AND C.SHIP_TYPE = 1',
'            AND A.IP_STATUS IN (4,8)',
'            -- AND A.STUDY_ARM_ID IN (3,4)',
'            AND D.STUDY_ID = :APP_EDC_STUDY_ID',
'            AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(D.STUDY_SITE_ID) <> 0',
'        ),',
'',
'  PV AS (SELECT A.PATIENT_PROFILE_ID, A.SCRNO, A.PTINTL, C.BATCH, B.ACTUAL_DATE, C.BOTTLE_NO KIT_NO, C.STUDY_SITE_ID, C.STUDY_NUMBER, C.SHIP_REC_DT,',
'                C.BOTTLE_NO, C.SHIPPED_STATUS, C.IP_ID, C.DTLS_ID, C.IP_STATUS, PARAM_ID, B.PATIENT_VISIT_ID',
'           FROM EDC_PATIENT_PROFILE A',
'           JOIN EDC_PATIENT_VISIT B',
'             ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'           JOIN KT C',
'--             ON B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'             ON B.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID),',
'',
'  KT2 AS (SELECT * FROM KT',
'           WHERE STUDY_ARM_ID = 4),',
'',
'  PV2 AS (SELECT A.PATIENT_PROFILE_ID, A.SCRNO, A.PTINTL, C.BATCH, B.ACTUAL_DATE, C.BOTTLE_NO KIT_NO, C.STUDY_SITE_ID, C.STUDY_NUMBER, C.SHIP_REC_DT,',
'                 C.BOTTLE_NO, C.SHIPPED_STATUS, C.IP_ID, C.DTLS_ID, C.IP_STATUS, PARAM_ID, B.PATIENT_VISIT_ID',
'            FROM EDC_PATIENT_PROFILE A',
'            JOIN EDC_PATIENT_VISIT B',
'              ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'            JOIN KT2 C',
'              ON B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID),',
'',
'  P2 AS (SELECT * FROM PV2',
'          WHERE PARAM_ID = 2),',
'',
'  P3 AS (SELECT DISTINCT A.PATIENT_PROFILE_ID, B.PR_TOT_TUBE_USED TOT_TUBES_DISPENS, '''' SIGNATURE, A.ACTUAL_DATE DATE_OF_TUBE_RET, B.PR_TUBES_USED, B.PR_TUBES_UNUSED, B.PR_TUBES_LOST,',
'                A.PATIENT_VISIT_ID',
'           FROM PV A',
'           JOIN IWRS_CRF_DM B',
'             ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'            AND A.PARAM_ID = 3),',
'',
'  P4 AS (SELECT A.PATIENT_PROFILE_ID, A.SCRNO, A.PTINTL, A.BATCH, TO_CHAR(A.ACTUAL_DATE,''DD-MON-YY'') DATE_OF_DISPENSING, A.KIT_NO, A.STUDY_SITE_ID, B.TOT_TUBES_DISPENS,',
'                '''' SIGNATURE, TO_CHAR(B.DATE_OF_TUBE_RET,''DD-MON-YY'') DATE_OF_TUBE_RET, B.PR_TUBES_USED, B.PR_TUBES_UNUSED, B.PR_TUBES_LOST, '''' "Recorded by Sign and date",',
'                A.STUDY_NUMBER, A.BOTTLE_NO, TO_CHAR(A.SHIP_REC_DT,''DD-MON-YY'') SHIP_REC_DT, A.PATIENT_VISIT_ID',
'           FROM P2 A',
'           LEFT OUTER JOIN P3 B',
'             ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID)',
'',
'  SELECT A.PATIENT_PROFILE_ID, A.SCRNO, A.PTINTL, B.BATCH, A.DATE_OF_DISPENSING, B.KIT_NO, B.STUDY_SITE_ID, A.TOT_TUBES_DISPENS, '''' SIGNATURE, A.DATE_OF_TUBE_RET, A.PR_TUBES_USED,',
'         A.PR_TUBES_UNUSED, A.PR_TUBES_LOST, '''' "Recorded by Sign and date", B.STUDY_NUMBER, B.BOTTLE_NO, TO_CHAR(B.SHIP_REC_DT,''DD-MON-YY'') SHIP_REC_DT',
'    FROM P4 A',
'   RIGHT OUTER JOIN KT2 B',
'      ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'     AND A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'   ORDER BY 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  PV AS (SELECT A.*, B.SCRNO, B.PTINTL, B.STUDY_SITE_ID, D.STUDY_NUMBER',
'           FROM EDC_PATIENT_VISIT A',
'           JOIN EDC_PATIENT_PROFILE B',
'             ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'           JOIN EDC_STUDY_SITES C',
'             ON B.STUDY_SITE_ID = C.STUDY_SITE_ID',
'           JOIN EDC_STUDY D',
'             ON C.STUDY_ID = D.STUDY_ID',
'            AND C.STUDY_ID = :APP_EDC_STUDY_ID',
'            AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(B.STUDY_SITE_ID) <> 0',
'            AND A.PARAM_ID IN (2,3)),',
'',
'  P2 AS (SELECT A.PATIENT_PROFILE_ID, A.SCRNO, A.PTINTL, C.BATCH, A.ACTUAL_DATE DATE_OF_DISPENSING, C.BOTTLE_NO KIT_NO, A.STUDY_SITE_ID, A.STUDY_NUMBER, E.SHIP_REC_DT,',
'                CASE C.IP_STATUS WHEN 8 THEN C.BOTTLE_NO ELSE NULL END BOTTLE_NO',
'           FROM PV A',
'           JOIN IWRS_CRF_DM_IP B',
'             ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'           JOIN EDC_IP_DETAIL C',
'             ON B.IP_ID = C.IP_ID',
'           JOIN EDC_IP_SHIPMENT_DTLS D',
'             ON C.IP_ID = D.IP_ID',
'           JOIN EDC_IP_SHIPMENT E',
'             ON D.SHIP_ID = E.SHIP_ID',
'            AND A.PARAM_ID = 2),',
'',
'  P3 AS (SELECT A.PATIENT_PROFILE_ID, B.PR_TOT_TUBE_USED TOT_TUBES_DISPENS, '''' SIGNATURE, A.ACTUAL_DATE DATE_OF_TUBE_RET, B.PR_TUBES_USED, B.PR_TUBES_UNUSED, B.PR_TUBES_LOST',
'           FROM PV A',
'           JOIN IWRS_CRF_DM B',
'             ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'            AND A.PARAM_ID = 3)',
'',
'  SELECT A.PATIENT_PROFILE_ID, A.SCRNO, A.PTINTL, A.BATCH, TO_CHAR(A.DATE_OF_DISPENSING,''DD-MON-YY'') DATE_OF_DISPENSING, A.KIT_NO, A.STUDY_SITE_ID, B.TOT_TUBES_DISPENS,',
'         '''' SIGNATURE, TO_CHAR(B.DATE_OF_TUBE_RET,''DD-MON-YY'') DATE_OF_TUBE_RET, B.PR_TUBES_USED, B.PR_TUBES_UNUSED, B.PR_TUBES_LOST, '''' "Recorded by Sign and date",',
'         A.STUDY_NUMBER, A.BOTTLE_NO, TO_CHAR(A.SHIP_REC_DT,''DD-MON-YY'') SHIP_REC_DT',
'    FROM P2 A',
'    LEFT OUTER JOIN P3 B',
'      ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'   ORDER BY 1'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10576802200037697439)
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
,p_internal_uid=>76217242132598439
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576802324977697440)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576807096352697444)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>11
,p_column_identifier=>'O'
,p_column_label=>'Site Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576802740267697440)
,p_db_column_name=>'SCRNO'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Patient Screening<br>No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576803122450697441)
,p_db_column_name=>'PTINTL'
,p_display_order=>31
,p_column_identifier=>'C'
,p_column_label=>'Patient<br>Initials'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576803507928697441)
,p_db_column_name=>'BATCH'
,p_display_order=>41
,p_column_identifier=>'D'
,p_column_label=>'Batch<br>No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'Batch #'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576806671374697444)
,p_db_column_name=>'KIT_NO'
,p_display_order=>61
,p_column_identifier=>'N'
,p_column_label=>'Kit No.<br>Dispensed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576804268873697442)
,p_db_column_name=>'SIGNATURE'
,p_display_order=>81
,p_column_identifier=>'H'
,p_column_label=>'Signature of<br>Dispenser'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576805070448697442)
,p_db_column_name=>'PR_TUBES_USED'
,p_display_order=>101
,p_column_identifier=>'J'
,p_column_label=>'Used Tube<br>No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576805486889697443)
,p_db_column_name=>'PR_TUBES_UNUSED'
,p_display_order=>111
,p_column_identifier=>'K'
,p_column_label=>'Unused Tube<br>No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576805918185697443)
,p_db_column_name=>'PR_TUBES_LOST'
,p_display_order=>121
,p_column_identifier=>'L'
,p_column_label=>'Misplaced/Lost<br>Tube No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576806267223697443)
,p_db_column_name=>'Recorded by Sign and date'
,p_display_order=>131
,p_column_identifier=>'M'
,p_column_label=>'Recorded<br>by sign<br>and date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577830715527637105)
,p_db_column_name=>'TOT_TUBES_DISPENS'
,p_display_order=>141
,p_column_identifier=>'Q'
,p_column_label=>'Tubes<br>Dispensed'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_column_comment=>'Tubes<br>Dispensed'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577830785480637106)
,p_db_column_name=>'STUDY_NUMBER'
,p_display_order=>151
,p_column_identifier=>'R'
,p_column_label=>'Project No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10579917218264520101)
,p_db_column_name=>'BOTTLE_NO'
,p_display_order=>161
,p_column_identifier=>'S'
,p_column_label=>'Kit number<br>kept as<br>Retention'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10579917386077520103)
,p_db_column_name=>'DATE_OF_DISPENSING'
,p_display_order=>181
,p_column_identifier=>'U'
,p_column_label=>'Date of<br>Dispensing'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10579917506325520104)
,p_db_column_name=>'DATE_OF_TUBE_RET'
,p_display_order=>191
,p_column_identifier=>'V'
,p_column_label=>'Date of<br>Tubes<br>Returned'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10579917630346520105)
,p_db_column_name=>'SHIP_REC_DT'
,p_display_order=>201
,p_column_identifier=>'W'
,p_column_label=>'Date of kit<br>receipt at<br>site'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10576807951529697445)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'762230'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDY_NUMBER:STUDY_SITE_ID:SCRNO:PTINTL:BATCH:SHIP_REC_DT:BOTTLE_NO:DATE_OF_DISPENSING:KIT_NO:DATE_OF_TUBE_RET:PR_TUBES_USED:PR_TUBES_UNUSED:PR_TUBES_LOST:'
,p_break_on=>'STUDY_NUMBER:STUDY_SITE_ID:0:0:0:0'
,p_break_enabled_on=>'STUDY_NUMBER:STUDY_SITE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576808366235697446)
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
 p_id=>wwv_flow_imp.id(10576808815453697446)
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
 p_id=>wwv_flow_imp.id(10500917134351572908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10576801770341697438)
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
 p_id=>wwv_flow_imp.id(10500916811456572905)
,p_name=>'P61_EDC_ROLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10576801770341697438)
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500916934292572906)
,p_name=>'P61_EDC_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10576801770341697438)
,p_item_default=>':APP_EDC_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500916993601572907)
,p_name=>'P61_EDC_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10576801770341697438)
,p_item_default=>':APP_EDC_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10500917188721572909)
,p_name=>'Download PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10500917134351572908)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10500917320905572910)
,p_event_id=>wwv_flow_imp.id(10500917188721572909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_AL_PRI&_repFormat=pdf&_dataSource=default&_outFilename=Accountability_Log-Placebo_Run-In.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P61_EDC_ROLE_ID")+'''
||'&P_EDC_USER=''+ $v("P61_EDC_USER") +''&P_EDC_USER_ID=''+ $v("P61_EDC_USER_ID")+'''',''_blank'');'
);
wwv_flow_imp.component_end;
end;
/
