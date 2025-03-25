prompt --application/shared_components/security/authentications/custom_authentication
begin
--   Manifest
--     AUTHENTICATION: CUSTOM_AUTHENTICATION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(11045188086010407917)
,p_name=>'CUSTOM_AUTHENTICATION'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'SUN_21010_DEV.edc_auth_pkg.CHK_LOGIN_NEW'
,p_attribute_05=>'Y'
,p_attribute_09=>'NO_SSL'
,p_attribute_11=>'Y'
,p_attribute_14=>'STD'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:101'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
,p_comments=>'EDC_AUTH_PKG.SET_LAST_SESSION_ID'
);
wwv_flow_imp.component_end;
end;
/
