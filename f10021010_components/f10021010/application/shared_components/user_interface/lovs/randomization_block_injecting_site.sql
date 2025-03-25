prompt --application/shared_components/user_interface/lovs/randomization_block_injecting_site
begin
--   Manifest
--     RANDOMIZATION_BLOCK_INJECTING_SITE
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
 p_id=>wwv_flow_imp.id(10985611327970866323)
,p_lov_name=>'RANDOMIZATION_BLOCK_INJECTING_SITE'
,p_lov_query=>'.'||wwv_flow_imp.id(10985611327970866323)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10985611626084866324)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Gluteal'
,p_lov_return_value=>'G'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10985611959798866328)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Deltoid'
,p_lov_return_value=>'D'
);
wwv_flow_imp.component_end;
end;
/
