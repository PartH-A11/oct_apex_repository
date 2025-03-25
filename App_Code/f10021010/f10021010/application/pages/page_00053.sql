prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_tab_set=>'TS1'
,p_name=>'Site wise Subject Summary'
,p_step_title=>'Site wise Subject Summary'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11278728583765359091)
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
 p_id=>wwv_flow_imp.id(11278729181907359092)
,p_plug_name=>'Site wise Subject Summary'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;""'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  SCREEN AS (SELECT D.PATIENT_PROFILE_ID, D.STUDY_SITE_ID, D.STATUS',
'               FROM EDC_PATIENT_PROFILE D',
'               JOIN EDC_PATIENT_VISIT B',
'                 ON D.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID/*',
'               JOIN IWRS_CRF_DM C',
'                 ON B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID*/)',
'SELECT A.STUDY_SITE_ID',
'     , NVL((SELECT COUNT(DISTINCT PATIENT_PROFILE_ID) FROM SCREEN WHERE STATUS IN (1,2,3,4,5,6,8,10) AND STUDY_SITE_ID = A.STUDY_SITE_ID),0) TOTAL_SCREENED',
'     ,NVL((SELECT COUNT(DISTINCT PATIENT_PROFILE_ID) FROM SCREEN WHERE STATUS IN (3,4,5,6,8,10) AND STUDY_SITE_ID = A.STUDY_SITE_ID),0) TOTAL_RANDOMIZED',
'     , NVL((SELECT COUNT(DISTINCT PATIENT_PROFILE_ID) FROM SCREEN WHERE STATUS IN (1) AND STUDY_SITE_ID = A.STUDY_SITE_ID),0) CURRENT_SCREENED',
'    , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (2) AND STUDY_SITE_ID = A.STUDY_SITE_ID) SCREENE_FAILURE',
'     , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (3) AND STUDY_SITE_ID = A.STUDY_SITE_ID) RANDOMIZED',
'     , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (4) AND STUDY_SITE_ID = A.STUDY_SITE_ID) DISCONTINUED',
'     , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (5) AND STUDY_SITE_ID = A.STUDY_SITE_ID) WITHDRAWN',
'     , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (6) AND STUDY_SITE_ID = A.STUDY_SITE_ID) L2F',
'     , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (7) AND STUDY_SITE_ID = A.STUDY_SITE_ID) IND_PHASE_COM',
'     --, (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (8) AND STUDY_SITE_ID = A.STUDY_SITE_ID) MAIN_PHASE_COM',
'     , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (8) AND STUDY_SITE_ID = A.STUDY_SITE_ID) EOT_COMPLETED',
'     , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (9) AND STUDY_SITE_ID = A.STUDY_SITE_ID) UNBLINDED',
'     , (SELECT COUNT(*) FROM EDC_PATIENT_PROFILE WHERE STATUS IN (10) AND STUDY_SITE_ID = A.STUDY_SITE_ID) EOS_COMPLETED',
'     --, NVL((SELECT COUNT(DISTINCT PATIENT_PROFILE_ID) FROM SCREEN WHERE STUDY_SITE_ID = A.STUDY_SITE_ID),0) TOTAL',
'  FROM EDC_STUDY_SITES A',
' WHERE SUN_21010_DEV.EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11278729344044359092)
,p_name=>'Site wise Subject Summary'
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
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>293234265331125943
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11278729729786359094)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11282337674956510696)
,p_db_column_name=>'SCREENE_FAILURE'
,p_display_order=>12
,p_column_identifier=>'G'
,p_column_label=>'Screen Failed<br>Subject'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11278730967795359095)
,p_db_column_name=>'DISCONTINUED'
,p_display_order=>32
,p_column_identifier=>'D'
,p_column_label=>'Discontinued<br>Subject'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3560321558283395566)
,p_db_column_name=>'L2F'
,p_display_order=>52
,p_column_identifier=>'H'
,p_column_label=>'Lost To Follow up<br>Subject'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110147731892609911)
,p_db_column_name=>'RANDOMIZED'
,p_display_order=>62
,p_column_identifier=>'I'
,p_column_label=>' Current Randomized<br>Subject'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110147831545609912)
,p_db_column_name=>'WITHDRAWN'
,p_display_order=>72
,p_column_identifier=>'J'
,p_column_label=>'Consent Withdrawn<br>Subject'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110147882082609913)
,p_db_column_name=>'IND_PHASE_COM'
,p_display_order=>82
,p_column_identifier=>'K'
,p_column_label=>'Induction phase<br>Completed Subject'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110148039542609915)
,p_db_column_name=>'UNBLINDED'
,p_display_order=>102
,p_column_identifier=>'M'
,p_column_label=>'Unblinded<br>Subject'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1772850709034508294)
,p_db_column_name=>'TOTAL_SCREENED'
,p_display_order=>112
,p_column_identifier=>'N'
,p_column_label=>'Total Screened <br> Subjects'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1749735178032906804)
,p_db_column_name=>'TOTAL_RANDOMIZED'
,p_display_order=>122
,p_column_identifier=>'R'
,p_column_label=>'Total Randomized<br>Subjects'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1772850783871508295)
,p_db_column_name=>'CURRENT_SCREENED'
,p_display_order=>132
,p_column_identifier=>'O'
,p_column_label=>'Currently Screened <br> Subjects'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1749735037725906802)
,p_db_column_name=>'EOT_COMPLETED'
,p_display_order=>142
,p_column_identifier=>'P'
,p_column_label=>'EOT Completed <br> Subjects'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1749735167466906803)
,p_db_column_name=>'EOS_COMPLETED'
,p_display_order=>152
,p_column_identifier=>'Q'
,p_column_label=>'EOS  Completed <br>  Subjects'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11278731756116360017)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'2932367'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDY_SITE_ID:TOTAL_SCREENED:CURRENT_SCREENED:TOTAL_RANDOMIZED:SCREENE_FAILURE:RANDOMIZED:DISCONTINUED:L2F:WITHDRAWN:EOT_COMPLETED:EOS_COMPLETED:'
,p_sum_columns_on_break=>'SCREENED:DISCONTINUED:SCREENE_FAILURE:WITHDRAWN:L2F:RANDOMIZED:IND_PHASE_COM:MAIN_PHASE_COM:UNBLINDED:TOTAL_SCREENED:CURRENT_SCREENED:TOTAL_RANDOMIZED:EOT_COMPLETED:EOS_COMPLETED'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11278735650575408737)
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
 p_id=>wwv_flow_imp.id(9568846713426285788)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11278729181907359092)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568846843410285789)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11278729181907359092)
,p_button_name=>'PRINT_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569088072688708700)
,p_name=>'PRINT_PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568846713426285788)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569088187701708701)
,p_event_id=>wwv_flow_imp.id(9569088072688708700)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/SIte Wise Subject Summary/SITE_WISE_SUBJECT_SUMMARY&_repFormat=pdf&_dataSource=default&_outFilename=SITE_WISE_SUBJECT_SUMMARY.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY'
||'_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569088336481708702)
,p_name=>'PRINT_XLS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568846843410285789)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569088434023708703)
,p_event_id=>wwv_flow_imp.id(9569088336481708702)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/SIte Wise Subject Summary/SITE_WISE_SUBJECT_SUMMARY&_repFormat=xls&_dataSource=default&_outFilename=SITE_WISE_SUBJECT_SUMMARY.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY'
||'_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
