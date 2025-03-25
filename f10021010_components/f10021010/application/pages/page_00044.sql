prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_tab_set=>'TS1'
,p_name=>'Patient Visit Details'
,p_step_title=>'Patient Visit Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11997109323800851636)
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
 p_id=>wwv_flow_imp.id(12147657326932052907)
,p_plug_name=>'Patient Visit Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style = "width: 500px;"'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147661354701052913)
,p_plug_name=>'Patient Visit Details'
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
 p_id=>wwv_flow_imp.id(12147657753681052907)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P44_PATIENT_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147658136328052908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147657528073052907)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P44_PATIENT_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147657928743052908)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12147657326932052907)
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
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_database_action=>'DELETE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--------Start --------------------------------',
'-- Condition',
'(Not Null) P44_PATIENT_VISIT_ID',
'------------End ------------------------'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12147667241743052922)
,p_branch_name=>'DEVIATION'
,p_branch_action=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.:130:P130_PATIENT_VISIT_ID:&P44_PATIENT_VISIT_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>5
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- condition ',
'value of Item /Column in Expression 1 = Expression 2',
'Exp 1 : P44_FLAG',
'Exp 2 : 0'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12147667429402052922)
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12147657528073052907)
,p_branch_sequence=>10
,p_branch_comment=>'Created 11-FEB-2011 05:02 by KARTIK.PATEL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12147667629520052922)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12164100543799665391)
,p_branch_name=>'Go to Visit-1 page'
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::P19_PATIENT_VISIT_ID,P44_PATIENT_PROFILE_ID,APP_EDC_PATIENT_VISIT_ID:&P44_PATIENT_VISIT_ID.,&P44_PATIENT_PROFILE_ID.,&P44_PATIENT_VISIT_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>21
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P44_VISIT_TITLE = ''Visit - 1'' and :request in(''CREATE'',''SAVE'') and :P44_VISIT_FLAG = 1'
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- condition ',
'value of Item /Column in Expression 1 = Expression 2',
'Exp 1 : P44_FLAG',
'Exp 2 : 0',
'-----',
'P44_VISIT_TITLE,',
'Visit - 1,',
'-----------------------',
'set this Item :',
'P19_PATIENT_VISIT_ID,P44_PATIENT_PROFILE_ID',
'with these value',
'&APP_EDC_PATIENT_VISIT_ID.,&P44_PATIENT_PROFILE_ID.',
''))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12164101029516680240)
,p_branch_name=>'Go to Visit -2 Page'
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_PATIENT_VISIT_ID,P44_PATIENT_PROFILE_ID,APP_EDC_PATIENT_VISIT_ID:&P44_PATIENT_VISIT_ID.,&P44_PATIENT_PROFILE_ID.,&P44_PATIENT_VISIT_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>31
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P44_VISIT_TITLE = ''Visit - 2'' and :request in (''CREATE'',''SAVE'') and :P44_VISIT_FLAG = 1'
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- condition ',
'value of Item /Column in Expression 1 = Expression 2',
'Exp 1 : P44_FLAG',
'Exp 2 : 0',
'',
'APP_EDC_PATIENT_VISIT_ID',
'',
'set these Items :P57_PATIENT_VISIT_ID,P44_PATIENT_PROFILE_ID',
'with these values : &P44_PATIENT_VISIT_ID.,&P44_PATIENT_PROFILE_ID.'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12164101355835687766)
,p_branch_name=>'Go to Visit -3 Page'
,p_branch_action=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::P59_PATIENT_VISIT_ID,P44_PATIENT_PROFILE_ID,APP_EDC_PATIENT_VISIT_ID:&P44_PATIENT_VISIT_ID.,&P44_PATIENT_PROFILE_ID.,&P44_PATIENT_VISIT_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>41
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P44_VISIT_TITLE = ''Visit - 3'' and :request in (''CREATE'',''SAVE'') and :P44_VISIT_FLAG = 1'
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- condition ',
'value of Item /Column in Expression 1 = Expression 2',
'Exp 1 : P44_FLAG',
'Exp 2 : 0'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11646553777755508189)
,p_name=>'P44_STUDY_ID'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11647408166451515058)
,p_name=>'P44_SECTION_STATUS'
,p_item_sequence=>96
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_source=>'SECTION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11672417721337007263)
,p_name=>'P44_SCRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_prompt=>'<B>Screening #</B>'
,p_source=>'SELECT SCRNO FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID =:P44_PATIENT_PROFILE_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11672417874689007264)
,p_name=>'P44_PTINTL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_prompt=>'<B>Patient Initial</B>'
,p_source=>'SELECT UPPER(PTINTL) FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID =:P44_PATIENT_PROFILE_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147658349960052909)
,p_name=>'P44_SHOW_POPUP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147658553584052910)
,p_name=>'P44_FLAG'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147658731649052910)
,p_name=>'P44_ACTUAL_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actual Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'ACTUAL_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly=''readonly'''
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2100'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147658954042052910)
,p_name=>'P44_CRF_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_source=>'CRF_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147659156262052911)
,p_name=>'P44_DESCRIPTION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Note </b>'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>500
,p_cHeight=>2
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147659325097052911)
,p_name=>'P44_DURATION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_source=>'DURATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147659535682052911)
,p_name=>'P44_PATIENT_PROFILE_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Patient Profile Id'
,p_source=>'PATIENT_PROFILE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147659731121052911)
,p_name=>'P44_PATIENT_VISIT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Patient Visit Id'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147659934868052912)
,p_name=>'P44_SCHEDULE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Schedule Date </b>'
,p_format_mask=>'DD/MON/YY'
,p_source=>'SCHEDULE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly;"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147660137935052912)
,p_name=>'P44_TOTAL_CRF_PAGES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_source=>'TOTAL_CRF_PAGES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147660343377052912)
,p_name=>'P44_VISIT_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_source=>'VISIT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147660546856052912)
,p_name=>'P44_VISIT_TITLE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Visit Title: </b>'
,p_source=>'VISIT_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly = "readonly";'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147660753879052912)
,p_name=>'P44_VISIT_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_source=>'VISIT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147660929381052912)
,p_name=>'P44_WINDOW_PERIOD_M'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Window Period (-): </b>'
,p_source=>'WINDOW_PERIOD_M'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147661145262052913)
,p_name=>'P44_WINDOW_PERIOD_P'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Window Period (+): </b>'
,p_source=>'WINDOW_PERIOD_P'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161206753531255542)
,p_name=>'P44_PARAM_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_source=>'PARAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12164205250286994513)
,p_name=>'P44_VISIT_FLAG'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12147657326932052907)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11676417022607011407)
,p_validation_name=>'P44_ACTUAL_DATE'
,p_validation_sequence=>10
,p_validation=>'P44_ACTUAL_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Actual Date must have some value.'
,p_validation_condition=>'''SAVE'',''CREATE'''
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12147658731649052910)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11649111320154471350)
,p_validation_name=>'Alert if visit already created'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_cnt number;',
'begin',
'select count(*)',
' into v_cnt',
'from edc_patient_visit',
' where patient_profile_id = :P44_PATIENT_PROFILE_ID',
'   AND VISIT_TITLE = :P44_VISIT_TITLE;',
'',
'IF V_CNT >0 THEN',
'  RETURN ''Visit already created. Please go to Patient Matrix page.'';',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'Visit already created. Please go to Patient Matrix page.'
,p_when_button_pressed=>wwv_flow_imp.id(12147657528073052907)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147662945701052918)
,p_name=>'Set visit number'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_VISIT_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147663245815052918)
,p_event_id=>wwv_flow_imp.id(12147662945701052918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_VISIT_NUMBER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISP_SEQ from edc_patient_visit_params ',
'    where study_id=:APP_EDC_STUDY_ID and UPPER(VISIT_NAME)=UPPER(:P44_VISIT_TITLE)'))
,p_attribute_07=>'P44_VISIT_TITLE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147663334153052919)
,p_name=>'Set visit type'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_VISIT_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147663633517052919)
,p_event_id=>wwv_flow_imp.id(12147663334153052919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_VISIT_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select VISIT_TYPE from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID and VISIT_NAME=:P44_VISIT_TITLE'
,p_attribute_07=>'P44_VISIT_TITLE'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147663726328052919)
,p_name=>'Set visit duration'
,p_event_sequence=>35
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_VISIT_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147664036638052919)
,p_event_id=>wwv_flow_imp.id(12147663726328052919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_DURATION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select DURATION from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID and VISIT_NAME=:P44_VISIT_TITLE'
,p_attribute_07=>'P44_VISIT_TITLE'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147664145188052919)
,p_name=>'Set visit tot crf'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_VISIT_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147664444251052919)
,p_event_id=>wwv_flow_imp.id(12147664145188052919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_TOTAL_CRF_PAGES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select TOTAL_CRF_PAGES from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID and VISIT_NAME=:P44_VISIT_TITLE'
,p_attribute_07=>'P44_VISIT_TITLE'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147664555198052920)
,p_name=>'Set visit window p'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_VISIT_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147664828495052920)
,p_event_id=>wwv_flow_imp.id(12147664555198052920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_WINDOW_PERIOD_P'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select WINDOW_PERIOD_P from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID and VISIT_NAME=:P44_VISIT_TITLE'
,p_attribute_07=>'P44_VISIT_TITLE'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147664926163052920)
,p_name=>'Set visit window m'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_VISIT_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147665241763052920)
,p_event_id=>wwv_flow_imp.id(12147664926163052920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_WINDOW_PERIOD_M'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select WINDOW_PERIOD_M from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID and VISIT_NAME=:P44_VISIT_TITLE'
,p_attribute_07=>'P44_VISIT_TITLE'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12161207147739286971)
,p_name=>'SET Value of Param ID'
,p_event_sequence=>65
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_VISIT_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12161207451207286972)
,p_event_id=>wwv_flow_imp.id(12161207147739286971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_PARAM_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select param_id from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID and VISIT_NAME=:P44_VISIT_TITLE'
,p_attribute_07=>'P44_VISIT_TITLE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147665332200052920)
,p_name=>'Set schedule date'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_VISIT_TITLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147665641585052920)
,p_event_id=>wwv_flow_imp.id(12147665332200052920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_SCHEDULE_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_date date;',
'begin',
'',
'v_date := F_SET_SCHEDULE_DATE(:APP_EDC_STUDY_ID,:P44_VISIT_TITLE,:P44_PATIENT_PROFILE_ID);',
'',
'return to_char(v_date,''DD-Mon-YYYY'');',
'end;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147665740757052920)
,p_name=>'Alert when actual date over due than window period'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_ACTUAL_DATE'
,p_condition_element=>'P44_ACTUAL_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147666036076052921)
,p_event_id=>wwv_flow_imp.id(12147665740757052920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'WINDOW_P NUMBER;',
'',
'BEGIN',
'        SELECT WINDOW_PERIOD_P into WINDOW_P FROM EDC_PATIENT_VISIT_PARAMS WHERE STUDY_ID = :APP_EDC_STUDY_ID AND VISIT_NAME= :P44_VISIT_TITLE;',
'',
'IF :P44_ACTUAL_DATE IS NOT NULL THEN',
'     IF to_date(:P44_ACTUAL_DATE,''DD/MON/YY'') > to_date(:P44_SCHEDULE_DATE,''DD/MON/YY'') + (WINDOW_P + 1) THEN',
'       :P44_SHOW_POPUP := 1;',
'    ELSE',
'      :P44_SHOW_POPUP := 0;',
'    END IF;',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P44_VISIT_TITLE,APP_EDC_STUDY_ID,P44_SCHEDULE_DATE,P44_ACTUAL_DATE'
,p_attribute_03=>'P44_SHOW_POPUP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147666146015052921)
,p_name=>'Show alert if actual date is higher'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_SHOW_POPUP'
,p_condition_element=>'P44_SHOW_POPUP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147666445133052921)
,p_event_id=>wwv_flow_imp.id(12147666146015052921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var res = confirm("Actual Date is overdue from Window Period");',
'if(res==true)',
'{',
'  // alert("Please Upload Protocol Deviation Form");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147666537753052921)
,p_name=>'Check Actual Date is Within Window Period or Not?'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_ACTUAL_DATE'
,p_condition_element=>'P44_ACTUAL_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147666844288052921)
,p_event_id=>wwv_flow_imp.id(12147666537753052921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_WINDOW_P NUMBER;',
'  V_WINDOW_M NUMBER;',
'  V_DATE_1 DATE;',
'  V_DATE_2 DATE;',
'  --V_DATE_0 DATE := TO_DATE(''08-jul-2013'',''dd-mon-yyyy'');',
'  V_FLAG NUMBER := 0;',
'BEGIN   ',
' ',
'  SELECT (WINDOW_PERIOD_P + 1),(WINDOW_PERIOD_M + 1)',
'  INTO V_WINDOW_P,V_WINDOW_M',
'  FROM EDC_PATIENT_VISIT_PARAMS',
'  WHERE VISIT_NAME = :P44_VISIT_TITLE;',
'',
'  SELECT TO_DATE(:P44_SCHEDULE_DATE,''DD/MON/YY'') - V_WINDOW_M INTO V_DATE_1 FROM DUAL;',
'  SELECT TO_DATE(:P44_SCHEDULE_DATE,''DD/MON/YY'') + V_WINDOW_P INTO V_DATE_2 FROM DUAL;',
'  --DBMS_OUTPUT.PUT_LINE(V_DATE_1||'' - ''||V_DATE_2||'' - ''||V_DATE_0);',
'  --INSERT INTO TEMP_TRACE VALUES(V_DATE_1||'' ''||V_DATE_2);',
'  IF TO_DATE(:P44_ACTUAL_DATE,''DD/MON/YY'') BETWEEN V_DATE_1 AND V_DATE_2 THEN',
'    :P44_FLAG := 1;',
'  ELSE',
'    :P44_FLAG := 0;',
'  END IF;',
'  --DBMS_OUTPUT.PUT_LINE(V_FLAG);',
'  ',
' END;'))
,p_attribute_02=>'P44_SCHEDULE_DATE,P44_ACTUAL_DATE,P44_VISIT_TITLE'
,p_attribute_03=>'P44_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147667031346052921)
,p_event_id=>wwv_flow_imp.id(12147666537753052921)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'//alert($v(''P44_FLAG''));',
'if ($v(''P44_FLAG'') == 0)',
'{',
'// alert(''Actual date is outside of the window period. Please submit protocol deviation form.!!!'');',
'// $(''#P44_ACTUAL_DATE'').val('''');',
'}',
'*/'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12164209850042092950)
,p_name=>'Set PT_VISIT_FLG'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_PATIENT_VISIT_ID'
,p_condition_element=>'P44_PATIENT_VISIT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12164210154654092951)
,p_event_id=>wwv_flow_imp.id(12164209850042092950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_VISIT_FLAG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147661541316052916)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_PATIENT_VISIT'
,p_attribute_02=>'EDC_PATIENT_VISIT'
,p_attribute_03=>'P44_PATIENT_VISIT_ID'
,p_attribute_04=>'PATIENT_VISIT_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11046710773174548823
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147661735589052916)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Schedule Date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ',
'   V_VISIT_PARAMS EDC_PATIENT_VISIT_PARAMS%ROWTYPE;',
'    ',
'BEGIN',
'',
'SELECT * INTO V_VISIT_PARAMS FROM EDC_PATIENT_VISIT_PARAMS WHERE STUDY_ID=:APP_EDC_STUDY_ID AND UPPER(VISIT_NAME)=UPPER(:P44_VISIT_TITLE);',
'',
':P44_VISIT_NUMBER := V_VISIT_PARAMS.DISP_SEQ;',
':P44_VISIT_TYPE := V_VISIT_PARAMS.VISIT_TYPE;',
':P44_TOTAL_CRF_PAGES := V_VISIT_PARAMS.TOTAL_CRF_PAGES;',
':P44_WINDOW_PERIOD_P := (V_VISIT_PARAMS.WINDOW_PERIOD_P + 1);',
':P44_WINDOW_PERIOD_M := (V_VISIT_PARAMS.WINDOW_PERIOD_M + 1);',
'--:P44_SCHEDULE_DATE := SYSDATE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11046710967447548823
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147661939177052917)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select EDC_PATIENT_VISIT_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P44_PATIENT_VISIT_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(12147657528073052907)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') between',
'     (to_date(:P44_SCHEDULE_DATE,''DD-MON-YYYY'')-:P44_WINDOW_PERIOD_M) and ',
'     (to_date(:P44_SCHEDULE_DATE,''DD-MON-YYYY'')+:P44_WINDOW_PERIOD_P) then',
'     return true;',
'else',
'     return false;',
'end if;',
'end;'))
,p_internal_uid=>11046711171035548824
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147662141893052917)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_PATIENT_VISIT'
,p_attribute_02=>'EDC_PATIENT_VISIT'
,p_attribute_03=>'P44_PATIENT_VISIT_ID'
,p_attribute_04=>'PATIENT_VISIT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_PATIENT_VISIT.'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') between',
'     (to_date(:P44_SCHEDULE_DATE,''DD-MON-YYYY'')-:P44_WINDOW_PERIOD_M) and ',
'     (to_date(:P44_SCHEDULE_DATE,''DD-MON-YYYY'')+:P44_WINDOW_PERIOD_P) then',
'     return true;',
'else',
'     return false;',
'end if;',
'end;'))
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11046711373751548824
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147662344073052917)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validate Date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     if to_date(:P44_ACTUAL_DATE,''DD/MON/YY'') between',
'     (to_date(:P44_SCHEDULE_DATE,''DD/MON/YY'')-(:P44_WINDOW_PERIOD_M+1)) and ',
'     (to_date(:P44_SCHEDULE_DATE,''DD/MON/YY'')+(:P44_WINDOW_PERIOD_P+1)) then',
'          apex_application.g_print_success_message := ''<font color="#009900">Action Processed.</font>'';',
'     else',
'          apex_application.g_print_success_message := ''<font color="#FF0000">Actual Date should be in window period. You should fill Protocol Deviation from !!!</font>'';',
'     end if;',
'exception when others then',
'apex_application.g_print_success_message := ''<font color="#FF0000">ERROR!!!</font>'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11046711575931548824
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12164205648863007435)
,p_process_sequence=>42
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PT Visit Id Gen'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P44_VISIT_FLAG := 1;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P44_PATIENT_VISIT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>11063254880721503342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11647285759775058063)
,p_process_sequence=>43
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD TO AUDIT TRAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'INSERT INTO AUDIT_TRAIL(TABLE_NAME, APP_ID, STUDY_ID, STUDY_SITE_ID, PATIENT_PROFILE_ID, PATIENT_VISIT_ID, PAGE_NO,',
'                            COLUMN_NAME, OLD_VALUE, NEW_VALUE, ACTION,TABLE_PK_VALUE)',
'                     VALUES(''EDC_PATIENT_VISIT'',:APP_ID,:APP_EDC_STUDY_ID,:APP_EDC_STUDY_SITE_ID,',
'                     :APP_PATIENT_PROFILE_ID,:P44_PATIENT_VISIT_ID, 530,',
'                            ''SECTION_STATUS'',null,3,''INSERT'',',
'                            :P37_PATIENT_VISIT_ID);',
'                            ',
'INSERT INTO AUDIT_TRAIL(TABLE_NAME, APP_ID, STUDY_ID, STUDY_SITE_ID, PATIENT_PROFILE_ID, PATIENT_VISIT_ID, PAGE_NO,',
'                            COLUMN_NAME, OLD_VALUE, NEW_VALUE, ACTION,TABLE_PK_VALUE)',
'                     VALUES(''EDC_PATIENT_VISIT'',:APP_ID,:APP_EDC_STUDY_ID,:APP_EDC_STUDY_SITE_ID,',
'                         :APP_PATIENT_PROFILE_ID,:P44_PATIENT_VISIT_ID, 530,',
'                            ''ACTUAL_DATE'',null,:P44_ACTUAL_DATE,''INSERT'',',
'                            :P37_PATIENT_VISIT_ID);   ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10546334991633553970
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11647403805550448728)
,p_process_sequence=>44
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INFORMATIVE MESSAGE FOR PAGE 530'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_msg varchar2(4000) := '''';',
'  v_section_status number := 3;',
'  v_qry_cnt number;',
'  V_DATE varchar2(20);',
'    V_DATE1 varchar2(20);',
'  V_AGE number;',
'BEGIN',
'/*Updating all auto queries to closed so, that if same query doesn''t arise again they will remain closed.*/',
'  update edc_crf_queries',
'     set QRY_STATUS = ''Closed''',
'   where study_id = :APP_EDC_STUDY_ID',
'     AND patient_visit_id = :P44_PATIENT_VISIT_ID',
'     and page_id = 530',
'     AND QRY_STATUS = ''Open''',
'     AND AUTO_FLAG = ''A'';',
'',
'if :P44_ACTUAL_DATE is null then',
'    v_msg  := v_msg ||''VISIT_001-Response to Date of visit is not recorded. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_001-Response to Date of visit is not recorded. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'',
'if :P44_VISIT_TITLE = ''Visit 4'' then',
'begin',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=3;',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') < to_date(V_DATE,''DD-MON-YYYY'') then',
'    v_msg  := v_msg ||''VISIT_004-Date of  Visit 3 is after date of Visit 4. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_004-Date of  Visit 3 is after date of Visit 4. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=3;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') - to_date(V_DATE,''DD-MON-YYYY'') < 12 or to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') - to_date(V_DATE,''DD-MON-YYYY'') > 16 then',
unistr('    v_msg  := v_msg ||''VISIT_008-Response to Date of visit 4 is not within Day 14 (\00B12) days. Please check and update accordingly else file Protocol Deviation.<br>'';'),
unistr('    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_008-Response to Date of visit 4 is not within Day 14 (\00B12) days. Please check and update accordingly else file Protocol Deviation.'');'),
'    v_section_status := 2;',
'',
'end if;',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=5;',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') > to_date(V_DATE,''DD-MON-YYYY'') then',
'    v_msg  := v_msg ||''VISIT_005-Date of  Visit 4 is after date of Visit 5. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_005-Date of  Visit 4 is after date of Visit 5. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'exception when others then null;',
'end;',
'',
'elsif :P44_VISIT_TITLE = ''Randomization'' then',
'',
'begin',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=1;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') < to_Date(V_DATE,''DD-MON-YYYY'') then',
'    v_msg  := v_msg ||''VISIT_002-Date of Screening visit 1 is after date of Visit 2. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_002-Date of Screening visit 1 is after date of Visit 2. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=1;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') - to_date(V_DATE,''DD-MON-YYYY'') > 3 then',
'    v_msg  := v_msg ||''VISIT_006-As per protocol Subject should be randomized within 3 days of Screening. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_006-As per protocol Subject should be randomized within 3 days of Screening. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=3;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') > to_date(V_DATE,''DD-MON-YYYY'') then',
'    v_msg  := v_msg ||''VISIT_003-Date of Visit 2 is after date of Visit 3. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_003-Date of Visit 2 is after date of Visit 3. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'',
'exception when others then null;',
'end;',
'',
'elsif :P44_VISIT_TITLE = ''Visit 3'' then',
'',
'begin',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=2;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') < to_date(V_DATE,''DD-MON-YYYY'') then',
'    v_msg  := v_msg ||''VISIT_003-Date of Visit 2 is after date of Visit 3. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_003-Date of Visit 2 is after date of Visit 3. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=2;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') - to_date(V_DATE,''DD-MON-YYYY'') <> 1 then',
'    v_msg  := v_msg ||''VISIT_007-As per protocol Visit 3 should be performed very next day of Visit 2. Please verify and provide approprite response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_007-As per protocol Visit 3 should be performed very next day of Visit 2. Please verify and provide approprite response.'');',
'    v_section_status := 2;',
'',
'end if;',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=4;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') > to_date(V_DATE,''DD-MON-YYYY'') then',
'    v_msg  := v_msg ||''VISIT_004-Date of  Visit 3 is after date of Visit 4. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_004-Date of  Visit 3 is after date of Visit 4. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'exception when others then null;',
'end;',
'',
'elsif :P44_VISIT_TITLE = ''Screening Visit'' then',
'',
'begin',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=2;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') > to_Date(V_DATE,''DD-MON-YYYY'') then',
'    v_msg  := v_msg ||''VISIT_002-Date of Screening visit 1 is after date of Visit 2. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_002-Date of Screening visit 1 is after date of Visit 2. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'exception when others then null;',
'end;',
'',
'elsif :P44_VISIT_TITLE = ''End of Study'' then',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=4;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') < to_date(V_DATE,''DD-MON-YYYY'') then',
'    v_msg  := v_msg ||''VISIT_005-Date of  Visit 4 is after date of Visit 5. Please verify and provide appropriate response.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_005-Date of  Visit 4 is after date of Visit 5. Please verify and provide appropriate response.'');',
'    v_section_status := 2;',
'',
'end if;',
'',
'select to_char(actual_date,''DD-MON-YYYY'') ',
'into V_DATE ',
'from edc_patient_visit ',
'where patient_profile_id=:P44_PATIENT_PROFILE_ID ',
'and visit_number=3;',
'',
'if to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') - to_date(V_DATE,''DD-MON-YYYY'') < 25 or to_date(:P44_ACTUAL_DATE,''DD-MON-YYYY'') - to_date(V_DATE,''DD-MON-YYYY'') > 31 then',
'    v_msg  := v_msg ||''VISIT_009-Response to Date of visit  5 is not within Day 28 (+3) days. Please check and update accordingly else file Protocol Deviation.<br>'';',
'    EDC_UTIL.INSERT_AUTO_QUERY(:APP_EDC_STUDY_ID ,:P44_PATIENT_VISIT_ID,530,''P530_ACTUAL_DATE'',''VISIT_009-Response to Date of visit  5 is not within Day 28 (+3) days. Please check and update accordingly else file Protocol Deviation.'');',
'    v_section_status := 2;',
'',
'end if;',
'end if;',
'',
'',
'',
' ',
'  if trim(upper(:P44_SECTION_STATUS)) in (2,3) then',
'',
'    select count(*)',
'      into v_qry_cnt',
'      from edc_crf_queries',
'     where study_id = :APP_EDC_STUDY_ID',
'       and page_id = 530',
'       and patient_visit_id = :P44_PATIENT_VISIT_ID',
'       and trim(upper(qry_status)) in (upper(''Open''),upper(''Reopen''));',
'',
'    if v_qry_cnt > 0 then',
'      :P44_SECTION_STATUS := v_section_status;',
'    else',
'      :P44_SECTION_STATUS := 3;',
'    end if;',
'',
'  END IF;',
'',
'  IF LENGTH(V_MSG) > 0  THEN',
'    apex_application.g_print_success_message := ''<span style=color:red>''||V_MSG||''</span>'';',
'  END IF;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12147657528073052907)
,p_internal_uid=>10546453037408944635
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11998018310574382843)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Mail to CRA For Over due Protocol Deviation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_WINDOW_P NUMBER;',
'  V_WINDOW_M NUMBER;',
'  V_DATE_1 DATE;',
'  V_DATE_2 DATE;',
'  --V_DATE_0 DATE := TO_DATE(''08-jul-2013'',''dd/mm/yy'');',
'  V_FLAG NUMBER := 0;',
'  V_RESULT number;',
'BEGIN   ',
' ',
'  SELECT (WINDOW_PERIOD_P + 1),(WINDOW_PERIOD_M + 1)',
'  INTO V_WINDOW_P,V_WINDOW_M',
'  FROM EDC_PATIENT_VISIT_PARAMS',
'  WHERE VISIT_NAME = :P44_VISIT_TITLE;',
'',
'  SELECT TO_DATE(:P44_SCHEDULE_DATE,''DD-MM-YY'') - V_WINDOW_M INTO V_DATE_1 FROM DUAL;',
'  SELECT TO_DATE(:P44_SCHEDULE_DATE,''DD-MM-YY'') + V_WINDOW_P INTO V_DATE_2 FROM DUAL;',
'  --DBMS_OUTPUT.PUT_LINE(V_DATE_1||'' - ''||V_DATE_2||'' - ''||V_DATE_0);',
'  --INSERT INTO TEMP_TRACE VALUES(V_DATE_1||'' ''||V_DATE_2);',
'  IF TO_DATE(:P44_ACTUAL_DATE,''DD/MM/YY'') NOT BETWEEN V_DATE_1 AND V_DATE_2 THEN',
'          EDC_MAIL.SEND_MAIL_PROTO_DEV_CRA(:P44_PATIENT_PROFILE_ID,:APP_EDC_STUDY_ID,:P44_VISIT_TITLE,V_RESULT);',
'  END IF;',
' ',
'  ',
' END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>10897067542432878750
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147662737322052917)
,p_process_sequence=>55
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Mail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RET NUMBER;',
'BEGIN',
' null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11046711969180548824
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RET NUMBER;',
'BEGIN',
'  EDC_MAIL.SEND_CROSS_WIN_PERIOD_MAIL(:APP_EDC_STUDY_SITE_ID, :APP_EDC_STUDY_ID, :P44_PATIENT_PROFILE_ID, :P44_SCHEDULE_DATE, V_RET);',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147662550139052917)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'81'
,p_process_when_button_id=>wwv_flow_imp.id(12147657928743052908)
,p_internal_uid=>11046711781997548824
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11269940585772478865)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE VISIT AND REDIRECT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_VISIT_TYPE       EDC_PATIENT_VISIT_PARAMS.VISIT_TYPE%TYPE;',
'    V_PARAM_ID         EDC_PATIENT_VISIT_PARAMS.PARAM_ID%TYPE;',
'    V_VISIT_NAME       EDC_PATIENT_VISIT_PARAMS.VISIT_NAME%TYPE;',
'    v_patient_visit_id NUMBER;',
'    V_TMP              NUMBER;',
'    V_RAND_DATE        EDC_PATIENT_PROFILE.RANDOMIZATION_DATE%TYPE;',
'    V_DURATION         NUMBER;',
'    V_WINDOW_PERIOD_M  NUMBER;',
'    V_WINDOW_PERIOD_P  NUMBER;',
'    V_PARAM_ID_FK      NUMBER;',
'    V_CALCULATED_ON    VARCHAR2(1000);',
'    ',
'    ',
'    V_NEW_DATE         DATE;',
'    V_PARENT_PARAM_ID  NUMBER;',
'    ',
'    function GET_NEXT_VISIT_DETAIL(P_PARAM_ID_FK OUT NUMBER, P_DURATION OUT NUMBER) RETURN VARCHAR2',
'    AS',
'        V_CALCULATED_ON VARCHAR2(1000);',
'    BEGIN',
'        ',
'        SELECT CALCULATED_ON',
'             , NVL(PARAM_ID_FK,PARAM_ID)',
'             , NVL(DURATION,0)',
'          INTO V_CALCULATED_ON',
'             , P_PARAM_ID_FK',
'             , P_DURATION',
'          FROM EDC_PATIENT_VISIT_PARAMS',
'         WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'           AND TRIM(UPPER(VISIT_NAME)) = TRIM(UPPER(:P44_VISIT_TITLE));',
'                           ',
'        RETURN V_CALCULATED_ON;',
'        ',
'   END GET_NEXT_VISIT_DETAIL;',
'    ',
'BEGIN',
'   ',
'  --Get next visit date',
'   BEGIN',
'    ',
'       ',
'     V_CALCULATED_ON := NULL;',
'     V_CALCULATED_ON := GET_NEXT_VISIT_DETAIL(V_PARENT_PARAM_ID,V_DURATION);',
'     ',
'     ',
'     SELECT CASE WHEN TRIM(UPPER(V_CALCULATED_ON)) LIKE UPPER(''Actual Date'') THEN',
'                         ACTUAL_DATE + V_DURATION',
'                 WHEN TRIM(UPPER(V_CALCULATED_ON)) LIKE UPPER(''Schedule Date'') THEN',
'                         SCHEDULE_DATE + V_DURATION',
'            END AS N_DATE',
'       INTO V_NEW_DATE',
'       FROM EDC_PATIENT_VISIT',
'      WHERE PATIENT_PROFILE_ID = :P44_PATIENT_PROFILE_ID',
'        AND :P44_PATIENT_PROFILE_ID IS NOT NULL',
'        AND PARAM_ID = V_PARENT_PARAM_ID;',
'        ',
'   EXCEPTION WHEN OTHERS THEN',
'   NULL;',
'     ',
'   END;',
'      ',
'   ',
'   ',
'    select PARAM_ID',
'         , VISIT_NAME',
'         , VISIT_TYPE',
'         , DURATION',
'         , WINDOW_PERIOD_M',
'         , WINDOW_PERIOD_P',
'         , PARAM_ID_FK',
'         , CALCULATED_ON',
'      INTO V_PARAM_ID',
'         , V_VISIT_NAME',
'         , V_VISIT_TYPE',
'         , V_DURATION',
'         , V_WINDOW_PERIOD_M',
'         , V_WINDOW_PERIOD_P',
'         , V_PARAM_ID_FK',
'         , V_CALCULATED_ON',
'      from edc_patient_Visit_PARAMS',
'     WHERE VISIT_NAME = :P44_VISIT_TITLE;',
' ',
'    select count(*)',
'      INTO V_TMP',
'      from edc_patient_visit',
'     where visit_title = :P44_VISIT_TITLE',
'       and patient_profile_id = :P44_PATIENT_PROFILE_ID;',
'',
'    IF V_TMP = 0 THEN',
'        select EDC_PATIENT_VISIT_SEQ.nextval',
'          into v_patient_visit_id',
'          from dual;',
'',
'        insert into edc_patient_visit( PATIENT_VISIT_ID',
'                                      ,PATIENT_PROFILE_ID',
'                                      ,VISIT_NUMBER',
'                                      ,VISIT_TITLE',
'                                      ,VISIT_TYPE',
'                                      ,CRF_STATUS',
'                                      ,PARAM_ID',
'                                      ,SCHEDULE_DATE',
'                                      ,WINDOW_PERIOD_M --Minus (Negative)',
'                                      ,WINDOW_PERIOD_P --Plus  (Positive)',
'                                      ,PARAM_ID_FK',
'                                      ,CALCULATED_ON',
'                                      ,DURATION',
'                                     )',
'                               values( v_patient_visit_id',
'                                      ,:P44_PATIENT_PROFILE_ID',
'                                      ,V_PARAM_ID',
'                                      ,V_VISIT_NAME',
'                                      ,V_VISIT_TYPE',
'                                      ,2',
'                                      ,V_PARAM_ID',
'                                      ,V_NEW_DATE',
'                                      ,V_WINDOW_PERIOD_M',
'                                      ,V_WINDOW_PERIOD_P',
'                                      ,V_PARAM_ID_FK',
'                                      ,V_CALCULATED_ON',
'                                      ,V_DURATION',
'                                     );',
'',
'        commit;',
'    ELSE',
'        SELECT MAX(PATIENT_VISIT_ID)',
'          INTO v_patient_visit_id',
'          FROM EDC_PATIENT_VISIT',
'         WHERE PATIENT_PROFILE_ID = :P44_PATIENT_PROFILE_ID;',
'    END IF;',
'    ',
'    APEX_UTIL.REDIRECT_URL(''f?p='' || v(''APP_ID'') || '':1001:'' || v(''SESSION'')||''::NO:45:P37_PATIENT_PROFILE_ID,APP_EDC_PATIENT_VISIT_ID:''||:P44_PATIENT_PROFILE_ID||'',''||v_patient_visit_id);',
'',
'EXCEPTION WHEN OTHERS THEN',
'NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10168989817630974772
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_VISIT_TYPE       EDC_PATIENT_VISIT_PARAMS.VISIT_TYPE%TYPE;',
'    V_PARAM_ID         EDC_PATIENT_VISIT_PARAMS.PARAM_ID%TYPE;',
'    V_VISIT_NAME       EDC_PATIENT_VISIT_PARAMS.VISIT_NAME%TYPE;',
'    v_patient_visit_id NUMBER;',
'    V_TMP              NUMBER;',
'    V_RAND_DATE        EDC_PATIENT_PROFILE.RANDOMIZATION_DATE%TYPE;',
'    V_DURATION         NUMBER;',
'    V_WINDOW_PERIOD_M  NUMBER;',
'    V_WINDOW_PERIOD_P  NUMBER;',
'    V_PARAM_ID_FK      NUMBER;',
'    V_CALCULATED_ON    VARCHAR2(1000);',
'    ',
'    ',
'    function GET_VISIT_DATE(P_PARAM_ID NUMBER) RETURN DATE',
'    AS',
'        V_CALCULATED_ON VARCHAR2(1000);',
'    BEGIN',
'        ',
'        SELECT CALCULATED_ON',
'          INTO V_CALCULATED_ON',
'          FROM EDC_PATIENT_VISIT_PARAMS',
'         WHERE PARAM_ID IN (SELECT PARAM_ID_FK',
'                              FROM EDC_PATIENT_VISIT_PARAMS',
'                             WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'                               AND PARAM_ID = P_PARAM_ID',
'                           );',
'        RETURN SYSDATE;',
'   END GET_VISIT_DATE;',
'    ',
'BEGIN',
'',
'',
'    ',
'',
'/*',
'    SELECT RANDOMIZATION_DATE',
'      INTO V_RAND_DATE',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE PATIENT_PROFILE_ID = :P44_PATIENT_PROFILE_ID;',
'*/',
'    SELECT TRIM(SCHEDULE_DATE) --ACTUAL_DATE',
'      INTO V_RAND_DATE',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_VISIT_ID = (SELECT MAX(PATIENT_VISIT_ID)',
'                                 FROM EDC_PATIENT_VISIT',
'                                WHERE PATIENT_PROFILE_ID = :P44_PATIENT_PROFILE_ID',
'                              );',
'',
'    select PARAM_ID',
'         , VISIT_NAME',
'         , VISIT_TYPE',
'         , DURATION',
'         , WINDOW_PERIOD_M',
'         , WINDOW_PERIOD_P',
'         , PARAM_ID_FK',
'         , CALCULATED_ON',
'      INTO V_PARAM_ID',
'         , V_VISIT_NAME',
'         , V_VISIT_TYPE',
'         , V_DURATION',
'         , V_WINDOW_PERIOD_M',
'         , V_WINDOW_PERIOD_P',
'         , V_PARAM_ID_FK',
'         , V_CALCULATED_ON',
'      from edc_patient_Visit_PARAMS',
'     WHERE VISIT_NAME = :P44_VISIT_TITLE;',
' ',
'    select count(*)',
'      INTO V_TMP',
'      from edc_patient_visit',
'     where visit_title = :P44_VISIT_TITLE',
'       and patient_profile_id = :P44_PATIENT_PROFILE_ID;',
'',
'    IF V_TMP = 0 THEN',
'        select EDC_PATIENT_VISIT_SEQ.nextval',
'          into v_patient_visit_id',
'          from dual;',
'',
'        insert into edc_patient_visit( PATIENT_VISIT_ID',
'                                      ,PATIENT_PROFILE_ID',
'                                      ,VISIT_NUMBER',
'                                      ,VISIT_TITLE',
'                                      ,VISIT_TYPE',
'                                      ,CRF_STATUS',
'                                      ,PARAM_ID',
'                                      ,SCHEDULE_DATE',
'                                      ,WINDOW_PERIOD_M --Minus (Negative)',
'                                      ,WINDOW_PERIOD_P --Plus  (Positive)',
'                                      ,PARAM_ID_FK',
'                                      ,CALCULATED_ON',
'                                     )',
'                               values( v_patient_visit_id',
'                                      ,:P44_PATIENT_PROFILE_ID',
'                                      ,V_PARAM_ID',
'                                      ,V_VISIT_NAME',
'                                      ,V_VISIT_TYPE',
'                                      ,2',
'                                      ,V_PARAM_ID',
'                                      ,V_RAND_DATE+V_DURATION',
'                                      ,V_WINDOW_PERIOD_M',
'                                      ,V_WINDOW_PERIOD_P',
'                                      ,V_PARAM_ID_FK',
'                                      ,V_CALCULATED_ON',
'                                     );',
'',
'        commit;',
'    ELSE',
'        SELECT MAX(PATIENT_VISIT_ID)',
'          INTO v_patient_visit_id',
'          FROM EDC_PATIENT_VISIT',
'         WHERE PATIENT_PROFILE_ID = :P44_PATIENT_PROFILE_ID;',
'    END IF;',
'    ',
'    APEX_UTIL.REDIRECT_URL(''f?p='' || v(''APP_ID'') || '':1001:'' || v(''SESSION'')||''::NO:45:P37_PATIENT_PROFILE'))
);
wwv_flow_imp.component_end;
end;
/
