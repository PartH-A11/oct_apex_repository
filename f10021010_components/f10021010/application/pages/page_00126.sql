prompt --application/pages/page_00126
begin
--   Manifest
--     PAGE: 00126
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
 p_id=>126
,p_tab_set=>'TS1'
,p_name=>'Depot Contacts'
,p_step_title=>'Depot Contacts'
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
 p_id=>wwv_flow_imp.id(12346763670403197103)
,p_name=>'Site Information'
,p_template=>wwv_flow_imp.id(12146130935592911980)
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
'   and a.study_site_id = :P126_STUDY_SITE_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
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
 p_id=>wwv_flow_imp.id(3108587987207270712)
,p_query_column_id=>1
,p_column_alias=>'SITE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Site Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108588427542270712)
,p_query_column_id=>2
,p_column_alias=>'INVNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108588799030270712)
,p_query_column_id=>3
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>3
,p_column_heading=>'USER_ID'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3108589179005270712)
,p_query_column_id=>4
,p_column_alias=>'C.FIRSTNAME||''''||C.LASTNAME'
,p_column_display_sequence=>4
,p_column_heading=>'CRA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12346764281635197106)
,p_plug_name=>'Depot Contacts'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
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
 p_id=>wwv_flow_imp.id(12346767689189197114)
,p_plug_name=>'Site Contacts'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12346773484080371908)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12346773981786380736)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12146155451198328465)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108589902560270711)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12346764281635197106)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P126_DEPOT_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108590235620270710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12346764281635197106)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:136:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108590634175270710)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12346764281635197106)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P126_DEPOT_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108591113575270710)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_database_action=>'DELETE'
,p_button_comment=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108591504328270710)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12346764281635197106)
,p_button_name=>'Audit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3108631530555270694)
,p_branch_name=>'Go To Page 136'
,p_branch_action=>'f?p=&APP_ID.:136:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108591892127270710)
,p_name=>'P126_DEPOT_CONTACT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
,p_use_cache_before_default=>'NO'
,p_source=>'DEPOT_CONTACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108592300894270709)
,p_name=>'P126_STUDY_DEPOT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
,p_use_cache_before_default=>'NO'
,p_source=>'STUDY_DEPOT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108593523973270708)
,p_name=>'P126_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108593907750270708)
,p_name=>'P126_FIRST_NAME_CHANGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
 p_id=>wwv_flow_imp.id(3108594305391270708)
,p_name=>'P126_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108594654731270708)
,p_name=>'P126_LAST_NAME_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
 p_id=>wwv_flow_imp.id(3108595916160270707)
,p_name=>'P126_STATUS'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108596297081270707)
,p_name=>'P126_STATUS_CHANGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
 p_id=>wwv_flow_imp.id(3108596715216270707)
,p_name=>'P126_EMAIL'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108597121186270707)
,p_name=>'P126_EMAIL_CHANGE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
 p_id=>wwv_flow_imp.id(3108597466473270707)
,p_name=>'P126_PHONE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108597901679270707)
,p_name=>'P126_PHONE_CHANGE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
 p_id=>wwv_flow_imp.id(3108598247495270706)
,p_name=>'P126_FAX'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108598713743270706)
,p_name=>'P126_FAX_CHANGE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
 p_id=>wwv_flow_imp.id(3108599043445270706)
,p_name=>'P126_NOTES'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108599510613270706)
,p_name=>'P126_NOTES_CHANGE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
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
 p_id=>wwv_flow_imp.id(3108671416781386777)
,p_name=>'P126_COUNTRY_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P136_COUNTRY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108671728557386780)
,p_name=>'P126_COUNTRY_ID_CHANGE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12346764281635197106)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108602351530270703)
,p_validation_name=>'P126_FIRST_NAME_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P126_FIRST_NAME_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "First Name" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FIRST_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT FIRST_NAME',
'      INTO V_FIRST_NAME',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_FIRST_NAME != :P126_FIRST_NAME THEN',
'      RETURN TRUE;',
'    ELSIF V_FIRST_NAME IS NULL AND :P126_FIRST_NAME IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_FIRST_NAME IS NOT NULL AND :P126_FIRST_NAME IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(3108593907750270708)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108602745627270703)
,p_validation_name=>'P126_LAST_NAME_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P126_LAST_NAME_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Last Name" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_LAST_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT LAST_NAME',
'      INTO V_LAST_NAME',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_LAST_NAME != :P126_LAST_NAME THEN',
'      RETURN TRUE;',
'    ELSIF V_LAST_NAME IS NULL AND :P126_LAST_NAME IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_LAST_NAME IS NOT NULL AND :P126_LAST_NAME IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(3108594654731270708)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108604416951270702)
,p_validation_name=>'P126_STATUS_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P126_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Status" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_STATUS != :P126_STATUS THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NULL AND :P126_STATUS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NOT NULL AND :P126_STATUS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(3108596297081270707)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108671749665386781)
,p_validation_name=>'P126_COUNTRY_ID_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P126_COUNTRY_ID_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Country" must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(3108671728557386780)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNTRY_ID number;',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT COUNTRY_ID',
'      INTO V_COUNTRY_ID',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_COUNTRY_ID != :P126_COUNTRY_ID THEN',
'      RETURN TRUE;',
'    ELSIF V_COUNTRY_ID IS NULL AND :P126_COUNTRY_ID IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_COUNTRY_ID IS NOT NULL AND :P126_COUNTRY_ID IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108603557604270703)
,p_validation_name=>'P126_EMAIL_CHANGE'
,p_validation_sequence=>70
,p_validation=>'P126_EMAIL_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Email" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EMAIL VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EMAIL',
'      INTO V_EMAIL',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_EMAIL != :P126_EMAIL THEN',
'      RETURN TRUE;',
'    ELSIF V_EMAIL IS NULL AND :P126_EMAIL IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EMAIL IS NOT NULL AND :P126_EMAIL IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(3108597121186270707)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108604811146270702)
,p_validation_name=>'P126_PHONE_CHANGE'
,p_validation_sequence=>80
,p_validation=>'P126_PHONE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Phone" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PHONE VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT PHONE',
'      INTO V_PHONE',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_PHONE != :P126_PHONE THEN',
'      RETURN TRUE;',
'    ELSIF V_PHONE IS NULL AND :P126_PHONE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_PHONE IS NOT NULL AND :P126_PHONE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(3108597901679270707)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108605197943270702)
,p_validation_name=>'P126_FAX_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P126_FAX_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Fax" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FAX VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT FAX',
'      INTO V_FAX',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_FAX != :P126_FAX THEN',
'      RETURN TRUE;',
'    ELSIF V_FAX IS NULL AND :P126_FAX IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_FAX IS NOT NULL AND :P126_FAX IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(3108598713743270706)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3108605593008270702)
,p_validation_name=>'P126_NOTES_CHANGE'
,p_validation_sequence=>100
,p_validation=>'P126_NOTES_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Notes" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_NOTES VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT NOTES',
'      INTO V_NOTES',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_NOTES != :P126_NOTES THEN',
'      RETURN TRUE;',
'    ELSIF V_NOTES IS NULL AND :P126_NOTES IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_NOTES IS NOT NULL AND :P126_NOTES IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(3108599510613270706)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108607475227270701)
,p_name=>'P126_DESIGNATION_CHANGE show'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_DESIGNATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108608019886270701)
,p_event_id=>wwv_flow_imp.id(3108607475227270701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_DESIGNATION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108608355717270701)
,p_name=>'P126_FIRST_NAME_CHANGE show'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_FIRST_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108608885333270700)
,p_event_id=>wwv_flow_imp.id(3108608355717270701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_FIRST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108609274524270700)
,p_name=>'P126_LAST_NAME_CHANGE show'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_LAST_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108609820139270700)
,p_event_id=>wwv_flow_imp.id(3108609274524270700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_LAST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108610231496270700)
,p_name=>'P126_ROLE_CHANGE sohw'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_ROLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108610712209270700)
,p_event_id=>wwv_flow_imp.id(3108610231496270700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_ROLE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108612474918270699)
,p_name=>'P126_FIRST_NAME_CHANGE hide'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FIRST_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT FIRST_NAME',
'      INTO V_FIRST_NAME',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_FIRST_NAME != :P126_FIRST_NAME THEN',
'      RETURN FALSE;',
'    ELSIF V_FIRST_NAME IS NULL AND :P126_FIRST_NAME IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_FIRST_NAME IS NOT NULL AND :P126_FIRST_NAME IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108613029160270699)
,p_event_id=>wwv_flow_imp.id(3108612474918270699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_FIRST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108613501421270699)
,p_event_id=>wwv_flow_imp.id(3108612474918270699)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_FIRST_NAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108613850738270699)
,p_name=>'P126_LAST_NAME_CHANGE hide'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_LAST_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT LAST_NAME',
'      INTO V_LAST_NAME',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_LAST_NAME != :P126_LAST_NAME THEN',
'      RETURN FALSE;',
'    ELSIF V_LAST_NAME IS NULL AND :P126_LAST_NAME IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_LAST_NAME IS NOT NULL AND :P126_LAST_NAME IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108614405913270699)
,p_event_id=>wwv_flow_imp.id(3108613850738270699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_LAST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108614834710270699)
,p_event_id=>wwv_flow_imp.id(3108613850738270699)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_LAST_NAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108616678430270698)
,p_name=>'P126_STATUS_CHANGE show'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108617174044270698)
,p_event_id=>wwv_flow_imp.id(3108616678430270698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108671456854386778)
,p_name=>'P126_COUNTRY_ID_CHANGE show'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_COUNTRY_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108671599503386779)
,p_event_id=>wwv_flow_imp.id(3108671456854386778)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_COUNTRY_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108617555184270698)
,p_name=>'P126_EMAIL_CHANGE show'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_EMAIL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108618089001270698)
,p_event_id=>wwv_flow_imp.id(3108617555184270698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_EMAIL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108618495196270698)
,p_name=>'P126_PHONE_CHANGE show'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_PHONE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108618935092270697)
,p_event_id=>wwv_flow_imp.id(3108618495196270698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_PHONE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108619365746270697)
,p_name=>'P126_FAX_CHANGE show'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_FAX'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108619861782270697)
,p_event_id=>wwv_flow_imp.id(3108619365746270697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_FAX_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108620285967270697)
,p_name=>'P126_NOTES_CHANGE show'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_NOTES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108620750514270697)
,p_event_id=>wwv_flow_imp.id(3108620285967270697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_NOTES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108621157490270697)
,p_name=>'P126_CONS_CHANGE show_1'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P126_CONS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P126_DEPOT_CONTACT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108621673983270697)
,p_event_id=>wwv_flow_imp.id(3108621157490270697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_CONS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108622067675270697)
,p_name=>'P126_STATUS_CHANGE hide'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_STATUS != :P126_STATUS THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NULL AND :P126_STATUS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NOT NULL AND :P126_STATUS IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108622565978270696)
,p_event_id=>wwv_flow_imp.id(3108622067675270697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108623130367270696)
,p_event_id=>wwv_flow_imp.id(3108622067675270697)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_STATUS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108671843673386782)
,p_name=>'P126_COUNTRY_ID_CHANGE hide'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNTRY_ID NUMBER;',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT COUNTRY_ID',
'      INTO V_COUNTRY_ID',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_COUNTRY_ID != :P126_COUNTRY_ID THEN',
'      RETURN FALSE;',
'    ELSIF V_COUNTRY_ID IS NULL AND :P126_COUNTRY_ID IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_COUNTRY_ID IS NOT NULL AND :P126_COUNTRY_ID IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108671977448386783)
,p_event_id=>wwv_flow_imp.id(3108671843673386782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_COUNTRY_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108672092982386784)
,p_event_id=>wwv_flow_imp.id(3108671843673386782)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_COUNTRY_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108623464736270696)
,p_name=>'P126_EMAIL_CHANGE hide'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EMAIL VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EMAIL',
'      INTO V_EMAIL',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_EMAIL != :P126_EMAIL THEN',
'      RETURN FALSE;',
'    ELSIF V_EMAIL IS NULL AND :P126_EMAIL IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EMAIL IS NOT NULL AND :P126_EMAIL IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108623976932270696)
,p_event_id=>wwv_flow_imp.id(3108623464736270696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_EMAIL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108624524468270696)
,p_event_id=>wwv_flow_imp.id(3108623464736270696)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_EMAIL_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108624918410270696)
,p_name=>'P126_PHONE_CHANGE hide'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PHONE VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT PHONE',
'      INTO V_PHONE',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_PHONE != :P126_PHONE THEN',
'      RETURN FALSE;',
'    ELSIF V_PHONE IS NULL AND :P126_PHONE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_PHONE IS NOT NULL AND :P126_PHONE IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108625350811270696)
,p_event_id=>wwv_flow_imp.id(3108624918410270696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_PHONE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108625921985270695)
,p_event_id=>wwv_flow_imp.id(3108624918410270696)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_PHONE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108626298296270695)
,p_name=>'P126_FAX_CHANGE hide'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FAX VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT FAX',
'      INTO V_FAX',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_FAX != :P126_FAX THEN',
'      RETURN FALSE;',
'    ELSIF V_FAX IS NULL AND :P126_FAX IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_FAX IS NOT NULL AND :P126_FAX IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108626816543270695)
,p_event_id=>wwv_flow_imp.id(3108626298296270695)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_FAX_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108627294325270695)
,p_event_id=>wwv_flow_imp.id(3108626298296270695)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_FAX_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108627658763270695)
,p_name=>'P126_NOTES_CHANGE hide'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_NOTES VARCHAR2(200);',
'BEGIN',
'  IF :P126_DEPOT_CONTACT_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT NOTES',
'      INTO V_NOTES',
'      FROM EDC_DEPOT_CONTACTS',
'     WHERE DEPOT_CONTACT_ID = :P126_DEPOT_CONTACT_ID;',
'',
'    IF V_NOTES != :P126_NOTES THEN',
'      RETURN FALSE;',
'    ELSIF V_NOTES IS NULL AND :P126_NOTES IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_NOTES IS NOT NULL AND :P126_NOTES IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108628182376270695)
,p_event_id=>wwv_flow_imp.id(3108627658763270695)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_NOTES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108628689185270695)
,p_event_id=>wwv_flow_imp.id(3108627658763270695)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P126_NOTES_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3108630498539270694)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3108591504328270710)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3108630955400270694)
,p_event_id=>wwv_flow_imp.id(3108630498539270694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_DEPOT_CONTACTS,&P126_DEPOT_CONTACT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108605902415270702)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_DEPOT_CONTACTS'
,p_attribute_02=>'EDC_DEPOT_CONTACTS'
,p_attribute_03=>'P126_DEPOT_CONTACT_ID'
,p_attribute_04=>'DEPOT_CONTACT_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>2007655134273766609
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108606257178270702)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select EDC_DEPOT_CONTACTS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P126_DEPOT_CONTACT_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(3108590634175270710)
,p_internal_uid=>2007655489036766609
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108672988315386793)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_DEPOT_CONTACTS'
,p_attribute_02=>'EDC_DEPOT_CONTACTS'
,p_attribute_03=>'P126_DEPOT_CONTACT_ID'
,p_attribute_04=>'DEPOT_CONTACT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_DEPOT_CONTACTS.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2007722220173882700
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108607057950270701)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'37'
,p_process_when_button_id=>wwv_flow_imp.id(3108591113575270710)
,p_internal_uid=>2007656289808766608
);
wwv_flow_imp.component_end;
end;
/
