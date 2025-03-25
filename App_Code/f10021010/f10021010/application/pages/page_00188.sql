prompt --application/pages/page_00188
begin
--   Manifest
--     PAGE: 00188
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
 p_id=>188
,p_tab_set=>'TS1'
,p_name=>'Block Details'
,p_step_title=>'Block Details'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
'$(document).ready(function (){',
'                $("#P188_ADD_BLOCK_NO").hide();',
'                $(".add_block").click(function() {',
'                     $("#P188_ADD_BLOCK_NO").show();',
'                });',
'            });',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3789567043472567975)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146227348593821299)
,p_plug_name=>'Randomization Block'
,p_parent_plug_id=>wwv_flow_imp.id(3789567043472567975)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="min-width:700px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>25
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12146230330690821305)
,p_name=>'Block Detail'
,p_parent_plug_id=>wwv_flow_imp.id(3789567043472567975)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DTLS_ID,',
'       BLK_ID,',
'       STUDY_ARM_ID',
'     , DENSE_RANK() OVER(ORDER BY DTLS_ID) SR_NO',
'  from EDC_STUDY_ARM_BLOCK_DTLS',
' where BLK_ID = :P188_BLK_ID',
' order by DTLS_ID'))
,p_display_when_condition=>'P188_BLK_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P188_BLK_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_query_row_count_max=>5000
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
 p_id=>wwv_flow_imp.id(12146230634785821305)
,p_query_column_id=>1
,p_column_alias=>'DTLS_ID'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(DTLS_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_STUDY_ARM_BLOCK_DTLS',
'  where blk_id = :P148_BLK_ID;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_BLOCK_DTLS'
,p_ref_column_name=>'DTLS_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146230724869821305)
,p_query_column_id=>2
,p_column_alias=>'BLK_ID'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P188_BLK_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_BLOCK_DTLS'
,p_ref_column_name=>'BLK_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146230852534821305)
,p_query_column_id=>3
,p_column_alias=>'STUDY_ARM_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Study Arm'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12146234137629821316)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_BLOCK_DTLS'
,p_ref_column_name=>'STUDY_ARM_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5239038496073839901)
,p_query_column_id=>4
,p_column_alias=>'SR_NO'
,p_column_display_sequence=>2
,p_column_heading=>'Sr. No'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146230525961821305)
,p_query_column_id=>5
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146231934391821309)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146837331108744113)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12146155451198328465)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147139145964188909)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1.1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146227741821821300)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P188_BLK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146231133779821306)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12146230330690821305)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Add Row'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146228554090821301)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_button_name=>'GET_PREVIOUS_BLK_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'&lt;'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_BLK_ID'')'
,p_button_condition=>'P188_BLK_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146228325400821301)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_button_name=>'GET_NEXT_BLK_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'&gt;'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_BLK_ID'')'
,p_button_condition=>'P188_BLK_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146228146687821300)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:187:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5235518781478583430)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_button_name=>'AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P188_BLK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146227548893821299)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P188_BLK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146227928836821300)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_pat number;',
'begin',
'   select count(*) into v_pat from edc_patient_profile a, edc_study_sites b where ',
' a.study_site_id = b.study_site_id and b.study_id = :APP_EDC_STUDY_ID;',
'   if :P188_BLK_ID is not null and v_pat = 0 then',
'       return true;',
'   else return false;',
'   end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146230949270821305)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12146230330690821305)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146233628659821315)
,p_branch_action=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.::P188_BLK_ID:&P188_BLK_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12146228325400821301)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146233847591821315)
,p_branch_action=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.::P188_BLK_ID:&P188_BLK_ID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12146228554090821301)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146234056565821315)
,p_branch_action=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235516912163583411)
,p_name=>'P188_BLK_NO_CHANGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235517616164583419)
,p_name=>'P188_ADD_BLOCK_NO_CHANGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5235562910477779018)
,p_name=>'P188_STUDY_SITE_ID_CHANGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10985538057121758489)
,p_name=>'P188_ARM_BLOCK_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Block Name'
,p_source=>'ARM_BLOCK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_read_only_when=>':P188_BLK_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10985538199512758490)
,p_name=>'P188_GENDER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PATIENT_GENDER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT A.DISPLAY_VALUE D, A.STORED_VALUE R',
'  FROM EDC_LOV_VALUES A',
'  JOIN EDC_LOV B',
'    ON A.LOV_ID   = B.LOV_ID',
'   AND B.LOV_NAME = ''PATIENT_GENDER'' AND STORED_VALUE NOT IN (''Not Reported'')',
' ORDER BY A.SEQUENCE',
' '))
,p_colspan=>3
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_read_only_when=>':P188_BLK_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10985538328334758491)
,p_name=>'P188_BMI_FROM'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'BMI Range'
,p_source=>'BMI_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_read_only_when=>':P188_BLK_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10985538379681758492)
,p_name=>'P188_BMI_TO'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_prompt=>' to '
,p_post_element_text=>' kg/m<sup>2</sup>'
,p_source=>'BMI_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_read_only_when=>':P188_BLK_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146228738396821302)
,p_name=>'P188_BLK_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_source=>'BLK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146228948668821303)
,p_name=>'P188_BLK_LEVEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'BLK_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146229133081821303)
,p_name=>'P188_BLK_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'No. of Blocks'
,p_source=>'BLK_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>22
,p_colspan=>3
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P188_BLK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'lable change :',
'No. Of Blocks.'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146229335686821303)
,p_name=>'P188_STUDY_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146229551947821303)
,p_name=>'P188_STUDY_SITE_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site '
,p_source=>'STUDY_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , a.STUDY_SITE_ID R ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' WHERE A.SITE_ID = B.SITE_ID',
' and a.study_site_id not in (select study_site_id from edc_Study_arm_block)',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Site --'
,p_cHeight=>1
,p_new_grid=>true
,p_colspan=>3
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P188_BLK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select '' Site : ''||a.SITE_NUMBER||'' ( ''||B.INVNAME||'' )'' D, a.STUDY_SITE_ID R ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' WHERE A.SITE_ID = B.SITE_ID',
'and a.STUDY_ID = :APP_EDC_STUDY_ID',
'and :P188_BLK_ID IS NOT NULL',
'UNION ALL',
'  select '' Site : ''||a.SITE_NUMBER||'' ( ''||B.INVNAME||'' )'' D, a.STUDY_SITE_ID R ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' WHERE A.SITE_ID = B.SITE_ID',
'and a.STUDY_ID = :APP_EDC_STUDY_ID',
'AND STUDY_SITE_ID NOT IN (SELECT STUDY_SITE_ID FROM EDC_STUDY_aRM_BLOCK )',
'and :P188_BLK_ID IS NULL',
'order by 1'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146229741880821304)
,p_name=>'P188_BLK_ID_NEXT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146229933709821304)
,p_name=>'P188_BLK_ID_PREV'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146230152370821305)
,p_name=>'P188_BLK_ID_COUNT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12164492624696846605)
,p_name=>'P188_BLOCKS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Available Blocks</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(distinct block)',
'  from edc_random_mst',
' where u_flag is null'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'begin',
'',
'select count(distinct block)',
'  into v_cnt',
'  from edc_random_mst',
' where u_flag is null;',
'',
'sys.htp.p (v_cnt);',
'',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12164502434341411682)
,p_name=>'P188_ADD_BLOCK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_prompt=>'&nbsp;'
,p_source=>'Add Additional Block(s)'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'add_block'
,p_tag_attributes=>'style="color:blue;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>':P188_BLK_ID IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>':P188_BLK_ID IS NOT NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12164503125222491899)
,p_name=>'P188_ADD_BLOCK_NO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(12146227348593821299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_item_comment=>':P188_BLK_ID IS NOT NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146231452406821308)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146230330690821305)
,p_validation_name=>'STUDY_ARM_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'STUDY_ARM_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'STUDY_ARM_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10622320200529232134)
,p_validation_name=>'P188_ADD_BLOCK_NO NN'
,p_validation_sequence=>40
,p_validation=>'P188_ADD_BLOCK_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Additional Block must be entered'
,p_validation_condition=>':P188_BLK_ID IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(12164503125222491899)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235565405171792996)
,p_validation_name=>'P188_STUDY_SITE_ID_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P21_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Site" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_SITE_ID VARCHAR2(200);',
'BEGIN',
'  IF :P188_BLK_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STUDY_SITE_ID',
'      INTO V_STUDY_SITE_ID',
'      FROM EDC_STUDY_ARM_BLOCK',
'     WHERE BLK_ID = :P188_BLK_ID;',
'',
'    IF V_STUDY_SITE_ID != :P188_STUDY_SITE_ID THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_SITE_ID IS NULL AND :P188_STUDY_SITE_ID IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STUDY_SITE_ID IS NOT NULL AND :P188_STUDY_SITE_ID IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235517416305583417)
,p_validation_name=>'P188_BLK_NO_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P188_BLK_NO_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "No. of Blocks" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BLK_NO VARCHAR2(200);',
'BEGIN',
'  IF :P188_BLK_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT BLK_NO',
'      INTO V_BLK_NO',
'      FROM EDC_STUDY_ARM_BLOCK',
'     WHERE BLK_ID = :P188_BLK_ID;',
'',
'    IF V_BLK_NO != :P188_BLK_NO THEN',
'      RETURN TRUE;',
'    ELSIF V_BLK_NO IS NULL AND :P188_BLK_NO IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_BLK_NO IS NOT NULL AND :P188_BLK_NO IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5235518281098583425)
,p_validation_name=>'P188_ADD_BLOCK_NO_CHANGE'
,p_validation_sequence=>70
,p_validation=>'P188_ADD_BLOCK_NO_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "No. of Blocks" must have some value.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ADD_BLOCK_NO VARCHAR2(200);',
'BEGIN',
'  IF :P188_BLK_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT ADD_BLOCK_NO',
'      INTO V_ADD_BLOCK_NO',
'      FROM EDC_STUDY_ARM_BLOCK',
'     WHERE BLK_ID = :P188_BLK_ID;',
'',
'    IF V_ADD_BLOCK_NO != :P188_ADD_BLOCK_NO THEN',
'      RETURN TRUE;',
'    ELSIF V_ADD_BLOCK_NO IS NULL AND :P188_ADD_BLOCK_NO IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_ADD_BLOCK_NO IS NOT NULL AND :P188_ADD_BLOCK_NO IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235563104194782014)
,p_name=>'P188_STUDY_SITE_ID_CHANGE hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_SITE_ID VARCHAR2(200);',
'BEGIN',
'  IF :P188_BLK_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STUDY_SITE_ID',
'      INTO V_STUDY_SITE_ID',
'      FROM EDC_STUDY_ARM_BLOCK',
'     WHERE BLK_ID = :P188_BLK_ID;',
'',
'    IF V_STUDY_SITE_ID != :P188_STUDY_SITE_ID THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_SITE_ID IS NULL AND :P188_STUDY_SITE_ID IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STUDY_SITE_ID IS NOT NULL AND :P188_STUDY_SITE_ID IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235563469490782024)
,p_event_id=>wwv_flow_imp.id(5235563104194782014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_STUDY_SITE_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235563946874782024)
,p_event_id=>wwv_flow_imp.id(5235563104194782014)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_STUDY_SITE_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235516980563583412)
,p_name=>'P188_BLK_NO_CHANGE hide'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BLK_NO VARCHAR2(200);',
'BEGIN',
'  IF :P188_BLK_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT BLK_NO',
'      INTO V_BLK_NO',
'      FROM EDC_STUDY_ARM_BLOCK',
'     WHERE BLK_ID = :P188_BLK_ID;',
'',
'    IF V_BLK_NO != :P188_BLK_NO THEN',
'      RETURN FALSE;',
'    ELSIF V_BLK_NO IS NULL AND :P188_BLK_NO IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_BLK_NO IS NOT NULL AND :P188_BLK_NO IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235517057632583413)
,p_event_id=>wwv_flow_imp.id(5235516980563583412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_BLK_NO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235517148141583414)
,p_event_id=>wwv_flow_imp.id(5235516980563583412)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_BLK_NO_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235517766730583420)
,p_name=>'P188_ADD_BLOCK_NO_CHANGE hide'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ADD_BLOCK_NO VARCHAR2(200);',
'BEGIN',
'  IF :P188_BLK_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT ADD_BLOCK_NO',
'      INTO V_ADD_BLOCK_NO',
'      FROM EDC_STUDY_ARM_BLOCK',
'     WHERE BLK_ID = :P188_BLK_ID;',
'',
'    IF V_ADD_BLOCK_NO != :P188_ADD_BLOCK_NO THEN',
'      RETURN FALSE;',
'    ELSIF V_ADD_BLOCK_NO IS NULL AND :P188_ADD_BLOCK_NO IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_ADD_BLOCK_NO IS NOT NULL AND :P188_ADD_BLOCK_NO IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235517839121583421)
,p_event_id=>wwv_flow_imp.id(5235517766730583420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_ADD_BLOCK_NO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235517978455583422)
,p_event_id=>wwv_flow_imp.id(5235517766730583420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_ADD_BLOCK_NO_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235564513424790591)
,p_name=>'P188_STUDY_SITE_ID_CHANGE show'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_STUDY_SITE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P188_BLK_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235564817619790592)
,p_event_id=>wwv_flow_imp.id(5235564513424790591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_STUDY_SITE_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235517290052583415)
,p_name=>'P188_BLK_NO_CHANGE show'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_BLK_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P188_BLK_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235517358805583416)
,p_event_id=>wwv_flow_imp.id(5235517290052583415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_BLK_NO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5235518028115583423)
,p_name=>'P188_ADD_BLOCK_NO_CHANGE show'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_ADD_BLOCK_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P188_BLK_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5235518152828583424)
,p_event_id=>wwv_flow_imp.id(5235518028115583423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_ADD_BLOCK_NO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5236188495936039984)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5235518781478583430)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5236188891124040000)
,p_event_id=>wwv_flow_imp.id(5236188495936039984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_STUDY_ARM_BLOCK,&P188_BLK_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146232352189821314)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_STUDY_ARM_BLOCK'
,p_attribute_02=>'EDC_STUDY_ARM_BLOCK'
,p_attribute_03=>'P188_BLK_ID'
,p_attribute_04=>'BLK_ID'
,p_internal_uid=>11045281584048317221
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146232529650821314)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'EDC_STUDY_ARM_BLOCK'
,p_attribute_03=>'P188_BLK_ID'
,p_attribute_04=>'BLK_ID'
,p_attribute_09=>'P188_BLK_ID_NEXT'
,p_attribute_10=>'P188_BLK_ID_PREV'
,p_attribute_13=>'P188_BLK_ID_COUNT'
,p_attribute_14=>'STUDY_ID = :APP_EDC_STUDY_ID'
,p_internal_uid=>11045281761509317221
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146232734792821314)
,p_process_sequence=>5
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
'   SELECT NVL(MAX(BLK_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_STUDY_ARM_BLOCK;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P188_BLK_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12146227548893821299)
,p_internal_uid=>11045281966651317221
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146232951800821314)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_STUDY_ARM_BLOCK'
,p_attribute_02=>'EDC_STUDY_ARM_BLOCK'
,p_attribute_03=>'P188_BLK_ID'
,p_attribute_04=>'BLK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11045282183659317221
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146233134611821315)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Block Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_DTLS_ID NUMBER;',
'BEGIN',
'    SELECT NVL(MAX(DTLS_ID),0)',
'      INTO V_DTLS_ID ',
'      FROM EDC_STUDY_ARM_BLOCK_DTLS;',
'--     where blk_id = :P188_BLK_ID;',
'',
'    FOR I IN (select rownum,a.block from(select distinct block',
'                                           from edc_random_mst',
'                                          where nvl(u_flag,0) = 0 ',
'                                          order by 1',
'                                        )a',
'               where rownum <=  :P188_BLK_NO',
'             )',
'    LOOP',
'        for j in (select BLOCK,',
'                         obs,',
'                         study_arm_id,',
'                         RANDOMIZATION_NUMBER',
'                    from edc_random_mst ',
'                   where block = i.block',
'                   order by obs',
'                 )',
'        loop         ',
'            V_DTLS_ID := V_DTLS_ID + 1;',
'',
'            INSERT INTO EDC_STUDY_ARM_BLOCK_DTLS(DTLS_ID,',
'                                                 BLK_ID,',
'                                                 BLOCK,',
'                                                 study_arm_id,',
'                                                 RANDOMIZATION_NUMBER',
'                                                )',
'                                          VALUES(V_DTLS_ID,',
'                                                 :P188_BLK_ID,',
'                                                 J.BLOCK,',
'                                                 j.study_arm_id,',
'                                                 J.RANDOMIZATION_NUMBER',
'                                                );',
'',
'            update edc_random_mst',
'               set u_flag = 1',
'                 , STUDY_SITE_ID = :P188_STUDY_SITE_ID',
'                 , blk_id = :P188_BLK_ID',
'             where obs = j.obs;     ',
'        end loop;       ',
'    END LOOP;',
'       ',
'    COMMIT;     ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12146227548893821299)
,p_process_when=>'P188_BLK_NO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>11045282366470317222
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*Old code changed by Krunal on 20/11/2015*/',
'DECLARE',
'    V_DTLS_ID NUMBER;',
'BEGIN',
'',
'    SELECT NVL(MAX(DTLS_ID),0)',
'      INTO V_DTLS_ID ',
'      FROM EDC_STUDY_ARM_BLOCK_DTLS',
'      where blk_id = :P188_BLK_ID;',
'     ',
'     IF V_DTLS_ID = 0 THEN ',
'    ',
'         FOR I IN (select * from (',
'                            SELECT rownum,obs,study_Arm_id FROM EDC_RANDOM_MST',
'                              where u_flag is null',
'                                order by obs)',
'                                where rownum <= :P188_BLK_NO)',
'         LOOP',
'            ',
'            V_DTLS_ID := V_DTLS_ID + 1;',
'            ',
'            INSERT INTO EDC_STUDY_ARM_BLOCK_DTLS(DTLS_ID,BLK_ID,study_arm_id)',
'                   VALUES (V_DTLS_ID,:P188_BLK_ID,i.study_arm_id);',
'             ',
'             update edc_random_mst',
'                set u_flag = 1',
'              where  obs = i.obs;     ',
'                    ',
'         END LOOP;',
'         ',
'        ',
'         ',
'     ELSIF (V_DTLS_ID > 0 AND V_DTLS_ID < :P188_BLK_NO) THEN',
'        ',
'        ',
'        ',
'        FOR I in (select * from (',
'                            SELECT rownum,obs,study_Arm_id FROM EDC_RANDOM_MST',
'                              where u_flag is null',
'                                order by obs)',
'                                where rownum <= :P188_BLK_NO - V_DTLS_ID) ',
'        LOOP',
'        ',
'            V_DTLS_ID := V_DTLS_ID + 1;',
'        INSERT INTO EDC_STUDY_ARM_BLOCK_DTLS(DTLS_ID,BLK_ID,study_arm_id)',
'                   VALUES (V_DTLS_ID,:P188_BLK_ID,i.study_arm_id);',
'             ',
'             update edc_random_mst',
'                set u_flag = 1',
'              where  obs = i.obs;     ',
'                           ',
'        END LOOP;              ',
'      ',
'       ',
'     END IF;',
'     ',
'     COMMIT;     ',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12164504441610616836)
,p_process_sequence=>18
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Additional Block'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_DTLS_ID NUMBER;',
'BEGIN',
'    SELECT NVL(MAX(DTLS_ID),0)',
'      INTO V_DTLS_ID ',
'      FROM EDC_STUDY_ARM_BLOCK_DTLS;',
'--     WHERE blk_id = :P188_BLK_ID;',
'',
'    FOR I IN (select rownum,a.block from(select distinct block',
'                                           from edc_random_mst',
'                                          where nvl(u_flag,0) = 0 ',
'                                          order by 1',
'                                        )a',
'               where rownum <=  :P188_ADD_BLOCK_NO',
'             )',
'    LOOP',
'        for j in (select BLOCK,',
'                         obs,',
'                         study_arm_id,',
'                         RANDOMIZATION_NUMBER',
'                    from edc_random_mst ',
'                   where block = i.block',
'                   order by obs',
'                 )',
'        loop         ',
'            V_DTLS_ID := V_DTLS_ID + 1;',
'',
'            INSERT INTO EDC_STUDY_ARM_BLOCK_DTLS(DTLS_ID,',
'                                                 BLK_ID,',
'                                                 BLOCK,',
'                                                 study_arm_id,',
'                                                 RANDOMIZATION_NUMBER',
'                                                )',
'                                          VALUES(V_DTLS_ID,',
'                                                 :P188_BLK_ID,',
'                                                 J.BLOCK,',
'                                                 j.study_arm_id,',
'                                                 J.RANDOMIZATION_NUMBER',
'                                                );',
'',
'',
'             update edc_random_mst',
'                set u_flag = 1,',
'                    STUDY_SITE_ID = :P188_STUDY_SITE_ID,',
'                    blk_id = :P188_BLK_ID',
'              where obs = j.obs;     ',
'        end loop;       ',
'    END LOOP;',
'         ',
'    update edc_study_arm_block',
'       set blk_no = blk_no + :P188_ADD_BLOCK_NO',
'     where blk_id = :P188_BLK_ID;',
'',
'     COMMIT;     ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12146227741821821300)
,p_internal_uid=>11063553673469112743
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146231534199821308)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12146230330690821305)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EDC_STUDY_ARM_BLOCK_DTLS'
,p_attribute_03=>'DTLS_ID'
,p_attribute_04=>'BLK_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>11045280766058317215
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146231755036821309)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12146230330690821305)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EDC_STUDY_ARM_BLOCK_DTLS'
,p_attribute_03=>'DTLS_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>11045280986895317216
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146233344011821315)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12146227928836821300)
,p_internal_uid=>11045282575870317222
);
wwv_flow_imp.component_end;
end;
/
