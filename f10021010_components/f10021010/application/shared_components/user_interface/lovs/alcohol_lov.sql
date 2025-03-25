prompt --application/shared_components/user_interface/lovs/alcohol_lov
begin
--   Manifest
--     ALCOHOL_LOV
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
 p_id=>wwv_flow_imp.id(11447467941609463725)
,p_lov_name=>'ALCOHOL_LOV'
,p_lov_query=>'.'||wwv_flow_imp.id(11447467941609463725)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11447468315511463725)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Current'
,p_lov_return_value=>'Current'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11447468719747463725)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Former'
,p_lov_return_value=>'Former'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11447469061854463726)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Never'
,p_lov_return_value=>'Never'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11447469498536463726)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Unknown'
,p_lov_return_value=>'Unknown'
);
wwv_flow_imp.component_end;
end;
/
