prompt --application/shared_components/user_interface/lovs/discont_reason
begin
--   Manifest
--     DISCONT_REASON
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
 p_id=>wwv_flow_imp.id(9747105997731883438)
,p_lov_name=>'DISCONT_REASON'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VALUE,STORED_VALUE from EDC_LOV a,EDC_LOV_VALUES B',
'WHERE A.LOV_ID=B.LOV_ID ',
'AND A.LOV_NAME=''DISCONT_REASON''',
'order by stored_value'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
