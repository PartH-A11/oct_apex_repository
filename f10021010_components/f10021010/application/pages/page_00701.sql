prompt --application/pages/page_00701
begin
--   Manifest
--     PAGE: 00701
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
 p_id=>701
,p_tab_set=>'TS1'
,p_name=>'&APP_PAGE_NAME.'
,p_step_title=>'&APP_PAGE_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(12146158257108328472)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11445648874367157329)
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
 p_id=>wwv_flow_imp.id(11445695611499013943)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_region_name=>'pg_reg_width'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12151861941237361088)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11445639831674157271)
,p_plug_name=>'&APP_PAGE_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(11445695611499013943)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11445701198803025480)
,p_plug_name=>'temp'
,p_parent_plug_id=>wwv_flow_imp.id(11445695611499013943)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11445759911772271804)
,p_plug_name=>'Audit'
,p_region_name=>'pg_reg_width'
,p_parent_plug_id=>wwv_flow_imp.id(11445695611499013943)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131134462911980)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445714989436126122)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'SUBMIT_FOR_MONITORING'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,4) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445715489645127368)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'MONITOR_SECTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SDV'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,6) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(12147535227386676937)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445715727221128856)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'REVIEW_SECTION_DM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Review'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,8) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445716318416130429)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'LOCK_SECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lock'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,10) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445716622598131781)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'UNLOCK_SECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Unlock'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,11) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445640383260157271)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P701_ICF_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445714027124122220)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'ADD_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Query'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_button_condition=>'EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(12147781948955952361)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445714658833124599)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P701_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_VISIT_ID,P6_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_button_condition=>'P501_XIC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445640575394157272)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445640257554157271)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P701_ICF_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11445640517632157271)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P701_ICF_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11445642158168157275)
,p_branch_name=>'Go To Page 701'
,p_branch_action=>'f?p=&APP_ID.:701:&SESSION.::&DEBUG.:701::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445642584660157315)
,p_name=>'P701_ICF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11445701198803025480)
,p_use_cache_before_default=>'NO'
,p_source=>'ICF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445642949656157323)
,p_name=>'P701_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11445701198803025480)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445643317229157324)
,p_name=>'P701_PATIENT_VISIT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11445701198803025480)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_PATIENT_VISIT_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445643695375157324)
,p_name=>'P701_SECTION_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11445701198803025480)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'<b>Section Status :</b>'
,p_source=>'SECTION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_CRF_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VAL d, RETURN_VAL r from EDC_CRF_STATUS',
'where status=1 order by disp_seq'))
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445644091127157325)
,p_name=>'P701_ICFYN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Was voluntary consent obtained from the  subject for SPNC-ELCA Study?</b>'
,p_source=>'ICFYN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445644460771157325)
,p_name=>'P701_RFICDTC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Specify, date</B>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'RFICDTC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_new_grid=>true
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1951:2050'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445644900427157325)
,p_name=>'P701_BRTHDTC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Date of Birth</b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'BRTHDTC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1951:2050'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445645313560157326)
,p_name=>'P701_AGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Age</b>'
,p_source=>'AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445713334824116592)
,p_name=>'P701_NO_OF_QUERIES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11445701198803025480)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM edc_crf_queries',
' where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
' AND QRY_STATUS in (''Open'',''Reopened'')'))
,p_source_type=>'QUERY'
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
 p_id=>wwv_flow_imp.id(11445713743904119257)
,p_name=>'P701_IMG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11445701198803025480)
,p_prompt=>'<b>CRF Audit Trail :</b>'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img ',
' id="P701_AUDIT"',
' src="#WORKSPACE_IMAGES#audit.png" ',
'',
' style="cursor: pointer" ',
'         width="25px"',
' title="Audit"',
'>',
''))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(11445760125460271805)
,p_name=>'P701_CREATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11445759911772271804)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created By</b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445760550207271807)
,p_name=>'P701_CREATED_DT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11445759911772271804)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445761021948271807)
,p_name=>'P701_UPDATED_BY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11445759911772271804)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated By</b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445761348116271807)
,p_name=>'P701_UPDATED_DT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11445759911772271804)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445769765778346275)
,p_name=>'P701_ICFYN_CHANGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445770112556346275)
,p_name=>'P701_RFICDTC_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445770472749346275)
,p_name=>'P701_BRTHDTC_CHANGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445770854438346275)
,p_name=>'P701_AGE_CHANGE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11445639831674157271)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11445701470810025483)
,p_computation_sequence=>10
,p_computation_item=>'P701_ICF_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN EDC_UTIL.GET_PK_VALUE_COMPUTATION(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID);',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11445701543067025484)
,p_validation_name=>'P701_ICFYN_CHANGE'
,p_validation_sequence=>10
,p_validation=>'P701_ICFYN_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Was voluntary consent obtained from the subject for SPNC-ELCA Study?" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ICFYN VARCHAR2(200);',
'BEGIN',
'  IF :P701_ICF_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT ICFYN',
'      INTO V_ICFYN',
'      FROM EDC_CRF_ICF',
'     WHERE ICF_ID = :P701_ICF_ID;',
'',
'    IF V_ICFYN != :P701_ICFYN THEN',
'      RETURN TRUE;',
'    ELSIF V_ICFYN IS NULL AND :P701_ICFYN IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_ICFYN IS NOT NULL AND :P701_ICFYN IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(11445769765778346275)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11445701992052025488)
,p_validation_name=>'P701_RFICDTC_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P701_RFICDTC_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Specify, Date" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RFICDTC VARCHAR2(200);',
'BEGIN',
'  IF :P701_ICF_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TO_CHAR(RFICDTC,''DD-MON-YYYY'')',
'      INTO V_RFICDTC',
'      FROM EDC_CRF_ICF',
'     WHERE ICF_ID = :P701_ICF_ID;',
'',
'    IF V_RFICDTC != UPPER(:P701_RFICDTC) THEN',
'      RETURN TRUE;',
'    ELSIF V_RFICDTC IS NULL AND :P701_RFICDTC IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_RFICDTC IS NOT NULL AND :P701_RFICDTC IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(11445770112556346275)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11445701920444025487)
,p_validation_name=>'P701_BRTHDTC_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P701_BRTHDTC_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Date of Birth" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BRTHDTC VARCHAR2(200);',
'BEGIN',
'  IF :P701_ICF_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TO_CHAR(BRTHDTC,''DD-MON-YYYY'')',
'      INTO V_BRTHDTC',
'      FROM EDC_CRF_ICF',
'     WHERE ICF_ID = :P701_ICF_ID;',
'',
'    IF V_BRTHDTC != UPPER(:P701_BRTHDTC) THEN',
'      RETURN TRUE;',
'    ELSIF V_BRTHDTC IS NULL AND :P701_BRTHDTC IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_BRTHDTC IS NOT NULL AND :P701_BRTHDTC IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(11445770472749346275)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11445702106097025489)
,p_validation_name=>'P701_AGE_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P701_AGE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Age" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_AGE NUMBER;',
'BEGIN',
'  IF :P701_ICF_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT AGE',
'      INTO V_AGE',
'      FROM EDC_CRF_ICF',
'     WHERE ICF_ID = :P701_ICF_ID;',
'',
'    IF V_AGE != :P701_AGE THEN',
'      RETURN TRUE;',
'    ELSIF V_AGE IS NULL AND :P701_AGE IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_AGE IS NOT NULL AND :P701_AGE IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(11445770854438346275)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445717940068152571)
,p_name=>'Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P701_AUDIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445718325047152574)
,p_event_id=>wwv_flow_imp.id(11445717940068152571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_VISIT_ID:&APP_PAGE_ID.,&P701_PATIENT_VISIT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445718968059154346)
,p_name=>'Lock modal page'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11445716318416130429)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445719371006154346)
,p_event_id=>wwv_flow_imp.id(11445718968059154346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:551:&APP_SESSION.::RP,551::P551_PK_ID,P551_PAGE_ID,P551_STATUS:&P701_ICF_ID.,&APP_PAGE_ID.,10'
,p_attribute_06=>'.uMessageText'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445719776563156071)
,p_name=>'Unlock Modal Page'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11445716622598131781)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445720131264156071)
,p_event_id=>wwv_flow_imp.id(11445719776563156071)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:551:&APP_SESSION.::RP,551::P551_PK_ID,P551_PAGE_ID,P551_STATUS:&P701_ICF_ID.,&APP_PAGE_ID.,11'
,p_attribute_06=>'.uMessageText'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445701292782025481)
,p_name=>'AGE Set'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P701_RFICDTC,P701_BRTHDTC'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445701368668025482)
,p_event_id=>wwv_flow_imp.id(11445701292782025481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_AGE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_MONTH NUMBER := 0;',
'  V_YEAR  NUMBER;',
'BEGIN',
'  IF :P701_RFICDTC IS NOT NULL AND :P701_BRTHDTC IS NOT NULL THEN',
'',
'    SELECT TRUNC(MONTHS_BETWEEN(TO_DATE(:P701_RFICDTC,''DD-MON-YYYY''),TO_DATE(:P701_BRTHDTC,''DD-MON-YYYY'')))',
'      INTO V_MONTH',
'      FROM DUAL;',
'',
'    V_YEAR := TRUNC(V_MONTH / 12);',
'  END IF;',
'',
'  RETURN V_YEAR;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN NULL;',
'END;'))
,p_attribute_07=>'P701_RFICDTC,P701_BRTHDTC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445701698877025485)
,p_name=>'P701_ICFYN_CHANGE hide'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ICFYN VARCHAR2(200);',
'BEGIN',
'  IF :P701_ICF_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT ICFYN',
'      INTO V_ICFYN',
'      FROM EDC_CRF_ICF',
'     WHERE ICF_ID = :P701_ICF_ID;',
'',
'    IF V_ICFYN != :P701_ICFYN THEN',
'      RETURN FALSE;',
'    ELSIF V_ICFYN IS NULL AND :P701_ICFYN IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_ICFYN IS NOT NULL AND :P701_ICFYN IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445701789678025486)
,p_event_id=>wwv_flow_imp.id(11445701698877025485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_ICFYN_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445702182484025490)
,p_name=>'P701_RFICDTC_CHANGE hide'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RFICDTC VARCHAR2(200);',
'BEGIN',
'  IF :P701_ICF_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TO_CHAR(RFICDTC,''DD-MON-YYYY'')',
'      INTO V_RFICDTC',
'      FROM EDC_CRF_ICF',
'     WHERE ICF_ID = :P701_ICF_ID;',
'',
'    IF V_RFICDTC != UPPER(:P701_RFICDTC) THEN',
'      RETURN FALSE;',
'    ELSIF V_RFICDTC IS NULL AND :P701_RFICDTC IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_RFICDTC IS NOT NULL AND :P701_RFICDTC IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445702256413025491)
,p_event_id=>wwv_flow_imp.id(11445702182484025490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_RFICDTC_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445702375089025492)
,p_name=>'P701_BRTHDTC_CHANGE hide'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BRTHDTC VARCHAR2(200);',
'BEGIN',
'  IF :P701_ICF_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TO_CHAR(BRTHDTC,''DD-MON-YYYY'')',
'      INTO V_BRTHDTC',
'      FROM EDC_CRF_ICF',
'     WHERE ICF_ID = :P701_ICF_ID;',
'',
'    IF V_BRTHDTC != UPPER(:P701_BRTHDTC) THEN',
'      RETURN FALSE;',
'    ELSIF V_BRTHDTC IS NULL AND :P701_BRTHDTC IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_BRTHDTC IS NOT NULL AND :P701_BRTHDTC IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445702506657025493)
,p_event_id=>wwv_flow_imp.id(11445702375089025492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_BRTHDTC_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445702537031025494)
,p_name=>'P701_AGE_CHANGE hide'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_AGE NUMBER;',
'BEGIN',
'  IF :P701_ICF_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT AGE',
'      INTO V_AGE',
'      FROM EDC_CRF_ICF',
'     WHERE ICF_ID = :P701_ICF_ID;',
'',
'    IF V_AGE != :P701_AGE THEN',
'      RETURN FALSE;',
'    ELSIF V_AGE IS NULL AND :P701_AGE IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_AGE IS NOT NULL AND :P701_AGE IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445702702250025495)
,p_event_id=>wwv_flow_imp.id(11445702537031025494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_AGE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445702785674025496)
,p_name=>'P701_ICFYN_CHANGE show'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P701_ICFYN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P701_ICF_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445702838815025497)
,p_event_id=>wwv_flow_imp.id(11445702785674025496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_ICFYN_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445703016674025498)
,p_name=>'P701_RFICDTC_CHANGE show'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P701_RFICDTC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P701_ICF_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445703044990025499)
,p_event_id=>wwv_flow_imp.id(11445703016674025498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_RFICDTC_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445703156068025500)
,p_name=>'P701_BRTHDTC_CHANGE show'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P701_BRTHDTC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P701_ICF_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445703231297025501)
,p_event_id=>wwv_flow_imp.id(11445703156068025500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_BRTHDTC_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445703389127025502)
,p_name=>'P701_AGE_CHANGE show'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P701_AGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P701_ICF_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445703458040025503)
,p_event_id=>wwv_flow_imp.id(11445703389127025502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_AGE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11445703560758025504)
,p_name=>'Disable/Enable on P701_ICFYN_LABEL'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P701_ICFYN'
,p_condition_element=>'P701_ICFYN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Yes'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445703656525025505)
,p_event_id=>wwv_flow_imp.id(11445703560758025504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_RFICDTC,P701_BRTHDTC,P701_AGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445703725205025506)
,p_event_id=>wwv_flow_imp.id(11445703560758025504)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_RFICDTC,P701_BRTHDTC,P701_AGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11445703994574025508)
,p_event_id=>wwv_flow_imp.id(11445703560758025504)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_RFICDTC,P701_BRTHDTC,P701_AGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445647715032157328)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_ICF'
,p_attribute_02=>'EDC_CRF_ICF'
,p_attribute_03=>'P701_ICF_ID'
,p_attribute_04=>'ICF_ID'
,p_internal_uid=>10344696946890653235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445648095588157328)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_ICF'
,p_attribute_02=>'EDC_CRF_ICF'
,p_attribute_03=>'P701_ICF_ID'
,p_attribute_04=>'ICF_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>10344697327446653235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445720710665160989)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_VISIT_STATUS'
,p_process_sql_clob=>'EDC_WORKFLOW.update_visit_status(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'',''CREATE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>10344769942523656896
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445721008398164101)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT_FOR_CRA_REVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while submitting for Monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''SUBMIT_FOR_MONITORING'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Submitted for Monitoring.'
,p_internal_uid=>10344770240256660008
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445722055983166064)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SDV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while Monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''MONITOR_SECTION'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Section Monitored.'
,p_internal_uid=>10344771287841661971
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445723179482168858)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_REVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# -While reviewing the section for site.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''REVIEW_SECTION_DM'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Section reviewed.'
,p_internal_uid=>10344772411340664765
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445723516905171659)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_LOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - While section Lock.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''LOCK_SECTION'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Section Locked.'
,p_internal_uid=>10344772748763667566
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445723925299174499)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_UNLOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,''O'');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while unlocking the section.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''UNLOCK_SECTION'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Section unlocked.'
,p_internal_uid=>10344773157157670406
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11445648491993157328)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''DELETE'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>10344697723851653235
);
wwv_flow_imp.component_end;
end;
/
