prompt --application/shared_components/user_interface/lovs/for_map
begin
--   Manifest
--     FOR_MAP
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
 p_id=>wwv_flow_imp.id(11661575487822214073)
,p_lov_name=>'FOR_MAP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.DISPLAY_VALUE D, A.STORED_VALUE R',
'  FROM EDC_LOV_VALUES A',
'  JOIN EDC_LOV B',
'    ON A.LOV_ID   = B.LOV_ID',
'   AND B.LOV_NAME = ''FOR_MAP''',
' ORDER BY A.SEQUENCE'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
