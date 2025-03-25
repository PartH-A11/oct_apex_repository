prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_tab_set=>'TS1'
,p_name=>'Site Enroll Details'
,p_step_title=>'Site Enroll Details'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function res_chng_dyn_hide_show(){',
'    apex.server.process(',
'        ''RES_DYN_HIDE_SHOW'',                             // Process or AJAX Callback name',
'        {},  // Parameter "x01"',
'        {',
'            success: function (pData) {             // Success Javascript',
'                eval(pData);',
'                console.log(pData);',
'            },',
'            dataType: "text"                        // Response type (here: plain text)',
'        }',
'    );',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//setTimeout(function() {',
'   // res_chng_dyn_hide_show();',
'  //}, 2000);'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(776936267913599658)
,p_plug_name=>'Setting Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11045390574948926433)
,p_name=>'Site Contacts'
,p_parent_plug_id=>wwv_flow_imp.id(776936267913599658)
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>32
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'CM.SITE_CONTACT_ID,',
'CM.STUDY_SITE_ID,',
'--CC.PREFIX',
'CM.DESIGNATION,',
'CM.FIRST_NAME,',
'CM.LAST_NAME,',
'CM.EMAIL,',
'CM.PHONE,',
'CM.FAX,',
'CM.ROLE,',
'CM.NOTES,',
'CM.STATUS,',
'CM.CONS "Consignee"',
'from EDC_SITE_CONTACTS CM',
'WHERE CM.study_site_id = :P17_STUDY_SITE_ID'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P17_STUDY_SITE_ID IS NOT NULL AND :APP_EDC_ROLE_ID NOT IN ',
'(19,33)'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_items_to_submit=>'P17_STUDY_SITE_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183286521407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
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
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------ app : 187 QUERY',
'select ',
'CM.SITE_CONTACT_ID,',
'CM.STUDY_SITE_ID,',
'CC.PREFIX DESIGNATION,',
'CC.FIRST_NAME,',
'CC.LAST_NAME,',
'CC.EMAIL,',
'CC.PHONE,',
'CC.FAX,',
'CM.ROLE,',
'CM.NOTES,',
'CM.STATUS',
'from EDC_SITE_CONTACTS CM,CRO_SITE_CONTACT_MST CC',
'WHERE CM.SITE_CONT_ID = CC.SITE_CONT_ID ',
'and CM.study_site_id = :P17_STUDY_SITE_ID;',
'---------eND ----------------------------------'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045390785140926435)
,p_query_column_id=>1
,p_column_alias=>'SITE_CONTACT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_SITE_CONTACT_ID:#SITE_CONTACT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_alignment=>'CENTER'
,p_report_column_required_role=>wwv_flow_imp.id(11045207987044824391)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045390871000926436)
,p_query_column_id=>2
,p_column_alias=>'STUDY_SITE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Study Site Id'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'STUDY_SITE_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046396976276171834)
,p_query_column_id=>3
,p_column_alias=>'DESIGNATION'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045399258168926464)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'DESIGNATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045391060656926436)
,p_query_column_id=>4
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'First Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'FIRST_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045391176786926436)
,p_query_column_id=>5
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Last Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'LAST_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045391460001926436)
,p_query_column_id=>6
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>8
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'EMAIL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045391381498926436)
,p_query_column_id=>7
,p_column_alias=>'PHONE'
,p_column_display_sequence=>9
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'PHONE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045391577566926436)
,p_query_column_id=>8
,p_column_alias=>'FAX'
,p_column_display_sequence=>11
,p_column_heading=>'Fax'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'FAX'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045391264459926436)
,p_query_column_id=>9
,p_column_alias=>'ROLE'
,p_column_display_sequence=>6
,p_column_heading=>'Role'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045399470685926464)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'ROLE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045391656761926436)
,p_query_column_id=>10
,p_column_alias=>'NOTES'
,p_column_display_sequence=>10
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'NOTES'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045391769494926436)
,p_query_column_id=>11
,p_column_alias=>'STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045224178643133789)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'STATUS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2930720725223261460)
,p_query_column_id=>12
,p_column_alias=>'Consignee'
,p_column_display_sequence=>12
,p_column_heading=>'Consignee'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045391872169926438)
,p_plug_name=>'Site Enroll Details'
,p_parent_plug_id=>wwv_flow_imp.id(776936267913599658)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>22
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11045395256728926449)
,p_name=>'Site Contacts'
,p_parent_plug_id=>wwv_flow_imp.id(776936267913599658)
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>42
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "SITE_CONTACT_ID", ',
'"STUDY_SITE_ID",',
'"DESIGNATION",',
'"FIRST_NAME",',
'"LAST_NAME",',
'"ROLE",',
'"PHONE",',
'"EMAIL",',
'"FAX",',
'"NOTES",',
'"STATUS"',
'from "#OWNER#"."EDC_SITE_CONTACTS" ',
' where study_site_id=:P17_STUDY_SITE_ID ',
'  ',
''))
,p_display_condition_type=>'NEVER'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183286521407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045395473380926449)
,p_query_column_id=>1
,p_column_alias=>'SITE_CONTACT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_SITE_CONTACT_ID:#SITE_CONTACT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'SITE_CONTACT_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045395578396926449)
,p_query_column_id=>2
,p_column_alias=>'STUDY_SITE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Study Site Id'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'STUDY_SITE_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045395662379926449)
,p_query_column_id=>3
,p_column_alias=>'DESIGNATION'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045399258168926464)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'DESIGNATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045395788086926449)
,p_query_column_id=>4
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'First Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'FIRST_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045395876017926449)
,p_query_column_id=>5
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Last Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'LAST_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045395984971926449)
,p_query_column_id=>6
,p_column_alias=>'ROLE'
,p_column_display_sequence=>6
,p_column_heading=>'Role'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045399470685926464)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'ROLE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045396088467926449)
,p_query_column_id=>7
,p_column_alias=>'PHONE'
,p_column_display_sequence=>9
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'PHONE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045396163456926449)
,p_query_column_id=>8
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>8
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'EMAIL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045396270256926449)
,p_query_column_id=>9
,p_column_alias=>'FAX'
,p_column_display_sequence=>10
,p_column_heading=>'Fax'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'FAX'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045396374871926449)
,p_query_column_id=>10
,p_column_alias=>'NOTES'
,p_column_display_sequence=>11
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'NOTES'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045396466656926449)
,p_query_column_id=>11
,p_column_alias=>'STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_SITE_CONTACTS'
,p_ref_column_name=>'STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045889570632270573)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_imp.id(776936267913599658)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180981693407888)
,p_plug_display_sequence=>12
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(11045204683056824372)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184883131407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045396771218926451)
,p_plug_name=>'Site Enrolle Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046394282811048710)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045392264033926439)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_condition=>'P17_STUDY_SITE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
,p_button_comment=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045392680093926440)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4134567884262079336)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_button_name=>'AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P17_STUDY_SITE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045396564844926449)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045390574948926433)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18:P18_STUDY_SITE_ID:&P17_STUDY_SITE_ID.'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045392068890926439)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enroll Site'
,p_button_position=>'CREATE'
,p_button_condition=>'P17_STUDY_SITE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045392459643926439)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045391872169926438)
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
,p_button_comment=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11045398263392926457)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930717066682261424)
,p_name=>'P17_EC_ADDRESS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(4000);',
'begin',
'select Addr into v_add from EDC_SITES where site_id in(select site_id from EDC_STUDY_SITES where STUDY_SITE_id = :P17_STUDY_SITE_ID);',
'return v_add;',
'exception when others then return null;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Address</b>'
,p_source=>'EC_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>500
,p_cHeight=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930717222928261425)
,p_name=>'P17_CITY'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930717304863261426)
,p_name=>'P17_STATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_source=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930717392629261427)
,p_name=>'P17_ZIP_CODE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_source=>'ZIP_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930717731190261430)
,p_name=>'P17_EC_ADDRESS_CHANGE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
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
 p_id=>wwv_flow_imp.id(2930717835888261431)
,p_name=>'P17_CITY_CHANGE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930717901952261432)
,p_name=>'P17_STATE_CHANGE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2930718004916261433)
,p_name=>'P17_ZIP_CODE_CHANGE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4128996461749882935)
,p_name=>'P17_USER_ID_CHANGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
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
 p_id=>wwv_flow_imp.id(4134407838698424401)
,p_name=>'P17_SITE_NUMBER_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
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
 p_id=>wwv_flow_imp.id(4134488342313791785)
,p_name=>'P17_SITE_ID_CHANGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
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
 p_id=>wwv_flow_imp.id(4134568958894079347)
,p_name=>'P17_INIT_QTY_CHANGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134569090854079348)
,p_name=>'P17_REG_QTY_CHANGE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4134577949526103705)
,p_name=>'P17_STATUS_CHANGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
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
 p_id=>wwv_flow_imp.id(4134578794139103713)
,p_name=>'P17_DESCRIPTION_CHANGE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
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
 p_id=>wwv_flow_imp.id(4136999533186973306)
,p_name=>'P17_INIT_QTY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Initial Block'
,p_post_element_text=>'* 2 Kits'
,p_source=>'INIT_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4136999623570973307)
,p_name=>'P17_REG_QTY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Replenishment Block'
,p_post_element_text=>'* 2 Kits'
,p_source=>'REG_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4139086248381916307)
,p_name=>'P17_COUNTRY_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4139086522320916309)
,p_name=>'P17_REPL_QTY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Minimum Kit Quantity for<br>Reshipment Trigger'
,p_post_element_text=>' per Arm'
,p_source=>'REPL_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4139086583780916310)
,p_name=>'P17_REPL_QTY_CHANGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason For Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045392864149926441)
,p_name=>'P17_APPROVAL_DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_APP_DATE VARCHAR2(12);',
'BEGIN',
'SELECT TO_CHAR(APP_DATE,''DD-MON-YYYY'') ',
'  INTO V_APP_DATE',
'  FROM EDC_PROTOCOL_APPROVAL ',
' WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
' ',
' RETURN V_APP_DATE;',
' ',
'EXCEPTION',
' WHEN NO_DATA_FOUND THEN ',
'   NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Approval Date'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(APP_DATE,''DD-MON-YYYY'') FROM EDC_PROTOCOL_APPROVAL ',
' WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly = readonly;'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_read_only_when=>':APP_EDC_ROLE_ID IN (17, 19 /* CRA, PM */)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045393060262926443)
,p_name=>'P17_DESCRIPTION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Comments </b>'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>100
,p_cHeight=>2
,p_colspan=>2
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>':APP_EDC_ROLE_ID IN (17, 19, 33 /* CRA, PM */)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045393285935926443)
,p_name=>'P17_ENABLED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'ENABLED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045393488566926444)
,p_name=>'P17_END_DATE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045393669173926444)
,p_name=>'P17_SITE_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site'
,p_source=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INVNAME || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '')'' AS D, SITE_ID AS R',
'  FROM EDC_SITES',
'  WHERE SITE_ID IS NOT NULL',
'  AND :P17_STUDY_SITE_ID IS NOT NULL',
'  and (SITE_ID NOT IN(select SITE_ID FROM EDC_STUDY_SITES) OR SITE_ID = :P17_SITE_ID)',
'UNION',
'SELECT INVNAME || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '')'' AS D, SITE_ID AS R',
'  FROM EDC_SITES',
'  WHERE SITE_ID NOT IN(SELECT SITE_ID FROM EDC_STUDY_SITES)',
'  AND :P17_STUDY_SITE_ID IS NULL;'))
,p_cSize=>80
,p_cMaxlength=>255
,p_colspan=>2
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>':APP_EDC_ROLE_ID IN (17, 19, 33 /* CRA, PM */)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045393864117926444)
,p_name=>'P17_SITE_NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ID VARCHAR2(400);',
'BEGIN',
'    SELECT LPAD(NVL(MAX(STUDY_SITE_ID),0)+1,2,''0'') AS CNT INTO V_ID FROM EDC_STUDY_SITES;',
'    RETURN V_ID;',
'EXCEPTION WHEN OTHERS THEN RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Site Number'
,p_source=>'SITE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>6
,p_tag_attributes=>'readonly=''readonly'''
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>':APP_EDC_ROLE_ID IN (17, 19 /* CRA, PM */)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045394064793926445)
,p_name=>'P17_START_DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045394263091926445)
,p_name=>'P17_STATUS'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'Status'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_ENROLL_SITE_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''ENROLL_SITE_STATUS'' and lv.status=1',
'order by lv.sequence'))
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045394465131926446)
,p_name=>'P17_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
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
 p_id=>wwv_flow_imp.id(11045394688166926446)
,p_name=>'P17_STUDY_SITE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_source=>'STUDY_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11045394879540926446)
,p_name=>'P17_USER_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11045391872169926438)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CRA'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FIRSTNAME || '' '' || LASTNAME DISPLAY_VALUE, A.USER_ID RETURN_VALUE',
'  FROM EDC_USERS A',
'  JOIN EDC_STUDY_CONTACT B',
'    ON A.USER_ID = B.CONTACT_ID',
'   AND B.TYPE = 1',
'   AND A.COUNTRY_ID = B.COUNTRY_ID',
'   AND A.COUNTRY_ID = :P17_COUNTRY_ID',
'   AND A.ROLE_ID = 17',
'   AND B.STATUS != 0',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P17_COUNTRY_ID'
,p_ajax_items_to_submit=>'P17_COUNTRY_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>':APP_EDC_ROLE_ID IN (17, 19, 33/* CRA, PM */)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11045397079964926455)
,p_validation_name=>'UNIQUE_SITE_NUMBER'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EDC_STUDY_SITES where SITE_NUMBER=:P17_SITE_NUMBER ',
'and study_id=:P17_STUDY_ID and nvl2(:P17_STUDY_SITE_ID,:P17_STUDY_SITE_ID,1)!=nvl2(:P17_STUDY_SITE_ID,STUDY_SITE_ID,2)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Site number must be unique.'
,p_validation_condition=>'SAVE,CREATE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(11045393864117926444)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11045397268071926455)
,p_validation_name=>'UNIQUE_SITE'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EDC_STUDY_SITES where SITE_ID=:P17_SITE_ID ',
'and study_id=:P17_STUDY_ID and nvl2(:P17_STUDY_SITE_ID,:P17_STUDY_SITE_ID,1)!=nvl2(:P17_STUDY_SITE_ID,STUDY_SITE_ID,2)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Site already enrolled.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(11045393669173926444)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134411098672449441)
,p_validation_name=>'P17_SITE_NUMBER_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P17_SITE_NUMBER_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Site Number" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SITE_NUMBER VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT SITE_NUMBER',
'      INTO V_SITE_NUMBER',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_SITE_NUMBER != :P17_SITE_NUMBER THEN',
'      RETURN TRUE;',
'    ELSIF V_SITE_NUMBER IS NULL AND :P17_SITE_NUMBER IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_SITE_NUMBER IS NOT NULL AND :P17_SITE_NUMBER IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134407838698424401)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134491193336811388)
,p_validation_name=>'P17_SITE_ID_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P17_SITE_ID_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Site" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SITE_ID VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT SITE_ID',
'      INTO V_SITE_ID',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_SITE_ID != :P17_SITE_ID THEN',
'      RETURN TRUE;',
'    ELSIF V_SITE_ID IS NULL AND :P17_SITE_ID IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_SITE_ID IS NOT NULL AND :P17_SITE_ID IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134488342313791785)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4128997645247882946)
,p_validation_name=>'P17_USER_ID_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P17_USER_ID_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "CRA" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_USER_ID VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT USER_ID',
'      INTO V_USER_ID',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_USER_ID != :P17_USER_ID THEN',
'      RETURN TRUE;',
'    ELSIF V_USER_ID IS NULL AND :P17_USER_ID IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_USER_ID IS NOT NULL AND :P17_USER_ID IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4128996461749882935)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134578660010103712)
,p_validation_name=>'P17_STATUS_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P17_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Status" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_STATUS != :P17_STATUS THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NULL AND :P17_STATUS IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_STATUS IS NOT NULL AND :P17_STATUS IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134577949526103705)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4134578959390103715)
,p_validation_name=>'P17_DESCRIPTION_CHANGE'
,p_validation_sequence=>70
,p_validation=>'P17_DESCRIPTION_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Comments" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESCRIPTION VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT DESCRIPTION',
'      INTO V_DESCRIPTION',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_DESCRIPTION != :P17_DESCRIPTION THEN',
'      RETURN TRUE;',
'    ELSIF V_DESCRIPTION IS NULL AND :P17_DESCRIPTION IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_DESCRIPTION IS NOT NULL AND :P17_DESCRIPTION IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4134578794139103713)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4137125989502212709)
,p_validation_name=>'P17_INIT_QTY_CHANGE'
,p_validation_sequence=>80
,p_validation=>'P17_INIT_QTY_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Initial Block" must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4134568958894079347)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INIT_QTY VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT INIT_QTY',
'      INTO V_INIT_QTY',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_INIT_QTY != :P17_INIT_QTY THEN',
'      RETURN TRUE;',
'    ELSIF V_INIT_QTY IS NULL AND :P17_INIT_QTY IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_INIT_QTY IS NOT NULL AND :P17_INIT_QTY IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4137126120472212710)
,p_validation_name=>'P17_REG_QTY_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P17_REG_QTY_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Replenishment Block" must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4134569090854079348)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_REG_QTY VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT REG_QTY',
'      INTO V_REG_QTY',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_REG_QTY != :P17_REG_QTY THEN',
'      RETURN TRUE;',
'    ELSIF V_REG_QTY IS NULL AND :P17_REG_QTY IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_REG_QTY IS NOT NULL AND :P17_REG_QTY IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4139086839872916312)
,p_validation_name=>'P17_REPL_QTY_CHANGE'
,p_validation_sequence=>100
,p_validation=>'P17_REPL_QTY_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Minimum Kit Quantity for Reshipment Trigger" must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4139086583780916310)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_REPL_QTY VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT REPL_QTY',
'      INTO V_REPL_QTY',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_REPL_QTY != :P17_REPL_QTY THEN',
'      RETURN TRUE;',
'    ELSIF V_REPL_QTY IS NULL AND :P17_REPL_QTY IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_REPL_QTY IS NOT NULL AND :P17_REPL_QTY IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4136999680155973308)
,p_validation_name=>'P17_INIT_QTY VAL'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P17_INIT_QTY IS NULL THEN',
'    RETURN ''Initial Block must have some value.'';',
'  ELSIF :P17_INIT_QTY <= 0 THEN',
'    RETURN ''Initial Block must be greater than 0.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4136999533186973306)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>'P17_STATUS = 3'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4136999780909973309)
,p_validation_name=>'P17_REG_QTY VAL'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P17_REG_QTY IS NULL THEN',
'    RETURN ''Replenishment Block must have some value.'';',
'  ELSIF :P17_REG_QTY <= 0 THEN',
'    RETURN ''Replenishment Block must be greater than 0.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4136999623570973307)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>'P17_STATUS = 3'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4139086738362916311)
,p_validation_name=>'P17_REPL_QTY'
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P17_REPL_QTY IS NULL THEN',
'    RETURN ''Minimum Kit Quantity for Reshipment Trigger must have some value.'';',
'  ELSIF :P17_REPL_QTY <= 0 THEN',
'    RETURN ''Minimum Kit Quantity for Reshipment Trigger must be greater than 0.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(4139086522320916309)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>'P17_STATUS = 3'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2930717517305261428)
,p_validation_name=>'Dynamic Error'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR C1 IS',
'  SELECT DISPLAY_SEQUENCE, ITEM_NAME, ITEM_SOURCE,',
'         ''<b>''||',
'         REGEXP_REPLACE(replace(coalesce(LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')||''<b> must have some value.'' MESSAGE',
'    FROM APEX_APPLICATION_PAGE_ITEMS',
'   WHERE ITEM_SOURCE_TYPE = ''Database Column''',
'     AND ITEM_SOURCE IN (''CITY'',''STATE'',''ZIP_CODE'',''COUNTRY'')',
'     AND DISPLAY_AS != ''Hidden''',
'     AND PAGE_ID = :APP_PAGE_ID',
'     AND APPLICATION_ID = :APP_ID',
'   ORDER BY 1;',
'',
'  V_VAL VARCHAR2(4000);',
'BEGIN',
'  FOR I IN C1 LOOP',
'    V_VAL := V(I.ITEM_NAME);',
'',
'    IF V_VAL IS NULL THEN',
'',
'      APEX_ERROR.ADD_ERROR (',
'          P_MESSAGE          => I.MESSAGE,',
'          P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION,',
'          P_PAGE_ITEM_NAME   => I.ITEM_NAME);',
'    END IF;',
'  END LOOP;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P17_STUDY_SITE_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2930718156329261435)
,p_validation_name=>'Dynamic RFC Validation'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR C1 IS',
'  SELECT DISPLAY_SEQUENCE, ITEM_NAME, ITEM_SOURCE, ITEM_NAME||''_CHANGE'' RES_CHNG,',
'         ''Reason for changing "''||',
'         REGEXP_REPLACE(replace(coalesce(LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')||''" must have some value.'' MESSAGE',
'    FROM APEX_APPLICATION_PAGE_ITEMS',
'   WHERE ITEM_SOURCE_TYPE = ''Database Column''',
'     AND ITEM_SOURCE IN (''CITY'',''STATE'',''ZIP_CODE'',''COUNTRY'',''REGION'')',
'     AND DISPLAY_AS != ''Hidden''',
'     AND PAGE_ID = :APP_PAGE_ID',
'     AND APPLICATION_ID = :APP_ID',
'   ORDER BY 1;',
'',
'  V_COUNT NUMBER;',
'  V_GET_VAL VARCHAR2(4000);',
'  V_SQL CLOB;',
'  V_VAL VARCHAR2(300);',
'  V_VAL2 VARCHAR2(300);',
'  V_VAL3 VARCHAR2(300);',
'BEGIN',
'  V_VAL2 := V(''P17_STUDY_SITE_ID'');',
'',
'  FOR I IN C1 LOOP',
'    V_SQL := ''SELECT COUNT(STUDY_SITE_ID)',
'  FROM EDC_STUDY_SITES',
' WHERE ((''||I.ITEM_SOURCE||'' != :''||I.ITEM_NAME||'') OR',
'        (''||I.ITEM_SOURCE||'' IS NULL AND :''||I.ITEM_NAME||'' IS NOT NULL) OR',
'        (''||I.ITEM_SOURCE||'' IS NOT NULL AND :''||I.ITEM_NAME||'' IS NULL)',
'       )',
'   AND STUDY_SITE_ID = :P17_STUDY_SITE_ID',
'   AND :''||I.RES_CHNG||'' IS NULL'';',
'',
'  V_VAL := V(I.ITEM_NAME);',
'  V_VAL3 := V(I.RES_CHNG);',
'',
'  EXECUTE IMMEDIATE V_SQL INTO V_COUNT USING V_VAL, V_VAL, V_VAL, V_VAL2, V_VAL3;',
'',
'  --DOPL(V_SQL);',
'',
'    IF V_COUNT > 0 THEN',
'      APEX_ERROR.ADD_ERROR (',
'          P_MESSAGE          => I.MESSAGE,',
'          P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION,',
'          P_PAGE_ITEM_NAME   => I.RES_CHNG);',
'    END IF;',
'    V_COUNT := 0;',
'  END LOOP;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P17_STUDY_SITE_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4128995763645882928)
,p_name=>'P17_SITE_NUMBER_CHANGE hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SITE_NUMBER VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT SITE_NUMBER',
'      INTO V_SITE_NUMBER',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_SITE_NUMBER != :P17_SITE_NUMBER THEN',
'      RETURN FALSE;',
'    ELSIF V_SITE_NUMBER IS NULL AND :P17_SITE_NUMBER IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_SITE_NUMBER IS NOT NULL AND :P17_SITE_NUMBER IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4128995915263882929)
,p_event_id=>wwv_flow_imp.id(4128995763645882928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SITE_NUMBER_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4128996190427882932)
,p_event_id=>wwv_flow_imp.id(4128995763645882928)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SITE_NUMBER_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134483673840750849)
,p_name=>'P17_SITE_NUMBER_CHANGE show'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_SITE_NUMBER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134484081763750850)
,p_event_id=>wwv_flow_imp.id(4134483673840750849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SITE_NUMBER_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134491376133814333)
,p_name=>'P17_SITE_ID_CHANGE show'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_SITE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134491844242814335)
,p_event_id=>wwv_flow_imp.id(4134491376133814333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SITE_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2694692279535899455)
,p_name=>'set SITE address'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_SITE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2694692530923899457)
,p_event_id=>wwv_flow_imp.id(2694692279535899455)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_EC_ADDRESS,P17_CITY,P17_STATE,P17_ZIP_CODE,P17_COUNTRY_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ADDR, CITY, STATE, ZIP_CODE, COUNTRY_ID',
'  FROM EDC_SITES',
' WHERE SITE_ID = :P17_SITE_ID'))
,p_attribute_07=>'P17_SITE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4128998264185882953)
,p_name=>'P17_USER_ID_CHANGE show'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_USER_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4128998442260882954)
,p_event_id=>wwv_flow_imp.id(4128998264185882953)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_USER_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134578093999103706)
,p_name=>'P17_STATUS_CHANGE show'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134578233430103707)
,p_event_id=>wwv_flow_imp.id(4134578093999103706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134579401903103719)
,p_name=>'P17_DESCRIPTION_CHANGE show'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_DESCRIPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134579457945103720)
,p_event_id=>wwv_flow_imp.id(4134579401903103719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_DESCRIPTION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4137125617743212705)
,p_name=>'P17_INIT_QTY_CHANGE show'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_INIT_QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4137125724984212706)
,p_event_id=>wwv_flow_imp.id(4137125617743212705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_INIT_QTY_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4137125807593212707)
,p_name=>'P17_REG_QTY_CHANGE show'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_REG_QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4137125887618212708)
,p_event_id=>wwv_flow_imp.id(4137125807593212707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_REG_QTY_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4139087165427916316)
,p_name=>'P17_REPL_QTY_CHANGE show'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_REPL_QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4139087254527916317)
,p_event_id=>wwv_flow_imp.id(4139087165427916316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_REPL_QTY_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2190979085317653600)
,p_name=>'P17_REGION_CHANGE show'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_REGION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2190979185725653601)
,p_event_id=>wwv_flow_imp.id(2190979085317653600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_REGION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134505264568844232)
,p_name=>'P17_SITE_ID_CHANGE hide'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SITE_ID VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT SITE_ID',
'      INTO V_SITE_ID',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_SITE_ID != :P17_SITE_ID THEN',
'      RETURN FALSE;',
'    ELSIF V_SITE_ID IS NULL AND :P17_SITE_ID IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_SITE_ID IS NOT NULL AND :P17_SITE_ID IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4134506182236844235)
,p_event_id=>wwv_flow_imp.id(4134505264568844232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SITE_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134505686243844234)
,p_event_id=>wwv_flow_imp.id(4134505264568844232)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SITE_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4128997673439882947)
,p_name=>'P17_USER_ID_CHANGE hidE'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_USER_ID VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT USER_ID',
'      INTO V_USER_ID',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_USER_ID != :P17_USER_ID THEN',
'      RETURN FALSE;',
'    ELSIF V_USER_ID IS NULL AND :P17_USER_ID IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_USER_ID IS NOT NULL AND :P17_USER_ID IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4128997924357882949)
,p_event_id=>wwv_flow_imp.id(4128997673439882947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_USER_ID_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4128997763079882948)
,p_event_id=>wwv_flow_imp.id(4128997673439882947)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_USER_ID_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134578324677103708)
,p_name=>'P17_STATUS_CHANGE hide'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT STATUS',
'      INTO V_STATUS',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_STATUS != :P17_STATUS THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NULL AND :P17_STATUS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_STATUS IS NOT NULL AND :P17_STATUS IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4134578531107103710)
,p_event_id=>wwv_flow_imp.id(4134578324677103708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_STATUS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134578447629103709)
,p_event_id=>wwv_flow_imp.id(4134578324677103708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_STATUS_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134579100535103716)
,p_name=>'P17_DESCRIPTION_CHANGE hide'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DESCRIPTION VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT DESCRIPTION',
'      INTO V_DESCRIPTION',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_DESCRIPTION != :P17_DESCRIPTION THEN',
'      RETURN FALSE;',
'    ELSIF V_DESCRIPTION IS NULL AND :P17_DESCRIPTION IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_DESCRIPTION IS NOT NULL AND :P17_DESCRIPTION IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4134579334166103718)
,p_event_id=>wwv_flow_imp.id(4134579100535103716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_DESCRIPTION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134579191147103717)
,p_event_id=>wwv_flow_imp.id(4134579100535103716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_DESCRIPTION_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134569219186079349)
,p_name=>'P17_INIT_QTY_CHANGE hide'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INIT_QTY VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INIT_QTY',
'      INTO V_INIT_QTY',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_INIT_QTY != :P17_INIT_QTY THEN',
'      RETURN FALSE;',
'    ELSIF V_INIT_QTY IS NULL AND :P17_INIT_QTY IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INIT_QTY IS NOT NULL AND :P17_INIT_QTY IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4134569270161079350)
,p_event_id=>wwv_flow_imp.id(4134569219186079349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_INIT_QTY_CHANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134569347911079351)
,p_event_id=>wwv_flow_imp.id(4134569219186079349)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_INIT_QTY_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4134569545888079352)
,p_name=>'P17_REG_QTY_CHANGE hide'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_REG_QTY VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT REG_QTY',
'      INTO V_REG_QTY',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_REG_QTY != :P17_REG_QTY THEN',
'      RETURN FALSE;',
'    ELSIF V_REG_QTY IS NULL AND :P17_REG_QTY IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_REG_QTY IS NOT NULL AND :P17_REG_QTY IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4134569592627079353)
,p_event_id=>wwv_flow_imp.id(4134569545888079352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_REG_QTY_CHANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4134569687001079354)
,p_event_id=>wwv_flow_imp.id(4134569545888079352)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_REG_QTY_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4139086940051916313)
,p_name=>'P17_REPL_QTY_CHANGE hide'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_REPL_QTY VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT REPL_QTY',
'      INTO V_REPL_QTY',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_REPL_QTY != :P17_REPL_QTY THEN',
'      RETURN FALSE;',
'    ELSIF V_REPL_QTY IS NULL AND :P17_REPL_QTY IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_REPL_QTY IS NOT NULL AND :P17_REPL_QTY IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(4139087059419916315)
,p_event_id=>wwv_flow_imp.id(4139086940051916313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_REPL_QTY_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2930718635739261439)
,p_name=>'P17_EC_ADDRESS_CHANGE hide'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EC_ADDRESS VARCHAR2(200);',
'BEGIN',
'  IF :P17_STUDY_SITE_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EC_ADDRESS',
'      INTO V_EC_ADDRESS',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID;',
'',
'    IF V_EC_ADDRESS != :P17_EC_ADDRESS THEN',
'      RETURN FALSE;',
'    ELSIF V_EC_ADDRESS IS NULL AND :P17_EC_ADDRESS IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EC_ADDRESS IS NOT NULL AND :P17_EC_ADDRESS IS NULL THEN',
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
 p_id=>wwv_flow_imp.id(2930718675533261440)
,p_event_id=>wwv_flow_imp.id(2930718635739261439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_EC_ADDRESS_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2930718774611261441)
,p_name=>'P17_CITY_CHANGE hide'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_STUDY_SITES',
' WHERE ((CITY != :P17_CITY) OR',
'        (CITY IS NULL AND :P17_CITY IS NOT NULL) OR',
'        (CITY IS NOT NULL AND :P17_CITY IS NULL)',
'       )',
'   AND STUDY_SITE_ID = :P17_STUDY_SITE_ID'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2930718918259261442)
,p_event_id=>wwv_flow_imp.id(2930718774611261441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_CITY_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2930718956355261443)
,p_name=>'P17_STATE_CHANGE hide'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_STUDY_SITES',
' WHERE ((STATE != :P17_STATE) OR',
'        (STATE IS NULL AND :P17_STATE IS NOT NULL) OR',
'        (STATE IS NOT NULL AND :P17_STATE IS NULL)',
'       )',
'   AND STUDY_SITE_ID = :P17_STUDY_SITE_ID'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2930719106218261444)
,p_event_id=>wwv_flow_imp.id(2930718956355261443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_STATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2930719151190261445)
,p_name=>'P17_ZIP_CODE_CHANGE hide'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_STUDY_SITES',
' WHERE ((ZIP_CODE != :P17_ZIP_CODE) OR',
'        (ZIP_CODE IS NULL AND :P17_ZIP_CODE IS NOT NULL) OR',
'        (ZIP_CODE IS NOT NULL AND :P17_ZIP_CODE IS NULL)',
'       )',
'   AND STUDY_SITE_ID = :P17_STUDY_SITE_ID'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2930719314517261446)
,p_event_id=>wwv_flow_imp.id(2930719151190261445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_ZIP_CODE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2193011767324883398)
,p_name=>'P17_REGION_CHANGE hide'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_STUDY_SITES',
' WHERE ((REGION != :P17_REGION) OR',
'        (REGION IS NULL AND :P17_REGION IS NOT NULL) OR',
'        (REGION IS NOT NULL AND :P17_REGION IS NULL)',
'       )',
'   AND STUDY_SITE_ID = :P17_STUDY_SITE_ID'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2193011933681883399)
,p_event_id=>wwv_flow_imp.id(2193011767324883398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_REGION_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4135072727906978517)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4134567884262079336)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4135073134804978534)
,p_event_id=>wwv_flow_imp.id(4135072727906978517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_TABLE_NAME,P41_PK_ID:&APP_PAGE_ID.,EDC_STUDY_SITES,&P17_STUDY_SITE_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2930719723485261450)
,p_name=>'SHOW_RES_CHANGE'
,p_event_sequence=>260
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P17_STUDY_SITE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2930719750315261451)
,p_event_id=>wwv_flow_imp.id(2930719723485261450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(',
'    ''SHOW_REASON_FOR_CHANGE'',                             // Process or AJAX Callback name',
'    {},  // Parameter "x01"',
'    {',
'        success: function (pData) {             // Success Javascript',
'            eval(pData);',
'        },',
'        dataType: "text"                        // Response type (here: plain text)',
'    }',
');'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045397384468926455)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_STUDY_SITES'
,p_attribute_02=>'EDC_STUDY_SITES'
,p_attribute_03=>'P17_STUDY_SITE_ID'
,p_attribute_04=>'STUDY_SITE_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11045397384468926455
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3415143827178922008)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  EDC_MAIL.SHIPMENT_REQUEST(1);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>3415143827178922008
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045397585852926456)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'   L_PRIMARY_KEY NUMBER;',
'  BEGIN',
'   SELECT nvl(MAX(STUDY_SITE_ID),0) + 1',
'   INTO L_PRIMARY_KEY',
'   FROM EDC_STUDY_SITES;',
'   RETURN L_PRIMARY_KEY;',
'  END; ',
'begin ',
'  :P17_STUDY_SITE_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(11045392068890926439)
,p_internal_uid=>11045397585852926456
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045397785200926456)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_STUDY_SITES'
,p_attribute_02=>'EDC_STUDY_SITES'
,p_attribute_03=>'P17_STUDY_SITE_ID'
,p_attribute_04=>'STUDY_SITE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EDC_STUDY_SITES.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11045397785200926456
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2930717587819261429)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update site contact details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE EDC_SITES',
'     SET ADDR = :P17_EC_ADDRESS',
'       , CITY = :P17_CITY',
'       , STATE = :P17_STATE',
'       , ZIP_CODE = :P17_ZIP_CODE',
'       , COUNTRY = :P17_COUNTRY',
'   WHERE SITE_ID = :P17_SITE_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>2930717587819261429
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4137000186290973313)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auto Shipment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT NUMBER;',
'BEGIN',
'    SELECT COUNT(*) INTO V_CNT',
'        FROM EDC_IP_SHIPMENT',
'            WHERE STUDY_SITE_ID = :P17_STUDY_SITE_ID',
'            AND SHIP_NO NOT LIKE ''R%'';',
'    IF V_CNT = 0 THEN ',
'      SUN_21010_DEV.AUTO_SHIPMENT(:P17_STUDY_SITE_ID);',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4137000186290973313
,p_process_comment=>':REQUEST IN (''CREATE'',''SAVE'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11045397961974926457)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'16'
,p_process_when_button_id=>wwv_flow_imp.id(11045392459643926439)
,p_internal_uid=>11045397961974926457
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2930718322626261436)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RES_DYN_HIDE_SHOW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR C1 IS',
'  SELECT DISPLAY_SEQUENCE, ITEM_NAME, ITEM_SOURCE, ITEM_NAME||''_CHANGE'' RES_CHNG,',
'         ''Reason for changing "''||',
'         REGEXP_REPLACE(replace(coalesce(LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')||''" must have some value.'' MESSAGE',
'    FROM APEX_APPLICATION_PAGE_ITEMS',
'   WHERE ITEM_SOURCE_TYPE = ''Database Column''',
'     AND ITEM_SOURCE IN (''EC_ADDRESS'',''CITY'',''STATE'',''ZIP_CODE'',''COUNTRY'')',
'     AND DISPLAY_AS != ''Hidden''',
'     AND PAGE_ID = :APP_PAGE_ID',
'     AND APPLICATION_ID = :APP_ID',
'   ORDER BY 1;',
'',
'  V_COUNT NUMBER;',
'  V_GET_VAL VARCHAR2(4000);',
'  V_SQL CLOB;',
'  V_VAL VARCHAR2(300);',
'  V_VAL2 VARCHAR2(300);',
'  V_VAL3 VARCHAR2(300);',
'BEGIN',
'  V_VAL2 := V(''P17_STUDY_SITE_ID'');',
'',
'  FOR I IN C1 LOOP',
'    V_SQL := ''SELECT COUNT(STUDY_SITE_ID)',
'  FROM EDC_STUDY_SITES',
' WHERE ((''||I.ITEM_SOURCE||'' != :''||I.ITEM_NAME||'') OR',
'        (''||I.ITEM_SOURCE||'' IS NULL AND :''||I.ITEM_NAME||'' IS NOT NULL) OR',
'        (''||I.ITEM_SOURCE||'' IS NOT NULL AND :''||I.ITEM_NAME||'' IS NULL)',
'       )',
'   AND STUDY_SITE_ID = :P17_STUDY_SITE_ID',
'   AND :''||I.RES_CHNG||'' IS NULL'';',
'',
'    V_VAL := apex_util.get_session_state(I.ITEM_NAME);',
'    V_VAL3 := V(I.RES_CHNG);',
'',
'    EXECUTE IMMEDIATE V_SQL INTO V_COUNT USING V_VAL, V_VAL, V_VAL, V_VAL2, V_VAL3;',
'',
'--    DOPL(V_SQL);',
'    IF V_COUNT > 0 THEN',
'      HTP.P(''$(''''#''||I.RES_CHNG||'''''').show();'');',
'--      DOPL(''$(''''#''||I.RES_CHNG||'''''').show();'');',
'    ELSE',
'      HTP.P(''$(''''#''||I.RES_CHNG||'''''').hide();'');',
'--      DOPL(''$(''''#''||I.RES_CHNG||'''''').hide();'');',
'    END IF;',
'    V_COUNT := 0;',
'  END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2930718322626261436
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2930755057400443711)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SHOW_REASON_FOR_CHANGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SQL CLOB;',
'    CURSOR C1 IS (SELECT ITEM_NAME',
'                       , SUBSTR(ITEM_NAME,1,INSTR(ITEM_NAME,''_CHANGE'',-1,1)-1) ITEM',
'                    FROM APEX_APPLICATION_PAGE_ITEMS',
'                   WHERE ITEM_NAME LIKE ''%CHANGE%''',
'                     AND PAGE_ID = :APP_PAGE_ID',
'                     AND APPLICATION_ID = :APP_ID',
'                     AND SUBSTR(ITEM_NAME,1,INSTR(ITEM_NAME,''_CHANGE'',-1,1)-1) IN (''P17_EC_ADDRESS'',''P17_CITY'',''P17_STATE'',''P17_ZIP_CODE'',''P17_COUNTRY'')',
'                 );',
'BEGIN',
'    --HTP.P(''<script language="Javascript">'');',
'    FOR I IN C1 LOOP',
'        V_SQL := ''$(''''#''||I.ITEM||'''''').change(function(){',
'                      $(''''#''||I.ITEM_NAME||'''''').show();',
'                      $(''''#''||I.ITEM_NAME||''_LABEL'''').show();',
'                  });'';',
'',
'        HTP.P(V_SQL);',
'    END LOOP;',
'    -- HTP.P(''</script>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>2930755057400443711
);
wwv_flow_imp.component_end;
end;
/
