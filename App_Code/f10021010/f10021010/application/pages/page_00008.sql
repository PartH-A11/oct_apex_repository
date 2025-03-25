prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_tab_set=>'TS1'
,p_name=>'Document Details'
,p_step_title=>'Document Details'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2688616222092063881)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045216178354133763)
,p_plug_name=>'Document Details'
,p_region_name=>'pg_reg_width'
,p_parent_plug_id=>wwv_flow_imp.id(2688616222092063881)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>12
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11045219381905133773)
,p_name=>'Study Documents'
,p_parent_plug_id=>wwv_flow_imp.id(2688616222092063881)
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "DOC_ID", ',
'"DOC_GROUP_ID",',
'"DOC_NAME",',
'"MIME_TYPE",',
'"FILE_NAME",',
'dbms_lob.getlength("DOC_BLOB") "DOC_BLOB",',
'"STATUS",',
'"VERSION_DATE",',
'"DESCRIPTION",',
'"DOC_VERSION"',
'from "#OWNER#"."EDC_STUDY_DOC" ',
'where DOC_GROUP_ID = :P8_DOC_GROUP_ID',
' ',
'  ',
''))
,p_display_when_condition=>'P8_DOC_GROUP_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183286521407891)
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
 p_id=>wwv_flow_imp.id(11045220180306133775)
,p_query_column_id=>1
,p_column_alias=>'DOC_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_DOC_ID:#DOC_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_link_attr=>'class="edit-doc" onClick="return false;"'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'DOC_ID'
,p_column_comment=>'P36_DOC_ID #DOC_ID# 36'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045220258672133775)
,p_query_column_id=>2
,p_column_alias=>'DOC_GROUP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Doc Group Id'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'DOC_GROUP_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045220387992133775)
,p_query_column_id=>3
,p_column_alias=>'DOC_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Doc Name'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'DOC_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045220486442133775)
,p_query_column_id=>4
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Mime Type'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'MIME_TYPE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045219560759133773)
,p_query_column_id=>5
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'FILE_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045219660334133775)
,p_query_column_id=>6
,p_column_alias=>'DOC_BLOB'
,p_column_display_sequence=>10
,p_column_heading=>'Download'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:EDC_STUDY_DOC:DOC_BLOB:DOC_ID::MIME_TYPE:FILE_NAME:UPDATED_ON::attachment:<img src="#APP_IMAGES#download_btn.png" height="12" width="15">:'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'DOC_BLOB'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045219757454133775)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045223957006133788)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'STATUS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045219867725133775)
,p_query_column_id=>8
,p_column_alias=>'VERSION_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Version Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'VERSION_DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045219973720133775)
,p_query_column_id=>9
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>9
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_DOC'
,p_ref_column_name=>'DESCRIPTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045220081373133775)
,p_query_column_id=>10
,p_column_alias=>'DOC_VERSION'
,p_column_display_sequence=>6
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045220776673133777)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045884676548149279)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180981693407888)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11045204683056824372)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184883131407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046181987557640354)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1.1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045216576633133764)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P8_DOC_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045217365095133765)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_button_name=>'GET_PREVIOUS_DOC_GROUP_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'&lt;'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_DOC_GROUP_ID'')'
,p_button_condition=>'P8_DOC_GROUP_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045217181367133765)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_button_name=>'GET_NEXT_DOC_GROUP_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'&gt;'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_DOC_GROUP_ID'')'
,p_button_condition=>'P8_DOC_GROUP_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045216977305133765)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4134567693344079334)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_button_name=>'AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P8_DOC_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045220570792133775)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045219381905133773)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload New Document'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045216386833133764)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P8_DOC_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045216762602133765)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P8_DOC_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11045223670336133787)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_DOC_GROUP_ID:&P8_DOC_GROUP_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11045217181367133765)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11045223464230133787)
,p_branch_action=>'f?p=&FLOW_ID.:8:&SESSION.::&DEBUG.::P8_DOC_GROUP_ID:&P8_DOC_GROUP_ID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11045217365095133765)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11045223859253133787)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'DELETE'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134340647044020451)
,p_name=>'P8_GROUP_NAME_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134340914427020454)
,p_name=>'P8_STATUS_CHANGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134432516698524305)
,p_name=>'P8_DESCRIPTION_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045217561268133767)
,p_name=>'P8_DESCRIPTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Description </b>'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>500
,p_cHeight=>2
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045217757587133768)
,p_name=>'P8_DOC_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_use_cache_before_default=>'NO'
,p_source=>'DOC_GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045217963349133768)
,p_name=>'P8_DOC_GROUP_ID_COUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045218182438133769)
,p_name=>'P8_DOC_GROUP_ID_NEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045218367066133770)
,p_name=>'P8_DOC_GROUP_ID_PREV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045218578623133770)
,p_name=>'P8_GROUP_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'GROUP_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>200
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045218764591133770)
,p_name=>'P8_STATUS'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_ACTIVE_INACTIVE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''STATUS_ACTIVE_INACTIVE'' and lv.status=1',
'order by lv.sequence'))
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045218972942133771)
,p_name=>'P8_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11045216178354133763)
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11045221087486133780)
,p_validation_name=>'Delete Validation'
,p_validation_sequence=>10
,p_validation=>'select 1 from edc_study_doc where DOC_GROUP_ID=:P8_DOC_GROUP_ID'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'ERROR!!! You can''t delete document with version.'
,p_when_button_pressed=>wwv_flow_imp.id(11045216762602133765)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134426466081465544)
,p_validation_name=>'P8_GROUP_NAME_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P8_GROUP_NAME_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Name" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_GROUP_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P8_DOC_GROUP_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT GROUP_NAME',
'      INTO V_GROUP_NAME',
'      FROM EDC_STUDY_DOC_GROUP',
'     WHERE DOC_GROUP_ID = :P8_DOC_GROUP_ID;',
'',
'    IF V_GROUP_NAME != :P8_GROUP_NAME THEN',
'      RETURN TRUE;',
'    ELSIF V_GROUP_NAME IS NULL AND :P8_GROUP_NAME IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_GROUP_NAME IS NOT NULL AND :P8_GROUP_NAME IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134340647044020451)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134433051089524311)
,p_validation_name=>'P8_STATUS_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P8_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Status" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P8_DOC_GROUP_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_DOC_GROUP',
'     WHERE DOC_GROUP_ID = :P8_DOC_GROUP_ID;',
'',
'    IF V_STATUS != :P8_STATUS THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NULL AND :P8_STATUS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NOT NULL AND :P8_STATUS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134340914427020454)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134433701936524317)
,p_validation_name=>'P8_DESCRIPTION_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P8_DESCRIPTION_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Description" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESCRIPTION VARCHAR2(200);',
'BEGIN',
'  IF :P8_DOC_GROUP_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT DESCRIPTION',
'      INTO V_DESCRIPTION',
'      FROM EDC_STUDY_DOC_GROUP',
'     WHERE DOC_GROUP_ID = :P8_DOC_GROUP_ID;',
'',
'    IF V_DESCRIPTION != :P8_DESCRIPTION THEN',
'      RETURN TRUE;',
'    ELSIF V_DESCRIPTION IS NULL AND :P8_DESCRIPTION IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DESCRIPTION IS NOT NULL AND :P8_DESCRIPTION IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134432516698524305)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11045222162579133783)
,p_name=>'Upload doc For Study (Page 11)'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11045220570792133775)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11045222478334133785)
,p_event_id=>wwv_flow_imp.id(11045222162579133783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_DOC_GROUP_ID:&P8_DOC_GROUP_ID.'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'50'
,p_attribute_09=>'50'
,p_da_action_comment=>'.uMessageText'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11045222967757133786)
,p_name=>'edit Upload doc For Study (Page 11)'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit-doc'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11045223283036133786)
,p_event_id=>wwv_flow_imp.id(11045222967757133786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'50'
,p_attribute_09=>'50'
,p_da_action_comment=>'.uMessageText'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11045222560226133786)
,p_name=>'Auto refresh Model Page'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11045222856880133786)
,p_event_id=>wwv_flow_imp.id(11045222560226133786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload(true); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134422213536461228)
,p_name=>'P8_GROUP_NAME_CHANGE hide'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_GROUP_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P8_DOC_GROUP_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT GROUP_NAME',
'      INTO V_GROUP_NAME',
'      FROM EDC_STUDY_DOC_GROUP',
'     WHERE DOC_GROUP_ID = :P8_DOC_GROUP_ID;',
'',
'    IF V_GROUP_NAME != :P8_GROUP_NAME THEN',
'      RETURN FALSE;',
'    ELSIF V_GROUP_NAME IS NULL AND :P8_GROUP_NAME IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_GROUP_NAME IS NOT NULL AND :P8_GROUP_NAME IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4134422578295461238)
,p_event_id=>wwv_flow_imp.id(4134422213536461228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_GROUP_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134423073557461238)
,p_event_id=>wwv_flow_imp.id(4134422213536461228)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_GROUP_NAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134432607111524306)
,p_name=>'P8_STATUS_CHANGE hide'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P8_DOC_GROUP_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_DOC_GROUP',
'     WHERE DOC_GROUP_ID = :P8_DOC_GROUP_ID;',
'',
'    IF V_STATUS != :P8_STATUS THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NULL AND :P8_STATUS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NOT NULL AND :P8_STATUS IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4134432740323524307)
,p_event_id=>wwv_flow_imp.id(4134432607111524306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134432795699524308)
,p_event_id=>wwv_flow_imp.id(4134432607111524306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_STATUS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134433242646524312)
,p_name=>'P8_DESCRIPTION_CHANGE hide'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESCRIPTION VARCHAR2(200);',
'BEGIN',
'  IF :P8_DOC_GROUP_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DESCRIPTION',
'      INTO V_DESCRIPTION',
'      FROM EDC_STUDY_DOC_GROUP',
'     WHERE DOC_GROUP_ID = :P8_DOC_GROUP_ID;',
'',
'    IF V_DESCRIPTION != :P8_DESCRIPTION THEN',
'      RETURN FALSE;',
'    ELSIF V_DESCRIPTION IS NULL AND :P8_DESCRIPTION IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DESCRIPTION IS NOT NULL AND :P8_DESCRIPTION IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4134433341897524313)
,p_event_id=>wwv_flow_imp.id(4134433242646524312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_DESCRIPTION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134433437239524314)
,p_event_id=>wwv_flow_imp.id(4134433242646524312)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_DESCRIPTION_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134425532522463945)
,p_name=>'P8_GROUP_NAME_CHANGE show'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_GROUP_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P8_DOC_GROUP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134425866176463946)
,p_event_id=>wwv_flow_imp.id(4134425532522463945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_GROUP_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134432909670524309)
,p_name=>'P8_STATUS_CHANGE show'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P8_DOC_GROUP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134432978204524310)
,p_event_id=>wwv_flow_imp.id(4134432909670524309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134433526470524315)
,p_name=>'P8_DESCRIPTION_CHANGE show'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_DESCRIPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P8_DOC_GROUP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134433638675524316)
,p_event_id=>wwv_flow_imp.id(4134433526470524315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_DESCRIPTION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4135073798223989470)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4134567693344079334)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4135074236731989472)
,p_event_id=>wwv_flow_imp.id(4135073798223989470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_STUDY_DOC_GROUP,&P8_DOC_GROUP_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045221185070133781)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_STUDY_DOC_GROUP'
,p_attribute_02=>'EDC_STUDY_DOC_GROUP'
,p_attribute_03=>'P8_DOC_GROUP_ID'
,p_attribute_04=>'DOC_GROUP_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11045221185070133781
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045221386865133782)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'EDC_STUDY_DOC_GROUP'
,p_attribute_03=>'P8_DOC_GROUP_ID'
,p_attribute_04=>'DOC_GROUP_ID'
,p_attribute_07=>'DOC_GROUP_ID'
,p_attribute_09=>'P8_DOC_GROUP_ID_NEXT'
,p_attribute_10=>'P8_DOC_GROUP_ID_PREV'
,p_attribute_13=>'P8_DOC_GROUP_ID_COUNT'
,p_attribute_14=>'STUDY_ID = :APP_EDC_STUDY_ID'
,p_process_error_message=>'Unable to run Get Next or Previous Primary Key Value process.'
,p_internal_uid=>11045221386865133782
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045221570218133782)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'    L_PRIMARY_KEY NUMBER;',
'    BEGIN',
'     SELECT nvl(MAX(DOC_GROUP_ID),0) + 1',
'     INTO L_PRIMARY_KEY',
'     FROM EDC_STUDY_DOC_GROUP;',
'     RETURN L_PRIMARY_KEY;',
'    END;',
'begin ',
'  :P8_DOC_GROUP_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(11045216386833133764)
,p_internal_uid=>11045221570218133782
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045221778912133782)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_STUDY_DOC_GROUP'
,p_attribute_02=>'EDC_STUDY_DOC_GROUP'
,p_attribute_03=>'P8_DOC_GROUP_ID'
,p_attribute_04=>'DOC_GROUP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_STUDY_DOC_GROUP.'
,p_internal_uid=>11045221778912133782
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045221983754133782)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'33'
,p_process_when_button_id=>wwv_flow_imp.id(11045216762602133765)
,p_internal_uid=>11045221983754133782
);
wwv_flow_imp.component_end;
end;
/
