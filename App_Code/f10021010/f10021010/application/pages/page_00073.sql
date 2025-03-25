prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_name=>'Feedback'
,p_step_title=>'Feedback'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//set mendatory mark to the ch_app',
'function mendat_mark(){',
'    a = $(''#P73_CH_APP_EXST'').val();',
'',
'    if (a == "1"){',
'        $(''#P73_CH_APP_LABEL'').removeClass(''uOptional'');',
'        $(''#P73_CH_APP_LABEL'').addClass(''uRequired'');',
'        $(''#P73_CH_APP_LABEL'').append(''<img src="/i/f_spacer.gif" alt="Value Required" class="uAsterisk">'');',
'    }',
'}'))
,p_javascript_code_onload=>'mendat_mark();'
,p_step_template=>wwv_flow_imp.id(12146129126910911975)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6559950683690718798)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6559963892473718811)
,p_plug_name=>'Reply'
,p_parent_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:700px;margin-top:15px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<br>'
,p_plug_footer=>'<br>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6559968676218718816)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<br>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6559969123985718817)
,p_name=>'Ticket Thread'
,p_parent_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_template=>wwv_flow_imp.id(12146131930378911981)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(A.CREATED_ON,''DD-MON-YYYY HH24:MI'')||'' - ''||INITCAP(A.CREATED_BY) AS ',
'"Ticket Time",',
'REPLACE(A.ISSUE_DESC,chr(10),''<br/>'') as "Existing Details",',
'A.PRE_ACTION as "Preventive Action",',
'A.CORR_ACTION as "Impact Analysis",',
'A.ROOT_CAUSE as "Proposed Change",',
'B.CH_APP as "Change Approval",',
'B.COMM as "Comments"',
'FROM EDC_FEEDBACK_DETAILS A, EDC_USER_FEEDBACK B ',
'WHERE A.FEEDBACK_ID = B.FEEDBACK_ID AND A.FEEDBACK_ID = :P73_FEEDBACK_ID ',
'ORDER BY A.CREATED_ON'))
,p_display_when_condition=>'P73_FEEDBACK_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
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
 p_id=>wwv_flow_imp.id(5234114125406784026)
,p_query_column_id=>1
,p_column_alias=>'Ticket Time'
,p_column_display_sequence=>1
,p_column_heading=>'Ticket Time'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5234114602135784027)
,p_query_column_id=>2
,p_column_alias=>'Existing Details'
,p_column_display_sequence=>2
,p_column_heading=>'Existing details'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5234114936600784028)
,p_query_column_id=>3
,p_column_alias=>'Preventive Action'
,p_column_display_sequence=>5
,p_column_heading=>'Preventive Action'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5234115320335784028)
,p_query_column_id=>4
,p_column_alias=>'Impact Analysis'
,p_column_display_sequence=>4
,p_column_heading=>'Impact Analysis'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5234115755691784028)
,p_query_column_id=>5
,p_column_alias=>'Proposed Change'
,p_column_display_sequence=>3
,p_column_heading=>'Proposed change'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5234116190252784029)
,p_query_column_id=>6
,p_column_alias=>'Change Approval'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5234116609585784030)
,p_query_column_id=>7
,p_column_alias=>'Comments'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234109150418784018)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Post Message'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P73_FEEDBACK_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234096024176783987)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:self.close();'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234096506848783989)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P73_FEEDBACK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234096838328783989)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_button_name=>'PRINT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select 1 from EDC_USER_FEEDBACK where approval_Status = 2 and feedback_id = :p73_feedback_id'
,p_button_condition_type=>'EXISTS'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'P73_FEEDBACK_ID',
'',
':P73_FEEDBACK_ID is not null and',
':P73_CORR_ACTION is not null'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234097305089783990)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6559950683690718798)
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234097688560783990)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_button_name=>'REVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Review'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM TABLE(APPROVAL_TABLE(1))',
' WHERE SC_ID = :APP_EDC_USER_ID',
'and :P73_APPROVAL_STATUS = 0'))
,p_button_condition_type=>'EXISTS'
,p_button_comment=>'P73_APPROVAL_STATUS 0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5234098046470783991)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_button_name=>'APPROVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Approve'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'BEGIN',
'  SELECT COUNT(*)',
'    INTO V_COUNT',
'    FROM TABLE(APPROVAL_TABLE(2))',
'   WHERE SC_ID = :APP_EDC_USER_ID',
'   AND :P73_APPROVAL_STATUS = 1;',
'',
'  IF V_COUNT > 0 THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5234131963810784062)
,p_branch_name=>'Go to Page 65'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::P73_SAVE_STATUS,P73_FEEDBACK_ID:1,&P73_FEEDBACK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(5234109150418784018)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5234131545732784062)
,p_branch_name=>'close page'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_SAVE_STATUS,P73_FEEDBACK_ID:&P73_SAVE_STATUS.,&P73_FEEDBACK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5234132352709784062)
,p_branch_name=>'Go To Page 78'
,p_branch_action=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234098491246783992)
,p_name=>'P73_TICKET_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ticket#'
,p_source=>'P73_FEEDBACK_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="margin-left:50px;"'
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234098830566784002)
,p_name=>'P73_FEEDBACK_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'FEEDBACK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234099217645784002)
,p_name=>'P73_PROTOCOL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs'
||'p;&nbsp;Protocol'
,p_source=>'SELECT PROTOCOL_NUMBER FROM EDC_STUDY WHERE STUDY_ID=:APP_EDC_STUDY_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234099683382784003)
,p_name=>'P73_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_FEEDBACK_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VALUE,STORED_VALUE from EDC_LOV a,EDC_LOV_VALUES B',
'WHERE A.LOV_ID=B.LOV_ID ',
'AND A.LOV_NAME=''EDC_FEEDBACK_STATUS''',
'order by stored_value'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234100100398784006)
,p_name=>'P73_ISSUE_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue Type'
,p_source=>'ISSUE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_FEEDBACK_TICKT_TYP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VALUE,STORED_VALUE from EDC_LOV a,EDC_LOV_VALUES B',
'WHERE A.LOV_ID=B.LOV_ID AND A.LOV_NAME=''EDC_FEEDBACK_TYPE''',
'order by stored_value'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234100455017784006)
,p_name=>'P73_SEVERITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Severity'
,p_source=>'SEVERITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:1 - Urgent,2 - Critical,3 - Standard,4 - Low'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- - Select - -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234100837445784007)
,p_name=>'P73_CREATED_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Name'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'SELECT USERNAME D,STUDY_CONTACT_ID R FROM EDC_STUDY_CONTACT WHERE UPPER(USERNAME) = UPPER(V(''APP_USER''))'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234101305205784008)
,p_name=>'P73_CREATED_ON'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_item_default=>'TO_CHAR(LOCALTIMESTAMP, ''DD-MON-YYYY HH24:MI'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date of request'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234101685474784008)
,p_name=>'P73_PAGE_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application Page'
,p_source=>'PAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_PAGE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select page_id||'' - ''||page_name d, page_id r ',
' from apex_application_pages ',
' where application_id=:APP_ID ',
'  and page_id not in (select crf_page_no from edc_Crf_master)',
'  union',
'  /*select crf_page_no||''-''||CRF_name d, b.page_id r',
'    from edc_Crf_master a, apex_application_pages b',
'    where b.page_id = a.crf_page_no',
'      and application_id=:APP_ID */',
'  select ''100-Dynamic CRF'' d, 100 r',
'  from dual',
' order by 2;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234102055791784009)
,p_name=>'P73_APPLICATION_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_prompt=>'Application'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select application_id||''. ''||application_name d, application_id r from apex_applications where application_id = :APP_ID'
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234102497826784009)
,p_name=>'P73_ISSUE_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'ISSUE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when=>'P73_FEEDBACK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234102870149784010)
,p_name=>'P73_CLIENT_EMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Support Email'
,p_source=>'support@octalsoft.com'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>200
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-----------source------------------------',
'',
'declare',
'    v_email varchar2(50);',
'begin',
'',
'    if :P73_FEEDBACK_ID is null then',
'        v_email := ''support@octalsoft.com'';',
'    ELSE        ',
'       select nvl(C.email,''support@octalsoft.com'')  INTO V_EMAIL',
'        from EDC_STUDY_CONTACT A,EDC_USER_FEEDBACK B,EDC_USERS C',
'        WHERE B.feedback_id = :P73_FEEDBACK_ID',
'        and UPPER(A.USERNAME) = UPPER(B.CREATED_BY)  AND A.CONTACT_ID=C.USER_ID;',
'    end if;',
'   return v_email;',
'exception ',
'when others then v_email := ''support@octalsoft.com'';',
'return v_email;',
'null;',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234103293624784011)
,p_name=>'P73_UPLOAD_FILE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Upload File'
,p_post_element_text=>'<br>'
,p_source=>'UPLOAD_FILE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>40
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'UPLOAD_FILE_MIMETYPE'
,p_attribute_03=>'UPLOAD_FILENAME'
,p_attribute_06=>'Y'
,p_attribute_07=>'&P73_UPLOAD_FILENAME.'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234103634386784011)
,p_name=>'P73_CONTACT_NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CONTACT_NUMBER VARCHAR2(200);',
'BEGIN',
'    SELECT TRIM(MOBILE) || CASE WHEN TRIM(MOBILE) IS NOT NULL AND TRIM(PHONE) IS NOT NULL THEN '', '' || TRIM(PHONE)',
'                                WHEN TRIM(MOBILE) IS NULL AND TRIM(PHONE) IS NOT NULL THEN TRIM(PHONE) END',
'      INTO V_CONTACT_NUMBER',
'      FROM EDC_USERS',
'     WHERE USER_ID = :APP_EDC_USER;',
'',
'    RETURN V_CONTACT_NUMBER;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        RETURN '''';',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Contact Number'
,p_source=>'CONTACT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234104016913784012)
,p_name=>'P73_COMPANY_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPANY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234104455103784013)
,p_name=>'P73_UPLOAD_FILENAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'UPLOAD_FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234104893378784013)
,p_name=>'P73_UPLOAD_FILE_MIMETYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'UPLOAD_FILE_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234105238037784013)
,p_name=>'P73_UPLOAD_LAST_MODIFIED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'UPLOAD_LAST_MODIFIED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234105628580784014)
,p_name=>'P73_ESTIMATED_COMPLETION_DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'ESTIMATED_COMPLETION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234106066519784014)
,p_name=>'P73_ESTIMATED_HOURS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'ESTIMATED_HOURS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234106492111784014)
,p_name=>'P73_SUPPORT_TEAM_NOTES'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'SUPPORT_TEAM_NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234106906392784015)
,p_name=>'P73_APPROVAL_STATUS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'APPROVAL_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234107314035784015)
,p_name=>'P73_UPDATED_BY'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234107648940784015)
,p_name=>'P73_UPDATED_ON'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234108072508784016)
,p_name=>'P73_WORK_HOURS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_source=>'WORK_HOURS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234108490934784016)
,p_name=>'P73_SAVE_STATUS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(6559950683690718798)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234109562593784019)
,p_name=>'P73_CH_APP_EXST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_APPROVAL_FLOW',
' WHERE INSTR('':''||WF_USERS||'':'','':''||:APP_EDC_USER_ID||'':'') > 0',
'   AND WF_TYPE = ''Approve'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234109969490784019)
,p_name=>'P73_ISSUE_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Existing Details'
,p_source=>'ISSUE_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT-CENTER'
,p_read_only_when=>'UPPER(:APP_USER_NAME) <> UPPER(:P73_CREATED_BY)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234110355219784020)
,p_name=>'P73_TEMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234110740164784020)
,p_name=>'P73_ROOT_CAUSE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Proposed change'
,p_source=>'ROOT_CAUSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>'UPPER(:APP_USER_NAME) <> UPPER(:P73_CREATED_BY)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234111186010784021)
,p_name=>'P73_CORR_ACTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Impact Analysis'
,p_source=>'CORR_ACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':APP_EDC_ROLE_ID IN (13)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234111601273784021)
,p_name=>'P73_CH_APP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Change Approval'
,p_source=>'CH_APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FOR_CHAPP1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LV.DISPLAY_VALUE D, LV.STORED_VALUE R',
'  FROM EDC_LOV_VALUES LV',
'  JOIN EDC_LOV L',
'    ON L.LOV_ID = LV.LOV_ID',
'   AND L.LOV_NAME = ''FOR_CHAPP''',
' -- AND LV.SEQUENCE <> 2',
' ORDER BY LV.SEQUENCE'))
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RETURN NUMBER;',
'BEGIN',
'  SELECT INSTR('':''||WF_USERS||'':'','':''||:APP_EDC_USER_ID||'':'')',
'    INTO V_RETURN',
'    FROM EDC_APPROVAL_FLOW',
'   WHERE WF_TYPE = ''Approve'';',
'',
'  IF V_RETURN > 0 OR :APP_EDC_ROLE_ID = 13 THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
,p_item_comment=>':APP_EDC_ROLE_ID = 13'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234111937541784022)
,p_name=>'P73_COMM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comments or reasons</br> for rejection (If rejected)'
,p_source=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RETURN NUMBER;',
'BEGIN',
'  SELECT INSTR('':''||WF_USERS||'':'','':''||:APP_EDC_USER_ID||'':'')',
'    INTO V_RETURN',
'    FROM EDC_APPROVAL_FLOW',
'   WHERE WF_TYPE = ''Approve'';',
'',
'  IF V_RETURN > 0 OR :APP_EDC_ROLE_ID = 13 THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_comment=>':APP_EDC_ROLE_ID = 13'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234112343710784023)
,p_name=>'P73_PRE_ACTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Preventive Action'
,p_source=>'PRE_ACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>2
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':APP_EDC_ROLE_ID IN (13)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234112744201784023)
,p_name=>'P73_SEND_MAIL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_item_default=>'1'
,p_prompt=>'Send Email'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_lov_display_null=>'YES'
,p_rowspan=>1
,p_grid_column=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234113161590784023)
,p_name=>'P73_COMMENTS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6559963892473718811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comment'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>32767
,p_cHeight=>2
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':APP_EDC_ROLE_ID IN (13)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234117856723784038)
,p_validation_name=>'P73_CREATED_ON must be timestamp'
,p_validation_sequence=>190
,p_validation=>'P73_CREATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(5234101305205784008)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234118292768784039)
,p_validation_name=>'P73_UPDATED_ON must be timestamp'
,p_validation_sequence=>210
,p_validation=>'P73_UPDATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(5234107648940784015)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234118639970784039)
,p_validation_name=>'P73_ISSUE_DESC'
,p_validation_sequence=>220
,p_validation=>'P73_ISSUE_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Existing Details must have some value.'
,p_associated_item=>wwv_flow_imp.id(5234109969490784019)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234119029345784039)
,p_validation_name=>'P73_ROOT_CAUSE'
,p_validation_sequence=>230
,p_validation=>'P73_ROOT_CAUSE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Proposed change must have some value.'
,p_associated_item=>wwv_flow_imp.id(5234110740164784020)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234119423375784040)
,p_validation_name=>'p73_Issue_Type_Must_Be_Not_Null'
,p_validation_sequence=>240
,p_validation=>'P73_ISSUE_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Issue Type must have some value.'
,p_associated_item=>wwv_flow_imp.id(5234100100398784006)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234119872432784040)
,p_validation_name=>'SERVIRITY_MUST_HAVE_VALUE'
,p_validation_sequence=>250
,p_validation=>'P73_SEVERITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Severity must have some value.'
,p_associated_item=>wwv_flow_imp.id(5234100455017784006)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234117040821784037)
,p_validation_name=>'P73_CH_APP'
,p_validation_sequence=>260
,p_validation=>'P73_CH_APP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_APPROVAL_FLOW',
' WHERE INSTR('':''||WF_USERS||'':'','':''||:APP_EDC_USER_ID||'':'') > 0',
'   AND WF_TYPE = ''Approve'''))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(5234111601273784021)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234117468439784037)
,p_validation_name=>'P73_COMM'
,p_validation_sequence=>270
,p_validation=>'P73_COMM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P73_CH_APP'
,p_validation_condition2=>'Rejected'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(5234111937541784022)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2293078776855961828)
,p_validation_name=>'P73_STATUS_NN'
,p_validation_sequence=>280
,p_validation=>'P73_STATUS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Status must have some values'
,p_associated_item=>wwv_flow_imp.id(5234099683382784003)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5234124548144784045)
,p_name=>'Clear issue description '
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'unload'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234125027113784055)
,p_event_id=>wwv_flow_imp.id(5234124548144784045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_ISSUE_DESC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5234125501375784056)
,p_name=>'enable comments on click rejected'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_CH_APP'
,p_condition_element=>'P73_CH_APP'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Rejected'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234126001363784056)
,p_event_id=>wwv_flow_imp.id(5234125501375784056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_COMM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234126513002784057)
,p_event_id=>wwv_flow_imp.id(5234125501375784056)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_COMM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234126963045784057)
,p_event_id=>wwv_flow_imp.id(5234125501375784056)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P73_COMM_LABEL'').removeClass(''uOptional'');',
'$(''#P73_COMM_LABEL'').addClass(''uRequired'');',
'$(''#P73_COMM_LABEL'').append(''<img src="/i/f_spacer.gif" alt="Value Required" class="uAsterisk">'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234127489298784058)
,p_event_id=>wwv_flow_imp.id(5234125501375784056)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P73_COMM_LABEL'').removeClass(''uRequired'');',
'$(''#P73_COMM_LABEL img'').remove();',
'$(''#P73_COMM_LABEL'').addClass(''uOptional'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5234127848888784058)
,p_name=>'Print Jasper'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5234096838328783989)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234128411749784058)
,p_event_id=>wwv_flow_imp.id(5234127848888784058)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/FEEDBACK&_repFormat=pdf&_dataSource=default&_outFilename=feedback.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_STUDY_ID=''+ 661 +''&P_FEEDBACK_ID=''+$v("P73_FEEDBACK_ID")+ '''',''_blan'
||'k'');',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5234128763114784059)
,p_name=>'Open Audit Trail - Review'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5234097688560783990)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234129286786784060)
,p_event_id=>wwv_flow_imp.id(5234128763114784059)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:104:&APP_SESSION.:::104:P104_FEEDBACK_ID,P104_APRV_FLAG:&P73_FEEDBACK_ID.,1'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5234129679890784060)
,p_name=>'Open Audit Trail - Approve'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5234098046470783991)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234130162164784060)
,p_event_id=>wwv_flow_imp.id(5234129679890784060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:104:&APP_SESSION.:::104:P104_FEEDBACK_ID,P104_APRV_FLAG:&P73_FEEDBACK_ID.,2'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5234130565248784061)
,p_name=>'Close this page on review/approve'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5234131038924784061)
,p_event_id=>wwv_flow_imp.id(5234130565248784061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_SAVE_STATUS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.opener.location.reload();',
'window.close();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234120204008784040)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'close current page'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  HTP.P(''<script> '');',
'  HTP.P(''',
'        $(function(){',
'          ',
'           if($v(P73_SAVE_STATUS) != "")',
'             {',
'               window.opener.location.reload();',
'               window.close();',
'             }',
'',
'        });',
'',
'',
'        '');',
'  HTP.P(''</script>'');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4133169435867279947
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234120521115784041)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_USER_FEEDBACK'
,p_attribute_02=>'EDC_USER_FEEDBACK'
,p_attribute_03=>'P73_FEEDBACK_ID'
,p_attribute_04=>'FEEDBACK_ID'
,p_internal_uid=>4133169752974279948
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234120957010784041)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P73_APPROVAL_STATUS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P73_CORR_ACTION IS NOT NULL AND :P73_PRE_ACTION IS NOT NULL AND :P73_APPROVAL_STATUS IS NULL THEN',
'    :P73_APPROVAL_STATUS := 0;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P73_FEEDBACK_ID IS NOT NULL'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>4133170188869279948
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234121320862784042)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   V_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(FEEDBACK_ID),0) + 1',
'   INTO   V_PRIMARY_KEY',
'   FROM   EDC_USER_FEEDBACK;',
'',
'   RETURN V_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P73_FEEDBACK_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5234096506848783989)
,p_internal_uid=>4133170552721279949
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234121772515784042)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_USER_FEEDBACK'
,p_attribute_02=>'EDC_USER_FEEDBACK'
,p_attribute_03=>'P73_FEEDBACK_ID'
,p_attribute_04=>'FEEDBACK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>4133171004374279949
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234122181558784042)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ret number;',
'begin',
'    if :P73_SEND_MAIL = 1 THEN',
'        EDC_MAIL.send_feedback_mail(:APP_ID, :APP_PAGE_ID, :P73_ISSUE_TYPE, :P73_ISSUE_DESC,:P73_CLIENT_EMAIL,:APP_USER_NAME,:P73_FEEDBACK_ID, :P73_ROOT_CAUSE, v_ret);',
'    END IF;',
'    exception when others',
'    then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>4133171413417279949
,p_process_comment=>'CREATE,SAVE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234122606542784043)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback_IA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR C1 IS',
'  SELECT WF_ID',
'    FROM EDC_APPROVAL_FLOW',
'   ORDER BY 1;',
'',
'  V_RET NUMBER;',
'  V_MAIL_FLAG  NUMBER := 1;',
'  V_EMAIL VARCHAR2(4000);',
'  V_ERR VARCHAR2(4000);',
'BEGIN',
'  IF :P73_CORR_ACTION IS NOT NULL THEN',
'    FOR I IN C1 LOOP',
'        SELECT LISTAGG(EMAIL,'','') WITHIN GROUP(ORDER BY SC_ID)',
'        INTO V_EMAIL',
'        FROM TABLE(APPROVAL_TABLE(I.WF_ID));',
'',
'        :P73_CLIENT_EMAIL := V_EMAIL||'',''||:P73_CLIENT_EMAIL;',
'    END LOOP;',
'    :P73_CLIENT_EMAIL := TRIM('','' FROM :P73_CLIENT_EMAIL);',
'    :P73_CLIENT_EMAIL := NVL(:P73_CLIENT_EMAIL,''krunal.bhatt@octalsoft.com'');',
'',
'    SUN_21010_DEV.EDC_MAIL.SEND_FEEDBACK_IA_MAIL(:APP_ID, :APP_PAGE_ID, :P73_ISSUE_TYPE, :P73_ISSUE_DESC, :P73_ROOT_CAUSE, :P73_CLIENT_EMAIL,:APP_USER_NAME,:P73_FEEDBACK_ID, V_RET, 0);',
'',
'    --EDC_MAIL.SEND_FEEDBACK_IA_MAIL(:APP_ID, :APP_PAGE_ID, v(''P73_ISSUE_TYPE''), :P73_ISSUE_DESC, v(''P73_CLIENT_EMAIL''),:APP_USER_NAME,:P73_FEEDBACK_ID, V_RET);',
'   -- EDC_MAIL.SEND_FEEDBACK_IA_MAIL(50019518, 73 ,:P73_ISSUE_TYPE, :P73_ISSUE_DESC,:P73_CLIENT_EMAIL,''vishal'',:P73_FEEDBACK_ID, V_RET);',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4133171838401279950
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234122923504784043)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Review Feedback_IA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RET NUMBER;',
'  V_MAIL_FLAG NUMBER := 1;',
'BEGIN',
'  IF :P73_APPROVAL_STATUS = 0 THEN',
'',
'    SELECT LISTAGG(EMAIL,'','') WITHIN GROUP(ORDER BY SC_ID)',
'      INTO :P104_CLIENT_EMAIL',
'      FROM TABLE(APPROVAL_TABLE(V_MAIL_FLAG));',
'',
'      :P73_CLIENT_EMAIL := NVL(:P73_CLIENT_EMAIL,''krunal.bhatt@octalsoft.com'');',
'      --EDC_MAIL.SEND_FEEDBACK_IA_MAIL(:APP_ID, :APP_PAGE_ID, :P73_ISSUE_TYPE, :P73_ISSUE_DESC,:P73_CLIENT_EMAIL,:APP_USER_NAME,:P73_FEEDBACK_ID, V_RET, V_MAIL_FLAG);',
'',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'sent'
,p_internal_uid=>4133172155363279950
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234123409365784043)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EDC_FEEDBACK_DETAILS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   INSERT INTO EDC_FEEDBACK_DETAILS(FEEDBACK_DETAIL_ID,FEEDBACK_ID,ISSUE_DESC,STATUS) VALUES',
'   ((SELECT NVL(MAX(FEEDBACK_DETAIL_ID),0)+1 FROM EDC_FEEDBACK_DETAILS),:P73_FEEDBACK_ID,:P73_ISSUE_DESC,:P73_STATUS);',
'   commit;',
'   ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4133172641224279950
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234123786464784044)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'65'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5234097305089783990)
,p_internal_uid=>4133173018323279951
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5234124180063784045)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'close page'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P73_SAVE_STATUS := 1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4133173411922279952
);
wwv_flow_imp.component_end;
end;
/
