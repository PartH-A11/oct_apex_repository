prompt --application/shared_components/user_interface/lovs/status_query_role_update
begin
--   Manifest
--     STATUS_QUERY_ROLE_UPDATE
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
 p_id=>wwv_flow_imp.id(12162105142487064637)
,p_lov_name=>'STATUS_QUERY_ROLE_UPDATE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select D,R',
' from',
' (',
' select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'')',
'   and :P124_QRY_ID IS NULL',
'   UNION ALL',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'',''Responded'')',
'   and :APP_EDC_ROLE_ID in (16,15)',
'   and 0 not in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   and :APP_EDC_ROLE_ID in (16,15)',
'   )',
'   and :P124_QRY_ID IS NOT NULL',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'',''Closed'')',
'   and :APP_EDC_ROLE_ID in (21)',
'   and 0 not in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   and :APP_EDC_ROLE_ID in (21)',
')',
'and :P124_QRY_ID IS NOT NULL',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'',''Responded'',''Closed'')',
'   and :APP_EDC_ROLE_ID in (17,19)',
'   and 0 not in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   and :APP_EDC_ROLE_ID in (17,19)',
'   )',
'   and :P124_QRY_ID IS NOT NULL',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'',''Responded'',''Closed'',''Reopened'')',
'   and :APP_EDC_ROLE_ID in (18,13)',
'   and 0 not in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'  and :APP_EDC_ROLE_ID in (18,13)',
'  )',
'  and :P124_QRY_ID IS NOT NULL',
'union all',
'select INITCAP(LV.DISPLAY_VALUE) D, LV.STORED_VALUE R ',
'  from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID ',
'   and LOV_NAME=''QUERY_STATUS'' ',
'   and LV.STATUS=1',
'   and LV.STORED_VALUE in(''Open'')',
'   and :APP_EDC_ROLE_ID in (13,15,16,17,18,19,21)',
'   and 0 in (select count(*)',
'from EDC_CRF_QUERIES Q',
'where STUDY_ID = :APP_EDC_STUDY_ID',
'   and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'  and :APP_EDC_ROLE_ID in (13,15,16,17,18,19,21)',
'  )',
'  and :P124_QRY_ID IS NOT NULL',
' )   ',
'order by r'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
