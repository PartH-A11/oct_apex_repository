prompt --application/shared_components/navigation/lists/ip_supply_management
begin
--   Manifest
--     LIST: IP Supply Management
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11052220487711127550)
,p_name=>'IP Supply Management'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11052220770115127551)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'IP Inventory'
,p_list_item_link_target=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'283,371,373,377,380,345,383,372,374,469,381,382,384'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11052221069074127552)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Depot Summary Table'
,p_list_item_link_target=>'f?p=&APP_ID.:567:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'567'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11052221366354127552)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Project Summary Table'
,p_list_item_link_target=>'f?p=&APP_ID.:561:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11052221669363127552)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Shipment Tracking Table'
,p_list_item_link_target=>'f?p=&APP_ID.:570:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
