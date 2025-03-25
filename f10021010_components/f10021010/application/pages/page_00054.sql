prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_tab_set=>'TS1'
,p_name=>'Kit Reconciliation Report'
,p_step_title=>'Kit Reconciliation Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11279046129678919616)
,p_name=>'Kit Reconciliation Report'
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Kits @ Depot'' AS LOCATION_TYPE',
'     , ''Depot'' AS LOCATION',
'     , '' '' AS SEQ',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE IP_STATUS IN (1, 13, 15, 6, 16, 14)) AS TOTAL_RECEIVED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE IP_STATUS IN (1)) AS CURRENTLY_RECEIVED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE IP_STATUS IN (13)) AS DAMAGED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE IP_STATUS IN (15)) AS QURANTINED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE IP_STATUS IN (6) ) AS EXPIRED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE IP_STATUS IN (16)) AS DESTROYED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE IP_STATUS IN (14)) AS LOST',
'     , 0 AS RETAINED',
'     , 0 AS DISPENSED',
'    -- , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE IP_STATUS IN (1, 13, 15, 6, 16, 14)) AS TOTAL',
'  FROM DUAL',
' WHERE :APP_EDC_ROLE_ID IN (13, 18, 20) -- Admin, DM, Sponsor',
'',
' UNION',
'',
'SELECT ''Kits @ Site'' AS LOCATION_TYPE',
'     , SS.SITE_NUMBER || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || S.INVNAME || '')'' AS LOCATION',
'     , SS.SITE_NUMBER AS SEQ',
'     ,(SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (3, 9, 11, 7, 12, 10, 8, 4)) AS TOTAL_RECEIVED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (3)) AS CURRENTLY_RECEIVED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (9) ) AS DAMAGED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (11)) AS QURANTINED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (7) ) AS EXPIRED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (12)) AS DESTROYED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (10)) AS LOST',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (8) ) AS RETAINED',
'     , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (4) ) AS DISPENSED',
'    -- , (SELECT COUNT(*) FROM EDC_IP_DETAIL WHERE STUDY_SITE_ID = SS.STUDY_SITE_ID AND IP_STATUS IN (3, 9, 11, 7, 12, 10, 8, 4)) AS TOTAL',
'  FROM EDC_STUDY_SITES SS',
'     , EDC_SITES S',
' WHERE S.SITE_ID = SS.SITE_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(SS.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(S.COUNTRY_ID) = 1',
'ORDER BY SEQ'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P54_ROWS'
,p_query_row_count_max=>500
,p_report_total_text_format=>'Total Kits: '
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download as CSV'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_sort_null=>'L'
,p_plug_query_exp_separator=>','
,p_plug_query_exp_enclosed_by=>'"'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275491364971600284)
,p_query_column_id=>1
,p_column_alias=>'LOCATION_TYPE'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275490243948600273)
,p_query_column_id=>2
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>2
,p_column_heading=>'Kit Location'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275491093500600282)
,p_query_column_id=>3
,p_column_alias=>'SEQ'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1772850890233508296)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_RECEIVED'
,p_column_display_sequence=>3
,p_column_heading=>'Total Received'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1772851051456508297)
,p_query_column_id=>5
,p_column_alias=>'CURRENTLY_RECEIVED'
,p_column_display_sequence=>4
,p_column_heading=>'Currently Received'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275490472661600275)
,p_query_column_id=>6
,p_column_alias=>'DAMAGED'
,p_column_display_sequence=>5
,p_column_heading=>'Damaged'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275490562342600276)
,p_query_column_id=>7
,p_column_alias=>'QURANTINED'
,p_column_display_sequence=>6
,p_column_heading=>'Quarantined'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275490655980600277)
,p_query_column_id=>8
,p_column_alias=>'EXPIRED'
,p_column_display_sequence=>7
,p_column_heading=>'Expired'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275490679991600278)
,p_query_column_id=>9
,p_column_alias=>'DESTROYED'
,p_column_display_sequence=>8
,p_column_heading=>'Destroyed'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275490824687600279)
,p_query_column_id=>10
,p_column_alias=>'LOST'
,p_column_display_sequence=>9
,p_column_heading=>'Lost'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275490957471600280)
,p_query_column_id=>11
,p_column_alias=>'RETAINED'
,p_column_display_sequence=>10
,p_column_heading=>'Retention'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275491064832600281)
,p_query_column_id=>12
,p_column_alias=>'DISPENSED'
,p_column_display_sequence=>11
,p_column_heading=>'Dispensed to<br/>Subject'
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11279073443302919650)
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
 p_id=>wwv_flow_imp.id(11279177541763963917)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11279045786251919614)
,p_branch_action=>'f?p=&APP_ID.:54:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11279045062941919613)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P54_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10178094294800415520
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11279045430720919614)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P54_REPORT_SEARCH,P54_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11279044605863919613)
,p_internal_uid=>10178094662579415521
);
wwv_flow_imp.component_end;
end;
/
