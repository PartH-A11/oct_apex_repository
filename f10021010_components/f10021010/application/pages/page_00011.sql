prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_tab_set=>'TS1'
,p_name=>'Document'
,p_step_title=>'Document'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_imp.id(11017835689714707247)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146210134870795609)
,p_plug_name=>'Document'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146213133836795619)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147419244196040008)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12146155451198328465)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146210531556795611)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_DOC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146210928263795611)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:parent.$(parent.document).apex_modal_page(''close'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146210335780795610)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Upload'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_DOC_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146210757121795611)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_DOC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146214243857795631)
,p_branch_action=>'f?p=&APP_ID.:197:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146211143884795613)
,p_name=>'P11_DESCRIPTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>62
,p_cMaxlength=>500
,p_cHeight=>4
,p_colspan=>3
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146211333223795614)
,p_name=>'P11_DOC_BLOB'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Document'
,p_source=>'DOC_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_colspan=>3
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIME_TYPE'
,p_attribute_03=>'FILE_NAME'
,p_attribute_05=>'UPDATED_ON'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146211534351795615)
,p_name=>'P11_DOC_GROUP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_source=>'DOC_GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146211739955795615)
,p_name=>'P11_DOC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_source=>'DOC_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146211936358795615)
,p_name=>'P11_DOC_VERSION'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Version'
,p_source=>'DOC_VERSION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146212125950795615)
,p_name=>'P11_FILE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name:'
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P11_DOC_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146212353906795616)
,p_name=>'P11_MIME_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_source=>'MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146212537689795616)
,p_name=>'P11_STATUS'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'STATUS_ACTIVE_INACTIVE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.display_value d, a.stored_value r from edc_lov_values a, edc_lov b',
' where a.lov_id = b.lov_id',
'   and b.lov_name = ''STATUS_ACTIVE_INACTIVE''',
'order by 1'))
,p_colspan=>3
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146212750108795616)
,p_name=>'P11_VERSION_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12146210134870795609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Version Date'
,p_source=>'VERSION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146213743937795631)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_STUDY_DOC'
,p_attribute_02=>'EDC_STUDY_DOC'
,p_attribute_03=>'P11_DOC_ID'
,p_attribute_04=>'DOC_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11045262975796291538
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146213949393795631)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select EDC_STUDY_DOC_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P11_DOC_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(12146210335780795610)
,p_internal_uid=>11045263181252291538
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146213355245795630)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_STUDY_DOC'
,p_attribute_02=>'EDC_STUDY_DOC'
,p_attribute_03=>'P11_DOC_ID'
,p_attribute_04=>'DOC_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_STUDY_DOC.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11045262587104291537
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146213547880795631)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'36'
,p_process_when_button_id=>wwv_flow_imp.id(12146210757121795611)
,p_internal_uid=>11045262779739291538
);
wwv_flow_imp.component_end;
end;
/
