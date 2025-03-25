prompt --application/pages/page_00153
begin
--   Manifest
--     PAGE: 00153
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
 p_id=>153
,p_tab_set=>'TS1'
,p_name=>'User Role Matrix Report'
,p_alias=>'PAGE-ACCESS-REPORT'
,p_step_title=>'User Role Matrix Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712572476449275953)
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
 p_id=>wwv_flow_imp.id(712573269885279101)
,p_plug_name=>'User Role Matrix Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>109
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   "EDC_GROUP_ACCESS"."GRP_ACC_ID" "GRP_ACC_ID", ',
'   "EDC_GROUP_ACCESS"."STUDY_ID" "STUDY_ID", ',
'   "EDC_GROUP_ACCESS"."GRP_ID" "GRP_ID", ',
'   "EDC_GROUP_ACCESS"."ROLE_ID" "ROLE_ID", ',
'   "EDC_GROUP_ACCESS"."ROLE_TYPE" "ROLE_TYPE", ',
'   "EDC_GROUP_ACCESS"."CAN_SEE" "CAN_SEE", ',
'   "EDC_GROUP_ACCESS"."CAN_CREATE" "CAN_CREATE", ',
'   "EDC_GROUP_ACCESS"."CAN_UPDATE" "CAN_UPDATE", ',
'   "EDC_GROUP_ACCESS"."CAN_DELETE" "CAN_DELETE", ',
'   "EDC_GROUP_ACCESS"."CAN_QUERY" "CAN_QUERY", ',
'   "EDC_GROUP_ACCESS"."CAN_LOCKUNLOCK" "CAN_LOCKUNLOCK", ',
'   "EDC_GROUP_ACCESS"."CAN_SUBMIT" "CAN_SUBMIT", ',
'   "EDC_GROUP_ACCESS"."CAN_MONITOR" "CAN_MONITOR", ',
'   "EDC_GROUP_ACCESS"."CAN_FREEZE" "CAN_FREEZE", ',
'   "EDC_GROUP_ACCESS"."CREATED_BY" "CREATED_BY", ',
'   "EDC_GROUP_ACCESS"."CREATED_DT" "CREATED_DT", ',
'   "EDC_GROUP_ACCESS"."UPDATED_BY" "UPDATED_BY", ',
'   "EDC_GROUP_ACCESS"."UPDATED_DT" "UPDATED_DT"',
'FROM ',
'   EDC_GROUP_ACCESS',
'--WHERE STUDY_ID = :APP_EDC_STUDY_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'User Role Matrix Report'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(712573573656279104)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KOTHA.SAIMAHESH'
,p_internal_uid=>712573573656279104
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712573652835279105)
,p_db_column_name=>'GRP_ACC_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Grp Acc Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712573734563279106)
,p_db_column_name=>'STUDY_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Study '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(11051768466811568667)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712573879271279107)
,p_db_column_name=>'GRP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Group Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(11045635368417795693)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712573958442279108)
,p_db_column_name=>'ROLE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Role '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(11045613370157698579)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574076809279109)
,p_db_column_name=>'ROLE_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574191261279110)
,p_db_column_name=>'CAN_SEE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'View'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574211040279111)
,p_db_column_name=>'CAN_CREATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Create'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574379969279112)
,p_db_column_name=>'CAN_UPDATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Update'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574499350279113)
,p_db_column_name=>'CAN_DELETE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Delete'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574551751279114)
,p_db_column_name=>'CAN_QUERY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Query'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574661423279115)
,p_db_column_name=>'CAN_LOCKUNLOCK'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Lockunlock'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574754578279116)
,p_db_column_name=>'CAN_SUBMIT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Submit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574868363279117)
,p_db_column_name=>'CAN_MONITOR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Monitor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712574977355279118)
,p_db_column_name=>'CAN_FREEZE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Freeze'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10570133760983872094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712575066662279119)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712575126308279120)
,p_db_column_name=>'CREATED_DT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Created Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712575289459279121)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(712575378617279122)
,p_db_column_name=>'UPDATED_DT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Updated Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(712585588529296989)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7125856'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROLE_ID:STUDY_ID:GRP_ID:CAN_SEE:CAN_CREATE:CAN_UPDATE:CAN_DELETE:'
,p_break_on=>'ROLE_ID:0:0:0:0:0'
,p_break_enabled_on=>'ROLE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712575442990279123)
,p_plug_name=>'Admin Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;     width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>99
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(2451364379095083907)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
);
wwv_flow_imp.component_end;
end;
/
