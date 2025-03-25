prompt --application/pages/page_00209
begin
--   Manifest
--     PAGE: 00209
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
 p_id=>209
,p_name=>'Patient Diary Pages'
,p_step_title=>'Patient Diary Pages'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_imp.id(12146129126910911975)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'01'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8309865813258850722)
,p_plug_name=>'blank'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>5
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8309902295988263026)
,p_name=>'CRF Pages'
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ID,',
'ID as ID_DISPLAY,',
'SCHEDULE_ID,',
'SCHEDULE_NAME,',
'PAGE_NO,',
'SECTION_NAME,',
'CRF_ID,',
'STUDY_ID,seq_no',
'from EDC_PATIENT_DIARY_PAGES',
'WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'and SCHEDULE_ID = :P209_SCHEDULE_ID',
'and app_type = ''WEB''',
'order by seq_no',
''))
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172541191298930633)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_PATIENT_DIARY_PAGES'
,p_ref_column_name=>'ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172541597316930633)
,p_query_column_id=>2
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'EDC_PATIENT_DIARY_PAGES'
,p_ref_column_name=>'ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5171980226952980530)
,p_query_column_id=>3
,p_column_alias=>'SCHEDULE_ID'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P209_SCHEDULE_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_PATIENT_DIARY_PAGES'
,p_ref_column_name=>'SCHEDULE_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5171980331832980531)
,p_query_column_id=>4
,p_column_alias=>'SCHEDULE_NAME'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P209_SCHEDULE_NAME'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_PATIENT_DIARY_PAGES'
,p_ref_column_name=>'SCHEDULE_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172542815660930632)
,p_query_column_id=>5
,p_column_alias=>'PAGE_NO'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'100'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_PATIENT_DIARY_PAGES'
,p_ref_column_name=>'PAGE_NO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172543164350930632)
,p_query_column_id=>6
,p_column_alias=>'SECTION_NAME'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_PATIENT_DIARY_PAGES'
,p_ref_column_name=>'SECTION_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172543556093930632)
,p_query_column_id=>7
,p_column_alias=>'CRF_ID'
,p_column_display_sequence=>4
,p_column_heading=>'CRF'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CRF_NAME D, CRF_ID R',
'FROM EDC_CRF_MASTER',
'WHERE CRF_PAGE_NO IN (100,509,510)',
'AND CRF_DESIGN_STATUS = ''Designed''',
'AND CRFYN = ''Yes'''))
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'--Select--'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_PATIENT_DIARY_PAGES'
,p_ref_column_name=>'CRF_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172543921977930632)
,p_query_column_id=>8
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'APP_EDC_STUDY_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172544408461930632)
,p_query_column_id=>9
,p_column_alias=>'SEQ_NO'
,p_column_display_sequence=>8
,p_column_heading=>'Seq No'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_cattributes=>'style="width:40px;"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172540750035930633)
,p_query_column_id=>10
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172544735826930631)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8309902295988263026)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add CRF'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt number;',
'begin',
'if :APP_EDC_USER_TYPE = 1 then',
'return true;',
'else',
'  select count(*) into v_cnt from edc_patient_visit',
'    where patient_profile_id in ',
'      (select patient_profile_id from edc_patient_profile a, edc_study_sites b where a.study_site_id = b.study_site_id and b.study_id = :APP_EDC_STUDY_ID)',
'    AND ACTUAL_DATE IS NOT NULL',
'    AND VISIT_TITLE = :P209_VISIT_TITLE;',
'  if v_cnt > 0 then return false;',
'  else return true;',
'  end if;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- pl/sql return boolean',
'--declare',
'  v_cnt number;',
'begin',
'  select count(*) into v_cnt from edc_patient_visit',
'    where patient_profile_id in ',
'      (select patient_profile_id from edc_patient_profile a, edc_study_sites b where a.study_site_id = b.study_site_id and b.study_id = :APP_EDC_STUDY_ID)',
'    AND ACTUAL_DATE IS NOT NULL',
'    AND VISIT_TITLE = :P194_VISIT_TITLE;',
'  if v_cnt > 0 then return false;',
'  else return true;',
'  end if;',
'end;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172545215838930631)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8309902295988263026)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt number;',
'begin',
'if :APP_EDC_USER_TYPE = 1 then',
'return true;',
'else',
'  select count(*) into v_cnt from edc_patient_visit',
'    where patient_profile_id in ',
'      (select patient_profile_id from edc_patient_profile a, edc_study_sites b where a.study_site_id = b.study_site_id and b.study_id = :APP_EDC_STUDY_ID)',
'    AND ACTUAL_DATE IS NOT NULL',
'    AND VISIT_TITLE = :P209_VISIT_TITLE;',
'  if v_cnt > 0 then return false;',
'  else return true;',
'  end if;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- condition Pl/sql return boolean',
'declare',
'  v_cnt number;',
'begin',
'  select count(*) into v_cnt from edc_patient_visit',
'    where patient_profile_id in ',
'      (select patient_profile_id from edc_patient_profile a, edc_study_sites b where a.study_site_id = b.study_site_id and b.study_id = :APP_EDC_STUDY_ID)',
'    AND ACTUAL_DATE IS NOT NULL',
'    AND VISIT_TITLE = :P194_VISIT_TITLE;',
'  if v_cnt > 0 then return false;',
'  else return true;',
'  end if;',
'end;',
'--- >> end----'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172545520269930630)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8309902295988263026)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:parent.$(parent.document).apex_modal_page(''close'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172546007133930630)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8309902295988263026)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt number;',
'begin',
'return true;',
'  select count(*) into v_cnt from edc_patient_visit',
'    where patient_profile_id in ',
'      (select patient_profile_id from edc_patient_profile a, edc_study_sites b where a.study_site_id = b.study_site_id and b.study_id = :APP_EDC_STUDY_ID)',
'    AND ACTUAL_DATE IS NOT NULL',
'    AND VISIT_TITLE = :P194_VISIT_TITLE;',
'  if v_cnt > 0 then return false;',
'  else return true;',
'  end if;',
'end;',
'',
'',
'',
'',
'',
'',
'/',
'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5172553544122930620)
,p_branch_name=>'Go To Page 194'
,p_branch_action=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.::P194_PARAM_ID,P194_STUDY_ID:&P194_PARAM_ID.,&APP_EDC_STUDY_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172539262875930635)
,p_name=>'P209_SCHEDULE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8309865813258850722)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172539657207930635)
,p_name=>'P209_SCHEDULE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8309865813258850722)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172540055779930635)
,p_name=>'P209_STUDY_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8309865813258850722)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5172547305394930630)
,p_tabular_form_region_id=>wwv_flow_imp.id(8309902295988263026)
,p_validation_name=>'PARAM_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'PARAM_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(5172545215838930631)
,p_associated_column=>'PARAM_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5172547652456930629)
,p_tabular_form_region_id=>wwv_flow_imp.id(8309902295988263026)
,p_validation_name=>'PAGE_NO must be numeric'
,p_validation_sequence=>50
,p_validation=>'PAGE_NO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(5172545215838930631)
,p_associated_column=>'PAGE_NO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5172548111064930629)
,p_tabular_form_region_id=>wwv_flow_imp.id(8309902295988263026)
,p_validation_name=>'CRF_ID not null'
,p_validation_sequence=>70
,p_validation=>'CRF_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(5172545215838930631)
,p_associated_column=>'CRF_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5172548470386930629)
,p_tabular_form_region_id=>wwv_flow_imp.id(8309902295988263026)
,p_validation_name=>'CRF_ID must be numeric'
,p_validation_sequence=>70
,p_validation=>'CRF_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(5172545215838930631)
,p_associated_column=>'CRF_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5172548861271930629)
,p_tabular_form_region_id=>wwv_flow_imp.id(8309902295988263026)
,p_validation_name=>'STUDY_ID must be numeric'
,p_validation_sequence=>80
,p_validation=>'STUDY_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(5172545215838930631)
,p_associated_column=>'STUDY_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5172550755521930622)
,p_name=>'Confirm Message'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5172546007133930630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172551283786930621)
,p_event_id=>wwv_flow_imp.id(5172550755521930622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'confirm(''Would you like to perform this delete action'');',
'apex.submit("MULTI_ROW_DELETE");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5172549191241930629)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8309902295988263026)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EDC_PATIENT_DIARY_PAGES'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5172545215838930631)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>4071598423100426536
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5172549567688930628)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8309902295988263026)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EDC_PATIENT_DIARY_PAGES'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>4071598799547426535
);
wwv_flow_imp.component_end;
end;
/
