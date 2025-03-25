prompt --application/shared_components/user_interface/lovs/edc_page_items_for_query
begin
--   Manifest
--     EDC_PAGE_ITEMS_FOR_QUERY
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
 p_id=>wwv_flow_imp.id(11061137580996539592)
,p_lov_name=>'EDC_PAGE_ITEMS_FOR_QUERY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REPLACE(REPLACE(replace(a.LABEL,CHR(38)||''nbsp;'',''''),''<b>'',''''),''</b>'') d, ITEM_NAME r',
'   from APEX_APPLICATION_PAGE_ITEMS a, APEX_APPLICATION_PAGE_regions b',
' where a.workspace = b.workspace',
'   and a.application_id = b.application_id',
'   and a.page_id = b.page_id',
'   and a.REGION_id  = b.REGION_id',
'   and a.DISPLAY_AS <> ''Hidden''',
'   and a.ITEM_SOURCE_TYPE = ''Database Column''',
' --  and a.workspace = ''LAB_WORKSPACE''',
'   and replace(a.LABEL,CHR(38)||''nbsp;'','''') is not null',
'   AND a.LABEL IS NOT NULL',
'   and nvl(a.CONDITION_TYPE_CODE,''null'') <> ''NEVER''',
'   and nvl(B.CONDITION_TYPE_CODE,''null'') <> ''NEVER'' ',
'   AND a.APPLICATION_ID = :APP_ID'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
