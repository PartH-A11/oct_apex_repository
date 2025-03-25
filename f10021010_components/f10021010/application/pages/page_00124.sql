prompt --application/pages/page_00124
begin
--   Manifest
--     PAGE: 00124
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
 p_id=>124
,p_name=>'Query'
,p_step_title=>'Query'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_imp.id(11017835689714707247)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152016341127917193)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_header=>'<b> <label style="font-weight:900px;color:red;font-size:20px"> Submit Query </b>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152020735081917200)
,p_plug_name=>'Audit Trail'
,p_parent_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131027748911980)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152020952872917202)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(12152020735081917200)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146129741780911976)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12152021940902917205)
,p_name=>'Query Status Details'
,p_parent_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT QRY_DESC as Query,QRY_RESPONSE as Response,QRY_STATUS,CREATED_BY,CREATED_ON FROM EDC_CRF_QUERIES_DETAILS WHERE QRY_ID = :P124_QRY_ID',
'order by CREATED_ON desc '))
,p_display_when_condition=>'P124_QRY_ID'
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
 p_id=>wwv_flow_imp.id(12152022142458917205)
,p_query_column_id=>1
,p_column_alias=>'QUERY'
,p_column_display_sequence=>2
,p_column_heading=>'Query <br> Description'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152022247383917205)
,p_query_column_id=>2
,p_column_alias=>'RESPONSE'
,p_column_display_sequence=>1
,p_column_heading=>'Query <br> Response'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152022339053917205)
,p_query_column_id=>3
,p_column_alias=>'QRY_STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Query <br> Status'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152022451861917205)
,p_query_column_id=>4
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Updated <br> By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152022528923917205)
,p_query_column_id=>5
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>5
,p_column_heading=>'Updated <br> On'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12152022640576917207)
,p_name=>'Item Audit Trail Report'
,p_parent_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>16
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'return q''{SELECT ROWNUM,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP FROM AUDIT_TRAIL WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(TRIM(:P124_ITEM_DATABASE_COLUMN)) AND PATIENT_VISIT_ID = :P124_PATIENT_VISIT_ID AND PAGE_NO =:P124_REQUEST_FROM  order b'
||'y LOG_TIMESTAMP desc}'';'
,p_display_when_condition=>'P124_QRY_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P124_PATIENT_VISIT_ID,P124_REQUEST_FROM,P124_ITEM_NAME'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_plug_query_max_columns=>60
,p_query_num_rows=>15
,p_query_options=>'GENERIC_REPORT_COLUMNS'
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
 p_id=>wwv_flow_imp.id(12152026743885917209)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Version Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026848836917209)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026944295917209)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027051923917209)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027144726917209)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027237773917209)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Date & Time'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027354306917209)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027444067917209)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027534729917209)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027634305917209)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027724743917209)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027837413917209)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152027939835917209)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152028045666917209)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152028154358917209)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152028234342917209)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152028347290917209)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152028427043917209)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152028532439917209)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152028644902917209)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152022840617917207)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152022951634917207)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023030139917207)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023128337917207)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023229480917207)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023332514917207)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023452571917207)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023554622917207)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023649924917207)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023724747917207)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023832155917207)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152023933337917208)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024044653917208)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024133071917208)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024231958917208)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024337029917208)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024453098917208)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024549695917208)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024637700917208)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024730808917208)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024846003917208)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152024938571917208)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025051702917208)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025153117917208)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025230673917208)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025343113917208)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025445333917208)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025540232917208)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025649017917208)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025751813917208)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025855639917208)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152025951200917208)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026034597917208)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026126218917208)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026240130917208)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026327943917208)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026435572917209)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026553392917209)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152026637541917209)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152028739550917209)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12152029054936917211)
,p_name=>'Patient Visit'
,p_template=>wwv_flow_imp.id(12146131826484911981)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<img src="&EDC_IMAGE_PATH.img/''||IMAGE_TAG||''" /> - ''||DISPLAY_VAL as "Status",',
'pp.PTINTL,to_char(pp.SCREENING_DATE,''dd/Mon/rr'') as "Screening Date",pp.SCRNO, pv.VISIT_NUMBER,',
'pv.VISIT_TITLE,pv.VISIT_TYPE,pv.SCHEDULE_DATE,to_char(pv.ACTUAL_DATE,''dd/Mon/rr'') as "Actual Date"',
'from edc_crf_status cs, edc_patient_visit pv, edc_patient_profile pp',
'where pv.patient_visit_id=( select PATIENT_VISIT_ID from EDC_CRF_QUERIES where qry_id= :P124_QRY_ID)',
'and pv.crf_status=cs.RETURN_VAL and pp.patient_profile_id=pv.patient_profile_id'))
,p_display_when_condition=>'P124_QRY_ID'
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
 p_id=>wwv_flow_imp.id(12152029227493917212)
,p_query_column_id=>1
,p_column_alias=>'Status'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152029337672917212)
,p_query_column_id=>2
,p_column_alias=>'PTINTL'
,p_column_display_sequence=>2
,p_column_heading=>'PTINTL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152029439067917212)
,p_query_column_id=>3
,p_column_alias=>'Screening Date'
,p_column_display_sequence=>3
,p_column_heading=>'Screening Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152029534925917212)
,p_query_column_id=>4
,p_column_alias=>'SCRNO'
,p_column_display_sequence=>4
,p_column_heading=>'SCRNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152029640627917212)
,p_query_column_id=>5
,p_column_alias=>'VISIT_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Visit Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152029736318917212)
,p_query_column_id=>6
,p_column_alias=>'VISIT_TITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Visit Title'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152029842104917212)
,p_query_column_id=>7
,p_column_alias=>'VISIT_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Visit Type'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152029943311917212)
,p_query_column_id=>8
,p_column_alias=>'SCHEDULE_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Schedule Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152030041333917212)
,p_query_column_id=>9
,p_column_alias=>'Actual Date'
,p_column_display_sequence=>9
,p_column_heading=>'Actual Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152016749366917193)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Submit Response'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P124_QRY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152017130457917194)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Close'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:parent.$(parent.document).apex_modal_page(''close'');'
,p_button_comment=>'self.close();'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152016534286917193)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P124_QRY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152016945765917193)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12152016341127917193)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152017338707917194)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:133:&SESSION.::&DEBUG.:RP:P133_PAGE_ID:&P124_PAGE_ID.'');'
,p_button_condition=>'P124_REQUEST_FROM'
,p_button_condition2=>'133'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12152033042956917222)
,p_branch_action=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.::P124_PARENT_REFRESH_FLAG:1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789566179463567966)
,p_name=>'P124_CRF_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_source=>'CRF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789566275988567967)
,p_name=>'P124_PATIENT_PROFILE_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_source=>'PATIENT_PROFILE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789566648178567971)
,p_name=>'P124_PATIENT_DIARY_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_source=>'PATIENT_DIARY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11642418559416678407)
,p_name=>'P124_TBL_PK_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_source=>'TBL_PK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152017541808917196)
,p_name=>'P124_PAGE_NAME_DISP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_item_default=>':P124_PAGE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b> Page </b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--select crf_page_no||''-''||crf_name from edc_crf_master where crf_page_no = :P124_PAGE_ID',
'select crf_name',
'from edc_crf_master',
'where crf_id = :P124_CRF_ID',
'and study_id = :APP_EDC_STUDY_ID',
'AND :P124_PAGE_ID NOT IN (507,508,579,580,505,522,523,524,593,594,595,596,597,598,526,521,527,592,725,502,536,503,545,548,550,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584)',
'UNION ALL',
'select crf_name ',
'from edc_crf_master where crf_page_no = :P124_PAGE_ID',
'AND :P124_PAGE_ID IN (507,508,579,580,505,522,523,524,593,594,595,596,597,598,526,521,527,592,725,502,536,503,545,548,550,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584);'))
,p_source_type=>'QUERY'
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
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152017745848917197)
,p_name=>'P124_QRY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_source=>'QRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152017942938917197)
,p_name=>'P124_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
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
 p_id=>wwv_flow_imp.id(12152018140608917197)
,p_name=>'P124_PATIENT_VISIT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152018333190917198)
,p_name=>'P124_PAGE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_source=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152018535032917198)
,p_name=>'P124_ITEM_NAME'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Name'
,p_source=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select item_label d,column_name r ',
'from edc_crf_items',
'where crf_id = :P124_CRF_ID',
'and study_id = :APP_EDC_STUDY_ID',
'and :P124_PAGE_ID NOT IN (507,508,579,580,505,522,523,524,593,594,595,596,597,598,526,521,592,527,725,502,536,503,545,548,550,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584)',
'and item_type NOT IN (''LABEL'',''HEADING'')',
'union ALL',
'select d_item_name d,''P''||:P124_PAGE_ID||''_''||d_item_lable r ',
'from table(edc_util.get_page_items_lov(:APP_ID,:P124_PAGE_ID,:APP_EDC_VISIT_NAME))',
'where :P124_PAGE_ID IN (507,508,579,580,505,522,523,524,593,594,595,596,597,598,526,521,592,527,725,502,536,503,545,548,550,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584)',
'',
'',
'/*select replace(replace(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P124_PAGE_ID,r),''<B>'',''''),''</B>'','''') d',
'     ,  r',
'  from (select d',
'             , r',
'             , display_sequence',
'          from edc_crf_qry_view',
'         where page_no = :P124_PAGE_ID ',
'           and upper(d) not like ''%SECTION%'' ',
'           and ITEM_SOURCE not in (select substr(item_name,6)',
'                                     from EDC_PARENT_ITEMS',
'                                  )',
'           AND :P124_PAGE_ID = 1001',
'           AND EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:P124_PAGE_ID, R) >= 1',
'       )',
' order by DISPLAY_SEQUENCE*/',
' ',
' ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---  Select ---'
,p_lov_cascade_parent_items=>'P124_PAGE_ID'
,p_ajax_items_to_submit=>'P124_PAGE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P124_QRY_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select replace(replace(a.LABEL,CHR(38)||''nbsp;'',''''),''<br/>'','''') d, ITEM_NAME r',
'   from APEX_APPLICATION_PAGE_ITEMS a, APEX_APPLICATION_PAGE_regions b',
' where a.workspace = b.workspace',
'   and a.application_id = b.application_id',
'   and a.page_id = b.page_id',
'   and a.REGION_id  = b.REGION_id',
'   and a.DISPLAY_AS <> ''Hidden''',
'   and a.ITEM_SOURCE_TYPE = ''Database Column''',
'   and  a.page_id = :P124_PAGE_ID',
'   and replace(a.LABEL,CHR(38)||''nbsp;'','''') is not null',
'   AND a.LABEL IS NOT NULL',
'   and nvl(a.CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'   and nvl(B.CONDITION_TYPE_CODE,''null'') <> ''NEVER'' ',
'   AND a.APPLICATION_ID = :APP_ID',
'   and a.LABEL not in (''Section Status :'',''Created By'',''Created On'',''Updated By'',''Updated On'')',
'order by a.DISPLAY_SEQUENCE',
'---------------------------------------',
'select d',
'     , r',
'  from (select d',
'             , r',
'             , display_sequence',
'          from edc_crf_qry_view',
'         where page_no = :P124_PAGE_ID ',
'           and upper(d) not like ''%SECTION%'' ',
'           and ITEM_SOURCE not in (select substr(item_name,6)',
'                                     from EDC_PARENT_ITEMS',
'                                  )',
'           AND :P124_PAGE_ID <> 512',
'',
'         UNION ALL',
'        select d',
'             , r',
'             , display_sequence',
'          from edc_crf_qry_view',
'         where page_no = :P124_PAGE_ID ',
'           and upper(d) not like ''%SECTION%'' ',
'           and ITEM_SOURCE not in (select substr(item_name,6)',
'                                     from EDC_PARENT_ITEMS',
'                                  )',
'           AND R IN (''P512_XLCTL'',''P512_XLCSC'')',
'           AND :P124_PAGE_ID = 512',
'           AND :APP_EDC_VISIT_NAME = ''Randomization''',
'',
'         UNION ALL',
'        select d',
'             , r',
'             , display_sequence',
'          from edc_crf_qry_view',
'         where page_no = :P124_PAGE_ID ',
'           and upper(d) not like ''%SECTION%'' ',
'           and ITEM_SOURCE not in (select substr(item_name,6)',
'                                     from EDC_PARENT_ITEMS',
'                                  )',
'           AND R IN (''P512_XLCTL'', ''P512_XLCSC'', ''P512_XLCOLD'', ''P512_XLCNEW'', ''P512_XLCCOM'')',
'           AND :P124_PAGE_ID = 512',
'           AND :APP_EDC_VISIT_NAME in (''Visit 4'',''End of Study'')',
'       )',
' order by DISPLAY_SEQUENCE'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152018726687917198)
,p_name=>'P124_QRY_DESC'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Query'
,p_source=>'QRY_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P124_QRY_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152018955409917198)
,p_name=>'P124_QRY_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Open'
,p_prompt=>'<b> Status </b>'
,p_source=>'QRY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'STATUS_QUERY_ROLE_UPDATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select D,R',
' from',
' (',
' select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'')',
'   and :P124_QRY_ID IS NULL',
'   UNION ALL',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'',''Responded'')',
'   and :APP_EDC_ROLE_ID in (16,15)',
'   and 0 not in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   and :APP_EDC_ROLE_ID in (16,15)',
'   )',
'   and :P124_QRY_ID IS NOT NULL',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'',''Closed'')',
'   and :APP_EDC_ROLE_ID in (21)',
'   and 0 not in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   and :APP_EDC_ROLE_ID in (21)',
')',
'and :P124_QRY_ID IS NOT NULL',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'',''Responded'',''Closed'')',
'   and :APP_EDC_ROLE_ID in (17,19)',
'   and 0 not in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   and :APP_EDC_ROLE_ID in (17,19)',
'   )',
'   and :P124_QRY_ID IS NOT NULL',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'',''Responded'',''Closed'',''Reopened'')',
'   and :APP_EDC_ROLE_ID in (18,13)',
'   and 0 not in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'  and :APP_EDC_ROLE_ID in (18,13)',
'  )',
'  and :P124_QRY_ID IS NOT NULL',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'')',
'   and :APP_EDC_ROLE_ID in (13,15,16,17,18,19,21)',
'   and 0 in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'  and :APP_EDC_ROLE_ID in (13,15,16,17,18,19,21)',
'  )',
'  and :P124_QRY_ID IS NOT NULL',
' )   ',
'order by r'))
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LOV name Changed STATUS_QUERY_ROLL_UPDATE instead of STATUS_QUERY_ROLL',
''))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152019147827917198)
,p_name=>'P124_QRY_RESPONSE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Response </b>'
,p_source=>'QRY_RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P124_QRY_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152019356019917198)
,p_name=>'P124_TEMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152019552101917199)
,p_name=>'P124_QUERY_PAGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152019744389917199)
,p_name=>'P124_REQUEST_FROM'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152019953812917199)
,p_name=>'P124_AUTO_FLAG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_item_default=>'U'
,p_source=>'AUTO_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152020152508917199)
,p_name=>'P124_ROLE_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152020337802917199)
,p_name=>'P124_USER_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_USER_TYPE'
,p_source=>'APP_EDC_USER_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152020530786917199)
,p_name=>'P124_PARENT_REFRESH_FLAG'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(12152016341127917193)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152021137747917204)
,p_name=>'P124_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12152020952872917202)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly;"'
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
 p_id=>wwv_flow_imp.id(12152021356143917204)
,p_name=>'P124_CREATED_DT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12152020952872917202)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(12152021534809917204)
,p_name=>'P124_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12152020952872917202)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly;"'
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
 p_id=>wwv_flow_imp.id(12152021730259917204)
,p_name=>'P124_UPDATED_DT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12152020952872917202)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated Date'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(12152028833730917211)
,p_name=>'P124_ITEM_DATABASE_COLUMN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12152022640576917207)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select  ITEM_SOURCE ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P124_REQUEST_FROM ',
'AND APPLICATION_ID = :APP_ID ',
'AND TRIM(UPPER(ITEM_NAME)) = TRIM(UPPER(:P124_ITEM_NAME))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(12152030241116917218)
,p_computation_sequence=>10
,p_computation_item=>'P124_QUERY_PAGE'
,p_computation_point=>'AFTER_FOOTER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT PAGE_ID FROM EDC_CRF_QUERIES WHERE QRY_ID= :P124_QRY_ID'
,p_compute_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(12152030440046917218)
,p_computation_sequence=>10
,p_computation_item=>'P124_PARENT_REFRESH_FLAG'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
,p_compute_when=>':REQUEST IN(''SAVE'');'
,p_compute_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12152031752060917220)
,p_name=>'Clear Response'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12152032036137917221)
,p_event_id=>wwv_flow_imp.id(12152031752060917220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_QRY_RESPONSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12152032146942917221)
,p_name=>'Close Popup and Refresh Parent '
,p_event_sequence=>20
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v("P124_PARENT_REFRESH_FLAG")==1',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12152032425505917221)
,p_event_id=>wwv_flow_imp.id(12152032146942917221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.opener.location.href=window.opener.location.href;',
'window.close();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12152032525474917222)
,p_name=>'Diasble Query Status Option based on type'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P124_QRY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12152032824862917222)
,p_event_id=>wwv_flow_imp.id(12152032525474917222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var role_id = apex.item("P124_ROLE_ID" ).getValue();',
'var user_type = apex.item("P124_USER_ID" ).getValue();',
'if (user_type==3)',
' {',
' ',
'   apex.item("P124_QRY_STATUS_0").enable();',
'   apex.item("P124_QRY_STATUS_2").disable();',
'   apex.item("P124_QRY_STATUS_3").disable();',
'   apex.item("P124_QRY_STATUS_1").enable();',
' }',
' if (user_type==2)',
' {',
'  apex.item("P124_QRY_STATUS_0").enable();',
'   apex.item("P124_QRY_STATUS_2").disable();',
'   apex.item("P124_QRY_STATUS_3").disable();',
'   apex.item("P124_QRY_STATUS_1").enable();',
' }',
' if (user_type==1)',
' {',
'   ',
'   apex.item("P124_QRY_STATUS_0").enable();',
'   apex.item("P124_QRY_STATUS_2").enable();',
'   apex.item("P124_QRY_STATUS_1").enable();',
'   apex.item("P124_QRY_STATUS_3").enable();',
' }',
' '))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var role_id = apex.item("P124_ROLE_ID" ).getValue();',
'var user_type = apex.item("P124_USER_ID" ).getValue();',
'if (role_id==11 && user_type==3)',
' {',
' ',
'   apex.item("P124_QRY_STATUS_0").enable();',
'   apex.item("P124_QRY_STATUS_2").disable();',
'   apex.item("P124_QRY_STATUS_3").disable();',
'   apex.item("P124_QRY_STATUS_1").enable();',
' }',
' if (role_id==10 && user_type==2)',
' {',
'  apex.item("P124_QRY_STATUS_0").enable();',
'   apex.item("P124_QRY_STATUS_2").disable();',
'   apex.item("P124_QRY_STATUS_3").disable();',
'   apex.item("P124_QRY_STATUS_1").enable();',
' }',
' if (role_id==6 && user_type==1)',
' {',
'   ',
'   apex.item("P124_QRY_STATUS_0").enable();',
'   apex.item("P124_QRY_STATUS_2").enable();',
'   apex.item("P124_QRY_STATUS_1").enable();',
'   apex.item("P124_QRY_STATUS_3").enable();',
' }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12161631249470214671)
,p_name=>'Query_Status_Auto_closed'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_QRY_STATUS'
,p_condition_element=>'P124_QRY_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Closed'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  V_ROLE_ID number;',
'Begin',
'    If :P124_QRY_ID is not null then',
'       Begin',
'          select ROLE_ID INTO V_ROLE_ID',
'            from EDC_CRF_QUERIES',
'           where AUTO_FLAG = ''U''',
'             and QRY_ID = :P124_QRY_ID;',
'       Exception when others then',
'             V_ROLE_ID :=null;',
'       End; ',
'       If V_ROLE_ID is not null then',
'           If V_ROLE_ID <> :APP_EDC_ROLE_ID then',
'              return true;',
'           Else ',
'              return false;',
'           End If;     ',
'       End If;',
'   End If;',
'End;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12161631527242214672)
,p_event_id=>wwv_flow_imp.id(12161631249470214671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Sorry,You can not change Status.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152030538012917219)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_QUERIES'
,p_attribute_02=>'EDC_CRF_QUERIES'
,p_attribute_03=>'P124_QRY_ID'
,p_attribute_04=>'QRY_ID'
,p_internal_uid=>11051079769871413126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152030734006917219)
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
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(QRY_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_CRF_QUERIES;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P124_QRY_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in Get PK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152016534286917193)
,p_internal_uid=>11051079965865413126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152030951328917219)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_QUERIES'
,p_attribute_02=>'EDC_CRF_QUERIES'
,p_attribute_03=>'P124_QRY_ID'
,p_attribute_04=>'QRY_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11051080183187413126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152031140601917219)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add query details in child detail table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    INSERT INTO EDC_CRF_QUERIES_DETAILS( QRY_DETAIL_ID',
'                                       , QRY_ID',
'                                       , QRY_DESC',
'                                       , QRY_STATUS',
'                                       , QRY_RESPONSE',
'                                       , AUTO_FLAG',
'                                       )',
'                                 VALUES( (SELECT NVL(MAX(QRY_DETAIL_ID), 0) + 1',
'                                            FROM EDC_CRF_QUERIES_DETAILS',
'                                         )',
'                                       , :P124_QRY_ID',
'                                       , :P124_QRY_DESC',
'                                       , :P124_QRY_STATUS',
'                                       , :P124_QRY_RESPONSE',
'                                       , :P124_AUTO_FLAG',
'                                       );',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in Add query details in child detail table'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152016534286917193)
,p_process_when_type=>'NEVER'
,p_internal_uid=>11051080372460413126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789566308843567968)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add query details and update section status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_table_name varchar2(100);',
'  v_status number;',
'  v_crf_id number;',
'  v_cnt number;',
'  V_CRF_TABLE_PK_COL VARCHAR2(25);',
'  l_sql varchar2(10000);',
'  v_page_no number;',
'  V_STUDY_SITE_ID NUMBER;',
'begin',
'  ',
'  SELECT STUDY_SITE_ID INTO V_STUDY_SITE_ID FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID;',
'  ',
'  INSERT INTO EDC_CRF_QUERIES_DETAILS(QRY_DETAIL_ID,QRY_ID,QRY_DESC,QRY_STATUS,QRY_RESPONSE,AUTO_FLAG) ',
'  VALUES(',
'  (SELECT NVL(MAX(QRY_DETAIL_ID),0)+1 FROM EDC_CRF_QUERIES_DETAILS),:P124_QRY_ID,:P124_QRY_DESC,:P124_QRY_STATUS,:P124_QRY_RESPONSE,:P124_AUTO_FLAG);',
'',
'  /* to set visit status as query generated by CRA/DM 05102017 - DP*/',
'',
'  IF :P124_PAGE_ID IN (507,508,579,580,505,522,523,524,593,594,595,596,597,598,526,521,527,592,725,502,536,503,545,548,550,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584) THEN        --list of parent child pages c'
||'reated manually',
'      select crf_id,crf_table_name, CRF_TABLE_PK_COL,CRF_PAGE_NO',
'      into v_crf_Id,V_table_name,V_CRF_TABLE_PK_COL,v_page_no',
'      from edc_crf_master ',
'      where crf_page_no = :P124_PAGE_ID',
'      and study_id = :APP_EDC_STUDY_ID;',
'  ELSIF :P124_PAGE_ID NOT IN (507,508,579,580,505,522,523,524,593,594,595,596,597,598,526,521,527,592,725,502,536,503,545,548,550,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584) THEN      ',
'      select crf_id,crf_table_name, CRF_TABLE_PK_COL,CRF_PAGE_NO',
'      into v_crf_Id,V_table_name,V_CRF_TABLE_PK_COL,v_page_no',
'      from edc_crf_master',
'      where crf_id = :P124_CRF_ID;',
'  END IF;      ',
'    ',
'  select count(*) ',
'  into v_cnt',
'  from edc_patient_diary_pages',
'  where crf_id = v_crf_id',
'  and schedule_name not in (''Common Forms'');',
'  insert into temp(v_tmp,value1) values(''V_table_name'',V_table_name); commit;',
'  insert into temp(v_tmp,value1) values(''APP_EDC_PATIENT_DIARY_ID'',:APP_EDC_PATIENT_DIARY_ID); commit;',
'  insert into temp(v_tmp,value1) values(''V_CRF_TABLE_PK_COL'',V_CRF_TABLE_PK_COL); commit;',
'  insert into temp(v_tmp,value1) values(''P124_TBL_PK_ID'',:P124_TBL_PK_ID); commit;',
'  ',
'',
'  if v_Cnt > 0 then',
' ',
'    execute IMMEDIATE ''select section_status from ''|| V_table_name ||'' where PATIENT_DIARY_ID = ''|| :APP_EDC_PATIENT_DIARY_ID ||'' and ''|| V_CRF_TABLE_PK_COL ||'' = ''||:P124_TBL_PK_ID into v_status;',
'    insert into temp(v_tmp,value1) values(''v_status'',v_status); commit;',
'                              ',
'         if :APP_EDC_ROLE_ID IN (21,17,27) and v_status IN (4,3,6,5,4.5) then  --      FOR CRA(ALL SITE) AND CRA',
'            ',
'            EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                              '' SET  section_status= ''||2||  ',
'                              '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and ''|| V_CRF_TABLE_PK_COL ||'' = ''||:P124_TBL_PK_ID;',
'',
'            update edc_patient_diary',
'            set section_status = 5',
'            where PATIENT_DIARY_ID = :app_edc_PATIENT_DIARY_ID;',
'  ',
'         elsif :APP_EDC_ROLE_ID = 18 and v_status IN (6,7,8) then',
'         -- elsif :APP_EDC_ROLE_ID = 18 then',
'            ',
'            /*EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                             '' SET  section_status= ''||2||  ',
'                              '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and ''|| V_CRF_TABLE_PK_COL ||'' = ''||:P124_TBL_PK_ID;*/',
'',
'            update edc_patient_diary',
'            set section_status = 7',
'            where PATIENT_DIARY_ID = :app_edc_PATIENT_DIARY_ID;',
'            ',
'        elsif :APP_EDC_ROLE_ID = 21 and v_status IN (8,8.3,8.6) then',
'         -- elsif :APP_EDC_ROLE_ID = 18 then',
'            ',
'            /*EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                             '' SET  section_status= ''||2||  ',
'                              '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and ''|| V_CRF_TABLE_PK_COL ||'' = ''||:P124_TBL_PK_ID;*/',
'',
'            update edc_patient_diary',
'            set section_status = 8.3',
'            where PATIENT_DIARY_ID = :app_edc_PATIENT_DIARY_ID;',
'         ',
'         /*else',
'            ',
'            execute IMMEDIATE ''select section_status from ''|| V_table_name ||',
'                              '' where ''||V_CRF_TABLE_PK_COL||'' = ''||:P124_TBL_PK_ID ',
'                              into v_status;  ',
'    ',
'            if :APP_EDC_ROLE_ID IN (21,17,27) and v_status IN (4,3,6) then ',
'            ',
'                EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                             '' SET  section_status= ''||2||  ',
'                              '' where ''||V_CRF_TABLE_PK_COL||'' = ''||:P124_TBL_PK_ID;',
'           ',
'           elsif :APP_EDC_ROLE_ID = 18 and v_status IN (6,8) then',
'           -- elsif :APP_EDC_ROLE_ID = 18 then',
'                 ',
'                 EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                             '' SET  section_status= ''||2||  ',
'                              '' where ''||V_CRF_TABLE_PK_COL||'' = ''||:P124_TBL_PK_ID;',
'           end if;*/                              ',
'',
'        end if;',
'        ',
'        l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||V_table_name||'''''',''||:APP_EDC_STUDY_ID||'',''||V_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',''||v_page_no||'',''''SECTION_STATUS'''',''''''||v_status||'''''',''''2'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P124_TBL_PK_ID||'')'';',
'            execute immediate l_sql;',
'            commit;  ',
'',
'  /*elsif v_cnt = 0 then',
'  ',
'      execute IMMEDIATE ''select section_status from ''|| V_table_name ||'' where patient_profile_id = ''|| :APP_PATIENT_PROFILE_ID ||'' and ''|| V_CRF_TABLE_PK_COL ||'' = ''||:P124_TBL_PK_ID into v_status;',
'  ',
'        if :APP_EDC_ROLE_ID IN (21,17,27) and v_status IN (4,3,6,5) then  --      FOR CRA(ALL SITE) AND CRA',
'            ',
'            EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                              '' SET  section_status= ''||2||  ',
'                              '' where patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||'' and ''|| V_CRF_TABLE_PK_COL ||'' = ''||:P124_TBL_PK_ID;',
'  ',
'        elsif :APP_EDC_ROLE_ID = 18 and v_status IN (6,7,8) then',
'         -- elsif :APP_EDC_ROLE_ID = 18 then',
'            ',
'            EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                             '' SET  section_status= ''||2||  ',
'                              '' where patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||'' and ''|| V_CRF_TABLE_PK_COL ||'' = ''||:P124_TBL_PK_ID;',
'         ',
'        else',
'            ',
'            execute IMMEDIATE ''select section_status from ''|| V_table_name ||',
'                              '' where ''||V_CRF_TABLE_PK_COL||'' = ''||:P124_TBL_PK_ID ',
'                              into v_status;',
'    ',
'            if :APP_EDC_ROLE_ID IN (21,17,27) and v_status IN (4,3,6) then ',
'            ',
'                EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                             '' SET  section_status= ''||2||  ',
'                              '' where ''||V_CRF_TABLE_PK_COL||'' = ''||:P124_TBL_PK_ID;',
'           ',
'           elsif :APP_EDC_ROLE_ID = 18 and v_status IN (6,8) then',
'           -- elsif :APP_EDC_ROLE_ID = 18 then',
'                 ',
'                 EXECUTE IMMEDIATE ''UPDATE ''||V_table_name||',
'                             '' SET  section_status= ''||2||  ',
'                              '' where ''||V_CRF_TABLE_PK_COL||'' = ''||:P124_TBL_PK_ID;',
'           end if;                              ',
'',
'        end if;',
'        ',
'        l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||V_table_name||'''''',''||:APP_EDC_STUDY_ID||'',''||V_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',''||v_page_no||'',''''SECTION_STATUS'''',''''''||v_status||'''''',''''2'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P124_TBL_PK_ID||'')'';',
'            execute immediate l_sql;',
'            commit;*/',
'',
'  end if;  ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN(''CREATE'',''SAVE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>2688615540702063875
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789566499283567969)
,p_process_sequence=>55
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Parent Status_510'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_par_crfid number;',
'    v_chld_sec_status number;',
'    v_par_table varchar2(100);',
'    v_par_sec_status number;',
'    v_qry_count number;',
'    v_pk_col varchar2(30);',
'    v_pk_val number;',
'    v_max_audit_log_id number;',
'    v_ex_new_value number;',
'    l_sql varchar2(2000);',
'    V_table_name varchar2(100);',
'    V_CRF_TABLE_PK_COL varchar2(100);',
'    v_page_no number;',
'begin',
'',
'    select crf_table_name, CRF_TABLE_PK_COL,CRF_PAGE_NO',
'    into V_table_name,V_CRF_TABLE_PK_COL,v_page_no',
'    from edc_crf_master',
'    where crf_id = :P124_CRF_ID;',
'    ',
'    execute immediate ''select count(1) from ''||V_table_name||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;',
'    ',
'    if v_cnt > 0 then',
'        execute immediate ''select min(section_status) from ''||V_table_name||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID into v_chld_sec_status;',
'    end if;',
'    ',
'    select crf_id,crf_table_name,crf_table_pk_col into v_par_crfid, v_par_table,v_pk_col',
'    from edc_crf_master',
'    where crf_id = (select parent_page from edc_crf_master where crf_id = :P124_CRF_ID and study_id = :APP_EDC_STUDY_ID and crf_table_name = V_table_name)',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    execute immediate ''select section_status from ''||v_par_table||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID into v_par_sec_status;',
'    ',
'    execute immediate ''select count(1) from edc_crf_queries where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND CRF_ID = ''||v_par_crfid||'' and UPPER(qry_status) in (''''OPEN'''',''''REOPENED'''')'' into v_qry_count;',
'    ',
'    if v_qry_count > 0 then        --query exists',
'        ',
'        execute immediate ''update ''||v_par_table||'' set section_status = 2 where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID;',
'        commit;',
'        ',
'        execute immediate ''select ''||v_pk_col||'' from ''||v_par_table||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID into v_pk_val;',
'        ',
'        execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||v_par_table||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||v_pk_val into v_max_audit_log_id;',
'        commit;',
'        ',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'        ',
'        IF v_ex_new_value != 2 THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,patient_diary_id,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||v_par_table||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''2'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_val||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF; ',
'        ',
'    elsif v_qry_count = 0 then',
'    ',
'        execute immediate ''update ''||v_par_table||'' set section_status = ''||v_chld_sec_status||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID;',
'        commit;',
'        ',
'        execute immediate ''select ''||v_pk_col||'' from ''||v_par_table||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID into v_pk_val;',
'        ',
'        execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||v_par_table||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||v_pk_val into v_max_audit_log_id;',
'        commit;',
'        ',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'        ',
'        IF v_ex_new_value != v_chld_sec_status THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,patient_diary_id,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||v_par_table||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''''||v_chld_sec_status||'''''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_val||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF; ',
'        ',
'    end if;',
'    ',
'    ',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN(''CREATE'',''SAVE'') AND :P124_PAGE_ID IN (510)'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>2688615731142063876
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12162222542260486774)
,p_process_sequence=>65
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SEND_MAIL_FROM_CRA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ret number;',
'begin',
'    EDC_MAIL.SEND_MAIL_FROM_CRA(:APP_EDC_ROLE_ID,:APP_USER_NAME,',
'                                :APP_EDC_PATIENT_VISIT_ID,',
'                                :APP_EDC_STUDY_SITE_ID,',
'                                :P124_ITEM_NAME,   ',
'                                :P124_PAGE_ID,',
'                                v_ret',
'                               );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11061271774118982681
,p_process_comment=>':APP_EDC_ROLE_ID = 17 and :request in (''CREATE'',''SAVE'')'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152031549367917220)
,p_process_sequence=>75
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Open record for open query'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_tb_name varchar2(50);',
'  v_sql varchar2(1000);',
'  v_status varchar2(20);',
'  V_CRF_TABLE_PK_COL varchar2(25);',
'',
'begin',
'',
'  --select decode(:APP_EDC_ROLE_ID,18,''Submitted for Monitoring'',''Open'') into v_status from dual;',
'  v_status := 2;',
' ',
'  IF :P124_PAGE_ID NOT IN (507,508,579,580,505,522,523,524,593,594,595,596,597,598,526,521,527,592,725,502,536,503,545,548,550,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584) THEN',
'      select CRF_TABLE_NAME,CRF_TABLE_PK_COL',
'      into v_tb_name ,v_CRF_TABLE_PK_COL',
'      from edc_crf_master',
'      --where CRF_PAGE_NO = :P124_PAGE_ID;',
'      where crf_id = :P124_CRF_ID;',
'  ELSIF :P124_PAGE_ID IN (507,508,579,580,505,522,523,524,593,594,595,596,597,598,526,521,527,592,725,502,536,503,545,548,550,535,529,534,554,537,599,506,501,585,556,558,587,588,589,590,573,574,575,576,582,584) THEN',
'      select CRF_TABLE_NAME,CRF_TABLE_PK_COL',
'      into v_tb_name ,v_CRF_TABLE_PK_COL',
'      from edc_crf_master',
'      where CRF_PAGE_NO = :P124_PAGE_ID',
'      AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  /*v_sql := ''update ''|| v_tb_name || ',
'              '' set SECTION_STATUS = ''''''||v_status||'''''' where ''||V_CRF_TABLE_PK_COL||'' = ''||:P124_TBL_PK_ID||',
'              '' and study_id = ''||:APP_EDC_STUDY_ID;',
'  execute immediate v_sql;*/',
'  --dbms_output.put_line(v_sql);',
'  ',
'  --EDC_WORKFLOW.update_visit_status(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID);',
'',
'  if lower(:P124_QRY_STATUS) = ''closed'' and :APP_EDC_ROLE_ID in (18,17,21,27) then',
'    null;',
'  else',
'    if :APP_EDC_ROLE_ID = 18 then',
'      v_status := 2;',
'    elsif :APP_EDC_ROLE_ID in (17,27) then',
'      v_status := 2;',
'    elsif :APP_EDC_ROLE_ID = 21 then',
'      v_status := 2;      ',
'    else',
'      v_status := 2;',
'    end if;',
' ',
'    if :APP_EDC_ROLE_ID = 18 AND :P124_PAGE_ID NOT IN (819,820,518,519,526,592,521,527,502,536,503,545,548,550,725,547,535,534,554,537,599,506,501,585,556,558,587,588,589,590,',
'                                                      573,574,575,576,529,582,584) then',
'      execute immediate ''update EDC_PATIENT_DIARY set section_status=7 where PATIENT_DIARY_ID=''||:P124_PATIENT_DIARY_ID;',
'    elsif :APP_EDC_ROLE_ID in (17,27)  AND :P124_PAGE_ID NOT IN (819,820,518,519,526,592,521,527,502,536,503,545,548,550,725,547,535,534,554,537,599,506,501,585,556,558,587,588,589,590,',
'                                                      573,574,575,576,529,582,584) then',
'      execute immediate ''update EDC_PATIENT_DIARY set section_status=5 where PATIENT_DIARY_ID=''||:P124_PATIENT_DIARY_ID;',
'    elsif :APP_EDC_ROLE_ID = 21  AND :P124_PAGE_ID NOT IN (819,820,518,519,526,592,521,527,502,536,503,545,548,550,725,547,535,534,554,537,599,506,501,585,556,558,587,588,589,590,',
'                                                      573,574,575,576,529,582,584) then',
'      execute immediate ''update EDC_PATIENT_DIARY set section_status=8.3 where PATIENT_DIARY_ID=''||:P124_PATIENT_DIARY_ID;      ',
'    else',
'      --EDC_WORKFLOW.update_visit_status(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID,:APP_EDC_ROLE_ID,'''');',
'      EDC_WORKFLOW.update_schedule_status_web(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID);',
'    end if;',
' ',
'  end if;',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in Open record for open query'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152016534286917193)
,p_internal_uid=>11051080781226413127
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_tb_name varchar2(50);',
'    v_sql     varchar2(1000);',
'    v_status  number := 2;',
'begin',
'      ',
'      ',
'      select CRF_TABLE_NAME',
'      into v_tb_name',
'      from edc_crf_master',
'     where CRF_PAGE_NO = :P124_PAGE_ID;',
'',
'    v_sql := ''update '' || v_tb_name || '' set SECTION_STATUS = '''''' || v_status || '''''' where patient_visit_id = '' || :P124_PATIENT_VISIT_ID || '' and study_id = '' || :APP_EDC_STUDY_ID;',
'    execute immediate v_sql;',
'    ',
'    update edc_patient_Visit',
'       set crf_Status = v_Status',
'      where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID;',
'end;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11670330472497091309)
,p_process_sequence=>85
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P124_PARENT_REFRESH_FLAG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P124_PARENT_REFRESH_FLAG := 1;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152016534286917193)
,p_internal_uid=>10569379704355587216
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152031356652917219)
,p_process_sequence=>95
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152016945765917193)
,p_internal_uid=>11051080588511413126
);
wwv_flow_imp.component_end;
end;
/
