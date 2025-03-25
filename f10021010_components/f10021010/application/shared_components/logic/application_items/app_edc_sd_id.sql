prompt --application/shared_components/logic/application_items/app_edc_sd_id
begin
--   Manifest
--     APPLICATION ITEM: APP_EDC_SD_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(3109701188079121526)
,p_name=>'APP_EDC_SD_ID'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_item_comment=>'APP_EDC_SD_ID stands for APP_EDC_STUDY_DEPOT_ID'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
