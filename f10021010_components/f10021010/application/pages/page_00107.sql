prompt --application/pages/page_00107
begin
--   Manifest
--     PAGE: 00107
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
 p_id=>107
,p_tab_set=>'TS1'
,p_name=>'Cap Report'
,p_step_title=>'Cap Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2293814106618364404)
,p_plug_name=>'Parent'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11760296329800232046)
,p_plug_name=>'Cap Report'
,p_parent_plug_id=>wwv_flow_imp.id(2293814106618364404)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH PATIENT_DATA AS ',
'        (',
'            SELECT STUDY_ARM_ID, COUNT(*) AS PATIENT_CNT',
'                    FROM EDC_PATIENT_PROFILE ',
'                        WHERE STUDY_ARM_ID IS NOT NULL',
'                GROUP BY STUDY_ARM_ID',
'        )',
'SELECT ',
'        ARM.ARM_NAME, PD.PATIENT_CNT, ARM.ARM_CAP',
'FROM EDC_STUDY_ARM ARM JOIN PATIENT_DATA PD',
'    ON PD.STUDY_ARM_ID = ARM.STUDY_ARM_ID',
'UNION',
'SELECT ',
'        ''Total IP'', SUM(PD.PATIENT_CNT) PATIENT_CNT, SUM(ARM.ARM_CAP) ARM_CAP',
'FROM EDC_STUDY_ARM ARM JOIN PATIENT_DATA PD',
'    ON PD.STUDY_ARM_ID = ARM.STUDY_ARM_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
 p_id=>wwv_flow_imp.id(11760296449020232047)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>7728683136592616385
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1813250761276508648)
,p_db_column_name=>'ARM_NAME'
,p_display_order=>10
,p_column_identifier=>'BH'
,p_column_label=>'Arm Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1813250828092508649)
,p_db_column_name=>'PATIENT_CNT'
,p_display_order=>20
,p_column_identifier=>'BI'
,p_column_label=>'Patient Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1813250892181508650)
,p_db_column_name=>'ARM_CAP'
,p_display_order=>30
,p_column_identifier=>'BJ'
,p_column_label=>'Arm Cap'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11767132574447120036)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2424641'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>':ARM_NAME:PATIENT_CNT:ARM_CAP'
,p_sort_column_1=>'ARM_BLOCK_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'DTLS_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_sum_columns_on_break=>'PK_CAP:TEST:REF:PK_CAP_T:PK_CAP_R'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11748252978028616652)
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
 p_id=>wwv_flow_imp.id(11748266739803675836)
,p_plug_name=>'Admin Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;     width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_list_id=>wwv_flow_imp.id(3552315147236588000)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4274078225627751775)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11760296329800232046)
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
 p_id=>wwv_flow_imp.id(4274077823030751771)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11760296329800232046)
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
 p_id=>wwv_flow_imp.id(4274080403631751845)
,p_name=>'print pdf'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4274078225627751775)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4274080824612751846)
,p_event_id=>wwv_flow_imp.id(4274080403631751845)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Randomization Block Status/RANDOMIZATION_BLK_STS&_repFormat=pdf&_dataSource=default&_outFilename=RANDOMIZATION_BLK_STS.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&AP'
||'P_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4274079429618751831)
,p_name=>'print xls'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4274077823030751771)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4274079952967751843)
,p_event_id=>wwv_flow_imp.id(4274079429618751831)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Randomization Block Status/RANDOMIZATION_BLK_STS&_repFormat=xls&_dataSource=default&_outFilename=RANDOMIZATION_BLK_STS.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&AP'
||'P_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
