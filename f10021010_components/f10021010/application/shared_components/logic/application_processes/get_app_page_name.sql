prompt --application/shared_components/logic/application_processes/get_app_page_name
begin
--   Manifest
--     APPLICATION PROCESS: GET_APP_PAGE_NAME
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
 p_id=>wwv_flow_imp.id(11654873442989555537)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_APP_PAGE_NAME'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT CRF_NAME',
'    INTO :APP_PAGE_NAME',
'    FROM EDC_CRF_MASTER',
'   WHERE CRF_PAGE_NO = :APP_PAGE_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'701,702,703,704,708'
,p_process_when_type=>'CURRENT_PAGE_IN_CONDITION'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
