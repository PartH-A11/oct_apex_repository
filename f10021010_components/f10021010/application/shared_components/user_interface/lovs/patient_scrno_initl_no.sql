prompt --application/shared_components/user_interface/lovs/patient_scrno_initl_no
begin
--   Manifest
--     PATIENT_SCRNO_INITL_NO
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
 p_id=>wwv_flow_imp.id(11996862309151366005)
,p_lov_name=>'PATIENT_SCRNO_INITL_NO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SCRNO||''(''||PTINTL||'')'' t,Patient_profile_id ',
'from edc_patient_profile',
'order by Patient_profile_id'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
