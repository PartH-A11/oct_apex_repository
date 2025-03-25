prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 10021010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10138543844145699822)
,p_build_option_name=>'SHOW_HIDE_ITEM'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
