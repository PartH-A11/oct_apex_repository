prompt --application/shared_components/navigation/navigation_bar
begin
--   Manifest
--     ICON BAR ITEMS: 10021010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(11060235964879727991)
,p_icon_sequence=>10
,p_icon_subtext=>'Change Password'
,p_icon_target=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67:P67_USERNAME:&APP_USER.:'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'6,47,68,78,77,124'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(11060236367658757083)
,p_icon_sequence=>10
,p_icon_subtext=>'Feedback'
,p_icon_target=>'javascript:popupURL(''f?p=&APP_ID.:73:&SESSION.::NO:RP,73:P73_PAGE_NAME:'' + &APP_PAGE_ID.)'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'77,47,124,6,68,73'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(11060236684036764640)
,p_icon_sequence=>10
,p_icon_subtext=>'View Ticket'
,p_icon_target=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'6,47,68,77,124'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(11045187974382407915)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'124,77,6,68,47'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp.component_end;
end;
/
