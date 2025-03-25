prompt --application/pages/page_00704
begin
--   Manifest
--     PAGE: 00704
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
 p_id=>704
,p_tab_set=>'TS1'
,p_name=>' &APP_PAGE_NAME.'
,p_step_title=>' &APP_PAGE_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10335145114638236299)
,p_plug_name=>' &APP_EDC_VISIT_NAME.'
,p_region_name=>'pg_reg_width'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>2
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11050911173095856995)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10335145185944236300)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(10335145114638236299)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10345730123980336129)
,p_plug_name=>' &APP_PAGE_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(10335145114638236299)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10346219279058124158)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(10335145114638236299)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180366321407887)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10345739421466336136)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10346404396977343377)
,p_button_sequence=>63
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'SUBMIT_FOR_MONITORING'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,4) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10346402639985330370)
,p_button_sequence=>64
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'MONITOR_SECTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SDV'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,6) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(11046584459245172844)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10346396796154267351)
,p_button_sequence=>65
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'REVIEW_SECTION_DM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Review'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,8) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10346195663550989580)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'LOCK_SECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lock'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,10) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10346199479641996403)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'UNLOCK_SECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Unlock'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,11) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345730568682336129)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P704_DM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345772740537556326)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'ADD_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Query'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_button_condition=>'EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11046831180814448268)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345776844566594660)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P704_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_VISIT_ID,P6_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_button_condition=>'P702_INC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345730763924336129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345730469416336129)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P704_DM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345730748033336129)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P704_DM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10345732420422336130)
,p_branch_action=>'f?p=&APP_ID.:704:&SESSION.::&DEBUG.:704::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10335145474388236303)
,p_name=>'P704_DEMODT_CHANGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_prompt=>'<b>Reason for change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10335145646842236304)
,p_name=>'P704_GENDER_CHANGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_prompt=>'<b>Reason for change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10335145694206236305)
,p_name=>'P704_HEIGHT_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_prompt=>'<b>Reason for change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10335145841401236306)
,p_name=>'P704_WEIGH_CHANGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_prompt=>'<b>Reason for change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345732785381336131)
,p_name=>'P704_DM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_use_cache_before_default=>'NO'
,p_source=>'DM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345733190583336132)
,p_name=>'P704_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_STUDY_ID',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345733599472336132)
,p_name=>'P704_PATIENT_VISIT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_PATIENT_VISIT_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345734039603336132)
,p_name=>'P704_SECTION_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10335145185944236300)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'<b>Section Status : </b>'
,p_source=>'SECTION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_CRF_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VAL d, RETURN_VAL r from EDC_CRF_STATUS',
'where status=1 order by disp_seq'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345734362737336133)
,p_name=>'P704_DEMODT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Date of Visit</B>'
,p_source=>'DEMODT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_tag_attributes=>'readonly=''readonly'''
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345734855169336133)
,p_name=>'P704_GENDER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Gender</b>'
,p_source=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_GENDER_1_2_LOV'
,p_lov=>'.'||wwv_flow_imp.id(10542033845955198236)||'.'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345735205230336133)
,p_name=>'P704_HEIGHT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Height</b>'
,p_post_element_text=>' Centimetres'
,p_source=>'HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345735634941336133)
,p_name=>'P704_WEIGHT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10345730123980336129)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Weight</b>'
,p_post_element_text=>' Kilograms'
,p_source=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345777112594602289)
,p_name=>'P704_NO_OF_QUERIES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(10335145185944236300)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM edc_crf_queries',
' where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
' AND QRY_STATUS in (''Open'',''Reopened'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345785148600704916)
,p_name=>'P704_IMG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(10335145185944236300)
,p_prompt=>'<b>CRF Audit Trail :</b>'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img ',
' id="P704_AUDIT"',
' src="#WORKSPACE_IMAGES#audit.png" ',
'',
' style="cursor: pointer" ',
'         width="25px"',
' title="Audit"',
'>',
''))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346219626678124159)
,p_name=>'P704_CREATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(10346219279058124158)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created By</b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346219988050124160)
,p_name=>'P704_CREATED_DT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(10346219279058124158)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346220376750124160)
,p_name=>'P704_UPDATED_BY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(10346219279058124158)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated By</b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346220772688124160)
,p_name=>'P704_UPDATED_DT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(10346219279058124158)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(10345744379963354108)
,p_computation_sequence=>30
,p_computation_item=>'P704_DM_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN EDC_UTIL.GET_PK_VALUE_COMPUTATION(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID);',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10346174663030673058)
,p_validation_name=>'P704_DEMODT_CHANGE'
,p_validation_sequence=>10
,p_validation=>'P704_DEMODT_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Date of Visit" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DEMODT VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT DEMODT',
'      INTO V_DEMODT',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_DEMODT != :P704_DEMODT THEN',
'      RETURN TRUE;',
'    ELSIF V_DEMODT IS NULL AND :P704_DEMODT IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DEMODT IS NOT NULL AND :P704_DEMODT IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10335145474388236303)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10346183807637828461)
,p_validation_name=>'P704_GENDER_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P704_GENDER_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Gender" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_gender VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT gender',
'      INTO V_gender',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_gender != :P704_gender THEN',
'      RETURN TRUE;',
'    ELSIF V_gender IS NULL AND :P704_gender IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_gender IS NOT NULL AND :P704_gender  IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10335145646842236304)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10346189230103897984)
,p_validation_name=>'P704_HEIGHT_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P704_HEIGHT_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Height" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_height VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT height',
'      INTO V_height',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_height != :P704_height THEN',
'      RETURN TRUE;',
'    ELSIF V_height IS NULL AND :P704_height IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_height IS NOT NULL AND :P704_height IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10335145694206236305)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10346190148706916925)
,p_validation_name=>'P704_WEIGH_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P704_WEIGH_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Weight" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_WEIGHT VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT weight',
'      INTO V_WEIGHT',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_WEIGHT != :P704_WEIGHT THEN',
'      RETURN TRUE;',
'    ELSIF V_WEIGHT IS NULL AND :P704_WEIGHT IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_WEIGHT IS NOT NULL AND :P704_WEIGHT IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10335145841401236306)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10346230534126167577)
,p_name=>'Audit'
,p_event_sequence=>9
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P704_AUDIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10346230949784167578)
,p_event_id=>wwv_flow_imp.id(10346230534126167577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_VISIT_ID:&APP_PAGE_ID.,&P704_PATIENT_VISIT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345996621748950416)
,p_name=>'REASON FOR CHANGE HEIGHT SHOW'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P704_HEIGHT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_HEIGHT VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT HEIGHT',
'      INTO V_HEIGHT',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_HEIGHT != UPPER(:P704_HEIGHT) THEN',
'      RETURN FALSE;',
'    ELSIF V_HEIGHT IS NULL AND :P704_HEIGHT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_HEIGHT IS NOT NULL AND :P704_HEIGHT IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345997015098950417)
,p_event_id=>wwv_flow_imp.id(10345996621748950416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_HEIGHT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345948626620477196)
,p_name=>'RESON FOR CHANGE DATE OF VISIT SHOW'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P704_DEMODT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DM VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DEMODT',
'      INTO V_DM',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_DM != :P704_DEMODT THEN',
'      RETURN FALSE;',
'    ELSIF V_DM IS NULL AND :P704_DEMODT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DM IS NOT NULL AND :P704_DEMODT IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345949000325477196)
,p_event_id=>wwv_flow_imp.id(10345948626620477196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_DEMODT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10346014209826032002)
,p_name=>'Reason for change weight show'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P704_WEIGHT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_weight VARCHAR2(22);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT weight',
'      INTO V_weight',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_weight != :P704_weight THEN',
'      RETURN FALSE;',
'    ELSIF V_weight IS NULL AND :P704_weight IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_weight IS NOT NULL AND :P704_weight IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10346014654259032002)
,p_event_id=>wwv_flow_imp.id(10346014209826032002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_WEIGH_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345979098860772886)
,p_name=>'Reason for change Gender show'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P704_GENDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_GENDER VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT GENDER',
'      INTO V_GENDER',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_GENDER != :P704_GENDER THEN',
'      RETURN FALSE;',
'    ELSIF V_GENDER IS NULL AND :P704_GENDER IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_GENDER IS NOT NULL AND :P704_GENDER IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345979546818772886)
,p_event_id=>wwv_flow_imp.id(10345979098860772886)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_GENDER_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345954170722508934)
,p_name=>'Reason for change gender change hide '
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DM VARCHAR2(22);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT gender',
'      INTO V_DM',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_DM != :P704_GENDER THEN',
'      RETURN FALSE;',
'    ELSIF V_DM IS NULL AND :P704_GENDER IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DM IS NOT NULL AND :P704_GENDER IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345954591252508934)
,p_event_id=>wwv_flow_imp.id(10345954170722508934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_GENDER_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345941052505388981)
,p_name=>'RESON FOR CHANGE DATE OF VISIT HIDE'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'unload'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DM VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DEMODT',
'      INTO V_DM',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_DM != :P704_DEMODT THEN',
'      RETURN FALSE;',
'    ELSIF V_DM IS NULL AND :P704_DEMODT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DM IS NOT NULL AND :P704_DEMODT IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345941407873388982)
,p_event_id=>wwv_flow_imp.id(10345941052505388981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_DEMODT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345993552274920384)
,p_name=>'REASON FOR CHANGE HEIGHT HIDE'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_HEIGHT VARCHAR2(200);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT HEIGHT',
'      INTO V_HEIGHT',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_HEIGHT != UPPER(:P704_HEIGHT) THEN',
'      RETURN FALSE;',
'    ELSIF V_HEIGHT IS NULL AND :P704_HEIGHT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_HEIGHT IS NOT NULL AND :P704_HEIGHT IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345993906029920384)
,p_event_id=>wwv_flow_imp.id(10345993552274920384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_HEIGHT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10346001784477969802)
,p_name=>'Reason for change weight  hide'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_weight VARCHAR2(22);',
'BEGIN',
'  IF :P704_DM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT weight',
'      INTO V_weight',
'      FROM EDC_CRF_DM',
'     WHERE DM_ID = :P704_DM_ID;',
'',
'    IF V_weight != :P704_weight THEN',
'      RETURN FALSE;',
'    ELSIF V_weight IS NULL AND :P704_weight IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_weight IS NOT NULL AND :P704_weight IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10346002156363969802)
,p_event_id=>wwv_flow_imp.id(10346001784477969802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_WEIGH_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10346201140682014610)
,p_name=>'Lock modal page'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10346195663550989580)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10346201464633014610)
,p_event_id=>wwv_flow_imp.id(10346201140682014610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:551:&APP_SESSION.::RP,551::P551_PK_ID,P551_PAGE_ID,P551_STATUS:&P704_ICF_ID.,&APP_PAGE_ID.,10'
,p_attribute_06=>'.uMessageText'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10346202511119022214)
,p_name=>'Unlock Modal Page'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10346199479641996403)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10346202951384022214)
,p_event_id=>wwv_flow_imp.id(10346202511119022214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:551:&APP_SESSION.::RP,551::P551_PK_ID,P551_PAGE_ID,P551_STATUS:&P704_ICF_ID.,&APP_PAGE_ID.,11'
,p_attribute_06=>'.uMessageText'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345737994668336135)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_DM'
,p_attribute_02=>'EDC_CRF_DM'
,p_attribute_03=>'P704_DM_ID'
,p_attribute_04=>'DM_ID'
,p_internal_uid=>10345737994668336135
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345738423678336136)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_DM'
,p_attribute_02=>'EDC_CRF_DM'
,p_attribute_03=>'P704_DM_ID'
,p_attribute_04=>'DM_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>10345738423678336136
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345780380305659435)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_VISIT_STATUS'
,p_process_sql_clob=>'EDC_WORKFLOW.update_visit_status(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'',''CREATE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>10345780380305659435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10346399317179299416)
,p_process_sequence=>63
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT_FOR_CRA_REVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while submitting for Monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SUBMIT_FOR_MONITORING'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Submitted for Monitoring.'
,p_internal_uid=>10346399317179299416
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10346398713718296667)
,p_process_sequence=>64
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SDV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while Monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MONITOR_SECTION'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Section Monitored.'
,p_internal_uid=>10346398713718296667
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10346396391039262200)
,p_process_sequence=>65
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_REVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# -While reviewing the section for site.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10346396796154267351)
,p_process_success_message=>'Section reviewed.'
,p_internal_uid=>10346396391039262200
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10346203657827027115)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_LOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - While section Lock.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10346195663550989580)
,p_process_success_message=>'Section Locked.'
,p_internal_uid=>10346203657827027115
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10346204541935029351)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_UNLOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,''O'');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while unlocking the section.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10346199479641996403)
,p_process_success_message=>'Section unlocked.'
,p_internal_uid=>10346204541935029351
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345738815331336136)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10345730748033336129)
,p_internal_uid=>10345738815331336136
);
wwv_flow_imp.component_end;
end;
/
