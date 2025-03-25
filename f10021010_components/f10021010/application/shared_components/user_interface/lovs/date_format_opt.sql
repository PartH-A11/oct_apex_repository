prompt --application/shared_components/user_interface/lovs/date_format_opt
begin
--   Manifest
--     DATE_FORMAT_OPT
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
 p_id=>wwv_flow_imp.id(1817293371801359342)
,p_lov_name=>'DATE_FORMAT_OPT'
,p_lov_query=>'.'||wwv_flow_imp.id(1817293371801359342)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1817293682616359342)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Use application standard format masks'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1817294168175359342)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Provide custom formats for uploaded columns'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
