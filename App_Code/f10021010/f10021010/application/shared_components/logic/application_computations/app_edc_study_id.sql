prompt --application/shared_components/logic/application_computations/app_edc_study_id
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_EDC_STUDY_ID
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
 p_id=>wwv_flow_imp.id(11045973163236776900)
,p_computation_sequence=>10
,p_computation_item=>'APP_EDC_STUDY_ID'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_study_id number;',
'  v_type number;',
'begin',
' select TYPE, STUDY_ID',
' into v_type, v_study_id',
' from edc_study_contact',
' where upper(username) = upper(:P101_USERNAME);',
'',
'  if v_type = 1 then ',
'   select min(study_id) into v_study_id from edc_study where STUDY_ACTIVE not in (''C'',''N'');',
'  end if;',
'  return v_study_id;',
'end;'))
,p_compute_when_type=>'NEVER'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
