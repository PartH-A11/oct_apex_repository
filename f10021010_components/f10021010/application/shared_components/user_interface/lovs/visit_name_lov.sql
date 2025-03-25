prompt --application/shared_components/user_interface/lovs/visit_name_lov
begin
--   Manifest
--     VISIT_NAME_LOV
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
 p_id=>wwv_flow_imp.id(10138267783052336051)
,p_lov_name=>'VISIT_NAME_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VISIT_NAME as d,',
'       PARAM_ID as r',
'  from EDC_PATIENT_VISIT_PARAMS',
' order by PARAM_ID'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
