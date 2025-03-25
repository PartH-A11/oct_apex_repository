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
,p_default_id_offset=>1100950768141504093
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
 p_id=>wwv_flow_imp.id(12147335827017384461)
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
'   and a.study_site_id = :P18_STUDY_SITE_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
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
 p_id=>wwv_flow_imp.id(12147336031728384461)
,p_query_column_id=>1
,p_column_alias=>'SITE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Site Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147336155081384462)
,p_query_column_id=>2
,p_column_alias=>'INVNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147336250967384462)
,p_query_column_id=>3
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>3
,p_column_heading=>'USER_ID'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147336331828384462)
,p_query_column_id=>4
,p_column_alias=>'C.FIRSTNAME||''''||C.LASTNAME'
,p_column_display_sequence=>4
,p_column_heading=>'CRA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147336438249384464)
,p_plug_name=>'Site Contacts'
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
 p_id=>wwv_flow_imp.id(12147339845803384472)
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
 p_id=>wwv_flow_imp.id(12147345640694559266)
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
 p_id=>wwv_flow_imp.id(12147346138400568094)
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
 p_id=>wwv_flow_imp.id(12147336853416384465)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12147336438249384464)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_condition=>'P18_SITE_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147337233331384465)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12147336438249384464)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147336635744384464)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12147336438249384464)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P18_SITE_CONTACT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147337026502384465)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
,p_button_comment=>'P18_SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5236158677686930809)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(12147340951888384476)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107668894234480204)
,p_name=>'P18_COUNTRY_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(4031670662666765545)
,p_name=>'P18_CONS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4031670765849765546)
,p_name=>'P18_CONS_CHANGE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235530363085607814)
,p_name=>'P18_FIRST_NAME_CHANGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(5235531054048607821)
,p_name=>'P18_LAST_NAME_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(5235531740009607828)
,p_name=>'P18_ROLE_CHANGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(5235532443272607835)
,p_name=>'P18_STATUS_CHANGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(5235532589844607836)
,p_name=>'P18_EMAIL_CHANGE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(5235532711661607837)
,p_name=>'P18_PHONE_CHANGE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(5235532759769607838)
,p_name=>'P18_FAX_CHANGE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(5235532871872607839)
,p_name=>'P18_NOTES_CHANGE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(5235757761939488025)
,p_name=>'P18_DESIGNATION_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147337442159384467)
,p_name=>'P18_DESIGNATION'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147337648564384468)
,p_name=>'P18_EMAIL'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(12147337830418384468)
,p_name=>'P18_FAX'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(12147338030688384468)
,p_name=>'P18_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(12147338249665384468)
,p_name=>'P18_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(12147338444202384469)
,p_name=>'P18_NOTES'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(12147338633655384469)
,p_name=>'P18_PHONE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(12147338854698384469)
,p_name=>'P18_ROLE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147339051364384469)
,p_name=>'P18_SITE_CONTACT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147339248328384469)
,p_name=>'P18_STATUS'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
 p_id=>wwv_flow_imp.id(12147339424695384470)
,p_name=>'P18_STUDY_SITE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12147336438249384464)
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
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235761026765505103)
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
,p_associated_item=>wwv_flow_imp.id(5235757761939488025)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235530641210607817)
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
,p_associated_item=>wwv_flow_imp.id(5235530363085607814)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235531153192607822)
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
,p_associated_item=>wwv_flow_imp.id(5235531054048607821)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235531825713607829)
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
,p_associated_item=>wwv_flow_imp.id(5235531740009607828)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235836838255825146)
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
,p_associated_item=>wwv_flow_imp.id(5235532443272607835)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235533451694607845)
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
,p_associated_item=>wwv_flow_imp.id(5235532589844607836)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235846883543887001)
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
,p_associated_item=>wwv_flow_imp.id(5235532711661607837)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235847514913887007)
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
,p_associated_item=>wwv_flow_imp.id(5235532759769607838)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235847538798887008)
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
,p_associated_item=>wwv_flow_imp.id(5235532871872607839)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4031670816977765547)
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
,p_associated_item=>wwv_flow_imp.id(4031670765849765546)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235764234789533509)
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
 p_id=>wwv_flow_imp.id(5235764633550533518)
,p_event_id=>wwv_flow_imp.id(5235764234789533509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DESIGNATION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235530449889607815)
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
 p_id=>wwv_flow_imp.id(5235530595424607816)
,p_event_id=>wwv_flow_imp.id(5235530449889607815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FIRST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235531216149607823)
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
 p_id=>wwv_flow_imp.id(5235531353176607824)
,p_event_id=>wwv_flow_imp.id(5235531216149607823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_LAST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235531987410607830)
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
 p_id=>wwv_flow_imp.id(5235532078307607831)
,p_event_id=>wwv_flow_imp.id(5235531987410607830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ROLE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235765558338539260)
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
 p_id=>wwv_flow_imp.id(5235766451100539262)
,p_event_id=>wwv_flow_imp.id(5235765558338539260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DESIGNATION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235766008412539261)
,p_event_id=>wwv_flow_imp.id(5235765558338539260)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DESIGNATION_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235530790096607818)
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
 p_id=>wwv_flow_imp.id(5235530974848607820)
,p_event_id=>wwv_flow_imp.id(5235530790096607818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FIRST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235530837604607819)
,p_event_id=>wwv_flow_imp.id(5235530790096607818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FIRST_NAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235531450065607825)
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
 p_id=>wwv_flow_imp.id(5235531624515607827)
,p_event_id=>wwv_flow_imp.id(5235531450065607825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_LAST_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235531525762607826)
,p_event_id=>wwv_flow_imp.id(5235531450065607825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_LAST_NAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235532170247607832)
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
 p_id=>wwv_flow_imp.id(5235532349609607834)
,p_event_id=>wwv_flow_imp.id(5235532170247607832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ROLE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235532279262607833)
,p_event_id=>wwv_flow_imp.id(5235532170247607832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ROLE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235835826032822506)
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
 p_id=>wwv_flow_imp.id(5235836293244822515)
,p_event_id=>wwv_flow_imp.id(5235835826032822506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235533313292607843)
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
 p_id=>wwv_flow_imp.id(5235533352101607844)
,p_event_id=>wwv_flow_imp.id(5235533313292607843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_EMAIL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235846675623886999)
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
 p_id=>wwv_flow_imp.id(5235846718068887000)
,p_event_id=>wwv_flow_imp.id(5235846675623886999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PHONE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235847276527887005)
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
 p_id=>wwv_flow_imp.id(5235847371316887006)
,p_event_id=>wwv_flow_imp.id(5235847276527887005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FAX_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235847975368887012)
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
 p_id=>wwv_flow_imp.id(5235848040698887013)
,p_event_id=>wwv_flow_imp.id(5235847975368887012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_NOTES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4031671286829765551)
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
 p_id=>wwv_flow_imp.id(4031671403212765552)
,p_event_id=>wwv_flow_imp.id(4031671286829765551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_CONS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235838024907841929)
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
 p_id=>wwv_flow_imp.id(5235839002448841931)
,p_event_id=>wwv_flow_imp.id(5235838024907841929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235838420309841931)
,p_event_id=>wwv_flow_imp.id(5235838024907841929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_STATUS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235532951936607840)
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
 p_id=>wwv_flow_imp.id(5235533194415607842)
,p_event_id=>wwv_flow_imp.id(5235532951936607840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_EMAIL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235533016277607841)
,p_event_id=>wwv_flow_imp.id(5235532951936607840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_EMAIL_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235533543351607846)
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
 p_id=>wwv_flow_imp.id(5235846529411886998)
,p_event_id=>wwv_flow_imp.id(5235533543351607846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PHONE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235533653594607847)
,p_event_id=>wwv_flow_imp.id(5235533543351607846)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_PHONE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235846930771887002)
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
 p_id=>wwv_flow_imp.id(5235847130234887004)
,p_event_id=>wwv_flow_imp.id(5235846930771887002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FAX_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235847110940887003)
,p_event_id=>wwv_flow_imp.id(5235846930771887002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FAX_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235847662499887009)
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
 p_id=>wwv_flow_imp.id(5235847889023887011)
,p_event_id=>wwv_flow_imp.id(5235847662499887009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_NOTES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235847809836887010)
,p_event_id=>wwv_flow_imp.id(5235847662499887009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_NOTES_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4031670914248765548)
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
 p_id=>wwv_flow_imp.id(4031671084056765549)
,p_event_id=>wwv_flow_imp.id(4031670914248765548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_CONS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4031671109433765550)
,p_event_id=>wwv_flow_imp.id(4031670914248765548)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_CONS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1801896963940688499)
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
 p_id=>wwv_flow_imp.id(1801897026046688500)
,p_event_id=>wwv_flow_imp.id(1801896963940688499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_SITE_CONT_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1801897108966688501)
,p_event_id=>wwv_flow_imp.id(1801896963940688499)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_SITE_CONT_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5236158847049942844)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5236158677686930809)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5236159258566942866)
,p_event_id=>wwv_flow_imp.id(5236158847049942844)
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
 p_id=>wwv_flow_imp.id(1801896701867688497)
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
 p_id=>wwv_flow_imp.id(1801896818334688498)
,p_event_id=>wwv_flow_imp.id(1801896701867688497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_SITE_CONT_ID_CHANGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147340037995384475)
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
 p_id=>wwv_flow_imp.id(12147340227348384476)
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
,p_process_when_button_id=>wwv_flow_imp.id(12147336635744384464)
,p_internal_uid=>11046389459206880383
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147340452715384476)
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
 p_id=>wwv_flow_imp.id(12147340656812384476)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'37'
,p_process_when_button_id=>wwv_flow_imp.id(12147337026502384465)
,p_internal_uid=>11046389888670880383
);
wwv_flow_imp.component_end;
end;
/
