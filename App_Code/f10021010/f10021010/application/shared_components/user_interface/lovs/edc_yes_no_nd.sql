prompt --application/shared_components/user_interface/lovs/edc_yes_no_nd
begin
--   Manifest
--     EDC_YES_NO_ND
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
 p_id=>wwv_flow_imp.id(11054854272711658520)
,p_lov_name=>'EDC_YES_NO_ND'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where L.LOV_ID=LV.LOV_ID and LOV_NAME=''YES_NO_ND'' and LV.STATUS=1',
'order by lv.sequence'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
