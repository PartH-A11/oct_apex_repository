prompt --application/shared_components/navigation/lists/admin_reports_list
begin
--   Manifest
--     LIST: Admin Reports List
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
 p_id=>wwv_flow_imp.id(3552315147236588000)
,p_name=>'Admin Reports List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552318952010588013)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Randomization Block Status - Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,18)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552319295232588013)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'IWRS data by subject (Randomized subjects only)'
,p_list_item_link_target=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552326942463588022)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Cap Report -Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RET NUMBER;',
'  V_AUTH_MSG VARCHAR2(1000);',
'BEGIN',
'  IF :APP_EDC_ROLE_ID = 13 THEN',
'    RETURN TRUE;',
'  ELSE',
'    ',
'      RETURN FALSE;',
'   ',
'  END IF;',
'END;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552327361417588022)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Location wise IP - Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RET NUMBER;',
'  V_AUTH_MSG VARCHAR2(1000);',
'BEGIN',
'  IF :APP_EDC_ROLE_ID = 13 THEN',
'    RETURN TRUE;',
'  ELSE',
'    ',
'      RETURN FALSE;',
'',
'  END IF;',
'END;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552330091602588024)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'ePRO - Symptom Tracker - Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552330558263588024)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Mail History Report - Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID = 13'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'122,123'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2909529826443685442)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'IWRS - Audit Trail Report'
,p_list_item_link_target=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID = 13'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1813529909095793523)
,p_list_item_display_sequence=>410
,p_list_item_link_text=>'User Role Matrix Report'
,p_list_item_link_target=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
