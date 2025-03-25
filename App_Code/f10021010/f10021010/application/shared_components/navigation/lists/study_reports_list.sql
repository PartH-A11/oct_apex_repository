prompt --application/shared_components/navigation/lists/study_reports_list
begin
--   Manifest
--     LIST: Study Reports List
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
 p_id=>wwv_flow_imp.id(11061305288454172215)
,p_name=>'Study Reports List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11061305879799194466)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Study Personnel Sheet'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:80:::'
,p_list_item_icon=>'menu/users_business_32.gif'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID not in (13,15,16,17,31,32,18,19,20,33,25,34,26,23)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11061306668535260464)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Study Statistical Analysis'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:81:::'
,p_list_item_icon=>'menu/chart_line_32.gif'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11061310385091313633)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Query Report'
,p_list_item_link_target=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:83:::'
,p_list_item_icon=>'menu/folder_yellow_32.gif'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11061310668917321067)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Adverse Event Report'
,p_list_item_link_target=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:84:::'
,p_list_item_icon=>'menu/report_32.gif'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11063812270368834668)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Visit Status Report'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92:::'
,p_list_item_icon=>'menu/application_64.gif'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10896145741732951210)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Patient Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:87:::'
,p_list_item_icon=>'menu/calendar_32.gif'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10898295741877355837)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Login Attempts'
,p_list_item_link_target=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95:::'
,p_list_item_icon=>'menu/addresses_wbg_64x64.png'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID = 13'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10572350306375975543)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'User Activity Report'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/shapes_32.gif'
,p_list_item_icon_attributes=>'class="fa fa-paper-plane-o"'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10542485178269799559)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Section Status Report'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/application_64.gif'
,p_list_item_icon_attributes=>'width = 30'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10176066054496785711)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Discontinued Subjects'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/user_red_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10185412304751206696)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'BSA Variance'
,p_list_item_link_target=>'f?p=&APP_ID.:57:&SESSION.:57:&DEBUG.:RP:::'
,p_list_item_icon=>'menu/chart_line_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10176115077277078902)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Kit Inventory'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.:IR_Kit_Inventory:&DEBUG.::P50_REPORT:Kit Inventory:'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID NOT IN (13,17,19,20,33,25,34,23)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':REQUEST IN (''IR_Kit_Inventory'')'
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10181061837514714234)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Site Wise Dispensed Kits'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.:IR_Dispensed_Kits:&DEBUG.::P50_REPORT:Site Wise Dispensed Kits:'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13) /*ADMIN,CRA,PI,DM,PM,CTL,SPON*/'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':REQUEST IN (''IR_Dispensed_Kits'')'
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10181062202185716851)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'IP Inventory at Site'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.:IR_Inventory_at_Site:&DEBUG.::P50_REPORT:IP Inventory at Site:'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*:APP_EDC_ROLE_ID IN (13,20,19,25,27,23,28,17,16,26,30)',
'*/',
':APP_EDC_ROLE_ID IN (13,26,15,17,18,19,23,20)  /*ADMIN,CRA,PI,CRC,DM,PM,CTA,SPON*/',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':REQUEST IN (''IR_Inventory_at_Site'')'
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10181062418933718873)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Site Wise Kit Status'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.:IR_Site_Wise_Kit_Status:&DEBUG.::P50_REPORT:Site Wise Kit Status:'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':REQUEST IN (''IR_Site_Wise_Kit_Status'')'
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10185388469560907446)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Expired Kits'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.:IR_Expired_Kits:&DEBUG.::P50_REPORT:Expired Kit:'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':REQUEST IN (''IR_Expired_Kits'')'
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10185388876677907447)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'IP Inventory at Depot'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.:IR_Inventory_at_Depot:&DEBUG.::P50_REPORT:IP Inventory at Depot:'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,18,17,19,23,20) /*ADMIN,CTA,CRA,DM,SPON,PM*/'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':REQUEST IN (''IR_Inventory_at_Depot'')'
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10177770772200720150)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Subject Visits'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/tree_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID NOT IN (18,15,16,17,19,20,26,23) /*DM,PI,CRC,CRA,PM,SPON*/'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10177790669004914264)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Patient Status Summary Report'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/globe_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,26,15,17,19,23,20)  /*ADMIN,CRA,PI,PM,CTL,SPON*/'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'53,'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10178225979088453322)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Kit Reconciliation Report'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_pie_32.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,18,17,19,23,20)  /*ADMIN,DM,CRA,PM,CTA,SPON*/'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9550759993652106558)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Logs'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:::'
,p_list_item_icon=>'#APP_IMAGES#AccountabilityLog.png'
,p_list_item_icon_attributes=>'width="33"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'it''s temporary never.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'61,62,63,65,66'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9475756705735673284)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Subject Visit Compliance'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64:::'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'it''s temporary never.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9419042427440369416)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Visit wise Subject Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:69:::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:APP_EDC_ROLE_ID NOT IN (18,15,16,17,19,20,33,25,34 )',
':APP_EDC_ROLE_ID IN (13,26,20)  /*ADMIN,CRA,PI,CRC,PM,CTA,SPON*/'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2696138518120523293)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'IWRS Output Report'
,p_list_item_link_target=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:RP:::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID NOT IN (18,15,16,19,17,20,33,25,34,26,23)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9484498738555415535)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'IP Dispensed'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,26,15,17,18,19,23)  /*ADMIN,CRA,PI,CRC,DM,PM,CTA*/'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8439940049763855351)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Subject Data Extraction'
,p_list_item_link_target=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'EXPRESSION'
,p_list_item_current_for_pages=>':REQUEST IN (''IR_Kit_Inventory'')'
,p_list_item_current_language=>'PLSQL'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2697950698275446730)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'IP Compliance Report'
,p_list_item_link_target=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2692497248471821291)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'ePRO/IWRS - Study Statistical Analysis'
,p_list_item_link_target=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.::P114_RADIO:1:'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2689462175905789276)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'ePRO - Query Report'
,p_list_item_link_target=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2689462473569789413)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'ePRO - CRF Status Report'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2690040980151589719)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'ePRO - Diary Type and Section Status Report'
,p_list_item_link_target=>'f?p=&APP_ID.:113:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2689462857159789417)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'ePRO - Audit Trail Report'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2456138156311600346)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'IWRS - Audit Trail Report'
,p_list_item_link_target=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2451844089811546617)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'IWRS data by subject (Randomized subjects only)'
,p_list_item_link_target=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2465442132801709374)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'ePRO - Schedule Creation'
,p_list_item_link_target=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID = 13 AND UPPER(:APP_USER_NAME) IN (''PANKTI.VERMA'')'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1194015218639428542)
,p_list_item_display_sequence=>410
,p_list_item_link_text=>'Audit Trail'
,p_list_item_link_target=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:RP:::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,26,15,17,19,20,23) /*ADMIN,CRC,PI,CRA,PM,SPON*/'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785172603385988176)
,p_list_item_display_sequence=>420
,p_list_item_link_text=>'IWRS - Study Statistical Analysis'
,p_list_item_link_target=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_EDC_ROLE_ID IN (13,26,15,17,19,23,20)  /*ADMIN,CRA,PI,CRC,PM,CTA,SPON*/'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
