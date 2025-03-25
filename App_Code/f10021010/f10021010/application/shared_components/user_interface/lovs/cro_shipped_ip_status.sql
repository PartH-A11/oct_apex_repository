prompt --application/shared_components/user_interface/lovs/cro_shipped_ip_status
begin
--   Manifest
--     CRO_SHIPPED_IP_STATUS
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
 p_id=>wwv_flow_imp.id(11051817186034046751)
,p_lov_name=>'CRO_SHIPPED_IP_STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REPLACE(DISPLAY_VALUE, ''Ready for use'', ''Received'') as "DISPLAY_VALUE",',
'	   STORED_VALUE as "STORED_VALUE" ',
'  from EDC_LOV L, EDC_LOV_VALUES LV',
' WHERE L.LOV_ID=LV.LOV_ID',
'   AND LOV_NAME =''SHIPPED_IP_STATUS''',
'   AND LV.STATUS = 1',
'   AND LV.STORED_VALUE IN (''11'',''12'',''2'',''3'',''9'',''5'')',
' order by SEQUENCE ASC'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
