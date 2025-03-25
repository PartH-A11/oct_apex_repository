prompt --application/shared_components/navigation/lists/logs
begin
--   Manifest
--     LIST: Logs
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10576810059521697454)
,p_name=>'Logs'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10576811168366697457)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Accountability Log - Placebo Run-In'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10576811596864697457)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Accountability Log - Rescue Medication'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10576810444216697455)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'IP Accountability Log - Master'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:63:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10576810783499697456)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'IP Accountability Log - Subject Specific'
,p_list_item_link_target=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10576932514856650170)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'IP Reconciliation Log'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
