prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_tab_set=>'TS1'
,p_name=>'User Activity Report'
,p_step_title=>'User Activity Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11673276057420332066)
,p_plug_name=>'User Activity Report'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left: 5px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_USER,',
'       DISTINCT_APEX_SESSIONS,',
'       PAGE_VIEWS,',
'       DISTINCT_PAGES,',
'       TOTAL_ELAPSED_TIME,',
'       TO_CHAR( FROM_TZ( CAST( LAST_VIEW AS TIMESTAMP ), ''-4:00'' ) AT TIME ZONE ''Asia/Kolkata'', ''DD-MON-YYYY HH:MI PM'' ) LAST_VIEW',
'  FROM APEX_WORKSPACE_LOG_SUMMARY_USR',
' WHERE ( ',
'         ',
'          (:APP_EDC_ROLE_ID = 13  --Admin can see all user',
'           AND',
'           1 = 1',
'          )',
'        ',
'          OR',
'          (:APP_EDC_ROLE_ID <> 13  --Only own status',
'           AND',
'           upper(:APP_USER_NAME) LIKE UPPER(APEX_USER)',
'          )',
'       )',
'AND UPPER(APEX_USER) IN ( ',
'select ',
'       upper(USERNAME)',
'  from EDC_STUDY_CONTACT ',
' where study_id = (case when TYPE = 1',
'                        then decode(edc_user.get_user_studies(type, contact_role, :APP_EDC_STUDY_ID,USERNAME), 1, study_id, null)',
'                        when type in (2, 3, 5)',
'                        then to_number(:APP_EDC_STUDY_ID)',
'                   end',
'                  )',
'                  );'))
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_USER,',
'       DISTINCT_APEX_SESSIONS,',
'       PAGE_VIEWS,',
'       DISTINCT_PAGES,',
'       TOTAL_ELAPSED_TIME,',
'       TO_CHAR( FROM_TZ( CAST( LAST_VIEW AS TIMESTAMP ), ''-4:00'' ) AT TIME ZONE ''Asia/Kolkata'', ''DD-MON-YYYY HH:MI PM'' ) LAST_VIEW',
'  FROM APEX_WORKSPACE_LOG_SUMMARY_USR',
' WHERE ( ',
'         ',
'          (:APP_EDC_ROLE_ID = 13  --Admin can see all user',
'           AND',
'           1 = 1',
'          )',
'        ',
'          OR',
'          (:APP_EDC_ROLE_ID <> 13  --Only own status',
'           AND',
'           upper(:APP_USER_NAME) LIKE UPPER(APEX_USER)',
'          )',
'       )'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11673276179837332067)
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
,p_internal_uid=>188537869786988507
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11673276268983332068)
,p_db_column_name=>'APEX_USER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11673509455056536161)
,p_db_column_name=>'DISTINCT_APEX_SESSIONS'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'No. of Sessions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11673276329487332069)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11673276425489332070)
,p_db_column_name=>'DISTINCT_PAGES'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Distinct Pages'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11673276583271332071)
,p_db_column_name=>'TOTAL_ELAPSED_TIME'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Total Elapsed Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9540333968868943585)
,p_db_column_name=>'LAST_VIEW'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Last view'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11673441587556051916)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1887033'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APEX_USER:DISTINCT_APEX_SESSIONS:PAGE_VIEWS:DISTINCT_PAGES:TOTAL_ELAPSED_TIME:LAST_VIEW:'
,p_break_on=>'APEX_USER:0:0:0:0:0'
,p_break_enabled_on=>'APEX_USER:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11673317287931489283)
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
 p_id=>wwv_flow_imp.id(11673341170908520916)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;     width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>20
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp.component_end;
end;
/
