prompt --application/shared_components/navigation/tabs/standard
begin
--   Manifest
--     TABS: 10021010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_tab(
 p_id=>wwv_flow_imp.id(11045871874093968264)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'T_STUDYDASHBOARD'
,p_tab_text=>'Home'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'78,78'
,p_tab_comment=>'--Name rename Study Dashboard to Home'
);
wwv_flow_imp_shared.create_tab(
 p_id=>wwv_flow_imp.id(11045872163310973212)
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'T_STUDYSETUP'
,p_tab_text=>'Study Setup'
,p_tab_step=>2
,p_tab_also_current_for_pages=>'2,3,7,8,11,13,16,17,18,20,21,148,149,146,150,152,151,154,155,157,158,159,160,161,162,163,187,188,150,150,200,199,8,11,197,802,801,810,208,135,136'
,p_tab_plsql_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_ret number;',
'v_auth_msg varchar2(1000);',
'Begin',
'if :APP_PAGE_ID in (101,0) then',
'RETURN true;',
'else',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,2,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'end if;',
'End;'))
,p_display_condition_type=>'FUNCTION_BODY'
,p_tab_disp_cond_text=>'PLSQL'
);
wwv_flow_imp_shared.create_tab(
 p_id=>wwv_flow_imp.id(11051785874735005044)
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'T_IPMANAGEMENT'
,p_tab_text=>'Kit Management'
,p_tab_step=>201
,p_tab_also_current_for_pages=>'201,204,205,206,207,371,372,380,381,40,29,372,40,29'
,p_tab_plsql_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_ret number;',
'v_auth_msg varchar2(1000);',
'Begin',
'if :APP_EDC_ROLE_ID = 13 then',
'RETURN true;',
'else',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,201,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'end if;',
'End;'))
,p_display_condition_type=>'FUNCTION_BODY'
,p_tab_disp_cond_text=>'PLSQL'
);
wwv_flow_imp_shared.create_tab(
 p_id=>wwv_flow_imp.id(11046793479728307698)
,p_tab_set=>'TS1'
,p_tab_sequence=>50
,p_tab_name=>'T_PATIENT'
,p_tab_text=>'Subject'
,p_tab_step=>36
,p_tab_also_current_for_pages=>'4,19,36,37,41,44,46,48,55,59,85,89,93,102,501,504,502,503,41,507,508,505,506,511,512,515,514,513,516,517,518,515,519,520,521,522,523,524,530,531,532,552,701,701,702,703,704,705,706,708,1001,58,74'
,p_tab_plsql_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_ret number;',
'v_auth_msg varchar2(1000);',
'Begin',
'if :APP_PAGE_ID in (101,0) or :APP_EDC_USER_TYPE in (2,3) then',
'RETURN true;',
'else',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,36,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'end if;',
'End;'))
,p_display_condition_type=>'FUNCTION_BODY'
,p_tab_disp_cond_text=>'PLSQL'
);
wwv_flow_imp_shared.create_tab(
 p_id=>wwv_flow_imp.id(11060545363138146696)
,p_tab_set=>'TS1'
,p_tab_sequence=>60
,p_tab_name=>'Reports'
,p_tab_text=>'Reports'
,p_tab_step=>79
,p_tab_also_current_for_pages=>'79,80,81,82,83,84,76,86,87,92,95,96,28,12,99,49,50,51,53,54,57,57,60,61,62,64,60,61,62,63,65,66,69,70,75,106,107,108,109,111,112,113,114,115,115,116,119,120,123,122,121,125,127,137,139,153'
,p_tab_plsql_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  v_ret number;',
'  v_auth_msg varchar2(1000);',
'Begin',
'  if :APP_PAGE_ID in (101,0) then',
'    RETURN true;',
'  else',
'IF :APP_EDC_ROLE_ID IN (13,33,34) THEN    ',
'RETURN TRUE;',
'ELSE',
' SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER_NAME,79,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'    IF V_RET = 1 THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'  end if;',
'END IF;',
'End;'))
,p_display_condition_type=>'FUNCTION_BODY'
,p_tab_disp_cond_text=>'PLSQL'
,p_tab_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Condition (Boolean Return)',
'Declare',
'v_ret number;',
'v_auth_msg varchar2(1000);',
'Begin',
'if :APP_PAGE_ID in (101,0) then',
'RETURN true;',
'else',
'EDC_AUTH_PKG.can_see_page(:APP_USER,79,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'end if;',
'End;'))
);
wwv_flow_imp_shared.create_tab(
 p_id=>wwv_flow_imp.id(11045874573601044396)
,p_tab_set=>'TS1'
,p_tab_sequence=>70
,p_tab_name=>'T_ADMINISTRATION'
,p_tab_text=>'Administration'
,p_tab_step=>5
,p_tab_also_current_for_pages=>'5,9,10,14,15,23,22,25,24,26,27,30,31,32,33,34,35,39,38,42,43,172,171,193,190,195,196,72,71,98,103,118,117,128,126,131,132,133,134,140'
,p_tab_plsql_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_ret number;',
'v_auth_msg varchar2(1000);',
'Begin',
'if :APP_PAGE_ID in (101,0) then',
'RETURN true;',
'else',
'SUN_21010_DEV.EDC_AUTH_PKG.can_see_page(:APP_USER,5,:APP_EDC_STUDY_ID,v_ret,v_auth_msg);',
'IF V_RET =1 THEN',
'RETURN true;',
'ELSE',
'RETURN false;',
'END IF;',
'end if;',
'End;'))
,p_display_condition_type=>'FUNCTION_BODY'
,p_tab_disp_cond_text=>'PLSQL'
);
wwv_flow_imp_shared.create_tab(
 p_id=>wwv_flow_imp.id(4071690165745472810)
,p_tab_set=>'TS1'
,p_tab_sequence=>80
,p_tab_name=>'Subject Diary'
,p_tab_text=>'Subject Diary'
,p_tab_step=>210
,p_tab_also_current_for_pages=>'100,509,510,45,110'
,p_display_condition_type=>'NEVER'
,p_tab_comment=>':APP_EDC_ROLE_ID != 18'
);
wwv_flow_imp.component_end;
end;
/
