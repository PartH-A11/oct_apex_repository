prompt --application/pages/page_00116
begin
--   Manifest
--     PAGE: 00116
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
 p_id=>116
,p_tab_set=>'TS1'
,p_name=>'Visit Data'
,p_step_title=>'Visit Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9669663798951020827)
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
 p_id=>wwv_flow_imp.id(9669664365653020829)
,p_plug_name=>' IWRS Output Report'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCRNO,',
'       B.VISIT_TITLE,',
'       TO_CHAR(B.CREATED_ON,''DD-MON-YY'') VISIT_CREATED_DT,',
'       TO_CHAR(B.UPDATED_ON,''DD-MON-YY'') VISIT_UPDATED_DT,',
'       B.UPDATED_BY,',
'       B.CREATED_BY,',
'       SUN_21010_DEV.GET_LOV_VALUES(36,A.STATUS) PT_STATUS,',
'       TO_CHAR(B.ACTUAL_DATE,''DD-MON-YY'') VISIT_DT,',
'       (SELECT D.STUDY_NUMBER FROM SUN_21010_DEV.EDC_STUDY D WHERE D.STUDY_ID = C.STUDY_ID) PROT_NUMBER,',
'       A.STUDY_SITE_ID',
'FROM SUN_21010_DEV.EDC_PATIENT_PROFILE A, SUN_21010_DEV.EDC_PATIENT_VISIT B, SUN_21010_DEV.EDC_STUDY_SITES C',
'WHERE A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'AND A.STUDY_SITE_ID = C.STUDY_SITE_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9669664447623020829)
,p_name=>'Site vise Visit vise Subjects'
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
,p_internal_uid=>7224169708743201581
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2696124895711486942)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688483781706683379)
,p_db_column_name=>'SCRNO'
,p_display_order=>11
,p_column_identifier=>'J'
,p_column_label=>'Screening Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688483921560683380)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>21
,p_column_identifier=>'K'
,p_column_label=>'Visit Title'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688484020315683381)
,p_db_column_name=>'VISIT_CREATED_DT'
,p_display_order=>31
,p_column_identifier=>'L'
,p_column_label=>'Created Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688484106779683382)
,p_db_column_name=>'VISIT_UPDATED_DT'
,p_display_order=>41
,p_column_identifier=>'M'
,p_column_label=>'Updated Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688484155975683383)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>51
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688484249403683384)
,p_db_column_name=>'PT_STATUS'
,p_display_order=>61
,p_column_identifier=>'O'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688484418327683385)
,p_db_column_name=>'VISIT_DT'
,p_display_order=>71
,p_column_identifier=>'P'
,p_column_label=>'Visit Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688484536485683386)
,p_db_column_name=>'PROT_NUMBER'
,p_display_order=>81
,p_column_identifier=>'Q'
,p_column_label=>'Protocol Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688484600941683387)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>91
,p_column_identifier=>'R'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9669669244393031872)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2506309'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROT_NUMBER:STUDY_SITE_ID:SCRNO:PT_STATUS:VISIT_TITLE:VISIT_DT:VISIT_CREATED_DT:CREATED_BY:VISIT_UPDATED_DT:UPDATED_BY:'
,p_sum_columns_on_break=>'0:SCREENING_VISIT_PP_ID_COUNT:PLACEBO_RUNIN_PP_ID_COUNT:RANDOMIZATION_PP_ID_COUNT:INTERIM_VISIT_PP_ID_COUNT:END_OF_TREATMENT_PP_ID_COUNT:SAFETY_FOLLOW_UP_PP_ID_COUNT'
,p_avg_columns_on_break=>'END_OF_TREATMENT_PP_ID_COUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9669668442431026508)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2696126138325486956)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9669664365653020829)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2696126498218486959)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9669664365653020829)
,p_button_name=>'PRINT_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2696127537655486980)
,p_name=>'PRINT_PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2696126138325486956)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2696128005851486991)
,p_event_id=>wwv_flow_imp.id(2696127537655486980)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Visit Wise Subject Summary/VISIT_WISE_SUBJECT_SUMMARY&_repFormat=pdf&_dataSource=default&_outFilename=VISIT_WISE_SUBJECT_SUMMARY.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_ST'
||'UDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2696128372406486992)
,p_name=>'PRINT_XLS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2696126498218486959)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2696128890159486992)
,p_event_id=>wwv_flow_imp.id(2696128372406486992)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Visit Wise Subject Summary/VISIT_WISE_SUBJECT_SUMMARY&_repFormat=xls&_dataSource=default&_outFilename=VISIT_WISE_SUBJECT_SUMMARY.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_ST'
||'UDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
