prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_name=>'Feedback'
,p_step_title=>'Feedback'
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
 p_id=>wwv_flow_imp.id(12161157943909996000)
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
 p_id=>wwv_flow_imp.id(12161163142503996013)
,p_plug_name=>'Reply'
,p_parent_plug_id=>wwv_flow_imp.id(12161157943909996000)
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
 p_id=>wwv_flow_imp.id(12161163940382996017)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(12161157943909996000)
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
 p_id=>wwv_flow_imp.id(12161164530670996019)
,p_name=>'Ticket Thread'
,p_parent_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_template=>wwv_flow_imp.id(12146131930378911981)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(A.CREATED_ON,''DD-MON-YYYY HH:MIAM'')||'' - ''||INITCAP(A.CREATED_BY) AS "Ticket Time"',
'     , replace(A.ISSUE_DESC,chr(10),''<br/>'') as "Issue Description"',
'  FROM EDC_FEEDBACK_DETAILS A, EDC_USER_FEEDBACK B ',
' WHERE A.FEEDBACK_ID = B.FEEDBACK_ID AND A.FEEDBACK_ID = :P77_FEEDBACK_ID ORDER BY A.CREATED_ON'))
,p_display_when_condition=>'P77_FEEDBACK_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
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
 p_id=>wwv_flow_imp.id(12161164733592996020)
,p_query_column_id=>1
,p_column_alias=>'Ticket Time'
,p_column_display_sequence=>1
,p_column_heading=>'Ticket Time'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12161164856314996021)
,p_query_column_id=>2
,p_column_alias=>'Issue Description'
,p_column_display_sequence=>2
,p_column_heading=>'Issue Description'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12161164156785996017)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12161163142503996013)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Post Message'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P77_FEEDBACK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12161164338588996017)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12161157943909996000)
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
 p_id=>wwv_flow_imp.id(12161158141152996003)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P77_FEEDBACK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12161158329626996003)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12161157943909996000)
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
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11627967511551443807)
,p_branch_name=>'close page'
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:RP,77:P77_SAVE_STATUS:&P77_SAVE_STATUS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12161167655588996031)
,p_branch_name=>'Go to Page 65'
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::P77_SAVE_STATUS:1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12049618180780739773)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12161167833228996031)
,p_branch_name=>'Go to Page 65'
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::P77_SAVE_STATUS:1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12161164156785996017)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12161168025313996031)
,p_branch_name=>'Go To Page 78'
,p_branch_action=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287238445084418960)
,p_name=>'P77_SEVERITY'
,p_item_sequence=>39
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3 - Standard'
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
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287238546529418961)
,p_name=>'P77_CONTACT_NUMBER'
,p_item_sequence=>169
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
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
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11644189644135942286)
,p_name=>'P77_ROOT_CAUSE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(12161163142503996013)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Root Cause'
,p_source=>'ROOT_CAUSE'
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
 p_id=>wwv_flow_imp.id(11644190390915947773)
,p_name=>'P77_CORR_ACTION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(12161163142503996013)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Corrective Action'
,p_source=>'CORR_ACTION'
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
 p_id=>wwv_flow_imp.id(11644191167800962390)
,p_name=>'P77_PRE_ACTION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(12161163142503996013)
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
 p_id=>wwv_flow_imp.id(12161158530304996006)
,p_name=>'P77_FEEDBACK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'FEEDBACK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161158728924996007)
,p_name=>'P77_APPLICATION_ID'
,p_item_sequence=>79
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
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
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161158951795996008)
,p_name=>'P77_PAGE_NAME'
,p_item_sequence=>69
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page Name'
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
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161159152041996009)
,p_name=>'P77_CLIENT_EMAIL'
,p_item_sequence=>99
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Support Email'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_email varchar2(50);',
'begin',
'',
'    if :P77_FEEDBACK_ID is null then',
'        v_email := ''iwrssupport@octalsoft.com'';',
'    ELSE        ',
'       select nvl(C.email,''iwrssupport@octalsoft.com'')  INTO V_EMAIL',
'        from EDC_STUDY_CONTACT A,EDC_USER_FEEDBACK B,EDC_USERS C',
'        WHERE B.feedback_id = :P77_FEEDBACK_ID',
'        and UPPER(A.USERNAME) = UPPER(B.CREATED_BY)  AND A.CONTACT_ID=C.USER_ID;',
'    end if;',
'   return v_email;',
'exception ',
'when others then v_email := ''iwrssupport@octalsoft.com'';',
'return v_email;',
'null;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>200
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161159340216996009)
,p_name=>'P77_ISSUE_NAME'
,p_item_sequence=>89
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'ISSUE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P77_FEEDBACK_ID'
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
 p_id=>wwv_flow_imp.id(12161159553360996010)
,p_name=>'P77_ISSUE_TYPE'
,p_item_sequence=>29
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'Ticket Type'
,p_source=>'ISSUE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_FEEDBACK_TICKT_TYP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VALUE,STORED_VALUE from EDC_LOV a,EDC_LOV_VALUES B',
'WHERE A.LOV_ID=B.LOV_ID AND A.LOV_NAME=''EDC_FEEDBACK_TYPE''',
'order by stored_value'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- - Select - -'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161159745349996010)
,p_name=>'P77_STATUS'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
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
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161159946383996010)
,p_name=>'P77_COMPANY_ID'
,p_item_sequence=>179
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPANY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161160150984996010)
,p_name=>'P77_UPLOAD_FILE'
,p_item_sequence=>119
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
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
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161160354161996010)
,p_name=>'P77_UPLOAD_FILENAME'
,p_item_sequence=>189
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'UPLOAD_FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161160544415996011)
,p_name=>'P77_UPLOAD_FILE_MIMETYPE'
,p_item_sequence=>199
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'UPLOAD_FILE_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161160725222996011)
,p_name=>'P77_UPLOAD_LAST_MODIFIED'
,p_item_sequence=>209
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'UPLOAD_LAST_MODIFIED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161160948885996011)
,p_name=>'P77_ESTIMATED_COMPLETION_DATE'
,p_item_sequence=>219
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'ESTIMATED_COMPLETION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161161125283996011)
,p_name=>'P77_ESTIMATED_HOURS'
,p_item_sequence=>229
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'ESTIMATED_HOURS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161161344223996011)
,p_name=>'P77_SUPPORT_TEAM_NOTES'
,p_item_sequence=>239
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'SUPPORT_TEAM_NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161161548348996011)
,p_name=>'P77_APPROVAL_STATUS'
,p_item_sequence=>249
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'APPROVAL_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161161744982996012)
,p_name=>'P77_CREATED_BY'
,p_item_sequence=>149
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created By'
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
 p_id=>wwv_flow_imp.id(12161161952384996012)
,p_name=>'P77_CREATED_ON'
,p_item_sequence=>159
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_item_default=>'TO_CHAR(LOCALTIMESTAMP, ''DD-MON-YYYY HH:MIPM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created On'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(12161162131959996012)
,p_name=>'P77_UPDATED_BY'
,p_item_sequence=>259
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161162354709996012)
,p_name=>'P77_UPDATED_ON'
,p_item_sequence=>269
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161162539160996012)
,p_name=>'P77_WORK_HOURS'
,p_item_sequence=>279
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_source=>'WORK_HOURS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161162740309996013)
,p_name=>'P77_TICKET_NO'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_prompt=>'Ticket#'
,p_source=>'P77_FEEDBACK_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161162926573996013)
,p_name=>'P77_SAVE_STATUS'
,p_item_sequence=>289
,p_item_plug_id=>wwv_flow_imp.id(12161157943909996000)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161163337403996016)
,p_name=>'P77_ISSUE_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12161163142503996013)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue Description'
,p_source=>'ISSUE_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161163550882996016)
,p_name=>'P77_SEND_MAIL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(12161163142503996013)
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
 p_id=>wwv_flow_imp.id(12161163740762996017)
,p_name=>'P77_TEMP'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(12161163142503996013)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12161165248328996027)
,p_validation_name=>'P77_CREATED_ON must be timestamp'
,p_validation_sequence=>190
,p_validation=>'P77_CREATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(12161161952384996012)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12161165429035996027)
,p_validation_name=>'P77_UPDATED_ON must be timestamp'
,p_validation_sequence=>210
,p_validation=>'P77_UPDATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(12161162354709996012)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11672177812717306800)
,p_validation_name=>'P77_ISSUE_DESC'
,p_validation_sequence=>220
,p_validation=>'P77_ISSUE_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_imp.id(12161163337403996016)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11627967720045443809)
,p_name=>'Clear issue description '
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'unload'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11627967883354443810)
,p_event_id=>wwv_flow_imp.id(11627967720045443809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_ISSUE_DESC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11627967644402443808)
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
'           if($v(P77_SAVE_STATUS) != "")',
'             {',
'               window.opener.location.reload();',
'               window.close();',
'             }',
'        ',
'        });',
'        ',
'        ',
'        '');',
'  HTP.P(''</script>'');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10527016876260939715
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12161165541673996027)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_USER_FEEDBACK'
,p_attribute_02=>'EDC_USER_FEEDBACK'
,p_attribute_03=>'P77_FEEDBACK_ID'
,p_attribute_04=>'FEEDBACK_ID'
,p_internal_uid=>11060214773532491934
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12161165730063996028)
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
'    :P77_FEEDBACK_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12161158141152996003)
,p_internal_uid=>11060214961922491935
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12161165945072996028)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_USER_FEEDBACK'
,p_attribute_02=>'EDC_USER_FEEDBACK'
,p_attribute_03=>'P77_FEEDBACK_ID'
,p_attribute_04=>'FEEDBACK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11060215176931491935
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12161166141857996028)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ret number;',
'begin',
'    if :P77_SEND_MAIL = 1 THEN',
'        EDC_MAIL.send_feedback_mail(:APP_ID, :APP_PAGE_ID, :P77_ISSUE_TYPE, :P77_ISSUE_DESC,:P77_CLIENT_EMAIL,:APP_USER_NAME,:P77_FEEDBACK_ID, v_ret);',
'    END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11060215373716491935
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12161166352790996029)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EDC_FEEDBACK_DETAILS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   INSERT INTO EDC_FEEDBACK_DETAILS(FEEDBACK_DETAIL_ID,FEEDBACK_ID,ISSUE_DESC,STATUS) VALUES',
'   ((SELECT NVL(MAX(FEEDBACK_DETAIL_ID),0)+1 FROM EDC_FEEDBACK_DETAILS),:P77_FEEDBACK_ID,:P77_ISSUE_DESC,:P77_STATUS);',
'   commit;',
'   ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11060215584649491936
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12161166544769996029)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'65'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12049618405323739773)
,p_internal_uid=>11060215776628491936
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11667661564674821770)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'close page'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P77_SAVE_STATUS := 1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10566710796533317677
);
wwv_flow_imp.component_end;
end;
/
