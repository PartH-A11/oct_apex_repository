prompt --application/shared_components/navigation/lists/accountability_log
begin
--   Manifest
--     LIST: Accountability Log
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
 p_id=>wwv_flow_imp.id(9550784367933531508)
,p_name=>'Accountability Log'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9550787518583576247)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Placebo Run-In'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9550940633647978429)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Rescue Medication'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
