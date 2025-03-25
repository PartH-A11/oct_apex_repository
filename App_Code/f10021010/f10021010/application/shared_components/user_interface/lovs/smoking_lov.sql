prompt --application/shared_components/user_interface/lovs/smoking_lov
begin
--   Manifest
--     SMOKING_LOV
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
 p_id=>wwv_flow_imp.id(10346513947316938196)
,p_lov_name=>'SMOKING_LOV'
,p_lov_query=>'.'||wwv_flow_imp.id(10346513947316938196)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10346514232635938198)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Current'
,p_lov_return_value=>'Current'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10346514576852938199)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Former'
,p_lov_return_value=>'Former'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10346515006451938199)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Never'
,p_lov_return_value=>'Never'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10346515416939938199)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Unknown'
,p_lov_return_value=>'Unknown'
);
wwv_flow_imp.component_end;
end;
/
