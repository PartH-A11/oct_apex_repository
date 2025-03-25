prompt --application/pages/page_00140
begin
--   Manifest
--     PAGE: 00140
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
 p_id=>140
,p_tab_set=>'TS1'
,p_name=>'Kit Status Changes'
,p_alias=>'KIT-STATUS-CHANGES'
,p_step_title=>'Kit Status Changes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(758893826262533153)
,p_plug_name=>'Select Kits'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(758894992158533165)
,p_plug_name=>'Select Request'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(758978942098352499)
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
 p_id=>wwv_flow_imp.id(761685749372616356)
,p_plug_name=>'Change Expiry Date'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(758894783038533163)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(758893826262533153)
,p_button_name=>'CLICK_ME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Click Me'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(758893887940533154)
,p_name=>'P140_KIT_SELECT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(758893826262533153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Select Kits'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>'SELECT BOTTLE_NO, IP_ID FROM EDC_IP_DETAIL WHERE IP_STATUS = 3 AND PATIENT_PROFILE_ID IS NULL AND PATIENT_VISIT_ID IS NULL;'
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(758894378948533158)
,p_name=>'P140_KIT_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(758893826262533153)
,p_prompt=>'Select Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISPLAY_VALUE,STORED_VALUE FROM EDC_LOV_VALUES WHERE LOV_ID = 42 AND STATUS = 1 AND TO_NUMBER(STORED_VALUE) = 1;'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(758894693659533162)
,p_name=>'P140_TICKET_NO'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(758893826262533153)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket No or Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
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
 p_id=>wwv_flow_imp.id(758895170526533166)
,p_name=>'P140_RQ_SELECT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(758894992158533165)
,p_prompt=>'Request Select'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Select Kits;1,Change Expiry Date;2'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(761686187451616361)
,p_name=>'P140_KIT_SELECT_KITS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(761685749372616356)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Select Kits'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BOTTLE_NO||'' Block - ''||BLOCK ,IP_ID ',
'    FROM EDC_IP_DETAIL',
'    ORDER BY IP_ID;'))
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(758894077497533155)
,p_name=>'SELECTTION OF KITS IN SHUTTLE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P140_KIT_SELECT'
,p_condition_element=>'P140_KIT_SELECT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(758894144160533156)
,p_event_id=>wwv_flow_imp.id(758894077497533155)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P140_KIT_SELECT);',
'    delete from REPORT_SHUTTLE_VALUES_KIT WHERE SHUTTLE_TYPE = ''KIT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    for i in 1..tab.count loop',
'        insert into REPORT_SHUTTLE_VALUES_KIT(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values (''KIT'',tab(i),:APP_USER_NAME);',
'        commit;',
'        ',
'    end loop;',
'    ',
'end;    '))
,p_attribute_02=>'APP_USER_NAME,P140_KIT_SELECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(758894570775533160)
,p_event_id=>wwv_flow_imp.id(758894077497533155)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P140_KIT_STATUS,P140_TICKET_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(758894452040533159)
,p_event_id=>wwv_flow_imp.id(758894077497533155)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P140_KIT_STATUS,P140_TICKET_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(761686325888616362)
,p_name=>'SELECTTION OF KITS IN SHUTTLE EXPIRY'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P140_KIT_SELECT_KITS'
,p_condition_element=>'P140_KIT_SELECT_KITS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(761686413755616363)
,p_event_id=>wwv_flow_imp.id(761686325888616362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'    v_value varchar2(400) := '''';',
'begin',
'    ',
'    tab := apex_util.string_to_table(:P140_KIT_SELECT_KITS);',
'    delete from REPORT_SHUTTLE_VALUES_KIT WHERE SHUTTLE_TYPE = ''KIT'' AND UPPER(USERNAME) = UPPER(:APP_USER_NAME);',
'    commit;',
'    for i in 1..tab.count loop',
'        insert into REPORT_SHUTTLE_VALUES_KIT(SHUTTLE_TYPE,SHUTTLE_VALUE,USERNAME) values (''KIT'',tab(i),:APP_USER_NAME);',
'        commit;',
'        ',
'    end loop;',
'    ',
'end;    '))
,p_attribute_02=>'APP_USER_NAME,P140_KIT_SELECT_KITS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(758895204588533167)
,p_name=>'ENABLE_SELECT_KITS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P140_RQ_SELECT'
,p_condition_element=>'P140_RQ_SELECT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(758895302784533168)
,p_event_id=>wwv_flow_imp.id(758895204588533167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(758893826262533153)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(758895423174533169)
,p_event_id=>wwv_flow_imp.id(758895204588533167)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(758893826262533153)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(758894679209533161)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_REVERT_PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    FOR I IN (SELECT IP_ID FROM EDC_IP_DETAIL WHERE IP_ID ',
'                 IN (SELECT SHUTTLE_VALUE FROM REPORT_SHUTTLE_VALUES_KIT)',
'              ) LOOP',
'         UPDATE EDC_IP_DETAIL',
'             SET IP_STATUS = :P140_KIT_STATUS , STUDY_SITE_ID = NULL',
'         WHERE IP_ID = I.IP_ID;',
'         COMMIT;',
'    END LOOP;',
'-- audit code',
'UPDATE EDC_IP_SHIP_HIST',
'   SET ACTION_BY = UPPER(:APP_USER_NAME)',
'     , REASON_FOR_CHANGE = ''Data is updated based on ticket# :=> ''||:P140_TICKET_NO',
' WHERE ID IN (',
'SELECT DISTINCT MAX_ID',
'  FROM (',
'SELECT ID, TABLE_NAME, COLUMN_NAME, ACTION_DATE, ACTION_BY, REASON_FOR_CHANGE, OLD_VC, NEW_VC, OLD_NUMBER, NEW_NUMBER',
'     , MAX(ID) OVER(PARTITION BY TABLE_NAME, COLUMN_NAME, PK1) MAX_ID',
'  FROM EDC_IP_SHIP_HIST',
' WHERE COLUMN_NAME IN (''IP_STATUS'', ''STUDY_SITE_ID'')',
'   AND PK1 IN ( ',
'   SELECT IP_ID FROM EDC_IP_DETAIL WHERE STUDY_ID = 661',
'AND ip_id in(',
'SELECT IP_ID FROM EDC_IP_DETAIL WHERE IP_ID ',
'                 IN (SELECT SHUTTLE_VALUE FROM REPORT_SHUTTLE_VALUES_KIT)',
') ',
'   )',
'   AND TABLE_NAME = ''EDC_IP_DETAIL''',
'   AND action_by is null',
'   AND ACTION_DATE LIKE SYSDATE||''%''',
' ORDER BY PK1, COLUMN_NAME, ID',
' )',
' );',
' COMMIT;',
' END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN(''CLICK_ME'') AND :P140_TICKET_NO IS NOT NULL'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Action Proceed ...!'
,p_internal_uid=>758894679209533161
);
wwv_flow_imp.component_end;
end;
/
