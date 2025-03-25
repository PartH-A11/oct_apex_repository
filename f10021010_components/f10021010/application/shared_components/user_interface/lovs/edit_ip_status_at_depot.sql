prompt --application/shared_components/user_interface/lovs/edit_ip_status_at_depot
begin
--   Manifest
--     EDIT_IP_STATUS_AT_DEPOT
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
 p_id=>wwv_flow_imp.id(11274996627933420896)
,p_lov_name=>'EDIT_IP_STATUS_AT_DEPOT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LV.DISPLAY_VALUE D',
'     , LV.STORED_VALUE R',
'  FROM EDC_LOV L',
'     , EDC_LOV_VALUES LV',
' WHERE L.LOV_ID = LV.LOV_ID',
'   AND LOV_NAME = ''IP_STATUS''',
'   AND LV.STATUS = 1',
'   AND LV.STORED_VALUE IN (''1'', ''6'', ''13'' , ''14'' ,''15'' ,''16'', ''22''/*, ''23''*/) /* Received at Depot, Expired at Depot, Damaged at Depot, Lost at Depot, (Qurantined at Depot,)',
'   Destroyed at Depot, Temprature Excursion(, Not Received)*/',
' ORDER BY LV.SEQUENCE'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
