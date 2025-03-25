prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_tab_set=>'TS1'
,p_name=>'Query Response'
,p_step_title=>'Query Response'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_imp.id(9916884921573203154)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10569424411874822913)
,p_plug_name=>'Query Response'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left: 5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_CREATED_BY VARCHAR2(20);',
'v_QRY_STATUS varchar2(20);',
'v_auto_flag varchar2(1);',
'',
'BEGIN',
'    if :APP_EDC_ROLE_ID = 13 then',
'     return true;',
'     else',
'',
'        select UPPER(created_by) ,QRY_STATUS,auto_flag',
'        INTO V_CREATED_BY, v_QRY_STATUS,v_auto_flag',
'         from EDC_CRF_QUERIES where qry_id = :P4_QRY_ID;',
'IF V_QRY_STATUS = ''Closed'' then',
'return false;',
'else',
'if v_QRY_STATUS = ''Responded'' and  :APP_EDC_USER_TYPE = 3 and v_auto_flag = ''A'' then',
'   return false;',
'elsif v_QRY_STATUS = ''Responded'' and  :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID in (18,13) and v_auto_flag = ''A'' then',
'   return true;',
'else',
'IF V_CREATED_BY= UPPER(:APP_USER_NAME) OR :APP_EDC_USER_TYPE = 3 THEN',
'  RETURN TRUE;',
'ELSE ',
'RETURN FALSE;',
'END IF;',
'end if;',
'end if;',
'end if;',
'END;'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10569430365658822920)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>5
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10569432435169822922)
,p_name=>'Previous Response(s)'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>7
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:5px;margin-left: 5px;"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(QRY_dESC,''Other'',Qry_desc||''-''||qry_response,qry_desc) qry_desc,',
'CASE WHEN A.AUTO_FLAG = ''A'' THEN (SELECT QRY_STATUS FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID)',
'ELSE',
'A.QRY_STATUS END "QRY_STATUS",',
'CREATED_BY,CREATED_ON,(SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.CREATED_BY',
'    ) CONTACT_ROLE FROM EDC_CRF_QUERIES_DETAILS a',
' WHERE QRY_ID = :P4_QRY_ID',
'ORDER BY CREATED_ON DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(QRY_dESC,''Other'',Qry_desc||''-''||qry_response,qry_desc) qry_desc,QRY_STATUS,CREATED_BY,    to_char((CREATED_ON) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') CREATED_ON,(SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.C'
||'REATED_BY',
'    ) CONTACT_ROLE FROM EDC_CRF_QUERIES_DETAILS a',
' WHERE QRY_ID = :P4_QRY_ID',
'ORDER BY CREATED_ON DESC'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569432803133822923)
,p_query_column_id=>1
,p_column_alias=>'QRY_DESC'
,p_column_display_sequence=>1
,p_column_heading=>'Response'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569433192497822924)
,p_query_column_id=>2
,p_column_alias=>'QRY_STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569433582387822924)
,p_query_column_id=>3
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569434004013822924)
,p_query_column_id=>4
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>4
,p_column_heading=>'Created On'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH12:MI AM'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545224792702889507)
,p_query_column_id=>5
,p_column_alias=>'CONTACT_ROLE'
,p_column_display_sequence=>5
,p_column_heading=>'Role'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045613370157698579)
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10569434366722822924)
,p_name=>'Audit Trail'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left: 5px;"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return q''{SELECT ROWNUM,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,    to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,(SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE FROM AUDIT_TRAIL a WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(TRIM(:P4_ITEM_NAME)) AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID AND PAGE_NO =:P4_REQUEST_FROM  order by LOG_TIMESTAMP desc}'';'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_PATIENT_DIARY_ID,P4_REQUEST_FROM,P4_ITEM_NAME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
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
,p_comment=>'ITEM IS NOT NULL : P4_QRY_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569434743150822925)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Sr. No.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569435194890822926)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569435632399822926)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569435997168822926)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569436349969822926)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569436788981822926)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Date & Time'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569437155686822927)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Role'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045613370157698579)
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569437606359822927)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569438035389822927)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569438354794822928)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569438807310822928)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569439172579822928)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569439614291822928)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569439948689822929)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569440352582822929)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569440751582822929)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569441180390822929)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569441578776822930)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569442033478822930)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569442436075822930)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569442797974822930)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569443148161822931)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569443588388822931)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569444040427822931)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569444412142822931)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569444836649822932)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569445167454822932)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569445600556822932)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569445960001822932)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569446355299822933)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569446801063822933)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569447146966822933)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569447588969822933)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569447984933822934)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569448435275822934)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569448790707822934)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569449219673822934)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569449628716822935)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569450026685822935)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569450405122822935)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569450775884822935)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569451182247822936)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569451586288822936)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569451946740822936)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569452411819822936)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569452755919822937)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569453207168822937)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569453633814822937)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569454011117822937)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569454435958822938)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569454755770822938)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569455232032822938)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569455636593822938)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569455977497822939)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569456405345822939)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569456774217822939)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569457147684822939)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569457581212822939)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569457954344822940)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10569458388525822940)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10569458776868822940)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>6
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10569424821952822913)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P4_QRY_DETAIL_ID IS NOT NULL AND :APP_EDC_ROLE_ID IN (16,27,13)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10569425194782822914)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:window.close();'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10569425564349822914)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P4_QRY_DETAIL_ID IS NULL AND :APP_EDC_ROLE_ID IN (16,27,13)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10569425950345822914)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P4_QRY_DETAIL_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10569463001629822946)
,p_branch_name=>'Go To Page 4'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PARENT_REFRESH_FLAG:1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688614526621063864)
,p_name=>'P4_STATUS'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_imp.id(10569430365658822920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688614585583063865)
,p_name=>'P4_CRF_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_source=>'CRF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688614733586063866)
,p_name=>'P4_FLAG1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569426410146822915)
,p_name=>'P4_QRY_DETAIL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_source=>'QRY_DETAIL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569426794991822916)
,p_name=>'P4_QRY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_source=>'QRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569427183732822917)
,p_name=>'P4_QRY_STATUS'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Status</b>'
,p_source=>'QRY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select D,R',
' from',
' (',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- FOR CRC AND PI',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Responded'')',
'AND (SELECT auto_flag FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID) = ''A''',
'   and :APP_EDC_ROLE_ID in (16,15,23)  ',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- FOR CRC AND PI',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Responded'')',
'AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID and auto_flag = ''U'') <> 16',
'   and :APP_EDC_ROLE_ID in (16,15,23)  ',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- FOR CRC AND PI',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Closed'')',
'AND (SELECT created_by FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID and auto_flag = ''U'') = upper(:APP_USER_NAME)',
'   and :APP_EDC_ROLE_ID in (16,15,23)--,27)  ',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- for CRA IF QUERY WAS RAISED BY CRA',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Reopened'',''Closed'') ',
'   and (SELECT qry_status FROM EDC_CRF_QUERIES WHERE auto_flag = ''U'' and QRY_ID = :P4_QRY_ID) <> ''Closed''',
'   AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID and auto_flag = ''U'') in (27,17)',
'   and :APP_EDC_ROLE_ID in (27,17)',
'UNION ALL',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- for CRA IF QUERY WAS RAISED BY CRA',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Reopened'') ',
'   and (SELECT qry_status FROM EDC_CRF_QUERIES WHERE auto_flag = ''U'' and QRY_ID = :P4_QRY_ID) = ''Closed''',
'   AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID and auto_flag = ''U'') in (27,17)',
'   and :APP_EDC_ROLE_ID in (27,17)',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R -- FOR DM AND CRA AUTO QUERY',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Closed'',''Reopened'')',
'   AND (SELECT AUTO_FLAG  FROM EDC_cRF_QUERIES WHERE QRY_ID = :P4_QRY_ID) = ''A''',
'   and :APP_EDC_ROLE_ID in (18,13,27,17)',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R -- FOR DM IF QUERY RAISED BY DM',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Closed'',''Reopened'')',
'   and :APP_EDC_ROLE_ID IN (18,21)',
'    and (SELECT qry_status FROM EDC_CRF_QUERIES WHERE auto_flag = ''U'' and QRY_ID = :P4_QRY_ID) <> ''Closed''',
'  AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE auto_flag = ''U'' and QRY_ID = :P4_QRY_ID) IN (18,21)',
'  union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R -- FOR DM IF QUERY RAISED BY DM',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Reopened'')',
'   and :APP_EDC_ROLE_ID IN (18,21)',
'   and (SELECT qry_status FROM EDC_CRF_QUERIES WHERE auto_flag = ''U'' and QRY_ID = :P4_QRY_ID) = ''Closed''',
'  AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE auto_flag = ''U'' and QRY_ID = :P4_QRY_ID) IN (18,21)',
'  union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R -- FOR DM IF QUERY IS NOT RAISED BY DM',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(select qry_Status from edc_crf_queries where qry_id = :P4_QRY_ID)',
'   and :APP_EDC_ROLE_ID IN (18,21)',
'  AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE auto_flag = ''U'' and QRY_ID = :P4_QRY_ID) NOT IN (18,21)',
' )  ',
'order by r'))
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_auto_flag varchar2(1);',
'v_role_ID number;',
'V_CREATED_BY VARCHAR2(100);',
'V_QRY_STATUS VARCHAR2(20);',
'begin',
'select auto_flag,role_id,CREATED_BY,QRY_STATUS',
'  INTO V_AUTO_FLAG,V_ROLE_ID,V_CREATED_BY,V_QRY_sTATUS',
'from edc_Crf_queries',
' where qry_id = :P4_QRY_ID;',
'IF V_QRY_STATUS=  ''Closed'' then',
' return false;',
'else ',
'IF V_AUTO_FLAG = ''A'' THEN',
' RETURN TRUE;',
'ELSIF V_AUTO_FLAG = ''U'' AND (V_role_id = :APP_EDC_ROLE_ID or :APP_EDC_ROLE_ID in (13,16)) THEN',
'  RETURN TRUE;',
'ELSE',
'  RETURN FALSE;',
'END IF;',
'end if;',
'EXCEPTION',
'WHEN OTHERS THEN',
'  RETURN FALSE;',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select D,R',
' from',
' (',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- FOR CRC AND PI',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Responded'')',
'AND (SELECT auto_flag FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID) = ''A''',
'   and :APP_EDC_ROLE_ID in (16,15)  ',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- FOR CRC AND PI',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Responded'')',
'AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID and auto_flag = ''U'') <> 16',
'   and :APP_EDC_ROLE_ID in (16,15)  ',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- FOR CRC AND PI',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Closed'')',
'AND (SELECT created_by FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID and auto_flag = ''U'') = upper(:APP_USER_NAME)',
'   and :APP_EDC_ROLE_ID in (16,15)  ',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- for CRA IF QUERY WAS RAISED BY CRA',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Reopened'',''Closed'')   ',
'   AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID and auto_flag = ''U'') in (17,13)',
'   and :APP_EDC_ROLE_ID in (17,13)',
'UNION ALL  ',
'   select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R  -- for CRA IF QUERY WAS NOT RAISED BY CRA',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID',
'   and LOV_NAME=''QUERY_STATUS''',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'')   ',
'   AND (SELECT ROLE_ID FROM EDC_CRF_QUERIES WHERE QRY_ID = :P4_QRY_ID ) <> 17',
'   and :APP_EDC_ROLE_ID in (17,13)',
' )  ',
'order by r'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569427593296822918)
,p_name=>'P4_QRY_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Response</b>'
,p_source=>'QRY_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QUERY_RESPONSE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LV.DISPLAY_VALUE D, LV.STORED_VALUE R',
'  FROM EDC_LOV_VALUES LV',
'  JOIN EDC_LOV L',
'    ON L.LOV_ID = LV.LOV_ID',
'   AND L.LOV_NAME = ''QUERY_RESPONSE''',
' ORDER BY LV.SEQUENCE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Response --'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>':APP_EDC_ROLE_ID not in (15,16,13,27,17)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569427981041822918)
,p_name=>'P4_QRY_RESPONSE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Specify, If Other</b>'
,p_source=>'QRY_RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569428424774822918)
,p_name=>'P4_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569428749360822919)
,p_name=>'P4_CREATED_ON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569429144235822919)
,p_name=>'P4_UPDATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569429585474822919)
,p_name=>'P4_UPDATED_ON'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569429974757822919)
,p_name=>'P4_AUTO_FLAG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10569424411874822913)
,p_use_cache_before_default=>'NO'
,p_source=>'AUTO_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569430775490822920)
,p_name=>'P4_REQUEST_FROM'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(10569430365658822920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569431216777822920)
,p_name=>'P4_PARENT_REFRESH_FLAG'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_imp.id(10569430365658822920)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569431618404822921)
,p_name=>'P4_ITEM_NAME'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_imp.id(10569430365658822920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10569431978038822921)
,p_name=>'P4_COLUMN_NAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_imp.id(10569430365658822920)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ITEM_SOURCE ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P4_REQUEST_FROM ',
'AND APPLICATION_ID = :APP_ID ',
'AND replace(REPLACE(TRIM(UPPER(label)),''<B>''),''</B>'') = TRIM(UPPER(:P4_ITEM_NAME))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10569459244605822942)
,p_validation_name=>'P4_CREATED_ON must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P4_CREATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(10569428749360822919)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10569459730202822943)
,p_validation_name=>'P4_UPDATED_ON must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P4_UPDATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(10569429585474822919)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10572716157467182869)
,p_validation_name=>'P4_QRY_DESC'
,p_validation_sequence=>100
,p_validation=>'P4_QRY_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Query Response must have some value.'
,p_associated_item=>wwv_flow_imp.id(10569427593296822918)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10573101284914985232)
,p_validation_name=>'P4_QRY_RESPONSE must be not null'
,p_validation_sequence=>110
,p_validation=>'P4_QRY_RESPONSE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Specify must have some value.'
,p_validation_condition=>'P4_QRY_DESC'
,p_validation_condition2=>'Other'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(10569427981041822918)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10569461994366822945)
,p_name=>'Close Popup and Refresh Parent '
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v("P4_PARENT_REFRESH_FLAG")==1',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10569462446589822946)
,p_event_id=>wwv_flow_imp.id(10569461994366822945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.opener.location.href=window.opener.location.href;',
'window.close();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10572728101279207499)
,p_name=>'show hide others'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_QRY_DESC'
,p_condition_element=>'P4_QRY_DESC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10572728526008207499)
,p_event_id=>wwv_flow_imp.id(10572728101279207499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_QRY_RESPONSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10572728988992207499)
,p_event_id=>wwv_flow_imp.id(10572728101279207499)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_QRY_RESPONSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688614836427063867)
,p_name=>'Hide region for CRA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_auto_flag varchar2(10);',
'    v_role_id number;',
'    v_qry_status varchar2(20);',
'begin',
'    ',
'    IF :APP_EDC_ROLE_ID in (27,17) THEN',
'        ',
'        select auto_flag, role_id ,qry_status',
'        into v_auto_flag, v_role_id, v_qry_status',
'        from edc_crf_queries',
'        where qry_id = :P4_QRY_ID;',
'',
'        if v_role_id in (27,17) and v_auto_flag = ''U'' and v_qry_status in (''Open'',''Reopened'',''Responded'') then',
'            return false;    --show region',
'        elsif v_auto_flag = ''A'' and v_qry_status in (''Responded'') then',
'            return false;    --show region',
'        elsif (:P4_STATUS < 4 OR :P4_STATUS >= 6) AND :APP_EDC_ROLE_ID in (27) then',
'            return true;    --hide region',
'        else',
'            return true;',
'        end if;',
'        ',
'    END IF;',
'    ',
'end;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688614916172063868)
,p_event_id=>wwv_flow_imp.id(2688614836427063867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10569424411874822913)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688615211221063871)
,p_name=>'Hide region for CRC'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P4_QRY_STATUS NOT IN (''Open'',''Reopened'') AND :APP_EDC_ROLE_ID = 16'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688615260252063872)
,p_event_id=>wwv_flow_imp.id(2688615211221063871)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10569424411874822913)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10569460032449822943)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_QUERIES_DETAILS'
,p_attribute_02=>'EDC_CRF_QUERIES_DETAILS'
,p_attribute_03=>'P4_QRY_DETAIL_ID'
,p_attribute_04=>'QRY_DETAIL_ID'
,p_internal_uid=>10569460032449822943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2689210627743609995)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Find Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    V_CRF_TABLE_NAME varchar2(100);',
'    V_CRF_TABLE_PK_COL varchar2(100);',
'    V_PATIENT_VISIT_ID NUMBER;',
'    V_TBL_PK_ID NUMBER;',
'    V_SQL VARCHAR2(1000);',
'begin',
'    ',
'        SELECT CRF_TABLE_NAME, CRF_TABLE_PK_COL, B.PATIENT_VISIT_ID, B.TBL_PK_ID',
'        INTO V_CRF_TABLE_NAME, V_CRF_TABLE_PK_COL, V_PATIENT_VISIT_ID, V_TBL_PK_ID',
'        FROM EDC_CRF_MASTER A , EDC_CRF_QUERIES B',
'        WHERE A.CRF_ID = B.CRF_ID',
'        AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'        AND QRY_ID = :P4_QRY_ID;',
'',
'        V_SQL := ''SELECT SECTION_STATUS FROM ''||V_CRF_TABLE_NAME||'' WHERE ''||V_CRF_TABLE_PK_COL||'' = ''||V_TBL_PK_ID;',
'',
'        EXECUTE IMMEDIATE V_SQL INTO :P4_STATUS;',
'    ',
'END;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2689210627743609995
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10569460419346822943)
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
'   SELECT NVL(MAX(QRY_DETAIL_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_CRF_QUERIES_DETAILS;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P4_QRY_DETAIL_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10569425564349822914)
,p_internal_uid=>10569460419346822943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10569460761594822944)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_QUERIES_DETAILS'
,p_attribute_02=>'EDC_CRF_QUERIES_DETAILS'
,p_attribute_03=>'P4_QRY_DETAIL_ID'
,p_attribute_04=>'QRY_DETAIL_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>10569460761594822944
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10569461146574822944)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update query Master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update edc_crf_queries',
'       set qry_status = :P4_QRY_STATUS,',
'           QRY_RESPONSE = decode(:P4_QRY_DESC, ''Other'', :P4_QRY_DESC || ''-'' || :P4_QRY_RESPONSE, :P4_QRY_DESC)',
'     where qry_id = :P4_QRY_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'',''CREATE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>10569461146574822944
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9550897736405269106)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update visit status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'begin',
' select count(*) ',
'   into v_cnt',
'  from edc_crf_queries',
'  where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'   and page_id = 1001',
'   and qry_status in (''Open'',''Responded'',''Reopened'');',
'   ',
'   if v_cnt = 0 then',
'     update edc_patient_visit',
'        set crf_status = 3',
'      where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID;',
'    ',
'    else',
'     update edc_patient_visit',
'        set crf_status = 2',
'      where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID;',
'      ',
'   end if;',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'',''CREATE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>9550897736405269106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10569461580871822944)
,p_process_sequence=>55
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10569425950345822914)
,p_internal_uid=>10569461580871822944
);
wwv_flow_imp.component_end;
end;
/
