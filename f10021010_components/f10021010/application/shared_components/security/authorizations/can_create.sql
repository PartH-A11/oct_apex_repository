prompt --application/shared_components/security/authorizations/can_create
begin
--   Manifest
--     SECURITY SCHEME: CAN_CREATE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(12146158755186328484)
,p_name=>'CAN_CREATE'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_ret number;',
'Begin',
'',
'if :APP_EDC_ROLE_ID = 13 then',
' return true;',
'',
'else',
'',
'v_ret := SUN_21010_DEV.EDC_AUTH_PKG.can_create(:APP_USER,:APP_PAGE_ID,:APP_EDC_STUDY_ID);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'end if;',
'End;'))
,p_error_message=>'Can not create Data.'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
