prompt --application/pages/page_00804
begin
--   Manifest
--     PAGE: 00804
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
 p_id=>804
,p_name=>'Alter Table'
,p_step_title=>'Alter Table'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function blockSpecialChar(e){',
'        var k;',
'   ',
'        document.all ? k = e.keyCode : k = e.which;',
'        //return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));',
'',
'        return ((k > 64 && k < 91)  || (k >47 && k<58) ||(k==95) ); //||(k > 96 && k < 123)',
'',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5501562926233258393)
,p_plug_name=>'Alter Table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>99
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071493148980798148)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P804_SELBUTTON = ''ALT'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071493562997798148)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P804_SELBUTTON = ''DEL'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071494046463798148)
,p_name=>'P804_CRF_SHORT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P801_CRF_SHORT_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Crf Short Name</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071494374193798147)
,p_name=>'P804_ITEM_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Item Type</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATATYPE_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''DATATYPE_TYPE'' and lv.status=1',
'order by lv.sequence'))
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P804_SELBUTTON = ''ALT'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071494806602798147)
,p_name=>'P804_COLUMN_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Column Name</b>'
,p_placeholder=>'UPPERCASE ONLY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_tag_attributes=>'onkeypress="return blockSpecialChar(event);" style="text-transform: uppercase"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P804_SELBUTTON = ''ALT'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071495196862798147)
,p_name=>'P804_ITEM_LABEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Item Label</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P804_SELBUTTON = ''ALT'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071495587526798146)
,p_name=>'P804_ITEM_LABEL1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Item Label</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select item_label||''-''||column_name d,column_name r from EDC_CRF_ITEMS',
'where crf_short_name = :P804_CRF_SHORT_NAME',
'and study_id = :APP_EDC_STUDY_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P804_SELBUTTON = ''DEL'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select item_label d,item_label r from EDC_CRF_ITEMS',
'where crf_short_name = :P804_CRF_SHORT_NAME',
'and study_id = :APP_EDC_STUDY_ID'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071495951167798146)
,p_name=>'P804_COLUMN_NAME1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Column Name</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>':P804_SELBUTTON = ''DEL'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071496366656798146)
,p_name=>'P804_ITEM_SEQ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Item Seq</b>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P804_SELBUTTON = ''ALT'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071496801912798146)
,p_name=>'P804_ITEM_SIZE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Item Size</b>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P804_SELBUTTON = ''ALT'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071497162175798145)
,p_name=>'P804_DIGITS_AFTR_DECI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Digits after Decimal</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P804_SELBUTTON = ''ALT'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071497572579798145)
,p_name=>'P804_ITEM_LOV'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_prompt=>'<b>Item LOV</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lov_name d,lov_id r from edc_lov',
'where status = 1',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P804_SELBUTTON = ''ALT'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071498029558798145)
,p_name=>'P804_SELBUTTON'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071498412798798145)
,p_name=>'P804_FLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071498832482798144)
,p_name=>'P804_ERR_FLAG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071499155099798144)
,p_name=>'P804_ERR_FLAG_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5501562926233258393)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071500463854798137)
,p_validation_name=>'P804_ITEM_SIZE must have value'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'',
'        if :P804_ITEM_TYPE IN (''TEXT'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') then',
'            if :P804_ITEM_SIZE IS NULL THEN',
'                RETURN FALSE;',
'            ELSE ',
'                RETURN TRUE;',
'            end if;',
'            ',
'        end if;',
'        ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'ITEM_SIZE MUST HAVE SOME VALUE'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(4071493148980798148)
,p_associated_item=>wwv_flow_imp.id(4071496801912798146)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071500879864798136)
,p_validation_name=>'P804_ITEM_LOV must have value'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'',
'        ',
'        if :P804_ITEM_TYPE IN (''SELECT LIST'',''RADIO BUTTON'') then',
'            if :P804_ITEM_LOV IS NULL THEN',
'                return ''Please mention LOV for ''||:P804_ITEM_LABEL;',
'            end if;',
'        end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(4071493148980798148)
,p_associated_item=>wwv_flow_imp.id(4071497572579798145)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071501273005798136)
,p_validation_name=>'P804_ITEM_SEQ is not null'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'    ',
'',
'            ',
'        if :P804_ITEM_SEQ IS NULL THEN',
'            return ''Please mention Sequence for ''||:P804_ITEM_LABEL;',
'        end if;',
'        ',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(4071493148980798148)
,p_associated_item=>wwv_flow_imp.id(4071496366656798146)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071501718157798136)
,p_validation_name=>'P804_COLUMN_NAME must be unique'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'            ',
'        if :P804_COLUMN_NAME IS NOT NULL THEN',
'        ',
'            select count(1) into v_cnt ',
'            from edc_crf_items',
'            where CRF_SHORT_NAME = :P804_CRF_SHORT_NAME',
'            and crf_id = :CRF_ID',
'            and study_id is null;',
'            ',
'            if v_cnt > 0 then',
'                return ''There cannot be duplicate column names. Please check.'';',
'            end if;',
'        end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(4071493148980798148)
,p_associated_item=>wwv_flow_imp.id(4071494806602798147)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071499648087798137)
,p_validation_name=>'Column Name Start Validation'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'x number;',
'begin',
'if (regexp_like(:P804_COLUMN_NAME, ''^[_]|^[0-9]'') = true) then',
'   return :P804_COLUMN_NAME||''is invalid. Column name must be begin with alphabet'';',
'   elsif (regexp_like(:P804_COLUMN_NAME, ''[_]$'') = true) then',
'   return :P804_COLUMN_NAME||''is invalid. Column name can not end with underscore(_).'';',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4071494806602798147)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071500055668798137)
,p_validation_name=>'System Reserved Word'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'x number;',
'begin',
'select 1 into x from resv_word_vw where UPPER(keyword)=UPPER(:P804_COLUMN_NAME);',
'   return :P804_COLUMN_NAME||'' is System Reserved Keyword'';',
'exception when no_data_found then',
'    null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4071494806602798147)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071503192995798135)
,p_name=>'Clear Item Values'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071503701445798134)
,p_event_id=>wwv_flow_imp.id(4071503192995798135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P804_ITEM_TYPE,P804_COLUMN_NAME,P804_ITEM_LABEL,P804_ITEM_SEQ,P804_ITEM_SIZE,P804_ITEM_LOV,P804_COLUMN_NAME1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071504145955798134)
,p_name=>'Set Column Name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P804_ITEM_LABEL1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P804_SELBUTTON = ''DEL'''
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071504614979798133)
,p_event_id=>wwv_flow_imp.id(4071504145955798134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P804_COLUMN_NAME1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name from edc_crf_items',
'where crf_short_name = :P804_CRF_SHORT_NAME',
'and study_id = :APP_EDC_STUDY_ID',
'and column_name = :P804_ITEM_LABEL1'))
,p_attribute_07=>'P804_ITEM_LABEL1,P804_CRF_SHORT_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071504948517798132)
,p_name=>'Button Click'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4071493148980798148)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071505525921798132)
,p_event_id=>wwv_flow_imp.id(4071504948517798132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'        if :P804_COLUMN_NAME IS NOT NULL THEN',
'            :P804_FLAG := 0;',
'            ',
'            select count(1) into v_cnt ',
'            from edc_crf_items',
'            where CRF_SHORT_NAME = :P804_CRF_SHORT_NAME',
'            AND COLUMN_NAME=:P804_COLUMN_NAME',
'            and study_id = :APP_EDC_STUDY_ID;',
'            ',
'            if v_cnt > 0 then',
'                :P804_FLAG := 1;',
'            else ',
'                :P804_FLAG := 0;',
'            end if;',
'        end if;',
'        ',
'        :P804_ERR_FLAG_1 := 0;',
'        ',
'        if :P804_ITEM_SEQ IS NOT NULL THEN',
'       ',
'            select count(1) into v_cnt ',
'            from edc_crf_items',
'            where CRF_SHORT_NAME = :P804_CRF_SHORT_NAME',
'            AND ITEM_SEQ=:P804_ITEM_SEQ',
'            AND STUDY_ID = :APP_EDC_STUDY_ID;',
'            ',
'            if v_cnt > 0 then',
'                :P804_ERR_FLAG_1 := 1;',
'            else ',
'                :P804_ERR_FLAG_1 := 0;',
'            end if;',
'        end if;',
'end;'))
,p_attribute_02=>'P804_COLUMN_NAME,P804_ITEM_SEQ'
,p_attribute_03=>'P804_FLAG,P804_ERR_FLAG_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071505983562798131)
,p_event_id=>wwv_flow_imp.id(4071504948517798132)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'x number;',
'begin',
':P804_ERR_FLAG:=0;',
'if (regexp_like(:P804_COLUMN_NAME, ''^[_]|^[0-9]'')= true) then',
':P804_ERR_FLAG:=1;',
'elsif (regexp_like(:P804_COLUMN_NAME, ''[_]$'') = true) then',
':P804_ERR_FLAG:=2;',
'else',
'    begin',
'    select 1 into x from resv_word_vw where UPPER(keyword)=UPPER(:P804_COLUMN_NAME);',
'    :P804_ERR_FLAG:=3;',
'    exception when no_data_found then',
'    null;',
'    end; ',
'end if;',
'',
'end;'))
,p_attribute_02=>'P804_COLUMN_NAME'
,p_attribute_03=>'P804_ERR_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071506516236798131)
,p_event_id=>wwv_flow_imp.id(4071504948517798132)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById(''P804_ITEM_TYPE'').value;',
'var b=document.getElementById(''P804_ITEM_SIZE'').value;',
'var c=document.getElementById(''P804_ITEM_LOV'').value;',
'var d=document.getElementById(''P804_ITEM_SEQ'').value;',
'var e=document.getElementById(''P804_FLAG'').value;',
'var f=document.getElementById(''P804_ERR_FLAG'').value;',
'var g=document.getElementById(''P804_ERR_FLAG_1'').value;',
'var col_name=document.getElementById(''P804_COLUMN_NAME'').value;',
'var msg=0;',
'',
'if ((a=="RADIO BUTTON" || a=="SELECT LIST" || a=="TEXT" || a=="TEXTAREA") && b=="")',
'{',
'msg = "Item Size must have some value.\n";',
'}',
'',
'if ((a=="SELECT LIST" || a=="RADIO BUTTON") && c=="")',
'{',
'msg = msg+"Item LOV must have some value.\n";',
'}',
'',
'if (d=="")',
'{',
'msg = msg+"Please mention Sequence. \n";',
'}',
'',
'if (e=="1")',
'{',
'msg = msg+"There cannot be duplicate column names. Please check. \n";',
'}',
'if (g=="1")',
'{',
'msg = msg+"There cannot be same sequence. Please check. \n";',
'}',
'if (f==1)',
'    {',
'        msg = msg+'' ''+col_name+'' is invalid. Column name must be begin with alphabet'';',
'    }',
'if (f==2)',
'    {',
'        msg = msg+'' ''+col_name+'' is invalid. Column name can not end with underscore(_).'';',
'    }',
'if (f==3)',
'    {',
'        msg = msg+'' Invalid..''+col_name+'' is System Reserved Keyword.'';',
'    }',
'var m = msg.length;',
'if (m > 0)',
'    {',
'        alert(msg);',
'    }',
'else',
'    {',
'        apex.submit("SAVE");',
'    }',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071502355123798136)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Alter Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_SQL CLOB;',
'v_datatype varchar2(50) := '''';',
'BEGIN',
'          ',
'    IF :P804_ITEM_TYPE IN (''TEXT'',''RADIO BUTTON'',''SELECT LIST'',''TEXTAREA'',''CHECKBOX'',''LABEL'',''UNKNOWN DATE'') THEN',
'      ',
'      v_datatype := ''VARCHAR2'';',
'    ',
'      V_SQL := V_SQL ||'' ''||:P804_COLUMN_NAME ||'' ''|| v_datatype||''(''||:P804_ITEM_SIZE||'')'';',
'      ',
'    ELSIF :P804_ITEM_TYPE IN (''DATE'',''TIME'') THEN',
'      ',
'      v_datatype := ''DATE'';',
'    ',
'      V_SQL := V_SQL ||'' ''||:P804_COLUMN_NAME ||'' ''|| v_datatype;',
'      ',
'    ELSIF :P804_ITEM_TYPE = ''NUMBER'' THEN',
'      ',
'      v_datatype := ''NUMBER'';',
'    ',
'      V_SQL := V_SQL ||'' ''||:P804_COLUMN_NAME ||'' ''|| v_datatype;  ',
'      ',
'    ELSE       ',
'    ',
'      V_SQL := V_SQL ||'' ''||:P804_COLUMN_NAME ||'' ''|| v_datatype;',
'      ',
'    END IF;',
'    ',
'',
'  --DBMS_OUTPUT.PUT_LINE('' V_SQL : ''||V_SQL); ',
'',
'  V_SQL := ''ALTER TABLE EDC_CRF_''||:P804_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||'' ADD''|| V_SQL ;',
'  ',
'  --DBMS_OUTPUT.PUT_LINE('' V_SQL : ''||V_SQL);',
'  ',
'  ',
'  EXECUTE IMMEDIATE V_SQL;',
'  commit;',
'  ',
'  insert into edc_crf_items(CRF_ID,STUDY_ID,CRF_SHORT_NAME,ITEM_TYPE,ITEM_LABEL,ITEM_SEQ,ITEM_SIZE,CRF_TABLE_NAME,ITEM_VALIDATION,ITEM_LOV,',
'                            COLUMN_NAME,ACTION,DIGITS_AFTR_DECI)',
'  VALUES(:P801_CRF_ID,:APP_EDC_STUDY_ID,:P804_CRF_SHORT_NAME,:P804_ITEM_TYPE,:P804_ITEM_LABEL,:P804_ITEM_SEQ,:P804_ITEM_SIZE,''EDC_CRF_''||:P804_CRF_SHORT_NAME||:APP_EDC_STUDY_ID,',
'                            NULL,:P804_ITEM_LOV,:P804_COLUMN_NAME,''ALTER'',:P804_DIGITS_AFTR_DECI);',
'  COMMIT;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4071493148980798148)
,p_process_success_message=>'Table Altered Successfully.'
,p_internal_uid=>4071502355123798136
,p_process_comment=>'Request is contained in value : ''Save'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071502823789798135)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Drop Column'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt1 number;',
'    v_cnt2 number;',
'    v_item_id number;',
'    v_frst_comma varchar2(10);',
'    v_lst_comma varchar2(10);',
'    v_len number;',
'    v_len1 number;',
'begin',
'',
'    select count(1) into v_cnt1',
'    from edc_crf_items_endis',
'    where item_name = :P804_ITEM_LABEL1',
'    and crf_short_name = :P804_CRF_SHORT_NAME',
'    and crf_id = :P801_CRF_ID;',
'',
'    if v_cnt1 > 0 then',
'        delete from edc_crf_items_endis',
'        where item_name = :P804_ITEM_LABEL1',
'        and crf_short_name = :P804_CRF_SHORT_NAME',
'        and crf_id = :P801_CRF_ID;',
'    end if;',
'',
'    select count(1) into v_cnt2',
'    from edc_crf_items_endis',
'    where item_tobe_endis_label like ''%''||:P804_ITEM_LABEL1||''%''',
'    and crf_short_name = :P804_CRF_SHORT_NAME',
'    and crf_id = :P801_CRF_ID;',
'',
'    if v_cnt2 > 0 then',
'    ',
'        select item_id into v_item_id',
'        from edc_crf_items',
'        where crf_short_name = :P804_CRF_SHORT_NAME',
'        and crf_id = :P801_CRF_ID',
'        and column_name = :P804_ITEM_LABEL1;',
'',
'        for i in (select endis_id from edc_crf_items_endis where item_tobe_endis_label like ''%''||:P804_ITEM_LABEL1||''%'' and crf_short_name = :P804_CRF_SHORT_NAME and crf_id = :P801_CRF_ID) loop',
'',
'            update edc_crf_items_endis',
'            set item_tobe_endis_label = replace(replace(item_tobe_endis_label,:P804_ITEM_LABEL1,''''),'',,'','',''), ',
'            item_tobe_endis = replace(replace(item_tobe_endis,v_item_id,''''),'',,'','','')',
'            where item_tobe_endis_label like ''%''||:P804_ITEM_LABEL1||''%''',
'            and crf_short_name = :P804_CRF_SHORT_NAME',
'            and crf_id = :P801_CRF_ID',
'            and endis_id = i.endis_id;',
'            ',
'            select substr(item_tobe_endis_label,1,1),substr(item_tobe_endis_label,-1,1) ',
'            into v_frst_comma, v_lst_comma',
'            from edc_crf_items_endis',
'            where endis_id = i.endis_id;',
'            ',
'            if v_frst_comma = '','' then',
'                update edc_crf_items_endis',
'                set item_tobe_endis_label = substr(item_tobe_endis_label,2), item_tobe_endis = substr(item_tobe_endis,2)',
'                where endis_id = i.endis_id;',
'            end if;',
'            ',
'            if v_lst_comma = '','' then',
'                select length(item_tobe_endis) into v_len',
'                from edc_crf_items_endis',
'                where endis_id = i.endis_id;',
'                ',
'                select length(item_tobe_endis_label) into v_len1',
'                from edc_crf_items_endis',
'                where endis_id = i.endis_id;',
'                ',
'                update edc_crf_items_endis',
'                set item_tobe_endis = substr(item_tobe_endis,1,v_len-1), item_tobe_endis_label = substr(item_tobe_endis_label,1,v_len1-1)',
'                where endis_id = i.endis_id;',
'            ',
'            end if;',
'',
'        end loop;',
'',
'    end if;',
'',
'    execute immediate ''ALTER TABLE EDC_CRF_''||:P804_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||'' DROP COLUMN ''||:P804_ITEM_LABEL1;',
'    commit;',
'',
'    delete from edc_crf_items',
'    where study_id = :APP_EDC_STUDY_ID',
'    and crf_short_name = :P804_CRF_SHORT_NAME',
'    and column_name = :P804_ITEM_LABEL1',
'    and crf_id = :P801_CRF_ID;',
'',
'    commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Column Dropped Successfully'
,p_internal_uid=>4071502823789798135
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071501988127798136)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
':P804_CRF_SHORT_NAME:=:P801_CRF_SHORT_NAME;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4071501988127798136
);
wwv_flow_imp.component_end;
end;
/
