prompt --application/shared_components/user_interface/lovs/edc_page_lov1
begin
--   Manifest
--     EDC_PAGE_LOV1
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
 p_id=>wwv_flow_imp.id(9743097510280043224)
,p_lov_name=>'EDC_PAGE_LOV1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select page_id||'' - ''||page_name d, page_id r ',
' from apex_application_pages ',
' where application_id=:APP_ID ',
'  and page_id not in (select crf_page_no from edc_Crf_master)',
'  union',
'  select crf_page_no||''-''||CRF_name d, b.page_id r',
'    from edc_Crf_master a, apex_application_pages b',
'    where b.page_id = a.crf_page_no',
'      and application_id=:APP_ID ',
' order by 2;'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
