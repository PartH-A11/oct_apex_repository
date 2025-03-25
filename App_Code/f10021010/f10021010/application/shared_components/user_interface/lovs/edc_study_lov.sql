prompt --application/shared_components/user_interface/lovs/edc_study_lov
begin
--   Manifest
--     EDC_STUDY_LOV
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
 p_id=>wwv_flow_imp.id(11051768466811568667)
,p_lov_name=>'EDC_STUDY_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select study_number d,study_id r from edc_study',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
