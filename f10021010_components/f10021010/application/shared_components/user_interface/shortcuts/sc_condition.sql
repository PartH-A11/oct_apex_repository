prompt --application/shared_components/user_interface/shortcuts/sc_condition
begin
--   Manifest
--     SHORTCUT: SC_CONDITION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(10138447870813637502)
,p_shortcut_name=>'SC_CONDITION'
,p_shortcut_type=>'FUNCTION_BODY'
,p_shortcut_language=>'PLSQL'
,p_version_scn=>1
,p_shortcut=>'RETURN ''1 = 1'';'
);
wwv_flow_imp.component_end;
end;
/
