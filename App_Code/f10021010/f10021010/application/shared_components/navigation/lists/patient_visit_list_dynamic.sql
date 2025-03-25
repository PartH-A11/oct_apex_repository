prompt --application/shared_components/navigation/lists/patient_visit_list_dynamic
begin
--   Manifest
--     LIST: PATIENT_VISIT_LIST_DYNAMIC
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
 p_id=>wwv_flow_imp.id(11060567573861119049)
,p_name=>'PATIENT_VISIT_LIST_DYNAMIC'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL AS LEVEL_VALUE, CASE WHEN PARAM_ID = 1 THEN ''Screening Visit ''||''(''||"VISIT_NAME"||'')''',
'                                 WHEN PARAM_ID = 2 THEN ''Randomization Visit ''||''(''||"VISIT_NAME"||'')''',
'                                 ELSE "VISIT_NAME" END as label_value,',
'       ''f?p=&APP_ID.:81:''||:APP_SESSION||''::NO:81:P81_FLAG:''||PARAM_ID AS TARGET_VALUE,',
'       CASE WHEN :P81_FLAG = PARAM_ID THEN ''YES'' ELSE ''NO'' END AS IS_CURRENT, NULL AS IMAGE_VALUE, NULL AS IMAGE_ATTR_VALUE,',
'       NULL AS IMAGE_ALT_VALUE ',
'FROM EDC_PATIENT_VISIT_PARAMS',
'ORDER BY 1'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
