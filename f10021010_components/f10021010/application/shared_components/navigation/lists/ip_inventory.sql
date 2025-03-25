prompt --application/shared_components/navigation/lists/ip_inventory
begin
--   Manifest
--     LIST: IP_INVENTORY
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
 p_id=>wwv_flow_imp.id(12152720343728072762)
,p_name=>'IP_INVENTORY'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12152720656613072763)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Kit Inventory'
,p_list_item_link_target=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/prod_sqldev_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_auth_msg varchar2(200);',
'begin',
'if :APP_EDC_ROLE_ID in (13) then ',
'return true;',
'else',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,201,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'end if;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12152720924901072763)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Delivery to Site'
,p_list_item_link_target=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/prod_apex_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_auth_msg varchar2(200);',
'begin',
'IF :APP_EDC_ROLE_ID IN (13) THEN ',
'RETURN TRUE;',
'ELSE',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,371,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'END IF;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'371:372'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12152721243172072764)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Received at Site'
,p_list_item_link_target=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:RP,92:::'
,p_list_item_icon=>'menu/manage_service_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_auth_msg varchar2(200);',
'begin',
'IF :APP_EDC_ROLE_ID IN (13) THEN ',
'RETURN TRUE;',
'ELSE',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,204,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'END IF;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'151:152:204:205'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12152721537662072764)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Delivery to Depot'
,p_list_item_link_target=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/db_tools_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_auth_msg varchar2(200);',
'begin',
'IF :APP_EDC_ROLE_ID IN (13) THEN ',
'RETURN TRUE;',
'ELSE',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,206,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'END IF;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'207:206'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12152721827748072764)
,p_list_item_display_sequence=>42
,p_list_item_link_text=>'Received at Depot'
,p_list_item_link_target=>'f?p=&APP_ID.:380:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/browse_db_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_auth_msg varchar2(200);',
'begin',
'IF :APP_EDC_ROLE_ID IN (13) THEN ',
'RETURN TRUE;',
'ELSE',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,380,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'END IF;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'380:381'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12152722136443072764)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Delivery to Sponsor'
,p_list_item_link_target=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/dbshare_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'160:161:210:211'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12152722444736072764)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Receive at Sponsor'
,p_list_item_link_target=>'f?p=&APP_ID.:212:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/change_storage_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'162:163:212:213'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11269303610008724234)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Kit Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP:::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret number;',
'v_auth_msg varchar2(200);',
'begin',
'   ',
'    ',
'   IF :APP_EDC_ROLE_ID = 13 THEN',
'      RETURN TRUE;',
'    ELSE  ',
'    SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,29,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'',
'    IF V_RET =1 THEN',
'        RETURN true;',
'    ELSE',
'        RETURN false;',
'    END IF;',
'   END IF;  ',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29,40'
);
wwv_flow_imp.component_end;
end;
/
