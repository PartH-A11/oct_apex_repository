prompt --application/pages/page_00380
begin
--   Manifest
--     PAGE: 00380
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
 p_id=>380
,p_tab_set=>'TS1'
,p_name=>'Received at Depot'
,p_step_title=>'Received at Depot'
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
 p_id=>wwv_flow_imp.id(12153223526687877630)
,p_plug_name=>'IP Supply Management'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:10px;width: 220px;"'
,p_plug_display_sequence=>1
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12153223729493877632)
,p_plug_name=>'Received at Depot'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>21
,p_plug_new_grid=>true
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "SHIP_ID",',
'"SHIP_NO",',
'"SHIP_DT",',
'A.STUDY_SITE_ID,',
'"SHIP_REC_DT",',
'"SHIP_STATUS",',
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
' AND A.SHIP_TYPE = 2 ',
' AND B.STUDY_ID = NVL(:P0_STUDY_ID,:APP_EDC_STUDY_ID)',
' AND SHIP_STATUS in (''Dispatched'',''Delivered'')',
' AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID, a.STUDY_DEPOT_ID) = 1',
'ORDER BY SHIP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "SHIP_ID", ',
'"SHIP_NO",',
'"SHIP_DT",',
'"STUDY_SITE_ID",',
'"SHIP_REC_DT",',
'"SHIP_STATUS",',
'"SHIP_COMMENT",',
'"CREATED_BY",',
'"CREATED_DT",',
'"UPDATED_BY",',
'"UPDATED_DT"',
'from "#OWNER#"."CRO_IP_SHIPMENT" ',
'where SHIP_TYPE = 2 AND STUDY_SITE_ID IN (SELECT ',
'CRO_STUDY_SITE_ID FROM CRO_STUDY_SITES WHERE STUDY_ID = NVL(:P0_STUDY_ID,:APP_STUDY_ID))',
'and SHIP_STATUS in (''Dispatched'',''Delivered'')'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12153223946310877633)
,p_name=>' IP Received at Depot'
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
,p_detail_link=>'f?p=&APP_ID.:381:&SESSION.::&DEBUG.::P381_SHIP_ID:#SHIP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>156600221826311853
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153224045090877633)
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
 p_id=>wwv_flow_imp.id(12153224230038877633)
,p_db_column_name=>'SHIP_DT'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'Shipment Date 	'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153224329206877634)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'Site'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'STUDY_SITE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153224433088877634)
,p_db_column_name=>'SHIP_REC_DT'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Received Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_REC_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153224544051877634)
,p_db_column_name=>'SHIP_STATUS'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SHIP_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153224657090877634)
,p_db_column_name=>'SHIP_COMMENT'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'Ship Comment'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SHIP_COMMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153224725169877634)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153224824528877634)
,p_db_column_name=>'CREATED_DT'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Created Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_static_id=>'CREATED_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153224947293877634)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12153225046238877634)
,p_db_column_name=>'UPDATED_DT'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Updated Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_static_id=>'UPDATED_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4757764587886728398)
,p_db_column_name=>'SHIP_NO'
,p_display_order=>111
,p_column_identifier=>'M'
,p_column_label=>'Shipment No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12153225142144877634)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1566015'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SHIP_NO:SHIP_DT:STUDY_SITE_ID:SHIP_REC_DT:SHIP_STATUS:'
,p_sort_column_1=>'SHIP_NO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4757779675408798076)
,p_report_id=>wwv_flow_imp.id(12153225142144877634)
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
 p_id=>wwv_flow_imp.id(12153225652180877637)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12153244256485988698)
,p_plug_name=>'IP Supply Management'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>1.5
,p_plug_display_point=>'BODY_3'
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
 p_id=>wwv_flow_imp.id(12153245233545001030)
,p_plug_name=>'IP_INVENTORY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>6
,p_list_id=>wwv_flow_imp.id(12152720343728072762)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12163761051628400658)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1.5
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12153225435034877635)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12153223729493877632)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:381:&SESSION.::&DEBUG.:381::'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
);
wwv_flow_imp.component_end;
end;
/
