prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_name=>'Query'
,p_step_title=>'Query'
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
 p_id=>wwv_flow_imp.id(12154349547545479166)
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
 p_id=>wwv_flow_imp.id(12154353935131479176)
,p_plug_name=>'Audit Trail'
,p_parent_plug_id=>wwv_flow_imp.id(12154349547545479166)
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
 p_id=>wwv_flow_imp.id(12154354145486479178)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(12154353935131479176)
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
 p_id=>wwv_flow_imp.id(12154355144372479180)
,p_name=>'Query Status Details'
,p_parent_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT QRY_DESC as Query,QRY_RESPONSE as Response,QRY_STATUS,CREATED_BY,CREATED_ON FROM EDC_CRF_QUERIES_DETAILS WHERE QRY_ID = :P52_QRY_ID',
'order by CREATED_ON desc '))
,p_display_when_condition=>'P52_QRY_ID'
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
 p_id=>wwv_flow_imp.id(12154355345249479180)
,p_query_column_id=>1
,p_column_alias=>'QUERY'
,p_column_display_sequence=>2
,p_column_heading=>'Query <br> Description'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154355443668479180)
,p_query_column_id=>2
,p_column_alias=>'RESPONSE'
,p_column_display_sequence=>1
,p_column_heading=>'Query <br> Response'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154355551100479180)
,p_query_column_id=>3
,p_column_alias=>'QRY_STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Query <br> Status'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154355643952479181)
,p_query_column_id=>4
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Updated <br> By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154355756986479181)
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
 p_id=>wwv_flow_imp.id(12154355836246479182)
,p_name=>'Item Audit Trail Report'
,p_parent_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>16
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>'return q''{SELECT ROWNUM,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP FROM AUDIT_TRAIL WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(TRIM(:P52_ITEM_DATABASE_COLUMN)) AND PATIENT_VISIT_ID = :P52_PATIENT_VISIT_ID AND PAGE_NO =:P52_REQUEST_FROM  order by L'
||'OG_TIMESTAMP desc}'';'
,p_display_when_condition=>'P52_QRY_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P52_PATIENT_VISIT_ID,P52_REQUEST_FROM,P52_ITEM_NAME'
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
 p_id=>wwv_flow_imp.id(12154359935384479184)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Version Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360050827479184)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360135477479184)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360228569479184)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360339201479184)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360456984479184)
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
 p_id=>wwv_flow_imp.id(12154360554265479184)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360652077479184)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360729561479184)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360829084479184)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154360936984479184)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361056433479184)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361127446479184)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361236092479184)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361330855479184)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361445650479184)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361530250479185)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361645270479185)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361743072479185)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361855155479185)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356051630479182)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356146690479182)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356227117479182)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356325343479182)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356451613479182)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356557236479183)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356635362479183)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356748692479183)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356843663479183)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154356925860479183)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357049893479183)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357156819479183)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357242061479183)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357331318479183)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357440375479183)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357532323479183)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357628828479183)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357753436479183)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357843992479183)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154357927918479183)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358047826479183)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358155023479183)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358236211479183)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358328222479183)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358424986479183)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358532881479183)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358630984479184)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358744312479184)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358830468479184)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154358928673479184)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359053019479184)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359146808479184)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359243728479184)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359341310479184)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359434331479184)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359547758479184)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359635579479184)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359728225479184)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154359831381479184)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154361931077479185)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12154362230360479187)
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
'where pv.patient_visit_id=( select PATIENT_VISIT_ID from EDC_CRF_QUERIES where qry_id= :P52_QRY_ID)',
'and pv.crf_status=cs.RETURN_VAL and pp.patient_profile_id=pv.patient_profile_id'))
,p_display_when_condition=>'P52_QRY_ID'
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
 p_id=>wwv_flow_imp.id(12154362426258479187)
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
 p_id=>wwv_flow_imp.id(12154362556185479187)
,p_query_column_id=>2
,p_column_alias=>'PTINTL'
,p_column_display_sequence=>2
,p_column_heading=>'PTINTL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154362647317479187)
,p_query_column_id=>3
,p_column_alias=>'Screening Date'
,p_column_display_sequence=>3
,p_column_heading=>'Screening Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154362735324479188)
,p_query_column_id=>4
,p_column_alias=>'SCRNO'
,p_column_display_sequence=>4
,p_column_heading=>'SCRNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154362851190479188)
,p_query_column_id=>5
,p_column_alias=>'VISIT_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Visit Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154362939426479188)
,p_query_column_id=>6
,p_column_alias=>'VISIT_TITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Visit Title'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154363026550479188)
,p_query_column_id=>7
,p_column_alias=>'VISIT_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Visit Type'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154363140282479188)
,p_query_column_id=>8
,p_column_alias=>'SCHEDULE_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Schedule Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12154363230766479188)
,p_query_column_id=>9
,p_column_alias=>'Actual Date'
,p_column_display_sequence=>9
,p_column_heading=>'Actual Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12154350124985479168)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12154349547545479166)
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
 p_id=>wwv_flow_imp.id(12154350547638479169)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:133:&SESSION.::&DEBUG.:RP:P133_PAGE_ID:&P52_PAGE_ID.'');'
,p_button_condition=>'P52_REQUEST_FROM'
,p_button_condition2=>'133'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12154350325255479168)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Close'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:self.close();'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12154349935998479168)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Submit Response'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P52_QRY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12154349728642479167)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Save'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P52_QRY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12154366253983479195)
,p_branch_action=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::P52_PARENT_REFRESH_FLAG:1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154350733087479171)
,p_name=>'P52_AUTO_FLAG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_item_default=>'U'
,p_source=>'AUTO_FLAG'
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
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154350942505479171)
,p_name=>'P52_ROLE_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Status2'
,p_source=>'APP_EDC_ROLE_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154351126907479172)
,p_name=>'P52_USER_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_USER_TYPE'
,p_source=>'APP_EDC_USER_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154351327120479172)
,p_name=>'P52_PARENT_REFRESH_FLAG'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154351546352479172)
,p_name=>'P52_REQUEST_FROM'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(12154351736369479172)
,p_name=>'P52_PAGE_NAME_DISP'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_item_default=>':P52_PAGE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Page'
,p_source=>':P52_PAGE_ID'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154351935380479172)
,p_name=>'P52_QRY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qry Id'
,p_source=>'QRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154352153688479173)
,p_name=>'P52_STUDY_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Study Id'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154352354585479173)
,p_name=>'P52_PATIENT_VISIT_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Patient Visit Id'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154352549587479173)
,p_name=>'P52_PAGE_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page Name'
,p_source=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154352753510479173)
,p_name=>'P52_ITEM_NAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Name'
,p_source=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d,r',
'from edc_crf_qry_view',
'where page_no = :P52_PAGE_ID',
'and r not in  (''P50_IF_CONTINUE'')',
'order by DISPLAY_SEQUENCE'))
,p_lov_cascade_parent_items=>'P52_PAGE_ID'
,p_ajax_items_to_submit=>'P52_PAGE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P52_QRY_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
'   and  a.page_id = :P52_PAGE_ID',
'   and replace(a.LABEL,CHR(38)||''nbsp;'','''') is not null',
'   AND a.LABEL IS NOT NULL',
'   and nvl(a.CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'   and nvl(B.CONDITION_TYPE_CODE,''null'') <> ''NEVER'' ',
'   AND a.APPLICATION_ID = :APP_ID',
'   and a.LABEL not in (''Section Status :'',''Created By'',''Created On'',''Updated By'',''Updated On'')',
'order by a.DISPLAY_SEQUENCE'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154352936363479174)
,p_name=>'P52_QRY_DESC'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Query'
,p_source=>'QRY_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P52_QRY_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154353137527479174)
,p_name=>'P52_QRY_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Open'
,p_prompt=>'Status'
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
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
,p_attribute_04=>'HORIZONTAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154353331492479175)
,p_name=>'P52_QRY_RESPONSE'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Response'
,p_source=>'QRY_RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154353538422479175)
,p_name=>'P52_TEMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154353735159479175)
,p_name=>'P52_QUERY_PAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12154354352961479179)
,p_name=>'P52_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12154354145486479178)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
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
 p_id=>wwv_flow_imp.id(12154354553089479179)
,p_name=>'P52_CREATED_DT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12154354145486479178)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(12154354730697479180)
,p_name=>'P52_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12154354145486479178)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
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
 p_id=>wwv_flow_imp.id(12154354938512479180)
,p_name=>'P52_UPDATED_DT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12154354145486479178)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated Date'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(12154362029197479186)
,p_name=>'P52_ITEM_DATABASE_COLUMN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12154355836246479182)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select  ITEM_SOURCE ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P52_REQUEST_FROM ',
'AND APPLICATION_ID = :APP_ID ',
'AND TRIM(UPPER(ITEM_NAME)) = TRIM(UPPER(:P52_ITEM_NAME))'))
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
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12163365230775047222)
,p_name=>'P52_TBL_PK_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_source=>'TBL_PK_ID'
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
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12163365841965072414)
,p_name=>'P52_TBL_TYPE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(12154349547545479166)
,p_use_cache_before_default=>'NO'
,p_source=>'TBL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(12154363440880479191)
,p_computation_sequence=>10
,p_computation_item=>'P52_QUERY_PAGE'
,p_computation_point=>'AFTER_FOOTER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT PAGE_ID FROM EDC_CRF_QUERIES WHERE QRY_ID= :P52_QRY_ID'
,p_compute_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(12154363654437479192)
,p_computation_sequence=>10
,p_computation_item=>'P52_PARENT_REFRESH_FLAG'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
,p_compute_when=>':REQUEST IN(''SAVE'');'
,p_compute_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12154364925512479193)
,p_name=>'Clear Response'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12154365226084479194)
,p_event_id=>wwv_flow_imp.id(12154364925512479193)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_QRY_RESPONSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12154365331786479194)
,p_name=>'Close Popup and Refresh Parent '
,p_event_sequence=>20
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v("P52_PARENT_REFRESH_FLAG")==1',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12154365651854479194)
,p_event_id=>wwv_flow_imp.id(12154365331786479194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.opener.location.href=window.opener.location.href;',
'window.close();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12154365750473479194)
,p_name=>'Diasble Query Status Option based on type'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P52_QRY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12154366043684479195)
,p_event_id=>wwv_flow_imp.id(12154365750473479194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var role_id = apex.item("P52_ROLE_ID" ).getValue();',
'var user_type = apex.item("P52_USER_ID" ).getValue();',
'if (user_type==3)',
' {',
' ',
'   apex.item("P52_QRY_STATUS_0").enable();',
'   apex.item("P52_QRY_STATUS_2").disable();',
'   apex.item("P52_QRY_STATUS_3").disable();',
'   apex.item("P52_QRY_STATUS_1").enable();',
' }',
' if (user_type==2)',
' {',
'  apex.item("P52_QRY_STATUS_0").enable();',
'   apex.item("P52_QRY_STATUS_2").disable();',
'   apex.item("P52_QRY_STATUS_3").disable();',
'   apex.item("P52_QRY_STATUS_1").enable();',
' }',
' if (user_type==1)',
' {',
'   ',
'   apex.item("P52_QRY_STATUS_0").enable();',
'   apex.item("P52_QRY_STATUS_2").enable();',
'   apex.item("P52_QRY_STATUS_1").enable();',
'   apex.item("P52_QRY_STATUS_3").enable();',
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12154363742639479192)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_QUERIES'
,p_attribute_02=>'EDC_CRF_QUERIES'
,p_attribute_03=>'P52_QRY_ID'
,p_attribute_04=>'QRY_ID'
,p_internal_uid=>11053412974497975099
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12154363940636479192)
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
'    :P52_QRY_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12154349728642479167)
,p_internal_uid=>11053413172494975099
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12154364134063479192)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_QUERIES'
,p_attribute_02=>'EDC_CRF_QUERIES'
,p_attribute_03=>'P52_QRY_ID'
,p_attribute_04=>'QRY_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11053413365921975099
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12154364332025479192)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add query details in child detail table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'INSERT INTO EDC_CRF_QUERIES_DETAILS(QRY_DETAIL_ID,QRY_ID,QRY_DESC,QRY_STATUS,QRY_RESPONSE,AUTO_FLAG) ',
'VALUES(',
'(SELECT NVL(MAX(QRY_DETAIL_ID),0)+1 FROM EDC_CRF_QUERIES_DETAILS),:P52_QRY_ID,:P52_QRY_DESC,:P52_QRY_STATUS,:P52_QRY_RESPONSE,:P52_AUTO_FLAG',
');',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Add query details in child detail table'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12154349935998479168)
,p_process_when=>':REQUEST IN(''CREATE'',''SAVE'')'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11053413563883975099
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12154364547153479193)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'124'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12154350124985479168)
,p_internal_uid=>11053413779011975100
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12154364725168479193)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Open record for open query'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_tb_name varchar2(50);',
'  v_sql varchar2(1000);',
'begin',
'  select CRF_TABLE_NAME into v_tb_name from edc_crf_master where CRF_PAGE_NO = :P52_PAGE_ID;',
'',
'  v_sql := ''update ''|| v_tb_name || '' set SECTION_STATUS = ''''Open'''' where patient_visit_id = ''||:P52_PATIENT_VISIT_ID||'' and study_id = ''||:APP_EDC_STUDY_ID;',
'  execute immediate v_sql;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in Open record for open query'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P52_QRY_STATUS in (''Open'',''Reopen'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>11053413957026975100
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TBL_PK_ID = P52_QRY_ID',
'TBL_TYPE = CONCOMIT',
'ROLE_ID = :APP_EDC_ROLE_ID',
'',
'  select CRF_TABLE_NAME /*into v_tb_name*/ from edc_crf_master where CRF_PAGE_NO = :P52_PAGE_ID;',
'  v_sql := ''update ''|| v_tb_name || '' set crf_status = ''''Incomplete'''' where patient_visit_id = ''||:P52_PATIENT_VISIT_ID||'' and study_id = ''||:APP_EDC_STUDY_ID;',
'  execute immediate v_sql;'))
);
wwv_flow_imp.component_end;
end;
/
