prompt --application/shared_components/user_interface/lovs/shipped_status_ip_received
begin
--   Manifest
--     SHIPPED_STATUS_IP_RECEIVED
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
 p_id=>wwv_flow_imp.id(10175111126048852074)
,p_lov_name=>'SHIPPED_STATUS_IP_RECEIVED'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VALUE as "DISPLAY_VALUE",',
'	   STORED_VALUE as "STORED_VALUE" ',
'  from EDC_LOV L, EDC_LOV_VALUES LV',
' WHERE L.LOV_ID = LV.LOV_ID',
'   AND LOV_NAME =''SHIPPED_IP_STATUS''',
'   AND LV.STATUS = 1',
'union',
'select ''Retention Quantity at Site'', ''99''',
'  from dual',
' order by 2'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
