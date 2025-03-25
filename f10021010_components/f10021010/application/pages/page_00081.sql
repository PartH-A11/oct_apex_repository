prompt --application/pages/page_00081
begin
--   Manifest
--     PAGE: 00081
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
 p_id=>81
,p_tab_set=>'TS1'
,p_name=>'Study Statistical Analysis'
,p_step_title=>'Study Statistical Analysis'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12161508338368882670)
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
 p_id=>wwv_flow_imp.id(12161509246074926373)
,p_plug_name=>'RADIO LIST'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12150612929393769491)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P81_FLAG'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12161520027158647276)
,p_plug_name=>'PATIENT_VISIT_LIST_DYNAMIC'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12161518342002623142)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162270029630046978)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162513949774793947)
,p_plug_name=>'Parent'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>45
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11643587330696439226)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(12162513949774793947)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>55
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_SQL CLOB;',
'V_PAGE_NO NUMBER;',
'V_TABLE_NAME VARCHAR2(100);',
'BEGIN',
'--A.RANDOMNO,A.RANDOMIZATION_DATE ,',
'SELECT CRF_TABLE_NAME ,CRF_PAGE_NO',
'  INTO V_TABLE_NAME,V_PAGE_NO',
'  FROM EDC_CRF_MASTER',
' WHERE CRF_ID = :P81_SECTION_LIST;',
' V_SQL := ''SELECT LPAD(ESS.site_number,3,''''0'''')"Site No.",ES.INVNAME "Site Name",UPPER(A.PTINTL) AS "PTINTL",A.SCRNO,A.SCREENING_DATE, ',
' (select exkit from edc_crf_xr x, edc_patient_visit y , edc_patient_profile z',
' where x.patient_visit_id = y.patient_visit_id',
'   and y.patient_profile_id = z.patient_profile_id',
'   and z.patient_profile_id = a.patient_profile_id )RANDOMNO,',
'   (select y.actual_date from edc_crf_xr x, edc_patient_visit y , edc_patient_profile z',
' where x.patient_visit_id = y.patient_visit_id',
'   and y.patient_profile_id = z.patient_profile_id',
'   and z.patient_profile_id = a.patient_profile_id)RANDOMIZATION_DATE,',
' b.visit_title,to_char(actual_date,''''DD-MON-YYYY'''') "VISIT_DATE" '';',
' FOR I IN ( SELECT A.COLUMN_NAME FROM USER_tab_COLUMNS A,USER_CONS_COLUMNS B,user_constraints C',
'  WHERE A.TABLE_NAME = B.TABLE_NAME',
'    AND A.TABLE_NAME = C.TABLE_NAME',
'    AND B.CONSTRAINT_NAME = C.CONSTRAINT_NAME',
'    AND A.TABLE_NAME = V_TABLE_NAME',
'    AND C.CONSTRAINT_TYPE = ''P''',
'    AND A.COLUMN_NAME <> B.COLUMN_NAME   ',
'    AND A.COLUMN_NAME NOT IN (''STUDY_ID'',''PATIENT_VISIT_ID'',''SECTION_STATUS'',''UPDATED_BY'',''UPDATED_DT'',''CREATED_DT'',''CREATED_BY''))',
'  LOOP',
'    V_SQL := V_SQL ||'' ,EDC_UTIL.get_lov_val_from_item(''||',
'                        :APP_ID||'',''||V_PAGE_NO||'',''''''||I.COLUMN_NAME||''''''''||'', C.''||I.COLUMN_NAME||'') AS "''||I.COLUMN_NAME||''"'';',
'  END LOOP;',
' ',
'',
'V_sQL := V_sQL ||'' FROM EDC_PATIENT_PROFILE A,EDC_PATIENT_VISIT B, ''||V_TABLE_NAME||'' C,edc_study_sites ess,edc_sites es'';',
'V_SQL:= V_sQL ||'' WHERE A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID '';',
'V_SQL:= V_sQL ||'' AND B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID'';',
'V_SQL:= V_sQL ||'' AND A.STUDY_SITE_ID = ESS.STUDY_SITE_ID'';',
'V_SQL:= V_sQL ||'' AND ESS.SITE_ID = ES.SITE_ID'';',
'V_SQL:= V_sQL ||'' and b.param_id = nvl(:P81_FLAG,b.param_id)'';',
'V_SQL := V_SQL ||'' AND A.PATIENT_PROFILE_ID = NVL(:P81_PATIENTS,A.PATIENT_PROFILE_ID)'';',
'V_SQL:= V_sQL ||'' AND A.STUDY_SITE_ID = NVL(:P81_SITES,A.STUDY_SITE_ID)'';',
'',
'RETURN V_SQL;',
'--DBMS_OUTPUT.PUT_LINE(V_SQL);',
'END;'))
,p_display_when_condition=>':P81_SECTION_LIST NOT IN(999,3,8)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_plug_query_max_columns=>60
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_plug_query_exp_filename=>'Download'
,p_plug_query_exp_separator=>','
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_SQL CLOB;',
'V_PAGE_NO NUMBER;',
'V_TABLE_NAME VARCHAR2(100);',
'BEGIN',
'SELECT CRF_TABLE_NAME ,CRF_PAGE_NO',
'  INTO V_TABLE_NAME,V_PAGE_NO',
'  FROM EDC_CRF_MASTER',
' WHERE CRF_ID = :P81_SECTION_LIST;',
' V_SQL := ''SELECT UPPER(A.PTINTL) AS "PTINTL",A.SCRNO,A.SCREENING_DATE,A.RANDOMNO,A.RANDOMIZATION_DATE , LPAD(ESS.site_number,3,''''0'''')"Site No.",ES.INVNAME "Site Name",b.visit_title,to_char(actual_date,''''DD-MON-YYYY'''') "VISIT_DATE" '';',
' FOR I IN ( SELECT A.COLUMN_NAME FROM USER_tab_COLUMNS A,USER_CONS_COLUMNS B,user_constraints C',
'  WHERE A.TABLE_NAME = B.TABLE_NAME',
'    AND A.TABLE_NAME = C.TABLE_NAME',
'    AND B.CONSTRAINT_NAME = C.CONSTRAINT_NAME',
'    AND A.TABLE_NAME = V_TABLE_NAME',
'    AND C.CONSTRAINT_TYPE = ''P''',
'    AND A.COLUMN_NAME <> B.COLUMN_NAME   ',
'    AND A.COLUMN_NAME NOT IN (''STUDY_ID'',''PATIENT_VISIT_ID'',''SECTION_STATUS'',''UPDATED_BY'',''UPDATED_DT'',''CREATED_DT'',''CREATED_BY''))',
'  LOOP',
'    V_SQL := V_SQL ||'' ,EDC_UTIL.get_lov_val_from_item(''||',
'                        :APP_ID||'',''||V_PAGE_NO||'',''''''||I.COLUMN_NAME||''''''''||'', C.''||I.COLUMN_NAME||'') AS "''||I.COLUMN_NAME||''"'';',
'  END LOOP;',
' ',
'',
'V_sQL := V_sQL ||'' FROM EDC_PATIENT_PROFILE A,EDC_PATIENT_VISIT B, ''||V_TABLE_NAME||'' C,edc_study_sites ess,edc_sites es'';',
'V_SQL:= V_sQL ||'' WHERE A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID '';',
'V_SQL:= V_sQL ||'' AND B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID'';',
'V_SQL:= V_sQL ||'' AND A.STUDY_SITE_ID = ESS.STUDY_SITE_ID'';',
'V_SQL:= V_sQL ||'' AND ESS.SITE_ID = ES.SITE_ID'';',
'V_SQL:= V_sQL ||'' and b.param_id = nvl(:P81_FLAG,b.param_id)'';',
'V_SQL := V_SQL ||'' AND A.PATIENT_PROFILE_ID = NVL(:P81_PATIENTS,A.PATIENT_PROFILE_ID)'';',
'V_SQL:= V_sQL ||'' AND A.STUDY_SITE_ID = NVL(:P81_SITES,A.STUDY_SITE_ID)'';',
'',
'RETURN V_SQL;',
'--DBMS_OUTPUT.PUT_LINE(V_SQL);',
'END;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643589004742441033)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Col01'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643589409538441034)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Col02'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643589748018441034)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643590196221441034)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643590556486441034)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Col05'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643590936775441035)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643591432885441035)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643591741190441035)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643592210920441035)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643592560585441036)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643592978189441036)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643593432854441036)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643593758461441037)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643594213436441037)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643594539533441037)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643594960340441037)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643595345436441038)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643595776720441038)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643596156756441038)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643596625997441041)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643596986211441042)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643597355209441042)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643597741088441042)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643598151824441042)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643598580756441043)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643598981373441043)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643599425747441043)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643599742353441043)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643600170247441044)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643600443531441044)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643600916367441044)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643601266789441044)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643601674468441045)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643602056102441045)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643602495263441045)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643602889161441046)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643603247617441046)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643603719504441046)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643604109285441046)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643604448038441047)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643604905818441047)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643605242526441047)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643605713650441047)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643606045818441048)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643606458421441048)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643606841441441048)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643607291847441048)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643607666394441049)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643608075866441049)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643608492121441049)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643608932354441049)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643609333750441050)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643609692393441050)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643610041264441050)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643610488264441050)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643610890930441051)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643611328068441051)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643611670557441051)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643612113202441051)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11643612480976441052)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11646405466306524334)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(12162513949774793947)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>65
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(ESS.site_number,3,''0'')"Site No.",',
'  ES.INVNAME "Site Name",',
'  UPPER(A.PTINTL) AS "PTINTL",',
'  A.SCRNO,',
'  A.SCREENING_DATE,',
'  (select exkit from edc_crf_xr x, edc_patient_visit y , edc_patient_profile z',
' where x.patient_visit_id = y.patient_visit_id',
'   and y.patient_profile_id = z.patient_profile_id',
'   and z.patient_profile_id = a.patient_profile_id) RANDOMNO,',
'  (select y.actual_date from edc_crf_xr x, edc_patient_visit y , edc_patient_profile z',
' where x.patient_visit_id = y.patient_visit_id',
'   and y.patient_profile_id = z.patient_profile_id',
'   and z.patient_profile_id = a.patient_profile_id) RANDOMIZATION_DATE ,',
'  b.visit_title,',
'  TO_CHAR(actual_date,''DD-MON-YYYY'') "VISIT_DATE" ,',
'  EDC_UTIL.get_lov_val_from_item(85699,502,''UKDAY'', C.UKDAY)||''-''||EDC_UTIL.get_lov_val_from_item(85699,502,''UNKMONTH'', C.UNKMONTH)||''-''||EDC_UTIL.get_lov_val_from_item(85699,502,''UNKNYR'', C.UNKNYR)     AS "BRTHDAT" ,',
'  EDC_UTIL.get_lov_val_from_item(85699,502,''AGE'', C.AGE)             AS "AGE" ,',
'  EDC_UTIL.get_lov_val_from_item(85699,502,''SEX'', C.SEX)             AS "SEX" ,',
'  EDC_UTIL.get_lov_val_from_item(85699,502,''ETHNIC'', C.ETHNIC)       AS "ETHNIC" ,',
'  EDC_UTIL.get_lov_val_from_item(85699,502,''ETHNICOTH'', C.ETHNICOTH) AS "ETHNICOTH" ,',
'  EDC_UTIL.get_lov_val_from_item(85699,502,''RACE'', C.RACE)           AS "RACE" ,',
'  EDC_UTIL.get_lov_val_from_item(85699,502,''RACEOTH'', C.RACEOTH)     AS "RACEOTH"  ',
'FROM EDC_PATIENT_PROFILE A,',
'  EDC_PATIENT_VISIT B,',
'  EDC_CRF_DM C,',
'  edc_study_sites ess,',
'  edc_sites es',
'WHERE A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'AND B.PATIENT_VISIT_ID     = C.PATIENT_VISIT_ID',
'AND A.STUDY_SITE_ID        = ESS.STUDY_SITE_ID',
'AND ESS.SITE_ID            = ES.SITE_ID',
'AND b.param_id             = NVL(:P81_FLAG,b.param_id)',
'AND A.PATIENT_PROFILE_ID   = NVL(:P81_PATIENTS,A.PATIENT_PROFILE_ID)',
'AND A.STUDY_SITE_ID        = NVL(:P81_SITES,A.STUDY_SITE_ID)'))
,p_display_when_condition=>':P81_SECTION_LIST = 3'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
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
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_plug_query_exp_filename=>'Download'
,p_plug_query_exp_separator=>','
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646406006876524338)
,p_query_column_id=>1
,p_column_alias=>'Site No.'
,p_column_display_sequence=>2
,p_column_heading=>'Site No.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646406476606524339)
,p_query_column_id=>2
,p_column_alias=>'Site Name'
,p_column_display_sequence=>1
,p_column_heading=>'Site Name'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646406821327524339)
,p_query_column_id=>3
,p_column_alias=>'PTINTL'
,p_column_display_sequence=>3
,p_column_heading=>'Ptintl'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646407219844524339)
,p_query_column_id=>4
,p_column_alias=>'SCRNO'
,p_column_display_sequence=>4
,p_column_heading=>'Scrno'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646407606863524339)
,p_query_column_id=>5
,p_column_alias=>'SCREENING_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Screening Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646701371742265579)
,p_query_column_id=>6
,p_column_alias=>'RANDOMNO'
,p_column_display_sequence=>6
,p_column_heading=>'Randomno'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646701614528265579)
,p_query_column_id=>7
,p_column_alias=>'RANDOMIZATION_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Randomization Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646408814755524340)
,p_query_column_id=>8
,p_column_alias=>'VISIT_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'Visit Title'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646409269956524340)
,p_query_column_id=>9
,p_column_alias=>'VISIT_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Visit Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646409657205524341)
,p_query_column_id=>10
,p_column_alias=>'BRTHDAT'
,p_column_display_sequence=>11
,p_column_heading=>'Brthdat'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646410028823524341)
,p_query_column_id=>11
,p_column_alias=>'AGE'
,p_column_display_sequence=>10
,p_column_heading=>'Age'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646410436600524341)
,p_query_column_id=>12
,p_column_alias=>'SEX'
,p_column_display_sequence=>12
,p_column_heading=>'Sex'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646410880279524341)
,p_query_column_id=>13
,p_column_alias=>'ETHNIC'
,p_column_display_sequence=>13
,p_column_heading=>'Ethnic'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646411269090524342)
,p_query_column_id=>14
,p_column_alias=>'ETHNICOTH'
,p_column_display_sequence=>14
,p_column_heading=>'Ethnicoth'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646411629155524342)
,p_query_column_id=>15
,p_column_alias=>'RACE'
,p_column_display_sequence=>15
,p_column_heading=>'Race'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11646412037615524342)
,p_query_column_id=>16
,p_column_alias=>'RACEOTH'
,p_column_display_sequence=>16
,p_column_heading=>'Raceoth'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11649324678432368299)
,p_name=>'Report XMA'
,p_parent_plug_id=>wwv_flow_imp.id(12162513949774793947)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>75
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return q''{ SELECT LPAD(ESS.site_number,3,''0'')"Site No.",',
'    ES.INVNAME "Site Name",UPPER(A.PTINTL) AS "PTINTL",',
'    A.SCRNO,A.SCREENING_DATE, ',
' (select exkit from edc_crf_xr x, edc_patient_visit y , edc_patient_profile z',
' where x.patient_visit_id = y.patient_visit_id',
'   and y.patient_profile_id = z.patient_profile_id',
'   and z.patient_profile_id = a.patient_profile_id )RANDOMNO,',
'   (select y.actual_date from edc_crf_xr x, edc_patient_visit y , edc_patient_profile z',
' where x.patient_visit_id = y.patient_visit_id',
'   and y.patient_profile_id = z.patient_profile_id',
'   and z.patient_profile_id = a.patient_profile_id)RANDOMIZATION_DATE,',
' b.visit_title,to_char(actual_date,''DD-MON-YYYY'') "VISIT_DATE"  ,',
'C.XMAMET||''  ''|| C.XMAMET2 AS "XMAMET" ,',
'EDC_UTIL.get_lov_val_from_item(:app_id,510,''XMAPA'', C.XMAPA) AS "XMAPA" ,',
'EDC_UTIL.get_lov_val_from_item(:app_id,510,''XMABU'', C.XMABU) AS "XMABU" ,',
'EDC_UTIL.get_lov_val_from_item(:app_id,510,''XMAARE'', C.XMAARE) AS "XMAARE" ',
'FROM EDC_PATIENT_PROFILE A,EDC_PATIENT_VISIT B, EDC_CRF_XMA C,edc_study_sites ess,edc_sites es ',
'WHERE A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID  ',
'AND B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID ',
'AND A.STUDY_SITE_ID = ESS.STUDY_SITE_ID ',
'AND ESS.SITE_ID = ES.SITE_ID ',
'and b.param_id = nvl(:P81_FLAG,b.param_id) ',
'AND A.PATIENT_PROFILE_ID = NVL(:P81_PATIENTS,A.PATIENT_PROFILE_ID) ',
'AND A.STUDY_SITE_ID = NVL(:P81_SITES,A.STUDY_SITE_ID)}'';'))
,p_display_when_condition=>':P81_SECTION_LIST = 8'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_plug_query_max_columns=>60
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_plug_query_exp_filename=>'Download'
,p_plug_query_exp_separator=>','
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_SQL CLOB;',
'V_PAGE_NO NUMBER;',
'V_TABLE_NAME VARCHAR2(100);',
'BEGIN',
'SELECT CRF_TABLE_NAME ,CRF_PAGE_NO',
'  INTO V_TABLE_NAME,V_PAGE_NO',
'  FROM EDC_CRF_MASTER',
' WHERE CRF_ID = :P81_SECTION_LIST;',
' V_SQL := ''SELECT UPPER(A.PTINTL) AS "PTINTL",A.SCRNO,A.SCREENING_DATE,A.RANDOMNO,A.RANDOMIZATION_DATE , LPAD(ESS.site_number,3,''''0'''')"Site No.",ES.INVNAME "Site Name",b.visit_title,to_char(actual_date,''''DD-MON-YYYY'''') "VISIT_DATE" '';',
' FOR I IN ( SELECT A.COLUMN_NAME FROM USER_tab_COLUMNS A,USER_CONS_COLUMNS B,user_constraints C',
'  WHERE A.TABLE_NAME = B.TABLE_NAME',
'    AND A.TABLE_NAME = C.TABLE_NAME',
'    AND B.CONSTRAINT_NAME = C.CONSTRAINT_NAME',
'    AND A.TABLE_NAME = V_TABLE_NAME',
'    AND C.CONSTRAINT_TYPE = ''P''',
'    AND A.COLUMN_NAME <> B.COLUMN_NAME   ',
'    AND A.COLUMN_NAME NOT IN (''STUDY_ID'',''PATIENT_VISIT_ID'',''SECTION_STATUS'',''UPDATED_BY'',''UPDATED_DT'',''CREATED_DT'',''CREATED_BY''))',
'  LOOP',
'    V_SQL := V_SQL ||'' ,EDC_UTIL.get_lov_val_from_item(''||',
'                        :APP_ID||'',''||V_PAGE_NO||'',''''''||I.COLUMN_NAME||''''''''||'', C.''||I.COLUMN_NAME||'') AS "''||I.COLUMN_NAME||''"'';',
'  END LOOP;',
' ',
'',
'V_sQL := V_sQL ||'' FROM EDC_PATIENT_PROFILE A,EDC_PATIENT_VISIT B, ''||V_TABLE_NAME||'' C,edc_study_sites ess,edc_sites es'';',
'V_SQL:= V_sQL ||'' WHERE A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID '';',
'V_SQL:= V_sQL ||'' AND B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID'';',
'V_SQL:= V_sQL ||'' AND A.STUDY_SITE_ID = ESS.STUDY_SITE_ID'';',
'V_SQL:= V_sQL ||'' AND ESS.SITE_ID = ES.SITE_ID'';',
'V_SQL:= V_sQL ||'' and b.param_id = nvl(:P81_FLAG,b.param_id)'';',
'V_SQL := V_SQL ||'' AND A.PATIENT_PROFILE_ID = NVL(:P81_PATIENTS,A.PATIENT_PROFILE_ID)'';',
'V_SQL:= V_sQL ||'' AND A.STUDY_SITE_ID = NVL(:P81_SITES,A.STUDY_SITE_ID)'';',
'',
'RETURN V_SQL;',
'--DBMS_OUTPUT.PUT_LINE(V_SQL);',
'END;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649324984676368302)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Col01'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649325332183368302)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Col02'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649325707441368302)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649326148000368303)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649326538379368303)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Col05'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649326959686368303)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649327293659368304)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649327701067368304)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649328156864368304)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649328585818368304)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649328954122368305)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649329345178368305)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649329707118368306)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649330160708368306)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649330489168368306)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649330953740368306)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649331353219368307)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649331694206368307)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649332119485368307)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649332518463368307)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649332949928368308)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649333306477368308)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649333763876368308)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649334123144368308)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649334528538368309)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649334962153368309)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649335303575368309)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649335744172368310)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649336169763368310)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649336565541368310)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649336964410368310)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649337382921368311)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649337737902368311)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649338129507368311)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649338551467368311)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649338889901368312)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649339348130368312)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649339700280368312)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649340114500368312)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649340520687368313)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649340911072368313)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649341370532368313)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649341745951368313)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649342166157368314)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649342563976368314)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649342893046368314)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649343328864368314)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649343773333368315)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649344098765368315)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649344560027368315)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649344967893368315)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649345384332368316)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649345748046368316)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649346114366368316)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649346521899368316)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649346926146368317)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649347364855368317)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649347738107368317)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649348087676368318)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11649348575501368318)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11645877225799986021)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12161520027158647276)
,p_button_name=>'PRINT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download XLS'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11641989231330423885)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12161520027158647276)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download PDF'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11643578103537418452)
,p_name=>'P81_SECTION_LIST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12161509246074926373)
,p_prompt=>'Section List'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct(D), R',
'  FROM (SELECT B.CRF_SHORT_NAME D, A.CRF_ID R',
'          FROM EDC_CRF_PAGES A, EDC_CRF_MASTER B',
'         WHERE A.CRF_ID = B.CRF_ID',
'           and B.crf_short_name not in (''MSHD'',''PRI CHEMO DET'')',
'           AND A.PARAM_ID = nvl(:P81_FLAG,a.param_id)',
'         ORDER BY A.SEQ_NO)'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'9'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645888793896268827)
,p_name=>'P81_SITES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12161520027158647276)
,p_prompt=>'Sites'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SITE_NUMBER||'' - ''||EDC_SITE_PKG.get_site_name(SITE_ID)||'' (''||EDC_SITE_PKG.get_investigator_name(SITE_ID)||'')'' d, STUDY_SITE_ID r ',
'  from edc_study_sites',
' where status IN (1,2,3)',
'   AND  study_site_id in ',
'case ',
'when :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 17 then (select STUDY_SITE_ID from EDC_SITE_CONTACTS where SITE_CONTACT_ID = to_number(:APP_EDC_USER))',
'when :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 13 then (study_site_id)',
'when :APP_EDC_USER_TYPE = 2 then (select contact_id from EDC_STUDY_CONTACT where study_contact_id =  to_number(:APP_EDC_USER_ID))',
'when :APP_EDC_USER_TYPE = 3 then (select b.study_site_id from edc_study_contact a,edc_study_sites b,edc_site_contacts c',
' where a.contact_id = c.site_contact_id',
'   and b.study_site_id = c.study_site_id',
'   and a.study_contact_id = :APP_EDC_USER_ID',
'   and a.type = 3)',
'/*else',
'study_site_id*/',
'end',
' order by d'))
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645890653420294171)
,p_name=>'P81_PATIENTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12161520027158647276)
,p_prompt=>'Patients'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCRNO||'' (''||PTINTL||'')'' D,PATIENT_PROFILE_ID R FROM EDC_PATIENT_PROFILE',
' WHERE STUDY_SITE_ID = :P81_SITES',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12161510150302940337)
,p_name=>'P81_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12161520027158647276)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11632488725556276715)
,p_name=>'Download Jasper report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11645877225799986021)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11632488758623276716)
,p_event_id=>wwv_flow_imp.id(11632488725556276715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'if($v("P81_PATIENTS") != ""){v_pat = $v("P81_PATIENTS");}else{v_pat=0;}',
'if($v("P81_FLAG") != ""){v_flag= $v("P81_FLAG");}else{v_flag=0;}',
'',
'window.open(''../JasperReportsIntegration/report?_repName=CLTH_EPI_DEV_UAT/site_wise_crf_main&_repFormat=xls&_dataSource=default&_outFilename=Study_Statistical_Analysis.xls&_repLocale=en_US&_repEncoding=UTF-8&P_STUDY_SITE_ID=''+$v("P81_SITES")+''&P_PATI'
||'ENT_PROFILE_ID=''+ $v("P81_PATIENTS") +''&P_PARAM_ID=''+ $v("P81_FLAG")+'''',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11645894718562496391)
,p_name=>'print button on page load'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_SITES'
,p_condition_element=>'P81_SITES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11645895094154496392)
,p_event_id=>wwv_flow_imp.id(11645894718562496391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11645877225799986021)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11645895602429496392)
,p_event_id=>wwv_flow_imp.id(11645894718562496391)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11645877225799986021)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11641989334431423886)
,p_name=>'print pdf button on page load'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_SITES'
,p_condition_element=>'P81_SITES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11641989401029423887)
,p_event_id=>wwv_flow_imp.id(11641989334431423886)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11641989231330423885)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11641989527584423888)
,p_event_id=>wwv_flow_imp.id(11641989334431423886)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11641989231330423885)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11646250083810336794)
,p_name=>'Download Jasper report Print ANNO '
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11641989231330423885)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11646250470336336797)
,p_event_id=>wwv_flow_imp.id(11646250083810336794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'if($v("P81_PATIENTS") != ""){v_pat = $v("P81_PATIENTS");}else{v_pat=0;}',
'if($v("P81_FLAG") != ""){v_flag= $v("P81_FLAG");}else{v_flag=0;}',
'',
'window.open(''../JasperReportsIntegration/report?_repName=CLTH_EPI_DEV_DEMO/ANNOTATION_CRF/MAIN&_repFormat=pdf&_dataSource=default&_outFilename=Study_Statistical_Analysis.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_STUDY_SITE_ID=''+$v("P81_SITES")+''&P_PA'
||'TIENT_PROFILE_ID=''+ $v("P81_PATIENTS") +''&P_PARAM_ID=''+ $v("P81_FLAG")+'''',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
