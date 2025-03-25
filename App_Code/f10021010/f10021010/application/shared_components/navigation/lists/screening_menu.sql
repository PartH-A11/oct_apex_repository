prompt --application/shared_components/navigation/lists/screening_menu
begin
--   Manifest
--     LIST: Screening Menu
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
 p_id=>wwv_flow_imp.id(11046626279102319299)
,p_name=>'Screening Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11046628686370319301)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'ADVERSE EVENT'
,p_list_item_link_target=>'javascript:popupURL(''f?p=&APP_ID.:104:&SESSION.::RP,104::P104_Patient_Profile_Id,P104_Study_Id,P104_Patient_Visit_Id,P104_Page_Id:&P37_PATIENT_PROFILE_ID.,&APP_EDC_STUDY_ID.,&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11046628959519319302)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'CON.MED '
,p_list_item_link_target=>'Javascript:popupURL(''f?p=&APP_ID.:105:&SESSION.::RP,105::P105_PATIENT_PROFILE_ID,P105_STUDY_ID,P105_PATIENT_VISIT_ID,P105_PAGE_ID:&P37_PATIENT_PROFILE_ID.,&APP_EDC_STUDY_ID.,&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
