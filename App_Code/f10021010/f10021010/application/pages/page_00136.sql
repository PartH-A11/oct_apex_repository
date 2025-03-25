prompt --application/pages/page_00136
begin
--   Manifest
--     PAGE: 00136
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
 p_id=>136
,p_tab_set=>'TS1'
,p_name=>'Depot Master Detail'
,p_step_title=>'Depot Master Detail'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3108247226233467727)
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
 p_id=>wwv_flow_imp.id(3108672841226386792)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3108231308561467736)
,p_plug_name=>'Deport Details'
,p_parent_plug_id=>wwv_flow_imp.id(3108672841226386792)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3107547674698785583)
,p_plug_name=>'Audit Trail'
,p_parent_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131027748911980)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12345748603898297757)
,p_name=>'Deport Contacts'
,p_parent_plug_id=>wwv_flow_imp.id(3108672841226386792)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'*',
'--CM.CONS "Consignee"',
'from EDC_DEPOT_CONTACTS cM',
'WHERE CM.STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID'))
,p_display_when_condition=>'P136_STUDY_DEPOT_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P136_STUDY_DEPOT_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146134054662911984)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3104774747369252305)
,p_query_column_id=>1
,p_column_alias=>'DEPOT_CONTACT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.::P126_DEPOT_CONTACT_ID:#DEPOT_CONTACT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_report_column_required_role=>wwv_flow_imp.id(12146158755186328484)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_DEPOT_CONTACTS'
,p_ref_column_name=>'DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3104774878274252306)
,p_query_column_id=>2
,p_column_alias=>'STUDY_DEPOT_ID'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108672139428386785)
,p_query_column_id=>3
,p_column_alias=>'SALUTION'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108568192804325304)
,p_query_column_id=>4
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'First Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'FIRST_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108568554326325304)
,p_query_column_id=>5
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Last Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'LAST_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108569334742325304)
,p_query_column_id=>6
,p_column_alias=>'PHONE'
,p_column_display_sequence=>7
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'PHONE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108568962963325304)
,p_query_column_id=>7
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>6
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'EMAIL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108569766587325304)
,p_query_column_id=>8
,p_column_alias=>'FAX'
,p_column_display_sequence=>9
,p_column_heading=>'Fax'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'FAX'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108570573935325304)
,p_query_column_id=>9
,p_column_alias=>'NOTES'
,p_column_display_sequence=>8
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'NOTES'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108570975216325303)
,p_query_column_id=>10
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12146174946784637882)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'STATUS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108672286101386786)
,p_query_column_id=>11
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108672354585386787)
,p_query_column_id=>12
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108672450469386788)
,p_query_column_id=>13
,p_column_alias=>'UPDATED_ON'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108672555887386789)
,p_query_column_id=>14
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>15
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108672656161386790)
,p_query_column_id=>15
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Country'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3108229471511484868)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12345268256246341772)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;width: 225px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(12146155451198328465)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Study Submenu',
'',
'style="margin-right:3px;width:97%;"'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108231762619467735)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P136_STUDY_DEPOT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108232000466467735)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108571786020325303)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12345748603898297757)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:126:P126_STUDY_DEPOT_ID,P126_COUNTRY_ID:&P136_STUDY_DEPOT_ID.,&P136_COUNTRY_ID.'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108231640592467735)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P136_STUDY_DEPOT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108231929944467735)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
,p_button_comment=>'P136_STUDY_DEPOT_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108403738907387904)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_button_name=>'AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P136_STUDY_DEPOT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3108233559905467735)
,p_branch_action=>'f?p=&APP_ID.:135:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1886117007223453816)
,p_name=>'P136_DEPOT_ID_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2905829264908514996)
,p_name=>'P136_STUDY_SITES_CHANGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107548116078785587)
,p_name=>'P136_STATUS_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107548790245785594)
,p_name=>'P136_DESCRIPTION_CHANGE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107669213967480207)
,p_name=>'P136_ADDRESS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.address_line1 ||',
'(case when d.address_line1 is not null then '','' else '''' end)||d.address_line2||',
'(case when d.address_line2 is not null then '','' else '''' end)||d.city||',
'(case when d.city is not null then '','' else '''' end)||d.state||',
'(case when d.state is not null then '','' else '''' end)||d.zip_code||',
'(case when d.zip_code is not null then '','' else '''' end)||',
'(select l.COUNTRY_NAME from EDC_COUNTRY_MST l where l.country_id = d.country_id)  AS ADDRESS from edc_depot d',
'WHERE d.DEPOT_ID in(:P136_DEPOT_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108233944022467734)
,p_name=>'P136_STUDY_DEPOT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_source=>'STUDY_DEPOT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108234381032467734)
,p_name=>'P136_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108234770350467733)
,p_name=>'P136_DEPOT_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Depot'
,p_source=>'DEPOT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPOT_NO||'' - ''||DEPOT_NAME D, DEPOT_ID R',
'  FROM EDC_DEPOT',
' WHERE DEPOT_ID IN (SELECT DEPOT_ID',
'                      FROM EDC_DEPOT',
'                     MINUS',
'                    SELECT DEPOT_ID',
'                      FROM EDC_STUDY_DEPOT',
'                     WHERE DECODE(:P136_STUDY_DEPOT_ID,NULL,1,STUDY_DEPOT_ID) != DECODE(:P136_STUDY_DEPOT_ID,NULL,2,:P136_STUDY_DEPOT_ID)',
'                       AND STUDY_ID = :APP_EDC_STUDY_ID)',
' ORDER BY DEPOT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPOT_NO AS D, DEPOT_ID AS R',
'  FROM EDC_DEPOT',
'  WHERE DEPOT_ID IS NOT NULL',
'  AND :P136_STUDY_DEPOT_ID IS NOT NULL',
'  and (DEPOT_ID NOT IN(select DEPOT_ID FROM EDC_STUDY_DEPOT) OR DEPOT_ID = :P136_DEPOT_ID)',
'UNION',
'SELECT DEPOT_NO AS D, DEPOT_ID AS R',
'  FROM EDC_DEPOT',
'  WHERE DEPOT_ID NOT IN(SELECT DEPOT_ID FROM EDC_STUDY_DEPOT)',
'  AND :P136_STUDY_DEPOT_ID IS NULL'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108235159309467733)
,p_name=>'P136_DEPOT_NO'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Depot No'
,p_source=>'DEPOT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_DNO VARCHAR2(300);',
'BEGIN',
'    SELECT LPAD(NVL(MAX(STUDY_DEPOT_ID),0)+1,2,00) INTO V_DNO FROM EDC_STUDY_DEPOT;',
'    RETURN V_DNO;',
'EXCEPTION',
'    WHEN OTHERS THEN NULL;',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108235586932467733)
,p_name=>'P136_USER_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108236008064467733)
,p_name=>'P136_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'STATUS_ACTIVE_INACTIVE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.display_value d, a.stored_value r from edc_lov_values a, edc_lov b',
' where a.lov_id = b.lov_id',
'   and b.lov_name = ''STATUS_ACTIVE_INACTIVE''',
'order by 1'))
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108236420274467733)
,p_name=>'P136_DESCRIPTION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>2
,p_label_alignment=>'CENTER-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108236800943467733)
,p_name=>'P136_CREATED_ON'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3107547674698785583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created On'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108237614705467732)
,p_name=>'P136_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3107547674698785583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>300
,p_tag_attributes=>'readonly'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108237983922467732)
,p_name=>'P136_UPDATED_ON'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3107547674698785583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated On'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108238772893467732)
,p_name=>'P136_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3107547674698785583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>300
,p_tag_attributes=>'readonly'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108354282013164187)
,p_name=>'P136_DEPOT_NO_CHANGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3109487333394654881)
,p_name=>'P136_STUDY_SITES'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Study Sites'
,p_source=>'STUDY_SITES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.SITE_NUMBER||'' ''||B.INVNAME||'' (''||B.FIRST_NAME||'' ''||B.LAST_NAME||'')'' D, A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A',
'  JOIN EDC_SITES B',
'    ON A.SITE_ID = B.SITE_ID',
'   AND B.COUNTRY_ID = :P136_COUNTRY_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
' ORDER BY A.STUDY_SITE_ID'))
,p_lov_cascade_parent_items=>'P136_COUNTRY_ID'
,p_ajax_items_to_submit=>'P136_COUNTRY_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>4
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3109487491189654882)
,p_name=>'P136_COUNTRY_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3108231308561467736)
,p_use_cache_before_default=>'NO'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108356977220153094)
,p_validation_name=>'P136_DEPOT_NO_CHANGE'
,p_validation_sequence=>110
,p_validation=>'P136_DEPOT_NO_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Dept No" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DEPOT_NO VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT DEPOT_NO',
'      INTO V_DEPOT_NO',
'      FROM EDC_STUDY_DEPOT',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_DEPOT_NO != :P136_DEPOT_NO THEN',
'      RETURN TRUE;',
'    ELSIF V_DEPOT_NO IS NULL AND :P136_DEPOT_NO IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DEPOT_NO IS NOT NULL AND :P136_DEPOT_NO IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3107548656364785593)
,p_validation_name=>'P136_STATUS_CHANGE'
,p_validation_sequence=>120
,p_validation=>'P136_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Status" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_DEPOT',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_STATUS != :P136_STATUS THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NULL AND :P136_STATUS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NOT NULL AND :P136_STATUS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2905829365258514997)
,p_validation_name=>'P136_STUDY_SITES_CHANGE'
,p_validation_sequence=>130
,p_validation=>'P136_STUDY_SITES_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "STUDY_SITES" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_SITES VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STUDY_SITES',
'      INTO V_STUDY_SITES',
'      FROM EDC_STUDY_DEPOT',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_STUDY_SITES != :P136_STUDY_SITES THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_SITES IS NULL AND :P136_STUDY_SITES IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_SITES IS NOT NULL AND :P136_STUDY_SITES IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3107549218320785598)
,p_validation_name=>'P136_DESCRIPTION_CHANGE'
,p_validation_sequence=>140
,p_validation=>'P136_DESCRIPTION_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Description" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESCRIPTION VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT DESCRIPTION',
'      INTO V_DESCRIPTION',
'      FROM EDC_STUDY_DEPOT',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_DESCRIPTION != :P136_DESCRIPTION THEN',
'      RETURN TRUE;',
'    ELSIF V_DESCRIPTION IS NULL AND :P136_DESCRIPTION IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DESCRIPTION IS NOT NULL AND :P136_DESCRIPTION IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3104775800843252315)
,p_validation_name=>'number is numerical'
,p_validation_sequence=>150
,p_validation=>'P136_DEPOT_NO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Please Enter Numerical Value Only'
,p_associated_item=>wwv_flow_imp.id(3108235159309467733)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108354700604161674)
,p_name=>'P136_DEPOT_NO_CHANGE hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DEPOT_NO VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DEPOT_NO',
'      INTO V_DEPOT_NO',
'      FROM EDC_STUDY_DEPOT ',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_DEPOT_NO != :P136_DEPOT_NO THEN',
'      RETURN FALSE;',
'    ELSIF V_DEPOT_NO IS NULL AND :P136_DEPOT_NO IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DEPOT_NO IS NOT NULL AND :P136_DEPOT_NO IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108355062407161673)
,p_event_id=>wwv_flow_imp.id(3108354700604161674)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_DEPOT_NO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108355552813161672)
,p_event_id=>wwv_flow_imp.id(3108354700604161674)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_DEPOT_NO_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1886117155918453817)
,p_name=>'P136_DEPOT_ID_CHANGE hide'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DEPOT_ID VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DEPOT_ID',
'      INTO V_DEPOT_ID',
'      FROM EDC_STUDY_DEPOT ',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_DEPOT_ID != :P136_DEPOT_ID THEN',
'      RETURN FALSE;',
'    ELSIF V_DEPOT_ID IS NULL AND :P136_DEPOT_ID IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DEPOT_ID IS NOT NULL AND :P136_DEPOT_ID IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1886117248993453818)
,p_event_id=>wwv_flow_imp.id(1886117155918453817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_DEPOT_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1886117355326453819)
,p_event_id=>wwv_flow_imp.id(1886117155918453817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_DEPOT_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3107548147190785588)
,p_name=>'P136_STATUS_CHANGE hide'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_DEPOT ',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_STATUS != :P136_STATUS THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NULL AND :P136_STATUS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NOT NULL AND :P136_STATUS IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3107548300068785589)
,p_event_id=>wwv_flow_imp.id(3107548147190785588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3107548391621785590)
,p_event_id=>wwv_flow_imp.id(3107548147190785588)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_STATUS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2905829645340515000)
,p_name=>'P136_STUDY_SITES_CHANGE hide'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_SITES VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STUDY_SITES',
'      INTO V_STUDY_SITES',
'      FROM EDC_STUDY_DEPOT ',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_STUDY_SITES != :P136_STUDY_SITES THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_SITES IS NULL AND :P136_STUDY_SITES IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_SITES IS NOT NULL AND :P136_STUDY_SITES IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2905829728561515001)
,p_event_id=>wwv_flow_imp.id(2905829645340515000)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_STUDY_SITES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2905829823142515002)
,p_event_id=>wwv_flow_imp.id(2905829645340515000)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_STUDY_SITES_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3107548909459785595)
,p_name=>'P136_DESCRIPTION_CHANGE hide'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESCRIPTION VARCHAR2(200);',
'BEGIN',
'  IF :P136_STUDY_DEPOT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DESCRIPTION',
'      INTO V_DESCRIPTION',
'      FROM EDC_STUDY_DEPOT ',
'     WHERE STUDY_DEPOT_ID = :P136_STUDY_DEPOT_ID;',
'',
'    IF V_DESCRIPTION != :P136_DESCRIPTION THEN',
'      RETURN FALSE;',
'    ELSIF V_DESCRIPTION IS NULL AND :P136_DESCRIPTION IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DESCRIPTION IS NOT NULL AND :P136_DESCRIPTION IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3107548953376785596)
,p_event_id=>wwv_flow_imp.id(3107548909459785595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_DESCRIPTION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3107549083729785597)
,p_event_id=>wwv_flow_imp.id(3107548909459785595)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_DESCRIPTION_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108355970374158731)
,p_name=>'P136_DEPOT_NO_CHANGE show'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P136_DEPOT_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P136_STUDY_DEPOT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108356347976158731)
,p_event_id=>wwv_flow_imp.id(3108355970374158731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_DEPOT_NO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3107548485743785591)
,p_name=>'P136_STATUS_CHANGE show'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P136_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P136_STUDY_DEPOT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3107548585852785592)
,p_event_id=>wwv_flow_imp.id(3107548485743785591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2905829445795514998)
,p_name=>'P136_STUDY_SITES_CHANGE show'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P136_STUDY_SITES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P136_STUDY_DEPOT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2905829539828514999)
,p_event_id=>wwv_flow_imp.id(2905829445795514998)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_STUDY_SITES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3107549312148785599)
,p_name=>'P136_DESCRIPTION_CHANGE show'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P136_DESCRIPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P136_STUDY_DEPOT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3107549336803785600)
,p_event_id=>wwv_flow_imp.id(3107549312148785599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_DESCRIPTION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108404168530386424)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3108403738907387904)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108404590599386424)
,p_event_id=>wwv_flow_imp.id(3108404168530386424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_STUDY_DEPOT,&P136_STUDY_DEPOT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'70'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3109487564477654883)
,p_name=>'Set Country Id'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P136_DEPOT_ID'
,p_condition_element=>'P136_DEPOT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3109487726511654884)
,p_event_id=>wwv_flow_imp.id(3109487564477654883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P136_COUNTRY_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNTRY_ID',
'  FROM EDC_DEPOT',
' WHERE DEPOT_ID = :P136_DEPOT_ID'))
,p_attribute_07=>'P136_DEPOT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108239590978467731)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_STUDY_DEPOT'
,p_attribute_02=>'EDC_STUDY_DEPOT'
,p_attribute_03=>'P136_STUDY_DEPOT_ID'
,p_attribute_04=>'STUDY_DEPOT_ID'
,p_internal_uid=>2007288822836963638
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108239963104467731)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_STUDY_DEPOT'
,p_attribute_02=>'EDC_STUDY_DEPOT'
,p_attribute_03=>'P136_STUDY_DEPOT_ID'
,p_attribute_04=>'STUDY_DEPOT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2007289194962963638
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108240400727467731)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3108231929944467735)
,p_internal_uid=>2007289632585963638
);
wwv_flow_imp.component_end;
end;
/
