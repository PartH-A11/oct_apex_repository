prompt --application/shared_components/user_interface/lovs/patient_diary_status
begin
--   Manifest
--     PATIENT_DIARY_STATUS
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
 p_id=>wwv_flow_imp.id(3791053516610560863)
,p_lov_name=>'PATIENT_DIARY_STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISPLAY_VAL D, RETURN_VAL R ',
'FROM EDC_CRF_STATUS',
'WHERE RETURN_VAL IN (2,3,4,4.5,5,6,9)',
'ORDER BY RETURN_VAL;'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
