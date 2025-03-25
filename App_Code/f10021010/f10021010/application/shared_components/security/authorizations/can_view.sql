prompt --application/shared_components/security/authorizations/can_view
begin
--   Manifest
--     SECURITY SCHEME: CAN_VIEW
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(11045207488966824379)
,p_name=>'CAN_VIEW'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_ret number;',
'v_auth_msg varchar2(1000);',
'Begin',
'if :APP_EDC_ROLE_ID IN (13,33,34) then',
' return true;',
'else',
'if :APP_PAGE_ID in (101,0,1,67,77,78,600,197,47,60,63,68,73,75,105,124,137,139,41) then',
'RETURN true;',
'else',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,:APP_PAGE_ID,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'select ''<div class="black150" style="color:#FF0000">&nbsp;&nbsp;''||v_auth_msg||''</div>'' into :APP_AUTH_MESSAGE from dual;',
'RETURN false;',
'END IF;',
'end if;',
'end if;',
'End;'))
,p_error_message=>'&APP_AUTH_MESSAGE.'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_comments=>'You are not authorized to access this page.'
);
wwv_flow_imp.component_end;
end;
/
