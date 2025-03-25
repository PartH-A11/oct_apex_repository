prompt --application/pages/page_00206
begin
--   Manifest
--     PAGE: 00206
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
 p_id=>206
,p_tab_set=>'TS1'
,p_name=>'Delivery to Depot'
,p_step_title=>'Delivery to Depot'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11051830683866136952)
,p_plug_name=>'IP_INVENTORY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045178973639407883)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11051830858553136954)
,p_plug_name=>'Delivery to Depot'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "SHIP_ID",',
'"SHIP_NO",',
'"SHIP_DT",',
'A.STUDY_SITE_ID,',
'nvl(ship_status,''Shipment Created'') as "SHIP_STATUS",',
'"SHIP_COMMENT",',
'A.CREATED_BY,',
'A.CREATED_DT,',
'A.UPDATED_BY,',
'A.UPDATED_DT',
'from "#OWNER#"."EDC_IP_SHIPMENT" A',
'JOIN EDC_STUDY_SITES B',
'  ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'JOIN EDC_SITES C',
'  ON B.SITE_ID = C.SITE_ID',
' AND B.STUDY_ID = NVL(:P0_STUDY_ID,:APP_EDC_STUDY_ID)',
' AND A.SHIP_TYPE = 2',
'--and edc_user.get_user_site_access(study_site_id,:APP_EDC_USER_TYPE,:APP_EDC_USER,:APP_EDC_USER_ID,:APP_USER_NAME,:APP_EDC_ROLE_ID) = 1',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID , A.STUDY_DEPOT_ID) = 1',
'ORDER BY SHIP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11051831088192136955)
,p_name=>'Shipment Detail of Dispatched Medicine'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.::P207_SHIP_ID:#SHIP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_description=>wwv_flow_string.join(wwv_flow_t_varchar2(
'378',
'P378_SHIP_ID'))
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>156158131849075268
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051831181389136955)
,p_db_column_name=>'SHIP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Ship Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051831357097136955)
,p_db_column_name=>'SHIP_DT'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'Shipment Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051831484400136956)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'Site'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'STUDY_SITE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051831560129136956)
,p_db_column_name=>'SHIP_STATUS'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SHIP_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051831682601136956)
,p_db_column_name=>'SHIP_COMMENT'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Comment'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SHIP_COMMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051831758498136956)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051831857258136956)
,p_db_column_name=>'CREATED_DT'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Created Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_static_id=>'CREATED_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051831986806136956)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11051832064909136956)
,p_db_column_name=>'UPDATED_DT'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Updated Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_static_id=>'UPDATED_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3656813736875224304)
,p_db_column_name=>'SHIP_NO'
,p_display_order=>101
,p_column_identifier=>'L'
,p_column_label=>'Shipment No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11051832168744136957)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1561593'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SHIP_NO:SHIP_DT:STUDY_SITE_ID:SHIP_STATUS:'
,p_sort_column_1=>'SHIP_NO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3656829527371295202)
,p_report_id=>wwv_flow_imp.id(11051832168744136957)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIP_STATUS'
,p_operator=>'='
,p_expr=>'Delivered'
,p_condition_sql=>' (case when ("SHIP_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Delivered''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#A2B0B0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11051832887695136961)
,p_plug_name=>'Drug Supply'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:10px;margin-top:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045178973639407883)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_imp.id(11045184883131407894)
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052039284014645153)
,p_plug_name=>'IP_INVENTORY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>6
,p_list_id=>wwv_flow_imp.id(11051769575586568669)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062472958033846600)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11051832486604136957)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11051830858553136954)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Shipment'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207::'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp.component_end;
end;
/
