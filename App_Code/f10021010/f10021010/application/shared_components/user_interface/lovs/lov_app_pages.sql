prompt --application/shared_components/user_interface/lovs/lov_app_pages
begin
--   Manifest
--     LOV_APP_PAGES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11060217985296491942)
,p_lov_name=>'LOV_APP_PAGES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_id||'' - ''||page_name d, page_id r from apex_040200.apex_application_pages where application_id=:APP_ID',
'order by page_id'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
