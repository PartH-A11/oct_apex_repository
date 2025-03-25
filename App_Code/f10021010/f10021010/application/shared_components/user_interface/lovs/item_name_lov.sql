prompt --application/shared_components/user_interface/lovs/item_name_lov
begin
--   Manifest
--     ITEM_NAME_LOV
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
 p_id=>wwv_flow_imp.id(4071459719266953786)
,p_lov_name=>'ITEM_NAME_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ITEM_LABEL d, COLUMN_NAME r FROM EDC_CRF_ITEMS where study_id = :APP_EDC_STUDY_ID and crf_id = :P801_CRF_ID',
'order by item_seq;'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
