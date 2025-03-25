prompt --application/shared_components/user_interface/lovs/edc_patient_visits_lov
begin
--   Manifest
--     EDC_PATIENT_VISITS_LOV
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
 p_id=>wwv_flow_imp.id(11045546857418460002)
,p_lov_name=>'EDC_PATIENT_VISITS_LOV'
,p_lov_query=>'select disp_seq||'' - ''||VISIT_NAME||'' (Day ''||DURATION||'')'' d, VISIT_NAME r from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID order by param_id'
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
