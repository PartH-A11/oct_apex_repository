prompt --application/shared_components/navigation/lists/study_submenu1
begin
--   Manifest
--     LIST: Study Submenu1
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
 p_id=>wwv_flow_imp.id(5172363495510515129)
,p_name=>'Study Submenu1'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172363738545515127)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Study Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172364129329515126)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Study Documents'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID NOT IN (19,18)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7,8,11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172364589445515126)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Study Arm'
,p_list_item_link_target=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:RP:::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,22)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'148,149'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172364977870515126)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'IWRS Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172365355070515126)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Enrolled Sites'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP:::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,22,19,18)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17,18'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172365742036515126)
,p_list_item_display_sequence=>45
,p_list_item_link_text=>'Study Team'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,22,19,18)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172366212585515126)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Study Schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP:::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,22,19,18)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172366567324515126)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'CRF Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:802:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,22)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'800,801,802'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172366940822515125)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Query Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:813:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,22)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'813,814,815'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172367387365515125)
,p_list_item_display_sequence=>81
,p_list_item_link_text=>'Lab Pages Declaration'
,p_list_item_link_target=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID NOT IN (19,18)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'57,59,63'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172367747107515125)
,p_list_item_display_sequence=>85
,p_list_item_link_text=>'CRF Status'
,p_list_item_link_target=>'f?p=&APP_ID.:838:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID = 13'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172368117487515125)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'List of Values'
,p_list_item_link_target=>'f?p=&APP_ID.:816:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'816,817'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172368569853515125)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Mail Format'
,p_list_item_link_target=>'f?p=&APP_ID.:829:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'829,830'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5172368975517515125)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'User Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:839:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
