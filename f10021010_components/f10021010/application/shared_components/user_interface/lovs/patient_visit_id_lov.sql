prompt --application/shared_components/user_interface/lovs/patient_visit_id_lov
begin
--   Manifest
--     PATIENT_VISIT_ID_LOV
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
 p_id=>wwv_flow_imp.id(12152718845647072760)
,p_lov_name=>'PATIENT_VISIT_ID_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VISIT_TITLE D, PATIENT_VISIT_ID R ',
' FROM EDC_PATIENT_visit'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
