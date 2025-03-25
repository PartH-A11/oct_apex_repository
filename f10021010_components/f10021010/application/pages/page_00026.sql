prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_tab_set=>'TS1'
,p_name=>'CRF Status'
,p_step_title=>'CRF Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'01'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1877887277639103753)
,p_plug_name=>'CRF Status2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12146477751663939882)
,p_name=>'CRF Status'
,p_parent_plug_id=>wwv_flow_imp.id(1877887277639103753)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"CRF_STATUS_ID",',
'"CRF_STATUS_ID" CRF_STATUS_ID_DISPLAY,',
'"DISPLAY_VAL",',
'"RETURN_VAL",',
'"STATUS",',
'"IMAGE_TAG",',
'--"DISP_SEQ",',
'role_id,',
'PREV_SEC_STATUS,',
'NEXT_SEC_STATUS',
'from "#OWNER#"."EDC_CRF_STATUS"',
'order by RETURN_VAL',
''))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146134054662911984)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146477932809939883)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146478034682939883)
,p_query_column_id=>2
,p_column_alias=>'CRF_STATUS_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Crf Status Id'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'L_PRIMARY_KEY NUMBER;',
'BEGIN',
'SELECT nvl(MAX(CRF_STATUS_ID),0) + 1',
'INTO L_PRIMARY_KEY',
'FROM EDC_CRF_STATUS;',
'',
'RETURN L_PRIMARY_KEY;',
'END;',
''))
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_CRF_STATUS'
,p_ref_column_name=>'CRF_STATUS_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146478126666939883)
,p_query_column_id=>3
,p_column_alias=>'CRF_STATUS_ID_DISPLAY'
,p_column_display_sequence=>4
,p_column_heading=>'Crf Status Id'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_CRF_STATUS'
,p_ref_column_name=>'CRF_STATUS_ID_DISPLAY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146478236270939883)
,p_query_column_id=>4
,p_column_alias=>'DISPLAY_VAL'
,p_column_display_sequence=>5
,p_column_heading=>'Display Value'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_CRF_STATUS'
,p_ref_column_name=>'DISPLAY_VAL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146478353329939883)
,p_query_column_id=>5
,p_column_alias=>'RETURN_VAL'
,p_column_display_sequence=>6
,p_column_heading=>'Return<br/>Value'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_cattributes=>'style="text-align:right"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_CRF_STATUS'
,p_ref_column_name=>'RETURN_VAL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146478433347939883)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(12146174725147637881)
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_CRF_STATUS'
,p_ref_column_name=>'STATUS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146478531548939883)
,p_query_column_id=>7
,p_column_alias=>'IMAGE_TAG'
,p_column_display_sequence=>8
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'EDC_CRF_STATUS'
,p_ref_column_name=>'IMAGE_TAG'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11669602431112707412)
,p_query_column_id=>8
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Associated<br>Role'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(12146564138299202672)
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11669602868631707412)
,p_query_column_id=>9
,p_column_alias=>'PREV_SEC_STATUS'
,p_column_display_sequence=>10
,p_column_heading=>'Previous Status'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>'select display_val d,return_val r from edc_crf_status order by 2'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11669603298463707412)
,p_query_column_id=>10
,p_column_alias=>'NEXT_SEC_STATUS'
,p_column_display_sequence=>11
,p_column_heading=>'Next Status'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>'select display_val d,return_val r from edc_crf_status order by 2'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146478733034939884)
,p_query_column_id=>12
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>2
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img style="cursor:pointer;" onclick="html_RowDown(this)"  ',
'src="/i/arrow_down_gray_dark.gif" /> ',
'<img style="cursor:pointer;" onclick="html_RowUp(this)" ',
'src="/i/arrow_up_gray_dark.gif" />',
''))
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146866125726979047)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_imp.id(1877887277639103753)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(12146390934232777381)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11996781505488231718)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146480642294939887)
,p_plug_name=>'CRF Status'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146479437235939885)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12146477751663939882)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Add'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:addRow();'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146479036004939884)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12146477751663939882)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146478856155939884)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12146477751663939882)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146479626714939885)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12146477751663939882)
,p_button_name=>'UPDATE_SEQ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Update Sequence'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146479239818939884)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12146477751663939882)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146481332727939892)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146479948551939887)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146477751663939882)
,p_validation_name=>'RETURN_VAL must be numeric'
,p_validation_sequence=>40
,p_validation=>'RETURN_VAL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(12146479036004939884)
,p_associated_column=>'RETURN_VAL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146480146060939887)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146477751663939882)
,p_validation_name=>'STATUS must be numeric'
,p_validation_sequence=>50
,p_validation=>'STATUS'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(12146479036004939884)
,p_associated_column=>'STATUS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146480226221939887)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12146477751663939882)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EDC_CRF_STATUS'
,p_attribute_03=>'CRF_STATUS_ID'
,p_process_error_message=>'Unable to process update.'
,p_process_when_button_id=>wwv_flow_imp.id(12146479036004939884)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>11045529458080435794
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146480454125939887)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12146477751663939882)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EDC_CRF_STATUS'
,p_attribute_03=>'CRF_STATUS_ID'
,p_process_error_message=>'Unable to process delete.'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>11045529685984435794
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146481044635939892)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Sequence'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vRow BINARY_INTEGER := 1;',
'BEGIN ',
'   FOR i IN 1 .. apex_application.g_f02.COUNT',
'   LOOP',
'      UPDATE EDC_CRF_STATUS SET DISP_SEQ = vRow',
'       WHERE CRF_STATUS_ID = apex_application.g_f02(i);',
'      vRow := vRow + 1;',
'   END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'ERROR!!! While updating sequence'
,p_process_when_button_id=>wwv_flow_imp.id(12146479626714939885)
,p_process_success_message=>'Sequence updated successfully ...'
,p_internal_uid=>11045530276494435799
);
wwv_flow_imp.component_end;
end;
/
