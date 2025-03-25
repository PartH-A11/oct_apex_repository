prompt --application/shared_components/navigation/lists/crf_visit_section
begin
--   Manifest
--     LIST: CRF_VISIT_SECTION
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
 p_id=>wwv_flow_imp.id(11050911173095856995)
,p_name=>'CRF_VISIT_SECTION'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select null,label,link_text,is_current,null "IMAGE",image_attribute',
'from ',
'(',
'SELECT a.SEQ_NO, ',
'      /* ''<font tooltip="''||SECTION_NAME||''" title="''||SECTION_NAME||''" style="background:&'' || NVL(UPPER(EDC_UTIL.GET_CRF_STATUS_LBL(B.CRF_TABLE_NAME,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_STUDY_ID)),''INCOMPLETE'') || ''.;">'' || B.CRF_SHORT_NAME || ''</fon'
||'t>'' LABEL, */',
'      ''<font tooltip="''||SECTION_NAME||''" title="''||SECTION_NAME||''" style="'' || NVL(UPPER(EDC_UTIL.GET_CRF_STATUS_LBL(B.CRF_TABLE_NAME,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_STUDY_ID)),''INCOMPLETE'') || ''.;">'' || B.CRF_SHORT_NAME || ''</font>'' LABEL, ',
'       ''f?p=&APP_ID.:''||b.crf_page_no||'':''||:APP_SESSION||'':::''||b.crf_page_no||''::'' link_text,',
'       decode(:app_page_id,b.crf_page_no,''YES'',(SELECT CRF_PAGE_NO FROM EDC_CRF_MASTER WHERE PARENT_PAGE = B.CRF_ID),''YES'',''NO'') is_current,',
'NULL "IMAGE",',
'SECTION_NAME image_attribute ',
'FROM  edc_crf_pages a, edc_crf_master b',
'WHERE a.crf_id = b.crf_id and b.PARENT_PAGE is null',
'  AND PARAM_ID = (SELECT PARAM_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = NVL(:APP_EDC_PATIENT_VISIT_ID,:P45_PATIENT_VISIT_ID))',
'and a.STUDY_ID = :APP_EDC_STUDY_ID',
'and :APP_EDC_VISIT_NAME <> ''Unscheduled Visit''',
'union all',
'SELECT A.SEQ_NO, ',
'      /* ''<font tooltip="''||SECTION_NAME||''" title="''||SECTION_NAME||''" style="background:&'' || NVL(UPPER(EDC_UTIL.GET_CRF_STATUS_LBL(B.CRF_TABLE_NAME,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_STUDY_ID)),''INCOMPLETE'') || ''.;">'' || B.CRF_SHORT_NAME || ''</fon'
||'t>'' LABEL, */',
'      ''<font tooltip="''||SECTION_NAME||''" title="''||SECTION_NAME||''" style="'' || NVL(UPPER(EDC_UTIL.GET_CRF_STATUS_LBL(B.CRF_TABLE_NAME,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_STUDY_ID)),''INCOMPLETE'') || ''.;">'' || B.CRF_SHORT_NAME || ''</font>'' LABEL, ',
'       ''f?p=&APP_ID.:''||b.crf_page_no||'':''||:APP_SESSION||'':::''||b.crf_page_no||''::'' link_text,',
'       decode(:app_page_id,b.crf_page_no,''YES'',''NO'') is_current,',
'NULL "IMAGE",',
'SECTION_NAME image_attribute ',
'FROM  edc_crf_pages a, edc_crf_master b,edc_patient_visit c',
'WHERE a.crf_id = b.crf_id',
'  and a.param_id = c.param_id',
'  and instr('':''||c.visit_list||'':'','':''||b.crf_id||'':'') >=1',
'  AND a.PARAM_ID = (SELECT PARAM_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID)',
'and a.STUDY_ID = :APP_EDC_STUDY_ID',
'and lower(:APP_EDC_VISIT_NAME) = lower(''Unscheduled Visit'')',
'and c.patient_visit_id = :APP_EDC_PATIENT_VISIT_ID)',
'order by seq_no'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
