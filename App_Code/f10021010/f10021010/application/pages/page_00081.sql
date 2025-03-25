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
,p_default_id_offset=>759714394172364641
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
 p_id=>wwv_flow_imp.id(11060557570227378577)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11060558477933422280)
,p_plug_name=>'RADIO LIST'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11049662161252265398)
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
 p_id=>wwv_flow_imp.id(11060569259017143183)
,p_plug_name=>'PATIENT_VISIT_LIST_DYNAMIC'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11060567573861119049)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11061319261488542885)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11061563181633289854)
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
 p_id=>wwv_flow_imp.id(10542636562554935133)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(11061563181633289854)
,p_template=>wwv_flow_imp.id(11045181488778407888)
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
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
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
 p_id=>wwv_flow_imp.id(10542638236600936940)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Col01'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542638641396936941)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Col02'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542638979876936941)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542639428079936941)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542639788344936941)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Col05'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542640168633936942)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542640664743936942)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542640973048936942)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542641442778936942)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542641792443936943)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542642210047936943)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542642664712936943)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542642990319936944)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542643445294936944)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542643771391936944)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542644192198936944)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542644577294936945)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542645008578936945)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542645388614936945)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542645857855936948)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542646218069936949)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542646587067936949)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542646972946936949)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542647383682936949)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542647812614936950)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542648213231936950)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542648657605936950)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542648974211936950)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542649402105936951)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542649675389936951)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542650148225936951)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542650498647936951)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542650906326936952)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542651287960936952)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542651727121936952)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542652121019936953)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542652479475936953)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542652951362936953)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542653341143936953)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542653679896936954)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542654137676936954)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542654474384936954)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542654945508936954)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542655277676936955)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542655690279936955)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542656073299936955)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542656523705936955)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542656898252936956)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542657307724936956)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542657723979936956)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542658164212936956)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542658565608936957)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542658924251936957)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542659273122936957)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542659720122936957)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542660122788936958)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542660559926936958)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542660902415936958)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542661345060936958)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10542661712834936959)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10545454698165020241)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(11061563181633289854)
,p_template=>wwv_flow_imp.id(11045181488778407888)
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
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
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
 p_id=>wwv_flow_imp.id(10545455238735020245)
,p_query_column_id=>1
,p_column_alias=>'Site No.'
,p_column_display_sequence=>2
,p_column_heading=>'Site No.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545455708465020246)
,p_query_column_id=>2
,p_column_alias=>'Site Name'
,p_column_display_sequence=>1
,p_column_heading=>'Site Name'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545456053186020246)
,p_query_column_id=>3
,p_column_alias=>'PTINTL'
,p_column_display_sequence=>3
,p_column_heading=>'Ptintl'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545456451703020246)
,p_query_column_id=>4
,p_column_alias=>'SCRNO'
,p_column_display_sequence=>4
,p_column_heading=>'Scrno'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545456838722020246)
,p_query_column_id=>5
,p_column_alias=>'SCREENING_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Screening Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545750603600761486)
,p_query_column_id=>6
,p_column_alias=>'RANDOMNO'
,p_column_display_sequence=>6
,p_column_heading=>'Randomno'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545750846386761486)
,p_query_column_id=>7
,p_column_alias=>'RANDOMIZATION_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Randomization Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545458046614020247)
,p_query_column_id=>8
,p_column_alias=>'VISIT_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'Visit Title'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545458501815020247)
,p_query_column_id=>9
,p_column_alias=>'VISIT_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Visit Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545458889064020248)
,p_query_column_id=>10
,p_column_alias=>'BRTHDAT'
,p_column_display_sequence=>11
,p_column_heading=>'Brthdat'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545459260682020248)
,p_query_column_id=>11
,p_column_alias=>'AGE'
,p_column_display_sequence=>10
,p_column_heading=>'Age'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545459668459020248)
,p_query_column_id=>12
,p_column_alias=>'SEX'
,p_column_display_sequence=>12
,p_column_heading=>'Sex'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545460112138020248)
,p_query_column_id=>13
,p_column_alias=>'ETHNIC'
,p_column_display_sequence=>13
,p_column_heading=>'Ethnic'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545460500949020249)
,p_query_column_id=>14
,p_column_alias=>'ETHNICOTH'
,p_column_display_sequence=>14
,p_column_heading=>'Ethnicoth'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545460861014020249)
,p_query_column_id=>15
,p_column_alias=>'RACE'
,p_column_display_sequence=>15
,p_column_heading=>'Race'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545461269474020249)
,p_query_column_id=>16
,p_column_alias=>'RACEOTH'
,p_column_display_sequence=>16
,p_column_heading=>'Raceoth'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10548373910290864206)
,p_name=>'Report XMA'
,p_parent_plug_id=>wwv_flow_imp.id(11061563181633289854)
,p_template=>wwv_flow_imp.id(11045181488778407888)
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
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
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
 p_id=>wwv_flow_imp.id(10548374216534864209)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Col01'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548374564041864209)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Col02'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548374939299864209)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548375379858864210)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548375770237864210)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Col05'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548376191544864210)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548376525517864211)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548376932925864211)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548377388722864211)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548377817676864211)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548378185980864212)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548378577036864212)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548378938976864213)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548379392566864213)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548379721026864213)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548380185598864213)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548380585077864214)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548380926064864214)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548381351343864214)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548381750321864214)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548382181786864215)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548382538335864215)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548382995734864215)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548383355002864215)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548383760396864216)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548384194011864216)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548384535433864216)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548384976030864217)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548385401621864217)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548385797399864217)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548386196268864217)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548386614779864218)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548386969760864218)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548387361365864218)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548387783325864218)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548388121759864219)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548388579988864219)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548388932138864219)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548389346358864219)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548389752545864220)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548390142930864220)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548390602390864220)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548390977809864220)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548391398015864221)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548391795834864221)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548392124904864221)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548392560722864221)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548393005191864222)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548393330623864222)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548393791885864222)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548394199751864222)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548394616190864223)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548394979904864223)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548395346224864223)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548395753757864223)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548396158004864224)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548396596713864224)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548396969965864224)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548397319534864225)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10548397807359864225)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10544926457658481928)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11060569259017143183)
,p_button_name=>'PRINT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download XLS'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10541038463188919792)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11060569259017143183)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download PDF'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10542627335395914359)
,p_name=>'P81_SECTION_LIST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11060558477933422280)
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
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'9'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10544938025754764734)
,p_name=>'P81_SITES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11060569259017143183)
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
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10544939885278790078)
,p_name=>'P81_PATIENTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11060569259017143183)
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
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11060559382161436244)
,p_name=>'P81_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11060569259017143183)
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
 p_id=>wwv_flow_imp.id(10531537957414772622)
,p_name=>'Download Jasper report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10544926457658481928)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10531537990481772623)
,p_event_id=>wwv_flow_imp.id(10531537957414772622)
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
 p_id=>wwv_flow_imp.id(10544943950420992298)
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
 p_id=>wwv_flow_imp.id(10544944326012992299)
,p_event_id=>wwv_flow_imp.id(10544943950420992298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10544926457658481928)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10544944834287992299)
,p_event_id=>wwv_flow_imp.id(10544943950420992298)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10544926457658481928)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10541038566289919793)
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
 p_id=>wwv_flow_imp.id(10541038632887919794)
,p_event_id=>wwv_flow_imp.id(10541038566289919793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10541038463188919792)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10541038759442919795)
,p_event_id=>wwv_flow_imp.id(10541038566289919793)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10541038463188919792)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10545299315668832701)
,p_name=>'Download Jasper report Print ANNO '
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10541038463188919792)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10545299702194832704)
,p_event_id=>wwv_flow_imp.id(10545299315668832701)
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
