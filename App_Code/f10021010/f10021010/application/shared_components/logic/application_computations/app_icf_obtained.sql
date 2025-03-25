prompt --application/shared_components/logic/application_computations/app_icf_obtained
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_ICF_OBTAINED
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(11055371882593046933)
,p_computation_sequence=>15
,p_computation_item=>'APP_ICF_OBTAINED'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ICF_OBTAINED NUMBER;',
'v_patient_visit_id number;',
'BEGIN',
'select a.patient_visit_id ',
'  into v_patient_visit_id',
'  from edc_patient_visit a, edc_patient_profile b',
' where a.patient_profile_id = b.patient_profile_id',
'   and b.patient_profile_id = :P37_PATIENT_PROFILE_ID',
'   and visit_type = 6;',
'',
'   SELECT NVL(ICF_OBTAINED,0) ',
'     INTO V_ICF_OBTAINED',
'     FROM EDC_CRF_ICF',
'     WHERE PATIENT_VISIT_ID = v_patient_visit_id;',
'',
'return v_icf_obtained;',
'',
'EXCEPTION WHEN OTHERS THEN',
'  return 0;',
'END;'))
,p_compute_when_type=>'NEVER'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
