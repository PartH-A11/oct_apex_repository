prompt --application/shared_components/logic/application_processes/app_edc_queries_id_typ
begin
--   Manifest
--     APPLICATION PROCESS: APP_EDC_QUERIES_ID_TYP
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(11056304687308091695)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APP_EDC_QUERIES_ID_TYP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select ID_1,TYPE_1',
'    INTO :APP_TBL_PK_ID,:APP_TBL_TYPE',
'  from ',
'  (',
'   select CON_MEDI_ID as ID_1,',
'         ''CONCOMIT'' as TYPE_1',
'   FROM EDC_CRF_CONCOMITANT_MED ',
'   where STUDY_ID = :APP_EDC_STUDY_ID ',
'     and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   union all',
'   select AESE_ID as ID_1,',
'         ''AE'' as TYPE_1',
'    FROM EDC_CRF_AE_SE ',
'   where STUDY_ID = :APP_EDC_STUDY_ID ',
'     and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   union all',
'    select UNSCH_ID as ID_1,',
'          ''UNSCHL'' as TYPE_1',
'      FROM EDC_CRF_UNSCH_VST_LAB_TST',
'     where STUDY_ID = :APP_EDC_STUDY_ID ',
'       and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'  );',
'Exception',
'  when others then',
'       :APP_TBL_PK_ID := null;:APP_TBL_TYPE:= null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error occured during ID & Type Fetching...'
,p_process_when_type=>'NEVER'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Current Page is contained (condition)',
'--(Page No) : 50,4,54'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
