prompt --application/shared_components/user_interface/lovs/ip_status_lov_for_ip_refresh
begin
--   Manifest
--     IP_STATUS_LOV_FOR_IP_REFRESH
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
 p_id=>wwv_flow_imp.id(5238911447693945029)
,p_lov_name=>'IP_STATUS_LOV_FOR_IP_REFRESH'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LV.DISPLAY_VALUE D',
'     , LV.STORED_VALUE R',
'  FROM EDC_LOV L',
'     , EDC_LOV_VALUES LV',
' WHERE L.LOV_ID = LV.LOV_ID',
'   AND LOV_NAME = ''IP_STATUS''',
'   AND LV.STATUS = 1',
'   AND LV.STORED_VALUE IN (/*''3'', ''8'' ,*/ ''7'', ''9'' ,''10'', ''11''/*,*/, ''12'', /*''20'',*/ ''21'') /*Retained at Site, Expired at Site, Damaged at Site, Lost at Site, (Qurantined at Site,) Destroyed at Site, (Not Received at Site,) Temperature Excursion at S'
||'ite*/',
' ORDER BY LV.SEQUENCE'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
