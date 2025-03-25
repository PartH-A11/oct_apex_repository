prompt --application/shared_components/user_interface/lovs/edc_user_role_lov
begin
--   Manifest
--     EDC_USER_ROLE_LOV
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12146564138299202672)
,p_lov_name=>'EDC_USER_ROLE_LOV'
,p_lov_query=>'select role_name d, role_id r from edc_user_role where status=1 AND ROLE_ID NOT IN (16,27,28,9,32)order by 1'
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
