prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_tab_set=>'TS1'
,p_name=>'Study Details'
,p_step_title=>'Study Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11996836101453214389)
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
 p_id=>wwv_flow_imp.id(12147249233632632941)
,p_plug_name=>' Study Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--From REgion atribute :',
'style = "width: 850px;"'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147264525093653146)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>5
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152604430257417512)
,p_plug_name=>'CRF_VISIT_SECTION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12151861941237361088)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147249651881632942)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    IF :P3_STUDY_ID IS NOT NULL AND :APP_ID NOT LIKE ''999%'' THEN',
'        return true;',
'    ELSE',
'        return false;',
'    END IF;',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147249845312632942)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147249451605632942)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_STUDY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5235518325547583426)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12147249233632632941)
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
 p_id=>wwv_flow_imp.id(12147256349678632960)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1813250552154508646)
,p_name=>'P3_BLINDED_FLAG'
,p_item_sequence=>372
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Blinded flag </b>'
,p_source=>'BLINDED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_YES_NO_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_cHeight=>1
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3291930026408157695)
,p_name=>'P3_CAUCASIAN_CAP'
,p_item_sequence=>152
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Other Cap</b>'
,p_source=>'CAUCASIAN_CAP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3291930179188157696)
,p_name=>'P3_CAUCASIAN_CAP_CHANGE'
,p_item_sequence=>172
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3797208950954082466)
,p_name=>'P3_ANDROID_VERSION'
,p_item_sequence=>442
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Android Version</b>'
,p_source=>'ANDROID_VERSION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797209059480082467)
,p_name=>'P3_IOS_VERSION'
,p_item_sequence=>452
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>iOS Version</b>'
,p_source=>'IOS_VERSION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4757764729987728399)
,p_name=>'P3_PERC_CAP'
,p_item_sequence=>102
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Indian Cap </b>'
,p_source=>'PERC_CAP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4757764767999728400)
,p_name=>'P3_PERC_CAP_CHANGE'
,p_item_sequence=>122
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5148893042388331930)
,p_name=>'P3_STUDY_NUMBER_CHANGE'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
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
 p_id=>wwv_flow_imp.id(5148893726653331937)
,p_name=>'P3_PROTOCOL_NUMBER_CHANGE'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(5148894556126331945)
,p_name=>'P3_SPONSOR_ID_CHANGE'
,p_item_sequence=>62
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
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
 p_id=>wwv_flow_imp.id(5235096100741908802)
,p_name=>'P3_TITLE_CHANGE'
,p_item_sequence=>82
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
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
 p_id=>wwv_flow_imp.id(5235096756670908809)
,p_name=>'P3_TOT_PATIENTS_CHANGE'
,p_item_sequence=>112
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
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
 p_id=>wwv_flow_imp.id(5235097481268908816)
,p_name=>'P3_THERAPEUTIC_AREA_CHANGE'
,p_item_sequence=>162
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
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
 p_id=>wwv_flow_imp.id(5235098151073908823)
,p_name=>'P3_START_DATE_CHANGE'
,p_item_sequence=>222
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
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
 p_id=>wwv_flow_imp.id(5235098821171908830)
,p_name=>'P3_END_DATE_CHANGE'
,p_item_sequence=>212
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(5235099569558908837)
,p_name=>'P3_PATIENT_RECRUIT_CHANGE'
,p_item_sequence=>262
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(5235100227445908844)
,p_name=>'P3_PHASE_CHANGE'
,p_item_sequence=>252
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(5235286896205524499)
,p_name=>'P3_STUDY_ACTIVE_CHANGE'
,p_item_sequence=>302
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(5235287540506524506)
,p_name=>'P3_BLINDED_CHANGE'
,p_item_sequence=>292
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(5235288610142524516)
,p_name=>'P3_DRUG_SHIPMENT_CHANGE'
,p_item_sequence=>342
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(5235289279863524523)
,p_name=>'P3_CALC_SCH_VISIT_FROM_CHANGE'
,p_item_sequence=>362
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(5235289963389524530)
,p_name=>'P3_NOTES_CHANGE'
,p_item_sequence=>392
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(5235290679352524537)
,p_name=>'P3_STUDY_DURATION_CHANGE'
,p_item_sequence=>332
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_imp.id(12147250056970632944)
,p_name=>'P3_TOT_PATIENTS'
,p_item_sequence=>92
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Number of Subjects </b>'
,p_source=>'TOT_PATIENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147250240595632945)
,p_name=>'P3_BLINDED'
,p_item_sequence=>282
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Study Blinded </b>'
,p_source=>'BLINDED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_YES_NO_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147250447954632945)
,p_name=>'P3_CALC_SCH_VISIT_FROM'
,p_item_sequence=>352
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Calc. Visit Schedule from </b>'
,p_source=>'CALC_SCH_VISIT_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_STUDY_CALC_SCH_VISIT_FROM_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''STUDY_CALC_SCH_VISIT_FROM'' and lv.status=1',
'order by lv.sequence'))
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147250643007632945)
,p_name=>'P3_DRUG_DEVICE'
,p_item_sequence=>432
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_source=>'DRUG_DEVICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147250829284632945)
,p_name=>'P3_DRUG_SHIPMENT'
,p_item_sequence=>312
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> IP Shipment </b>'
,p_source=>'DRUG_SHIPMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_DRUG_SHIPMENT_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''DRUG_SHIPMENT'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147251057112632946)
,p_name=>'P3_DURATION'
,p_item_sequence=>402
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_source=>'DURATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147251233256632946)
,p_name=>'P3_END_DATE'
,p_item_sequence=>202
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> End Date </b>'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2100'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147251424610632947)
,p_name=>'P3_MULTI_ARM_STUDY'
,p_item_sequence=>422
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_source=>'MULTI_ARM_STUDY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147251650356632947)
,p_name=>'P3_NOTES'
,p_item_sequence=>382
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Notes </b>'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>110
,p_cMaxlength=>500
,p_cHeight=>3
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147251830302632947)
,p_name=>'P3_PATIENT_RECRUIT'
,p_is_required=>true
,p_item_sequence=>232
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subject Recruitment'
,p_source=>'PATIENT_RECRUIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_PATIENT_RECRUITMENT_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.display_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''PATIENT_RECRUITMENT'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147252034421632947)
,p_name=>'P3_PHASE'
,p_item_sequence=>242
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Phase </b>'
,p_source=>'PHASE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_STUDY_PHASE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.display_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''STUDY_PHASE'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147252233493632947)
,p_name=>'P3_PM_ID'
,p_is_required=>true
,p_item_sequence=>52
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Manager'
,p_source=>'PM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EDC_USER_PM_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FIRSTNAME || '' '' || LASTNAME display_value, USER_ID return_value ',
'from EDC_USERS where /*role_id=2 and */status=1 order by 1'))
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147252434850632947)
,p_name=>'P3_PROTOCOL_NUMBER'
,p_is_required=>true
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Code'
,p_source=>'PROTOCOL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147252637221632948)
,p_name=>'P3_SPONSOR_ID'
,p_is_required=>true
,p_item_sequence=>42
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sponsor'
,p_source=>'SPONSOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EDC_SPONSOR_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SPONSOR_NAME display_value, SPONSOR_ID return_value ',
'from EDC_SPONSOR',
'order by 1'))
,p_cSize=>40
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147252832930632949)
,p_name=>'P3_START_DATE'
,p_item_sequence=>192
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Start Date </b>'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2100'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147253051209632949)
,p_name=>'P3_STUDY_ACTIVE'
,p_item_sequence=>272
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Study Active </b>'
,p_source=>'STUDY_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STUDY_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CLV.DISPLAY_VALUE "DIAPLSY",CLV.STORED_VALUE "STORED"',
'FROM EDC_LOV CL,EDC_LOV_VALUES CLV',
'WHERE CL.LOV_ID=CLV.LOV_ID',
'AND CL.LOV_NAME=''STUDY_STATUS''',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--- Select ---'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147253226044632949)
,p_name=>'P3_STUDY_DESIGN'
,p_item_sequence=>412
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_source=>'STUDY_DESIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147253440045632949)
,p_name=>'P3_STUDY_DURATION'
,p_item_sequence=>322
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Treatment Duration </b>'
,p_post_element_text=>'&nbsp;Days'
,p_source=>'STUDY_DURATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>3
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147253635136632949)
,p_name=>'P3_STUDY_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Study Id'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147253831665632951)
,p_name=>'P3_STUDY_INDICATION'
,p_item_sequence=>182
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Study Indication </b>'
,p_source=>'STUDY_INDICATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME display_value, ind_det_id return_value ',
'from EDC_AREA_IND_DETAIL where AREA_INDICATION_ID is not null and AREA_INDICATION_ID=:P3_THERAPEUTIC_AREA and status=1',
'order by 1'))
,p_lov_cascade_parent_items=>'P3_THERAPEUTIC_AREA'
,p_ajax_items_to_submit=>'P3_THERAPEUTIC_AREA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147254054900632951)
,p_name=>'P3_STUDY_NUMBER'
,p_is_required=>true
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Protocol Number'
,p_source=>'STUDY_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>30
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147254253373632951)
,p_name=>'P3_THERAPEUTIC_AREA'
,p_item_sequence=>142
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Therapeutic Area </b>'
,p_source=>'THERAPEUTIC_AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EDC_TH_AREA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME display_value, AREA_INDICATION_ID return_value ',
'from EDC_AREA_INDICATION where parent_id is null and status=1',
'order by 1'))
,p_cSize=>40
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147254448065632951)
,p_name=>'P3_TITLE'
,p_is_required=>true
,p_item_sequence=>72
,p_item_plug_id=>wwv_flow_imp.id(12147249233632632941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>140
,p_cMaxlength=>1000
,p_cHeight=>4
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12147255137272632957)
,p_validation_name=>'Unique Study Number'
,p_validation_sequence=>10
,p_validation=>'select 1 from edc_study where study_number=:P3_STUDY_NUMBER and study_id <> :EDC_APP_STUDY_ID'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Study number already exits.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12147254054900632951)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12147255329101632958)
,p_validation_name=>'Unique Project Code'
,p_validation_sequence=>20
,p_validation=>'select 1 from edc_study where PROTOCOL_NUMBER=:P3_PROTOCOL_NUMBER and study_id <> :EDC_APP_STUDY_ID'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Project code already exits.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12147254054900632951)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5148893653775331936)
,p_validation_name=>'P3_STUDY_NUMBER_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P3_STUDY_NUMBER_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Protocol Number" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_NUMBER VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STUDY_NUMBER',
'      INTO V_STUDY_NUMBER',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_STUDY_NUMBER != :P3_STUDY_NUMBER THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_NUMBER IS NULL AND :P3_STUDY_NUMBER IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_NUMBER IS NOT NULL AND :P3_STUDY_NUMBER IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5148893042388331930)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5148894407600331943)
,p_validation_name=>'P3_PROTOCOL_NUMBER_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P3_PROTOCOL_NUMBER_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Project Code" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PROTOCOL_NUMBER VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT PROTOCOL_NUMBER',
'      INTO V_PROTOCOL_NUMBER',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PROTOCOL_NUMBER != :P3_PROTOCOL_NUMBER THEN',
'      RETURN TRUE;',
'    ELSIF V_PROTOCOL_NUMBER IS NULL AND :P3_PROTOCOL_NUMBER IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_PROTOCOL_NUMBER IS NOT NULL AND :P3_PROTOCOL_NUMBER IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5148893726653331937)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235095972319908801)
,p_validation_name=>'P3_SPONSOR_ID_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P3_SPONSOR_ID_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Sponsor" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SPONSOR_ID VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT SPONSOR_ID',
'      INTO V_SPONSOR_ID',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_SPONSOR_ID != :P3_SPONSOR_ID THEN',
'      RETURN TRUE;',
'    ELSIF V_SPONSOR_ID IS NULL AND :P3_SPONSOR_ID IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_SPONSOR_ID IS NOT NULL AND :P3_SPONSOR_ID IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5148894556126331945)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235096714478908808)
,p_validation_name=>'P3_TITLE_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P3_TITLE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Title" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TITLE VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TITLE',
'      INTO V_TITLE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_TITLE != :P3_TITLE THEN',
'      RETURN TRUE;',
'    ELSIF V_TITLE IS NULL AND :P3_TITLE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_TITLE IS NOT NULL AND :P3_TITLE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235096100741908802)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235097318392908815)
,p_validation_name=>'P3_TOT_PATIENTS_CHANGE'
,p_validation_sequence=>70
,p_validation=>'P3_TOT_PATIENTS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Number of Subjects" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TOT_PATIENTS VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TOT_PATIENTS',
'      INTO V_TOT_PATIENTS',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_TOT_PATIENTS != :P3_TOT_PATIENTS THEN',
'      RETURN TRUE;',
'    ELSIF V_TOT_PATIENTS IS NULL AND :P3_TOT_PATIENTS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_TOT_PATIENTS IS NOT NULL AND :P3_TOT_PATIENTS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235096756670908809)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4757764957068728401)
,p_validation_name=>'P3_PERC_CAP_CHANGE'
,p_validation_sequence=>80
,p_validation=>'P3_PERC_CAP_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Asian Race Cap" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PERC_CAP VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT PERC_CAP',
'      INTO V_PERC_CAP',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PERC_CAP != :P3_PERC_CAP THEN',
'      RETURN TRUE;',
'    ELSIF V_PERC_CAP IS NULL AND :P3_PERC_CAP IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_PERC_CAP IS NOT NULL AND :P3_PERC_CAP IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4757764767999728400)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3291930690312157701)
,p_validation_name=>'P3_CAUCASIAN_CAP_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P3_CAUCASIAN_CAP_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Caucasian Cap" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PERC_CAP VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT PERC_CAP',
'      INTO V_PERC_CAP',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PERC_CAP != :P3_PERC_CAP THEN',
'      RETURN TRUE;',
'    ELSIF V_PERC_CAP IS NULL AND :P3_PERC_CAP IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_PERC_CAP IS NOT NULL AND :P3_PERC_CAP IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(3291930179188157696)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235098017580908822)
,p_validation_name=>'P3_THERAPEUTIC_AREA_CHANGE'
,p_validation_sequence=>100
,p_validation=>'P3_THERAPEUTIC_AREA_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Number of Subjects" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_THERAPEUTIC_AREA VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT THERAPEUTIC_AREA',
'      INTO V_THERAPEUTIC_AREA',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_THERAPEUTIC_AREA != :P3_THERAPEUTIC_AREA THEN',
'      RETURN TRUE;',
'    ELSIF V_THERAPEUTIC_AREA IS NULL AND :P3_THERAPEUTIC_AREA IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_THERAPEUTIC_AREA IS NOT NULL AND :P3_THERAPEUTIC_AREA IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235097481268908816)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235098746978908829)
,p_validation_name=>'P3_START_DATE_CHANGE'
,p_validation_sequence=>110
,p_validation=>'P3_START_DATE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Start Date" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_START_DATE VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TO_CHAR(START_DATE,''DD-MON-YYYY'')',
'      INTO V_START_DATE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_START_DATE != UPPER(:P3_START_DATE) THEN',
'      RETURN TRUE;',
'    ELSIF V_START_DATE IS NULL AND :P3_START_DATE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_START_DATE IS NOT NULL AND :P3_START_DATE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235098151073908823)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235099437671908836)
,p_validation_name=>'P3_END_DATE_CHANGE'
,p_validation_sequence=>120
,p_validation=>'P3_END_DATE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "End Date" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_END_DATE VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TO_CHAR(END_DATE,''DD-MON-YYYY'')',
'      INTO V_END_DATE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_END_DATE != :P3_END_DATE THEN',
'      RETURN TRUE;',
'    ELSIF V_END_DATE IS NULL AND :P3_END_DATE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_END_DATE IS NOT NULL AND :P3_END_DATE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235098821171908830)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235100157878908843)
,p_validation_name=>'P3_PATIENT_RECRUIT_CHANGE'
,p_validation_sequence=>130
,p_validation=>'P3_PATIENT_RECRUIT_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Subject Recruitment" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PATIENT_RECRUIT VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT PATIENT_RECRUIT',
'      INTO V_PATIENT_RECRUIT',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PATIENT_RECRUIT != :P3_PATIENT_RECRUIT THEN',
'      RETURN TRUE;',
'    ELSIF V_PATIENT_RECRUIT IS NULL AND :P3_PATIENT_RECRUIT IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_PATIENT_RECRUIT IS NOT NULL AND :P3_PATIENT_RECRUIT IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235099569558908837)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235286771085524498)
,p_validation_name=>'P3_PHASE_CHANGE'
,p_validation_sequence=>140
,p_validation=>'P3_PHASE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Phase" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PHASE VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT PHASE',
'      INTO V_PHASE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PHASE != :P3_PHASE THEN',
'      RETURN TRUE;',
'    ELSIF V_PHASE IS NULL AND :P3_PHASE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_PHASE IS NOT NULL AND :P3_PHASE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235100227445908844)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235287447354524505)
,p_validation_name=>'P3_STUDY_ACTIVE_CHANGE'
,p_validation_sequence=>150
,p_validation=>'P3_STUDY_ACTIVE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Study Active" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_ACTIVE VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STUDY_ACTIVE',
'      INTO V_STUDY_ACTIVE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_STUDY_ACTIVE != :P3_STUDY_ACTIVE THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_ACTIVE IS NULL AND :P3_STUDY_ACTIVE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_ACTIVE IS NOT NULL AND :P3_STUDY_ACTIVE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235286896205524499)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235288329594524514)
,p_validation_name=>'P3_BLINDED_CHANGE'
,p_validation_sequence=>160
,p_validation=>'P3_BLINDED_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Study Blinded" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BLINDED VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT BLINDED',
'      INTO V_BLINDED',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_BLINDED != :P3_BLINDED THEN',
'      RETURN TRUE;',
'    ELSIF V_BLINDED IS NULL AND :P3_BLINDED IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_BLINDED IS NOT NULL AND :P3_BLINDED IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235287540506524506)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235289121899524522)
,p_validation_name=>'P3_DRUG_SHIPMENT_CHANGE'
,p_validation_sequence=>170
,p_validation=>'P3_DRUG_SHIPMENT_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "IP Shipment" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DRUG_SHIPMENT VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT DRUG_SHIPMENT',
'      INTO V_DRUG_SHIPMENT',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_DRUG_SHIPMENT != :P3_DRUG_SHIPMENT THEN',
'      RETURN TRUE;',
'    ELSIF V_DRUG_SHIPMENT IS NULL AND :P3_DRUG_SHIPMENT IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DRUG_SHIPMENT IS NOT NULL AND :P3_DRUG_SHIPMENT IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235288610142524516)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235289827933524529)
,p_validation_name=>'P3_CALC_SCH_VISIT_FROM_CHANGE'
,p_validation_sequence=>180
,p_validation=>'P3_CALC_SCH_VISIT_FROM_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Calc. Visit Schedule from" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CALC_SCH_VISIT_FROM VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT CALC_SCH_VISIT_FROM',
'      INTO V_CALC_SCH_VISIT_FROM',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_CALC_SCH_VISIT_FROM != :P3_CALC_SCH_VISIT_FROM THEN',
'      RETURN TRUE;',
'    ELSIF V_CALC_SCH_VISIT_FROM IS NULL AND :P3_CALC_SCH_VISIT_FROM IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_CALC_SCH_VISIT_FROM IS NOT NULL AND :P3_CALC_SCH_VISIT_FROM IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235289279863524523)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235290334653524534)
,p_validation_name=>'P3_NOTES_CHANGE'
,p_validation_sequence=>190
,p_validation=>'P3_NOTES_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Notes" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_NOTES VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT NOTES',
'      INTO V_NOTES',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_NOTES != :P3_NOTES THEN',
'      RETURN TRUE;',
'    ELSIF V_NOTES IS NULL AND :P3_NOTES IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_NOTES IS NOT NULL AND :P3_NOTES IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235289963389524530)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235291237049524543)
,p_validation_name=>'P3_STUDY_DURATION_CHANGE'
,p_validation_sequence=>200
,p_validation=>'P3_STUDY_DURATION_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Treatment Duration" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_DURATION VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STUDY_DURATION',
'      INTO V_STUDY_DURATION',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_STUDY_DURATION != :P3_STUDY_DURATION THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_DURATION IS NULL AND :P3_STUDY_DURATION IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_DURATION IS NOT NULL AND :P3_STUDY_DURATION IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(5235290679352524537)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5148893198277331931)
,p_name=>'P3_STUDY_NUMBER_CHANGE hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_NUMBER VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STUDY_NUMBER',
'      INTO V_STUDY_NUMBER',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_STUDY_NUMBER != :P3_STUDY_NUMBER THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_NUMBER IS NULL AND :P3_STUDY_NUMBER IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_NUMBER IS NOT NULL AND :P3_STUDY_NUMBER IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5148893266314331932)
,p_event_id=>wwv_flow_imp.id(5148893198277331931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_NUMBER_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5148893322257331933)
,p_event_id=>wwv_flow_imp.id(5148893198277331931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_NUMBER_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5148893818916331938)
,p_name=>'P3_PROTOCOL_NUMBER_CHANGE hide'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PROTOCOL_NUMBER VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT PROTOCOL_NUMBER',
'      INTO V_PROTOCOL_NUMBER',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PROTOCOL_NUMBER != :P3_PROTOCOL_NUMBER THEN',
'      RETURN FALSE;',
'    ELSIF V_PROTOCOL_NUMBER IS NULL AND :P3_PROTOCOL_NUMBER IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_PROTOCOL_NUMBER IS NOT NULL AND :P3_PROTOCOL_NUMBER IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5148894004648331939)
,p_event_id=>wwv_flow_imp.id(5148893818916331938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PROTOCOL_NUMBER_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5148894032053331940)
,p_event_id=>wwv_flow_imp.id(5148893818916331938)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PROTOCOL_NUMBER_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5148894692150331946)
,p_name=>'P3_SPONSOR_ID_CHANGE hide'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SPONSOR_ID VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT SPONSOR_ID',
'      INTO V_SPONSOR_ID',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_SPONSOR_ID != :P3_SPONSOR_ID THEN',
'      RETURN FALSE;',
'    ELSIF V_SPONSOR_ID IS NULL AND :P3_SPONSOR_ID IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_SPONSOR_ID IS NOT NULL AND :P3_SPONSOR_ID IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5148894775064331947)
,p_event_id=>wwv_flow_imp.id(5148894692150331946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PROTOCOL_NUMBER_CHANGE,P3_SPONSOR_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235095698051908798)
,p_event_id=>wwv_flow_imp.id(5148894692150331946)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_SPONSOR_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235096144346908803)
,p_name=>'P3_TITLE_CHANGE hide'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TITLE VARCHAR2(4000);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TITLE',
'      INTO V_TITLE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_TITLE != :P3_TITLE THEN',
'      RETURN FALSE;',
'    ELSIF V_TITLE IS NULL AND :P3_TITLE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_TITLE IS NOT NULL AND :P3_TITLE IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235096217564908804)
,p_event_id=>wwv_flow_imp.id(5235096144346908803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_TITLE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235096398354908805)
,p_event_id=>wwv_flow_imp.id(5235096144346908803)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_TITLE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235096873227908810)
,p_name=>'P3_TOT_PATIENTS_CHANGE hide'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TOT_PATIENTS VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TOT_PATIENTS',
'      INTO V_TOT_PATIENTS',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_TOT_PATIENTS != :P3_TOT_PATIENTS THEN',
'      RETURN FALSE;',
'    ELSIF V_TOT_PATIENTS IS NULL AND :P3_TOT_PATIENTS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_TOT_PATIENTS IS NOT NULL AND :P3_TOT_PATIENTS IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235096929234908811)
,p_event_id=>wwv_flow_imp.id(5235096873227908810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_TOT_PATIENTS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235097106464908812)
,p_event_id=>wwv_flow_imp.id(5235096873227908810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_TOT_PATIENTS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4757764983371728402)
,p_name=>'P3_PERC_CAP_CHANGE hide'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PERC_CAP VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT PERC_CAP',
'      INTO V_PERC_CAP',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PERC_CAP != :P3_PERC_CAP THEN',
'      RETURN FALSE;',
'    ELSIF V_PERC_CAP IS NULL AND :P3_PERC_CAP IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_PERC_CAP IS NOT NULL AND :P3_PERC_CAP IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4757765070159728403)
,p_event_id=>wwv_flow_imp.id(4757764983371728402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PERC_CAP_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3291930447334157699)
,p_name=>'P3_CAUCASIAN_CAP_CHANGE hide'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CAUCASIAN_CAP VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT CAUCASIAN_CAP',
'      INTO V_CAUCASIAN_CAP',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_CAUCASIAN_CAP != :P3_CAUCASIAN_CAP THEN',
'      RETURN FALSE;',
'    ELSIF V_CAUCASIAN_CAP IS NULL AND :P3_CAUCASIAN_CAP IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_CAUCASIAN_CAP IS NOT NULL AND :P3_CAUCASIAN_CAP IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(3291930550164157700)
,p_event_id=>wwv_flow_imp.id(3291930447334157699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CAUCASIAN_CAP_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235097611518908817)
,p_name=>'P3_THERAPEUTIC_AREA_CHANGE hide'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_THERAPEUTIC_AREA VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT THERAPEUTIC_AREA',
'      INTO V_THERAPEUTIC_AREA',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_THERAPEUTIC_AREA != :P3_THERAPEUTIC_AREA THEN',
'      RETURN FALSE;',
'    ELSIF V_THERAPEUTIC_AREA IS NULL AND :P3_THERAPEUTIC_AREA IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_THERAPEUTIC_AREA IS NOT NULL AND :P3_THERAPEUTIC_AREA IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235097662082908818)
,p_event_id=>wwv_flow_imp.id(5235097611518908817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_THERAPEUTIC_AREA_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235097746081908819)
,p_event_id=>wwv_flow_imp.id(5235097611518908817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_THERAPEUTIC_AREA_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235098266091908824)
,p_name=>'P3_START_DATE_CHANGE hide'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_START_DATE VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TO_CHAR(START_DATE,''DD-MON-YYYY'')',
'      INTO V_START_DATE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_START_DATE != UPPER(:P3_START_DATE) THEN',
'      RETURN FALSE;',
'    ELSIF V_START_DATE IS NULL AND :P3_START_DATE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_START_DATE IS NOT NULL AND :P3_START_DATE IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235098362793908825)
,p_event_id=>wwv_flow_imp.id(5235098266091908824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_START_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235098462326908826)
,p_event_id=>wwv_flow_imp.id(5235098266091908824)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_START_DATE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235099010737908831)
,p_name=>'P3_END_DATE_CHANGE hide'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_END_DATE VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TO_CHAR(END_DATE,''DD-MON-YYYY'')',
'      INTO V_END_DATE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_END_DATE != :P3_END_DATE THEN',
'      RETURN FALSE;',
'    ELSIF V_END_DATE IS NULL AND :P3_END_DATE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_END_DATE IS NOT NULL AND :P3_END_DATE IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235099061211908832)
,p_event_id=>wwv_flow_imp.id(5235099010737908831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_END_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235099149023908833)
,p_event_id=>wwv_flow_imp.id(5235099010737908831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_END_DATE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235099647472908838)
,p_name=>'P3_PATIENT_RECRUIT_CHANGE hide'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PATIENT_RECRUIT VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT PATIENT_RECRUIT',
'      INTO V_PATIENT_RECRUIT',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PATIENT_RECRUIT != :P3_PATIENT_RECRUIT THEN',
'      RETURN FALSE;',
'    ELSIF V_PATIENT_RECRUIT IS NULL AND :P3_PATIENT_RECRUIT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_PATIENT_RECRUIT IS NOT NULL AND :P3_PATIENT_RECRUIT IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235099806519908839)
,p_event_id=>wwv_flow_imp.id(5235099647472908838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PATIENT_RECRUIT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235099897034908840)
,p_event_id=>wwv_flow_imp.id(5235099647472908838)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PATIENT_RECRUIT_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235100349194908845)
,p_name=>'P3_PHASE_CHANGE hide'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PHASE VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT PHASE',
'      INTO V_PHASE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_PHASE != :P3_PHASE THEN',
'      RETURN FALSE;',
'    ELSIF V_PHASE IS NULL AND :P3_PHASE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_PHASE IS NOT NULL AND :P3_PHASE IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235100417656908846)
,p_event_id=>wwv_flow_imp.id(5235100349194908845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PHASE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235100519327908847)
,p_event_id=>wwv_flow_imp.id(5235100349194908845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PHASE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235286998343524500)
,p_name=>'P3_STUDY_ACTIVE_CHANGE hide'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_ACTIVE VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STUDY_ACTIVE',
'      INTO V_STUDY_ACTIVE',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_STUDY_ACTIVE != :P3_STUDY_ACTIVE THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_ACTIVE IS NULL AND :P3_STUDY_ACTIVE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_ACTIVE IS NOT NULL AND :P3_STUDY_ACTIVE IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235287050199524501)
,p_event_id=>wwv_flow_imp.id(5235286998343524500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_ACTIVE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235287143571524502)
,p_event_id=>wwv_flow_imp.id(5235286998343524500)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_ACTIVE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235287715463524507)
,p_name=>'P3_BLINDED_CHANGE hide'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BLINDED VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT BLINDED',
'      INTO V_BLINDED',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_BLINDED != :P3_BLINDED THEN',
'      RETURN FALSE;',
'    ELSIF V_BLINDED IS NULL AND :P3_BLINDED IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_BLINDED IS NOT NULL AND :P3_BLINDED IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235287799813524508)
,p_event_id=>wwv_flow_imp.id(5235287715463524507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_BLINDED_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235287832236524509)
,p_event_id=>wwv_flow_imp.id(5235287715463524507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_BLINDED_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235288711086524517)
,p_name=>'P3_DRUG_SHIPMENT_CHANGE hide'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DRUG_SHIPMENT VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DRUG_SHIPMENT',
'      INTO V_DRUG_SHIPMENT',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_DRUG_SHIPMENT != :P3_DRUG_SHIPMENT THEN',
'      RETURN FALSE;',
'    ELSIF V_DRUG_SHIPMENT IS NULL AND :P3_DRUG_SHIPMENT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DRUG_SHIPMENT IS NOT NULL AND :P3_DRUG_SHIPMENT IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235288736178524518)
,p_event_id=>wwv_flow_imp.id(5235288711086524517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_DRUG_SHIPMENT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235288915030524519)
,p_event_id=>wwv_flow_imp.id(5235288711086524517)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_DRUG_SHIPMENT_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235289348066524524)
,p_name=>'P3_CALC_SCH_VISIT_FROM_CHANGE hide'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CALC_SCH_VISIT_FROM VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT CALC_SCH_VISIT_FROM',
'      INTO V_CALC_SCH_VISIT_FROM',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_CALC_SCH_VISIT_FROM != :P3_CALC_SCH_VISIT_FROM THEN',
'      RETURN FALSE;',
'    ELSIF V_CALC_SCH_VISIT_FROM IS NULL AND :P3_CALC_SCH_VISIT_FROM IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_CALC_SCH_VISIT_FROM IS NOT NULL AND :P3_CALC_SCH_VISIT_FROM IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235289454075524525)
,p_event_id=>wwv_flow_imp.id(5235289348066524524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CALC_SCH_VISIT_FROM_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235289537360524526)
,p_event_id=>wwv_flow_imp.id(5235289348066524524)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CALC_SCH_VISIT_FROM_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235290088622524531)
,p_name=>'P3_NOTES_CHANGE hide'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CALC_SCH_VISIT_FROM VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT CALC_SCH_VISIT_FROM',
'      INTO V_CALC_SCH_VISIT_FROM',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_CALC_SCH_VISIT_FROM != :P3_CALC_SCH_VISIT_FROM THEN',
'      RETURN FALSE;',
'    ELSIF V_CALC_SCH_VISIT_FROM IS NULL AND :P3_CALC_SCH_VISIT_FROM IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_CALC_SCH_VISIT_FROM IS NOT NULL AND :P3_CALC_SCH_VISIT_FROM IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235290177907524532)
,p_event_id=>wwv_flow_imp.id(5235290088622524531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_NOTES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235290286472524533)
,p_event_id=>wwv_flow_imp.id(5235290088622524531)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_NOTES_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235290801277524538)
,p_name=>'P3_STUDY_DURATION_CHANGE hide'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_DURATION VARCHAR2(200);',
'BEGIN',
'  IF :P3_STUDY_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STUDY_DURATION',
'      INTO V_STUDY_DURATION',
'      FROM EDC_STUDY',
'     WHERE STUDY_ID = :P3_STUDY_ID;',
'',
'    IF V_STUDY_DURATION != :P3_STUDY_DURATION THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_DURATION IS NULL AND :P3_STUDY_DURATION IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_DURATION IS NOT NULL AND :P3_STUDY_DURATION IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(5235290853408524539)
,p_event_id=>wwv_flow_imp.id(5235290801277524538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_DURATION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235290953275524540)
,p_event_id=>wwv_flow_imp.id(5235290801277524538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_DURATION_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5148893450387331934)
,p_name=>'P3_STUDY_NUMBER_CHANGE show'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_STUDY_NUMBER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5148893600691331935)
,p_event_id=>wwv_flow_imp.id(5148893450387331934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_NUMBER_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5148894140635331941)
,p_name=>'P3_PROTOCOL_NUMBER_CHANGE show'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_PROTOCOL_NUMBER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5148894252412331942)
,p_event_id=>wwv_flow_imp.id(5148894140635331941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PROTOCOL_NUMBER_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235095802139908799)
,p_name=>'P3_SPONSOR_ID_CHANGE show'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_SPONSOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235095910909908800)
,p_event_id=>wwv_flow_imp.id(5235095802139908799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_SPONSOR_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235096500964908806)
,p_name=>'P3_TITLE_CHANGE show'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235096570738908807)
,p_event_id=>wwv_flow_imp.id(5235096500964908806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_TITLE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235097119649908813)
,p_name=>'P3_TOT_PATIENTS_CHANGE show'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_TOT_PATIENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235097275779908814)
,p_event_id=>wwv_flow_imp.id(5235097119649908813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_TOT_PATIENTS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4757765554161728407)
,p_event_id=>wwv_flow_imp.id(5235097119649908813)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PERC_CAP'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'FLOOR(:P3_TOT_PATIENTS * .60)'
,p_attribute_07=>'P3_TOT_PATIENTS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4757765347557728405)
,p_name=>'P3_PERC_CAP_CHANGE show'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_PERC_CAP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4757765400096728406)
,p_event_id=>wwv_flow_imp.id(4757765347557728405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PERC_CAP_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3291930256030157697)
,p_name=>'P3_CAUCASIAN_CAP_CHANGE show'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_CAUCASIAN_CAP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3291930362805157698)
,p_event_id=>wwv_flow_imp.id(3291930256030157697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CAUCASIAN_CAP_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235097912345908820)
,p_name=>'P3_THERAPEUTIC_AREA_CHANGE show'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_THERAPEUTIC_AREA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235097990732908821)
,p_event_id=>wwv_flow_imp.id(5235097912345908820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_THERAPEUTIC_AREA_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235098589598908827)
,p_name=>'P3_START_DATE_CHANGE show'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235098686605908828)
,p_event_id=>wwv_flow_imp.id(5235098589598908827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_START_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235099298149908834)
,p_name=>'P3_END_DATE_CHANGE show'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235099392159908835)
,p_event_id=>wwv_flow_imp.id(5235099298149908834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_END_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235099991336908841)
,p_name=>'P3_PATIENT_RECRUIT_CHANGE show'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_PATIENT_RECRUIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235100103146908842)
,p_event_id=>wwv_flow_imp.id(5235099991336908841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PATIENT_RECRUIT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235288209307524512)
,p_name=>'P3_PHASE_CHANGE show'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_PHASE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235288308568524513)
,p_event_id=>wwv_flow_imp.id(5235288209307524512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PHASE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235287247706524503)
,p_name=>'P3_STUDY_ACTIVE_CHANGE show'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_STUDY_ACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235287402922524504)
,p_event_id=>wwv_flow_imp.id(5235287247706524503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_ACTIVE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235287978848524510)
,p_name=>'P3_BLINDED_CHANGE show'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_BLINDED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235288114570524511)
,p_event_id=>wwv_flow_imp.id(5235287978848524510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_BLINDED_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235288983992524520)
,p_name=>'P3_DRUG_SHIPMENT_CHANGE show'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_DRUG_SHIPMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235289097644524521)
,p_event_id=>wwv_flow_imp.id(5235288983992524520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_DRUG_SHIPMENT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235289616940524527)
,p_name=>'P3_CALC_SCH_VISIT_FROM_CHANGE show'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_CALC_SCH_VISIT_FROM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235289780247524528)
,p_event_id=>wwv_flow_imp.id(5235289616940524527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CALC_SCH_VISIT_FROM_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235290456000524535)
,p_name=>'P3_NOTES_CHANGE show'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NOTES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235290520241524536)
,p_event_id=>wwv_flow_imp.id(5235290456000524535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_NOTES_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235291041667524541)
,p_name=>'P3_STUDY_DURATION_CHANGE show'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_STUDY_DURATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235291128510524542)
,p_event_id=>wwv_flow_imp.id(5235291041667524541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_STUDY_DURATION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235899333544996337)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5235518325547583426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235899757758996358)
,p_event_id=>wwv_flow_imp.id(5235899333544996337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_STUDY,&P3_STUDY_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3306848418205824597)
,p_name=>'Set Caucasian Cap'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_PERC_CAP'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P3_PERC_CAP'') != '''' && $v(''P3_TOT_PATIENTS'') != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3306848583236824598)
,p_event_id=>wwv_flow_imp.id(3306848418205824597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P3_CAUCASIAN_CAP := TO_NUMBER(:P3_TOT_PATIENTS) - TO_NUMBER(:P3_PERC_CAP);',
'END;'))
,p_attribute_02=>'P3_TOT_PATIENTS,P3_PERC_CAP'
,p_attribute_03=>'P3_CAUCASIAN_CAP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147255454086632958)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_STUDY'
,p_attribute_02=>'EDC_STUDY'
,p_attribute_03=>'APP_EDC_STUDY_ID'
,p_attribute_04=>'STUDY_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11046304685945128865
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147255628021632959)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'   L_PRIMARY_KEY NUMBER;',
'   BEGIN',
'   SELECT nvl(MAX(STUDY_ID),0) + 1',
'   INTO L_PRIMARY_KEY',
'   FROM EDC_STUDY;',
'',
'   RETURN L_PRIMARY_KEY;',
'  END;',
'begin ',
'  :P3_STUDY_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(12147249451605632942)
,p_internal_uid=>11046304859880128866
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147255855462632959)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_STUDY'
,p_attribute_02=>'EDC_STUDY'
,p_attribute_03=>'P3_STUDY_ID'
,p_attribute_04=>'STUDY_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11046305087321128866
,p_process_comment=>'Unable to process row of table EDC_STUDY.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147256053872632959)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'6'
,p_internal_uid=>11046305285731128866
);
wwv_flow_imp.component_end;
end;
/
