prompt --application/shared_components/user_interface/lovs/form_type
begin
--   Manifest
--     FORM_TYPE
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
 p_id=>wwv_flow_imp.id(5172360003803515131)
,p_lov_name=>'FORM_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(5172360003803515131)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5172360317586515131)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Simple CRF'
,p_lov_return_value=>'CRF'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5172360777425515131)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Common Form'
,p_lov_return_value=>'COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5172361206847515131)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Common Report with Form'
,p_lov_return_value=>'COMRF'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5172361581815515130)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Visit Parent Page'
,p_lov_return_value=>'VPAR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5172361940626515130)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Visit Child Page'
,p_lov_return_value=>'VCHL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5172362341579515130)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Common Forms Parent Page'
,p_lov_return_value=>'CFPAR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5172362742955515130)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Common Forms Child Page'
,p_lov_return_value=>'CFCHL'
);
wwv_flow_imp.component_end;
end;
/
