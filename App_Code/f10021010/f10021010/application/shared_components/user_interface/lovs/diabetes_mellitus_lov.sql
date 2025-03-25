prompt --application/shared_components/user_interface/lovs/diabetes_mellitus_lov
begin
--   Manifest
--     DIABETES_MELLITUS_LOV
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
 p_id=>wwv_flow_imp.id(10346521106807998503)
,p_lov_name=>'DIABETES_MELLITUS_LOV'
,p_lov_query=>'.'||wwv_flow_imp.id(10346521106807998503)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10346521452522998504)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Non-IDDM'
,p_lov_return_value=>'Non-IDDM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10346521776824998504)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'IDDM'
,p_lov_return_value=>'IDDM'
);
wwv_flow_imp.component_end;
end;
/
