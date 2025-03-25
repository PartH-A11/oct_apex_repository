prompt --application/pages/page_00371
begin
--   Manifest
--     PAGE: 00371
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
 p_id=>371
,p_tab_set=>'TS1'
,p_name=>'Delivery to Site'
,p_step_title=>'Delivery to Site'
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
 p_id=>wwv_flow_imp.id(11052215488304127526)
,p_plug_name=>'IP Supply Management'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:10px;width: 220px;"'
,p_plug_display_sequence=>1
,p_list_id=>wwv_flow_imp.id(11051769575586568669)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052215658062127530)
,p_plug_name=>'Project'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_imp.id(11045180259607407887)
,p_plug_display_sequence=>19
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11052216075861127533)
,p_name=>'Project Information'
,p_parent_plug_id=>wwv_flow_imp.id(11052215658062127530)
,p_template=>wwv_flow_imp.id(11045180167451407887)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "CRO_STUDY"."STUDY_ID" as "STUDY_ID",',
'substr(STUDY_NUMBER,1,15) as "STUDY_NUMBER",',
'PROTOCOL_NUMBER as "PROJECT_CODE",',
'CRO_SPONSOR_PKG.GET_SPONSOR_NAME("CRO_STUDY"."SPONSOR_ID") AS "SPONSOR",',
'substr(TITLE,1,82)||case when length(title) > 20 then ''...'' else null end as "Title",',
'CRO_STUDY_PKG.GET_PM_NAMESFROMCSV("CRO_STUDY"."PM_ID") "Project Manager",',
'"CRO_STUDY"."START_DATE" as "Start Date",',
'"CRO_STUDY"."END_DATE" as "End Date",',
'"CRO_STUDY"."PHASE" as "PHASE",',
'substr(STUDY_ACTIVE,1,20) as "Study Status"',
'--"CRO_STUDY"."NO_OF_PATIENTS" as "# of Patients"',
'from "EDC_STUDY" "CRO_STUDY"',
'where "CRO_STUDY"."STUDY_ID" = :P371_STUDY_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P371_STUDY_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Please Select Project...'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052216289027127533)
,p_query_column_id=>1
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:P16_STUDY_ID:#STUDY_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052216371382127533)
,p_query_column_id=>2
,p_column_alias=>'STUDY_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Protocol Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052216471599127534)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Project Number'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052216572840127534)
,p_query_column_id=>4
,p_column_alias=>'SPONSOR'
,p_column_display_sequence=>4
,p_column_heading=>'Sponsor'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052216678167127534)
,p_query_column_id=>5
,p_column_alias=>'Title'
,p_column_display_sequence=>5
,p_column_heading=>'Protocol Title'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052216779309127534)
,p_query_column_id=>6
,p_column_alias=>'Project Manager'
,p_column_display_sequence=>9
,p_column_heading=>'Project Manager'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052216867582127534)
,p_query_column_id=>7
,p_column_alias=>'Start Date'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052216970974127534)
,p_query_column_id=>8
,p_column_alias=>'End Date'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052217071916127534)
,p_query_column_id=>9
,p_column_alias=>'PHASE'
,p_column_display_sequence=>8
,p_column_heading=>'Phase'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052217163304127534)
,p_query_column_id=>10
,p_column_alias=>'Study Status'
,p_column_display_sequence=>10
,p_column_heading=>'Study Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052217385120127536)
,p_plug_name=>'Delivery to Site'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="min-width: 1000px;margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_plug_new_grid=>true
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "SHIP_ID", ',
'       "SHIP_NO",',
'       "SHIP_DT",',
'       A.STUDY_SITE_ID,',
'       "SHIP_REC_DT",',
'       nvl(ship_status,''Shipment Created'') as "SHIP_STATUS",',
'       "SHIP_COMMENT",',
'       "SHIP_TYPE",',
'       "SHIP_DOSE",',
'       "SHIP_A_QTY",',
'       "SHIP_B_QTY",',
'       "SHIP_TOT_QTY",',
'       "SHIP_REC_QTY",',
'       "SHIPMENT_TIME"',
'  from EDC_IP_SHIPMENT A',
'  JOIN EDC_STUDY_SITES B',
'    ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'  JOIN EDC_SITES C',
'    ON B.SITE_ID = C.SITE_ID',
'   AND B.STUDY_ID = NVL(:P371_STUDY_ID, :APP_EDC_STUDY_ID)',
'   AND A.SHIP_TYPE = 1',
'  AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   --AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID, A.STUDY_DEPOT_ID) = 1',
' ORDER BY to_number(SHIP_NO) desc,SHIP_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_comment=>'style="width: 1000px;"'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11052217556609127536)
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
,p_detail_link=>'f?p=&APP_ID.:372:&SESSION.::&DEBUG.::P372_SHIP_ID:#SHIP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>156544600266065849
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052217680866127539)
,p_db_column_name=>'SHIP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Ship Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SHIP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052217870226127539)
,p_db_column_name=>'SHIP_DT'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'Shipment Date '
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052217970994127540)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'Site'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'STUDY_SITE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218064029127540)
,p_db_column_name=>'SHIP_REC_DT'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Shipment Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_REC_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218165979127540)
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
 p_id=>wwv_flow_imp.id(11052218259513127540)
,p_db_column_name=>'SHIP_COMMENT'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'Comment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SHIP_COMMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218385429127540)
,p_db_column_name=>'SHIP_TYPE'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Ship Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SHIP_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218478389127540)
,p_db_column_name=>'SHIP_DOSE'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Ship Dose'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SHIP_DOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218572372127540)
,p_db_column_name=>'SHIP_A_QTY'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Ship A Qty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SHIP_A_QTY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218659425127540)
,p_db_column_name=>'SHIP_B_QTY'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Ship B Qty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SHIP_B_QTY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218782682127540)
,p_db_column_name=>'SHIP_TOT_QTY'
,p_display_order=>111
,p_column_identifier=>'L'
,p_column_label=>'Total Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'SHIP_TOT_QTY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218860021127541)
,p_db_column_name=>'SHIP_REC_QTY'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Ship Rec Qty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'SHIP_REC_QTY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11052218964816127541)
,p_db_column_name=>'SHIPMENT_TIME'
,p_display_order=>131
,p_column_identifier=>'N'
,p_column_label=>'Shipment Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'SHIPMENT_TIME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3656813509174224302)
,p_db_column_name=>'SHIP_NO'
,p_display_order=>141
,p_column_identifier=>'P'
,p_column_label=>'Shipment No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11052219068097127541)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1565462'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SHIP_NO:SHIP_DT:STUDY_SITE_ID:SHIP_STATUS:'
,p_sort_column_1=>'SHIP_NO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'SHIP_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3656820385533229629)
,p_report_id=>wwv_flow_imp.id(11052219068097127541)
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
 p_id=>wwv_flow_imp.id(11052219567141127545)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062941368406333261)
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
 p_id=>wwv_flow_imp.id(11052219357362127543)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11052217385120127536)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Shipment'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:372:&SESSION.::&DEBUG.:372::'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052215867593127532)
,p_name=>'P371_STUDY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11052215658062127530)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Select Project'
,p_source=>'nvl(:APP_STUDY_ID,:P371_STUDY_ID)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Project --'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap" style="vertical-align:middle;padding:0px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11052219771120127548)
,p_name=>'SET_APP_STUDY_ID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P371_STUDY_ID'
,p_condition_element=>'P371_STUDY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052220078706127549)
,p_event_id=>wwv_flow_imp.id(11052219771120127548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :APP_STUDY_ID := :P371_STUDY_ID;',
'  :APP_CRO_STUDY_SITE_ID := null; -- added to resolve ticket no.521',
'END;'))
,p_attribute_02=>'P371_STUDY_ID'
,p_attribute_03=>'APP_STUDY_ID,APP_CRO_STUDY_SITE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052220276223127549)
,p_event_id=>wwv_flow_imp.id(11052219771120127548)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.submit()'
);
wwv_flow_imp.component_end;
end;
/
