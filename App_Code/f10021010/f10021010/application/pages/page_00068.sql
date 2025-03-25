prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_name=>'Query Report Pagewise'
,p_step_title=>'Query Report Pagewise'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12157206741170434335)
,p_name=>'Query Report'
,p_region_name=>'Query Report'
,p_template=>wwv_flow_imp.id(12146132332151911981)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:1050px"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'''<a href="''||''javascript:popupURL(''''f?p=&APP_ID.:124:&SESSION.::RP,124::P124_QRY_ID,P124_REQUEST_FROM:''||QRY_ID||'',''||:P68_PAGE_ID||'''''')">''|| QRY_ID ||'' </a>'' AS "Query#",',
' "STUDY_ID",',
' "PATIENT_VISIT_ID",',
' "PAGE_ID",',
'"ITEM_NAME",',
' "QRY_DESC",',
' "QRY_STATUS",',
' "QRY_RESPONSE",',
' "CREATED_BY",',
' "CREATED_DT",',
' "UPDATED_BY",',
' "UPDATED_DT"',
'from #OWNER#.EDC_CRF_QUERIES',
'WHERE PAGE_ID = :P68_PAGE_ID and PATIENT_VISIT_ID = :P68_PATIENT_VISIT_ID',
'and  TBL_PK_ID = :P68_TBL_ID',
'AND TBL_TYPE = :P68_TBL_TYPE'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'and  TBL_PK_ID = :P68_TBL_ID',
'AND TBL_TYPE = :P68_TBL_TYPE'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207135477434337)
,p_query_column_id=>1
,p_column_alias=>'Query#'
,p_column_display_sequence=>1
,p_column_heading=>'Query#'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207230567434337)
,p_query_column_id=>2
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>4
,p_column_heading=>'STUDY_ID'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157206933165434337)
,p_query_column_id=>3
,p_column_alias=>'PATIENT_VISIT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'PATIENT_VISIT_ID'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207040233434337)
,p_query_column_id=>4
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Page Name'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207340816434337)
,p_query_column_id=>5
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Field'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d,r',
'from edc_crf_qry_view',
'where page_no = :P133_PAGE_ID',
'order by DISPLAY_SEQUENCE'))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207427113434337)
,p_query_column_id=>6
,p_column_alias=>'QRY_DESC'
,p_column_display_sequence=>6
,p_column_heading=>'Query Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207553576434337)
,p_query_column_id=>7
,p_column_alias=>'QRY_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Query Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207648759434337)
,p_query_column_id=>8
,p_column_alias=>'QRY_RESPONSE'
,p_column_display_sequence=>8
,p_column_heading=>'Query Response'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207751773434337)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207844801434337)
,p_query_column_id=>10
,p_column_alias=>'CREATED_DT'
,p_column_display_sequence=>10
,p_column_heading=>'Created <br> Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157208045814434337)
,p_query_column_id=>11
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12157207957141434337)
,p_query_column_id=>12
,p_column_alias=>'UPDATED_DT'
,p_column_display_sequence=>12
,p_column_heading=>'Updated <br> Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12157208127441434338)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12157206741170434335)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11642159208097545421)
,p_button_image_alt=>'Close'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:window.close();'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12157208351015434340)
,p_name=>'P68_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12157206741170434335)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12157208834564442591)
,p_name=>'P68_TBL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12157206741170434335)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12157209235186472748)
,p_name=>'P68_TBL_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12157206741170434335)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12157209731711504694)
,p_name=>'P68_PATIENT_VISIT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12157206741170434335)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
