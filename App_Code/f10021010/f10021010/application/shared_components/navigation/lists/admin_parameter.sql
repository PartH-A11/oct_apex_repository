prompt --application/shared_components/navigation/lists/admin_parameter
begin
--   Manifest
--     LIST: ADMIN_PARAMETER
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
 p_id=>wwv_flow_imp.id(11045556367753569748)
,p_name=>'ADMIN_PARAMETER'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045556672565569751)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'CRF Pages'
,p_list_item_link_target=>'f?p=&APP_ID.:190:&SESSION.::&DEBUG.:RP,190:::'
,p_list_item_icon=>'menu/trafficlight_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'190:193'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9036888853305374320)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'CRF Fields'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/tabform_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'71,72'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045556975747569753)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'App. Groups'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/books_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38,39'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045557260246569753)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Parameter'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/logic_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045557562595569753)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Mail Format'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/logic_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31,32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11046436483976635002)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'User Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/users_business_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045558157068569753)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/user_yellow_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34,35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045558487678569753)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Access'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP,42:::'
,p_list_item_icon=>'menu/users_business_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42,43'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(758989729788579688)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Kits Status Change'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/key_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID = 13 AND UPPER(:APP_USER_NAME) = ''MILAN.KADIA'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
