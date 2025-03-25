prompt --application/shared_components/user_interface/lovs/study_depot_id_lov
begin
--   Manifest
--     STUDY_DEPOT_ID_LOV
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
 p_id=>wwv_flow_imp.id(2008814727099514381)
,p_lov_name=>'STUDY_DEPOT_ID_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.DEPOT_NO||'' - ''||A.DEPOT_NAME AS D, B.STUDY_DEPOT_ID AS R',
'  FROM EDC_DEPOT A',
'  JOIN EDC_STUDY_DEPOT B',
'    ON A.DEPOT_ID = B.DEPOT_ID',
'   AND DECODE(:APP_EDC_USER_TYPE,5,B.STUDY_DEPOT_ID,1) = DECODE(:APP_EDC_USER_TYPE,5,:APP_EDC_SD_ID,1)',
'   AND B.STUDY_ID = :APP_EDC_STUDY_ID',
' ORDER BY B.STUDY_DEPOT_ID'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
