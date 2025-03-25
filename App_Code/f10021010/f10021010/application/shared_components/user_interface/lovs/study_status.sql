prompt --application/shared_components/user_interface/lovs/study_status
begin
--   Manifest
--     STUDY_STATUS
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
 p_id=>wwv_flow_imp.id(11045204462209824371)
,p_lov_name=>'STUDY_STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CLV.DISPLAY_VALUE "DIAPLSY",CLV.STORED_VALUE "STORED"',
'FROM EDC_LOV CL,EDC_LOV_VALUES CLV',
'WHERE CL.LOV_ID=CLV.LOV_ID',
'AND CL.LOV_NAME=''STUDY_STATUS''',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
