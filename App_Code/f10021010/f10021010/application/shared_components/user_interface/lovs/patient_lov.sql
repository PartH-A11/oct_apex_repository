prompt --application/shared_components/user_interface/lovs/patient_lov
begin
--   Manifest
--     PATIENT_LOV
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
 p_id=>wwv_flow_imp.id(11051767858421568667)
,p_lov_name=>'PATIENT_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCRNO||''(''||PTINTL||'')'' D,PATIENT_PROFILE_ID R',
'  FROM EDC_PATIENT_PROFILE A,EDC_STUDY_SITES B ',
' WHERE A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'   AND B.STUDY_ID = :APP_EDC_STUDY_ID',
'ORDER BY 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
