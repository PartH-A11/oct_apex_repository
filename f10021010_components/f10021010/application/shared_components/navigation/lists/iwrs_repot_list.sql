prompt --application/shared_components/navigation/lists/iwrs_repot_list
begin
--   Manifest
--     LIST: iwrs repot list
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
 p_id=>wwv_flow_imp.id(3552789706557970020)
,p_name=>'iwrs repot list'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552789927345970023)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Randomization Block Status - Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552790371972970026)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'IWRS data by subject (Randomized subjects only)'
,p_list_item_link_target=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552791138928970027)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Cap Report -Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552791576757970028)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Location wise IP - Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552791984564970028)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'ePRO - Symptom Tracker - Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3552792344844970028)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Mail History Report - Admin'
,p_list_item_link_target=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'122,123'
);
wwv_flow_imp.component_end;
end;
/
