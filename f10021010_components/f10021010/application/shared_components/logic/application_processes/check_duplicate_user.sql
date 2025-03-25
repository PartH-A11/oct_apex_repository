prompt --application/shared_components/logic/application_processes/check_duplicate_user
begin
--   Manifest
--     APPLICATION PROCESS: CHECK_DUPLICATE_USER
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(11646339278991165027)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_DUPLICATE_USER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF EDC_AUTH_PKG.CHECK_DUPLICATE_USER(:APP_USER, :APP_ID, :SESSION) = 0 THEN',
'          HTP.INIT();',
'	      OWA_UTIL.REDIRECT_URL(''f?p=&APP_ID.:101:&SESSION.'');',
'          APEX_APPLICATION.STOP_APEX_ENGINE;   ',
'	END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_process_comment=>':APP_PAGE_ID != 101'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
