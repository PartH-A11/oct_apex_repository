prompt --application/shared_components/navigation/lists/patient_diary_list
begin
--   Manifest
--     LIST: PATIENT_DIARY_LIST
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
 p_id=>wwv_flow_imp.id(4073031029361091555)
,p_name=>'PATIENT_DIARY_LIST'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null, ',
'      ''<b style="float:left;">''|| SCHEDULE_NAME ||''</b> '' label, ',
'       A.CRF_LINK||b.patient_diary_id||'',''||:P37_PATIENT_PROFILE_ID target, ',
'       CASE WHEN b.patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'       THEN ''YES'' ELSE ''NO''END is_current',
'FROM  EDC_PATIENT_SCHEDULE_PARAMS A ,EDC_PATIENT_DIARY B',
'WHERE B.SCHEDULE_TITLE = A.SCHEDULE_NAME ',
' AND B.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'AND a.STUDY_ID = :APP_EDC_STUDY_ID',
'ORDER BY A.DISP_SEQ'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
