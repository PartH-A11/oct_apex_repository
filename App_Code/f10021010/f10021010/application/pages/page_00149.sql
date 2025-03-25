prompt --application/pages/page_00149
begin
--   Manifest
--     PAGE: 00149
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
 p_id=>149
,p_tab_set=>'TS1'
,p_name=>'Arm Details'
,p_step_title=>'Arm Details'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(11045207488966824379)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2688616063517063880)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11046357760542050041)
,p_name=>'Dose Details'
,p_parent_plug_id=>wwv_flow_imp.id(2688616063517063880)
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ARMD_ID",',
'"STUDY_ARM_ID",',
'"STUDY_ID",',
'"ARMD_SH_NM",',
'"ARM_DOSE_LEVEL",',
'"ARMD_DESC",',
'"ARMD_DOSE",',
'"ARMD_CONTAINER",',
'"ARMD_INI",',
'"ARMD_MIN_SHP",',
'"ARMD_MAX_SHP",',
'"ARMD_MIN",',
'"CREATED_BY",',
'"CREATED_DT",',
'"UPDATED_BY",',
'"UPDATED_DT"',
'from "#OWNER#"."EDC_STUDY_ARM_DTLS"',
'where "STUDY_ARM_ID" = :P149_STUDY_ARM_ID',
''))
,p_display_when_condition=>'P149_STUDY_ARM_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
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
 p_id=>wwv_flow_imp.id(11046357977182050041)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358066709050042)
,p_query_column_id=>2
,p_column_alias=>'ARMD_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Armd Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(ARMD_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_STUDY_ARM_DTLS;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;'))
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'ARMD_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358170115050042)
,p_query_column_id=>3
,p_column_alias=>'STUDY_ARM_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Study Arm Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_column_default=>'P149_STUDY_ARM_ID'
,p_column_default_type=>'ITEM'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'STUDY_ARM_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358284337050042)
,p_query_column_id=>4
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Study Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_column_default=>'APP_EDC_STUDY_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'STUDY_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358383471050042)
,p_query_column_id=>5
,p_column_alias=>'ARMD_SH_NM'
,p_column_display_sequence=>5
,p_column_heading=>'Short<br> Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358463695050042)
,p_query_column_id=>6
,p_column_alias=>'ARM_DOSE_LEVEL'
,p_column_display_sequence=>17
,p_column_heading=>'Dose<br>Level'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358576720050042)
,p_query_column_id=>7
,p_column_alias=>'ARMD_DESC'
,p_column_display_sequence=>7
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'NO'
,p_column_width=>60
,p_column_height=>2
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'ARMD_DESC'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358658127050042)
,p_query_column_id=>8
,p_column_alias=>'ARMD_DOSE'
,p_column_display_sequence=>6
,p_column_heading=>'Strength'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>10
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'ARMD_DOSE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358763043050042)
,p_query_column_id=>9
,p_column_alias=>'ARMD_CONTAINER'
,p_column_display_sequence=>8
,p_column_heading=>'Content'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'ARMD_CONTAINER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358871810050042)
,p_query_column_id=>10
,p_column_alias=>'ARMD_INI'
,p_column_display_sequence=>13
,p_column_heading=>'Initial Shipment<br>Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046358957372050042)
,p_query_column_id=>11
,p_column_alias=>'ARMD_MIN_SHP'
,p_column_display_sequence=>14
,p_column_heading=>'Min. Shipment <br>Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046359069099050042)
,p_query_column_id=>12
,p_column_alias=>'ARMD_MAX_SHP'
,p_column_display_sequence=>15
,p_column_heading=>'Max. Shipment<br>Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046359177555050042)
,p_query_column_id=>13
,p_column_alias=>'ARMD_MIN'
,p_column_display_sequence=>16
,p_column_heading=>'Re-ordering <br>Level'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046359273963050042)
,p_query_column_id=>14
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'CREATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046359377426050042)
,p_query_column_id=>15
,p_column_alias=>'CREATED_DT'
,p_column_display_sequence=>10
,p_column_heading=>'Created Dt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'CREATED_DT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046359481004050042)
,p_query_column_id=>16
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'UPDATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046359564564050042)
,p_query_column_id=>17
,p_column_alias=>'UPDATED_DT'
,p_column_display_sequence=>12
,p_column_heading=>'Updated Dt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_ARM_DTLS'
,p_ref_column_name=>'UPDATED_DT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046361658950050047)
,p_plug_name=>'Arm Details'
,p_parent_plug_id=>wwv_flow_imp.id(2688616063517063880)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="min-width: 1000px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10896408852604570670)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046366187637050056)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046371061566058654)
,p_plug_name=>'Study Setup'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180981693407888)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11045204683056824372)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184883131407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046359865092050043)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11046357760542050041)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Add Row'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046362073885050047)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046362860582050049)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_button_name=>'GET_PREVIOUS_STUDY_ARM_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'&lt;'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_STUDY_ARM_ID'')'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046362671444050048)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_button_name=>'GET_NEXT_STUDY_ARM_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'&gt;'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_STUDY_ARM_ID'')'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046362477109050048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4134567788166079335)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_button_name=>'AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P149_STUDY_ARM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046361876130050047)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P149_STUDY_ARM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046359658274050043)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11046357760542050041)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."EDC_STUDY_ARM_DTLS"',
'where "STUDY_ARM_ID" = :P149_STUDY_ARM_ID'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046362263481050047)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11046361658950050047)
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
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11046367477070050060)
,p_branch_action=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.::P149_STUDY_ARM_ID:&P149_STUDY_ARM_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11046362671444050048)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11046367659866050060)
,p_branch_action=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.::P149_STUDY_ARM_ID:&P149_STUDY_ARM_ID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11046362860582050049)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11046367876731050060)
,p_branch_action=>'f?p=&APP_ID.:148:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11046368085413050060)
,p_branch_action=>'f?p=&APP_ID.:149:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134433800447524318)
,p_name=>'P149_ARM_NAME_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134433926682524319)
,p_name=>'P149_DESCRIPTION_CHANGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134433953847524320)
,p_name=>'P149_STATUS_CHANGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134434111773524321)
,p_name=>'P149_RATIO_CHANGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7949805961308506260)
,p_name=>'P149_RATIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Ratio </b> '
,p_source=>'RATIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'0=inactive 1=active'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046363088917050050)
,p_name=>'P149_STUDY_ARM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_source=>'STUDY_ARM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046363285167050051)
,p_name=>'P149_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
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
 p_id=>wwv_flow_imp.id(11046363481173050051)
,p_name=>'P149_ARM_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ARM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_colspan=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046363666274050051)
,p_name=>'P149_DESCRIPTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Description </b>'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>2
,p_colspan=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046363878250050051)
,p_name=>'P149_STATUS'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Status </b> '
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_ACTIVE_INACTIVE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''STATUS_ACTIVE_INACTIVE'' and lv.status=1',
'order by lv.sequence'))
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'0=inactive 1=active'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046364372969050052)
,p_name=>'P149_CREATED_ON'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046364578386050052)
,p_name=>'P149_CREATED_BY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046364782405050052)
,p_name=>'P149_UPDATED_ON'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046364982628050052)
,p_name=>'P149_UPDATED_BY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046365160702050053)
,p_name=>'P149_ARM_BLIND_DESC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_use_cache_before_default=>'NO'
,p_source=>'ARM_BLIND_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046365379123050053)
,p_name=>'P149_STUDY_ARM_ID_NEXT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046365584804050053)
,p_name=>'P149_STUDY_ARM_ID_PREV'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046365770270050054)
,p_name=>'P149_STUDY_ARM_ID_COUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(11046361658950050047)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11046360181751050045)
,p_tabular_form_region_id=>wwv_flow_imp.id(11046357760542050041)
,p_validation_name=>'STUDY_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'STUDY_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'STUDY_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11046360361818050045)
,p_tabular_form_region_id=>wwv_flow_imp.id(11046357760542050041)
,p_validation_name=>'ARMD_DESC not null'
,p_validation_sequence=>40
,p_validation=>'ARMD_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'ARMD_DESC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11046360578360050045)
,p_tabular_form_region_id=>wwv_flow_imp.id(11046357760542050041)
,p_validation_name=>'ARMD_DOSE not null'
,p_validation_sequence=>50
,p_validation=>'ARMD_DOSE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'ARMD_DOSE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11046360761473050046)
,p_tabular_form_region_id=>wwv_flow_imp.id(11046357760542050041)
,p_validation_name=>'ARMD_CONTAINER must be numeric'
,p_validation_sequence=>60
,p_validation=>'ARMD_CONTAINER'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'ARMD_CONTAINER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11046360980802050046)
,p_tabular_form_region_id=>wwv_flow_imp.id(11046357760542050041)
,p_validation_name=>'CREATED_DT must be a valid date'
,p_validation_sequence=>80
,p_validation=>'CREATED_DT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CREATED_DT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11046361178163050046)
,p_tabular_form_region_id=>wwv_flow_imp.id(11046357760542050041)
,p_validation_name=>'UPDATED_DT must be a valid date'
,p_validation_sequence=>100
,p_validation=>'UPDATED_DT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'UPDATED_DT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134459595943614602)
,p_validation_name=>'P149_ARM_NAME_CHANGE'
,p_validation_sequence=>110
,p_validation=>'P149_ARM_NAME_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Name" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ARM_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P149_STUDY_ARM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT ARM_NAME',
'      INTO V_ARM_NAME',
'      FROM EDC_STUDY_ARM',
'     WHERE STUDY_ARM_ID = :P149_STUDY_ARM_ID;',
'',
'    IF V_ARM_NAME != :P149_ARM_NAME THEN',
'      RETURN TRUE;',
'    ELSIF V_ARM_NAME IS NULL AND :P149_ARM_NAME IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_ARM_NAME IS NOT NULL AND :P149_ARM_NAME IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134433800447524318)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134434652351524327)
,p_validation_name=>'P149_DESCRIPTION_CHANGE'
,p_validation_sequence=>120
,p_validation=>'P149_DESCRIPTION_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Description" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESCRIPTION VARCHAR2(200);',
'BEGIN',
'  IF :P149_STUDY_ARM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT DESCRIPTION',
'      INTO V_DESCRIPTION',
'      FROM EDC_STUDY_ARM',
'     WHERE STUDY_ARM_ID = :P149_STUDY_ARM_ID;',
'',
'    IF V_DESCRIPTION != :P149_DESCRIPTION THEN',
'      RETURN TRUE;',
'    ELSIF V_DESCRIPTION IS NULL AND :P149_DESCRIPTION IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DESCRIPTION IS NOT NULL AND :P149_DESCRIPTION IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134433926682524319)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134435256604524333)
,p_validation_name=>'P149_STATUS_CHANGE'
,p_validation_sequence=>130
,p_validation=>'P149_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Status" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P149_STUDY_ARM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_ARM',
'     WHERE STUDY_ARM_ID = :P149_STUDY_ARM_ID;',
'',
'    IF V_STATUS != :P149_STATUS THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NULL AND :P149_STATUS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NOT NULL AND :P149_STATUS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134433953847524320)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134435930268524339)
,p_validation_name=>'P149_RATIO_CHANGE'
,p_validation_sequence=>140
,p_validation=>'P149_RATIO_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Ratio" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P149_STUDY_ARM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_ARM',
'     WHERE STUDY_ARM_ID = :P149_STUDY_ARM_ID;',
'',
'    IF V_STATUS != :P149_STATUS THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NULL AND :P149_STATUS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NOT NULL AND :P149_STATUS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134434111773524321)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134457068482609807)
,p_name=>'P149_ARM_NAME_CHANGE hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ARM_NAME VARCHAR2(200);',
'BEGIN',
'  IF :P149_STUDY_ARM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT ARM_NAME',
'      INTO V_ARM_NAME',
'      FROM EDC_STUDY_ARM',
'     WHERE STUDY_ARM_ID = :P149_STUDY_ARM_ID;',
'',
'    IF V_ARM_NAME != :P149_ARM_NAME THEN',
'      RETURN FALSE;',
'    ELSIF V_ARM_NAME IS NULL AND :P149_ARM_NAME IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_ARM_NAME IS NOT NULL AND :P149_ARM_NAME IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134457474697609808)
,p_event_id=>wwv_flow_imp.id(4134457068482609807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_ARM_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134457948274609809)
,p_event_id=>wwv_flow_imp.id(4134457068482609807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_ARM_NAME_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134434243970524322)
,p_name=>'P149_DESCRIPTION_CHANGE hide'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESCRIPTION VARCHAR2(200);',
'BEGIN',
'  IF :P149_STUDY_ARM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DESCRIPTION',
'      INTO V_DESCRIPTION',
'      FROM EDC_STUDY_ARM',
'     WHERE STUDY_ARM_ID = :P149_STUDY_ARM_ID;',
'',
'    IF V_DESCRIPTION != :P149_DESCRIPTION THEN',
'      RETURN FALSE;',
'    ELSIF V_DESCRIPTION IS NULL AND :P149_DESCRIPTION IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DESCRIPTION IS NOT NULL AND :P149_DESCRIPTION IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134434302819524323)
,p_event_id=>wwv_flow_imp.id(4134434243970524322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_DESCRIPTION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134434419304524324)
,p_event_id=>wwv_flow_imp.id(4134434243970524322)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_DESCRIPTION_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134434801469524328)
,p_name=>'P149_STATUS_CHANGE hide'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P149_STUDY_ARM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_ARM',
'     WHERE STUDY_ARM_ID = :P149_STUDY_ARM_ID;',
'',
'    IF V_STATUS != :P149_STATUS THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NULL AND :P149_STATUS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NOT NULL AND :P149_STATUS IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134434942346524329)
,p_event_id=>wwv_flow_imp.id(4134434801469524328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134434986375524330)
,p_event_id=>wwv_flow_imp.id(4134434801469524328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_STATUS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134435373183524334)
,p_name=>'P149_RATIO_CHANGE hide'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RATIO VARCHAR2(200);',
'BEGIN',
'  IF :P149_STUDY_ARM_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT RATIO',
'      INTO V_RATIO',
'      FROM EDC_STUDY_ARM',
'     WHERE STUDY_ARM_ID = :P149_STUDY_ARM_ID;',
'',
'    IF V_RATIO != :P149_RATIO THEN',
'      RETURN FALSE;',
'    ELSIF V_RATIO IS NULL AND :P149_RATIO IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_RATIO IS NOT NULL AND :P149_RATIO IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134435472069524335)
,p_event_id=>wwv_flow_imp.id(4134435373183524334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_RATIO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134435599533524336)
,p_event_id=>wwv_flow_imp.id(4134435373183524334)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_RATIO_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134458556084612054)
,p_name=>'P149_ARM_NAME_CHANGE show'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_ARM_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P149_STUDY_ARM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134458968264612055)
,p_event_id=>wwv_flow_imp.id(4134458556084612054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_ARM_NAME_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134434472045524325)
,p_name=>'P149_DESCRIPTION_CHANGE show'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_DESCRIPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P149_STUDY_ARM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134434549022524326)
,p_event_id=>wwv_flow_imp.id(4134434472045524325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_DESCRIPTION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134435062014524331)
,p_name=>'P149_STATUS_CHANGE show'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P149_STUDY_ARM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134435201007524332)
,p_event_id=>wwv_flow_imp.id(4134435062014524331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134435660842524337)
,p_name=>'P149_RATIO_CHANGE show'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_RATIO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P149_STUDY_ARM_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134435792348524338)
,p_event_id=>wwv_flow_imp.id(4134435660842524337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_RATIO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4135079055260133985)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4134567788166079335)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4135079510361134001)
,p_event_id=>wwv_flow_imp.id(4135079055260133985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_STUDY_ARM,&P149_STUDY_ARM_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046366371592050059)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_STUDY_ARM'
,p_attribute_02=>'EDC_STUDY_ARM'
,p_attribute_03=>'P149_STUDY_ARM_ID'
,p_attribute_04=>'STUDY_ARM_ID'
,p_internal_uid=>11046366371592050059
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046366580946050059)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'EDC_STUDY_ARM'
,p_attribute_03=>'P149_STUDY_ARM_ID'
,p_attribute_04=>'STUDY_ARM_ID'
,p_attribute_07=>'STUDY_ARM_ID'
,p_attribute_09=>'P149_STUDY_ARM_ID_NEXT'
,p_attribute_10=>'P149_STUDY_ARM_ID_PREV'
,p_attribute_13=>'P149_STUDY_ARM_ID_COUNT'
,p_internal_uid=>11046366580946050059
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046366789106050059)
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
'   SELECT NVL(MAX(STUDY_ARM_ID),0) + 1 ',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_STUDY_ARM;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P149_STUDY_ARM_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11046361876130050047)
,p_internal_uid=>11046366789106050059
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046366967477050059)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_STUDY_ARM'
,p_attribute_02=>'EDC_STUDY_ARM'
,p_attribute_03=>'P149_STUDY_ARM_ID'
,p_attribute_04=>'STUDY_ARM_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11046366967477050059
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046361285070050046)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11046357760542050041)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EDC_STUDY_ARM_DTLS'
,p_attribute_03=>'ARMD_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>11046361285070050046
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046361488916050046)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11046357760542050041)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EDC_STUDY_ARM_DTLS'
,p_attribute_03=>'ARMD_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>11046361488916050046
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046367177301050059)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11046362263481050047)
,p_internal_uid=>11046367177301050059
);
wwv_flow_imp.component_end;
end;
/
