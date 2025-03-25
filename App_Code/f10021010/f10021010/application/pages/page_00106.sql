prompt --application/pages/page_00106
begin
--   Manifest
--     PAGE: 00106
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
 p_id=>106
,p_tab_set=>'TS1'
,p_name=>'Unblind Subject'
,p_alias=>'UNBLIND-SUBJECT'
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
 p_id=>wwv_flow_imp.id(10674224127237318273)
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
 p_id=>wwv_flow_imp.id(1885058694498764172)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10674224127237318273)
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
 p_id=>wwv_flow_imp.id(1885059160990764174)
,p_name=>'P106_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10674224127237318273)
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
 p_id=>wwv_flow_imp.id(1885059567960764176)
,p_name=>'P106_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10674224127237318273)
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
 p_id=>wwv_flow_imp.id(1885059912881764176)
,p_name=>'P106_UNBLINDED_REASON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10674224127237318273)
,p_use_cache_before_default=>'NO'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1885060328986764176)
,p_name=>'P106_MED_EMERG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10674224127237318273)
,p_prompt=>'<B>Medical Emergency</B>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1885061541110764189)
,p_validation_name=>'P106_USERNAME NOT NULL'
,p_validation_sequence=>10
,p_validation=>'TRIM(:P106_USERNAME) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please enter </b>Username</b>'
,p_associated_item=>wwv_flow_imp.id(1885059160990764174)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1885061903105764189)
,p_validation_name=>'P106_PASSWORD NOT NULL'
,p_validation_sequence=>20
,p_validation=>'TRIM(:P106_PASSWORD) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please enter </b>Password</b>'
,p_associated_item=>wwv_flow_imp.id(1885059567960764176)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1885060818084764188)
,p_validation_name=>'P106_MED_EMERG'
,p_validation_sequence=>30
,p_validation=>'TRIM(:P106_MED_EMERG) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please enter </b>Medical Emergency</b>'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(1885060328986764176)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1885062323110764189)
,p_validation_name=>'Validate User'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN EDC_AUTH_PKG.CHK_LOGIN_NEW(TRIM(:P106_USERNAME), TRIM(:P106_PASSWORD));',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'</b>Username or Password</b> is not valid, Please enter correct credentials to continue'
,p_validation_condition=>'TRIM(:P106_USERNAME) IS NOT NULL AND TRIM(:P106_PASSWORD) IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1885061136000764189)
,p_validation_name=>'P106_UNBLINDED_REASON'
,p_validation_sequence=>50
,p_validation=>'P106_UNBLINDED_REASON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for Unblinding must have some value.'
,p_associated_item=>wwv_flow_imp.id(1885059912881764176)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1885062631826764189)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Unblind Subject'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER;',
'BEGIN',
'  --IF :P106_MED_EMERG = ''No'' THEN',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET PV_NOTIFY = 1',
'         , PV_REASON = :P106_UNBLINDED_REASON',
'         , PV_RQ_BY = :APP_USER_NAME',
'         , PV_RQ_DATE = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MM-YYYY HH:MI AM''),''DD-MM-YYYY HH12:MI AM'')',
'         , PV_REG_FLG = 1',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'   EDC_MAIL.PV_UNBLINDING_REQUEST(:P37_PATIENT_PROFILE_ID, :P106_UNBLINDED_REASON);',
'',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed...   '
,p_internal_uid=>784111863685260096
);
wwv_flow_imp.component_end;
end;
/
