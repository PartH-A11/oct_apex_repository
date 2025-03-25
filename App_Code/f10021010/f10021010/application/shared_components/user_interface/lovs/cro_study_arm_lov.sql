prompt --application/shared_components/user_interface/lovs/cro_study_arm_lov
begin
--   Manifest
--     CRO_STUDY_ARM_LOV
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
 p_id=>wwv_flow_imp.id(11052146483803754146)
,p_lov_name=>'CRO_STUDY_ARM_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ARM_NAME D, STUDY_ARM_ID R FROM EDC_STUDY_ARM',
'WHERE  STUDY_ID = :APP_EDC_STUDY_ID ORDER BY 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
