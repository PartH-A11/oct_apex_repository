prompt --application/shared_components/user_interface/lovs/figo_lov
begin
--   Manifest
--     FIGO_LOV
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
 p_id=>wwv_flow_imp.id(781799927712100242)
,p_lov_name=>'FIGO_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISPLAY_VALUE D,STORED_VALUE R ',
'    FROM EDC_LOV_VALUES B,EDC_LOV A ',
'        WHERE A.LOV_ID=B.LOV_ID AND ',
'              A.LOV_NAME=''FIGO'' AND STORED_VALUE NOT IN (''10'',''14'',''17'')',
'                ORDER BY B.SEQUENCE ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
