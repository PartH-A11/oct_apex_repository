prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_name=>'PI Sign off'
,p_step_title=>'PI Sign off'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(11017835689714707247)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162870038117574085)
,p_plug_name=>'Authenticating of Signature'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162870244936574086)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_button_name=>'AUTHENTICATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Authenticate'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162870431128574086)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:window.parent.$(window.parent.document).apex_modal_page(''close'','''');'||wwv_flow.LF||
''
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12162872325529574094)
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P91_CLOSE_STATUS = ''Y'' and :P91_PAGE_ID = 45'
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3790770260146724962)
,p_name=>'P91_CRF_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3790770372706724963)
,p_name=>'P91_TABLE_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3790770477102724964)
,p_name=>'P91_TABLE_PK_COL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3790770598133724965)
,p_name=>'P91_TABLE_PK_VAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3790770672835724966)
,p_name=>'P91_STUDY_SITE_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3790770714884724967)
,p_name=>'P91_PATIENT_PROFILE_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11644766463679368600)
,p_name=>'P91_X'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_prompt=>'X'
,p_post_element_text=>'I hereby approve all the data entered in the subject CRF and confirm the accuracy and integrity of the data being recorded'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11644939338912711128)
,p_name=>'P91_TEMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11998027725677813573)
,p_name=>'P91_PATIENT_VISIT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11998027917913817176)
,p_name=>'P91_STUDY_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11998028109934820792)
,p_name=>'P91_AESE_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12162870633075574088)
,p_name=>'P91_USERNM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12162870833716574088)
,p_name=>'P91_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12162871049112574088)
,p_name=>'P91_CLOSE_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12162871227225574089)
,p_name=>'P91_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12163543046179148696)
,p_name=>'P91_PAGE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12162870038117574085)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12162871526591574092)
,p_validation_name=>'Validate Usernm & Passwrd'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' V_RES boolean;',
'begin',
'V_RES := edc_auth_pkg.CHK_LOGIN(:P91_USERNM,MD5_HASH(:P91_PASSWORD)); ',
'If V_RES = true then',
'   Return True;',
'Else',
'   return False;',
'End If; ',
'  ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:red;font-weight:bold;">Please enter valid password...</span>',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12162871842032574092)
,p_name=>'refresh Parent Page'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12162872137908574094)
,p_event_id=>wwv_flow_imp.id(12162871842032574092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12162870038117574085)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (document.getElementById(''P91_CLOSE_STATUS'').value == ''Y'')',
'{',
'//alert(document.getElementById(''P91_CLOSE_STATUS'').value);',
'window.opener.location.href=window.opener.location.href;',
'window.close();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11644870827760735039)
,p_name=>'clear username'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11644871205063735042)
,p_event_id=>wwv_flow_imp.id(11644870827760735039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_USERNM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12162871649178574092)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'45_SV_sign_off'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_res boolean;',
' l_sql varchar2(32767);',
' v_pk_id varchar2(20);',
' v_pk_value number;',
' v_cnt number;',
' v_section_status number;',
' v_crf_status number;',
' TYPE EmpCurTyp IS REF CURSOR;',
' emp_cv   EmpCurTyp;',
' v_cur_txt1 varchar2(2000);',
'begin',
'    ',
'    for i in (select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'              from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'              where a.schedule_id = b.schedule_id',
'              and b.crf_id = c.crf_id',
'              and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'              and b.app_type = ''WEB''',
'              and c.crf_id not in (3,24)',
'              union all',
'              select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'              from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'              where a.schedule_id = b.schedule_id',
'              and b.crf_id = c.crf_id',
'              and c.parent_page is null',
'              and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'              and b.app_type = ''WEB''',
'              and c.crf_id = 3',
'              and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                      WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                      WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'              union all',
'              select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'              from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'              where a.schedule_id = b.schedule_id',
'              and b.crf_id = c.crf_id',
'              and c.parent_page is null',
'              and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'              and b.app_type = ''WEB''',
'              and c.crf_id = 24',
'              and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                      WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                      WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'                      and GENDER=''Female'' and RADIO3=''Yes'')',
'              ) loop',
'              ',
'         :APP_EDC_PATIENT_DIARY_ID:= I.PATIENT_DIARY_ID;',
'                          ',
'         --if i.crf_id not in (94,95,197,198,241,242) then        --static parent child pages',
'         if i.crf_page_no in (100,509) then        --dynamic page numbers',
'         ',
'             EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                AND cons.constraint_name = cols.constraint_name',
'                                AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'             EXECUTE IMMEDIATE ''SELECT ''||V_PK_ID||'' FROM ''||I.CRF_TABLE_NAME||',
'             '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID INTO V_PK_VALUE;',
'             ',
'             EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'             '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID INTO V_CRF_STATUS;',
'             ',
'             if V_CRF_STATUS in (4.5,6) then',
'',
'                 l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                          USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                          values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                          '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                 execute immediate l_sql;',
'                 ',
'             end if;',
'            ',
'         elsif i.crf_page_no in (510) then        --dynamic visit child page number',
'         ',
'             EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                AND cons.constraint_name = cols.constraint_name',
'                                AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'             v_cur_txt1 := ''select ''||V_PK_ID||'' from ''||I.CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'             ',
'             open emp_cv for v_cur_txt1;',
'             loop',
'             fetch emp_cv into V_PK_VALUE;',
'             exit when emp_cv%NOTFOUND;',
'',
'                 EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                 '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||V_PK_ID||'' = ''||V_PK_VALUE INTO V_CRF_STATUS;',
'',
'                 if V_CRF_STATUS in (4.5,6) then',
'',
'                     l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                              USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                              values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                              '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                     execute immediate l_sql;',
'',
'                 end if;',
'                ',
'             end loop;',
'             ',
'             close emp_cv;',
'             ',
'         end if;             ',
'         commit;',
'         ',
'         if i.crf_page_no in (100,509,510) then',
'             EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                          '' SET SECTION_STATUS = 9,',
'                          UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'                          WHERE section_Status in (4.5,6) and PATIENT_DIARY_ID = ''|| :APP_EDC_PATIENT_DIARY_ID;',
'         else',
'             EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                          '' SET SECTION_STATUS = 9',
'                          WHERE section_Status in (4.5,6) and PATIENT_DIARY_ID = ''|| :APP_EDC_PATIENT_DIARY_ID;',
'         end if;',
'         commit;',
'',
'     end loop;',
'     ',
'     commit;',
'     ',
'     update edc_patient_diary',
'     set section_status = 9, crf_signed_date = sysdate, crf_signed_by = :APP_EDC_USER_ID',
'     where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'     and section_status in (4.5,6);',
'    ',
'     COMMIT;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12162870244936574086)
,p_process_when=>':P91_PAGE_ID = 45'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Success'
,p_internal_uid=>11061920881037069999
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3790771035978724970)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'110_SV_sign_off'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_res boolean;',
' l_sql varchar2(32767);',
' v_pk_id varchar2(20);',
' v_pk_value number;',
' v_cnt number;',
' v_section_status number;',
' v_crf_status number;',
' TYPE EmpCurTyp IS REF CURSOR;',
' emp_cv   EmpCurTyp;',
' v_cur_txt1 varchar2(2000);',
' v_diary_type varchar2(20);',
'begin',
'    ',
'    for j in (select patient_diary_id from edc_patient_diary where patient_profile_id = :APP_PATIENT_PROFILE_ID) loop',
'    ',
'        :APP_EDC_PATIENT_DIARY_ID := J.PATIENT_DIARY_ID;',
'        select diary_type into v_diary_type from edc_patient_diary where patient_diary_id= J.PATIENT_DIARY_ID;',
'        ',
'        if v_diary_type = ''Electronic'' then',
'        ',
'            for i in (select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                      where a.schedule_id = b.schedule_id',
'                      and b.crf_id = c.crf_id',
'                      --and c.parent_page is null',
'                      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                      and b.app_type = ''WEB''',
'                      and c.crf_id not in (3,24)',
'                      union all',
'                      select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                      where a.schedule_id = b.schedule_id',
'                      and b.crf_id = c.crf_id',
'                      and c.parent_page is null',
'                      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                      and b.app_type = ''WEB''',
'                      and c.crf_id = 3',
'                      and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                              WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                              WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'                      union all',
'                      select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                      where a.schedule_id = b.schedule_id',
'                      and b.crf_id = c.crf_id',
'                      and c.parent_page is null',
'                      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                      and b.app_type = ''WEB''',
'                      and c.crf_id = 24',
'                      and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                              WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                              WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'                              and GENDER=''Female'' and RADIO3=''Yes'')',
'                      ) loop',
'',
'                 :APP_EDC_PATIENT_DIARY_ID:= I.PATIENT_DIARY_ID;',
'',
'                 --if i.crf_id not in (94,95,197,198,241,242) then        --static parent child pages',
'                 if i.crf_page_no in (100,509) then        --dynamic page numbers',
'',
'                     EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                        WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                        AND cons.constraint_name = cols.constraint_name',
'                                        AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                     EXECUTE IMMEDIATE ''SELECT ''||V_PK_ID||'' FROM ''||I.CRF_TABLE_NAME||',
'                     '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_PK_VALUE;',
'',
'                     EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                     '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_CRF_STATUS;',
'',
'                     if V_CRF_STATUS in (4.5,6) then',
'',
'                         l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                  USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                  values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                  '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                         execute immediate l_sql;',
'',
'                     end if;',
'',
'                 elsif i.crf_page_no in (510) then        --dynamic visit child page number',
'',
'                     EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                        WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                        AND cons.constraint_name = cols.constraint_name',
'                                        AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                     v_cur_txt1 := ''select ''||V_PK_ID||'' from ''||I.CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID;',
'',
'                     open emp_cv for v_cur_txt1;',
'                     loop',
'                     fetch emp_cv into V_PK_VALUE;',
'                     exit when emp_cv%NOTFOUND;',
'',
'                         EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                         '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID||'' AND ''||V_PK_ID||'' = ''||V_PK_VALUE INTO V_CRF_STATUS;',
'',
'                         if V_CRF_STATUS in (4.5,6) then',
'',
'                             l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                      USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                      values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                      '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                             execute immediate l_sql;',
'',
'                         end if;',
'',
'                     end loop;',
'',
'                     close emp_cv;',
'',
'                 end if;             ',
'                 commit;',
'',
'                 if i.crf_page_no in (100,509,510) then',
'                     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                                  '' SET SECTION_STATUS = 9,',
'                                  UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'                                  WHERE section_Status in (4.5,6) and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'                 else',
'                     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                                  '' SET SECTION_STATUS = 9',
'                                  WHERE section_Status in (4.5,6) and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'                 end if;',
'                 commit;',
'',
'             end loop;',
'',
'             commit;',
'',
'             update edc_patient_diary',
'             set section_status = 9',
'             where PATIENT_DIARY_ID = J.PATIENT_DIARY_ID',
'             and section_status in (4.5,6);',
'',
'             COMMIT;',
'        ',
'        elsif v_diary_type = ''Paper'' then',
'        ',
'             for i in (select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                  where a.schedule_id = b.schedule_id',
'                  and b.crf_id = c.crf_id',
'                  and c.parent_page is null',
'                  and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                  and b.app_type = ''WEB''',
'                  and c.crf_id not in (3,24)',
'                  union all',
'                  select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                  where a.schedule_id = b.schedule_id',
'                  and b.crf_id = c.crf_id',
'                  and c.parent_page is null',
'                  and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                  and b.app_type = ''WEB''',
'                  and c.crf_id = 3',
'                  and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                          WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                          WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'                  union all',
'                  select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                  where a.schedule_id = b.schedule_id',
'                  and b.crf_id = c.crf_id',
'                  and c.parent_page is null',
'                  and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                  and b.app_type = ''WEB''',
'                  and c.crf_id = 24',
'                  and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                          WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                          WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'                          and GENDER=''Female'' and RADIO3=''Yes'')',
'                  ) loop',
'',
'                 :APP_EDC_PATIENT_DIARY_ID:= I.PATIENT_DIARY_ID;',
'',
'                 --if i.crf_id not in (94,95,197,198,241,242) then        --static parent child pages',
'                 if i.crf_page_no in (100,509) then        --dynamic page numbers',
'',
'                     EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                        WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                        AND cons.constraint_name = cols.constraint_name',
'                                        AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                     EXECUTE IMMEDIATE ''SELECT ''||V_PK_ID||'' FROM ''||I.CRF_TABLE_NAME||',
'                     '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_PK_VALUE;',
'',
'                     EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                     '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_CRF_STATUS;',
'',
'                     if V_CRF_STATUS in (4.5,6) then',
'',
'                         l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                  USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                  values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                  '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                         execute immediate l_sql;',
'',
'                     end if;',
'',
'                 elsif i.crf_page_no in (510) then        --dynamic visit child page number',
'',
'                     EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                        WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                        AND cons.constraint_name = cols.constraint_name',
'                                        AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                     v_cur_txt1 := ''select ''||V_PK_ID||'' from ''||I.CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID;',
'',
'                     open emp_cv for v_cur_txt1;',
'                     loop',
'                     fetch emp_cv into V_PK_VALUE;',
'                     exit when emp_cv%NOTFOUND;',
'',
'                         EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                         '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID||'' AND ''||V_PK_ID||'' = ''||V_PK_VALUE INTO V_CRF_STATUS;',
'',
'                         if V_CRF_STATUS in (4.5,6) then',
'',
'                             l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                      USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                      values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                      '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                             execute immediate l_sql;',
'',
'                         end if;',
'',
'                     end loop;',
'',
'                     close emp_cv;',
'',
'                 end if;             ',
'                 commit;',
'',
'                 if i.crf_page_no in (100,509,510) then',
'                     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                                  '' SET SECTION_STATUS = 9,',
'                                  UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'                                  WHERE section_Status in (6) and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'                 else',
'                     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                                  '' SET SECTION_STATUS = 9',
'                                  WHERE section_Status in (6) and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'                 end if;',
'                 commit;',
'',
'             end loop;',
'',
'             commit;',
'',
'             update edc_patient_diary',
'             set section_status = 9',
'             where PATIENT_DIARY_ID = J.PATIENT_DIARY_ID',
'             and section_status in (6);',
'',
'             COMMIT;',
'        ',
'        end if;',
'         ',
'    end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12162870244936574086)
,p_process_when=>':P91_PAGE_ID = 110'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Success'
,p_internal_uid=>2689820267837220877
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3790771926456724979)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'210_SV_sign_off'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_res boolean;',
' l_sql varchar2(32767);',
' v_pk_id varchar2(20);',
' v_pk_value number;',
' v_cnt number;',
' v_section_status number;',
' v_crf_status number;',
' TYPE EmpCurTyp IS REF CURSOR;',
' emp_cv   EmpCurTyp;',
' v_cur_txt1 varchar2(2000);',
' v_diary_type varchar2(20);',
'begin',
'    ',
'    for k in (select patient_profile_id from edc_patient_profile where study_site_id = :P91_STUDY_SITE_ID) loop',
'    ',
'        :APP_PATIENT_PROFILE_ID := K.PATIENT_PROFILE_ID;',
'        for j in (select patient_diary_id from edc_patient_diary where patient_profile_id = K.PATIENT_PROFILE_ID) loop',
'',
'            :APP_EDC_PATIENT_DIARY_ID := J.PATIENT_DIARY_ID;',
'            select diary_type into v_diary_type from edc_patient_diary where patient_diary_id= J.PATIENT_DIARY_ID;',
'',
'            if v_diary_type = ''Electronic'' then',
'',
'                for i in (select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                          where a.schedule_id = b.schedule_id',
'                          and b.crf_id = c.crf_id',
'                          --and c.parent_page is null',
'                          and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                          and b.app_type = ''WEB''',
'                          and c.crf_id not in (3,24)',
'                          union all',
'                          select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                          where a.schedule_id = b.schedule_id',
'                          and b.crf_id = c.crf_id',
'                          and c.parent_page is null',
'                          and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                          and b.app_type = ''WEB''',
'                          and c.crf_id = 3',
'                          and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                                  WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                                  WHERE PATIENT_PROFILE_ID = K.PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'                          union all',
'                          select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                          where a.schedule_id = b.schedule_id',
'                          and b.crf_id = c.crf_id',
'                          and c.parent_page is null',
'                          and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                          and b.app_type = ''WEB''',
'                          and c.crf_id = 24',
'                          and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                                  WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                                  WHERE PATIENT_PROFILE_ID = K.PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'                                  and GENDER=''Female'' and RADIO3=''Yes'')',
'                          ) loop',
'',
'                     :APP_EDC_PATIENT_DIARY_ID:= I.PATIENT_DIARY_ID;',
'',
'                     --if i.crf_id not in (94,95,197,198,241,242) then        --static parent child pages',
'                     if i.crf_page_no in (100,509) then        --dynamic page numbers',
'',
'                         EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                            WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                            AND cons.constraint_name = cols.constraint_name',
'                                            AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                         EXECUTE IMMEDIATE ''SELECT ''||V_PK_ID||'' FROM ''||I.CRF_TABLE_NAME||',
'                         '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_PK_VALUE;',
'',
'                         EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                         '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_CRF_STATUS;',
'',
'                         if V_CRF_STATUS in (4.5,6) then',
'',
'                             l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                      USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                      values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||K.PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                      '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                             execute immediate l_sql;',
'',
'                         end if;',
'',
'                     elsif i.crf_page_no in (510) then        --dynamic visit child page number',
'',
'                         EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                            WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                            AND cons.constraint_name = cols.constraint_name',
'                                            AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                         v_cur_txt1 := ''select ''||V_PK_ID||'' from ''||I.CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID;',
'',
'                         open emp_cv for v_cur_txt1;',
'                         loop',
'                         fetch emp_cv into V_PK_VALUE;',
'                         exit when emp_cv%NOTFOUND;',
'',
'                             EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                             '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID||'' AND ''||V_PK_ID||'' = ''||V_PK_VALUE INTO V_CRF_STATUS;',
'',
'                             if V_CRF_STATUS in (4.5,6) then',
'',
'                                 l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                          USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                          values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||K.PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                          '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                                 execute immediate l_sql;',
'',
'                             end if;',
'',
'                         end loop;',
'',
'                         close emp_cv;',
'',
'                     end if;             ',
'                     commit;',
'',
'                     if i.crf_page_no in (100,509,510) then',
'                         EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                                      '' SET SECTION_STATUS = 9,',
'                                      UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'                                      WHERE section_Status in (4.5,6) and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'                     else',
'                         EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                                      '' SET SECTION_STATUS = 9',
'                                      WHERE section_Status in (4.5,6) and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'                     end if;',
'                     commit;',
'',
'                 end loop;',
'',
'                 commit;',
'',
'                 update edc_patient_diary',
'                 set section_status = 9',
'                 where PATIENT_DIARY_ID = J.PATIENT_DIARY_ID',
'                 and section_status in (4.5,6);',
'',
'                 COMMIT;',
'',
'            elsif v_diary_type = ''Paper'' then',
'',
'                 for i in (select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                      where a.schedule_id = b.schedule_id',
'                      and b.crf_id = c.crf_id',
'                      and c.parent_page is null',
'                      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                      and b.app_type = ''WEB''',
'                      and c.crf_id not in (3,24)',
'                      union all',
'                      select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                      where a.schedule_id = b.schedule_id',
'                      and b.crf_id = c.crf_id',
'                      and c.parent_page is null',
'                      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                      and b.app_type = ''WEB''',
'                      and c.crf_id = 3',
'                      and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                              WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                              WHERE PATIENT_PROFILE_ID = K.PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'                      union all',
'                      select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                      where a.schedule_id = b.schedule_id',
'                      and b.crf_id = c.crf_id',
'                      and c.parent_page is null',
'                      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                      and b.app_type = ''WEB''',
'                      and c.crf_id = 24',
'                      and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                              WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                              WHERE PATIENT_PROFILE_ID = K.PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'                              and GENDER=''Female'' and RADIO3=''Yes'')',
'                      ) loop',
'',
'                     :APP_EDC_PATIENT_DIARY_ID:= I.PATIENT_DIARY_ID;',
'',
'                     --if i.crf_id not in (94,95,197,198,241,242) then        --static parent child pages',
'                     if i.crf_page_no in (100,509) then        --dynamic page numbers',
'',
'                         EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                            WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                            AND cons.constraint_name = cols.constraint_name',
'                                            AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                         EXECUTE IMMEDIATE ''SELECT ''||V_PK_ID||'' FROM ''||I.CRF_TABLE_NAME||',
'                         '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_PK_VALUE;',
'',
'                         EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                         '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_CRF_STATUS;',
'',
'                         if V_CRF_STATUS in (4.5,6) then',
'',
'                             l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                      USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                      values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||K.PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                      '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                             execute immediate l_sql;',
'',
'                         end if;',
'',
'                     elsif i.crf_page_no in (510) then        --dynamic visit child page number',
'',
'                         EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                            WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                            AND cons.constraint_name = cols.constraint_name',
'                                            AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                         v_cur_txt1 := ''select ''||V_PK_ID||'' from ''||I.CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID;',
'',
'                         open emp_cv for v_cur_txt1;',
'                         loop',
'                         fetch emp_cv into V_PK_VALUE;',
'                         exit when emp_cv%NOTFOUND;',
'',
'                             EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                             '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID||'' AND ''||V_PK_ID||'' = ''||V_PK_VALUE INTO V_CRF_STATUS;',
'',
'                             if V_CRF_STATUS in (4.5,6) then',
'',
'                                 l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                          USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                          values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||K.PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                          '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''''||V_CRF_STATUS||'''''',''''9'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                                 execute immediate l_sql;',
'',
'                             end if;',
'',
'                         end loop;',
'',
'                         close emp_cv;',
'',
'                     end if;             ',
'                     commit;',
'',
'                     if i.crf_page_no in (100,509,510) then',
'                         EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                                      '' SET SECTION_STATUS = 9,',
'                                      UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'                                      WHERE section_Status in (6) and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'                     else',
'                         EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                                      '' SET SECTION_STATUS = 9',
'                                      WHERE section_Status in (6) and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'                     end if;',
'                     commit;',
'',
'                 end loop;',
'',
'                 commit;',
'',
'                 update edc_patient_diary',
'                 set section_status = 9',
'                 where PATIENT_DIARY_ID = J.PATIENT_DIARY_ID',
'                 and section_status in (6);',
'',
'                 COMMIT;',
'',
'            end if;',
'',
'        end loop;',
'        ',
'    end loop;        --end of patient profile loop',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12162870244936574086)
,p_process_when=>':P91_PAGE_ID = 110'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Success'
,p_internal_uid=>2689821158315220886
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11644940480240738571)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PI SIGN PG37'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_res boolean;',
'begin',
'    update edc_patient_visit',
'   set crf_signed_date = sysdate,',
'       crf_signed_by = :APP_EDC_USER_ID,',
'       crf_status = 9',
' where patient_Visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id=:P37_PATIENT_PROFILE_ID) and crf_Status = 8;',
'',
'       :P91_CLOSE_STATUS := ''Y'';',
'',
'for i in (select crf_table_name,PATIENT_VISIT_ID from edc_crf_master a,edc_crf_pages b,edc_patient_visit c',
'           where a.crf_id = b.crf_id',
'             and b.param_id = c.param_id',
'             and c.patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id=:P37_PATIENT_PROFILE_ID))',
' LOOP',
' :APP_EDC_PATIENT_VISIT_ID := I.PATIENT_VISIT_ID;',
' ',
'     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                      '' SET SECTION_STATUS = 9 ',
'                      WHERE PATIENT_vISIT_ID in (select patient_visit_id ',
'                                                 from edc_patient_visit ',
'                                                 where patient_profile_id=''|| :P37_PATIENT_PROFILE_ID||'')',
'                                                 and section_Status = 8'';',
'                      ',
' END LOOP;',
'',
'       commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12162870244936574086)
,p_process_when=>':P91_PAGE_ID = 37'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Sucess'
,p_internal_uid=>10543989712099234478
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11645067581597233174)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PI SIGN PG36'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_res boolean;',
'begin',
'    update edc_patient_visit',
'   set crf_signed_date = sysdate,',
'       crf_signed_by = :APP_EDC_USER_ID,',
'       crf_status = 9',
' where patient_Visit_id in (',
' select patient_visit_id ',
' from edc_patient_visit a,edc_patient_profile b',
' where a.patient_profile_id = b.patient_profile_id',
'  and study_site_id = (select contact_id from edc_study_contact',
'      where study_contact_id = :APP_EDC_USER_ID)) and crf_Status = 8;',
'',
'       :P91_CLOSE_STATUS := ''Y'';',
'',
'for i in (select crf_table_name,PATIENT_VISIT_ID from edc_crf_master a,edc_crf_pages b,edc_patient_visit c',
'           where a.crf_id = b.crf_id',
'             and b.param_id = c.param_id',
'             and c.patient_visit_id in (',
' select patient_visit_id ',
' from edc_patient_visit a,edc_patient_profile b',
' where a.patient_profile_id = b.patient_profile_id',
'  and study_site_id = (select contact_id from edc_study_contact',
'      where study_contact_id = :APP_EDC_USER_ID)))',
' LOOP',
' :APP_EDC_PATIENT_VISIT_ID := I.PATIENT_VISIT_ID;',
' ',
'     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                      '' SET SECTION_STATUS = 9 ',
'                      WHERE PATIENT_vISIT_ID = ''||i.patient_visit_id|| '' and section_Status = 8'';',
'                      ',
' END LOOP;',
'',
'       commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12162870244936574086)
,p_process_when=>':P91_PAGE_ID = 36'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Sucess'
,p_internal_uid=>10544116813455729081
);
wwv_flow_imp.component_end;
end;
/
