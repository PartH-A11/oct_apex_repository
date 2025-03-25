prompt --application/shared_components/user_interface/lovs/edc_country_mast
begin
--   Manifest
--     EDC_COUNTRY_MAST
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
 p_id=>wwv_flow_imp.id(3108229471511484868)
,p_lov_name=>'EDC_COUNTRY_MAST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNTRY_NAME D, COUNTRY_ID R',
'  FROM EDC_COUNTRY_MST',
' ORDER BY COUNTRY_ID'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
