prompt --application/shared_components/logic/application_processes/set_app_ip_address
begin
--   Manifest
--     APPLICATION PROCESS: Set APP_IP_ADDRESS
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
 p_id=>wwv_flow_imp.id(11673288019301411478)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set APP_IP_ADDRESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin  ',
'    if( owa_util.get_cgi_env(''X-Forwarded-For'') is not null) then  ',
'          :APP_IP_ADDRESS := ''IP Address Is: '' || owa_util.get_cgi_env(''X-Forwarded-For'');  ',
'    else  ',
'          :APP_IP_ADDRESS := ''IP Address Is: '' || owa_util.get_cgi_env(''REMOTE_ADDR'');  ',
'    end if;  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
