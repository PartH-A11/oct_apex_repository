prompt --application/pages/page_00134
begin
--   Manifest
--     PAGE: 00134
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
 p_id=>134
,p_tab_set=>'TS1'
,p_name=>'Depot Master Form'
,p_step_title=>'Depot Master Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3108197666425681505)
,p_plug_name=>'Depot Master Detail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3107668205080480197)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131027748911980)
,p_plug_display_sequence=>10
,p_plug_new_grid=>true
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3108209195419681499)
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
 p_id=>wwv_flow_imp.id(6957986861811055820)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(12146390934232777381)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108198154613681505)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P134_DEPOT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108198356527681505)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1887895944638754506)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_button_name=>'Audit_Trail'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P134_DEPOT_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108198086423681505)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P134_DEPOT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3108198320464681505)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
,p_button_comment=>'P134_DEPOT_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3108200013071681504)
,p_branch_action=>'f?p=&APP_ID.:133:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3104775038315252308)
,p_name=>'P134_COUNTRY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Country</b>'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107547210413785578)
,p_name=>'P134_DEPOT_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_DNO VARCHAR2(300);',
'BEGIN',
'    SELECT LPAD(NVL(MAX(DEPOT_ID),0)+1,2,00) INTO V_DNO FROM EDC_DEPOT;',
'    RETURN V_DNO;',
'EXCEPTION',
'    WHEN OTHERS THEN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Depot No</b>'
,p_source=>'DEPOT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_tag_attributes=>'readonly=''readonly'''
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107667497419480190)
,p_name=>'P134_DEPOT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Depot Name</b>'
,p_source=>'DEPOT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>300
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107667576527480191)
,p_name=>'P134_ADDRESS_LINE1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Address Line1</b>'
,p_source=>'ADDRESS_LINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107667720536480192)
,p_name=>'P134_ADDRESS_LINE2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Address Line2</b>'
,p_source=>'ADDRESS_LINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107667813116480193)
,p_name=>'P134_CITY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>City</b>'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107667836039480194)
,p_name=>'P134_STATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>State</b>'
,p_source=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107667997378480195)
,p_name=>'P134_ZIP_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Zip Code</b>'
,p_source=>'ZIP_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107668041625480196)
,p_name=>'P134_COUNTRY_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Region</b>'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_COUNTRY_MAST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNTRY_NAME D, COUNTRY_ID R',
'  FROM EDC_COUNTRY_MST',
' ORDER BY COUNTRY_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>'P134_DEPOT_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107668424838480199)
,p_name=>'P134_CREATED_ON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3107668205080480197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created On'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107668480804480200)
,p_name=>'P134_CREATED_BY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3107668205080480197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created BY'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>300
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107668626593480201)
,p_name=>'P134_UPDATED_ON'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3107668205080480197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated On'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3107668646229480202)
,p_name=>'P134_UPDATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3107668205080480197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>300
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108200339593681504)
,p_name=>'P134_DEPOT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3108197666425681505)
,p_use_cache_before_default=>'NO'
,p_source=>'DEPOT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3109486953932654877)
,p_validation_name=>'Dynamic Error'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR C1 IS',
'  SELECT APPLICATION_ID, PAGE_ID, DISPLAY_SEQUENCE, ITEM_NAME, LABEL, DISPLAY_AS_CODE, DISPLAY_AS, ITEM_SOURCE, ITEM_SOURCE_TYPE',
'    FROM APEX_APPLICATION_PAGE_ITEMS',
'   WHERE ITEM_LABEL_TEMPLATE = ''Required''',
'     AND ITEM_SOURCE_TYPE = ''Database Column''',
'     AND NVL(CONDITION_TYPE_CODE,''A'') != ''NEVER''',
'     AND PAGE_ID = :APP_PAGE_ID',
'     AND APPLICATION_ID = :APP_ID',
'   ORDER BY DISPLAY_SEQUENCE;',
'',
'  V_VAL VARCHAR2(2000);',
'  V_MSG CLOB;',
'BEGIN',
'  FOR I IN C1 LOOP',
'    V_VAL := V(I.ITEM_NAME);',
'',
'    IF V_VAL IS NULL THEN',
'      V_MSG := I.LABEL||'' must have some value.'';',
'',
'      APEX_ERROR.ADD_ERROR (',
'          P_MESSAGE          => V_MSG,',
'          P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION,',
'          P_PAGE_ITEM_NAME   => I.ITEM_NAME);',
'    END IF;',
'  END LOOP;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1887896044281754507)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1887895944638754506)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1887896137619754508)
,p_event_id=>wwv_flow_imp.id(1887896044281754507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>' f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_DEPOT,&P136_DEPOT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'70'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108201217489681503)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_DEPOT'
,p_attribute_02=>'EDC_DEPOT'
,p_attribute_03=>'P134_DEPOT_ID'
,p_attribute_04=>'DEPOT_ID'
,p_internal_uid=>2007250449348177410
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108201539778681503)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_DEPOT'
,p_attribute_02=>'EDC_DEPOT'
,p_attribute_03=>'P134_DEPOT_ID'
,p_attribute_04=>'DEPOT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2007250771637177410
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3108201988276681503)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3108198320464681505)
,p_internal_uid=>2007251220135177410
);
wwv_flow_imp.component_end;
end;
/
