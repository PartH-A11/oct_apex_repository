prompt --application/pages/page_00105
begin
--   Manifest
--     PAGE: 00105
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
 p_id=>105
,p_name=>'Change Password'
,p_step_title=>'Change Password'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(11045177065054407876)
,p_page_template_options=>'#DEFAULT#'
,p_rejoin_existing_sessions=>'N'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4614645341460571961)
,p_plug_name=>'Change Password'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:650px;"'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<span style="color:#9B1604">Password must be of minimum 6 characters in length.',
'<br>Password must contain at least a digit.',
'<br>Password must contain at least an alphabet.',
'<br>Password must contain atleast one of these of special characters: $@!#?<>%^&*()_',
'<br>Password must not contain space.',
'</span>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4133701102247637622)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4614645341460571961)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'&LOGOUT_URL.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4133701534345637623)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4614645341460571961)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Password'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4133706436157637634)
,p_branch_name=>'101'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4133701886712637624)
,p_name=>'P105_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4614645341460571961)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Username'
,p_source=>':APP_USER_NAME'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(4133702270832637626)
,p_name=>'P105_NEW_PASS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4614645341460571961)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeyup="return passwordChanged();"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4133702665413637626)
,p_name=>'P105_PASSWORD_STRENGTH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4614645341460571961)
,p_prompt=>'Password Strength'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="javascript">',
'function passwordChanged() {',
'var pwd = document.getElementById(''P105_PASSWORD_STRENGTH'');',
'var password = document.getElementById("P105_NEW_PASS").value;',
'',
'var desc = new Array();',
'',
'        desc[0] = "Very Weak";',
'',
'        desc[1] = "Weak";',
'',
'        desc[2] = "Better";',
'',
'        desc[3] = "Medium";',
'',
'        desc[4] = "Strong";',
'',
'        desc[5] = "Strongest";',
'',
'',
'',
'        var score   = 0;',
'',
'',
'',
'        //if password bigger than 4 give 1 point',
'',
'        if (password.length > 4) score++;',
'',
'',
'',
'        //if password has both lower and uppercase characters give 1 point      ',
'',
'        if ( ( password.match(/[a-z]/) ) && ( password.match(/[A-Z]/) ) ) score++;',
'',
'',
'',
'        //if password has at least one number give 1 point',
'',
'        if (password.match(/\d+/)) score++;',
'',
'',
'',
'        //if password has at least one special caracther give 1 point',
'',
'        if ( password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ) score++;',
'',
'',
'',
'        //if password bigger than 8 give another 1 point',
'',
'        if (password.length >8 ) score++;',
'',
'        //if password bigger than 12 give another 1 point',
'',
'        if (password.length > 12) score++;',
'',
'        //if password bigger than 16 give another 1 point',
'',
'        if (password.length > 16) score++;',
'',
'        //if password bigger than 20 give another 1 point',
'',
'        if (password.length > 20) score++;',
'',
'        if (score > 5) score = 5;',
'		',
'         document.getElementById("passwordDescription").innerHTML = desc[score];',
'',
'        if (password.length==0) {',
'document.getElementById("passwordDescription").innerHTML  = ''Password not entered'';',
'}  document.getElementById("passwordStrength").className = "strength" + score;',
'',
'',
'}',
'</script>'))
,p_post_element_text=>'<div id="passwordDescription">Password not entered</div><div id="passwordStrength" class="strength0"></div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4133703145517637627)
,p_name=>'P105_RETYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4614645341460571961)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Confirm Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4133703523099637629)
,p_name=>'P105_STUDY_CONTACT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4614645341460571961)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4133704013231637630)
,p_validation_name=>'Username not null'
,p_validation_sequence=>10
,p_validation=>'P105_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Username can not empty'
,p_when_button_pressed=>wwv_flow_imp.id(4133701534345637623)
,p_associated_item=>wwv_flow_imp.id(4133701886712637624)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4133705247327637632)
,p_validation_name=>'Validate New Password Strength'
,p_validation_sequence=>45
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where ',
'length(:P105_NEW_PASS) >= 6',
'and regexp_replace(:P105_NEW_PASS,''[^[:alpha:]]'') is not null',
'and regexp_replace(:P105_NEW_PASS,''[^[:digit:]]'') is not null',
'and regexp_replace(:P105_NEW_PASS,''[^\$|@|!|#|\?|\<|\>|\%|\^|\&|\*|\(|\)|\_]'') is not null',
'and regexp_replace(:P105_NEW_PASS,''[^[:space:]]'') is null'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Please validate the strength of password'
,p_associated_item=>wwv_flow_imp.id(4133702270832637626)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4133704372122637631)
,p_validation_name=>'New Password must match with Confirm Password'
,p_validation_sequence=>55
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P105_NEW_PASS = :P105_RETYPE THEN',
'RETURN TRUE;',
'ELSE',
'RETURN false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'New password must match with Confirm Password'
,p_associated_item=>wwv_flow_imp.id(4133702270832637626)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4133704787727637632)
,p_validation_name=>'PLSQL_Password_Already_Entered'
,p_validation_sequence=>65
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_count number;',
'begin',
'  select ',
'  count(*) into v_count',
'  FROM ',
'  EDC_STUDY_CONTACT A,',
'  EDC_PASSWORD_HIST B',
'  WHERE ',
'   A.STUDY_CONTACT_ID = B.USER_ID',
'  AND UPPER(A.USERNAME) = UPPER(:APP_USER)',
'  and MD5_HASH(:P105_RETYPE) = B.password',
'  and extract(day from (sysdate - B.created_on) day to second) <= 180;',
'  ',
'  IF V_COUNT > 0 THEN',
'   RETURN ''Password already used in last 6 months. Please use other password.'';',
' ',
'  end if;',
'  ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'ERR'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4133702270832637626)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>':app_user != ''AVINASH'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4133705864927637633)
,p_process_sequence=>10
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update OTP flag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_CONTACT_ID NUMBER;',
'  V_OTP_ID           NUMBER;',
'BEGIN',
'  SELECT STUDY_CONTACT_ID',
'    INTO V_STUDY_CONTACT_ID',
'    FROM EDC_STUDY_CONTACT',
'   WHERE UPPER(USERNAME) = UPPER(:P105_USERNAME);',
'',
'  V_OTP_ID := EDC_AUTH_PKG.GET_MAX_OTP(V_STUDY_CONTACT_ID);',
'',
'  UPDATE EDC_OTP',
'     SET FLAG = 1',
'   WHERE OTP_ID = V_OTP_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4133705864927637633
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4133705505320637632)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PASSWORD VARCHAR2(50):= :P105_NEW_PASS;',
'  V_PWD_ENC VARCHAR2(200);',
'  V_STUDY_CONTACT_ID NUMBER;',
'  V_RET NUMBER;',
'  V_UPDATED NUMBER := 0;',
'BEGIN',
'  SELECT STUDY_CONTACT_ID',
'    INTO V_STUDY_CONTACT_ID',
'    FROM EDC_STUDY_CONTACT',
'   WHERE UPPER(USERNAME) = UPPER(:P105_USERNAME);',
'',
'  V_PWD_ENC := MD5_HASH(V_PASSWORD);',
'  INSERT INTO EDC_PASSWORD_HIST(USER_ID, PASSWORD) VALUES(V_STUDY_CONTACT_ID, V_PWD_ENC);',
'',
'  UPDATE EDC_STUDY_CONTACT',
'     SET PASSWORD = V_PWD_ENC',
'       , STATUS = 1',
'   WHERE STUDY_CONTACT_ID = V_STUDY_CONTACT_ID;',
'',
'  V_UPDATED := 1;',
'  COMMIT;',
'',
'  IF V_UPDATED = 1 THEN',
'    EDC_MAIL.CHANGE_PASSWORD_MAIL(V_PASSWORD, :APP_USER, V_RET);',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Password successfully changed. Please log in using your new password.'
,p_internal_uid=>4133705505320637632
);
wwv_flow_imp.component_end;
end;
/
