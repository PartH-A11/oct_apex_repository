prompt --application/shared_components/user_interface/lovs/depot_no_lov
begin
--   Manifest
--     DEPOT_NO_LOV
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
 p_id=>wwv_flow_imp.id(3108325376703481511)
,p_lov_name=>'DEPOT_NO_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPOT_NO||'' - ''||DEPOT_NAME AS D, DEPOT_ID AS R',
'  FROM EDC_DEPOT',
' order by DEPOT_ID'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
