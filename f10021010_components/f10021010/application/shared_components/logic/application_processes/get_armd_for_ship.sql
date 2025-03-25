prompt --application/shared_components/logic/application_processes/get_armd_for_ship
begin
--   Manifest
--     APPLICATION PROCESS: GET_ARMD_FOR_SHIP
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
 p_id=>wwv_flow_imp.id(12153387755468885290)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_ARMD_FOR_SHIP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_sql VARCHAR2(32700);',
'BEGIN',
'-- Called in Page 372..(Nikhil.B, 20-Feb-15... Ticket No. 121)',
'	IF APEX_APPLICATION.G_x01 IS NOT NULL THEN',
'     l_sql := ''select b.armd_sh_nm  AS DIS, b.armd_id AS RET from EDC_STUDY_ARM_DTLS b where b.study_arm_id = '' || APEX_APPLICATION.G_x01 || '' and b.study_id = ''|| :APP_EDC_STUDY_ID;',
'    ',
'  APEX_UTIL.JSON_FROM_SQL(l_sql);',
'  ELSE',
'    HTP.prn(''{"row":[]}'');',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_sql VARCHAR2(32700);',
'BEGIN',
'-- Called in Page 372..(Nikhil.B, 20-Feb-15... Ticket No. 121)',
'	IF APEX_APPLICATION.G_x01 IS NOT NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''G_TEMP'', APEX_APPLICATION.G_x01);',
'    l_sql := ''select b.armd_sh_nm  AS DIS, b.armd_id AS RET from EDC_STUDY_ARM_DTLS b where b.study_arm_id = :G_TEMP and b.ARM_TYPE = 1 and b.study_id = :APP_EDC_STUDY_ID'';',
'    ',
'  APEX_UTIL.JSON_FROM_SQL(l_sql);',
'  ELSE',
'    HTP.prn(''{"row":[]}'');',
'  END IF;',
'  APEX_UTIL.SET_SESSION_STATE(''G_TEMP'', NULL);',
'END;'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
