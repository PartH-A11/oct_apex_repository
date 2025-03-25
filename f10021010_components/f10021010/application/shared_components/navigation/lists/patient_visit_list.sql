prompt --application/shared_components/navigation/lists/patient_visit_list
begin
--   Manifest
--     LIST: PATIENT_VISIT_LIST
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(12150620146423871975)
,p_name=>'PATIENT_VISIT_LIST'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with len as (select MAX(LENGTH(VISIT_NAME )) as l_txt',
'               FROM EDC_PATIENT_VISIT_PARAMS A ,EDC_PATIENT_VISIT B',
'              WHERE B.VISIT_TITLE = A.VISIT_NAME ',
'                AND B.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'            ),',
'',
'  SETT AS (',
'SELECT null, ',
'',
'/*       case when visit_name = ''Visit 3'' then',
'            ''<span style="min-width:''||(139 + (l_tbl.l_txt - LENGTH(VISIT_NAME)) )||''px;"><b style="float:left;">''|| VISIT_NAME ||''</b> </span>'' ',
'',
'            when visit_name = ''Visit 4'' then',
'            ''<span style="min-width:''||(147 + (l_tbl.l_txt - LENGTH(VISIT_NAME)) )||''px;"><b style="float:left;">''|| VISIT_NAME ||''</b> </span>'' ',
'',
'            else*/',
'             ''<span style="min-width:''||(143 + (l_tbl.l_txt - LENGTH(VISIT_NAME)) )||''px;"><b style="float:left;">''|| VISIT_NAME ||''</b> </span>'' ',
'       /*end*/  AS label ,',
'',
'       A.CRF_LINK||b.patient_visit_id||'',''||:P37_PATIENT_PROFILE_ID target, ',
'       CASE WHEN b.patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'       THEN ''YES'' ELSE ''NO'' END is_current,',
'       A.PARAM_ID',
'  FROM EDC_PATIENT_VISIT_PARAMS A ,',
'      EDC_PATIENT_VISIT B,',
'      len l_tbl',
' WHERE B.VISIT_TITLE = A.VISIT_NAME ',
'   and A.VISIT_NAME <> ''Unscheduled''',
'   AND B.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
' UNION',
'SELECT NULL',
'     , ''<span style="min-width:''||(143 + (L_TBL.L_TXT - LENGTH(VISIT_NAME)) )||''px;"><b style="float:left;">''|| VISIT_NAME ||''</b> </span>'' AS LABEL',
'     , REPLACE(A.CRF_LINK,''1001'',''74'')||B.PATIENT_VISIT_ID||'',''||:P37_PATIENT_PROFILE_ID TARGET',
'     , CASE WHEN B.PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID THEN ''YES'' ELSE ''NO'' END IS_CURRENT',
'     , A.PARAM_ID',
'  FROM EDC_PATIENT_VISIT_PARAMS A',
'  JOIN (SELECT PARAM_ID, MAX(PATIENT_VISIT_ID) PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PARAM_ID = 4 AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID GROUP BY PARAM_ID) B',
'    ON B.PARAM_ID = A.PARAM_ID',
'   AND A.VISIT_NAME = ''Unscheduled''',
' CROSS JOIN LEN L_TBL)',
'',
'  SELECT * FROM SETT',
'   ORDER BY PARAM_ID'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
