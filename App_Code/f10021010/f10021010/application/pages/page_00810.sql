prompt --application/pages/page_00810
begin
--   Manifest
--     PAGE: 00810
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
 p_id=>810
,p_tab_set=>'TS1'
,p_name=>'Enable/Disable Items'
,p_step_title=>'Enable/Disable Items'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6611825492238722352)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6625188896372243981)
,p_plug_name=>'Enable/Disable Items Detail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172428695586316127)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P810_ENDIS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172429101113316126)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:801:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172429455199316126)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P810_ENDIS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172429890369316126)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P810_ENDIS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5172437532017316119)
,p_branch_name=>'Redirect to 801'
,p_branch_action=>'f?p=&APP_ID.:801:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'''CREATE'',''SAVE'',''DELETE'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172430293468316126)
,p_name=>'P810_ENDIS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_source=>'ENDIS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172430706312316124)
,p_name=>'P810_CRF_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P801_CRF_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CRF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172431111662316123)
,p_name=>'P810_CRF_SHORT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P801_CRF_SHORT_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Crf Short Name</b>'
,p_source=>'CRF_SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172431455952316123)
,p_name=>'P810_ITEM_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Item Name</b>'
,p_source=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COLUMN_NAME||''-''||ITEM_LABEL d, COLUMN_NAME r FROM EDC_CRF_ITEMS where study_id = :APP_EDC_STUDY_ID and crf_id = :P801_CRF_ID',
'and ITEM_TYPE IN (''DATE'',''RADIO BUTTON'',''SELECT LIST'')',
'order by item_seq;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P810_CRF_ID'
,p_ajax_items_to_submit=>'P810_CRF_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172431858737316123)
,p_name=>'P810_ITEM_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172432282066316123)
,p_name=>'P810_ITEM_VALUE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Item Value</b>'
,p_source=>'ITEM_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISPLAY_VALUE D,STORED_VALUE R FROM EDC_LOV_VALUES',
'WHERE LOV_ID = (SELECT ITEM_LOV FROM EDC_CRF_ITEMS WHERE COLUMN_NAME = :P810_ITEM_NAME AND CRF_ID = :P810_CRF_ID)',
'UNION',
'SELECT ''NULL'' D, ''NULL'' R',
'FROM DUAL',
'WHERE 1 = (SELECT COUNT(1) FROM EDC_CRF_ITEMS WHERE COLUMN_NAME = :P810_ITEM_NAME AND CRF_ID = :P810_CRF_ID AND ITEM_TYPE = ''DATE'')',
'UNION ',
'SELECT ''NOT NULL'' D,''NOT NULL'' R',
'FROM DUAL',
'WHERE 1 = (SELECT COUNT(1) FROM EDC_CRF_ITEMS WHERE COLUMN_NAME = :P810_ITEM_NAME AND CRF_ID = :P810_CRF_ID AND ITEM_TYPE = ''DATE'');'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P810_ITEM_NAME'
,p_ajax_items_to_submit=>'P810_ITEM_NAME,P810_CRF_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172432657002316122)
,p_name=>'P810_ITEM_ENDIS'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable/Disable'
,p_source=>'ITEM_ENDIS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EN_DIS_NA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''EN_DIS_NA'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172433016687316122)
,p_name=>'P810_ITEM_TOBE_ENDIS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Item to be Enable/Disable</b>'
,p_source=>'ITEM_TOBE_ENDIS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COLUMN_NAME||''-''||ITEM_LABEL d, ITEM_ID r ',
'FROM EDC_CRF_ITEMS ',
'where study_id = :APP_EDC_STUDY_ID',
'and column_name != :P810_ITEM_NAME',
'AND ITEM_TYPE != ''LABEL''',
'and crf_id = :P810_CRF_ID;'))
,p_lov_cascade_parent_items=>'P810_ITEM_NAME'
,p_ajax_items_to_submit=>'P810_ITEM_NAME,P810_CRF_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172433484050316122)
,p_name=>'P810_STUDY_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6625188896372243981)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5172436035270316120)
,p_name=>'Set Item ID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P810_ITEM_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172436600245316120)
,p_event_id=>wwv_flow_imp.id(5172436035270316120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P810_ITEM_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ITEM_ID FROM EDC_CRF_ITEMS',
'WHERE CRF_SHORT_NAME = :P810_CRF_SHORT_NAME',
'AND CRF_ID = :P810_CRF_ID',
'AND STUDY_ID = :APP_EDC_STUDY_ID',
'AND COLUMN_NAME = :P810_ITEM_NAME;'))
,p_attribute_07=>'P810_ITEM_NAME,P810_CRF_ID,P810_CRF_SHORT_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172437102221316119)
,p_event_id=>wwv_flow_imp.id(5172436035270316120)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P810_ITEM_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5172435221688316121)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_ITEMS_ENDIS'
,p_attribute_02=>'EDC_CRF_ITEMS_ENDIS'
,p_attribute_03=>'P810_ENDIS_ID'
,p_attribute_04=>'ENDIS_ID'
,p_internal_uid=>4071484453546812028
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5172434882824316121)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_ITEMS_ENDIS'
,p_attribute_02=>'EDC_CRF_ITEMS_ENDIS'
,p_attribute_03=>'P810_ENDIS_ID'
,p_attribute_04=>'ENDIS_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>4071484114682812028
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5172434481166316121)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Item_id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    update EDC_CRF_ITEMS_ENDIS',
'    set item_id = (select item_id from edc_crf_items',
'                  where crf_id = :P810_CRF_ID',
'                  and crf_short_name = :P810_CRF_SHORT_NAME',
'                  and study_id = :APP_EDC_STUDY_ID',
'                  and column_name = :P810_ITEM_NAME)',
'    where endis_id = :P810_ENDIS_ID;',
'    ',
'    commit;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4071483713024812028
,p_process_comment=>'''CREATE'',''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5172435652908316120)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Label'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_column_name varchar2(10000);',
'    v_column_name1 varchar2(10000) := '''';',
'    v_item_tobe_endis varchar2(100);',
'    v_cnt number := 1;',
'    v_cnt1 number := 0;',
'    v_cnt2 number;',
'    v_cnt3 number;',
'begin',
'    ',
'    for i in (select ITEM_ID, REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS,regexp_count(ITEM_TOBE_ENDIS,'':'') cnt_val',
'    from edc_crf_items_endis',
'    WHERE CRF_SHORT_NAME = :P810_CRF_SHORT_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID',
'    AND CRF_ID = :P810_CRF_ID) loop',
'    ',
'    dopl(''i.cnt_val : ''||i.cnt_val);',
'    dopl(''i.ITEM_TOBE_ENDIS : ''||i.ITEM_TOBE_ENDIS);',
'      ',
'      if i.cnt_val = 0 then',
'        ',
'        select column_name into v_column_name',
'        from edc_crf_items',
'        where item_id = i.item_tobe_endis',
'        and crf_short_name = :P810_CRF_SHORT_NAME',
'        and study_id = :APP_EDC_STUDY_ID',
'        and crf_id = :P810_CRF_ID;',
'        ',
'        update edc_crf_items_endis',
'        set item_tobe_endis_label = v_column_name',
'        where item_tobe_endis = i.item_tobe_endis',
'        and crf_short_name = :P810_CRF_SHORT_NAME',
'        and study_id = :APP_EDC_STUDY_ID',
'        and crf_id = :P810_CRF_ID;',
'        ',
'        dopl(''v_column_name : ''||v_column_name);',
'        ',
'      elsif i.cnt_val > 0 then',
'          ',
'          v_column_name1 := '''';',
'        ',
'          for j in (select regexp_substr(i.item_tobe_endis,''[^,]+'', 1, level) value1 from dual',
'          connect by regexp_substr(i.item_tobe_endis, ''[^,]+'', 1, level) is not null) loop',
'          ',
'            dopl(''j.value1 : ''||j.value1);',
'            ',
'            select column_name into v_column_name',
'            from edc_crf_items',
'            where item_id = j.value1',
'            and crf_short_name = :P810_CRF_SHORT_NAME',
'            and study_id = :APP_EDC_STUDY_ID',
'            and crf_id = :P810_CRF_ID;',
'            ',
'            dopl(''v_column_name : ''||v_column_name);',
'            ',
'            if v_column_name1 is null then',
'              v_column_name1 := v_column_name;',
'            else          ',
'              v_column_name1 := v_column_name1||'',''||v_column_name;',
'            end if;',
'            ',
'          end loop;          ',
'          ',
'          dopl(''v_column_name1 : ''||v_column_name1);',
'            ',
'          update edc_crf_items_endis',
'          set item_tobe_endis_label = v_column_name1',
'          where item_tobe_endis = replace(i.item_tobe_endis,'','','':'')',
'          and crf_short_name = :P810_CRF_SHORT_NAME',
'          and study_id = :APP_EDC_STUDY_ID',
'          and crf_id = :P810_CRF_ID;',
'        ',
'      end if;',
'  ',
'    end loop;',
'    commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''CREATE'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4071484884766812027
,p_process_comment=>'''SAVE'',''CREATE'''
);
wwv_flow_imp.component_end;
end;
/
