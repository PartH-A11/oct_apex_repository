prompt --application/pages/page_00089
begin
--   Manifest
--     PAGE: 00089
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
 p_id=>89
,p_tab_set=>'TS1'
,p_name=>'Discontinue/Withdraw'
,p_step_title=>'Discontinue/Withdraw'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9747086724092327631)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130438509911979)
,p_plug_display_sequence=>211
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9747107421878890832)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9747086724092327631)
,p_button_name=>'Discontinue'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Discontinue'
,p_button_alignment=>'LEFT-CENTER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9747086828504327632)
,p_name=>'P89_REASON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9747086724092327631)
,p_prompt=>'Reason'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISCONT_REASON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VALUE,STORED_VALUE from EDC_LOV a,EDC_LOV_VALUES B',
'WHERE A.LOV_ID=B.LOV_ID ',
'AND A.LOV_NAME=''DISCONT_REASON''',
'order by stored_value'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9747107303771890831)
,p_name=>'P89_SPECIFY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9747086724092327631)
,p_prompt=>'Other Specify'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9747107515967890833)
,p_name=>'Enable Disable Other'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_REASON'
,p_condition_element=>'P89_REASON'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9747107621760890834)
,p_event_id=>wwv_flow_imp.id(9747107515967890833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SPECIFY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9747107778073890835)
,p_event_id=>wwv_flow_imp.id(9747107515967890833)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SPECIFY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9747107808524890836)
,p_event_id=>wwv_flow_imp.id(9747107515967890833)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SPECIFY'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9747107960043890837)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discontinue Subject'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'update edc_patient_profile',
'   set status = 4',
', DISCONTINUE_REASON = DECODE (:P89_REASON,''Other'',:P89_REASON||''-''|| :P89_SPECIFY,:P89_REASON)',
'where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Discontinue'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9747107421878890832)
,p_process_success_message=>'Action processed.'
,p_internal_uid=>8646157191902386744
);
wwv_flow_imp.component_end;
end;
/
