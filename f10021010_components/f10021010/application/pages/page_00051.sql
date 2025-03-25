prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_tab_set=>'TS1'
,p_name=>'Subject Visits'
,p_step_title=>'Subject Visits'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10506106558721303409)
,p_plug_name=>'Subject Pofile - T'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDY_SITE_ID',
'     , PTINTL  AS "PATIENT_INITAL"',
'     , SCRNO AS "SCREENING_NUMBER"',
'     , CRO_IWRS_PKG.GET_VISIT_DATE(PATIENT_PROFILE_ID, 1) SCREENING_DATE     ',
'     ',
'     , RANDOMNO AS "RANDOMIZATION_NUMBER"',
'     , CRO_IWRS_PKG.GET_VISIT_DATE(PATIENT_PROFILE_ID, 3) RANDOMIZATION_DATE',
'     ',
'     , DECODE( STATUS ,1, ''Screened''',
'                      ,2, ''Screened Failure''',
'                      ,3, ''Enrolled''',
'                      ,4, ''Discontinued''',
'                      ,5, ''Completed''',
'       ) AS STATUS',
'       ',
'     , NVL(NVL(A.SCREEN_FAIL_REASON,A.WITHDRAW_REASON),A.DISCONTINUE_REASON) AS "SCREEN_FAILURE_REASON"',
'     ',
'     , (SELECT DM.IE_MET_REMARK',
'          FROM IWRS_CRF_DM DM',
'             , EDC_PATIENT_VISIT PV',
'         WHERE PV.PATIENT_VISIT_ID = DM.PATIENT_VISIT_ID',
'           AND NVL(UPPER(DM.IE_MET),''-'') = ''NO''',
'           AND PV.PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID',
'       ) AS "DISCONTINUATION_REASON"',
'       ',
'     ',
'  FROM EDC_PATIENT_PROFILE A',
' WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10506107012338303414)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TUSHAR.KOTHIA'
,p_internal_uid=>368766845171531617
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506107242908303416)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'NVL(:REQUEST,''EMPTY'') NOT IN(''CSV'',''XLS'',''PDF'',''XML'',''RTF'',''HTMLD'')'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506107462120303418)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'STATUS'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12147517156473630257)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506171677050257303)
,p_db_column_name=>'PATIENT_INITAL'
,p_display_order=>50
,p_column_identifier=>'P'
,p_column_label=>'PATIENT_INITAL'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506171858495257304)
,p_db_column_name=>'SCREENING_NUMBER'
,p_display_order=>60
,p_column_identifier=>'Q'
,p_column_label=>'SCREENING_NUMBER'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172249676257308)
,p_db_column_name=>'SCREENING_DATE'
,p_display_order=>70
,p_column_identifier=>'U'
,p_column_label=>'SCREENING_DATE'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506171892289257305)
,p_db_column_name=>'RANDOMIZATION_NUMBER'
,p_display_order=>80
,p_column_identifier=>'R'
,p_column_label=>'RANDOMIZATION_NUMBER'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172312204257309)
,p_db_column_name=>'RANDOMIZATION_DATE'
,p_display_order=>90
,p_column_identifier=>'V'
,p_column_label=>'RANDOMIZATION_DATE'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172047054257306)
,p_db_column_name=>'SCREEN_FAILURE_REASON'
,p_display_order=>100
,p_column_identifier=>'S'
,p_column_label=>'SCREEN_FAILURE_REASON'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172162259257307)
,p_db_column_name=>'DISCONTINUATION_REASON'
,p_display_order=>110
,p_column_identifier=>'T'
,p_column_label=>'DISCONTINUATION_REASON'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10506153364960920022)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3688132'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'STUDY_SITE_ID:PATIENT_INITAL:SCREENING_NUMBER:SCREENING_DATE:RANDOMIZATION_NUMBER:RANDOMIZATION_DATE:STATUS:SCREEN_FAILURE_REASON:DISCONTINUATION_REASON:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10506108848660303432)
,p_plug_name=>'Subject Visit - T'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDY_SITE_ID',
'     , SCRNO AS "SCREENING_NUMBER"',
'     , PTINTL AS "PATIENT_INITIAL"',
'     ',
'     , CRO_IWRS_PKG.GET_VISIT_DATE(PATIENT_PROFILE_ID, 1) "Screening"',
'     , CRO_IWRS_PKG.GET_VISIT_DATE(PATIENT_PROFILE_ID, 2) "Placebo Run In Visit"',
'     , CRO_IWRS_PKG.GET_VISIT_DATE(PATIENT_PROFILE_ID, 3) "Randomization"',
'     , CRO_IWRS_PKG.GET_VISIT_DATE(PATIENT_PROFILE_ID, 4) "Interim Visit"',
'     , CRO_IWRS_PKG.GET_VISIT_DATE(PATIENT_PROFILE_ID, 5) "End of Study"',
'     , CRO_IWRS_PKG.GET_VISIT_DATE(PATIENT_PROFILE_ID, 6) "Safety Follow-up"',
'     ,a.comments',
'     ',
'  FROM EDC_PATIENT_PROFILE A',
' WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10506109302204303437)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TUSHAR.KOTHIA'
,p_internal_uid=>368769135037531640
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506109492403303439)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'NVL(:REQUEST,''EMPTY'') NOT IN(''CSV'',''XLS'',''PDF'',''XML'',''RTF'',''HTMLD'')'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172378741257310)
,p_db_column_name=>'SCREENING_NUMBER'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>'SCREENING_NUMBER'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172530741257311)
,p_db_column_name=>'PATIENT_INITIAL'
,p_display_order=>40
,p_column_identifier=>'Q'
,p_column_label=>'PATIENT_INITIAL'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172603470257312)
,p_db_column_name=>'Screening'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Screening'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172677948257313)
,p_db_column_name=>'Placebo Run In Visit'
,p_display_order=>60
,p_column_identifier=>'S'
,p_column_label=>'Placebo Run In Visit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172794070257314)
,p_db_column_name=>'Randomization'
,p_display_order=>70
,p_column_identifier=>'T'
,p_column_label=>'Randomization'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506172943789257315)
,p_db_column_name=>'Interim Visit'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>'Interim Visit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506173035664257316)
,p_db_column_name=>'End of Study'
,p_display_order=>90
,p_column_identifier=>'V'
,p_column_label=>'End of Study'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10506173078482257317)
,p_db_column_name=>'Safety Follow-up'
,p_display_order=>100
,p_column_identifier=>'W'
,p_column_label=>'Safety Follow-up'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9051381057432460753)
,p_db_column_name=>'COMMENTS'
,p_display_order=>110
,p_column_identifier=>'X'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10506182430866258886)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3688423'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'STUDY_SITE_ID:SCREENING_NUMBER:PATIENT_INITIAL:Screening:Placebo Run In Visit:Randomization:Interim Visit:End of Study:Safety Follow-up::COMMENTS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11278697060733133158)
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
 p_id=>wwv_flow_imp.id(11278697628675133160)
,p_plug_name=>'Subject Visits'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  BASE AS (SELECT A.DM_ID, A.PATIENT_VISIT_ID, B.PATIENT_PROFILE_ID, B.PARAM_ID, A.GENDER, A.AGE, TO_CHAR(A.ICDDT,''DD-MON-YYYY'') ICDDT, B.VISIT_TITLE',
'                , A.RADIO5 ECOG_STATUS                ',
'                , (SELECT A.IE_MET FROM IWRS_CRF_DM WHERE DM_ID= A.DM_ID AND B.PARAM_ID=1) INC_EXC_CRITERIA',
'                , (SELECT A.IE_MET FROM IWRS_CRF_DM WHERE DM_ID= A.DM_ID AND B.PARAM_ID=2) INC_EXC_CRITERIA2',
'                , TO_CHAR(A.DOB,''DD-MON-YYYY'') DOB',
'                , A.COMM2 SCREEN_FAIL_REASON_V , A.RADIO7 SMOKING_STATUS,A.NUM2 WEIGHT',
'                , (SELECT LISTAGG(C.BOTTLE_NO,'','') WITHIN GROUP(ORDER BY C.IP_ID) IP',
'                        FROM IWRS_CRF_DM_IP A, EDC_IP_DETAIL C',
'                        WHERE A.IP_ID = C.IP_ID ',
'                        AND A.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'                        AND B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'                        AND A.IS_IP_DISPENSED = ''Yes'') KITS',
'             FROM IWRS_CRF_DM A',
'            RIGHT OUTER JOIN EDC_PATIENT_VISIT B',
'               ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID),',
'',
'  BASE2 AS (SELECT B.PATIENT_PROFILE_ID',
'                 , B.VISIT_TITLE',
'                 , B.DOB',
'                 , B.ICDDT',
'                 , B.AGE',
'                 , B.GENDER',
'                 , B.SMOKING_STATUS            ',
'                 , B.ECOG_STATUS',
'                 , B.INC_EXC_CRITERIA',
'                 , (SELECT IE_MET FROM IWRS_CRF_DM WHERE DM_ID= B.DM_ID AND B.PARAM_ID+1=2) AS INC_EXC_CRITERIA2',
'                 , NVL(B.SCREEN_FAIL_REASON_V, C.SCREEN_FAIL_REASON_V) SCREEN_FAIL_REASON',
'                 , C.PATIENT_VISIT_ID',
'                 , (SELECT WEIGHT FROM BASE WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND PARAM_ID=2) AS WEIGHT',
'                 , (SELECT KITS FROM BASE WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND PARAM_ID=2) AS KITS',
'              FROM (SELECT * FROM BASE WHERE PARAM_ID = 1) B',
'              LEFT OUTER JOIN (SELECT * FROM BASE WHERE PARAM_ID = 2) C',
'                ON B.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID',
'               and B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID)',
'',
'  SELECT A.PATIENT_PROFILE_ID',
'       , A.STUDY_SITE_ID',
'       , A.PTINTL',
'       , A.STATUS',
'       , A.SCRNO',
'       --, A.COMMENTS',
'       , A.SCREENING_DATE',
'       , A.RANDOMNO RANDOMIZATION_NUMBER',
'       , TO_CHAR(A.RANDOMIZATION_DATE,''DD-MON-YYYY'') RANDOMIZATION_DATE',
'       , B.VISIT_TITLE',
'       , B.DOB',
'       , B.ICDDT',
'       , B.AGE',
'       , B.GENDER',
'       , B.SMOKING_STATUS       ',
'       , B.ECOG_STATUS',
'       , B.INC_EXC_CRITERIA INC_EXC_CRITERIA1',
'       , B.INC_EXC_CRITERIA2',
'       , B.WEIGHT',
'      -- , A.SCREEN_FAIL_REASON ',
'       ,COALESCE(A.SCREEN_FAIL_REASON, B.SCREEN_FAIL_REASON, A.DISCONTINUE_REASON, A.WITHDRAW_REASON,A.UNBLINDED_REASON,A.LOST_TO_FOLLOWUP_REASON) SCREEN_FAIL_REASON',
'       , (SELECT BOTTLE_NO FROM EDC_IP_DETAIL WHERE PATIENT_VISIT_ID = B.PATIENT_VISIT_ID) BOTTLE_NO',
'       , DECODE(A.USER_LANG,''ES'',''Spanish'',''PT'',''Portuguese'',''EN'',''English'','''') "USER_LANG"',
'       , B.KITS',
'       ,(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =1)) AS "Visit 1 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =2)) AS "Visit 2 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =3)) AS "Visit 3 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =4)) AS "Visit 4 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =5)) AS "Visit 5 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =6)) AS "Visit 6 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =7)) AS "Visit 7 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =8)) AS "Visit 8 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =9)) AS "Visit 9 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =10)) AS "Visit 10 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =11)) AS "Visit 11 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =12)) AS "Visit 12 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =13)) AS "Visit 13 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =14)) AS "Visit 14 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =15)) AS "Visit 15 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =16)) AS "Visit 16 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =17)) AS "Visit 17 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =18)) AS "Visit 18 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =19)) AS "Visit 19 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =20)) AS "Visit 20 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =21)) AS "Visit 21 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =22)) AS "Visit 22 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =23)) AS "Visit 23 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =24)) AS "Visit 24 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =25)) AS "Visit 25 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =26)) AS "Visit 26 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =27)) AS "Visit 27 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =28)) AS "Visit 28 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =29)) AS "Visit 29 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =30)) AS "Visit 30 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =31)) AS "Visit 31 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =32)) AS "Visit 32 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =33)) AS "Visit 33 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =34)) AS "Visit 34 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =35)) AS "Visit 35 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =36)) AS "Visit 36 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =37)) AS "Visit 37 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =38)) AS "Visit 38 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =39)) AS "Visit 39 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =40)) AS "Visit 40 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =41)) AS "Visit 41 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =42)) AS "Visit 42 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =43)) AS "Visit 43 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =44)) AS "Visit 44 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =45)) AS "Visit 45 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =46)) AS "Visit 46 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =47)) AS "Visit 47 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =48)) AS "Visit 48 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =49)) AS "Visit 49 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =50)) AS "Visit 50 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =51)) AS "Visit 51 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =52)) AS "Visit 52 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =53)) AS "Visit 53 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =54)) AS "Visit 54 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =55)) AS "Visit 55 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =56)) AS "Visit 56 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =57)) AS "Visit 57 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =58)) AS "Visit 58 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =59)) AS "Visit 59 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =60)) AS "Visit 60 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =61)) AS "Visit 61 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =62)) AS "Visit 62 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =63)) AS "Visit 63 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =64)) AS "Visit 64 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =65)) AS "Visit 65 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =66)) AS "Visit 66 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =67)) AS "Visit 67 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =68)) AS "Visit 68 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =69)) AS "Visit 69 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =70)) AS "Visit 70 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =71)) AS "Visit 71 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =72)) AS "Visit 72 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =73)) AS "Visit 73 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =74)) AS "Visit 74 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =75)) AS "Visit 75 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =76)) AS "Visit 76 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =77)) AS "Visit 77 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =78)) AS "Visit 78 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =79)) AS "Visit 79 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =80)) AS "Visit 80 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =81)) AS "Visit 81 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =82)) AS "Visit 82 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =83)) AS "Visit 83 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =84)) AS "Visit 84 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =85)) AS "Visit 85 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =86)) AS "Visit 86 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =87)) AS "Visit 87 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =88)) AS "Visit 88 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =89)) AS "Visit 89 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =90)) AS "Visit 90 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =91)) AS "Visit 91 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =92)) AS "Visit 92 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =93)) AS "Visit 93 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =94)) AS "Visit 94 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =95)) AS "Visit 95 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =96)) AS "Visit 96 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =97)) AS "Visit 97 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =98)) AS "Visit 98 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =99)) AS "Visit 99 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =100)) AS "Visit 100 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =101)) AS "Visit 101 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =102)) AS "Visit 102 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =103)) AS "Visit 103 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =104)) AS "Visit 104 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =105)) AS "Visit 105 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =106)) AS "Visit 106 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =107)) AS "Visit 107 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =108)) AS "Visit 108 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =109)) AS "Visit 109 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =110)) AS "Visit 110 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =111)) AS "Visit 111 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =112)) AS "Visit 112 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =113)) AS "Visit 113 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =114)) AS "Visit 114 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =115)) AS "Visit 115 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =116)) AS "Visit 116 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =117)) AS "Visit 117 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =118)) AS "Visit 118 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =119)) AS "Visit 119 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =120)) AS "Visit 120 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =121)) AS "Visit 121 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =122)) AS "Visit 122 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =123)) AS "Visit 123 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =124)) AS "Visit 124 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =125)) AS "Visit 125 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =126)) AS "Visit 126 Date"',
',(SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND ',
'             PARAM_ID =127)) AS "Visit 127 Date"',
',CRO_IWRS_PKG.GET_VISIT_DATE(B.PATIENT_PROFILE_ID,128) AS "Visit 128 Date"',
',CRO_IWRS_PKG.GET_VISIT_DATE(B.PATIENT_PROFILE_ID,129) AS "Visit 129 Date"',
',CRO_IWRS_PKG.GET_VISIT_DATE(B.PATIENT_PROFILE_ID,130) AS "Visit 130 Date"',
',CRO_IWRS_PKG.GET_VISIT_DATE(B.PATIENT_PROFILE_ID,131) AS "Visit 131 Date"',
',CRO_IWRS_PKG.GET_VISIT_DATE(B.PATIENT_PROFILE_ID,132) AS "Visit 132 Date"',
',CRO_IWRS_PKG.GET_VISIT_DATE(B.PATIENT_PROFILE_ID,133) AS "Visit 133 Date"',
'    FROM EDC_PATIENT_PROFILE A',
'    JOIN BASE2 B',
'      ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'     AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  BASE AS (SELECT A.DM_ID, A.PATIENT_VISIT_ID, B.PATIENT_PROFILE_ID, B.PARAM_ID, A.GENDER, A.AGE, TO_CHAR(A.ICDDT,''DD-MON-YYYY'') ICDDT, B.VISIT_TITLE',
'                , A.RADIO5 ECOG_STATUS                ',
'                , (SELECT A.IE_MET FROM IWRS_CRF_DM WHERE DM_ID= A.DM_ID AND B.PARAM_ID=1) INC_EXC_CRITERIA',
'                , (SELECT A.IE_MET FROM IWRS_CRF_DM WHERE DM_ID= A.DM_ID AND B.PARAM_ID=2) INC_EXC_CRITERIA2',
'                , TO_CHAR(A.DOB,''DD-MON-YYYY'') DOB',
'                , A.COMM2 SCREEN_FAIL_REASON_V , A.RADIO7 SMOKING_STATUS,A.NUM2 WEIGHT',
'                , (SELECT LISTAGG(C.BOTTLE_NO,'','') WITHIN GROUP(ORDER BY C.IP_ID) IP',
'                        FROM IWRS_CRF_DM_IP A, EDC_IP_DETAIL C',
'                        WHERE A.IP_ID = C.IP_ID ',
'                        AND A.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'                        AND B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'                        AND A.IS_IP_DISPENSED = ''Yes'') KITS',
'             FROM IWRS_CRF_DM A',
'            RIGHT OUTER JOIN EDC_PATIENT_VISIT B',
'               ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID),',
'',
'  BASE2 AS (SELECT B.PATIENT_PROFILE_ID',
'                 , B.VISIT_TITLE',
'                 , B.DOB',
'                 , B.ICDDT',
'                 , B.AGE',
'                 , B.GENDER',
'                 , B.SMOKING_STATUS            ',
'                 , B.ECOG_STATUS',
'                 , B.INC_EXC_CRITERIA',
'                 , (SELECT IE_MET FROM IWRS_CRF_DM WHERE DM_ID= B.DM_ID AND B.PARAM_ID+1=2) AS INC_EXC_CRITERIA2',
'                 , NVL(B.SCREEN_FAIL_REASON_V, C.SCREEN_FAIL_REASON_V) SCREEN_FAIL_REASON',
'                 , C.PATIENT_VISIT_ID',
'                 , (SELECT WEIGHT FROM BASE WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND PARAM_ID=2) AS WEIGHT',
'                 , (SELECT KITS FROM BASE WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND PARAM_ID=2) AS KITS',
'              FROM (SELECT * FROM BASE WHERE PARAM_ID = 1) B',
'              LEFT OUTER JOIN (SELECT * FROM BASE WHERE PARAM_ID = 2) C',
'                ON B.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID',
'               and B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID)',
'',
'  SELECT A.PATIENT_PROFILE_ID',
'       , A.STUDY_SITE_ID',
'       , A.PTINTL',
'       , A.STATUS',
'       , A.SCRNO',
'       --, A.COMMENTS',
'       , A.SCREENING_DATE',
'       , A.RANDOMNO RANDOMIZATION_NUMBER',
'       , TO_CHAR(A.RANDOMIZATION_DATE,''DD-MON-YYYY'') RANDOMIZATION_DATE',
'       , B.VISIT_TITLE',
'       , B.DOB',
'       , B.ICDDT',
'       , B.AGE',
'       , B.GENDER',
'       , B.SMOKING_STATUS       ',
'       , B.ECOG_STATUS',
'       , B.INC_EXC_CRITERIA INC_EXC_CRITERIA1',
'       , B.INC_EXC_CRITERIA2',
'       , B.WEIGHT',
'      -- , A.SCREEN_FAIL_REASON ',
'       ,COALESCE(A.SCREEN_FAIL_REASON, B.SCREEN_FAIL_REASON, A.DISCONTINUE_REASON, A.WITHDRAW_REASON,A.UNBLINDED_REASON,A.LOST_TO_FOLLOWUP_REASON) SCREEN_FAIL_REASON',
'       , (SELECT BOTTLE_NO FROM EDC_IP_DETAIL WHERE PATIENT_VISIT_ID = B.PATIENT_VISIT_ID) BOTTLE_NO',
'       , DECODE(A.USER_LANG,''ES'',''Spanish'',''PT'',''Portuguese'',''EN'',''English'','''') "USER_LANG"',
'       , B.KITS',
'        , (SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND PARAM_ID =1)) AS "Screening Visit Date"   ',
'        , (SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND PARAM_ID =2)) AS "Cycle 1 Date"',
'        , (SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND PARAM_ID =3)) AS "Cycle 2 Date"',
'        , (SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'             (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID AND PARAM_ID =4)) AS "Cycle 3 Date"',
'        , (SELECT visit_date FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = ',
'        '))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11278697721865133160)
,p_name=>'Subject Visits'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>293202643151900011
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11278698114920133161)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11278698530715133162)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11278698914378133162)
,p_db_column_name=>'PTINTL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Subject<br/>Initials'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11278699375293133162)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12147517156473630257)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11278699752635133163)
,p_db_column_name=>'SCRNO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Screening<br/>Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10977343692640888821)
,p_db_column_name=>'GENDER'
,p_display_order=>36
,p_column_identifier=>'R'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7756921287054614058)
,p_db_column_name=>'AGE'
,p_display_order=>66
,p_column_identifier=>'U'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7756921531443614060)
,p_db_column_name=>'RANDOMIZATION_NUMBER'
,p_display_order=>86
,p_column_identifier=>'W'
,p_column_label=>'Randomization<br>No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4754963913344182020)
,p_db_column_name=>'DOB'
,p_display_order=>156
,p_column_identifier=>'AE'
,p_column_label=>'Date of Birth'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3795823382973307863)
,p_db_column_name=>'SCREENING_DATE'
,p_display_order=>166
,p_column_identifier=>'AN'
,p_column_label=>'Screening Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3795823428923307864)
,p_db_column_name=>'RANDOMIZATION_DATE'
,p_display_order=>176
,p_column_identifier=>'AO'
,p_column_label=>'Randomization Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3795823596730307865)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>186
,p_column_identifier=>'AP'
,p_column_label=>'Visit Title'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3795823692253307866)
,p_db_column_name=>'ICDDT'
,p_display_order=>196
,p_column_identifier=>'AQ'
,p_column_label=>'Informed Consent<br>Date '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3795823950144307869)
,p_db_column_name=>'INC_EXC_CRITERIA1'
,p_display_order=>226
,p_column_identifier=>'AT'
,p_column_label=>'Inclusion/Exclusion<BR>Criteria met ?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3795824102109307870)
,p_db_column_name=>'SCREEN_FAIL_REASON'
,p_display_order=>236
,p_column_identifier=>'AU'
,p_column_label=>'Screen Fail /<br>Withdraw /<br>Discontinue /<br>LTF Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3795824217836307872)
,p_db_column_name=>'BOTTLE_NO'
,p_display_order=>256
,p_column_identifier=>'AW'
,p_column_label=>'Bottle No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3571873401824798965)
,p_db_column_name=>'USER_LANG'
,p_display_order=>276
,p_column_identifier=>'AY'
,p_column_label=>'Language'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3104776919754252326)
,p_db_column_name=>'SMOKING_STATUS'
,p_display_order=>286
,p_column_identifier=>'AZ'
,p_column_label=>'Smoking Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110144265968609877)
,p_db_column_name=>'ECOG_STATUS'
,p_display_order=>296
,p_column_identifier=>'BA'
,p_column_label=>'ECOG Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110144382243609878)
,p_db_column_name=>'INC_EXC_CRITERIA2'
,p_display_order=>306
,p_column_identifier=>'BB'
,p_column_label=>'Does the subject<BR>comply with all the<BR>inclusion and exclusion criteria?'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110144472015609879)
,p_db_column_name=>'KITS'
,p_display_order=>316
,p_column_identifier=>'BC'
,p_column_label=>'Assigned Kit No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110144626632609880)
,p_db_column_name=>'WEIGHT'
,p_display_order=>326
,p_column_identifier=>'BD'
,p_column_label=>'Weight'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804668477346032694)
,p_db_column_name=>'Visit 1 Date'
,p_display_order=>336
,p_column_identifier=>'HT'
,p_column_label=>'Visit 1 -Screening Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804668620352032695)
,p_db_column_name=>'Visit 2 Date'
,p_display_order=>346
,p_column_identifier=>'HU'
,p_column_label=>'Visit 2 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804668669379032696)
,p_db_column_name=>'Visit 3 Date'
,p_display_order=>356
,p_column_identifier=>'HV'
,p_column_label=>'Visit 3 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804668826086032697)
,p_db_column_name=>'Visit 4 Date'
,p_display_order=>366
,p_column_identifier=>'HW'
,p_column_label=>'Visit 4 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804668955054032698)
,p_db_column_name=>'Visit 5 Date'
,p_display_order=>376
,p_column_identifier=>'HX'
,p_column_label=>'Visit 5 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669058711032699)
,p_db_column_name=>'Visit 6 Date'
,p_display_order=>386
,p_column_identifier=>'HY'
,p_column_label=>'Visit 6 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669109393032700)
,p_db_column_name=>'Visit 7 Date'
,p_display_order=>396
,p_column_identifier=>'HZ'
,p_column_label=>'Visit 7 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669219057032701)
,p_db_column_name=>'Visit 8 Date'
,p_display_order=>406
,p_column_identifier=>'IA'
,p_column_label=>'Visit 8 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669278254032702)
,p_db_column_name=>'Visit 9 Date'
,p_display_order=>416
,p_column_identifier=>'IB'
,p_column_label=>'Visit 9 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669450405032703)
,p_db_column_name=>'Visit 10 Date'
,p_display_order=>426
,p_column_identifier=>'IC'
,p_column_label=>'Visit 10 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669522415032704)
,p_db_column_name=>'Visit 11 Date'
,p_display_order=>436
,p_column_identifier=>'ID'
,p_column_label=>'Visit 11 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669639379032705)
,p_db_column_name=>'Visit 12 Date'
,p_display_order=>446
,p_column_identifier=>'IE'
,p_column_label=>'Visit 12 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669745998032706)
,p_db_column_name=>'Visit 13 Date'
,p_display_order=>456
,p_column_identifier=>'IF'
,p_column_label=>'Visit 13 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669864065032707)
,p_db_column_name=>'Visit 14 Date'
,p_display_order=>466
,p_column_identifier=>'IG'
,p_column_label=>'Visit 14 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804669911817032708)
,p_db_column_name=>'Visit 15 Date'
,p_display_order=>476
,p_column_identifier=>'IH'
,p_column_label=>'Visit 15 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670060104032709)
,p_db_column_name=>'Visit 16 Date'
,p_display_order=>486
,p_column_identifier=>'II'
,p_column_label=>'Visit 16 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670154651032710)
,p_db_column_name=>'Visit 17 Date'
,p_display_order=>496
,p_column_identifier=>'IJ'
,p_column_label=>'Visit 17 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670181023032711)
,p_db_column_name=>'Visit 18 Date'
,p_display_order=>506
,p_column_identifier=>'IK'
,p_column_label=>'Visit 18 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670273968032712)
,p_db_column_name=>'Visit 19 Date'
,p_display_order=>516
,p_column_identifier=>'IL'
,p_column_label=>'Visit 19 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670384841032713)
,p_db_column_name=>'Visit 20 Date'
,p_display_order=>526
,p_column_identifier=>'IM'
,p_column_label=>'Visit 20 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670519230032714)
,p_db_column_name=>'Visit 21 Date'
,p_display_order=>536
,p_column_identifier=>'IO'
,p_column_label=>'Visit 21 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670576591032715)
,p_db_column_name=>'Visit 22 Date'
,p_display_order=>546
,p_column_identifier=>'IP'
,p_column_label=>'Visit 22 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670746174032716)
,p_db_column_name=>'Visit 23 Date'
,p_display_order=>556
,p_column_identifier=>'IQ'
,p_column_label=>'Visit 23 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670792532032717)
,p_db_column_name=>'Visit 24 Date'
,p_display_order=>566
,p_column_identifier=>'IR'
,p_column_label=>'Visit 24 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670935996032718)
,p_db_column_name=>'Visit 25 Date'
,p_display_order=>576
,p_column_identifier=>'IT'
,p_column_label=>'Visit 25 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804670992856032719)
,p_db_column_name=>'Visit 26 Date'
,p_display_order=>586
,p_column_identifier=>'IU'
,p_column_label=>'Visit 26 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671085442032720)
,p_db_column_name=>'Visit 27 Date'
,p_display_order=>596
,p_column_identifier=>'IV'
,p_column_label=>'Visit 27 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671182012032721)
,p_db_column_name=>'Visit 28 Date'
,p_display_order=>606
,p_column_identifier=>'IW'
,p_column_label=>'Visit 28 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671275440032722)
,p_db_column_name=>'Visit 29 Date'
,p_display_order=>616
,p_column_identifier=>'IX'
,p_column_label=>'Visit 29 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671459105032723)
,p_db_column_name=>'Visit 30 Date'
,p_display_order=>626
,p_column_identifier=>'IY'
,p_column_label=>'Visit 30 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671534326032724)
,p_db_column_name=>'Visit 31 Date'
,p_display_order=>636
,p_column_identifier=>'IZ'
,p_column_label=>'Visit 31 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671653483032725)
,p_db_column_name=>'Visit 32 Date'
,p_display_order=>646
,p_column_identifier=>'JA'
,p_column_label=>'Visit 32 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671718090032726)
,p_db_column_name=>'Visit 33 Date'
,p_display_order=>656
,p_column_identifier=>'JB'
,p_column_label=>'Visit 33 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671805693032727)
,p_db_column_name=>'Visit 34 Date'
,p_display_order=>666
,p_column_identifier=>'JC'
,p_column_label=>'Visit 34 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804671934459032728)
,p_db_column_name=>'Visit 35 Date'
,p_display_order=>676
,p_column_identifier=>'JD'
,p_column_label=>'Visit 35 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672009071032729)
,p_db_column_name=>'Visit 36 Date'
,p_display_order=>686
,p_column_identifier=>'JE'
,p_column_label=>'Visit 36 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672141007032730)
,p_db_column_name=>'Visit 37 Date'
,p_display_order=>696
,p_column_identifier=>'JF'
,p_column_label=>'Visit 37 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672173330032731)
,p_db_column_name=>'Visit 38 Date'
,p_display_order=>706
,p_column_identifier=>'JG'
,p_column_label=>'Visit 38 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672317887032732)
,p_db_column_name=>'Visit 39 Date'
,p_display_order=>716
,p_column_identifier=>'JH'
,p_column_label=>'Visit 39 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672392924032733)
,p_db_column_name=>'Visit 40 Date'
,p_display_order=>726
,p_column_identifier=>'JI'
,p_column_label=>'Visit 40 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672472147032734)
,p_db_column_name=>'Visit 41 Date'
,p_display_order=>736
,p_column_identifier=>'JJ'
,p_column_label=>'Visit 41 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672610282032735)
,p_db_column_name=>'Visit 42 Date'
,p_display_order=>746
,p_column_identifier=>'JK'
,p_column_label=>'Visit 42 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672742606032736)
,p_db_column_name=>'Visit 43 Date'
,p_display_order=>756
,p_column_identifier=>'JL'
,p_column_label=>'Visit 43 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672783084032737)
,p_db_column_name=>'Visit 44 Date'
,p_display_order=>766
,p_column_identifier=>'JM'
,p_column_label=>'Visit 44 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672917283032738)
,p_db_column_name=>'Visit 45 Date'
,p_display_order=>776
,p_column_identifier=>'JN'
,p_column_label=>'Visit 45 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804672990840032739)
,p_db_column_name=>'Visit 46 Date'
,p_display_order=>786
,p_column_identifier=>'JO'
,p_column_label=>'Visit 46 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673126160032740)
,p_db_column_name=>'Visit 47 Date'
,p_display_order=>796
,p_column_identifier=>'JP'
,p_column_label=>'Visit 47 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673252060032741)
,p_db_column_name=>'Visit 48 Date'
,p_display_order=>806
,p_column_identifier=>'JQ'
,p_column_label=>'Visit 48 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673312415032742)
,p_db_column_name=>'Visit 49 Date'
,p_display_order=>816
,p_column_identifier=>'JR'
,p_column_label=>'Visit 49 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673423689032743)
,p_db_column_name=>'Visit 50 Date'
,p_display_order=>826
,p_column_identifier=>'JS'
,p_column_label=>'Visit 50 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673516781032694)
,p_db_column_name=>'Visit 51 Date'
,p_display_order=>836
,p_column_identifier=>'JT'
,p_column_label=>'Visit 51 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673615117032695)
,p_db_column_name=>'Visit 52 Date'
,p_display_order=>846
,p_column_identifier=>'JU'
,p_column_label=>'Visit 52 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673697346032696)
,p_db_column_name=>'Visit 53 Date'
,p_display_order=>856
,p_column_identifier=>'JV'
,p_column_label=>'Visit 53 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673796642032697)
,p_db_column_name=>'Visit 54 Date'
,p_display_order=>866
,p_column_identifier=>'JW'
,p_column_label=>'Visit 54 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673911339032698)
,p_db_column_name=>'Visit 55 Date'
,p_display_order=>876
,p_column_identifier=>'JX'
,p_column_label=>'Visit 55 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804673986320032699)
,p_db_column_name=>'Visit 56 Date'
,p_display_order=>886
,p_column_identifier=>'JY'
,p_column_label=>'Visit 56 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674077484032700)
,p_db_column_name=>'Visit 57 Date'
,p_display_order=>896
,p_column_identifier=>'JZ'
,p_column_label=>'Visit 57 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674256777032701)
,p_db_column_name=>'Visit 58 Date'
,p_display_order=>906
,p_column_identifier=>'KA'
,p_column_label=>'Visit 58 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674321809032702)
,p_db_column_name=>'Visit 59 Date'
,p_display_order=>916
,p_column_identifier=>'KB'
,p_column_label=>'Visit 59 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674395236032703)
,p_db_column_name=>'Visit 60 Date'
,p_display_order=>926
,p_column_identifier=>'KC'
,p_column_label=>'Visit 60 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674523149032704)
,p_db_column_name=>'Visit 61 Date'
,p_display_order=>936
,p_column_identifier=>'KD'
,p_column_label=>'Visit 61 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674612233032705)
,p_db_column_name=>'Visit 62 Date'
,p_display_order=>946
,p_column_identifier=>'KE'
,p_column_label=>'Visit 62 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674712934032706)
,p_db_column_name=>'Visit 63 Date'
,p_display_order=>956
,p_column_identifier=>'KF'
,p_column_label=>'Visit 63 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674843374032707)
,p_db_column_name=>'Visit 64 Date'
,p_display_order=>966
,p_column_identifier=>'KG'
,p_column_label=>'Visit 64 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804674874442032708)
,p_db_column_name=>'Visit 65 Date'
,p_display_order=>976
,p_column_identifier=>'KH'
,p_column_label=>'Visit 65 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675057185032709)
,p_db_column_name=>'Visit 66 Date'
,p_display_order=>986
,p_column_identifier=>'KI'
,p_column_label=>'Visit 66 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675127968032710)
,p_db_column_name=>'Visit 67 Date'
,p_display_order=>996
,p_column_identifier=>'KJ'
,p_column_label=>'Visit 67 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675245610032711)
,p_db_column_name=>'Visit 68 Date'
,p_display_order=>1006
,p_column_identifier=>'KK'
,p_column_label=>'Visit 68 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675318068032712)
,p_db_column_name=>'Visit 69 Date'
,p_display_order=>1016
,p_column_identifier=>'KL'
,p_column_label=>'Visit 69 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675424030032713)
,p_db_column_name=>'Visit 70 Date'
,p_display_order=>1026
,p_column_identifier=>'KM'
,p_column_label=>'Visit 70 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675547741032714)
,p_db_column_name=>'Visit 71 Date'
,p_display_order=>1036
,p_column_identifier=>'KN'
,p_column_label=>'Visit 71 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675658568032715)
,p_db_column_name=>'Visit 72 Date'
,p_display_order=>1046
,p_column_identifier=>'KO'
,p_column_label=>'Visit 72 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675737791032716)
,p_db_column_name=>'Visit 73 Date'
,p_display_order=>1056
,p_column_identifier=>'KP'
,p_column_label=>'Visit 73 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675801305032717)
,p_db_column_name=>'Visit 74 Date'
,p_display_order=>1066
,p_column_identifier=>'KQ'
,p_column_label=>'Visit 74 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804675952596032718)
,p_db_column_name=>'Visit 75 Date'
,p_display_order=>1076
,p_column_identifier=>'KR'
,p_column_label=>'Visit 75 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676017620032719)
,p_db_column_name=>'Visit 76 Date'
,p_display_order=>1086
,p_column_identifier=>'KS'
,p_column_label=>'Visit 76 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676164956032720)
,p_db_column_name=>'Visit 77 Date'
,p_display_order=>1096
,p_column_identifier=>'KT'
,p_column_label=>'Visit 77 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676208058032721)
,p_db_column_name=>'Visit 78 Date'
,p_display_order=>1106
,p_column_identifier=>'KU'
,p_column_label=>'Visit 78 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676337450032722)
,p_db_column_name=>'Visit 79 Date'
,p_display_order=>1116
,p_column_identifier=>'KV'
,p_column_label=>'Visit 79 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676443040032723)
,p_db_column_name=>'Visit 80 Date'
,p_display_order=>1126
,p_column_identifier=>'KW'
,p_column_label=>'Visit 80 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676497682032724)
,p_db_column_name=>'Visit 81 Date'
,p_display_order=>1136
,p_column_identifier=>'KX'
,p_column_label=>'Visit 81 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676576133032725)
,p_db_column_name=>'Visit 82 Date'
,p_display_order=>1146
,p_column_identifier=>'KY'
,p_column_label=>'Visit 82 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676739647032726)
,p_db_column_name=>'Visit 83 Date'
,p_display_order=>1156
,p_column_identifier=>'KZ'
,p_column_label=>'Visit 83 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676851576032727)
,p_db_column_name=>'Visit 84 Date'
,p_display_order=>1166
,p_column_identifier=>'LA'
,p_column_label=>'Visit 84 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804676924676032728)
,p_db_column_name=>'Visit 85 Date'
,p_display_order=>1176
,p_column_identifier=>'LB'
,p_column_label=>'Visit 85 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677031622032729)
,p_db_column_name=>'Visit 86 Date'
,p_display_order=>1186
,p_column_identifier=>'LC'
,p_column_label=>'Visit 86 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677152955032730)
,p_db_column_name=>'Visit 87 Date'
,p_display_order=>1196
,p_column_identifier=>'LD'
,p_column_label=>'Visit 87 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677215219032731)
,p_db_column_name=>'Visit 88 Date'
,p_display_order=>1206
,p_column_identifier=>'LE'
,p_column_label=>'Visit 88 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677319959032732)
,p_db_column_name=>'Visit 89 Date'
,p_display_order=>1216
,p_column_identifier=>'LF'
,p_column_label=>'Visit 89 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677392229032733)
,p_db_column_name=>'Visit 90 Date'
,p_display_order=>1226
,p_column_identifier=>'LG'
,p_column_label=>'Visit 90 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677482374032734)
,p_db_column_name=>'Visit 91 Date'
,p_display_order=>1236
,p_column_identifier=>'LH'
,p_column_label=>'Visit 91 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677593644032735)
,p_db_column_name=>'Visit 92 Date'
,p_display_order=>1246
,p_column_identifier=>'LI'
,p_column_label=>'Visit 92 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677761522032736)
,p_db_column_name=>'Visit 93 Date'
,p_display_order=>1256
,p_column_identifier=>'LJ'
,p_column_label=>'Visit 93 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677845553032737)
,p_db_column_name=>'Visit 94 Date'
,p_display_order=>1266
,p_column_identifier=>'LK'
,p_column_label=>'Visit 94 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677869773032738)
,p_db_column_name=>'Visit 95 Date'
,p_display_order=>1276
,p_column_identifier=>'LL'
,p_column_label=>'Visit 95 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804677992443032739)
,p_db_column_name=>'Visit 96 Date'
,p_display_order=>1286
,p_column_identifier=>'LM'
,p_column_label=>'Visit 96 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678078460032740)
,p_db_column_name=>'Visit 97 Date'
,p_display_order=>1296
,p_column_identifier=>'LN'
,p_column_label=>'Visit 97 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678201769032741)
,p_db_column_name=>'Visit 98 Date'
,p_display_order=>1306
,p_column_identifier=>'LO'
,p_column_label=>'Visit 98 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678272194032742)
,p_db_column_name=>'Visit 99 Date'
,p_display_order=>1316
,p_column_identifier=>'LP'
,p_column_label=>'Visit 99 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678379355032743)
,p_db_column_name=>'Visit 100 Date'
,p_display_order=>1326
,p_column_identifier=>'LQ'
,p_column_label=>'Visit 100 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678488407032694)
,p_db_column_name=>'Visit 101 Date'
,p_display_order=>1336
,p_column_identifier=>'LR'
,p_column_label=>'Visit 101 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678650971032695)
,p_db_column_name=>'Visit 102 Date'
,p_display_order=>1346
,p_column_identifier=>'LS'
,p_column_label=>'Visit 102 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678722696032696)
,p_db_column_name=>'Visit 103 Date'
,p_display_order=>1356
,p_column_identifier=>'LT'
,p_column_label=>'Visit 103 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678857019032697)
,p_db_column_name=>'Visit 104 Date'
,p_display_order=>1366
,p_column_identifier=>'LU'
,p_column_label=>'Visit 104 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804678935565032698)
,p_db_column_name=>'Visit 105 Date'
,p_display_order=>1376
,p_column_identifier=>'LV'
,p_column_label=>'Visit 105 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679032442032699)
,p_db_column_name=>'Visit 106 Date'
,p_display_order=>1386
,p_column_identifier=>'LW'
,p_column_label=>'Visit 106 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679117821032700)
,p_db_column_name=>'Visit 107 Date'
,p_display_order=>1396
,p_column_identifier=>'LX'
,p_column_label=>'Visit 107 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679214469032701)
,p_db_column_name=>'Visit 108 Date'
,p_display_order=>1406
,p_column_identifier=>'LY'
,p_column_label=>'Visit 108 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679365683032702)
,p_db_column_name=>'Visit 109 Date'
,p_display_order=>1416
,p_column_identifier=>'LZ'
,p_column_label=>'Visit 109 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679433801032703)
,p_db_column_name=>'Visit 110 Date'
,p_display_order=>1426
,p_column_identifier=>'MA'
,p_column_label=>'Visit 110 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679500278032704)
,p_db_column_name=>'Visit 111 Date'
,p_display_order=>1436
,p_column_identifier=>'MB'
,p_column_label=>'Visit 111 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679651873032705)
,p_db_column_name=>'Visit 112 Date'
,p_display_order=>1446
,p_column_identifier=>'MC'
,p_column_label=>'Visit 112 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679730724032706)
,p_db_column_name=>'Visit 113 Date'
,p_display_order=>1456
,p_column_identifier=>'MD'
,p_column_label=>'Visit 113 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679807918032707)
,p_db_column_name=>'Visit 114 Date'
,p_display_order=>1466
,p_column_identifier=>'ME'
,p_column_label=>'Visit 114 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804679901905032708)
,p_db_column_name=>'Visit 115 Date'
,p_display_order=>1476
,p_column_identifier=>'MF'
,p_column_label=>'Visit 115 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680003512032709)
,p_db_column_name=>'Visit 116 Date'
,p_display_order=>1486
,p_column_identifier=>'MG'
,p_column_label=>'Visit 116 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680132843032710)
,p_db_column_name=>'Visit 117 Date'
,p_display_order=>1496
,p_column_identifier=>'MH'
,p_column_label=>'Visit 117 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680232282032711)
,p_db_column_name=>'Visit 118 Date'
,p_display_order=>1506
,p_column_identifier=>'MI'
,p_column_label=>'Visit 118 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680290186032712)
,p_db_column_name=>'Visit 119 Date'
,p_display_order=>1516
,p_column_identifier=>'MJ'
,p_column_label=>'Visit 119 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680408127032713)
,p_db_column_name=>'Visit 120 Date'
,p_display_order=>1526
,p_column_identifier=>'MK'
,p_column_label=>'Visit 120 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680532298032714)
,p_db_column_name=>'Visit 121 Date'
,p_display_order=>1536
,p_column_identifier=>'ML'
,p_column_label=>'Visit 121 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680653518032715)
,p_db_column_name=>'Visit 122 Date'
,p_display_order=>1546
,p_column_identifier=>'MM'
,p_column_label=>'Visit 122 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680705438032716)
,p_db_column_name=>'Visit 123 Date'
,p_display_order=>1556
,p_column_identifier=>'MN'
,p_column_label=>'Visit 123 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680858455032717)
,p_db_column_name=>'Visit 124 Date'
,p_display_order=>1566
,p_column_identifier=>'MO'
,p_column_label=>'Visit 124 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804680868636032718)
,p_db_column_name=>'Visit 125 Date'
,p_display_order=>1576
,p_column_identifier=>'MP'
,p_column_label=>'Visit 125 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804681038134032719)
,p_db_column_name=>'Visit 126 Date'
,p_display_order=>1586
,p_column_identifier=>'MQ'
,p_column_label=>'Visit 126 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1804681112717032720)
,p_db_column_name=>'Visit 127 Date'
,p_display_order=>1596
,p_column_identifier=>'MR'
,p_column_label=>'Visit 127 Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1729314950843873741)
,p_db_column_name=>'Visit 128 Date'
,p_display_order=>1606
,p_column_identifier=>'MT'
,p_column_label=>'Visit 128 Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1729315005244873742)
,p_db_column_name=>'Visit 129 Date'
,p_display_order=>1616
,p_column_identifier=>'MU'
,p_column_label=>'Visit 129 Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1729315132134873743)
,p_db_column_name=>'Visit 130 Date'
,p_display_order=>1626
,p_column_identifier=>'MV'
,p_column_label=>'Visit 130 Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1824342540936305094)
,p_db_column_name=>'Visit 131 Date'
,p_display_order=>1636
,p_column_identifier=>'MW'
,p_column_label=>'Visit 131 Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1824342658042305095)
,p_db_column_name=>'Visit 132 Date'
,p_display_order=>1646
,p_column_identifier=>'MX'
,p_column_label=>'EOT Visit Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1824342719758305096)
,p_db_column_name=>'Visit 133 Date'
,p_display_order=>1656
,p_column_identifier=>'MY'
,p_column_label=>'EOS Visit Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11278704538831134093)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2932095'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'STUDY_SITE_ID:SCRNO:SCREENING_DATE:PTINTL:VISIT_TITLE:STATUS:GENDER:DOB:ICDDT:INC_EXC_CRITERIA1:RANDOMIZATION_DATE:RANDOMIZATION_NUMBER:KITS:SCREEN_FAIL_REASON:Visit 1 Date:Visit 2 Date:Visit 3 Date:Visit 4 Date:Visit 5 Date:Visit 6 Date:Visit 7 Date'
||':Visit 8 Date:Visit 9 Date:Visit 10 Date:Visit 11 Date:Visit 12 Date:Visit 13 Date:Visit 14 Date:Visit 15 Date:Visit 16 Date:Visit 17 Date:Visit 18 Date:Visit 19 Date:Visit 20 Date:Visit 21 Date:Visit 22 Date:Visit 23 Date:Visit 24 Date:Visit 25 Date'
||':Visit 26 Date:Visit 27 Date:Visit 28 Date:Visit 29 Date:Visit 30 Date:Visit 31 Date:Visit 32 Date:Visit 33 Date:Visit 34 Date:Visit 35 Date:Visit 36 Date:Visit 37 Date:Visit 38 Date:Visit 39 Date:Visit 40 Date:Visit 41 Date:Visit 42 Date:Visit 43 Da'
||'te:Visit 44 Date:Visit 45 Date:Visit 46 Date:Visit 47 Date:Visit 48 Date:Visit 49 Date:Visit 50 Date:Visit 51 Date:Visit 52 Date:Visit 53 Date:Visit 54 Date:Visit 55 Date:Visit 56 Date:Visit 57 Date:Visit 58 Date:Visit 59 Date:Visit 60 Date:Visit 61 '
||'Date:Visit 62 Date:Visit 63 Date:Visit 64 Date:Visit 65 Date:Visit 66 Date:Visit 67 Date:Visit 68 Date:Visit 69 Date:Visit 70 Date:Visit 71 Date:Visit 72 Date:Visit 73 Date:Visit 74 Date:Visit 75 Date:Visit 76 Date:Visit 77 Date:Visit 78 Date:Visit 7'
||'9 Date:Visit 80 Date:Visit 81 Date:Visit 82 Date:Visit 83 Date:Visit 84 Date:Visit 85 Date:Visit 86 Date:Visit 87 Date:Visit 88 Date:Visit 89 Date:Visit 90 Date:Visit 91 Date:Visit 92 Date:Visit 93 Date:Visit 94 Date:Visit 95 Date:Visit 96 Date:Visit'
||' 97 Date:Visit 98 Date:Visit 99 Date:Visit 100 Date:Visit 101 Date:Visit 102 Date:Visit 103 Date:Visit 104 Date:Visit 105 Date:Visit 106 Date:Visit 107 Date:Visit 108 Date:Visit 109 Date:Visit 110 Date:Visit 111 Date:Visit 112 Date:Visit 113 Date:Vis'
||'it 114 Date:Visit 115 Date:Visit 116 Date:Visit 117 Date:Visit 118 Date:Visit 119 Date:Visit 120 Date:Visit 121 Date:Visit 122 Date:Visit 123 Date:Visit 124 Date:Visit 125 Date:Visit 126 Date:Visit 127 Date:Visit 128 Date:Visit 129 Date:Visit 130 Dat'
||'e:Visit 131 Date:Visit 132 Date:Visit 133 Date:'
,p_sort_column_1=>'SCRNO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11278724746595238120)
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
 p_id=>wwv_flow_imp.id(10506109192269303436)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10506108848660303432)
,p_button_name=>'PDF_1_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10506106941451303413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10506106558721303409)
,p_button_name=>'PDF_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10500916543370572902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11278697628675133160)
,p_button_name=>'PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568846455265285786)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11278697628675133160)
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
 p_id=>wwv_flow_imp.id(9568846548405285787)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11278697628675133160)
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
 p_id=>wwv_flow_imp.id(10500916127478572898)
,p_name=>'P51_EDC_ROLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11278697628675133160)
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500916202030572899)
,p_name=>'P51_EDC_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11278697628675133160)
,p_item_default=>':APP_EDC_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500916314449572900)
,p_name=>'P51_EDC_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11278697628675133160)
,p_item_default=>':APP_EDC_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10506106619649303410)
,p_name=>'P51_EDC_ROLE_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10506106558721303409)
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10506106706353303411)
,p_name=>'P51_EDC_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10506106558721303409)
,p_item_default=>':APP_EDC_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10506106807267303412)
,p_name=>'P51_EDC_USER_ID_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10506106558721303409)
,p_item_default=>':APP_EDC_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10506108934669303433)
,p_name=>'P51_EDC_ROLE_ID_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10506108848660303432)
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10506109020785303434)
,p_name=>'P51_EDC_USER_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10506108848660303432)
,p_item_default=>':APP_EDC_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10506109096111303435)
,p_name=>'P51_EDC_USER_ID_1_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10506108848660303432)
,p_item_default=>':APP_EDC_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10500916664471572903)
,p_name=>'Download PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10500916543370572902)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10500916703983572904)
,p_event_id=>wwv_flow_imp.id(10500916664471572903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_SV&_repFormat=pdf&_dataSource=default&_outFilename=Subject_Visits.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P51_EDC_ROLE_ID")+''&P_EDC_USER=''+ $v("P51_'
||'EDC_USER") +''&P_EDC_USER_ID=''+ $v("P51_EDC_USER_ID")+'''',''_blank'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10506108605106303430)
,p_name=>'Download PDF_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10506106941451303413)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506108763238303431)
,p_event_id=>wwv_flow_imp.id(10506108605106303430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_SV&_repFormat=csv&_dataSource=default&_outFilename=Subject_Visits.csv&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P51_EDC_ROLE_ID_1")+''&P_EDC_USER=''+ $v("P5'
||'1_EDC_USER_1") +''&P_EDC_USER_ID=''+ $v("P51_EDC_USER_ID_1")+'''',''_blank'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569087716676708696)
,p_name=>'PRINT_PDF'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568846455265285786)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569087818579708697)
,p_event_id=>wwv_flow_imp.id(9569087716676708696)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Subject Visit/SUBJECT_VISIT&_repFormat=pdf&_dataSource=default&_outFilename=SUBJECT_VISIT.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569087942000708698)
,p_name=>'PRINT_XLS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568846548405285787)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569087974368708699)
,p_event_id=>wwv_flow_imp.id(9569087942000708698)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Subject Visit/SUBJECT_VISIT&_repFormat=xls&_dataSource=default&_outFilename=SUBJECT_VISIT.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
