prompt --application/shared_components/navigation/lists/crf_visit_section_1
begin
--   Manifest
--     LIST: CRF_VISIT_SECTION_1
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
 p_id=>wwv_flow_imp.id(12156305954325729554)
,p_name=>'CRF_VISIT_SECTION_1'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LABEL,IS_CURRENT,"IMAGE", IMAGE_ATTRIBUTE,',
'SEQ_NO',
'from ',
'(',
'SELECT null, ',
'       ''<font tooltip="''||SECTION_NAME||''" title="''||SECTION_NAME||''" style="background:&'' || NVL(UPPER(EDC_UTIL.GET_CRF_STATUS_LBL(B.CRF_TABLE_NAME,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_STUDY_ID)),''INCOMPLETE'') || ''.;">'' || B.CRF_SHORT_NAME || ''</font>'
||''' LABEL, ',
'       ''f?p=&APP_ID.:''||b.crf_page_no||'':''||:APP_SESSION||'':::''||b.crf_page_no||''::'',',
'       decode(:app_page_id,b.crf_page_no,''YES'',''NO'') is_current,',
'NULL "IMAGE",',
'SECTION_NAME IMAGE_ATTRIBUTE,',
'B.SEQ_NO',
'FROM  edc_crf_pages a, edc_crf_master b',
'WHERE a.crf_id = b.crf_id',
'  and VISIT_TITLE = (select VISIT_TITLE from EDC_PATIENT_VISIT where PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID)',
'  and 2 not in (select STATUS from EDC_PATIENT_PROFILE where PATIENT_PROFILE_ID = (select PATIENT_PROFILE_ID from EDC_PATIENT_VISIT where PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID))',
'and a.STUDY_ID = :APP_EDC_STUDY_ID',
'--order by B.SEQ_NO',
'union all',
'SELECT null, ',
'       ''<font tooltip="''||SECTION_NAME||''" title="''||SECTION_NAME||''" style="background:&'' || NVL(UPPER(EDC_UTIL.GET_CRF_STATUS_LBL(B.CRF_TABLE_NAME,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_STUDY_ID)),''INCOMPLETE'') || ''.;">'' || B.CRF_SHORT_NAME || ''</font>'
||''' LABEL, ',
'       ''f?p=&APP_ID.:''||b.crf_page_no||'':''||:APP_SESSION||'':::''||b.crf_page_no||''::'',',
'       decode(:app_page_id,b.crf_page_no,''YES'',''NO'') is_current,',
'NULL "IMAGE",',
'SECTION_NAME image_attribute,',
'B.SEQ_NO',
'FROM  edc_crf_pages a, edc_crf_master b',
'WHERE a.crf_id = b.crf_id',
'  and VISIT_TITLE = (select VISIT_TITLE from EDC_PATIENT_VISIT where PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID)',
'  and 2  in (select STATUS from EDC_PATIENT_PROFILE where PATIENT_PROFILE_ID = (select PATIENT_PROFILE_ID from EDC_PATIENT_VISIT where PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID))',
'  and B.CRF_ID = 1',
'and a.STUDY_ID = :APP_EDC_STUDY_ID)',
'order by SEQ_NO'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
