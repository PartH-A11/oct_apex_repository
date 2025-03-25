prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_tab_set=>'TS1'
,p_name=>'Field Detail'
,p_step_title=>'Field Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10137812945643765555)
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
 p_id=>wwv_flow_imp.id(10137816622746831171)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12146507135895073841)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10138166397226401184)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146129931169911979)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10137799960353765502)
,p_plug_name=>'Field Detail'
,p_parent_plug_id=>wwv_flow_imp.id(10138166397226401184)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10138219269496880708)
,p_name=>'Item Detail'
,p_parent_plug_id=>wwv_flow_imp.id(10138166397226401184)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"FD_ID",',
'"FD_ID" FD_ID_DISPLAY,',
'FM_ID,',
'"PARAM_ID",',
'"FD_LABEL",',
'"STATUS",',
'"CREATED_BY",',
'"CREATED_DT",',
'"UPDATED_BY",',
'"UPDATED_DT"',
'from "#OWNER#"."IWRS_FIELD_DET"',
'where fm_id = :P72_FM_ID',
'order by param_id',
''))
,p_display_when_condition=>'P72_FM_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138219850389880714)
,p_query_column_id=>1
,p_column_alias=>'FD_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'IWRS_FIELD_DET'
,p_ref_column_name=>'FD_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138220269319880715)
,p_query_column_id=>2
,p_column_alias=>'FD_ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Fd Id'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'IWRS_FIELD_DET'
,p_ref_column_name=>'FD_ID_DISPLAY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138166251244401183)
,p_query_column_id=>3
,p_column_alias=>'FM_ID'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P72_FM_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138220710110880716)
,p_query_column_id=>4
,p_column_alias=>'PARAM_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Visit'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(10138267783052336051)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'IWRS_FIELD_DET'
,p_ref_column_name=>'PARAM_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138221130272880716)
,p_query_column_id=>5
,p_column_alias=>'FD_LABEL'
,p_column_display_sequence=>6
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'IWRS_FIELD_DET'
,p_ref_column_name=>'FD_LABEL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2504542189979317507)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>11
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Active;1,Inactive;0'
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'--Select--'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138221504236880716)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'IWRS_FIELD_DET'
,p_ref_column_name=>'CREATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138221913188880717)
,p_query_column_id=>8
,p_column_alias=>'CREATED_DT'
,p_column_display_sequence=>8
,p_column_heading=>'Created Dt'
,p_use_as_row_header=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'IWRS_FIELD_DET'
,p_ref_column_name=>'CREATED_DT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138222251462880717)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'IWRS_FIELD_DET'
,p_ref_column_name=>'UPDATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138222701817880717)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_DT'
,p_column_display_sequence=>10
,p_column_heading=>'Updated Dt'
,p_use_as_row_header=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'IWRS_FIELD_DET'
,p_ref_column_name=>'UPDATED_DT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138231703959880737)
,p_query_column_id=>11
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10138225786778880725)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10138219269496880708)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10137800461264765502)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P72_FM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10138225642675880725)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10138219269496880708)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10137800658714765502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10138225506899880725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10138219269496880708)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10137800379636765502)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P72_FM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10137800550287765502)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P72_FM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10138225708661880725)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10138219269496880708)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10137802275471765507)
,p_branch_action=>'f?p=&APP_ID.:71:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10138232114943880737)
,p_branch_action=>'f?p=&APP_ID.:72:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10138225642675880725)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10137802673778765508)
,p_name=>'P72_FM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_use_cache_before_default=>'NO'
,p_source=>'FM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10137803096585765518)
,p_name=>'P72_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page'
,p_source=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10137803522245765521)
,p_name=>'P72_FM_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'FM_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(10137803867010765521)
,p_name=>'P72_FM_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'FM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(10137804340602765522)
,p_name=>'P72_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(10137804678161765523)
,p_name=>'P72_CREATED_DT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Dt'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10137805136017765523)
,p_name=>'P72_UPDATED_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(10137805504022765524)
,p_name=>'P72_UPDATED_DT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10137799960353765502)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated Dt'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10138227350128880730)
,p_tabular_form_region_id=>wwv_flow_imp.id(10138219269496880708)
,p_validation_name=>'PARAM_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'PARAM_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(10138225642675880725)
,p_associated_column=>'PARAM_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10138227828633880731)
,p_tabular_form_region_id=>wwv_flow_imp.id(10138219269496880708)
,p_validation_name=>'CREATED_DT must be a valid date'
,p_validation_sequence=>60
,p_validation=>'CREATED_DT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_imp.id(10138225642675880725)
,p_associated_column=>'CREATED_DT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10138228151643880731)
,p_tabular_form_region_id=>wwv_flow_imp.id(10138219269496880708)
,p_validation_name=>'UPDATED_DT must be a valid date'
,p_validation_sequence=>80
,p_validation=>'UPDATED_DT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_imp.id(10138225642675880725)
,p_associated_column=>'UPDATED_DT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10137806255406765527)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from IWRS_FIELD_MST'
,p_attribute_02=>'IWRS_FIELD_MST'
,p_attribute_03=>'P72_FM_ID'
,p_attribute_04=>'FM_ID'
,p_internal_uid=>9036855487265261434
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10138228457862880731)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10138219269496880708)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'IWRS_FIELD_DET'
,p_attribute_03=>'FD_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10137800461264765502)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>9037277689721376638
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10138228876419880733)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10138219269496880708)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'IWRS_FIELD_DET'
,p_attribute_03=>'FD_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>9037278108278376640
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10137806678572765528)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of IWRS_FIELD_MST'
,p_attribute_02=>'IWRS_FIELD_MST'
,p_attribute_03=>'P72_FM_ID'
,p_attribute_04=>'FM_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>9036855910431261435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10137807051023765528)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10137800550287765502)
,p_internal_uid=>9036856282882261435
);
wwv_flow_imp.component_end;
end;
/
