prompt --application/shared_components/user_interface/lovs/edc_feedback_status
begin
--   Manifest
--     EDC_FEEDBACK_STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11060293173091826296)
,p_lov_name=>'EDC_FEEDBACK_STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VALUE,STORED_VALUE from EDC_LOV a,EDC_LOV_VALUES B',
'WHERE A.LOV_ID=B.LOV_ID ',
'AND A.LOV_NAME=''EDC_FEEDBACK_STATUS''',
'order by stored_value'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
