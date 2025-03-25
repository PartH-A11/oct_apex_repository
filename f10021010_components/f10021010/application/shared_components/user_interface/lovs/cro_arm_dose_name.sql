prompt --application/shared_components/user_interface/lovs/cro_arm_dose_name
begin
--   Manifest
--     CRO_ARM_DOSE_NAME
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
 p_id=>wwv_flow_imp.id(12152720147404072761)
,p_lov_name=>'CRO_ARM_DOSE_NAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.ARMD_SH_NM d,b.armd_id r ',
'from EDC_STUDY_ARM a, EDC_STUDY_ARM_DTLS b',
'where a.study_arm_id = b.study_arm_id',
'and b.study_id = :APP_EDC_STUDY_ID'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
