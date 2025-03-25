prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_tab_set=>'TS1'
,p_name=>'Visit Detail'
,p_step_title=>'Visit Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.reason4change{',
'     display:none;',
'     border-color:red !important;',
'}',
'',
'',
'.uHorizontalTabs{',
'    display: none;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7753389438716414227)
,p_plug_name=>'Visit Detail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>16
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7753404117637414273)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7753389928236414228)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM EDC_PATIENT_VISIT',
' WHERE (PATIENT_VISIT_ID > :P82_PATIENT_VISIT_ID AND PATIENT_PROFILE_ID = :P82_PATIENT_PROFILE_ID)',
'    OR :P82_PATIENT_VISIT_ID IS NULL',
'    OR ((SELECT STATUS FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P82_PATIENT_PROFILE_ID) BETWEEN 3 AND 6)'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7753390161218414228)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7753389804914414228)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P82_PATIENT_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7753389997837414228)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7753389438716414227)
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
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7753391701015414231)
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6709548221713546073)
,p_name=>'P82_CRF_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_source=>'CRF_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7753392156034414233)
,p_name=>'P82_PATIENT_VISIT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7753392507159414243)
,p_name=>'P82_PATIENT_PROFILE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P37_PATIENT_PROFILE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'PATIENT_PROFILE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7753392966434414245)
,p_name=>'P82_VISIT_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_item_default=>'6'
,p_source=>'VISIT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7753393335395414245)
,p_name=>'P82_VISIT_TITLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Unscheduled Visit'
,p_source=>'VISIT_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7753393693828414245)
,p_name=>'P82_DESCRIPTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reason'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7753394078248414246)
,p_name=>'P82_VISIT_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Unscheduled'
,p_source=>'VISIT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7753394561848414246)
,p_name=>'P82_ACTUAL_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actual Date'
,p_source=>'ACTUAL_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P82_MIN_DATE.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'-05:+0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7754997511439752459)
,p_name=>'P82_PARAM_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_param_id number;',
'begin',
'SELECT min(param_id) ',
'   into v_param_id',
'   FROM EDC_PATIENT_vISIT_PARAMS',
'    WHERE VISIT_TYPE = ''Unscheduled'';',
'    ',
'    return v_param_id;',
'    ',
'    end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'PARAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7755043581271906158)
,p_name=>'P82_MIN_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11660340791991124853)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(ACTUAL_DATE) FROM EDC_PATIENT_VISIT',
' WHERE PATIENT_PROFILE_ID = :p37_patient_profile_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7755517143610734458)
,p_name=>'P82_ACTUAL_DATE_CHANGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_prompt=>'Actual Date'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>2
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7755517266857734459)
,p_name=>'P82_DESCRIPTION_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7753389438716414227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reason'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>2
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7755555968367697364)
,p_validation_name=>'ACTUAL_DATE_REASON NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P82_ACTUAL_DATE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_VISIT',
' WHERE NVL(ACTUAL_DATE, TRUNC(SYSDATE)) <> NVL(:P82_ACTUAL_DATE, TRUNC(SYSDATE))',
'   AND TRIM(:P82_ACTUAL_DATE_CHANGE) IS NULL',
'   AND PATIENT_VISIT_ID = :P82_PATIENT_VISIT_ID'))
,p_validation_condition_type=>'EXISTS'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7755555979122697365)
,p_validation_name=>'REASON_CHANGE NOT NULL_1'
,p_validation_sequence=>20
,p_validation=>'P82_DESCRIPTION_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_VISIT',
' WHERE nvl(DESCRIPTION,''!'') <> NVL(:P82_DESCRIPTION,''!'')',
'   AND TRIM(:P82_DESCRIPTION_CHANGE) IS NULL',
'   AND PATIENT_VISIT_ID = :P82_PATIENT_VISIT_ID'))
,p_validation_condition_type=>'EXISTS'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7755517366128734460)
,p_name=>'Show hide reason for change'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P82_PATIENT_VISIT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7755517441626734461)
,p_event_id=>wwv_flow_imp.id(7755517366128734460)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var ajaxRequest = new htmldb_Get( ',
'                                  null,  ',
'                                  $x(''pFlowId'').value,',
'                                  ''APPLICATION_PROCESS=SHOW_REASON_FOR_CHANGE'',',
'                                  $x(''pFlowStepId'').value',
'                                  );',
'',
'  var ajaxResult = ajaxRequest.get()',
'',
'  /* Load dynamic JQuery generated by PL/SQL Process*/',
'  //console.log(ajaxResult);',
'  eval(ajaxResult);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7755555501583697360)
,p_name=>'show date reason for change'
,p_event_sequence=>20
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM edc_patient_visit ',
' WHERE ( (ACTUAL_DATE <> :P82_ACTUAL_DATE) OR ',
'         (ACTUAL_DATE IS NULL AND :P82_ACTUAL_DATE IS NOT NULL) OR',
'         (ACTUAL_DATE IS NOT NULL AND :P82_ACTUAL_DATE IS NULL))',
'   AND PATIENT_VISIT_ID = :P82_PATIENT_VISIT_ID'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7755555644168697361)
,p_event_id=>wwv_flow_imp.id(7755555501583697360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_ACTUAL_DATE_CHANGE'
,p_attribute_01=>'$(''#P82_ACTUAL_DATE_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7755555698072697362)
,p_name=>'show REASON reason for change'
,p_event_sequence=>30
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM edc_patient_visit ',
' WHERE ( (DESCRIPTION <> :P82_DESCRIPTION) OR ',
'         (DESCRIPTION IS NULL AND :P82_DESCRIPTION IS NOT NULL) OR',
'         (DESCRIPTION IS NOT NULL AND :P82_DESCRIPTION IS NULL))',
'   AND PATIENT_VISIT_ID = :P82_PATIENT_VISIT_ID'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7755555856676697363)
,p_event_id=>wwv_flow_imp.id(7755555698072697362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_ACTUAL_DATE_CHANGE'
,p_attribute_01=>'$(''#P82_DESCRIPTION_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7753395658655414249)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_PATIENT_VISIT'
,p_attribute_02=>'EDC_PATIENT_VISIT'
,p_attribute_03=>'P82_PATIENT_VISIT_ID'
,p_attribute_04=>'PATIENT_VISIT_ID'
,p_process_when_type=>'NEVER'
,p_internal_uid=>6652444890513910156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7754996114335734936)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select EDC_PATIENT_VISIT_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P82_PATIENT_VISIT_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(7753389804914414228)
,p_internal_uid=>6654045346194230843
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7753396035162414249)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_PATIENT_VISIT'
,p_attribute_02=>'EDC_PATIENT_VISIT'
,p_attribute_03=>'P82_PATIENT_VISIT_ID'
,p_attribute_04=>'PATIENT_VISIT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>6652445267020910156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7753396393124414250)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7753389997837414228)
,p_internal_uid=>6652445624982910157
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5239768706356194798)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE VISIT AND REDIRECT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_VISIT_TYPE       EDC_PATIENT_VISIT_PARAMS.VISIT_TYPE%TYPE;',
'    V_PARAM_ID         EDC_PATIENT_VISIT_PARAMS.PARAM_ID%TYPE;',
'    V_VISIT_NAME       EDC_PATIENT_VISIT_PARAMS.VISIT_NAME%TYPE;',
'    V_PATIENT_VISIT_ID NUMBER;',
'BEGIN',
'  SELECT PARAM_ID',
'       , VISIT_NAME',
'       , VISIT_TYPE',
'    INTO V_PARAM_ID',
'       , V_VISIT_NAME',
'       , V_VISIT_TYPE',
'    FROM EDC_PATIENT_VISIT_PARAMS',
'   WHERE VISIT_TYPE = ''Unscheduled'';',
'',
'  V_PATIENT_VISIT_ID := EDC_PATIENT_VISIT_SEQ.NEXTVAL;',
'',
'  INSERT INTO EDC_PATIENT_VISIT( PATIENT_VISIT_ID',
'                               , PATIENT_PROFILE_ID',
'                               , VISIT_NUMBER',
'                               , VISIT_TITLE',
'                               , VISIT_TYPE',
'                               , CRF_STATUS',
'                               , PARAM_ID',
'                               , SCHEDULE_DATE',
'                               , ACTUAL_DATE',
'                               )',
'                         VALUES( V_PATIENT_VISIT_ID',
'                               , :P37_PATIENT_PROFILE_ID',
'                               , V_PARAM_ID',
'                               , V_VISIT_NAME',
'                               , V_VISIT_TYPE',
'                               , 2',
'                               , V_PARAM_ID',
'                               , SYSDATE',
'                               , SYSDATE',
'                               );',
'',
'  COMMIT;',
'--  APEX_UTIL.REDIRECT_URL(''f?p='' || v(''APP_ID'') || '':1001:'' || v(''SESSION'')||''::NO::P37_PATIENT_PROFILE_ID,APP_EDC_PATIENT_VISIT_ID:''||:P44_PATIENT_PROFILE_ID||'',''||v_patient_visit_id);',
'  APEX_UTIL.REDIRECT_URL(''f?p='' || v(''APP_ID'') || '':74:'' || v(''SESSION'')||''::NO:::'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4138817938214690705
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7755517478135734462)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SHOW_REASON_FOR_CHANGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SQL CLOB;',
'    CURSOR C1 IS (SELECT ITEM_NAME',
'                       , SUBSTR(ITEM_NAME,1,INSTR(ITEM_NAME,''_CHANGE'',-1,1)-1) ITEM',
'                    FROM APEX_APPLICATION_PAGE_ITEMS',
'                   WHERE ITEM_NAME LIKE ''%CHANGE%''',
'                     AND PAGE_ID = :APP_PAGE_ID',
'                     AND APPLICATION_ID = :APP_ID',
'                 );',
'BEGIN',
'    --HTP.P(''<script language="Javascript">'');',
'    FOR I IN C1 LOOP',
'        V_SQL := ''$(''''#''||I.ITEM||'''''').change(function(){',
'                      $(''''#''||I.ITEM_NAME||'''''').show();',
'                      $(''''#''||I.ITEM_NAME||''_LABEL'''').show();',
'                  });'';',
'',
'        HTP.P(V_SQL);',
'    END LOOP;',
'    -- HTP.P(''</script>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6654566709994230369
);
wwv_flow_imp.component_end;
end;
/
