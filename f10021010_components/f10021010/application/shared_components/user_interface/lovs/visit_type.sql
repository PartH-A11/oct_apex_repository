prompt --application/shared_components/user_interface/lovs/visit_type
begin
--   Manifest
--     VISIT_TYPE
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
 p_id=>wwv_flow_imp.id(6468293915331365287)
,p_lov_name=>'VISIT_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d',
'     , lv.stored_value r',
'  from edc_lov l',
'     , edc_lov_values lv',
' where l.lov_id = lv.lov_id',
'   and lov_name = ''VISIT_TYPE''',
'   and lv.status = 1',
' order by lv.SEQUENCE'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
