prompt --application/shared_components/legacy_data_loads/edc_random_mst_tmp
begin
--   Manifest
--     EDC_RANDOM_MST_TMP
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(1817390873354542787)
,p_name=>'KIT_RANDOM_LIST_UPLOAD'
,p_owner=>'#OWNER#'
,p_table_name=>'EDC_RANDOM_MST_TMP'
,p_unique_column_1=>'OBS'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
