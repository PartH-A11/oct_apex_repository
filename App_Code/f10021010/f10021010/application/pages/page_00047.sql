prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>'Forgot Password / One Time Password'
,p_step_title=>'Forgot Password / One Time Password'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(12146128550627911973)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9021975622228862432)
,p_plug_name=>'Forgot Password / One Time Password'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:850px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234698158426655508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9021975622228862432)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234698611009655510)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9021975622228862432)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5234702458877655552)
,p_branch_name=>'go to page'
,p_branch_action=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P47_SUCESS_FLAG = ''Y'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234698934190655513)
,p_name=>'P47_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9021975622228862432)
,p_prompt=>'<b>Please enter the details below to retrieve the password.</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234699383424655518)
,p_name=>'P47_USERNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9021975622228862432)
,p_prompt=>'<b>Username</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_new_grid=>true
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234699783311655519)
,p_name=>'P47_EMAIL'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9021975622228862432)
,p_prompt=>'<b>Email ID</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234700130316655519)
,p_name=>'P47_SUCESS_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9021975622228862432)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5234700999932655540)
,p_name=>'Clear Mail'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234701611658655549)
,p_event_id=>wwv_flow_imp.id(5234700999932655540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_EMAIL,P47_USERNAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5234701972589655550)
,p_name=>'Msg'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234700529975655530)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EMAIL VARCHAR2(100) := TRIM(:P47_EMAIL);',
'  V_USERNAME VARCHAR2(200);',
'  V_STATUS NUMBER;',
'BEGIN',
'  IF V_EMAIL IS NOT NULL THEN',
'    WITH EDC_USER AS',
'      (SELECT EMAIL',
'         FROM (SELECT EMAIL FROM EDC_USERS WHERE UPPER(EMAIL) = UPPER(V_EMAIL)',
'                UNION',
'               SELECT EMAIL FROM EDC_SITES WHERE UPPER(EMAIL) = UPPER(V_EMAIL)',
'                UNION',
'               SELECT EMAIL FROM EDC_SITE_CONTACTS WHERE UPPER(EMAIL) = UPPER(V_EMAIL)',
'              )',
'      )',
'',
'    SELECT USERNAME, STATUS',
'      INTO V_USERNAME, V_STATUS',
'      FROM EDC_STUDY_CONTACT,',
'           EDC_USER',
'     WHERE CONTACT_ID = (SELECT USER_ID FROM EDC_USERS WHERE UPPER(EMAIL) = UPPER(EDC_USER.EMAIL))',
'       AND TYPE = 1',
'     UNION',
'    SELECT USERNAME, STATUS ',
'      FROM EDC_STUDY_CONTACT',
'     WHERE CONTACT_ID = (SELECT B.STUDY_SITE_ID',
'                           FROM EDC_SITES A',
'                           JOIN EDC_STUDY_SITES B',
'                             ON A.SITE_ID = B.SITE_ID',
'                            AND UPPER(A.EMAIL) = (SELECT UPPER(EMAIL) FROM EDC_USER))',
'       AND TYPE = 2',
'     UNION',
'    SELECT USERNAME, STATUS',
'      FROM EDC_STUDY_CONTACT,',
'           EDC_USER',
'     WHERE CONTACT_ID = (SELECT SITE_CONTACT_ID FROM EDC_SITE_CONTACTS WHERE UPPER(EMAIL) = UPPER(EDC_USER.EMAIL))',
'       AND TYPE = 3;',
'--    DOPL(V_USERNAME||'' , ''||V_STATUS);',
'',
'    IF UPPER(V_USERNAME) = TRIM(UPPER(:P47_USERNAME)) THEN',
'',
'      IF V_STATUS != 0 THEN',
'',
'        EDC_MAIL.FG_PASSWORD_MAIL(V_USERNAME, V_EMAIL, 661);',
'        :P47_SUCESS_FLAG := ''Y'';',
'        IF V_STATUS = 3 THEN',
'          APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style="color:green">Please check your mail inbox to get your One Time Password, the password will be expired after 15 Minutes.</span>'';',
'        ELSE',
'          APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style="color:green">Please check your mail inbox to get your password</span>'';',
'        END IF;',
'      ELSE',
'        APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style="color:red">Your account is Inactive. Kindly contact the PM.</span>'';',
'      END IF;',
'',
'    ELSE',
'      APEX_ERROR.ADD_ERROR (',
'          P_MESSAGE          => ''Invalid USERNAME!'',',
'          P_DISPLAY_LOCATION =>  APEX_ERROR.C_INLINE_IN_NOTIFICATION,',
'          P_PAGE_ITEM_NAME   => ''P47_USERNAME'');',
'    END IF;',
'',
'  ELSE',
'--    DOPL(''ELSE'');',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style="color:red">Please enter proper email address/ Your email address is not available in our database</span>'';',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style="color:red">Please enter proper email address/ Your email address is not available in our database</span>'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5234698158426655508)
,p_internal_uid=>4133749761834151437
);
wwv_flow_imp.component_end;
end;
/
