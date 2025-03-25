prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_tab_set=>'TS1'
,p_name=>'Investigator Details'
,p_step_title=>'Investigator Details'
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
 p_id=>wwv_flow_imp.id(11996780023711227485)
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
 p_id=>wwv_flow_imp.id(12146457831755913629)
,p_plug_name=>'Investigator Details'
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
 p_id=>wwv_flow_imp.id(12146459230449913632)
,p_plug_name=>'Investigator Info.'
,p_parent_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146461225947913635)
,p_plug_name=>'Contact Info.'
,p_parent_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146463832636913639)
,p_plug_name=>'Investigator CV'
,p_parent_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146465657043913643)
,p_plug_name=>'Audit Trail'
,p_parent_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146466628319913646)
,p_plug_name=>'Region Display Selector'
,p_parent_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146466851828913647)
,p_plug_name=>'Breadcrumb'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146865352476967872)
,p_plug_name=>'Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146129741780911976)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12146390934232777381)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146458250714913630)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P25_SITE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Condition',
':P25_SITE_ID is not null'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146458645334913630)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146458046931913629)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P25_SITE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146458432549913630)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P25_SITE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_database_action=>'DELETE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Condition',
':P25_SITE_ID is not null'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146469143416913654)
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146458833972913631)
,p_name=>'P25_SITE_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site Id'
,p_source=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146459047001913632)
,p_name=>'P25_CRA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12146457831755913629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cra'
,p_source=>'CRA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146459436107913634)
,p_name=>'P25_SITE_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ID VARCHAR2(400);',
'BEGIN',
'    SELECT LPAD(NVL(MAX(SITE_ID),0)+1,2,''0'') INTO V_ID FROM EDC_SITES;',
'    RETURN V_ID;',
'EXCEPTION WHEN OTHERS THEN RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Site Number'
,p_source=>'SITE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>60
,p_tag_attributes=>'readonly=''readonly'''
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146459626084913634)
,p_name=>'P25_SITE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site Name'
,p_source=>'INVNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>5
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146459830209913634)
,p_name=>'P25_REGION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region'
,p_source=>'REGION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REGION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LV.DISPLAY_VALUE D, LV.STORED_VALUE R ',
'  FROM EDC_LOV L',
'  JOIN EDC_LOV_VALUES LV',
'    ON L.LOV_ID = LV.LOV_ID ',
'   AND LOV_NAME = ''REGION'' ',
'   AND LV.STATUS = 1',
' ORDER BY LV.SEQUENCE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_colspan=>2
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when=>'P25_SITE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146460039973913634)
,p_name=>'P25_TITLE'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_USER_TITLE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''USER_TITLE'' and lv.status=1',
'order by 1'))
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146460231189913634)
,p_name=>'P25_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>80
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146460451098913634)
,p_name=>'P25_MIDDLE_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Middle Name'
,p_source=>'MIDDLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>80
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146460643397913635)
,p_name=>'P25_LAST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>80
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146460852591913635)
,p_name=>'P25_GENDER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_GENDER_1_2_LOV'
,p_lov=>'.'||wwv_flow_imp.id(11642984614096702329)||'.'
,p_colspan=>2
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146461030673913635)
,p_name=>'P25_PI_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12146459230449913632)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pi Status'
,p_source=>'PI_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146461456977913637)
,p_name=>'P25_ADDRESS_LINE1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>3
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146461655313913637)
,p_name=>'P25_ADDRESS_LINE2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_source=>'ADDRESS_LINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146461852564913637)
,p_name=>'P25_CITY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146462032004913637)
,p_name=>'P25_STATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146462240255913638)
,p_name=>'P25_ZIP_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip Code'
,p_source=>'ZIP_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146462454112913638)
,p_name=>'P25_COUNTRY_ID'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_COUNTRY_MAST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNTRY_NAME D, COUNTRY_ID R',
'  FROM EDC_COUNTRY_MST',
' ORDER BY COUNTRY_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P25_SITE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146462634340913638)
,p_name=>'P25_WEBSITE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Website'
,p_source=>'WEBSITE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146462853829913638)
,p_name=>'P25_NOTES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146463053473913639)
,p_name=>'P25_PHONE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146463252294913639)
,p_name=>'P25_MOBILE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile'
,p_source=>'MOBILE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146463449916913639)
,p_name=>'P25_FAX'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax'
,p_source=>'FAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146463633314913639)
,p_name=>'P25_EMAIL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(12146461225947913635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146464049345913641)
,p_name=>'P25_INVESTIGATOR_CV'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(12146463832636913639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Investigator CV'
,p_source=>'INVESTIGATOR_CV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'CV_MIME_TYPE'
,p_attribute_03=>'CVNAME'
,p_attribute_05=>'CV_UPDATE_DATE'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146464255562913641)
,p_name=>'P25_CV_UPDATE_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(12146463832636913639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CV Update Date'
,p_source=>'CV_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146464442610913641)
,p_name=>'P25_EXPERIENCE'
,p_item_sequence=>228
,p_item_plug_id=>wwv_flow_imp.id(12146463832636913639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Experience'
,p_post_element_text=>'&nbsp;&nbsp; In Months.'
,p_source=>'EXPERIENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146464653577913641)
,p_name=>'P25_TH_AREA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(12146463832636913639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Therapeutic Area'
,p_source=>'TH_AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EDC_TH_AREA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME display_value, AREA_INDICATION_ID return_value ',
'from EDC_AREA_INDICATION where parent_id is null and status=1',
'order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146464827492913642)
,p_name=>'P25_STUDY_INDICATION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(12146463832636913639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Study Indication'
,p_source=>'STUDY_INDICATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME display_value, ind_det_id return_value ',
'from EDC_AREA_IND_DETAIL where AREA_INDICATION_ID is not null and AREA_INDICATION_ID=:P25_TH_AREA and status=1',
'order by 1'))
,p_lov_cascade_parent_items=>'P25_TH_AREA'
,p_ajax_items_to_submit=>'P25_TH_AREA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>5
,p_colspan=>4
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146465049522913642)
,p_name=>'P25_CVNAME'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(12146463832636913639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cvname'
,p_source=>'CVNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146465251554913642)
,p_name=>'P25_CV_MIME_TYPE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(12146463832636913639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cv Mime Type'
,p_source=>'CV_MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146465426676913642)
,p_name=>'P25_STATUS'
,p_item_sequence=>229
,p_item_plug_id=>wwv_flow_imp.id(12146463832636913639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_ACTIVE_INACTIVE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.display_value d, a.stored_value r from edc_lov_values a, edc_lov b',
' where a.lov_id = b.lov_id',
'   and b.lov_name = ''STATUS_ACTIVE_INACTIVE''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--- Select ---'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146465855499913645)
,p_name=>'P25_CREATED_ON'
,p_item_sequence=>326
,p_item_plug_id=>wwv_flow_imp.id(12146465657043913643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created On'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146466043249913645)
,p_name=>'P25_CREATED_BY'
,p_item_sequence=>325
,p_item_plug_id=>wwv_flow_imp.id(12146465657043913643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146466234655913645)
,p_name=>'P25_UPDATED_ON'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(12146465657043913643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated On'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146466429001913645)
,p_name=>'P25_UPDATED_BY'
,p_item_sequence=>335
,p_item_plug_id=>wwv_flow_imp.id(12146465657043913643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146468128177913653)
,p_validation_name=>'P25_UPDATED_ON must be timestamp'
,p_validation_sequence=>340
,p_validation=>'P25_UPDATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(12146466234655913645)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146467354371913652)
,p_validation_name=>'P25_SITE_NAME_NN'
,p_validation_sequence=>350
,p_validation=>'P25_SITE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Investigator name is missing. Please provide.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12146459626084913634)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146467533846913653)
,p_validation_name=>'P25_ADDRESS_LINE1_NN'
,p_validation_sequence=>360
,p_validation=>'P25_ADDRESS_LINE1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Address is missing. Please provide.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(12146461456977913637)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146467743484913653)
,p_validation_name=>'P25_PHONE_NN'
,p_validation_sequence=>370
,p_validation=>'P25_PHONE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Phone is missing. Please provide.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(12146463053473913639)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146467935033913653)
,p_validation_name=>'P25_FAX_NN'
,p_validation_sequence=>380
,p_validation=>'P25_FAX'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Fax is missing. Please provide.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(12146463449916913639)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146468240873913653)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_SITES'
,p_attribute_02=>'EDC_SITES'
,p_attribute_03=>'P25_SITE_ID'
,p_attribute_04=>'SITE_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11045517472732409560
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146468429254913653)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT nvl(MAX(SITE_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   edc_sites;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'  end; ',
'begin ',
'  :P25_SITE_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(12146458046931913629)
,p_internal_uid=>11045517661113409560
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146468642288913653)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_SITES'
,p_attribute_02=>'EDC_SITES'
,p_attribute_03=>'P25_SITE_ID'
,p_attribute_04=>'SITE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_SITES.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11045517874147409560
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146468851267913654)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_imp.id(12146458432549913630)
,p_internal_uid=>11045518083126409561
);
wwv_flow_imp.component_end;
end;
/
