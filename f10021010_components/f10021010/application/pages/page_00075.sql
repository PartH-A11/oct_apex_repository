prompt --application/pages/page_00075
begin
--   Manifest
--     PAGE: 00075
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>75
,p_tab_set=>'TS1'
,p_name=>'Subject Data Extraction'
,p_step_title=>'Subject Data Extraction'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9556936208064704311)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9556936552765704313)
,p_plug_name=>'Subject Data Extraction'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.invname,c.scrno,c.ptintl',
'     , D.STUDY_SITE_ID',
'     , C.PATIENT_PROFILE_ID',
'     , B.PATIENT_VISIT_ID',
'     , B.VISIT_TITLE',
'     , TO_CHAR(A.VISIT_DATE,''DD-MON-YYYY'') VISIT_DATE',
'     , A.GENDER',
'     , TO_CHAR(A.DOB,''DD-MON-YYYY'') DOB --"Date<br>of<br>Birth"',
'     , TO_CHAR(A.ICDDT,''DD-MON-YYYY'') ICDDT --"Informed<br>Consent<br>Date"',
'     , A.AGE',
'     , A.RADIO4',
'     , A.RADIO1',
'     , TO_CHAR(A.DATE1,''DD-MON-YYYY'') DATE1--"Assent Date"',
'     , A.RADIO2',
'     , A.RADIO3',
'     , A.NUM1',
'     , TO_CHAR(A.ICF_STOP,''HH24:MI'') ICF_STOP--"ICF<br>stop<br>time"',
'     , TO_CHAR(A.ASSENT_STOP,''HH24:MI'') ASSENT_STOP--ICF<br>stop<br>time',
'     , A.IE_MET',
'     , A.RADIO5',
'     , A.RADIO6',
'     , A.COMM1',
'  from iwrs_crf_dm a, edc_patient_visit b, edc_patient_profile c, edc_study_sites d, edc_sites e',
' where a.patient_visit_id = b.patient_visit_id',
'   and b.patient_profile_id = c.patient_profile_id',
'   and c.study_site_id = d.study_site_id',
'   and d.site_id = e.site_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P75_STUDY_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IP_ID, ',
'       STUDY_ID, ',
'       BOTTLE_NO, ',
'       STUDY_ARM_ID, ',
'       ARMD_ID, ',
'       IP_CONTENT, ',
'       --IP_DOSE_LEVEL, ',
'       IP_DOSE, ',
'       IP_NO_TABLETS, ',
'       STUDY_SITE_ID, ',
'       PATIENT_PROFILE_ID,',
'       PATIENT_VISIT_ID,',
'       NVL(IP_STATUS,1) IP_STATUS,',
'       BATCH,',
'       EXP_DATE_REAL,',
'       NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS STATUS,',
'       MANUF_DATE,',
'       EXP_DATE_LABEL,',
'       LOT_NUMBER LOT_NO,',
'       (SELECT a.RANDOMNO D',
'          FROM EDC_PATIENT_PROFILE A',
'         WHERE PATIENT_PROFILE_ID = EDC_IP_DETAIL.PATIENT_PROFILE_ID',
'       ) RANDOM_NO',
'  FROM EDC_IP_DETAIL',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID --NVL(:P0_STUDY_ID,:APP_STUDY_ID)',
'   and EDC_USER.GET_USER_SITE_ACCESS(STUDY_SITE_ID, :APP_EDC_USER_TYPE, :APP_EDC_USER, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_ROLE_ID) = 1',
'   /*AND STUDY_SITE_ID IN (SELECT STUDY_SITE_ID',
'                           FROM EDC_SITE_CONTACTS',
'                          WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER)',
'                            AND TO_NUMBER(:APP_EDC_USER_TYPE) = 3',
'                          UNION',
'                         SELECT CONTACT_ID',
'                           FROM EDC_STUDY_CONTACT',
'                          WHERE STUDY_CONTACT_ID = TO_NUMBER(:APP_EDC_USER_ID)',
'                            AND TO_NUMBER(:APP_EDC_USER_TYPE) = 2',
'                          UNION',
'                         SELECT STUDY_SITE_ID',
'                           FROM EDC_STUDY_SITES',
'                          WHERE USER_ID = TO_NUMBER(:APP_EDC_USER)',
'                            AND TO_NUMBER(:APP_EDC_ROLE_ID) = 17',
'                        )*/',
'UNION',
'SELECT IP_ID,',
'       STUDY_ID, ',
'       BOTTLE_NO, ',
'       STUDY_ARM_ID, ',
'       ARMD_ID, ',
'       IP_CONTENT, ',
'       --IP_DOSE_LEVEL, ',
'       IP_DOSE, ',
'       IP_NO_TABLETS, ',
'       STUDY_SITE_ID, ',
'       PATIENT_PROFILE_ID,',
'       PATIENT_VISIT_ID,',
'       NVL(IP_STATUS,1) IP_STATUS,',
'       BATCH,',
'       EXP_DATE_REAL,',
'       NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS STATUS,',
'       MANUF_DATE,',
'       EXP_DATE_LABEL,',
'       LOT_NUMBER LOT_NO,',
'       (SELECT a.RANDOMNO D',
'          FROM EDC_PATIENT_PROFILE A',
'         WHERE PATIENT_PROFILE_ID = EDC_IP_DETAIL.PATIENT_PROFILE_ID',
'       ) RANDOM_NO',
'  FROM EDC_IP_DETAIL',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID --NVL(:P0_STUDY_ID,:APP_STUDY_ID)',
'   and EDC_USER.GET_USER_SITE_ACCESS(STUDY_SITE_ID, :APP_EDC_USER_TYPE, :APP_EDC_USER, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_ROLE_ID) = 1',
' ORDER BY 1 DESC'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9556936997102704315)
,p_name=>'Study Arm Inventory'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No Data Found'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>507554749548932831
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556945110082704326)
,p_db_column_name=>'INVNAME'
,p_display_order=>10
,p_column_identifier=>'V'
,p_column_label=>'Site'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556945497630704326)
,p_db_column_name=>'SCRNO'
,p_display_order=>20
,p_column_identifier=>'W'
,p_column_label=>'Screening No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556945904179704327)
,p_db_column_name=>'PTINTL'
,p_display_order=>30
,p_column_identifier=>'X'
,p_column_label=>'Subject Initial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556946262846704327)
,p_db_column_name=>'RADIO4'
,p_display_order=>50
,p_column_identifier=>'Z'
,p_column_label=>'Is Subject Randomized same as screening date?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556937069668704317)
,p_db_column_name=>'RADIO2'
,p_display_order=>60
,p_column_identifier=>'AA'
,p_column_label=>'Lesion count performed?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556937517384704318)
,p_db_column_name=>'RADIO3'
,p_display_order=>70
,p_column_identifier=>'AB'
,p_column_label=>'Lesion photograph taken? '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556937879265704319)
,p_db_column_name=>'NUM1'
,p_display_order=>80
,p_column_identifier=>'AC'
,p_column_label=>'Investigator global assessment score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556938251643704319)
,p_db_column_name=>'IE_MET'
,p_display_order=>90
,p_column_identifier=>'AD'
,p_column_label=>'Inclusion/Exclusion Criteria met?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556938700670704320)
,p_db_column_name=>'GENDER'
,p_display_order=>100
,p_column_identifier=>'AE'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556939097632704320)
,p_db_column_name=>'AGE'
,p_display_order=>130
,p_column_identifier=>'AH'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556939465714704320)
,p_db_column_name=>'RADIO1'
,p_display_order=>140
,p_column_identifier=>'AI'
,p_column_label=>'Assent<br>form<br>signed? '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556939888381704321)
,p_db_column_name=>'RADIO5'
,p_display_order=>190
,p_column_identifier=>'AN'
,p_column_label=>'Patient returned<br>used IP pump<br>dispensed in<br>last visit?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556940342250704321)
,p_db_column_name=>'RADIO6'
,p_display_order=>200
,p_column_identifier=>'AO'
,p_column_label=>'New IP<br>pump dispensed<br>to the patient<br>at this visit?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556940694504704322)
,p_db_column_name=>'COMM1'
,p_display_order=>210
,p_column_identifier=>'AP'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556941128745704322)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>220
,p_column_identifier=>'AQ'
,p_column_label=>'Visit date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556941523605704322)
,p_db_column_name=>'DOB'
,p_display_order=>230
,p_column_identifier=>'AR'
,p_column_label=>'Date<br>of<br>Birth'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556941892927704323)
,p_db_column_name=>'ICDDT'
,p_display_order=>240
,p_column_identifier=>'AS'
,p_column_label=>'Informed<br>Consent<br>Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556942305849704323)
,p_db_column_name=>'DATE1'
,p_display_order=>250
,p_column_identifier=>'AT'
,p_column_label=>'Assent Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556942675695704323)
,p_db_column_name=>'ICF_STOP'
,p_display_order=>260
,p_column_identifier=>'AU'
,p_column_label=>'ICF<br>stop<br>time'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556943055780704324)
,p_db_column_name=>'ASSENT_STOP'
,p_display_order=>270
,p_column_identifier=>'AV'
,p_column_label=>'Assent form<br>stop time'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556943491223704324)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>280
,p_column_identifier=>'AW'
,p_column_label=>'Visit title'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556943871765704325)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>290
,p_column_identifier=>'AX'
,p_column_label=>'Study site id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556944304800704325)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>300
,p_column_identifier=>'AY'
,p_column_label=>'Patient profile id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556944708818704325)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>310
,p_column_identifier=>'AZ'
,p_column_label=>'Patient visit id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9556946665911704328)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Dispensed Kit'
,p_report_seq=>10
,p_report_alias=>'5075645'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'INVNAME:SCRNO:PTINTL:RADIO4:RADIO2:RADIO3:NUM1:IE_MET:GENDER:AGE:RADIO1:RADIO5:RADIO6:COMM1:VISIT_TITLE:STUDY_SITE_ID:PATIENT_PROFILE_ID:PATIENT_VISIT_ID'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(9556947213424704330)
,p_report_id=>wwv_flow_imp.id(9556946665911704328)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'='
,p_expr=>'Dispensed to Subject'
,p_condition_sql=>'"IP_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Dispensed to Subject''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9556947590806704332)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Inventory at Site'
,p_report_seq=>10
,p_report_alias=>'5075654'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'INVNAME:SCRNO:PTINTL:RADIO4:RADIO2:RADIO3:NUM1:IE_MET:GENDER:AGE:RADIO1:RADIO5:RADIO6:COMM1:VISIT_TITLE:STUDY_SITE_ID:PATIENT_PROFILE_ID:PATIENT_VISIT_ID'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(9556948052826704333)
,p_report_id=>wwv_flow_imp.id(9556947590806704332)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'contains'
,p_expr=>'Site'
,p_condition_sql=>'upper("IP_STATUS") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Site''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9556948503631704333)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Site Wise Kit Status'
,p_report_seq=>10
,p_report_alias=>'5075663'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'INVNAME:SCRNO:PTINTL:RADIO4:RADIO2:RADIO3:NUM1:IE_MET:GENDER:AGE:RADIO1:RADIO5:RADIO6:COMM1:VISIT_TITLE:STUDY_SITE_ID:PATIENT_PROFILE_ID:PATIENT_VISIT_ID'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9556948958639704334)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5075668'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'INVNAME:VISIT_TITLE:SCRNO:PTINTL:VISIT_DATE:RADIO4:RADIO2:RADIO3:NUM1:IE_MET:GENDER:AGE:RADIO1:RADIO5:RADIO6:COMM1:ASSENT_STOP:DATE1:DOB:ICDDT:ICF_STOP:'
,p_sort_column_1=>'STUDY_SITE_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PATIENT_PROFILE_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PATIENT_VISIT_ID'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'INVNAME:SCRNO:PTINTL:0:0:0'
,p_break_enabled_on=>'INVNAME:SCRNO:PTINTL:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9556949497989704334)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Inventory at Depot'
,p_report_seq=>10
,p_report_alias=>'5075673'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'INVNAME:SCRNO:PTINTL:RADIO4:RADIO2:RADIO3:NUM1:IE_MET:GENDER:AGE:RADIO1:RADIO5:RADIO6:COMM1:VISIT_TITLE:STUDY_SITE_ID:PATIENT_PROFILE_ID:PATIENT_VISIT_ID'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(9556949982497704334)
,p_report_id=>wwv_flow_imp.id(9556949497989704334)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'contains'
,p_expr=>'at Depot'
,p_condition_sql=>'upper("IP_STATUS") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''at Depot''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9556950360199704335)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Expired Kit'
,p_report_seq=>10
,p_report_alias=>'5075682'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'INVNAME:SCRNO:PTINTL:RADIO4:RADIO2:RADIO3:NUM1:IE_MET:GENDER:AGE:RADIO1:RADIO5:RADIO6:COMM1:VISIT_TITLE:STUDY_SITE_ID:PATIENT_PROFILE_ID:PATIENT_VISIT_ID'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(9556950905072704335)
,p_report_id=>wwv_flow_imp.id(9556950360199704335)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'contains'
,p_expr=>'Expired'
,p_condition_sql=>'upper("IP_STATUS") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Expired''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9556951706228704337)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568847467094285796)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9556936552765704313)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568847624016285797)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9556936552765704313)
,p_button_name=>'PRINT_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9556951331249704336)
,p_name=>'P75_REPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9556936552765704313)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569089674667708716)
,p_name=>'PRINT_PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568847467094285796)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569089814156708717)
,p_event_id=>wwv_flow_imp.id(9569089674667708716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'',
'',
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Subject Data Extraction/SUBJECT_DATA_EXTRACTION&_repFormat=pdf&_dataSource=default&_outFilename=SUBJECT_DATA_EXTRACTION.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&A'
||'PP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569089899087708718)
,p_name=>'PRINT_XLS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568847624016285797)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569090004503708719)
,p_event_id=>wwv_flow_imp.id(9569089899087708718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'',
'',
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Subject Data Extraction/SUBJECT_DATA_EXTRACTION&_repFormat=xls&_dataSource=default&_outFilename=SUBJECT_DATA_EXTRACTION.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&A'
||'PP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
