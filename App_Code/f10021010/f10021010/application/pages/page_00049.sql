prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_tab_set=>'TS1'
,p_name=>'Discontinued Subjects'
,p_step_title=>'Discontinued Subjects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10176032286939558053)
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
 p_id=>wwv_flow_imp.id(10176032863693558055)
,p_plug_name=>'Discontinued Subjects'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.STUDY_SITE_ID',
'     , P.PTINTL',
'     , P.SCRNO',
'     , P.RANDOMNO',
'     , ''Discontinued'' STATUS --TO_CHAR(P.STATUS) STATUS',
'     , (SELECT D.BSA',
'          FROM EDC_PATIENT_VISIT V',
'             , IWRS_CRF_DM D',
'         WHERE P.PATIENT_PROFILE_ID = V.PATIENT_PROFILE_ID',
'           AND V.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'           AND V.VISIT_NUMBER = 2',
'        ) VISIT_2_BSA',
'     , (SELECT D.BSA',
'          FROM EDC_PATIENT_VISIT V',
'             , IWRS_CRF_DM D',
'         WHERE P.PATIENT_PROFILE_ID = V.PATIENT_PROFILE_ID',
'           AND V.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'           AND V.VISIT_NUMBER = 7',
'        ) VISIT_7_BSA',
'     , (SELECT ''Visit '' || MAX(VISIT_NUMBER)',
'          FROM EDC_PATIENT_VISIT',
'         WHERE PATIENT_PROFILE_ID = P.PATIENT_PROFILE_ID',
'           AND VISIT_NUMBER <> 10',
'           --AND P.STATUS = 4 -- Discontinued',
'        ) LAST_VISIT',
'  FROM EDC_PATIENT_PROFILE P',
' WHERE P.STATUS = 4'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_output_show_link=>'Y'
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
,p_prn_header_font_color=>'#ffffff'
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
 p_id=>wwv_flow_imp.id(10176032949026558055)
,p_name=>'Discontinued Subjects'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>291488638454828999
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10176033393264558062)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'&nbsp;'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10176033713008558063)
,p_db_column_name=>'PTINTL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Subject Initials'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10176034207614558064)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Randomization Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10176034950777558065)
,p_db_column_name=>'VISIT_2_BSA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Visit 2 BSA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10176035369789558066)
,p_db_column_name=>'VISIT_7_BSA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Visit 7 BSA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10176035764440558066)
,p_db_column_name=>'LAST_VISIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Discontinued after Visit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10174538918260096175)
,p_db_column_name=>'STATUS'
,p_display_order=>17
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10174539086987096176)
,p_db_column_name=>'SCRNO'
,p_display_order=>27
,p_column_identifier=>'J'
,p_column_label=>'Screening Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10176036338140559024)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2914921'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDY_SITE_ID:PTINTL:SCRNO:RANDOMNO:STATUS:VISIT_2_BSA:VISIT_7_BSA:APXWS_CC_001:LAST_VISIT:'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10185038637467364165)
,p_report_id=>wwv_flow_imp.id(10176036338140559024)
,p_name=>'BSA Variance <= -5'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'<='
,p_expr=>'-5'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) <= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# <= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FF7755'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(10185039015573364165)
,p_report_id=>wwv_flow_imp.id(10176036338140559024)
,p_name=>'BSA Variance >= 5'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'>='
,p_expr=>'5'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FF7755'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(10185039416004364166)
,p_report_id=>wwv_flow_imp.id(10176036338140559024)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>' (( F - E ) / E ) *100'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'BSA Variance %'
,p_report_label=>'BSA Variance %'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10176066726424793518)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>11
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp.component_end;
end;
/
