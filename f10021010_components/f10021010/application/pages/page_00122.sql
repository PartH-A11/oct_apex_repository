prompt --application/pages/page_00122
begin
--   Manifest
--     PAGE: 00122
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
 p_id=>122
,p_tab_set=>'TS1'
,p_name=>'Mail History Report'
,p_step_title=>'Mail History Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3551913338419539891)
,p_plug_name=>'Mail History Report'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>49
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "MAIL_HISTORY_ID", ',
'"MAIL_TO",',
'"MAIL_FROM",',
'"MAIL_CC",',
'"MAIL_BCC",',
'"MAIL_SUBJECT",',
'dbms_lob.substr("MAIL_BODY_HTML",4000,1) "MAIL_BODY_HTML",',
'"MAIL_ON"',
'from "#OWNER#"."EDC_MAIL_HISTORY" ',
'order by 1 desc',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3551913781428539891)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:123:&APP_SESSION.::::P123_MAIL_HISTORY_ID:#MAIL_HISTORY_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'PANKTI.VERMA'
,p_internal_uid=>258437793458392727
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3551913862721539898)
,p_db_column_name=>'MAIL_HISTORY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Mail History Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3551914281253539900)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Mail To'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3551914672558539901)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mail From'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3551915003881539901)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mail Cc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3551915477334539901)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mail Bcc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3551915881472539902)
,p_db_column_name=>'MAIL_SUBJECT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mail Subject'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3551916225919539903)
,p_db_column_name=>'MAIL_BODY_HTML'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mail Body'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3551916635590539903)
,p_db_column_name=>'MAIL_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mail On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3551919933017547702)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2584440'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MAIL_SUBJECT:MAIL_ON:MAIL_BODY_HTML:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3551917630670539906)
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
 p_id=>wwv_flow_imp.id(12420699222688086158)
,p_plug_name=>'Admin Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>20
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY_1'
,p_list_id=>wwv_flow_imp.id(3552315147236588000)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3551917058755539904)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3551913338419539891)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:123'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
