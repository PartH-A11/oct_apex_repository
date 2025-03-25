prompt --application/pages/page_00097
begin
--   Manifest
--     PAGE: 00097
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
 p_id=>97
,p_tab_set=>'TS1'
,p_name=>'Informed Consent'
,p_step_title=>'Informed Consent'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10727990354320966941)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10728204150829255151)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>9
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11050911173095856995)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10728338244030479935)
,p_plug_name=>'TEMP'
,p_parent_plug_id=>wwv_flow_imp.id(10728204150829255151)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>8
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
 p_id=>wwv_flow_imp.id(10727985337402966921)
,p_plug_name=>'Informed Consent'
,p_parent_plug_id=>wwv_flow_imp.id(10728338244030479935)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10728206133907278627)
,p_plug_name=>'Demography'
,p_parent_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
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
 p_id=>wwv_flow_imp.id(10728206556070285052)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10727985652559966922)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt_id number;',
'v_pp_id number;',
'v_status number;',
'',
'begin ',
'    if :P97_SECTION_STATUS not in  (''Open'',''Ready For CRA Review'') then',
'       return false;',
'    else',
'    If :P97_ICD_ID is not null then',
'',
'              select STATUS into v_status',
'                from EDC_PATIENT_PROFILE',
'               where patient_profile_id = :P37_PATIENT_PROFILE_ID;   ',
'       If v_status = 2 then         ',
'           return false;',
'       else',
'           return true; ',
'       End If;',
'      Else',
'         return false;',
'      End If;   ',
'',
'   End If;',
' ',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10728330753380132565)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'ADD_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Query'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11046831180814448268)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10728332249009140759)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P97_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_VISIT_ID,P6_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10727985934603966922)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'< Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10727985533231966922)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt_id number;',
'v_pp_id number;',
'v_status number;',
'begin ',
'    If :P97_ICD_ID is null then',
'',
'      ',
'       begin',
'           select PATIENT_PROFILE_ID into v_pp_id',
'             from EDC_PATIENT_VISIT ',
'            where PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'       end;',
'      If v_pp_id = :P37_PATIENT_PROFILE_ID  then',
'',
'          begin',
'              select STATUS into v_status',
'                from EDC_PATIENT_PROFILE',
'               where patient_profile_id = v_pp_id;   ',
'          end;',
'          If v_status = 2 then         ',
'             return false;',
'          else',
'             return true; ',
'          End If;',
'      Else',
'         return true;',
'      End If;   ',
'',
'',
'   End If;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10727985729561966922)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P97_ICD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10728333841306157439)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'SUBMIT_FOR_MONITORING'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit For Monitoring'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''CRC'') = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10728334137282165735)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'MONITOR_SECTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Monitor Section'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''CRA'') = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11046584459245172844)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10728334548841178524)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'OPEN_SECTION_FOR_SITE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Open Section For Site'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''CRA'') = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10728403837766718098)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'LOCK_SECTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lock Section'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''DM'') = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10728404451057731385)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_button_name=>'UNLOCK_SECTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Unlock Section'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''DMUL'') = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10727986542147966924)
,p_branch_action=>'f?p=&APP_ID.:97:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727986743493966925)
,p_name=>'P97_ICD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Icd Id'
,p_source=>'ICD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727986936076966933)
,p_name=>'P97_PATIENT_VISIT_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_PATIENT_VISIT_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Patient Visit Id'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727987133297966935)
,p_name=>'P97_ICFSIGN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Did the subject sign the informed consent?</B>'
,p_source=>'ICFSIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_Y_N_LOV'
,p_lov=>'.'||wwv_flow_imp.id(11054081287216385131)||'.'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727987330725966937)
,p_name=>'P97_ICFDTC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_use_cache_before_default=>'NO'
,p_item_default=>'to_char(sysdate,''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Date of Informed consent signed</b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'ICFDTC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727987533231966937)
,p_name=>'P97_AGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10728206133907278627)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Age</b>'
,p_source=>'AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727987756973966937)
,p_name=>'P97_GENDER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10728206133907278627)
,p_use_cache_before_default=>'NO'
,p_item_default=>'F'
,p_prompt=>'<b>Gender</b>'
,p_post_element_text=>'&nbsp;&nbsp;<B>Female</B>'
,p_source=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;F'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_tag_attributes=>'disabled'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727987941934966937)
,p_name=>'P97_WEIGHT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10728206133907278627)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Weight</B>'
,p_post_element_text=>'&nbsp; (KG)'
,p_source=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727988153415966937)
,p_name=>'P97_HEIGHT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10728206133907278627)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Height</B>'
,p_post_element_text=>'&nbsp;&nbsp;(CMs)'
,p_source=>'HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727988334516966938)
,p_name=>'P97_RACE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10728206133907278627)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Race</b>'
,p_source=>'RACE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PATIENT_RACE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.DISPLAY_VALUE D, B.STORED_vALUE R ',
'FROM EDC_LOV A, EDC_LOV_VALUES B',
' WHERE A.LOV_ID = B.LOV_ID',
'   AND LOV_NAME = ''PATIENT_RACE''',
'order by 1'))
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_colspan=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10727988542105966938)
,p_name=>'P97_CREATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10728206556070285052)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
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
 p_id=>wwv_flow_imp.id(10727988752324966938)
,p_name=>'P97_CREATED_DT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10728206556070285052)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(10727988958341966938)
,p_name=>'P97_UPDATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10728206556070285052)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
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
 p_id=>wwv_flow_imp.id(10727989131888966939)
,p_name=>'P97_UPDATED_DT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(10728206556070285052)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated Date'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(10728141053124027979)
,p_name=>'P97_BIRTHDTC'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(10728206133907278627)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Date of Birth</B>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'BIRTHDTC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1960:2015'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10728394849760348208)
,p_name=>'P97_SECTION_STATUS'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(10728338244030479935)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'<b>Section Status :</b>'
,p_pre_element_text=>'<B>'
,p_post_element_text=>'</b>'
,p_source=>'SECTION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_CRF_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VAL d, RETURN_VAL r from EDC_CRF_STATUS',
'where status=1 order by disp_seq'))
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10728402636788657977)
,p_name=>'P97_NO_OF_QUERIES'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM edc_crf_queries',
' where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
' AND QRY_STATUS in (''Open'',''Reopen'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10728454753896154093)
,p_name=>'P97_STUDY_ID'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(10727985337402966921)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(10728289251373771683)
,p_computation_sequence=>10
,p_computation_item=>'P97_ICD_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN EDC_UTIL.GET_PK_VALUE_COMPUTATION(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID);',
'',
'END;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10728286854206742076)
,p_name=>'set age'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P97_BIRTHDTC'
,p_condition_element=>'P97_BIRTHDTC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10728287156984742077)
,p_event_id=>wwv_flow_imp.id(10728286854206742076)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P97_AGE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>' FLOOR((months_between(sysdate,:P97_BIRTHDTC))/12)'
,p_attribute_07=>'P97_BIRTHDTC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10728287331537742078)
,p_event_id=>wwv_flow_imp.id(10728286854206742076)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P97_AGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10727989527420966940)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_ICD'
,p_attribute_02=>'EDC_CRF_ICD'
,p_attribute_03=>'P97_ICD_ID'
,p_attribute_04=>'ICD_ID'
,p_internal_uid=>10727989527420966940
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10727989748367966940)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(ICD_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_CRF_ICD;',
'',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P97_ICD_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10727985533231966922)
,p_internal_uid=>10727989748367966940
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10728404851581769390)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INFORMATIVE MESSAGES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_msg varchar2(4000) := '''';',
'    V_CNT NUMBER;',
'    v_section_status varchar2(25) := ''Ready For CRA Review'';',
'    v_qry_cnt number;',
'BEGIN',
' -- null;',
'DELETE FROM EDC_CRF_QUERIES WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID AND PAGE_ID = :APP_PAGE_ID',
'  AND TRIM(UPPER(QRY_STATUS)) = TRIM(UPPER(''OPEN'')) AND AUTO_FLAG = ''A''',
'  AND QRY_ID NOT IN (SELECT QRY_ID fROM EDC_CRF_QUERIES_DETAILS);',
'',
'   if :P97_ICFSIGN is null then',
'',
'       v_msg  := v_msg || ''Did the subject sign the informed consent?,is missing, Please provide. <br>'';',
'       EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID,''P97_ICFSIGN'',''Did the subject sign the informed consent?,is missing, Please provide.'');',
'      ',
'       v_section_status := ''Open'';',
'   end if;',
'   ',
'      if :P97_ICFDTC is null then',
'',
'       v_msg  := v_msg || ''Date of Informed consent signed.,is missing, Please provide. <br>'';',
'       EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID,''P97_ICFDTC'',''Date of Informed consent signed.,is missing, Please provide.'');',
'      ',
'       v_section_status := ''Open'';',
'   end if;',
'   ',
'         if :P97_BIRTHDTC is null then',
'',
'       v_msg  := v_msg || ''Date of Birth is missing, Please provide. <br>'';',
'       EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID,''P97_BIRTHDTC'',''Date of Birth is missing, Please provide.'');',
'',
'       v_section_status := ''Open'';',
'   end if;',
'   ',
'         if :P97_AGE is null then',
'',
'       v_msg  := v_msg || ''Age is missing, Please provide. <br>'';',
'       EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID,''P97_AGE'',''Age is missing, Please provide.'');',
'',
'       v_section_status := ''Open'';',
'   end if;   ',
'   ',
'      /*   if :P97_GENDER is null then',
'',
'       v_msg  := v_msg || ''Gender is missing, Please provide. <br>'';',
'       EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID,''P97_GENDER'',''Gender is missing, Please provide.'');',
'',
'       v_section_status := ''Open'';',
'   end if;    */',
'',
'         if :P97_WEIGHT is null then',
'',
'       v_msg  := v_msg || ''Weight is missing, Please provide. <br>'';',
'       EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID,''P97_WEIGHT'',''Weight is missing, Please provide.'');',
'',
'       v_section_status := ''Open'';',
'   end if;    ',
'   ',
'         if :P97_HEIGHT is null then',
'',
'       v_msg  := v_msg || ''Height is missing, Please provide. <br>'';',
'       EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID,''P97_HEIGHT'',''Height is missing, Please provide.'');',
'',
'       v_section_status := ''Open'';',
'   end if;   ',
'   ',
'         if :P97_RACE is null then',
'',
'       v_msg  := v_msg || ''Race is missing, Please provide. <br>'';',
'       EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID,''P97_RACE'',''Race is missing, Please provide.'');',
'',
'       v_section_status := ''Open'';',
'   end if;   ',
'',
'   if trim(upper(:P97_SECTION_STATUS)) in (trim(upper(''Open'')),trim(upper(''Ready For CRA Review''))) then',
'',
'      select count(*) ',
'        into v_qry_cnt',
'        from edc_crf_queries',
'       where study_id = :APP_EDC_STUDY_ID',
'         and page_id = :APP_PAGE_ID',
'         and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'         and trim(upper(qry_status)) in (upper(''Open''),upper(''Reopen''));',
'   ',
'       if v_qry_cnt > 0 then',
'          :P97_SECTION_STATUS := trim(v_section_status);        ',
'       else',
'          :P97_SECTION_STATUS := trim(''Ready For CRA Review'');',
'       end if;',
'  ',
'    END IF;',
'IF LENGTH(V_MSG) > 0  THEN',
' apex_application.g_print_success_message := ''<span style=color:red>''||v_msg||''</span>'';',
'END IF;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error while generating Query.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10728404851581769390
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10727989955765966940)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_ICD'
,p_attribute_02=>'EDC_CRF_ICD'
,p_attribute_03=>'P97_ICD_ID'
,p_attribute_04=>'ICD_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>10727989955765966940
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10727990144576966940)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10727985729561966922)
,p_internal_uid=>10727990144576966940
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10728413133413577747)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT_FOR_MONITORING'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''CRC'','''');',
'',
'commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while submitting for Monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10728333841306157439)
,p_process_success_message=>'Submitted for Monitoring'
,p_internal_uid=>10728413133413577747
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10728413546357590992)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MONITOR_SECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''CRA'',''MONITOR'');',
'',
'commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while submitting for Monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10728334137282165735)
,p_process_success_message=>'Section Monitored.'
,p_internal_uid=>10728413546357590992
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10728413741986599195)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OPEN_SECTION_FOR_SITE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''CRA'',''OPEN'');',
'',
'COMMIT;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# -While opening the section for site.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10728334548841178524)
,p_process_success_message=>'Section opened for site.'
,p_internal_uid=>10728413741986599195
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10728413937615607403)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Lock Section'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''DM'','''');',
'',
'COMMIT;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - While section Lock.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10728403837766718098)
,p_process_success_message=>'Section Locked.'
,p_internal_uid=>10728413937615607403
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10728414137746616903)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Unlock Section'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,''DMUL'','''');',
'',
'COMMIT;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while unlocking the section.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10728404451057731385)
,p_process_success_message=>'Section unlocked.'
,p_internal_uid=>10728414137746616903
);
wwv_flow_imp.component_end;
end;
/
