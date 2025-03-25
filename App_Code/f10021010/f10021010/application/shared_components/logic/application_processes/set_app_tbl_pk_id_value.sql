prompt --application/shared_components/logic/application_processes/set_app_tbl_pk_id_value
begin
--   Manifest
--     APPLICATION PROCESS: SET APP_TBL_PK_ID VALUE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(10574613568926404083)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET APP_TBL_PK_ID VALUE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_pk_col varchar2(35); ',
'',
'begin',
'',
'select crf_table_pk_col into v_pk_col from edc_crf_master where crf_page_no = :APP_PAGE_ID ;',
'',
'if :APP_PAGE_ID not in (506,508,518,520,521,100,509,510) then',
' :APP_TBL_PK_ID := null;',
' else',
' :APP_TBL_PK_ID := V(''P''||:APP_PAGE_ID||''_''||V_PK_COL);',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'select 1 from edc_crf_master where crf_page_no=:APP_PAGE_ID and crf_page_no not in (100,509,510)'
,p_process_when_type=>'EXISTS'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
