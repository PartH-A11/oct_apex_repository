prompt --application/shared_components/navigation/lists/study_submenu
begin
--   Manifest
--     LIST: Study Submenu
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
 p_id=>wwv_flow_imp.id(11045204683056824372)
,p_name=>'Study Submenu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045204974242824376)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Study Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/manage_service_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_text varchar2(2000);',
'begin',
'EDC_AUTH_PKG.can_see_page(:APP_USER,2,:APP_EDC_STUDY_ID,v_ret,v_text);',
'if v_ret = 1 then',
' return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045205268953824377)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Study Documents'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/files_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_text varchar2(2000);',
'begin',
'EDC_AUTH_PKG.can_see_page(:APP_USER,7,:APP_EDC_STUDY_ID,v_ret,v_text);',
'if v_ret = 1 then',
' return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7,8,11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045205569949824377)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Study Arm'
,p_list_item_link_target=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/form_proc_page_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_ret number;',
'v_auth_msg varchar2(1000);',
'Begin',
'if :APP_PAGE_ID in (101,0) then',
'RETURN true;',
'else',
'EDC_AUTH_PKG.can_see_page(:APP_USER,148,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'end if;',
'End;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'148,149'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045206470695824378)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Study Schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/calendar_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_text varchar2(2000);',
'begin',
'EDC_AUTH_PKG.can_see_page(:APP_USER,13,:APP_EDC_STUDY_ID,v_ret,v_text);',
'if v_ret = 1 then',
' return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045206768798824378)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Enrolled Sites'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/browse_db_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_text varchar2(2000);',
'begin',
'EDC_AUTH_PKG.can_see_page(:APP_USER,16,:APP_EDC_STUDY_ID,v_ret,v_text);',
'if v_ret = 1 then',
' return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17,18'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045205884810824377)
,p_list_item_display_sequence=>52
,p_list_item_link_text=>'Randomization<br>Block'
,p_list_item_link_target=>'f?p=&APP_ID.:187:&SESSION.::&DEBUG.:RP,187:::'
,p_list_item_icon=>'menu/tree_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_text varchar2(2000);',
'begin',
'',
'IF :APP_EDC_ROLE_ID IN (19, 23) THEN -- PM, Medical Monitor',
'     RETURN FALSE;',
'END IF;',
'',
'',
'EDC_AUTH_PKG.can_see_page(:APP_USER,187,:APP_EDC_STUDY_ID,v_ret,v_text);',
'if v_ret = 1 then',
' return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'187,188'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045207058930824378)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Study Team'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/users_business_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_text varchar2(2000);',
'begin',
'EDC_AUTH_PKG.can_see_page(:APP_USER,20,:APP_EDC_STUDY_ID,v_ret,v_text);',
'if v_ret = 1 then',
' return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4071421061679007033)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'CRF Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:802:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/edit_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'802,801'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4071548632733545200)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Patient Diary<br>Schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:208:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/memo_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'208,209'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2007321814403985533)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Enrolled Depot'
,p_list_item_link_target=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/user_green_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID = 13'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'135,136'
);
wwv_flow_imp.component_end;
end;
/
