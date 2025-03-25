prompt --application/pages/page_00064
begin
--   Manifest
--     PAGE: 00064
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
 p_id=>64
,p_tab_set=>'TS1'
,p_name=>'Subject Visit Compliance'
,p_step_title=>'Subject Visit Compliance'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(11045207488966824379)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9475708174871128217)
,p_plug_name=>'Subject Visit Compliance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH PARAM AS ( SELECT PARAM_ID      ,',
'                       VISIT_NAME    ,',
'                       VISIT_TYPE    , ',
'                       DURATION      ,',
'                       WINDOW_PERIOD_P,',
'                       WINDOW_PERIOD_M,',
'                       STUDY_ID       ,',
'                       CASE WHEN NVL(WINDOW_PERIOD_ALERT,0) = 1 THEN',
'                                ''Yes''',
'                            ELSE',
'                                ''No''',
'                       END AS Window_Period_Alert',
'                  FROM EDC_PATIENT_VISIT_PARAMS',
'                 WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'                 AND PARAM_ID <> 4 -- IGNORE UNSCHEDULE VISIT',
'               )',
'',
'',
'SELECT CPV.VISIT_NUMBER  AS "VISIT_NUMBER",',
'       CPVP.VISIT_NAME          ,',
'       CPVP.VISIT_TYPE          ,',
'       CPV.SCHEDULE_DATE        ,',
'       CPV.ACTUAL_DATE          ,',
'       CPVP.DURATION            ,',
'       CPVP.WINDOW_PERIOD_P     ,',
'       CPVP.WINDOW_PERIOD_M     ,',
'       CPP.PTINTL               ,',
'       CPP.SCRNO                ,',
'       CPP.RANDOMNO             ,',
'       ',
'       --Site name',
'       EDC_SITE_PKG.GET_CRO_STUDY_SITE_NAME(CPP.STUDY_SITE_ID) AS "SITE_NUMBER",',
'       ',
'       CPV.PATIENT_PROFILE_ID   ,',
'       CPVP.STUDY_ID            ,',
'       CPP.STUDY_SITE_ID    ,',
'       CPV.SCHEDULE_DATE + CPVP.WINDOW_PERIOD_P  AS "WINDOW+",',
'       CPV.SCHEDULE_DATE - CPVP.WINDOW_PERIOD_M  AS "WINDOW-",',
'       CPVP.Window_Period_Alert',
'       ',
'  FROM EDC_PATIENT_VISIT CPV',
' INNER JOIN EDC_PATIENT_PROFILE CPP',
'    ON CPP.PATIENT_PROFILE_ID = CPV.PATIENT_PROFILE_ID',
'    ',
' INNER JOIN PARAM CPVP',
'    ON CPV.PARAM_ID = CPVP.PARAM_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>10
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Subject Visit Compliance'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Times'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'10'
,p_prn_page_footer=>'Octalsoft IWRS'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Times'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'10'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Times'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Times'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'08'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'LEFT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9475708514370128217)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TUSHAR.KOTHIA'
,p_internal_uid=>76074324606533310
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475708622854128218)
,p_db_column_name=>'VISIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Visit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475709074958128218)
,p_db_column_name=>'VISIT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Visit Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475709476656128219)
,p_db_column_name=>'SCHEDULE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Schedule Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475709866432128219)
,p_db_column_name=>'ACTUAL_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Actual Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475710199049128219)
,p_db_column_name=>'DURATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Duration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475710650289128220)
,p_db_column_name=>'WINDOW_PERIOD_P'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Window Period (+)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475711073733128220)
,p_db_column_name=>'WINDOW_PERIOD_M'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Window Period (-)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475711485612128220)
,p_db_column_name=>'PTINTL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Patient Initial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475711833991128221)
,p_db_column_name=>'SCRNO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Screening Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475712226187128221)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Randomization Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475712639267128221)
,p_db_column_name=>'SITE_NUMBER'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Site'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475712995280128222)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Patient profile id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475713485877128222)
,p_db_column_name=>'STUDY_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Study id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475713824800128222)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Study site id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475714258736128223)
,p_db_column_name=>'WINDOW+'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Window+'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475714638165128223)
,p_db_column_name=>'WINDOW-'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Window-'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475715078916128224)
,p_db_column_name=>'VISIT_NUMBER'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Visit #'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9399973900611106505)
,p_db_column_name=>'WINDOW_PERIOD_ALERT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Window Period <br/>Alert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9475715466862128224)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'760813'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SITE_NUMBER:PTINTL:SCRNO:RANDOMNO:VISIT_NAME:SCHEDULE_DATE:ACTUAL_DATE:DURATION:WINDOW_PERIOD_P:WINDOW_PERIOD_M:WINDOW_PERIOD_ALERT'
,p_sort_column_1=>'SCRNO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'VISIT_NUMBER'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'SITE_NUMBER'
,p_break_enabled_on=>'SITE_NUMBER'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(9399982400555121903)
,p_report_id=>wwv_flow_imp.id(9475715466862128224)
,p_name=>'Out of Window Period'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFF99'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(9399982823589121904)
,p_report_id=>wwv_flow_imp.id(9475715466862128224)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case when  E  IS NOT NULL and  S = ''Yes'' THEN',
'                case when  E  BETWEEN  Q AND P then  ',
'                               0',
'                         else',
'                               1',
'                 end',
'        else',
'              0',
'end'))
,p_column_type=>'NUMBER'
,p_column_label=>'Window'
,p_report_label=>'Window'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9475716765587128226)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9475717104781128227)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8467896153568781697)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9475708174871128217)
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
 p_id=>wwv_flow_imp.id(8467896226362781698)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9475708174871128217)
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
 p_id=>wwv_flow_imp.id(8468137752349204611)
,p_name=>'PRINT_PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467896153568781697)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8468137842157204612)
,p_event_id=>wwv_flow_imp.id(8468137752349204611)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Site Visit Compliance/SITE_VISIT_COMPLIANCE&_repFormat=pdf&_dataSource=default&_outFilename=SITE_VISIT_COMPLIANCE.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC'
||'_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8468137946417204613)
,p_name=>'PRINT_XLS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467896226362781698)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8468137989735204614)
,p_event_id=>wwv_flow_imp.id(8468137946417204613)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Site Visit Compliance/SITE_VISIT_COMPLIANCE&_repFormat=xls&_dataSource=default&_outFilename=SITE_VISIT_COMPLIANCE.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC'
||'_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
