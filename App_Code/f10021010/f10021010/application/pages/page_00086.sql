prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>86
,p_tab_set=>'TS1'
,p_name=>'SAE Report'
,p_step_title=>'SAE Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#apexir_WORKSHEET',
'{',
'overflow-x:auto !important;',
' width:100%!important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11061285479414360153)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11061286475811730510)
,p_plug_name=>'SAE Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EPP.SCRNO "Screening Number", EPP.PTINTL "Patient Initial", EPP.RANDOMNO "Randomization Number", EPP.SCREENING_DATE "Screening Date",',
'       EPP.RANDOMIZATION_DATE "Randomization Date", EDC_SITE_PKG.GET_SITE_NAME(ESS.SITE_ID) "Site Name", ESS.SITE_NUMBER "Site Number",',
'       ECS.SE_ID, ECS.AESE_ID, ECS.STUDY_ID, ECS.PATIENT_VISIT_ID, ECS.CREATED_BY, ECS.CREATED_ON, ECS.UPDATED_BY, ECS.UPDATED_ON,',
'       ECS.A1_INV_NM "Investigator Name",',
'       ECS.A_1_1INV_DT "Contact Details",',
'       ECS.A_3_VISIT "Visit",',
unistr('       ECS.A_4_AGE "Subject\2019s age",'),
'       ECS.A_5_DOB "Date of Birth",',
'       GET_LOV_VALUES(9,ECS.A_6_GENDER) "Gender",',
'       ECS.A_7_HEIGHT "Height in Cm",',
'       ECS.A_8WEIGHT "Weight IN Kg",',
'       ECS.A_8_DATE_SAE,',
'       GET_LOV_VALUES(28,ECS.A_9_TYPE_SAE) "Type of SAE Report",',
unistr('       ECS.A_10_SPONSOR_DT "Sponsor\2019s Details",'),
'       ECS.A_11_STUDY_TITLE "Study Title",',
'       ECS.B_1_EVENT_TERM "Event term (Diagnosis)",',
'       ECS.B_2_EVENT_DESC "Description of Event",',
'       ECS.B_3_EVENT_DESC_CMD,',
'       ECS.B_4_EVENT_ONSET_DATE "Onset Date",',
'       TO_CHAR(ECS.B_5_EVENT_ONSET_TIME,''HH24:MI:SS'') "Onset Time",',
'       GET_LOV_VALUES(29,ECS.B_6_EVENT_ONSET_SAE) "At the onset of SAE",',
'       ECS.B_7_ADMITION_DT "Admission date, if applicable", ',
'       GET_LOV_VALUES(30,ECS.B_8_EXPECTEDNESS_EVENT) "Expectedness of the Event",',
'       GET_LOV_VALUES(31,ECS.B_9_SEVERITY) "Severity",',
unistr('       GET_LOV_VALUES(32,ECS.C1_INV_ASSESSMENT) "Investigator\2019s assessment",'),
'       GET_LOV_VALUES(33,ECS.C2_2_CRITERION_SAE) "Criterion for SAE",',
'       ECS.C2_2_1_CRITERION_SPECIFY "Other, Specify",',
'       GET_LOV_VALUES(34,ECS.C3_PATIENT_OUTCOME) C3_PATIENT_OUTCOME,',
'       ECS.C3_1_PATIENT_OUTCOME_DT "Death, date",',
'       GET_LOV_VALUES(3,ECS.C4_SUB_DISCONTINUE) C4_SUB_DISCONTINUE,',
'       ECS.C4_1_SUB_DISCONTINUE_DT "If yes, date",',
'       GET_LOV_VALUES(18,ECS.C5_AUTOPSY_DONE) "Autopsy done?",',
'       ECS.C5_1_AUTOPSY_DATE "Autopsy Date",',
'       ECS.C5_2_AUTOPSY_RESULTS "Autopsy Results",',
'       GET_LOV_VALUES(3,ECS.C6_SUB_EXP_SEA) C6_SUB_EXP_SEA,',
'       ECS.C6_1_SUB_EXP_DETAIL "If yes, provide details",',
'       ECS.D_1_INV_TREATMNT "NEVER_2",',
'       GET_LOV_VALUES(35,ECS.D2_ACT_TAKE) D2_ACT_TAKE,',
'       ECS.D3_RE_CHELLANGE,',
'       ECS.E_LAB_TEST_RES,',
'       ECS.F_PAST_MH "NEVER3",',
unistr('       ECS.F_PAST_INV_SIGN "Investigator\2019s Sign",'),
'       ECS.F_PAST_DATE "Date",',
'       ECS.F_PAST_DT_ETHICS,',
'       ECS.A_2SITE_NM "NEVER",',
'       ECS.SECTION_STATUS "Section Status"',
'FROM EDC_PATIENT_PROFILE EPP',
'JOIN EDC_PATIENT_VISIT EPV',
'ON EPP.PATIENT_PROFILE_ID = EPV.PATIENT_PROFILE_ID',
'JOIN EDC_STUDY_SITES ESS',
'ON ESS.STUDY_SITE_ID = EPP.STUDY_SITE_ID',
'JOIN EDC_CRF_SE ECS',
'ON EPV.PATIENT_VISIT_ID = ECS.PATIENT_VISIT_ID',
'AND EPP.STUDY_SITE_ID IN (CASE WHEN :APP_EDC_USER_TYPE = 3 THEN (SELECT STUDY_SITE_ID FROM EDC_SITE_CONTACTS',
'                                                                 WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER))',
'                               WHEN :APP_EDC_USER_TYPE = 2 THEN (SELECT CONTACT_ID FROM EDC_STUDY_CONTACT',
'                                                                 WHERE STUDY_CONTACT_ID =  TO_NUMBER(:APP_EDC_USER_ID))',
'                               /*WHEN :APP_EDC_USER_TYPE = 1 AND :APP_EDC_ROLE_ID = 6 THEN (SELECT A.STUDY_SITE_ID',
'                                                                                          FROM EDC_STUDY_SITES A',
'                                                                                          JOIN EDC_STUDY_CONTACT B',
'                                                                                          ON A.USER_ID = B.CONTACT_ID',
'                                                                                          AND A.STUDY_ID = B.STUDY_ID',
'                                                                                          AND B.CONTACT_ID = TO_NUMBER(:APP_EDC_USER))*/ ',
'                          ELSE EPP.STUDY_SITE_ID END)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div style="overflow: auto;width:1062px;">'
,p_plug_footer=>'</div>'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11061286559000730511)
,p_name=>'SAE Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'AVINASH.BHATIYA'
,p_internal_uid=>165613602657668824
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061286782963730516)
,p_db_column_name=>'Screening Number'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Screening No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Screening Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061286886391730517)
,p_db_column_name=>'Patient Initial'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Initial'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Patient Initial'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061286976764730518)
,p_db_column_name=>'Randomization Number'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Randomization No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Randomization Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287079214730518)
,p_db_column_name=>'Screening Date'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Screening Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Screening Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287187476730518)
,p_db_column_name=>'Randomization Date'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Randomization Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Randomization Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287276419730518)
,p_db_column_name=>'Site Name'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Site Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Site Name'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287369270730518)
,p_db_column_name=>'Site Number'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Site Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Site Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287465607730518)
,p_db_column_name=>'SE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Se Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287575841730518)
,p_db_column_name=>'AESE_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Aese Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AESE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287660995730518)
,p_db_column_name=>'STUDY_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Study Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STUDY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287789099730519)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Patient Visit Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PATIENT_VISIT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287889018730519)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061287958083730519)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Created On'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_ON'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288086377730519)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288172667730519)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Updated On'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_ON'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288258488730519)
,p_db_column_name=>'Investigator Name'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Investigator<br>Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Investigator Name'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288463499730520)
,p_db_column_name=>'Visit'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Visit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Visit'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288587162730520)
,p_db_column_name=>unistr('Subject\2019s age')
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Patient''s<br>Age'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>unistr('Subject\2019s age')
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288669444730520)
,p_db_column_name=>'Date of Birth'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Date of<br>Birth'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Date of Birth'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288767693730520)
,p_db_column_name=>'Gender'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Gender'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Gender'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288874636730520)
,p_db_column_name=>'Height in Cm'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Height<br>In Cm'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Height in Cm'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061288962739730520)
,p_db_column_name=>'Weight IN Kg'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Weight<br>In Kg'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Weight IN Kg'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289072572730520)
,p_db_column_name=>'A_8_DATE_SAE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Date SAE<br>reported to<br>trial staff'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'A_8_DATE_SAE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289182816730520)
,p_db_column_name=>'Type of SAE Report'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Type of<br>SAE Report'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Type of SAE Report'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289274952730521)
,p_db_column_name=>unistr('Sponsor\2019s Details')
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>unistr('Sponsor\2019s<br>Details')
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>unistr('Sponsor\2019s Details')
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289357502730521)
,p_db_column_name=>'Study Title'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Study Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Study Title'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289459369730521)
,p_db_column_name=>'Event term (Diagnosis)'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Event Term<br>(Diagnosis)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Event term (Diagnosis)'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289572756730521)
,p_db_column_name=>'Description of Event'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Description<br>of Event'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Description of Event'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289656964730521)
,p_db_column_name=>'B_3_EVENT_DESC_CMD'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Description of<br>concomitant<br>medication<br>details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'B_3_EVENT_DESC_CMD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289787616730521)
,p_db_column_name=>'Onset Date'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Onset Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Onset Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289871107730521)
,p_db_column_name=>'Onset Time'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Onset<br>Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Onset Time'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061289962257730521)
,p_db_column_name=>'At the onset of SAE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'At The<br>Onset<br>of Sae'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'At the onset of SAE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290058388730522)
,p_db_column_name=>'Admission date, if applicable'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Admission<br>Date, If<br>Applicable'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Admission date, if applicable'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290178563730522)
,p_db_column_name=>'Expectedness of the Event'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Expectedness<br>of The Event'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Expectedness of the Event'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290275272730522)
,p_db_column_name=>'Severity'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Severity'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Severity'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290369483730522)
,p_db_column_name=>unistr('Investigator\2019s assessment')
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>unistr('Investigator\2019s<br>Assessment')
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>unistr('Investigator\2019s assessment')
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290465614730522)
,p_db_column_name=>'Criterion for SAE'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Criterion<br>For SAE'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Criterion for SAE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290583990730522)
,p_db_column_name=>'Other, Specify'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Other, Specify'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Other, Specify'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290664767730522)
,p_db_column_name=>'C3_PATIENT_OUTCOME'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Patient<br>outcome<br>(at the<br>time of<br>report)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'C3_PATIENT_OUTCOME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290766083730522)
,p_db_column_name=>'Death, date'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Death, Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Death, date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290877999730523)
,p_db_column_name=>'C4_SUB_DISCONTINUE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Did the<br>subject<br>discontinued<br>from the<br>study?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'C4_SUB_DISCONTINUE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061290982982730523)
,p_db_column_name=>'If yes, date'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'If Yes, Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'If yes, date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061291063495730523)
,p_db_column_name=>'Autopsy done?'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Autopsy Done?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Autopsy done?'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061291359262730523)
,p_db_column_name=>'C6_SUB_EXP_SEA'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Has the<br>subject<br>experienced<br>any prior<br>SAE?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'C6_SUB_EXP_SEA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061291465957730524)
,p_db_column_name=>'If yes, provide details'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'If Yes,<br>Provide<br>Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'If yes, provide details'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061291584504730524)
,p_db_column_name=>'NEVER_2'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Never 2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'NEVER_2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061291661948730524)
,p_db_column_name=>'D2_ACT_TAKE'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Action taken<br>with<br>study treatment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'D2_ACT_TAKE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061291766364730524)
,p_db_column_name=>'D3_RE_CHELLANGE'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Re-challenge<br>information<br>(if available)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'D3_RE_CHELLANGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061291885965730524)
,p_db_column_name=>'E_LAB_TEST_RES'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'E Lab Test Res'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'E_LAB_TEST_RES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061291967230730524)
,p_db_column_name=>'NEVER3'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Never3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'NEVER3'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061292088900730524)
,p_db_column_name=>unistr('Investigator\2019s Sign')
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>unistr('Investigator\2019s<br>Sign')
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>unistr('Investigator\2019s Sign')
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061292164789730524)
,p_db_column_name=>'Date'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061292279985730525)
,p_db_column_name=>'F_PAST_DT_ETHICS'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Date of<br>Ethics<br>Committee<br>Notification'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'F_PAST_DT_ETHICS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061292373447730525)
,p_db_column_name=>'NEVER'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Never'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11061292460803730525)
,p_db_column_name=>'Section Status'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Section Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Section Status'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10896438539267328620)
,p_db_column_name=>'Contact Details'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Contact Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Contact Details'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10896627056330002760)
,p_db_column_name=>'Autopsy Date'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Autopsy Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'Autopsy Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10896627156617002761)
,p_db_column_name=>'Autopsy Results'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Autopsy Results'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Autopsy Results'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11061292588970734342)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1656197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>unistr('Screening Number:Patient Initial:Randomization Number:Site Name:Site Number:Investigator Name:Visit:Subject\2019s age:Date of Birth:Gender:Height in Cm:Weight IN Kg:A_8_DATE_SAE:Type of SAE Report:Sponsor\2019s Details:Study Title:Event term (Diagnosis):Desc')
||unistr('ription of Event:B_3_EVENT_DESC_CMD:Onset Date:Onset Time:At the onset of SAE:Admission date, if applicable:Expectedness of the Event:Severity:Investigator\2019s assessment:Criterion for SAE:Other, Specify:C3_PATIENT_OUTCOME:Death, date:C4_SUB_DISCONTINU')
||unistr('E:If yes, date:Autopsy done?:C6_SUB_EXP_SEA:If yes, provide details:D2_ACT_TAKE:D3_RE_CHELLANGE:E_LAB_TEST_RES:Investigator\2019s Sign:Date:F_PAST_DT_ETHICS:Section Status:Contact Details:Autopsy Date:Autopsy Results')
,p_break_on=>'Patient Initial:Visit:Screening Number:Randomization Number:0:0'
,p_break_enabled_on=>'Patient Initial:Visit:Screening Number:Randomization Number:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10902656232459709444)
,p_application_user=>'ADMIN'
,p_name=>'Chart'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_display_rows=>15
,p_report_columns=>unistr('Screening Number:Patient Initial:Randomization Number:Site Name:Site Number:Investigator Name:Visit:Subject\2019s age:Date of Birth:Gender:Height in Cm:Weight IN Kg:A_8_DATE_SAE:Type of SAE Report:Sponsor\2019s Details:Study Title:Event term (Diagnosis):Desc')
||unistr('ription of Event:B_3_EVENT_DESC_CMD:Onset Date:Onset Time:At the onset of SAE:Admission date, if applicable:Expectedness of the Event:Severity:Investigator\2019s assessment:Criterion for SAE:Other, Specify:C3_PATIENT_OUTCOME:Death, date:C4_SUB_DISCONTINU')
||unistr('E:If yes, date:Autopsy done?:C6_SUB_EXP_SEA:If yes, provide details:D2_ACT_TAKE:D3_RE_CHELLANGE:E_LAB_TEST_RES:Investigator\2019s Sign:Date:F_PAST_DT_ETHICS:Section Status:Contact Details:Autopsy Date:Autopsy Results')
,p_break_on=>'Patient Initial:Visit:Screening Number:Randomization Number:0:0'
,p_break_enabled_on=>'Patient Initial:Visit:Screening Number:Randomization Number:0:0'
,p_chart_type=>'bar'
,p_chart_label_column=>'Site Name'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11061595680518084185)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
);
wwv_flow_imp.component_end;
end;
/
