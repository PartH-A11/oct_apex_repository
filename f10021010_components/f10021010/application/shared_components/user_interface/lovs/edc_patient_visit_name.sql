prompt --application/shared_components/user_interface/lovs/edc_patient_visit_name
begin
--   Manifest
--     EDC_PATIENT_VISIT_NAME
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
 p_id=>wwv_flow_imp.id(12154139330621563324)
,p_lov_name=>'EDC_PATIENT_VISIT_NAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select visit_title,PATIENT_VISIT_ID',
'from EDC_PATIENT_VISIT ',
'where PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'order by VISIT_TITLE'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
