prompt --application/shared_components/navigation/lists/edc_home_list
begin
--   Manifest
--     LIST: EDC_HOME_LIST
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
 p_id=>wwv_flow_imp.id(11045814375372183560)
,p_name=>'EDC_HOME_LIST'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045815269030183563)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'javascript:alert(''Please select a study from the list below'');'
,p_list_item_icon=>'menu/home_bx_128x128.png'
,p_list_item_icon_attributes=>'style="width:64px;height:64px"'
,p_list_item_disp_cond_type=>'ITEM_IS_NULL'
,p_list_item_disp_condition=>'APP_EDC_STUDY_ID'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045814661050183562)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/home_bx_128x128.png'
,p_list_item_icon_attributes=>'style="width:64px;height:64px"'
,p_list_item_disp_cond_type=>'ITEM_IS_NOT_NULL'
,p_list_item_disp_condition=>'APP_EDC_STUDY_ID'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045814966954183563)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/generate_bx_128x128.png'
,p_list_item_icon_attributes=>'style="width:64px;height:64px"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11045815576684183563)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'CTMS'
,p_list_item_link_target=>'http://bkp2.octalsoft.com:8080/apex/f?p=186'
,p_list_item_icon=>'menu/interactive_report_bx_128x128.png'
,p_list_item_icon_attributes=>'style="width:64px;height:64px;"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
