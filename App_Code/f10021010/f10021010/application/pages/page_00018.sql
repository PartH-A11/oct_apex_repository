prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_tab_set=>'TS1'
,p_name=>'Site Contacts'
,p_step_title=>'Site Contacts'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11046385058875880368)
,p_name=>'Site Information'
,p_template=>wwv_flow_imp.id(11045180167451407887)
,p_display_sequence=>5
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.site_number,invname,a.user_id,c.firstname||'' ''||c.lastname ',
'  from EDC_STUDY_SITES a, edc_sites b,edc_users c',
' where a.site_id = b.site_id',
'   and a.user_id = c.user_id',
'   and a.study_site_id = :P18_STUDY_SITE_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_imp.id(11046385263586880368)
,p_query_column_id=>1
,p_column_alias=>'SITE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Site Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046385386939880369)
,p_query_column_id=>2
,p_column_alias=>'INVNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046385482825880369)
,p_query_column_id=>3
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>3
,p_column_heading=>'USER_ID'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046385563686880369)
,p_query_column_id=>4
,p_column_alias=>'C.FIRSTNAME||''''||C.LASTNAME'
,p_column_display_sequence=>4
,p_column_heading=>'CRA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046385670107880371)
,p_plug_name=>'Site Contacts'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>25
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046389077661880379)
,p_plug_name=>'Site Contacts'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046394872553055173)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046395370259064001)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180981693407888)
,p_plug_display_sequence=>15
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046386085274880372)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_condition=>'P18_SITE_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046386465189880372)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046385867602880371)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186787997407898)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P18_SITE_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046386258360880372)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
,p_button_comment=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4135207909545426716)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_button_name=>'Audit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11046390183746880383)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2006718126092976111)
,p_name=>'P18_COUNTRY_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_country NUMBER;',
'  V_SITE_ID NUMBER;',
'begin',
'  SELECT SITE_ID',
'    INTO V_SITE_ID',
'    FROM EDC_STUDY_SITES',
'   WHERE STUDY_SITE_ID = :P18_STUDY_SITE_ID;',
'',
'select s.country_id into  v_country',
'from edc_sites s join edc_study_sites si',
'on s.site_id = si.site_id',
'where s.site_id = V_SITE_ID;',
'return v_country;',
'end;',
'',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930719894525261452)
,p_name=>'P18_CONS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Consignee</b>'
,p_source=>'CONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'select null d, ''Yes'' r from dual'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930719997708261453)
,p_name=>'P18_CONS_CHANGE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134579594944103721)
,p_name=>'P18_FIRST_NAME_CHANGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
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
 p_id=>wwv_flow_imp.id(4134580285907103728)
,p_name=>'P18_LAST_NAME_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
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
 p_id=>wwv_flow_imp.id(4134580971868103735)
,p_name=>'P18_ROLE_CHANGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
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
 p_id=>wwv_flow_imp.id(4134581675131103742)
,p_name=>'P18_STATUS_CHANGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
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
 p_id=>wwv_flow_imp.id(4134581821703103743)
,p_name=>'P18_EMAIL_CHANGE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
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
 p_id=>wwv_flow_imp.id(4134581943520103744)
,p_name=>'P18_PHONE_CHANGE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
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
 p_id=>wwv_flow_imp.id(4134581991628103745)
,p_name=>'P18_FAX_CHANGE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
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
 p_id=>wwv_flow_imp.id(4134582103731103746)
,p_name=>'P18_NOTES_CHANGE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
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
 p_id=>wwv_flow_imp.id(4134806993797983932)
,p_name=>'P18_DESIGNATION_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046386674017880374)
,p_name=>'P18_DESIGNATION'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'DESIGNATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_USER_TITLE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''USER_TITLE'' and lv.status=1',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046386880422880375)
,p_name=>'P18_EMAIL'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046387062276880375)
,p_name=>'P18_FAX'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Fax </b> '
,p_source=>'FAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>60
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046387262546880375)
,p_name=>'P18_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>60
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046387481523880375)
,p_name=>'P18_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>60
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046387676060880376)
,p_name=>'P18_NOTES'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Notes </b>'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>200
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046387865513880376)
,p_name=>'P18_PHONE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Phone </b>'
,p_source=>'PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>60
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046388086556880376)
,p_name=>'P18_ROLE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role'
,p_source=>'ROLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_SITE_CONTACT_ROLE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''SITE_CONTACT_ROLE'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046388283222880376)
,p_name=>'P18_SITE_CONTACT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site Contact Id'
,p_source=>'SITE_CONTACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046388480186880376)
,p_name=>'P18_STATUS'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
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
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046388656553880377)
,p_name=>'P18_STUDY_SITE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11046385670107880371)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Study Site Id'
,p_source=>'STUDY_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134810258624001010)
,p_validation_name=>'P18_DESIGNATION_CHANGE'
,p_validation_sequence=>10
,p_validation=>'P18_DESIGNATION_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Title" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESIGNATION VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT DESIGNATION',
'      INTO V_DESIGNATION',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_DESIGNATION != :P18_DESIGNATION THEN',
'      RETURN TRUE;',
'    ELSIF V_DESIGNATION IS NULL AND :P18_DESIGNATION IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DESIGNATION IS NOT NULL AND :P18_DESIGNATION IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134806993797983932)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134579873069103724)
,p_validation_name=>'P18_FIRST_NAME_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P18_FIRST_NAME_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "First Name" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FIRST_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT FIRST_NAME',
'      INTO V_FIRST_NAME',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_FIRST_NAME != :P18_FIRST_NAME THEN',
'      RETURN TRUE;',
'    ELSIF V_FIRST_NAME IS NULL AND :P18_FIRST_NAME IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_FIRST_NAME IS NOT NULL AND :P18_FIRST_NAME IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134579594944103721)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134580385051103729)
,p_validation_name=>'P18_LAST_NAME_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P18_LAST_NAME_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Last Name" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_LAST_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT LAST_NAME',
'      INTO V_LAST_NAME',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_LAST_NAME != :P18_LAST_NAME THEN',
'      RETURN TRUE;',
'    ELSIF V_LAST_NAME IS NULL AND :P18_LAST_NAME IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_LAST_NAME IS NOT NULL AND :P18_LAST_NAME IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134580285907103728)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134581057572103736)
,p_validation_name=>'P18_ROLE_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P18_ROLE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Role" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ROLE VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT ROLE',
'      INTO V_ROLE',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_ROLE != :P18_ROLE THEN',
'      RETURN TRUE;',
'    ELSIF V_ROLE IS NULL AND :P18_ROLE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_ROLE IS NOT NULL AND :P18_ROLE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134580971868103735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134886070114321053)
,p_validation_name=>'P18_STATUS_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P18_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Status" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_STATUS != :P18_STATUS THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NULL AND :P18_STATUS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NOT NULL AND :P18_STATUS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134581675131103742)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134582683553103752)
,p_validation_name=>'P18_EMAIL_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P18_EMAIL_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Email" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EMAIL VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EMAIL',
'      INTO V_EMAIL',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_EMAIL != :P18_EMAIL THEN',
'      RETURN TRUE;',
'    ELSIF V_EMAIL IS NULL AND :P18_EMAIL IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EMAIL IS NOT NULL AND :P18_EMAIL IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134581821703103743)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134896115402382908)
,p_validation_name=>'P18_PHONE_CHANGE'
,p_validation_sequence=>70
,p_validation=>'P18_PHONE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Phone" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PHONE VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT PHONE',
'      INTO V_PHONE',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_PHONE != :P18_PHONE THEN',
'      RETURN TRUE;',
'    ELSIF V_PHONE IS NULL AND :P18_PHONE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_PHONE IS NOT NULL AND :P18_PHONE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134581943520103744)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134896746772382914)
,p_validation_name=>'P18_FAX_CHANGE'
,p_validation_sequence=>80
,p_validation=>'P18_FAX_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Fax" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FAX VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT FAX',
'      INTO V_FAX',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_FAX != :P18_FAX THEN',
'      RETURN TRUE;',
'    ELSIF V_FAX IS NULL AND :P18_FAX IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_FAX IS NOT NULL AND :P18_FAX IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134581991628103745)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134896770657382915)
,p_validation_name=>'P18_NOTES_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P18_NOTES_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Notes" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_NOTES VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT NOTES',
'      INTO V_NOTES',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_NOTES != :P18_NOTES THEN',
'      RETURN TRUE;',
'    ELSIF V_NOTES IS NULL AND :P18_NOTES IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_NOTES IS NOT NULL AND :P18_NOTES IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134582103731103746)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2930720048836261454)
,p_validation_name=>'P18_CONS_CHANGE'
,p_validation_sequence=>100
,p_validation=>'P18_CONS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Consignee" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CONS VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT CONS',
'      INTO V_CONS',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_CONS != :P18_CONS THEN',
'      RETURN TRUE;',
'    ELSIF V_CONS IS NULL AND :P18_CONS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_CONS IS NOT NULL AND :P18_CONS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(2930719997708261453)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134813466648029416)
,p_name=>'P18_DESIGNATION_CHANGE show'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_DESIGNATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134813865409029425)
,p_event_id=>wwv_flow_imp.id(4134813466648029416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DESIGNATION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134579681748103722)
,p_name=>'P18_FIRST_NAME_CHANGE show'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_FIRST_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134579827283103723)
,p_event_id=>wwv_flow_imp.id(4134579681748103722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FIRST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134580448008103730)
,p_name=>'P18_LAST_NAME_CHANGE show'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_LAST_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134580585035103731)
,p_event_id=>wwv_flow_imp.id(4134580448008103730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_LAST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134581219269103737)
,p_name=>'P18_ROLE_CHANGE sohw'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_ROLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134581310166103738)
,p_event_id=>wwv_flow_imp.id(4134581219269103737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ROLE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134814790197035167)
,p_name=>'P18_DESIGNATION_CHANGE hide'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESIGNATION VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DESIGNATION',
'      INTO V_DESIGNATION',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_DESIGNATION != :P18_DESIGNATION THEN',
'      RETURN FALSE;',
'    ELSIF V_DESIGNATION IS NULL AND :P18_DESIGNATION IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DESIGNATION IS NOT NULL AND :P18_DESIGNATION IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134815682959035169)
,p_event_id=>wwv_flow_imp.id(4134814790197035167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DESIGNATION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134815240271035168)
,p_event_id=>wwv_flow_imp.id(4134814790197035167)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DESIGNATION_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134580021955103725)
,p_name=>'P18_FIRST_NAME_CHANGE hide'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FIRST_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT FIRST_NAME',
'      INTO V_FIRST_NAME',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_FIRST_NAME != :P18_FIRST_NAME THEN',
'      RETURN FALSE;',
'    ELSIF V_FIRST_NAME IS NULL AND :P18_FIRST_NAME IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_FIRST_NAME IS NOT NULL AND :P18_FIRST_NAME IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134580206707103727)
,p_event_id=>wwv_flow_imp.id(4134580021955103725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FIRST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134580069463103726)
,p_event_id=>wwv_flow_imp.id(4134580021955103725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FIRST_NAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134580681924103732)
,p_name=>'P18_LAST_NAME_CHANGE hide'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_LAST_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT LAST_NAME',
'      INTO V_LAST_NAME',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_LAST_NAME != :P18_LAST_NAME THEN',
'      RETURN FALSE;',
'    ELSIF V_LAST_NAME IS NULL AND :P18_LAST_NAME IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_LAST_NAME IS NOT NULL AND :P18_LAST_NAME IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134580856374103734)
,p_event_id=>wwv_flow_imp.id(4134580681924103732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_LAST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134580757621103733)
,p_event_id=>wwv_flow_imp.id(4134580681924103732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_LAST_NAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134581402106103739)
,p_name=>'P18_ROLE_CHANGE hide'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ROLE VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT ROLE',
'      INTO V_ROLE',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_ROLE != :P18_ROLE THEN',
'      RETURN FALSE;',
'    ELSIF V_ROLE IS NULL AND :P18_ROLE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_ROLE IS NOT NULL AND :P18_ROLE IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134581581468103741)
,p_event_id=>wwv_flow_imp.id(4134581402106103739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ROLE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134581511121103740)
,p_event_id=>wwv_flow_imp.id(4134581402106103739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ROLE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134885057891318413)
,p_name=>'P18_STATUS_CHANGE show'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134885525103318422)
,p_event_id=>wwv_flow_imp.id(4134885057891318413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134582545151103750)
,p_name=>'P18_EMAIL_CHANGE show'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_EMAIL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134582583960103751)
,p_event_id=>wwv_flow_imp.id(4134582545151103750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_EMAIL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134895907482382906)
,p_name=>'P18_PHONE_CHANGE show'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_PHONE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134895949927382907)
,p_event_id=>wwv_flow_imp.id(4134895907482382906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PHONE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134896508386382912)
,p_name=>'P18_FAX_CHANGE show'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_FAX'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134896603175382913)
,p_event_id=>wwv_flow_imp.id(4134896508386382912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FAX_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134897207227382919)
,p_name=>'P18_NOTES_CHANGE show'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_NOTES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134897272557382920)
,p_event_id=>wwv_flow_imp.id(4134897207227382919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_NOTES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2930720518688261458)
,p_name=>'P18_CONS_CHANGE show_1'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_CONS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2930720635071261459)
,p_event_id=>wwv_flow_imp.id(2930720518688261458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_CONS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134887256766337836)
,p_name=>'P18_STATUS_CHANGE hide'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_STATUS != :P18_STATUS THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NULL AND :P18_STATUS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NOT NULL AND :P18_STATUS IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134888234307337838)
,p_event_id=>wwv_flow_imp.id(4134887256766337836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134887652168337838)
,p_event_id=>wwv_flow_imp.id(4134887256766337836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_STATUS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134582183795103747)
,p_name=>'P18_EMAIL_CHANGE hide'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EMAIL VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EMAIL',
'      INTO V_EMAIL',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_EMAIL != :P18_EMAIL THEN',
'      RETURN FALSE;',
'    ELSIF V_EMAIL IS NULL AND :P18_EMAIL IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EMAIL IS NOT NULL AND :P18_EMAIL IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134582426274103749)
,p_event_id=>wwv_flow_imp.id(4134582183795103747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_EMAIL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134582248136103748)
,p_event_id=>wwv_flow_imp.id(4134582183795103747)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_EMAIL_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134582775210103753)
,p_name=>'P18_PHONE_CHANGE hide'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PHONE VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT PHONE',
'      INTO V_PHONE',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_PHONE != :P18_PHONE THEN',
'      RETURN FALSE;',
'    ELSIF V_PHONE IS NULL AND :P18_PHONE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_PHONE IS NOT NULL AND :P18_PHONE IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134895761270382905)
,p_event_id=>wwv_flow_imp.id(4134582775210103753)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PHONE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134582885453103754)
,p_event_id=>wwv_flow_imp.id(4134582775210103753)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PHONE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134896162630382909)
,p_name=>'P18_FAX_CHANGE hide'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FAX VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT FAX',
'      INTO V_FAX',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_FAX != :P18_FAX THEN',
'      RETURN FALSE;',
'    ELSIF V_FAX IS NULL AND :P18_FAX IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_FAX IS NOT NULL AND :P18_FAX IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134896362093382911)
,p_event_id=>wwv_flow_imp.id(4134896162630382909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FAX_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134896342799382910)
,p_event_id=>wwv_flow_imp.id(4134896162630382909)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FAX_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134896894358382916)
,p_name=>'P18_NOTES_CHANGE hide'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_NOTES VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT NOTES',
'      INTO V_NOTES',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_NOTES != :P18_NOTES THEN',
'      RETURN FALSE;',
'    ELSIF V_NOTES IS NULL AND :P18_NOTES IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_NOTES IS NOT NULL AND :P18_NOTES IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134897120882382918)
,p_event_id=>wwv_flow_imp.id(4134896894358382916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_NOTES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134897041695382917)
,p_event_id=>wwv_flow_imp.id(4134896894358382916)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_NOTES_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2930720146107261455)
,p_name=>'P18_CONS_CHANGE hide'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CONS VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT CONS',
'      INTO V_CONS',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_CONS != :P18_CONS THEN',
'      RETURN FALSE;',
'    ELSIF V_CONS IS NULL AND :P18_CONS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_CONS IS NOT NULL AND :P18_CONS IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2930720315915261456)
,p_event_id=>wwv_flow_imp.id(2930720146107261455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_CONS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2930720341292261457)
,p_event_id=>wwv_flow_imp.id(2930720146107261455)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_CONS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(700946195799184406)
,p_name=>'P18_SITE_CONT_ID_CHANGE hide'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SITE_CONT_ID VARCHAR2(200);',
'BEGIN',
'  IF :P18_SITE_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT SITE_CONT_ID',
'      INTO V_SITE_CONT_ID',
'      FROM EDC_SITE_CONTACTS',
'     WHERE SITE_CONTACT_ID = :P18_SITE_CONTACT_ID;',
'',
'    IF V_SITE_CONT_ID != :P18_SITE_CONT_ID THEN',
'      RETURN FALSE;',
'    ELSIF V_SITE_CONT_ID IS NULL AND :P18_SITE_CONT_ID IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_SITE_CONT_ID IS NOT NULL AND :P18_SITE_CONT_ID IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(700946257905184407)
,p_event_id=>wwv_flow_imp.id(700946195799184406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_SITE_CONT_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(700946340825184408)
,p_event_id=>wwv_flow_imp.id(700946195799184406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_SITE_CONT_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4135208078908438751)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4135207909545426716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4135208490425438773)
,p_event_id=>wwv_flow_imp.id(4135208078908438751)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_SITE_CONTACTS,&P18_SITE_CONTACT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(700945933726184404)
,p_name=>'P18_SITE_CONT_ID_CHANGE SHOW'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_SITE_CONT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(700946050193184405)
,p_event_id=>wwv_flow_imp.id(700945933726184404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_SITE_CONT_ID_CHANGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046389269853880382)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_SITE_CONTACTS'
,p_attribute_02=>'EDC_SITE_CONTACTS'
,p_attribute_03=>'P18_SITE_CONTACT_ID'
,p_attribute_04=>'SITE_CONTACT_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11046389269853880382
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046389459206880383)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select EDC_SITE_CONTACTS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P18_SITE_CONTACT_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(11046385867602880371)
,p_internal_uid=>11046389459206880383
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046389684573880383)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_SITE_CONTACTS'
,p_attribute_02=>'EDC_SITE_CONTACTS'
,p_attribute_03=>'P18_SITE_CONTACT_ID'
,p_attribute_04=>'SITE_CONTACT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_SITE_CONTACTS.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11046389684573880383
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046389888670880383)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'37'
,p_process_when_button_id=>wwv_flow_imp.id(11046386258360880372)
,p_internal_uid=>11046389888670880383
);
wwv_flow_imp.component_end;
end;
/
