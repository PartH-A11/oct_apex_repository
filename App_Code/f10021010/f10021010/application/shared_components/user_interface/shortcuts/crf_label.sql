prompt --application/shared_components/user_interface/shortcuts/crf_label
begin
--   Manifest
--     SHORTCUT: CRF_LABEL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(9037306131426611368)
,p_shortcut_name=>'CRF_LABEL'
,p_shortcut_type=>'FUNCTION_BODY'
,p_shortcut_language=>'PLSQL'
,p_version_scn=>1
,p_shortcut=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_item varchar2(50);',
'BEGIN',
'',
'RETURN edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''#CURRENT_ITEM_NAME#'');',
'END;'))
);
wwv_flow_imp.component_end;
end;
/
