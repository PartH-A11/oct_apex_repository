prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_tab_set=>'TS1'
,p_name=>'Unblind Subject'
,p_step_title=>'Unblind Subject'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(11017835689714707247)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10641775232262306015)
,p_plug_name=>'Authentication'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<b>Please provide your Login Credentials to proceed.</b><hr/>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10641775562714306018)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10641775232262306015)
,p_button_name=>'UNBLIND_SUBJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Unblinding'
,p_button_alignment=>'RIGHT-CENTER'
,p_grid_new_row=>'Y'
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2293740196922774698)
,p_name=>'P58_MED_EMERG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10641775232262306015)
,p_item_default=>'No'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10641775325424306016)
,p_name=>'P58_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10641775232262306015)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>':APP_USER'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10641775472809306017)
,p_name=>'P58_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10641775232262306015)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10641775690392306019)
,p_name=>'P58_UNBLINDED_REASON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10641775232262306015)
,p_prompt=>'Reason for Unblinding'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>31
,p_cHeight=>3
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10641775783462306020)
,p_validation_name=>'P58_USERNAME NOT NULL'
,p_validation_sequence=>10
,p_validation=>'TRIM(:P58_USERNAME) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please enter </b>Username</b>'
,p_associated_item=>wwv_flow_imp.id(10641775325424306016)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10641775842779306021)
,p_validation_name=>'P58_PASSWORD NOT NULL'
,p_validation_sequence=>20
,p_validation=>'TRIM(:P58_PASSWORD) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please enter </b>Password</b>'
,p_associated_item=>wwv_flow_imp.id(10641775472809306017)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2293740384477774700)
,p_validation_name=>'P58_MED_EMERG'
,p_validation_sequence=>30
,p_validation=>'TRIM(:P58_MED_EMERG) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please enter </b>Medical Emergency</b>'
,p_associated_item=>wwv_flow_imp.id(2293740196922774698)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10641775918861306022)
,p_validation_name=>'Validate User'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN EDC_AUTH_PKG.CHK_LOGIN_NEW(TRIM(:P58_USERNAME), TRIM(:P58_PASSWORD));',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'</b>Username or Password</b> is not valid, Please enter correct credentials to continue'
,p_validation_condition=>'TRIM(:P58_USERNAME) IS NOT NULL AND TRIM(:P58_PASSWORD) IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4999245703746379667)
,p_validation_name=>'P58_UNBLINDED_REASON'
,p_validation_sequence=>50
,p_validation=>'P58_UNBLINDED_REASON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for Unblinding must have some value.'
,p_associated_item=>wwv_flow_imp.id(10641775690392306019)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10641776032281306023)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Unblind Subject'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER;',
'BEGIN',
'  IF :P58_MED_EMERG = ''No'' THEN',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET unblnd_notify = 1',
'         , UNBLINDED_REASON = :P58_UNBLINDED_REASON',
'         , MED_EMERGENCY =:P58_MED_EMERG',
'         , UNBLINDED_RQ_BY = :APP_USER_NAME',
'         , UNBLINDED_RQ_DATE = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MM-YYYY HH:MI AM''),''DD-MM-YYYY HH12:MI AM'')',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    update edc_patient_visit',
'       set crf_Status = 3',
'     where crf_status = 2',
'       and patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'',
'    EDC_MAIL.UNBLINDING_REQUEST(:P37_PATIENT_PROFILE_ID, :P58_UNBLINDED_REASON);',
'  ELSIF :P58_MED_EMERG = ''Yes'' THEN',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 9 -- Unblinded',
'         , UNBLND_NOTIFY = 1',
'         , UNBLINDED_BY = :APP_USER',
'         , UNBLINDED_ON = LOCALTIMESTAMP',
'         , UNBLINDED_REASON = :P58_UNBLINDED_REASON',
'         , MED_EMERGENCY =:P58_MED_EMERG',
'         , UNBLINDED_RQ_BY = :APP_USER_NAME',
'         , UNBLINDED_RQ_DATE = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MM-YYYY HH:MI AM''),''DD-MM-YYYY HH12:MI AM'')',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    BEGIN',
'      SELECT PATIENT_VISIT_ID',
'        INTO V_PV_ID',
'        FROM EDC_PATIENT_VISIT',
'       WHERE PARAM_ID = 3',
'         AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'      UPDATE IWRS_CRF_DM',
'         SET STATUS = 9',
'       WHERE PATIENT_VISIT_ID = V_PV_ID;',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        NULL;',
'    END;',
'    EDC_MAIL.UNBLINDING_STATUS(:P37_PATIENT_PROFILE_ID,''Approved'');',
'    EDC_MAIL.UNBLINDED_SUBJECT(:P37_PATIENT_PROFILE_ID,''Approved'');',
'  END IF;',
'  ',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed...   '
,p_internal_uid=>9540825264139801930
);
wwv_flow_imp.component_end;
end;
/
