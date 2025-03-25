prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_tab_set=>'TS1'
,p_name=>'Reports'
,p_step_title=>'Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*apex.server.process(',
'    ''ROLE_WISE_REPORT_SHOW'',      // Process or AJAX Callback name',
'    {},                           // Parameter',
'    {',
'        success: function(pData){',
'            eval(pData);',
'        },',
'        dataType:"text"',
'    }',
');*/'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12161496343409650791)
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
 p_id=>wwv_flow_imp.id(12162256241966690963)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12150612929393769491)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12150755637925523032)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162645227299840471)
,p_plug_name=>'Admin Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12150612929393769491)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(3552315147236588000)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12150755637925523032)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':APP_EDC_ROLE_ID = 13'
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10578538378497466505)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ROLE_WISE_REPORT_SHOW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SQL CLOB;',
'  CURSOR C1 IS',
'WITH',
'  LIST_VAL AS (SELECT DISPLAY_SEQUENCE, ENTRY_TEXT, TO_NUMBER(SUBSTR(ENTRY_TARGET,INSTR(ENTRY_TARGET,'':'',1,1)+1,(INSTR(ENTRY_TARGET,'':'',1,2))-(INSTR(ENTRY_TARGET,'':'',1,1)+1))) VAL',
'                 FROM APEX_APPLICATION_LIST_ENTRIES',
'                WHERE /*NVL(CONDITION_TYPE,''Never'') != ''Never''',
'                  AND */LIST_NAME = ''Study Reports List''',
'                ORDER BY DISPLAY_SEQUENCE)',
'',
'  SELECT A.PAGE_NO, A.CAN_SEE, C.ENTRY_TEXT, C.VAL',
'    FROM EDC_GROUP_ACCESS_DET A',
'    JOIN EDC_GROUP_ACCESS B',
'      ON A.GRP_ACC_ID = B.GRP_ACC_ID',
'    JOIN LIST_VAL C',
'      ON A.PAGE_NO = C.VAL',
'     AND B.ROLE_ID = :APP_EDC_ROLE_ID',
'     AND B.GRP_ID = 4;',
'BEGIN',
'  V_SQL := ''$(''''li a span'''').each(function(){',
'    var a = $(this).text();',
''';',
'  FOR I IN C1 LOOP',
'    IF I.CAN_SEE = 0 THEN',
'       V_SQL := V_SQL||''    if(a == "''||I.ENTRY_TEXT||''"){',
'        $(this).parent().remove();',
'    }',
''';',
'    END IF;',
'  END LOOP;',
'  V_SQL := V_SQL||''});'';',
'  HTP.P(V_SQL);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9477587610355962412
);
wwv_flow_imp.component_end;
end;
/
