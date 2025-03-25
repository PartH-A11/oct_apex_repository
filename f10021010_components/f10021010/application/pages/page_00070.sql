prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_tab_set=>'TS1'
,p_name=>'IP Dispensed'
,p_step_title=>'IP Dispensed'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10585433811478730872)
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
 p_id=>wwv_flow_imp.id(10585434389522730875)
,p_plug_name=>'IP Dispensed'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.PATIENT_PROFILE_ID, B.PATIENT_VISIT_ID, F.STUDY_SITE_ID, F.SITE_NUMBER || '' ('' || G.FIRST_NAME || '' '' || G.LAST_NAME || '' - '' || G.INVNAME || '')'' SITE_NAME,',
'       A.PTINTL, A.SCRNO, B.VISIT_TITLE, C.VISIT_DATE, E.BOTTLE_NO, TO_CHAR(D.DISPENSE_TIME,''DD-MON-YYYY HH:MI AM'') "Dispensed Kit Date/Time Stamp",',
'       A.RANDOMNO, A.RANDOMIZATION_DATE, A.STATUS AS PATIENT_STATUS, E.IP_STATUS AS KIT_STATUS',
'       , TO_CHAR(D.CREATED_DT,''DD-MON-YYYY HH:MI AM'') "Assigned Kit Date/Time Stamp"',
'  FROM EDC_PATIENT_PROFILE A',
'  JOIN EDC_PATIENT_VISIT B',
'    ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'  JOIN IWRS_CRF_DM C',
'    ON B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'  JOIN IWRS_CRF_DM_IP D',
'    ON B.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'  JOIN EDC_IP_DETAIL E',
'    ON D.IP_ID = E.IP_ID',
'  JOIN EDC_STUDY_SITES F',
'    ON A.STUDY_SITE_ID = F.STUDY_SITE_ID',
'  JOIN EDC_SITES G',
'    ON F.SITE_ID = G.SITE_ID',
' where EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0    '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10585434497560730875)
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
,p_internal_uid=>448094330393959078
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585434965337730884)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585435312141730890)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Visit Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585435723754730891)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Study Site Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585436491488730892)
,p_db_column_name=>'PTINTL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subject Initial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585436906303730893)
,p_db_column_name=>'SCRNO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Screening No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585437276221730894)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585437714266730895)
,p_db_column_name=>'BOTTLE_NO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Kit #'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585161394565388401)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Visit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10585161543290388402)
,p_db_column_name=>'SITE_NAME'
,p_display_order=>29
,p_column_identifier=>'K'
,p_column_label=>'Site'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1859846793979037268)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>39
,p_column_identifier=>'L'
,p_column_label=>'Randomization<br>Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1859846882776037269)
,p_db_column_name=>'RANDOMIZATION_DATE'
,p_display_order=>49
,p_column_identifier=>'M'
,p_column_label=>'Randomization<br>Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1859847044139037270)
,p_db_column_name=>'PATIENT_STATUS'
,p_display_order=>59
,p_column_identifier=>'N'
,p_column_label=>'Subject Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12147517156473630257)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1859847078463037271)
,p_db_column_name=>'KIT_STATUS'
,p_display_order=>69
,p_column_identifier=>'O'
,p_column_label=>'Kit Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152767440636550843)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1859847167864037272)
,p_db_column_name=>'Dispensed Kit Date/Time Stamp'
,p_display_order=>79
,p_column_identifier=>'P'
,p_column_label=>'Dispensed Kit<br>Date&#x2F;time Stamp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1859847268979037273)
,p_db_column_name=>'Assigned Kit Date/Time Stamp'
,p_display_order=>89
,p_column_identifier=>'Q'
,p_column_label=>'Assigned Kit<br>Date&#x2F;time Stamp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10585447652499889834)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4481075'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SITE_NAME:SCRNO:RANDOMNO:BOTTLE_NO:KIT_STATUS:VISIT_TITLE:VISIT_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10585444928360873263)
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
 p_id=>wwv_flow_imp.id(9568847262992285794)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10585434389522730875)
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
 p_id=>wwv_flow_imp.id(9568847411740285795)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10585434389522730875)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569089293402708712)
,p_name=>'PRINT_PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568847262992285794)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569089370731708713)
,p_event_id=>wwv_flow_imp.id(9569089293402708712)
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
 p_id=>wwv_flow_imp.id(9569089470301708714)
,p_name=>'PRINT_XLS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568847411740285795)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569089606141708715)
,p_event_id=>wwv_flow_imp.id(9569089470301708714)
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
wwv_flow_imp.component_end;
end;
/
