prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_tab_set=>'TS1'
,p_name=>'Page Access Details'
,p_step_title=>'Page Access Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3789567290449567977)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>6
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146589856582325499)
,p_plug_name=>'Page Access'
,p_parent_plug_id=>wwv_flow_imp.id(3789567290449567977)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(12146595450045325506)
,p_name=>'Page Access Details'
,p_parent_plug_id=>wwv_flow_imp.id(3789567290449567977)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ACC_DET_ID",',
'"GRP_ACC_ID",',
'"PAGE_NO",',
'"CAN_SEE",',
'"CAN_CREATE",',
'"CAN_UPDATE",',
'"CAN_DELETE",',
'"CAN_QUERY",',
'"CAN_LOCKUNLOCK",',
'"CAN_SUBMIT",',
'"CAN_MONITOR",',
'"CAN_FREEZE",',
'"CREATED_BY",',
'"CREATED_DT",',
'"UPDATED_BY",',
'"UPDATED_DT"',
'from "#OWNER#"."EDC_GROUP_ACCESS_DET"',
'where "GRP_ACC_ID" = :P43_GRP_ACC_ID',
''))
,p_display_when_condition=>'P43_GRP_ACC_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>200
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146595643192325506)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146595729471325506)
,p_query_column_id=>2
,p_column_alias=>'ACC_DET_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Acc Det Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT nvl(max(ACC_DET_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_GROUP_ACCESS_DET;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;'))
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'ACC_DET_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146595846488325506)
,p_query_column_id=>3
,p_column_alias=>'GRP_ACC_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Grp Acc Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_column_default=>'P43_GRP_ACC_ID'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'GRP_ACC_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146595933495325506)
,p_query_column_id=>4
,p_column_alias=>'PAGE_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Page No'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12146521228636104789)
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'PAGE_NO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596028344325506)
,p_query_column_id=>5
,p_column_alias=>'CAN_SEE'
,p_column_display_sequence=>5
,p_column_heading=>'View'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_SEE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596130734325507)
,p_query_column_id=>6
,p_column_alias=>'CAN_CREATE'
,p_column_display_sequence=>6
,p_column_heading=>'Create'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_CREATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596245792325507)
,p_query_column_id=>7
,p_column_alias=>'CAN_UPDATE'
,p_column_display_sequence=>7
,p_column_heading=>'Update'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_UPDATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596329312325507)
,p_query_column_id=>8
,p_column_alias=>'CAN_DELETE'
,p_column_display_sequence=>8
,p_column_heading=>'Delete'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_DELETE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596446928325507)
,p_query_column_id=>9
,p_column_alias=>'CAN_QUERY'
,p_column_display_sequence=>9
,p_column_heading=>'Query'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_QUERY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596547961325507)
,p_query_column_id=>10
,p_column_alias=>'CAN_LOCKUNLOCK'
,p_column_display_sequence=>10
,p_column_heading=>'Review'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_LOCKUNLOCK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596634689325507)
,p_query_column_id=>11
,p_column_alias=>'CAN_SUBMIT'
,p_column_display_sequence=>11
,p_column_heading=>'Submit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_SUBMIT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596734553325507)
,p_query_column_id=>12
,p_column_alias=>'CAN_MONITOR'
,p_column_display_sequence=>12
,p_column_heading=>'Dispense'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_MONITOR'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146597250332325507)
,p_query_column_id=>13
,p_column_alias=>'CAN_FREEZE'
,p_column_display_sequence=>13
,p_column_heading=>'Approve'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11671084529125376187)
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CAN_FREEZE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596840786325507)
,p_query_column_id=>14
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>14
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CREATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146596933257325507)
,p_query_column_id=>15
,p_column_alias=>'CREATED_DT'
,p_column_display_sequence=>15
,p_column_heading=>'Created Dt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'CREATED_DT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146597026523325507)
,p_query_column_id=>16
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>16
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'UPDATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146597126135325507)
,p_query_column_id=>17
,p_column_alias=>'UPDATED_DT'
,p_column_display_sequence=>17
,p_column_heading=>'Updated Dt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_GROUP_ACCESS_DET'
,p_ref_column_name=>'UPDATED_DT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11996786711123290098)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1.5
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146871938989115309)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12146507135895073841)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146590238625325499)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P43_GRP_ACC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146597746060325507)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12146595450045325506)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146591036251325500)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_button_name=>'GET_PREVIOUS_GRP_ACC_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'&lt;'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_GRP_ACC_ID'')'
,p_button_condition=>'P43_GRP_ACC_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146590847216325500)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_button_name=>'GET_NEXT_GRP_ACC_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'&gt;'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_GRP_ACC_ID'')'
,p_button_condition=>'P43_GRP_ACC_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146597346459325507)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12146595450045325506)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Add Row'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146590656542325500)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146590027211325499)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P43_GRP_ACC_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146590456871325500)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P43_GRP_ACC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12146597554692325507)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12146595450045325506)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146602051313325515)
,p_branch_action=>'f?p=&FLOW_ID.:43:&SESSION.::&DEBUG.::P43_GRP_ACC_ID:&P43_GRP_ACC_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12146590847216325500)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146602244653325516)
,p_branch_action=>'f?p=&FLOW_ID.:43:&SESSION.::&DEBUG.::P43_GRP_ACC_ID:&P43_GRP_ACC_ID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12146591036251325500)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146602432861325516)
,p_branch_action=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'DELETE'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146602640178325517)
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:43:P43_GRP_ACC_ID:&P43_GRP_ACC_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>35
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,CREATE'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 19-MAR-2013 07:59 by KRUNAL.BHATT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146602848529325517)
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146591232346325502)
,p_name=>'P43_GRP_ACC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'GRP_ACC_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146591440996325502)
,p_name=>'P43_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
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
 p_id=>wwv_flow_imp.id(12146591643735325503)
,p_name=>'P43_GRP_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Application Group </b>'
,p_source=>'GRP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GROUP_NAME_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT grp_name d, grp_id r FROM EDC_GROUP_MAST',
'--where study_id = :APP_EDC_STUDY_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select --'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146591844524325503)
,p_name=>'P43_ROLE_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Role'
,p_source=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r from edc_user_role',
'    where type = :P43_ROLE_TYPE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- - Select - -'
,p_lov_cascade_parent_items=>'P43_ROLE_TYPE'
,p_ajax_items_to_submit=>'P43_ROLE_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146592036029325503)
,p_name=>'P43_ROLE_TYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role Type'
,p_source=>'ROLE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_STUDY_CONTACT_TYPE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''STUDY_CONTACT_TYPE'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- - Select  - -'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146592225614325503)
,p_name=>'P43_CAN_SEE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_SEE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: View ;1'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146592437401325503)
,p_name=>'P43_CAN_CREATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_CREATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: Create ;1'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146592647044325503)
,p_name=>'P43_CAN_UPDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: Update ;1'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146592831954325504)
,p_name=>'P43_CAN_DELETE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_DELETE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: Delete ;1'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146593031272325504)
,p_name=>'P43_CAN_QUERY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_QUERY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: Query ;1'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146593248258325504)
,p_name=>'P43_CAN_LOCKUNLOCK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_LOCKUNLOCK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: Review ;1'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146593442795325504)
,p_name=>'P43_CAN_SUBMIT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_SUBMIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: Submit ;1'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146593627025325504)
,p_name=>'P43_CAN_MONITOR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_MONITOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: Dispense;1'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146593835795325504)
,p_name=>'P43_CREATED_BY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly;"'
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
 p_id=>wwv_flow_imp.id(12146594040340325505)
,p_name=>'P43_CREATED_DT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146594240889325505)
,p_name=>'P43_UPDATED_BY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly;"'
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
 p_id=>wwv_flow_imp.id(12146594442212325505)
,p_name=>'P43_UPDATED_DT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated Date'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146594644482325505)
,p_name=>'P43_GRP_ACC_ID_NEXT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146594850562325505)
,p_name=>'P43_GRP_ACC_ID_PREV'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146595043037325505)
,p_name=>'P43_GRP_ACC_ID_COUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_colspan=>1
,p_rowspan=>1
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12146595238699325506)
,p_name=>'P43_CAN_FREEZE'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_imp.id(12146589856582325499)
,p_use_cache_before_default=>'NO'
,p_source=>'CAN_FREEZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2: Approve ;1'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146598048801325509)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'PAGE_NO must be numeric'
,p_validation_sequence=>30
,p_validation=>'PAGE_NO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'PAGE_NO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146598248471325509)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CAN_SEE must be numeric'
,p_validation_sequence=>40
,p_validation=>'CAN_SEE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CAN_SEE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146598425356325509)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CAN_CREATE must be numeric'
,p_validation_sequence=>50
,p_validation=>'CAN_CREATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CAN_CREATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146598645565325510)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CAN_UPDATE must be numeric'
,p_validation_sequence=>60
,p_validation=>'CAN_UPDATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CAN_UPDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146598846488325510)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CAN_DELETE must be numeric'
,p_validation_sequence=>70
,p_validation=>'CAN_DELETE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CAN_DELETE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146599043475325510)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CAN_QUERY must be numeric'
,p_validation_sequence=>80
,p_validation=>'CAN_QUERY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CAN_QUERY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146599238014325510)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CAN_LOCKUNLOCK must be numeric'
,p_validation_sequence=>90
,p_validation=>'CAN_LOCKUNLOCK'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CAN_LOCKUNLOCK'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146599448038325510)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CAN_SUBMIT must be numeric'
,p_validation_sequence=>100
,p_validation=>'CAN_SUBMIT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CAN_SUBMIT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146599645933325510)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CAN_MONITOR must be numeric'
,p_validation_sequence=>110
,p_validation=>'CAN_MONITOR'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CAN_MONITOR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12146599853980325510)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'CREATED_DT must be a valid date'
,p_validation_sequence=>130
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
 p_id=>wwv_flow_imp.id(12146600035489325510)
,p_tabular_form_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_validation_name=>'UPDATED_DT must be a valid date'
,p_validation_sequence=>150
,p_validation=>'UPDATED_DT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'UPDATED_DT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146601135700325515)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_GROUP_ACCESS'
,p_attribute_02=>'EDC_GROUP_ACCESS'
,p_attribute_03=>'P43_GRP_ACC_ID'
,p_attribute_04=>'GRP_ACC_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11045650367558821422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146601345335325515)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'EDC_GROUP_ACCESS'
,p_attribute_03=>'P43_GRP_ACC_ID'
,p_attribute_04=>'GRP_ACC_ID'
,p_attribute_09=>'P43_GRP_ACC_ID_NEXT'
,p_attribute_10=>'P43_GRP_ACC_ID_PREV'
,p_attribute_13=>'P43_GRP_ACC_ID_COUNT'
,p_process_error_message=>'Unable to run Get Next or Previous Primary Key Value process.'
,p_internal_uid=>11045650577193821422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146601555879325515)
,p_process_sequence=>5
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
'   SELECT nvl(max(grp_acc_id),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_GROUP_ACCESS;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'  end; ',
'begin ',
'  :P43_GRP_ACC_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(12146590027211325499)
,p_internal_uid=>11045650787737821422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146600152617325511)
,p_process_sequence=>7
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EDC_GROUP_ACCESS_DET'
,p_attribute_03=>'ACC_DET_ID'
,p_process_error_message=>'Unable to process update.'
,p_process_when_button_id=>wwv_flow_imp.id(12146597746060325507)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>11045649384475821418
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146600326146325511)
,p_process_sequence=>9
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12146595450045325506)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EDC_GROUP_ACCESS_DET'
,p_attribute_03=>'ACC_DET_ID'
,p_process_error_message=>'Unable to process delete.'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>11045649558004821418
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146601736944325515)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_GROUP_ACCESS'
,p_attribute_02=>'EDC_GROUP_ACCESS'
,p_attribute_03=>'P43_GRP_ACC_ID'
,p_attribute_04=>'GRP_ACC_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_GROUP_ACCESS.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11045650968802821422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146600738521325514)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_UPDATE_PAGE_ACCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PAGES     VARCHAR2(500);',
'    V_PAGE_NO   VARCHAR2(5);',
'    V_MAX       NUMBER; ',
'    V_MAIN_PAGE NUMBER;',
'BEGIN',
'    delete',
'      from EDC_GROUP_ACCESS_DET_temp;',
'',
'    SELECT GRP_DET_PAGES',
'      INTO V_PAGES',
'      FROM EDC_GROUP_MAST',
'     WHERE GRP_ID = :P43_GRP_ID;',
'     ',
'    V_PAGE_NO := '''';',
'     ',
'    SELECT NVL(MAX(ACC_DET_ID),0) + 1',
'      INTO V_MAX               ',
'      FROM EDC_GROUP_ACCESS_DET;',
'',
'    SELECT GRP_MAIN_PAGE',
'      INTO V_MAIN_PAGE',
'      FROM EDC_GROUP_MAST',
'     WHERE GRP_ID = :P43_GRP_ID;',
'',
'    INSERT INTO EDC_GROUP_ACCESS_DET_temp',
'    (ACC_DET_ID,GRP_ACC_ID,PAGE_NO,CAN_SEE,CAN_CREATE,CAN_UPDATE,CAN_DELETE,CAN_QUERY,CAN_LOCKUNLOCK,CAN_SUBMIT,CAN_MONITOR,CAN_FREEZE)',
'    VALUES',
'    (V_MAX,:P43_GRP_ACC_ID,V_MAIN_PAGE,NVL(:P43_CAN_SEE,0),NVL(:P43_CAN_CREATE,0),NVL(:P43_CAN_UPDATE,0),',
'    NVL(:P43_CAN_DELETE,0),NVL(:P43_CAN_QUERY,0),NVL(:P43_CAN_LOCKUNLOCK,0),NVL(:P43_CAN_SUBMIT,0),NVL(:P43_CAN_MONITOR,0),NVL(:P43_CAN_FREEZE,0));',
'',
'    V_MAX := V_MAX + 1;',
'',
'',
'    FOR I IN 1 .. LENGTH(V_PAGES)',
'    LOOP',
'        IF SUBSTR(V_PAGES,I,1) = '':'' THEN',
'            INSERT INTO EDC_GROUP_ACCESS_DET_temp',
'            (ACC_DET_ID,GRP_ACC_ID,PAGE_NO,CAN_SEE,CAN_CREATE,CAN_UPDATE,CAN_DELETE,CAN_QUERY,CAN_LOCKUNLOCK,CAN_SUBMIT,CAN_MONITOR,CAN_FREEZE)',
'            VALUES',
'            (V_MAX,:P43_GRP_ACC_ID,TO_NUMBER(V_PAGE_NO),NVL(:P43_CAN_SEE,0),NVL(:P43_CAN_CREATE,0),NVL(:P43_CAN_UPDATE,0),',
'            NVL(:P43_CAN_DELETE,0),NVL(:P43_CAN_QUERY,0),NVL(:P43_CAN_LOCKUNLOCK,0),NVL(:P43_CAN_SUBMIT,0),NVL(:P43_CAN_MONITOR,0),NVL(:P43_CAN_FREEZE,0));',
'',
'            --V_PAGE_NO := V_PAGE_NO||SUBSTR(V_PAGES,I,1);',
'            V_PAGE_NO := '''';',
'            V_MAX := V_MAX + 1;',
'        ELSE',
'            V_PAGE_NO := V_PAGE_NO||SUBSTR(V_PAGES,I,1);  ',
'        END IF;          ',
'     END LOOP; ',
'     ',
'     INSERT INTO EDC_GROUP_ACCESS_DET_temp',
'     (ACC_DET_ID,GRP_ACC_ID,PAGE_NO,CAN_SEE,CAN_CREATE,CAN_UPDATE,CAN_DELETE,CAN_QUERY,CAN_LOCKUNLOCK,CAN_SUBMIT,CAN_MONITOR,CAN_FREEZE)',
'     VALUES',
'     (V_MAX,:P43_GRP_ACC_ID,TO_NUMBER(V_PAGE_NO),NVL(:P43_CAN_SEE,0),NVL(:P43_CAN_CREATE,0),NVL(:P43_CAN_UPDATE,0),',
'     NVL(:P43_CAN_DELETE,0),NVL(:P43_CAN_QUERY,0),NVL(:P43_CAN_LOCKUNLOCK,0),NVL(:P43_CAN_SUBMIT,0),NVL(:P43_CAN_MONITOR,0),NVL(:P43_CAN_FREEZE,0));',
'',
'     V_MAX := V_MAX + 1;',
'     merge into EDC_GROUP_ACCESS_DET a',
'     using EDC_GROUP_ACCESS_DET_TEMP b',
'        on (a.GRP_ACC_ID = b.GRP_ACC_ID ',
'       and a.page_no = b.page_no',
'       and a.grp_Acc_id = :P43_GRP_ACC_ID)',
'/*  Commented by Nikhil.B 05-12-2017, Because while clicking ''Save'' button all existing Page Access Details were updated with the checkbox selected....',
'      when matched then ',
'    update set a.CAN_SEE = NVL(b.CAN_SEE,0),',
'               a.CAN_CREATE = NVL(b.CAN_CREATE,0),',
'               a.CAN_UPDATE = NVL(b.CAN_UPDATE,0),',
'               a.CAN_DELETE = NVL(b.CAN_DELETE,0),',
'               a.CAN_QUERY = NVL(b.CAN_QUERY,0),',
'               a.CAN_LOCKUNLOCK = NVL(b.CAN_LOCKUNLOCK,0),',
'               a.CAN_SUBMIT = NVL(b.CAN_SUBMIT,0),',
'               a.CAN_MONITOR = NVL(b.CAN_MONITOR,0),',
'               a.CAN_FREEZE = NVL(b.CAN_FREEZE,0)',
'*/',
'      when NOT MATCHED THEN',
'    INSERT (a.ACC_DET_ID,a.GRP_ACC_ID,a.PAGE_NO,a.CAN_SEE,a.CAN_CREATE,a.CAN_UPDATE,a.CAN_DELETE,a.CAN_QUERY,a.CAN_LOCKUNLOCK,a.CAN_SUBMIT,a.CAN_MONITOR,a.CAN_FREEZE)',
'    VALUES (b.ACC_DET_ID,b.GRP_ACC_ID,b.PAGE_NO,b.CAN_SEE,b.CAN_CREATE,b.CAN_UPDATE,b.CAN_DELETE,b.CAN_QUERY,b.CAN_LOCKUNLOCK,b.CAN_SUBMIT,b.CAN_MONITOR,b.CAN_FREEZE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Page Access modified.'
,p_internal_uid=>11045649970379821421
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12146600951297325515)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_imp.id(12356297412986077749)
,p_internal_uid=>11045650183155821422
);
wwv_flow_imp.component_end;
end;
/
