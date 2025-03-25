prompt --application/pages/page_00141
begin
--   Manifest
--     PAGE: 00141
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
 p_id=>141
,p_name=>'Audit Trail'
,p_step_title=>'Audit Trail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(11045178358769407882)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2689206752725609957)
,p_name=>'Item Audit Trail Report'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>221
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:1050px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM,',
'  AUDIT_LOG_ID,',
'  --COLUMN_NAME,',
'  ITEM_LABEL,',
'  nvl(OLD_VALUE,''-''),',
'  nvl(NEW_VALUE,''-''),',
'  ACTION,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  reason',
'FROM',
'  (SELECT A.AUDIT_LOG_ID,--A.COLUMN_NAME,',
'   CASE WHEN A.COLUMN_NAME = ''EPRO_STATUS'' THEN ''ePRO Subject Status''',
'   ELSE',
'   (SELECT REPLACE(REPLACE(LABEL,''</b>'',''''),''<b>'','''') LABEL FROM APEX_APPLICATION_PAGE_ITEMS WHERE PAGE_ID = 37 AND ITEM_SOURCE = A.COLUMN_NAME AND APPLICATION_ID = :APP_ID) END ITEM_LABEL,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.old_value) AS "OLD_VALUE",',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.new_value) AS "NEW_VALUE",',
'    A.ACTION,',
'    A.USERNAME,',
'    to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'    A.reason',
'  FROM AUDIT_TRAIL A',
'  WHERE TABLE_NAME = ''EDC_PATIENT_PROFILE''',
'   AND PATIENT_PROFILE_ID = :P141_PATIENT_PROFILE_ID',
'  AND A.COLUMN_NAME = NVL(:P141_ITEM_3,A.COLUMN_NAME)',
'  AND A.COLUMN_NAME IN (''EPRO_STATUS'')',
'   union',
'   SELECT A.AUDIT_LOG_ID,--A.COLUMN_NAME,',
'   CASE WHEN A.COLUMN_NAME = ''USER_LANG'' THEN ''Language''',
'   ELSE',
'   (SELECT REPLACE(REPLACE(LABEL,''</b>'',''''),''<b>'','''') LABEL FROM APEX_APPLICATION_PAGE_ITEMS WHERE PAGE_ID = 37 AND ITEM_SOURCE = A.COLUMN_NAME AND APPLICATION_ID = :APP_ID) END ITEM_LABEL,',
'    decode(A.OLD_VALUE,''EN'',''English'',''ES'',''Spanish'',''PT'',''Portuguese'') AS "OLD_VALUE",',
'    decode(A.NEW_VALUE,''EN'',''English'',''ES'',''Spanish'',''PT'',''Portuguese'') AS "NEW_VALUE",',
'    A.ACTION,',
'    A.USERNAME,',
'    to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'    A.reason',
'  FROM AUDIT_TRAIL A',
'  WHERE TABLE_NAME = ''EDC_PATIENT_PROFILE''',
'   AND PATIENT_PROFILE_ID = :P141_PATIENT_PROFILE_ID',
'  AND A.COLUMN_NAME = NVL(:P141_ITEM_3,A.COLUMN_NAME)',
'  AND A.COLUMN_NAME IN (''USER_LANG'')',
'   union',
'   SELECT A.AUDIT_LOG_ID,--A.COLUMN_NAME,',
'   CASE WHEN A.COLUMN_NAME = ''EPRO_PASSWORD'' THEN ''Password''',
'   ELSE',
'   (SELECT REPLACE(REPLACE(LABEL,''</b>'',''''),''<b>'','''') LABEL FROM APEX_APPLICATION_PAGE_ITEMS WHERE PAGE_ID = 37 AND ITEM_SOURCE = A.COLUMN_NAME AND APPLICATION_ID = :APP_ID) END ITEM_LABEL,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.old_value) AS "OLD_VALUE",',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.new_value) AS "NEW_VALUE",',
'    A.ACTION,',
'    A.USERNAME,',
'    to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'    A.reason',
'  FROM AUDIT_TRAIL A',
'  WHERE TABLE_NAME = ''EDC_PATIENT_PROFILE''',
'   AND PATIENT_PROFILE_ID = :P141_PATIENT_PROFILE_ID',
'  AND A.COLUMN_NAME = NVL(:P141_ITEM_3,A.COLUMN_NAME)',
'  AND A.COLUMN_NAME IN (''EPRO_PASSWORD'')',
'   union',
'  SELECT  AUDIT_LOG_ID,',
'  GET_COLUMN_LABLE_NAME(37, COLUMN_NAME) ITEM_LABEL,',
'  DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(36,OLD_VALUE),OLD_VALUE) OLD_VALUE ,',
'DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(36,NEW_VALUE),NEW_VALUE) NEW_VALUE,',
'  ACTION,',
'USERNAME,',
'to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE TABLE_NAME = ''EDC_PATIENT_PROFILE''',
'AND TABLE_PK_VALUE = :P141_PK_ID',
'   AND COLUMN_NAME = NVL(:P141_ITEM_3,COLUMN_NAME)',
'   AND COLUMN_NAME IN (''EPRO_STDT'',''EPRO_STTM'',''EPRO_DIARY_TYPE'')',
'  )',
'  ORDER BY 2 DESC;'))
,p_display_when_condition=>':P141_PAGE_ID IN (37)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_header=>'<div style="overflow-x:scroll;">'
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P141_PATIENT_PROFILE_ID,P141_PK_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>'style="padding-left:20px;padding-right:20px; width:1000px;"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689206890977609958)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689207014333609959)
,p_query_column_id=>2
,p_column_alias=>'AUDIT_LOG_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689207167935609961)
,p_query_column_id=>3
,p_column_alias=>'ITEM_LABEL'
,p_column_display_sequence=>3
,p_column_heading=>'Item Label'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689207259424609962)
,p_query_column_id=>4
,p_column_alias=>'NVL(OLD_VALUE,''-'')'
,p_column_display_sequence=>4
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689207376392609963)
,p_query_column_id=>5
,p_column_alias=>'NVL(NEW_VALUE,''-'')'
,p_column_display_sequence=>5
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689207469521609964)
,p_query_column_id=>6
,p_column_alias=>'ACTION'
,p_column_display_sequence=>6
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689207544537609965)
,p_query_column_id=>7
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>7
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689207737746609966)
,p_query_column_id=>8
,p_column_alias=>'LOG_TIMESTAMP'
,p_column_display_sequence=>8
,p_column_heading=>'Log Timestamp'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689207806801609967)
,p_query_column_id=>9
,p_column_alias=>'REASON'
,p_column_display_sequence=>9
,p_column_heading=>'Reason'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2689208317545609972)
,p_name=>'Item Audit Trail Report'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>231
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:800px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM,',
'  AUDIT_LOG_ID,',
'  --COLUMN_NAME,',
'  ITEM_LABEL,',
'  nvl(OLD_VALUE,''-''),',
'  nvl(NEW_VALUE,''-''),',
'  ACTION,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  reason',
'FROM',
'  (',
'  SELECT  AUDIT_LOG_ID,',
'  ''Diary Type'' ITEM_LABEL,',
'  DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(36,OLD_VALUE),OLD_VALUE) OLD_VALUE ,',
'DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(36,NEW_VALUE),NEW_VALUE) NEW_VALUE,',
'  ACTION,',
'USERNAME,',
'to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE TABLE_NAME = ''EDC_PATIENT_DIARY''',
'AND TABLE_PK_VALUE = :P141_PK_ID',
'   AND COLUMN_NAME = NVL(:P141_ITEM_4,COLUMN_NAME)',
'   AND COLUMN_NAME IN (''DIARY_TYPE'')',
'  )',
'  ORDER BY 2 DESC;'))
,p_display_when_condition=>':P141_PAGE_ID IN (45)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_header=>'<div style="overflow-x:scroll;">'
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P141_PATIENT_DIARY_ID,P141_PK_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>'style="padding-left:20px;padding-right:20px; width:1000px;"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689208396692609973)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689208524936609974)
,p_query_column_id=>2
,p_column_alias=>'AUDIT_LOG_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689208551334609975)
,p_query_column_id=>3
,p_column_alias=>'ITEM_LABEL'
,p_column_display_sequence=>3
,p_column_heading=>'Item Label'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689208693704609976)
,p_query_column_id=>4
,p_column_alias=>'NVL(OLD_VALUE,''-'')'
,p_column_display_sequence=>4
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689208836446609977)
,p_query_column_id=>5
,p_column_alias=>'NVL(NEW_VALUE,''-'')'
,p_column_display_sequence=>5
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689208907958609978)
,p_query_column_id=>6
,p_column_alias=>'ACTION'
,p_column_display_sequence=>6
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689208992442609979)
,p_query_column_id=>7
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>7
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689209084769609980)
,p_query_column_id=>8
,p_column_alias=>'LOG_TIMESTAMP'
,p_column_display_sequence=>8
,p_column_heading=>'Log Timestamp'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689209181189609981)
,p_query_column_id=>9
,p_column_alias=>'REASON'
,p_column_display_sequence=>9
,p_column_heading=>'Reason'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4136587650623558507)
,p_name=>'Item Audit Trail Report'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>211
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:800px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM,',
'  AUDIT_LOG_ID,',
'  COLUMN_NAME,',
'  ITEM_LABEL,',
'  nvl(OLD_VALUE,''-''),',
'  nvl(NEW_VALUE,''-''),',
'  ACTION,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  reason',
'FROM',
'  (SELECT A.AUDIT_LOG_ID,A.COLUMN_NAME,B.ITEM_LABEL,',
'    --EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.old_value) AS "OLD_VALUE",',
'    --EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.new_value) AS "NEW_VALUE",',
'   CASE WHEN B.ITEM_TYPE IN (''RADIO BUTTON'',''SELECT LIST'') THEN',
'    (SELECT DISPLAY_VALUE FROM EDC_LOV_VALUES ',
'    WHERE LOV_ID = (SELECT ITEM_LOV FROM EDC_CRF_ITEMS WHERE COLUMN_NAME = A.COLUMN_NAME',
'                    AND STUDY_ID = A.STUDY_ID',
'                    AND CRF_ID = (SELECT CRF_ID FROM EDC_CRF_MASTER WHERE CRF_TABLE_NAME = A.TABLE_NAME',
'                                  AND STUDY_ID = A.STUDY_ID AND CRFYN = ''Yes'' AND CRF_PAGE_NO IN (100,509,510)))',
'    AND STORED_VALUE = A.OLD_VALUE)',
'    ELSE ',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.old_value)',
'    END AS "OLD_VALUE", ',
'    CASE WHEN B.ITEM_TYPE IN (''RADIO BUTTON'',''SELECT LIST'') THEN',
'    (SELECT DISPLAY_VALUE FROM EDC_LOV_VALUES ',
'    WHERE LOV_ID = (SELECT ITEM_LOV FROM EDC_CRF_ITEMS WHERE COLUMN_NAME = A.COLUMN_NAME',
'                    AND STUDY_ID = A.STUDY_ID',
'                    AND CRF_ID = (SELECT CRF_ID FROM EDC_CRF_MASTER WHERE CRF_TABLE_NAME = A.TABLE_NAME',
'                                  AND STUDY_ID = A.STUDY_ID AND CRFYN = ''Yes'' AND CRF_PAGE_NO IN (100,509,510)))',
'    AND STORED_VALUE = A.NEW_VALUE) ',
'    ELSE',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.new_value)',
'    END AS "NEW_VALUE",',
'    A.ACTION,',
'    A.USERNAME,',
'    A.LOG_TIMESTAMP,',
'    A.reason',
'  FROM AUDIT_TRAIL A, EDC_CRF_ITEMS B',
'  WHERE PATIENT_DIARY_ID           = :P141_PATIENT_DIARY_ID',
'  AND A.COLUMN_NAME = B.COLUMN_NAME',
'  AND A.STUDY_ID = B.STUDY_ID',
'  AND TABLE_NAME = :P141_TABLE_NAME',
'  --AND PAGE_NO IN (100,509)',
'  AND B.CRF_ID = :P141_CRF_ID',
'  AND B.COLUMN_NAME = NVL(:P141_ITEM_NAME_2,B.COLUMN_NAME)',
'  AND A.TABLE_NAME NOT IN (''EDC_CRF_OMD661'',''EDC_CRF_ONSD661'',''EDC_CRF_OCOMPDET661'',''EDC_CRF_OCOMDT661'')',
'  )',
'',
'UNION',
'',
'SELECT ROWNUM,',
'  AUDIT_LOG_ID,',
'  COLUMN_NAME,',
'  ''Section Status'' ITEM_LABEL,',
'  decode(OLD_VALUE,NULL,''-'',(select DISPLAY_VAL from EDC_CRF_STATUS where RETURN_VAL = OLD_VALUE)) OLD_VALUE,',
'  decode(NEW_VALUE,NULL,''-'',(select DISPLAY_VAL from EDC_CRF_STATUS where RETURN_VAL = NEW_VALUE)) NEW_VALUE,',
'  ACTION,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  reason',
'FROM',
'  (SELECT A.AUDIT_LOG_ID,A.COLUMN_NAME,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.old_value) AS "OLD_VALUE",',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.new_value) AS "NEW_VALUE",',
'    A.ACTION,',
'    A.USERNAME,',
'    A.LOG_TIMESTAMP,',
'    A.reason',
'  FROM AUDIT_TRAIL A',
'  WHERE PATIENT_DIARY_ID = :P141_PATIENT_DIARY_ID',
'  AND A.COLUMN_NAME = ''SECTION_STATUS''',
'  AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'  AND TABLE_NAME = :P141_TABLE_NAME',
'  --AND PAGE_NO IN (100,509)',
'   AND A.COLUMN_NAME = NVL(:P141_ITEM_NAME_2,A.COLUMN_NAME)',
'   AND A.TABLE_NAME NOT IN (''EDC_CRF_OMD661'',''EDC_CRF_ONSD661'',''EDC_CRF_OCOMPDET661'',''EDC_CRF_OCOMDT661'')',
'  )',
'  ',
'  UNION',
'',
'SELECT ROWNUM,',
'  AUDIT_LOG_ID,',
'  COLUMN_NAME,',
'  ITEM_LABEL,',
'  nvl(OLD_VALUE,''-''),',
'  nvl(NEW_VALUE,''-''),',
'  ACTION,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  reason',
'FROM',
'  (SELECT A.AUDIT_LOG_ID,A.COLUMN_NAME,B.ITEM_LABEL,',
'   CASE WHEN B.ITEM_TYPE IN (''RADIO BUTTON'',''SELECT LIST'') THEN',
'    (SELECT DISPLAY_VALUE FROM EDC_LOV_VALUES ',
'    WHERE LOV_ID = (SELECT ITEM_LOV FROM EDC_CRF_ITEMS WHERE COLUMN_NAME = A.COLUMN_NAME',
'                    AND STUDY_ID = A.STUDY_ID',
'                    AND CRF_ID = (SELECT CRF_ID FROM EDC_CRF_MASTER WHERE CRF_TABLE_NAME = A.TABLE_NAME',
'                                  AND STUDY_ID = A.STUDY_ID AND CRF_PAGE_NO IN (100,509,510)))',
'    AND STORED_VALUE = A.OLD_VALUE)',
'    ELSE ',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.old_value)',
'    END AS "OLD_VALUE", ',
'    CASE WHEN B.ITEM_TYPE IN (''RADIO BUTTON'',''SELECT LIST'') THEN',
'    (SELECT DISPLAY_VALUE FROM EDC_LOV_VALUES ',
'    WHERE LOV_ID = (SELECT ITEM_LOV FROM EDC_CRF_ITEMS WHERE COLUMN_NAME = A.COLUMN_NAME',
'                    AND STUDY_ID = A.STUDY_ID',
'                    AND CRF_ID = (SELECT CRF_ID FROM EDC_CRF_MASTER WHERE CRF_TABLE_NAME = A.TABLE_NAME',
'                                  AND STUDY_ID = A.STUDY_ID AND CRF_PAGE_NO IN (100,509,510)))',
'    AND STORED_VALUE = A.NEW_VALUE) ',
'    ELSE',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.new_value)',
'    END AS "NEW_VALUE",',
'    A.ACTION,',
'    A.USERNAME,',
'    A.LOG_TIMESTAMP,',
'    A.reason',
'  FROM AUDIT_TRAIL A, EDC_CRF_ITEMS B',
'  WHERE PATIENT_DIARY_ID           = :P141_PATIENT_DIARY_ID',
'  AND A.COLUMN_NAME = B.COLUMN_NAME',
'  AND A.STUDY_ID = B.STUDY_ID',
'  AND TABLE_NAME = :P141_TABLE_NAME',
'  --AND PAGE_NO IN (510)',
'  AND B.CRF_ID = :P141_CRF_ID',
'  --AND A.COLUMN_NAME = :P141_ITEM',
'  AND TABLE_PK_VALUE = :P141_PK_ID',
'  AND B.COLUMN_NAME = NVL(:P141_ITEM_NAME_2,B.COLUMN_NAME)',
'   AND A.TABLE_NAME IN (''EDC_CRF_OMD661'',''EDC_CRF_ONSD661'',''EDC_CRF_OCOMPDET661'',''EDC_CRF_OCOMDT661'')',
'  )',
'',
'UNION',
'',
'SELECT ROWNUM,',
'  AUDIT_LOG_ID,',
'  COLUMN_NAME,',
'  ''Section Status'' ITEM_LABEL,',
'  decode(OLD_VALUE,NULL,''-'',(select DISPLAY_VAL from EDC_CRF_STATUS where RETURN_VAL = OLD_VALUE)) OLD_VALUE,',
'  decode(NEW_VALUE,NULL,''-'',(select DISPLAY_VAL from EDC_CRF_STATUS where RETURN_VAL = NEW_VALUE)) NEW_VALUE,',
'  ACTION,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  reason',
'FROM',
'  (SELECT A.AUDIT_LOG_ID,A.COLUMN_NAME,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.old_value) AS "OLD_VALUE",',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,A.page_no,A.column_name,A.new_value) AS "NEW_VALUE",',
'    A.ACTION,',
'    A.USERNAME,',
'    A.LOG_TIMESTAMP,',
'    A.reason',
'  FROM AUDIT_TRAIL A',
'  WHERE PATIENT_DIARY_ID = :P141_PATIENT_DIARY_ID',
'  AND A.COLUMN_NAME = ''SECTION_STATUS''',
'  AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'  AND TABLE_NAME = :P141_TABLE_NAME',
'  --AND PAGE_NO IN (510)',
'  --AND A.COLUMN_NAME = :P141_ITEM',
'   AND TABLE_PK_VALUE = :P141_PK_ID',
'   AND A.COLUMN_NAME = NVL(:P141_ITEM_NAME_2,A.COLUMN_NAME)',
'   AND A.TABLE_NAME IN (''EDC_CRF_OMD661'',''EDC_CRF_ONSD661'',''EDC_CRF_OCOMPDET661'',''EDC_CRF_OCOMDT661'')',
'  )',
'  ORDER BY AUDIT_LOG_ID DESC;'))
,p_display_when_condition=>':P141_PAGE_ID NOT IN (37,45)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_header=>'<div style="overflow-x:scroll;">'
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P141_PATIENT_DIARY_ID,P141_TABLE_NAME,P141_ITEM_NAME_2,P141_PK_ID,P141_CRF_ID,APP_EDC_STUDY_ID,APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>'style="padding-left:20px;padding-right:20px; width:1000px;"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136587800412558508)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136587884598558509)
,p_query_column_id=>2
,p_column_alias=>'AUDIT_LOG_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136587981002558510)
,p_query_column_id=>3
,p_column_alias=>'COLUMN_NAME'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136588082084558511)
,p_query_column_id=>4
,p_column_alias=>'ITEM_LABEL'
,p_column_display_sequence=>4
,p_column_heading=>'Item Label'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136588168023558512)
,p_query_column_id=>5
,p_column_alias=>'NVL(OLD_VALUE,''-'')'
,p_column_display_sequence=>5
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136588274923558513)
,p_query_column_id=>6
,p_column_alias=>'NVL(NEW_VALUE,''-'')'
,p_column_display_sequence=>6
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136588408933558514)
,p_query_column_id=>7
,p_column_alias=>'ACTION'
,p_column_display_sequence=>7
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136588541259558515)
,p_query_column_id=>8
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136588646827558516)
,p_query_column_id=>9
,p_column_alias=>'LOG_TIMESTAMP'
,p_column_display_sequence=>9
,p_column_heading=>'Log Timestamp'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136588658107558517)
,p_query_column_id=>10
,p_column_alias=>'REASON'
,p_column_display_sequence=>10
,p_column_heading=>'Reason'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11051200574985551050)
,p_name=>'Item Audit Trail Report'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:800px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ROWNUM,',
'  COLUMN_NAME,',
'  OLD_VALUE,',
'  NEW_VALUE,',
'  ACTION,',
'  CONTACT_ROLE,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  REASON',
'FROM',
'  (SELECT (select replace(label,'':'') from APEX_APPLICATION_PAGE_ITEMS where application_id=85699 and page_id = :P141_PAGE_ID and item_source = COLUMN_NAME)COLUMN_NAME,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,page_no,column_name,old_value) OLD_VALUE ,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,page_no,column_name,NEW_VALUE) NEW_VALUE,',
'    ACTION,',
'    (SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE,',
'    USERNAME,',
'    to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,',
'    REASON',
'  FROM AUDIT_TRAIL a',
'  WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(COALESCE(TRIM(:P141_ITEM),TRIM(:P141_ITEM_1),TRIM(:P141_ITEM_NAME_3),TRIM(COLUMN_NAME)))-- nvl(,UPPER(TRIM(COLUMN_NAME)))',
'  AND PATIENT_VISIT_ID           = :P141_PATIENT_VISIT_ID',
'  AND TABLE_NAME                    =(select crf_TABLE_NAME from edc_Crf_master where crf_page_no = :P141_PAGE_ID)',
'  AND table_pk_value             = :APP_TBL_PK_ID',
'and COLUMN_NAME not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'  AND :P141_PAGE_ID NOT         IN (518,521)',
'  AND :APP_TBL_PK_ID            IS NOT NULL',
'  --AND NVL(TABLE_PK_VALUE,1) = COALESCE(TO_NUMBER(:P141_TABLE_PK_VALUE),TABLE_PK_VALUE,1)',
'  UNION ALL',
'  SELECT (select replace(label,'':'') from APEX_APPLICATION_PAGE_ITEMS where application_id=85699 and page_id = :P141_PAGE_ID and item_source = COLUMN_NAME)COLUMN_NAME,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,page_no, column_name, old_value) OLD_VALUE ,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,page_no,column_name,NEW_VALUE) NEW_VALUE,',
'    ACTION,',
'    (SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE,',
'    USERNAME,',
'    to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,',
'    REASON',
'  FROM AUDIT_TRAIL a',
'  WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(COALESCE(TRIM(:P141_ITEM),TRIM(:P141_ITEM_1),TRIM(:P141_ITEM_NAME_3)))-- nvl(,UPPER(TRIM(COLUMN_NAME)))',
'  AND PATIENT_VISIT_ID           = :P141_PATIENT_VISIT_ID',
'  AND TABLE_NAME                    =(select crf_TABLE_NAME from edc_Crf_master where crf_page_no = :P141_PAGE_ID)',
'  AND :P141_PAGE_ID NOT         IN (518,521)',
'and COLUMN_NAME not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'    --and table_pk_value = :APP_TBL_PK_ID',
'  AND :APP_TBL_PK_ID IS NULL',
'  UNION ALL',
'  SELECT (select replace(label,'':'') from APEX_APPLICATION_PAGE_ITEMS where application_id=85699 and page_id = :P141_PAGE_ID and item_source = COLUMN_NAME)COLUMN_NAME,',
'    OLD_VALUE,',
'    NEW_VALUE,',
'    ACTION,',
'    (SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE,',
'    USERNAME,',
'    to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,',
'    REASON',
'  FROM AUDIT_TRAIL a',
'  WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(COALESCE(TRIM(:P141_ITEM),TRIM(:P141_ITEM_1),TRIM(:P141_ITEM_NAME_3),TRIM(COLUMN_NAME)))-- nvl(,UPPER(TRIM(COLUMN_NAME)))',
'  AND TABLE_NAME                    =(select crf_TABLE_NAME from edc_Crf_master where crf_page_no = :P141_PAGE_ID)',
'  AND table_pk_value             = :APP_TBL_PK_ID',
'and COLUMN_NAME not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'  AND :P141_PAGE_ID             IN (518,521)',
'  ORDER BY LOG_TIMESTAMP desc',
'  )'))
,p_display_when_condition=>':P141_PAGE_ID is not null and :P141_ITEM is not null and :P141_PAGE_ID  not   IN (504,100,509,510,37,45)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P141_PATIENT_VISIT_ID,P141_PAGE_ID,P141_ITEM,P141_ITEM_1,P141_ITEM_NAME_3,APP_TBL_PK_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No values updated yet.'
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
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWNUM,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP,REASON',
'from (',
'SELECT COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH24:MI'') LOG_TIMESTAMP,REASON',
'FROM AUDIT_TRAIL',
'WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(COALESCE(TRIM(:P141_ITEM),TRIM(:P141_ITEM_1),TRIM(:P141_ITEM_NAME_3)))-- nvl(,UPPER(TRIM(COLUMN_NAME)))',
'AND PATIENT_VISIT_ID = :P141_PATIENT_VISIT_ID ',
'AND PAGE_NO =:P141_PAGE_ID',
'and table_pk_value = :APP_TBL_PK_ID',
'and :APP_TBL_PK_ID is not null',
'--AND NVL(TABLE_PK_VALUE,1) = COALESCE(TO_NUMBER(:P141_TABLE_PK_VALUE),TABLE_PK_VALUE,1)',
'union all',
'SELECT COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH24:MI'') LOG_TIMESTAMP,REASON',
'FROM AUDIT_TRAIL',
'WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(COALESCE(TRIM(:P141_ITEM),TRIM(:P141_ITEM_1),TRIM(:P141_ITEM_NAME_3)))-- nvl(,UPPER(TRIM(COLUMN_NAME)))',
'AND PATIENT_VISIT_ID = :P141_PATIENT_VISIT_ID ',
'AND PAGE_NO =:P141_PAGE_ID',
'--and table_pk_value = :APP_TBL_PK_ID',
'and :APP_TBL_PK_ID is null',
'order by LOG_TIMESTAMP)'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10575488376096660193)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051200766493551051)
,p_query_column_id=>2
,p_column_alias=>'COLUMN_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Item'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.d, b.column_name',
'from edc_crf_qry_view a,AUDIT_TRAIL b',
'where upper(trim(a.item_source)) = upper(trim(b.column_name))',
'and a.page_no = b.page_no',
'and b.PAGE_NO = :P141_PAGE_ID ',
'and b.STUDY_ID = :APP_EDC_STUDY_ID',
'and b.APP_ID = :APP_ID',
'and b.PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;'))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051200956949551051)
,p_query_column_id=>3
,p_column_alias=>'OLD_VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051201060800551051)
,p_query_column_id=>4
,p_column_alias=>'NEW_VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051201188507551051)
,p_query_column_id=>5
,p_column_alias=>'ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10543218873610296010)
,p_query_column_id=>6
,p_column_alias=>'CONTACT_ROLE'
,p_column_display_sequence=>6
,p_column_heading=>'Role'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045613370157698579)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051201271293551051)
,p_query_column_id=>7
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>5
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051201378077551051)
,p_query_column_id=>8
,p_column_alias=>'LOG_TIMESTAMP'
,p_column_display_sequence=>7
,p_column_heading=>'Updated On'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10570637675335339270)
,p_query_column_id=>9
,p_column_alias=>'REASON'
,p_column_display_sequence=>8
,p_column_heading=>'Reason for Change'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11051201479386551053)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
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
 p_id=>wwv_flow_imp.id(11051202673813551056)
,p_name=>'Item Audit Trail Report'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:700px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ROWNUM,',
'  COLUMN_NAME,',
'  OLD_VALUE,',
'  NEW_VALUE,',
'  ACTION,',
'  CONTACT_ROLE,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  REASON',
'FROM',
'  (SELECT (select replace(label,'':'') from APEX_APPLICATION_PAGE_ITEMS where application_id=85699 and page_id = :P141_PAGE_ID and item_source = COLUMN_NAME)COLUMN_NAME,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,page_no,column_name,old_value) OLD_VALUE ,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,page_no,column_name,NEW_VALUE) NEW_VALUE,',
'    ACTION,',
'    (SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE,',
'    USERNAME,',
'    to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,',
'    REASON',
'  FROM AUDIT_TRAIL a',
'  WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(COALESCE(TRIM(:P141_ITEM),TRIM(:P141_ITEM_1),TRIM(:P141_ITEM_NAME_3),TRIM(COLUMN_NAME)))-- nvl(,UPPER(TRIM(COLUMN_NAME)))',
'  AND PATIENT_VISIT_ID           = :P141_PATIENT_VISIT_ID',
'  AND TABLE_NAME                    =(select crf_TABLE_NAME from edc_Crf_master where crf_page_no = :P141_PAGE_ID)',
' -- AND table_pk_value             = :APP_TBL_PK_ID',
'--and COLUMN_NAME not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'and COLUMN_NAME not in (''STUDY_ID'',''PATIENT_VISIT_ID'',''VS_ID'')',
'  AND :P141_PAGE_ID     IN (504)',
'  ',
'  ORDER BY LOG_TIMESTAMP desc',
'  )'))
,p_display_when_condition=>':P141_PAGE_ID IN (504)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P141_PATIENT_VISIT_ID,P141_PAGE_ID,P141_ITEM'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No values updated yet.'
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
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--------------Report For Tabular Forms----------------------------------',
'declare',
' v_qry varchar2(4000);',
'begin',
'  v_qry := ''SELECT ROWNUM,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP FROM AUDIT_TRAIL WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(TRIM(''''''||:P141_ITEM||'''''')) AND PATIENT_VISIT_ID = ''||:P141_PATIENT_VISIT_ID||'' AND PAGE_NO =''|| :P141_PAGE_ID ||'' ord'
||'er by LOG_TIMESTAMP desc;''; ',
'  --DBMS_OUTPUT.PUT_LINE(V_QRY);',
' return v_qry;',
'END;',
'--------------------------------------------------------------------------------',
'--Original Query --------------',
'select ROWNUM,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP,table_pk',
'from (',
'SELECT COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP,table_pk ',
'FROM AUDIT_TRAIL',
'WHERE UPPER(TRIM(COLUMN_NAME)) = nvl(UPPER(TRIM(:P141_ITEM)),UPPER(TRIM(COLUMN_NAME)))',
'AND PATIENT_VISIT_ID = :P141_PATIENT_VISIT_ID ',
'AND PAGE_NO =:P141_PAGE_ID',
'order by LOG_TIMESTAMP desc)',
'---------------------------------------------------------------------------------'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051202983908551057)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>1
,p_column_heading=>'Sr. No.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051202878015551056)
,p_query_column_id=>2
,p_column_alias=>'COLUMN_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Item'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P141_ITEM'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.d, b.column_name',
'from edc_crf_qry_view a,AUDIT_TRAIL b',
'where upper(trim(a.item_source)) = upper(trim(b.column_name))',
'and a.page_no = b.page_no',
'and b.PAGE_NO = :P141_PAGE_ID ',
'and b.STUDY_ID = :APP_EDC_STUDY_ID',
'and b.APP_ID = :APP_ID',
'and b.PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;'))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by d'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051203063448551057)
,p_query_column_id=>3
,p_column_alias=>'OLD_VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051203169385551057)
,p_query_column_id=>4
,p_column_alias=>'NEW_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051203284284551057)
,p_query_column_id=>5
,p_column_alias=>'ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10546384306937094717)
,p_query_column_id=>6
,p_column_alias=>'CONTACT_ROLE'
,p_column_display_sequence=>8
,p_column_heading=>'Role'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045613370157698579)
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051203366175551057)
,p_query_column_id=>7
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051203468731551057)
,p_query_column_id=>8
,p_column_alias=>'LOG_TIMESTAMP'
,p_column_display_sequence=>7
,p_column_heading=>'Updated On'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10546384652149094718)
,p_query_column_id=>9
,p_column_alias=>'REASON'
,p_column_display_sequence=>9
,p_column_heading=>'Reason For Change'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11055228272793029477)
,p_name=>'Item Audit Trail Report'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:800px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM,',
'  COLUMN_NAME,',
'  OLD_VALUE,',
'  NEW_VALUE,',
'  ACTION,',
'  CONTACT_ROLE,',
'  USERNAME,',
'  LOG_TIMESTAMP,',
'  REASON',
'FROM',
'  (SELECT (select replace(label,'':'') from APEX_APPLICATION_PAGE_ITEMS where application_id=85699 and page_id = :P141_PAGE_ID and item_source = COLUMN_NAME)COLUMN_NAME,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,(select crf_page_no from edc_Crf_master where crf_table_name = a.table_name),column_name,old_value) OLD_VALUE ,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,(select crf_page_no from edc_Crf_master where crf_table_name = a.table_name),column_name,NEW_VALUE) NEW_VALUE,',
'    ACTION,',
'    (SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE,',
'    USERNAME,',
'    to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,',
'    REASON',
'  FROM AUDIT_TRAIL a',
'  WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(COALESCE(TRIM(:P141_ITEM),TRIM(:P141_ITEM_1),TRIM(:P141_ITEM_NAME_3),TRIM(COLUMN_NAME)))-- nvl(,UPPER(TRIM(COLUMN_NAME)))',
'  AND PATIENT_VISIT_ID           = :P141_PATIENT_VISIT_ID',
'  AND TABLE_NAME                    =(select crf_TABLE_NAME from edc_Crf_master where crf_page_no = :P141_PAGE_ID)',
'  AND table_pk_value             = :APP_TBL_PK_ID',
'and COLUMN_NAME not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'  AND :P141_PAGE_ID NOT         IN (518,521,506,530)',
'  AND :APP_TBL_PK_ID            IS NOT NULL',
'    and COLUMN_NAME not in (''STUDY_ID'',''PATIENT_VISIT_ID'')',
'and COLUMN_NAME not in (''CRF_STATUS'',''CRF_SIGNED_BY'',''CRF_SIGNED_DATE'')',
'    and COLUMN_NAME not in(select CRF_TABLE_PK_COL FROM EDC_CRF_MASTER WHERE CRF_PAGE_NO = :P141_PAGE_ID)',
'  --AND NVL(TABLE_PK_VALUE,1) = COALESCE(TO_NUMBER(:P141_TABLE_PK_VALUE),TABLE_PK_VALUE,1)',
'  UNION ALL',
'  SELECT (select replace(label,'':'') from APEX_APPLICATION_PAGE_ITEMS where application_id=85699 and page_id = :P141_PAGE_ID and item_source = COLUMN_NAME)COLUMN_NAME,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,(select crf_page_no from edc_Crf_master where crf_table_name = a.table_name), column_name, old_value) OLD_VALUE ,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,(select crf_page_no from edc_Crf_master where crf_table_name = a.table_name),column_name,NEW_VALUE) NEW_VALUE,',
'    ACTION,',
'    (SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE,',
'    USERNAME,',
'        to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,',
'    REASON',
'  FROM AUDIT_TRAIL a',
'  WHERE PATIENT_VISIT_ID           = :P141_PATIENT_VISIT_ID',
'  AND TABLE_NAME                    =(select crf_TABLE_NAME from edc_Crf_master where crf_page_no = :P141_PAGE_ID)',
'  AND :P141_PAGE_ID NOT         IN (518,521,506,530)',
'and COLUMN_NAME not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'    and COLUMN_NAME not in (''STUDY_ID'',''PATIENT_VISIT_ID'')',
'and COLUMN_NAME not in (''CRF_STATUS'',''CRF_SIGNED_BY'',''CRF_SIGNED_DATE'')',
'    and COLUMN_NAME not in(select CRF_TABLE_PK_COL FROM EDC_CRF_MASTER WHERE CRF_PAGE_NO = :P141_PAGE_ID)',
'    --and table_pk_value = :APP_TBL_PK_ID',
'  AND :APP_TBL_PK_ID IS NULL',
'  UNION ALL',
'  SELECT (select replace(label,'':'') from APEX_APPLICATION_PAGE_ITEMS where application_id=85699 and page_id = :P141_PAGE_ID and item_source = COLUMN_NAME)COLUMN_NAME,',
'     EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,(select crf_page_no from edc_Crf_master where crf_table_name = a.table_name), column_name, old_value) OLD_VALUE ,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,(select crf_page_no from edc_Crf_master where crf_table_name = a.table_name),column_name,NEW_VALUE) NEW_VALUE,',
'    ACTION,',
'    (SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE,',
'    USERNAME,',
'        to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,',
'    REASON',
'  FROM AUDIT_TRAIL a',
'  WHERE TABLE_NAME                    =(select crf_TABLE_NAME from edc_Crf_master where crf_page_no = :P141_PAGE_ID)',
'  AND table_pk_value             = :APP_TBL_PK_ID',
'  AND :P141_PAGE_ID             IN (518,521,506)',
'  and :P141_PAGE_ID          not  IN (530)',
'and COLUMN_NAME not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'and COLUMN_NAME not in (''CRF_STATUS'',''CRF_SIGNED_BY'',''CRF_SIGNED_DATE'')',
'    and COLUMN_NAME not in (''STUDY_ID'',''PATIENT_VISIT_ID'')',
'    and COLUMN_NAME not in(select CRF_TABLE_PK_COL FROM EDC_CRF_MASTER WHERE CRF_PAGE_NO = :P141_PAGE_ID)  ',
'  union all',
'  SELECT (select replace(label,'':'') from APEX_APPLICATION_PAGE_ITEMS where application_id=85699 and page_id = :P141_PAGE_ID and item_source = COLUMN_NAME)COLUMN_NAME,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,(select crf_page_no from edc_Crf_master where crf_table_name = a.table_name), column_name, old_value) OLD_VALUE ,',
'    EDC_UTIL.GET_LOV_VAL_FROM_ITEM(:APP_ID,(select crf_page_no from edc_Crf_master where crf_table_name = a.table_name),column_name,NEW_VALUE) NEW_VALUE,',
'    ACTION,',
'    (SELECT CONTACT_ROLE FROM EDC_STUDY_CONTACT WHERE upper(username) = a.USERNAME',
'    ) CONTACT_ROLE,',
'    USERNAME,',
'        to_char((log_timestamp) + ((1/24) * 9.5),''DD-MON-YYYY HH24:MI:SS'') LOG_TIMESTAMP,',
'    REASON',
'  FROM AUDIT_TRAIL a',
'  WHERE PATIENT_VISIT_ID           = :P141_PATIENT_VISIT_ID',
'  AND TABLE_NAME                    =(select crf_TABLE_NAME from edc_Crf_master where crf_page_no = :P141_PAGE_ID)',
'  AND :P141_PAGE_ID  = 530',
'and COLUMN_NAME not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'    and COLUMN_NAME not in (''STUDY_ID'',''PATIENT_VISIT_ID'')',
'and COLUMN_NAME not in (''CRF_STATUS'',''CRF_SIGNED_BY'',''CRF_SIGNED_DATE'',''CREATED_ON'',''UPDATED_ON'',''VISIT_TITLE'')',
'    and COLUMN_NAME not in(select CRF_TABLE_PK_COL FROM EDC_CRF_MASTER WHERE CRF_PAGE_NO = :P141_PAGE_ID)',
'    --and table_pk_value = :APP_TBL_PK_ID',
'  AND :APP_TBL_PK_ID IS NULL',
'  )  where COLUMN_NAME is not null order by LOG_TIMESTAMP desc'))
,p_display_when_condition=>':P141_ITEM is null and :P141_PAGE_ID not IN (504,100,509,510,37,45)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P141_PATIENT_VISIT_ID,P141_PAGE_ID,P141_ITEM'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No values updated yet.'
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
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_qry varchar2(4000);',
'begin',
'  v_qry := ''SELECT ROWNUM,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP FROM AUDIT_TRAIL WHERE UPPER(TRIM(COLUMN_NAME)) = UPPER(TRIM(''''''||:P141_ITEM||'''''')) AND PATIENT_VISIT_ID = ''||:P141_PATIENT_VISIT_ID||'' AND PAGE_NO =''|| :P141_PAGE_ID ||'' ord'
||'er by LOG_TIMESTAMP desc;''; ',
'  --DBMS_OUTPUT.PUT_LINE(V_QRY);',
' return v_qry;',
'END;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11055228558805029481)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>1
,p_column_heading=>'Sr. No.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11055228468369029481)
,p_query_column_id=>2
,p_column_alias=>'COLUMN_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Item'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P141_ITEM'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.d, b.column_name',
'from edc_crf_qry_view a,AUDIT_TRAIL b',
'where upper(trim(a.item_source)) = upper(trim(b.column_name))',
'and a.page_no = b.page_no',
'and b.PAGE_NO = :P141_PAGE_ID ',
'and b.STUDY_ID = :APP_EDC_STUDY_ID',
'and b.APP_ID = :APP_ID',
'and b.PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;'))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11055228667662029481)
,p_query_column_id=>3
,p_column_alias=>'OLD_VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11055228780757029481)
,p_query_column_id=>4
,p_column_alias=>'NEW_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11055228868122029481)
,p_query_column_id=>5
,p_column_alias=>'ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545054766708636860)
,p_query_column_id=>6
,p_column_alias=>'CONTACT_ROLE'
,p_column_display_sequence=>8
,p_column_heading=>'Role'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045613370157698579)
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11055228972766029481)
,p_query_column_id=>7
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11055229060503029481)
,p_query_column_id=>8
,p_column_alias=>'LOG_TIMESTAMP'
,p_column_display_sequence=>7
,p_column_heading=>'Updated On'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10545055071246636861)
,p_query_column_id=>9
,p_column_alias=>'REASON'
,p_column_display_sequence=>9
,p_column_heading=>'Reason For Change'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2689207924986609968)
,p_name=>'P141_PATIENT_PROFILE_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2689208005721609969)
,p_name=>'P141_ITEM_3'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_prompt=>'<b>Item</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and ITEM_SOURCE IN (''EPRO_STDT'',''EPRO_STTM'',''EPRO_DIARY_TYPE'')',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'and label is not null',
'AND APPLICATION_ID = :APP_ID',
'UNION',
'select ''ePRO SUBJECT STATUS'' D, ''EPRO_STATUS''  R ',
'from edc_patient_profile',
'where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'UNION',
'select ''USER LANGUAGE'' D, ''USER_LANG''  R ',
'from edc_patient_profile',
'where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'union',
'select ''PASSWORD'' D, ''EPRO_PASSWORD''  R ',
'from edc_patient_profile',
'where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P141_PAGE_ID in (37)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'--and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and ITEM_SOURCE not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by display_sequence'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2689209284282609982)
,p_name=>'P141_ITEM_4'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_prompt=>'<b>Item</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D, ',
'''DIARY_TYPE'' R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_NAME IN (''P45_DIARY_TYPE'')',
'AND APPLICATION_ID = :APP_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P141_PAGE_ID in (45)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'--and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and ITEM_SOURCE not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by display_sequence'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4136587469137558505)
,p_name=>'P141_PATIENT_DIARY_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4136587578962558506)
,p_name=>'P141_CRF_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4136589012720558520)
,p_name=>'P141_PK_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345314319391857101)
,p_name=>'P141_ITEM_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_prompt=>'<b>Item</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''),'':'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'--and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'',''XMAMET2'') ',
'and DISPLAY_AS <> ''Hidden''',
'and ITEM_SOURCE not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and :P141_PAGE_ID!=504',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID',
'union',
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D, ITEM_SOURCE R',
'  from APEX_APPLICATION_PAGE_ITEMS ',
' where PAGE_ID = :P141_PAGE_ID',
'   and ITEM_SOURCE is not null',
'  -- and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'   and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'',''XMAMET2'') ',
'   and DISPLAY_AS <> ''Hidden''',
'   and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'   and :P141_PAGE_ID=504',
'   and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'   AND APPLICATION_ID = :APP_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P141_PAGE_ID not in (28,512) and :P141_ITEM is not null'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'--and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and ITEM_SOURCE not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by display_sequence'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10554228320746751685)
,p_name=>'P141_TABLE_PK_VALUE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10567509778411067498)
,p_name=>'P141_ITEM_NAME_3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_prompt=>'<b>Item</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D, R',
'  FROM (',
'select display_sequence, INITCAP(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'--and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'and ITEM_NAME NOT IN (''P504_VSSBP'',''P504_VSDBP'',''P504_VSPULS'',''P504_VSTEMP'',''P504_VSRESP'') ',
'AND APPLICATION_ID = :APP_ID',
'union',
'select display_sequence, INITCAP(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>''))||'' Result'' D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'--and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID ',
'and ITEM_NAME IN (''P504_VSSBP'',''P504_VSDBP'',''P504_VSPULS'',''P504_VSTEMP'',''P504_VSRESP'') ',
'order by display_sequence)',
'ORDER BY display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>':P141_PAGE_ID = 504'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10571930641467903376)
,p_name=>'P141_ITEM_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_prompt=>'<b>Item</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D, R FROM (',
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D, ITEM_SOURCE R,',
'       DISPLAY_SEQUENCE',
'  from APEX_APPLICATION_PAGE_ITEMS ',
' where PAGE_ID = :P141_PAGE_ID',
'   and ITEM_SOURCE is not null',
'   --and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'   and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'   and DISPLAY_AS <> ''Hidden''',
'   and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'   and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'   and item_name not in (''P512_XLCOLD'',''P512_XLCNEW'',''P512_XLCMCSC'',''P512_XLCCOM'')',
'   AND APPLICATION_ID = :APP_ID',
' UNION',
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D, ITEM_SOURCE R,',
'       DISPLAY_SEQUENCE',
'  from APEX_APPLICATION_PAGE_ITEMS ',
' where PAGE_ID = :P141_PAGE_ID',
'   and ITEM_SOURCE is not null',
'  -- and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'   and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'   and DISPLAY_AS <> ''Hidden''',
'   and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'   and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'   and :APP_EDC_VISIT_NAME != ''Randomization'' and item_name in (''P512_XLCOLD'',''P512_XLCNEW'',''P512_XLCMCSC'',''P512_XLCCOM'')',
'   AND APPLICATION_ID = :APP_ID)',
' order by display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P141_PAGE_ID = 512'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),''nbsp;'','''') D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS where PAGE_ID=:P141_PAGE_ID and ITEM_SOURCE is not null and ',
'ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'AND APPLICATION_ID = 123',
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by d;',
'-------------------------------------------------------',
'select distinct a.d, b.column_name',
'from edc_crf_qry_view a,AUDIT_TRAIL b',
'where upper(trim(a.item_source)) = upper(trim(b.column_name))',
'and a.page_no = b.page_no',
'and b.PAGE_NO = :P141_PAGE_ID ',
'and b.STUDY_ID = :APP_EDC_STUDY_ID',
'and b.APP_ID = :APP_ID',
'and b.PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'',
':P141_PAGE_ID = 512 and :APP_EDC_VISIT_NAME in (''Randomization'')'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11051201669017551055)
,p_name=>'P141_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_prompt=>'<b>Item</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'and label is not null',
'AND APPLICATION_ID = :APP_ID',
'order by DISPLAY_SEQUENCE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P141_PAGE_ID not in (28) and :P141_ITEM is not null'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'--and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and ITEM_SOURCE not in (select substr(item_name,6) from EDC_PARENT_ITEMS)',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by display_sequence'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11051201869534551055)
,p_name=>'P141_PAGE_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11051202064843551056)
,p_name=>'P141_TABLE_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11051202281066551056)
,p_name=>'P141_AUDIT_TABLE_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11051202460678551056)
,p_name=>'P141_PATIENT_VISIT_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11055224886303867129)
,p_name=>'P141_ITEM_NAME_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_prompt=>'<b>Item</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'(replace(replace(replace(replace(LABEL,CHR(38)',
'    ||''nbsp;'',''''),''<br/>'',''''),''<b>'',''''),''</b>'','''')) D,',
'/*upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,*/',
'ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by d'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P141_PAGE_ID = 28'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),''nbsp;'','''') D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS where PAGE_ID=:P141_PAGE_ID and ITEM_SOURCE is not null and ',
'ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'AND APPLICATION_ID = 123',
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by d;',
'-------------------------------------------------------',
'select distinct a.d, b.column_name',
'from edc_crf_qry_view a,AUDIT_TRAIL b',
'where upper(trim(a.item_source)) = upper(trim(b.column_name))',
'and a.page_no = b.page_no',
'and b.PAGE_NO = :P141_PAGE_ID ',
'and b.STUDY_ID = :APP_EDC_STUDY_ID',
'and b.APP_ID = :APP_ID',
'and b.PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11055229371719041006)
,p_name=>'P141_ITEM_NAME_2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11051201479386551053)
,p_prompt=>'<b>Item</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'and TRIM(UPPER(ITEM_SOURCE)) not in (TRIM(UPPER(''section_status'')),UPPER(''UNSCHL_LAB_TST_VISIT''),UPPER(''UNSCHL_LAB_VISIT''),UPPER(''UNSCHL_LAB_TST_FRM''),UPPER(''UNSCHL_LAB_VST_FRM''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by d'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),''nbsp;'','''') D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS where PAGE_ID=:P141_PAGE_ID and ITEM_SOURCE is not null and ',
'ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'AND APPLICATION_ID = 123',
'select upper(REGEXP_REPLACE(replace(coalesce(COMPONENT_COMMENT,LABEL,PRE_ELEMENT_TEXT,POST_ELEMENT_TEXT),CHR(38)||''nbsp;'',''''), ''<[^>]+>'')) D,  ITEM_SOURCE R ',
'from APEX_APPLICATION_PAGE_ITEMS ',
'where PAGE_ID=:P141_PAGE_ID ',
'and ITEM_SOURCE is not null',
'and trim(upper(ITEM_SOURCE)) <> trim(upper(''section_status''))',
'and ITEM_SOURCE not in (''CREATED_BY'',''CREATED_ON'',''UPDATED_BY'',''UPDATED_ON'',''CREATED_DT'', ''UPDATED_DT'') ',
'and DISPLAY_AS <> ''Hidden''',
'and NVL(CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'and trim(upper(ITEM_SOURCE_TYPE)) = trim(upper(''Database Column''))',
'AND APPLICATION_ID = :APP_ID order by d;',
'-------------------------------------------------------',
'select distinct a.d, b.column_name',
'from edc_crf_qry_view a,AUDIT_TRAIL b',
'where upper(trim(a.item_source)) = upper(trim(b.column_name))',
'and a.page_no = b.page_no',
'and b.PAGE_NO = :P141_PAGE_ID ',
'and b.STUDY_ID = :APP_EDC_STUDY_ID',
'and b.APP_ID = :APP_ID',
'and b.PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4136588754329558518)
,p_name=>'Hide Audit Trail region'
,p_event_sequence=>10
,p_condition_element=>'P141_PAGE_ID'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'100,509,510'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4136588847857558519)
,p_event_id=>wwv_flow_imp.id(4136588754329558518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11051201479386551053)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
