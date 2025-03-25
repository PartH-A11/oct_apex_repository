prompt --application/shared_components/navigation/lists/crf_visit_section_4
begin
--   Manifest
--     LIST: CRF_VISIT_SECTION_4
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4072548943989413108)
,p_name=>'CRF_VISIT_SECTION_4'
,p_list_type=>'FUNCTION_RETURNING_SQL_QUERY'
,p_list_language=>'PLSQL'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_sql varchar2(32767);',
'begin',
'  l_sql := GET_CRF_SECTION_LIST(:APP_EDC_STUDY_ID,:APP_EDC_VISIT_NAME,:APP_PATIENT_PROFILE_ID);',
'  return (l_sql);',
'end;'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
