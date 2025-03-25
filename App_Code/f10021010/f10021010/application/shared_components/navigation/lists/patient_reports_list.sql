prompt --application/shared_components/navigation/lists/patient_reports_list
begin
--   Manifest
--     LIST: Patient Reports List
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
 p_id=>wwv_flow_imp.id(11061694086254325273)
,p_name=>'Patient Reports List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11061695078193347463)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Patient Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:87:::'
,p_list_item_icon=>'menu/calendar_32.gif'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
