prompt --application/shared_components/security/authentications/database
begin
--   Manifest
--     AUTHENTICATION: DATABASE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(12146758254540592411)
,p_name=>'DATABASE'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
,p_comments=>'Use database authentication (user identified by DAD).'
);
wwv_flow_imp.component_end;
end;
/
