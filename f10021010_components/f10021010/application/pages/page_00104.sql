prompt --application/pages/page_00104
begin
--   Manifest
--     PAGE: 00104
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
 p_id=>104
,p_name=>'Approve Workflow'
,p_step_title=>'Approve Workflow'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(12146129126910911975)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6559845226532867799)
,p_plug_name=>'E-Signature'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234154420932901190)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6559845226532867799)
,p_button_name=>'SIGNATURE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_alignment=>'LEFT-CENTER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234154848575901192)
,p_name=>'P104_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6559845226532867799)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234155256952901204)
,p_name=>'P104_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6559845226532867799)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234155680529901205)
,p_name=>'P104_FEEDBACK_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6559845226532867799)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234156027690901207)
,p_name=>'P104_APRV_FLAG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6559845226532867799)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234156454491901207)
,p_name=>'P104_CLIENT_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6559845226532867799)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234157014647901245)
,p_validation_name=>'PASSWORD'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'BEGIN',
'  IF :P104_PASSWORD IS NULL THEN',
'    APEX_ERROR.ADD_ERROR (',
'        P_MESSAGE          => ''Password must have some value.'',',
'        P_DISPLAY_LOCATION =>  APEX_ERROR.C_INLINE_IN_NOTIFICATION,',
'        P_PAGE_ITEM_NAME   => ''P104_PASSWORD'');',
'  ELSE',
'    SELECT COUNT(*)',
'      INTO V_COUNT',
'      FROM EDC_STUDY_CONTACT',
'     WHERE UPPER(USERNAME) = UPPER(:P104_USERNAME)',
'       AND PASSWORD = MD5_HASH(:P104_PASSWORD);',
'',
'    IF V_COUNT = 0 THEN',
'      APEX_ERROR.ADD_ERROR (',
'          P_MESSAGE          => ''Please enter correct Password.'',',
'          P_DISPLAY_LOCATION =>  APEX_ERROR.C_INLINE_IN_NOTIFICATION,',
'          P_PAGE_ITEM_NAME   => ''P104_PASSWORD'');',
'    END IF;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'ERR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234157254350901246)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Review, Approve'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_MAIL_FLAG NUMBER := :P104_APRV_FLAG;',
'  V_ISSUE_TYPE EDC_USER_FEEDBACK.ISSUE_TYPE%TYPE;',
'  V_ISSUE_DESC EDC_USER_FEEDBACK.ISSUE_DESC%TYPE;',
'  V_RET NUMBER;',
'  V_INP_FLAG NUMBER;',
'BEGIN',
'  IF V_MAIL_FLAG IS NOT NULL THEN',
'',
'    UPDATE EDC_USER_FEEDBACK',
'       SET APPROVAL_STATUS = V_MAIL_FLAG',
'     WHERE FEEDBACK_ID = :P104_FEEDBACK_ID',
' RETURNING ISSUE_TYPE, ISSUE_DESC',
'      INTO V_ISSUE_TYPE, V_ISSUE_DESC;',
'',
'    IF V_MAIL_FLAG = 1 THEN ',
'      UPDATE EDC_USER_FEEDBACK',
'         SET REVIEW_BY = :APP_EDC_USER_ID',
'           , REVIEWED_ON = LOCALTIMESTAMP',
'       WHERE FEEDBACK_ID = :P104_FEEDBACK_ID;',
'    ELSIF V_MAIL_FLAG = 2 THEN',
'      UPDATE EDC_USER_FEEDBACK',
'         SET APPROVED_BY = :APP_EDC_USER_ID',
'           , APPROVED_ON = LOCALTIMESTAMP',
'       WHERE FEEDBACK_ID = :P104_FEEDBACK_ID;',
'    END IF;',
'    COMMIT;',
'',
'    IF V_MAIL_FLAG = 1 THEN',
'      V_INP_FLAG := 2;',
'',
'      SELECT LISTAGG(EMAIL,'','') WITHIN GROUP(ORDER BY SC_ID)',
'        INTO :P104_CLIENT_EMAIL',
'        FROM TABLE(APPROVAL_TABLE(V_INP_FLAG));',
'',
'      :P104_CLIENT_EMAIL := NVL(:P104_CLIENT_EMAIL,''krunal.bhatt@octalsoft.com'');',
'',
'    ELSIF V_MAIL_FLAG = 2 THEN',
'      V_INP_FLAG := 3;',
'      :P104_CLIENT_EMAIL := ''support@octalsoft.com'';',
'',
'    END IF;',
'      -- EDC_MAIL.SEND_FEEDBACK_IA_MAIL(:APP_ID, :APP_PAGE_ID, V_ISSUE_TYPE, V_ISSUE_DESC, :P104_CLIENT_EMAIL, :APP_USER_NAME, :P104_FEEDBACK_ID, V_RET, V_INP_FLAG);',
'    ',
'  END IF;',
'  ',
'  EXCEPTION WHEN OTHERS THEN',
'  NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Proceed.'
,p_internal_uid=>4133206486209397153
);
wwv_flow_imp.component_end;
end;
/
