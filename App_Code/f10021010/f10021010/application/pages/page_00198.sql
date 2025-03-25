prompt --application/pages/page_00198
begin
--   Manifest
--     PAGE: 00198
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
 p_id=>198
,p_name=>'Study Schedule'
,p_step_title=>'Study Schedule'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045352485279097965)
,p_plug_name=>'Study Schedule'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045354882724097971)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11045355082508097973)
,p_name=>'Study Schedule'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"PARAM_ID",',
'"STUDY_ID",',
'"VISIT_NAME",',
'"VISIT_TYPE",',
'"DURATION",',
'"WINDOW_PERIOD_P",',
'"WINDOW_PERIOD_M",',
'"TOTAL_CRF_PAGES",',
'"DISP_SEQ"',
'from "EDC_PATIENT_VISIT_PARAMS"',
'where /*study_id=:APP_STUDY_ID',
'AND*/ PARAM_MAST_ID = :P198_PARAM_MAST_ID'))
,p_display_when_condition=>'P198_PARAM_MAST_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P198_PARAM_MAST_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045355380594097974)
,p_query_column_id=>1
,p_column_alias=>'PARAM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'PARAM_ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045355457830097974)
,p_query_column_id=>2
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>2
,p_column_heading=>'STUDY_ID'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045355562572097974)
,p_query_column_id=>3
,p_column_alias=>'VISIT_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Visit Name'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045355684004097974)
,p_query_column_id=>4
,p_column_alias=>'VISIT_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Visit Type'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045355784125097974)
,p_query_column_id=>5
,p_column_alias=>'DURATION'
,p_column_display_sequence=>6
,p_column_heading=>'Duration'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045355957960097974)
,p_query_column_id=>6
,p_column_alias=>'WINDOW_PERIOD_P'
,p_column_display_sequence=>7
,p_column_heading=>'Window Period (+)'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045356073656097974)
,p_query_column_id=>7
,p_column_alias=>'WINDOW_PERIOD_M'
,p_column_display_sequence=>8
,p_column_heading=>'Window Period (-)'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045355868174097974)
,p_query_column_id=>8
,p_column_alias=>'TOTAL_CRF_PAGES'
,p_column_display_sequence=>9
,p_column_heading=>'Total CRF Pages'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045356159780097974)
,p_query_column_id=>9
,p_column_alias=>'DISP_SEQ'
,p_column_display_sequence=>3
,p_column_heading=>'Visit #'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045355256772097973)
,p_query_column_id=>10
,p_column_alias=>'LINK$01'
,p_column_display_sequence=>10
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.:194:P194_PARAM_ID,P194_VISIT_TITLE:#PARAM_ID#,#VISIT_NAME#'
,p_column_linktext=>'CRF Pages'
,p_column_link_attr=>'onclick="return false;" class="edit-crfpages"'
,p_lov_show_nulls=>'NO'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045356270759097976)
,p_plug_name=>'Study Submenu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045178973639407883)
,p_plug_display_sequence=>8
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_imp.id(11045184883131407894)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045352864069097966)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045353265075097967)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045352678029097965)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045353081683097967)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11045357757912097982)
,p_branch_action=>'f?p=&APP_ID.:198:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045353461746097969)
,p_name=>'P198_PARAM_MAST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Param Mast Id'
,p_source=>'PARAM_MAST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045353670685097970)
,p_name=>'P198_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Study Id'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045353868948097970)
,p_name=>'P198_SCHEDULE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Schedule Name'
,p_source=>'SCHEDULE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_tag_attributes=>'readonly="readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045354056522097970)
,p_name=>'P198_CREATED_ON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created On'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045354283557097970)
,p_name=>'P198_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045354487420097970)
,p_name=>'P198_UPDATED_ON'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated On'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045354677725097971)
,p_name=>'P198_UPDATED_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11045352485279097965)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11045357261912097980)
,p_name=>'OPEN_MODAL_PAGE'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit-crfpages'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11045357560533097981)
,p_event_id=>wwv_flow_imp.id(11045357261912097980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Add CRF Pages'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_03=>'f?p=&APP_ID.:1:&APP_SESSION.:::1:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'50'
,p_attribute_09=>'50'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045357088353097980)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_PATIENT_VISIT_PARAMS_MAST'
,p_attribute_02=>'EDC_PATIENT_VISIT_PARAMS_MAST'
,p_attribute_03=>'P198_PARAM_MAST_ID'
,p_attribute_04=>'PARAM_MAST_ID'
,p_internal_uid=>11045357088353097980
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045356478033097979)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(PARAM_MAST_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_PATIENT_VISIT_PARAMS_MAST;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P198_PARAM_MAST_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11045352678029097965)
,p_internal_uid=>11045356478033097979
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045356681113097979)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_PATIENT_VISIT_PARAMS_MAST'
,p_attribute_02=>'EDC_PATIENT_VISIT_PARAMS_MAST'
,p_attribute_03=>'P198_PARAM_MAST_ID'
,p_attribute_04=>'PARAM_MAST_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11045356681113097979
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045356872452097980)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11045353081683097967)
,p_internal_uid=>11045356872452097980
);
wwv_flow_imp.component_end;
end;
/
