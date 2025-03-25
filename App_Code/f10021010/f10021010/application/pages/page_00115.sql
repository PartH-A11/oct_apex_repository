prompt --application/pages/page_00115
begin
--   Manifest
--     PAGE: 00115
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
 p_id=>115
,p_tab_set=>'TS1'
,p_name=>'IWRS data by subject (Randomized subjects only)'
,p_step_title=>'IWRS data by subject (Randomized subjects only)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>'$(''#P115_TOTAL_RND_PATIENT_LABEL'').css("color","red");'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10409909657116507656)
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
 p_id=>wwv_flow_imp.id(10409923418891566840)
,p_plug_name=>'Admin Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;     width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_list_id=>wwv_flow_imp.id(2451364379095083907)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10421953008888123050)
,p_plug_name=>'IWRS data by subject (Randomized subjects only)'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  VIR_SH AS (SELECT A.PATIENT_PROFILE_ID,A.STATUS AS PATIENT_STATUS , C.RADIO4, C.GENDER, C.DOB, C.AGE, A.STUDY_SITE_ID, TO_CHAR(C.VISIT_DATE,''DD-MON-YYYY'') VISIT_DATE',
'                  , TO_CHAR(C.ICDDT,''DD-MON-YYYY'') ICDDT, B.PARAM_ID, NVL(C.NUM1,0) RET_QTY , C.RADIO7 AS SMOKING, C.RADIO5 AS ECOG_STATUS',
'                  , C.IE_MET AS IC_EXC, C.NUM2 AS WEIGHT',
'               FROM EDC_PATIENT_PROFILE A',
'               JOIN EDC_PATIENT_VISIT B',
'                 ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'               JOIN IWRS_CRF_DM C',
'                 ON B.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
'                AND A.RANDOMNO IS NOT NULL',
'                AND A.STUDY_SITE_ID = DECODE(:P115_SITE,NULL,A.STUDY_SITE_ID,:P115_SITE)),',
'',
'  IP_DTL AS (SELECT A.PATIENT_PROFILE_ID,D.VISIT_NUMBER,B.STATUS AS PATIENT_STATUS , B.RANDOMNO, D.VISIT_TITLE, A.BOTTLE_NO, TO_CHAR(E.DISPENSE_TIME,''DD-MON-YYYY HH:MI PM'') DISPANCE_DATE, A.IP_ID',
'--                  , LISTAGG(D.VISIT_TITLE||'' - ''||A.BOTTLE_NO||'' (''||TO_CHAR(E.DISPENSE_TIME,''DD-MON-YYYY HH:MI PM'')||'')'','',<br>'') WITHIN GROUP(ORDER BY A.IP_ID) IPS',
'--                  , (COUNT(A.IP_ID) * 94) NO_OF_TABLETS',
'                  , E.DISPENSE_TIME DISPANCE_DATE2',
'                  , A.REGION --',
'                  , A.STUDY_SITE_ID',
'               FROM EDC_IP_DETAIL A',
'               JOIN EDC_PATIENT_PROFILE B',
'                 ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'               JOIN EDC_PATIENT_VISIT D',
'                 ON A.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'               JOIN IWRS_CRF_DM_IP E',
'                 ON D.PATIENT_VISIT_ID = E.PATIENT_VISIT_ID',
'               JOIN EDC_STUDY_ARM C',
'                 ON A.STUDY_ARM_ID = C.STUDY_ARM_ID',
'                    AND E.IP_ID = A.IP_ID),',
'       --       GROUP BY A.PATIENT_PROFILE_ID, B.RANDOMNO, A.REGION,',
'',
'  IP_VIR AS (SELECT A.PATIENT_PROFILE_ID,A.VISIT_NUMBER,A.PATIENT_STATUS, A.RANDOMNO RANDOMIZATION_NUMBER, A.VISIT_TITLE, A.BOTTLE_NO IPS, A.DISPANCE_DATE, A.DISPANCE_DATE2',
'                  , C.GENDER, C.DOB, C.AGE, A.IP_ID, B.VISIT_DATE VISIT_2, C.ICDDT',
'                  , A.REGION,A.STUDY_SITE_ID, NVL(B.SMOKING,C.SMOKING) AS SMOKING, NVL(B.ECOG_STATUS,C.ECOG_STATUS) AS ECOG_STATUS',
'                  , B.IC_EXC AS IC_EXC, C.IC_EXC AS IC_EXC2, B.WEIGHT AS WEIGHT',
'               FROM IP_DTL A',
'               JOIN (SELECT * FROM VIR_SH WHERE PARAM_ID = 2) B',
'                 ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'               JOIN (SELECT * FROM VIR_SH WHERE PARAM_ID = 1) C',
'                 ON A.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID',
'              ORDER BY A.RANDOMNO DESC, A.IP_ID),',
'',
'  IP_VIR2 AS (SELECT A.PATIENT_PROFILE_ID,(SELECT DISPLAY_VALUE FROM EDC_LOV_VALUES WHERE LOV_ID = 36 AND STORED_VALUE = A.PATIENT_STATUS) AS PATIENT_STATUS,A.RANDOMIZATION_NUMBER, A.VISIT_TITLE, LISTAGG(A.IPS,'',<br>'') WITHIN GROUP (ORDER BY A.PATIEN'
||'T_PROFILE_ID) AS IPS, A.DISPANCE_DATE, A.STUDY_SITE_ID',
'                   , A.GENDER, A.DOB, A.AGE, A.VISIT_2, B.VISIT_DATE VISIT_3, B.RET_QTY, A.ICDDT',
'                   , A.REGION,A.DISPANCE_DATE2, A.SMOKING, A.ECOG_STATUS, A.IC_EXC, A.IC_EXC2, A.WEIGHT',
'                FROM IP_VIR A',
'                LEFT OUTER JOIN (SELECT * FROM VIR_SH WHERE PARAM_ID = 3) B',
'                  ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'                  GROUP BY A.PATIENT_PROFILE_ID, A.RANDOMIZATION_NUMBER, A.VISIT_TITLE, A.DISPANCE_DATE, A.STUDY_SITE_ID',
'                            , A.GENDER, A.DOB, A.AGE, A.VISIT_2, B.VISIT_DATE, B.RET_QTY, A.ICDDT',
'                            , A.REGION, A.DISPANCE_DATE2,A.VISIT_NUMBER,A.PATIENT_STATUS, A.SMOKING, A.ECOG_STATUS, A.IC_EXC, A.IC_EXC2',
'                            , A.WEIGHT',
'               ORDER BY A.RANDOMIZATION_NUMBER DESC,A.VISIT_NUMBER)',
'  SELECT *',
'    FROM IP_VIR2',
'   WHERE SUN_21010_DEV.EDC_AUTH_PKG.CHECK_DEPOT_ACCESS(REGION) = 1 --'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P115_SITE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT study_site_id',
'     , P.PTINTL',
'     , P.SCRNO',
'     , P.RANDOMNO',
'     , P.STATUS',
'     , dtls_id block_number',
'     , (SELECT D.STUDY_ARM_ID',
'          FROM EDC_STUDY_ARM_BLOCK B',
'             , EDC_STUDY_ARM_BLOCK_DTLS D',
'         WHERE B.BLK_ID = D.BLK_ID',
'           AND B.STUDY_SITE_ID = P.STUDY_SITE_ID',
'           AND D.DTLS_ID = P.DTLS_ID',
'       ) BLOCK_ARM',
'     , (SELECT MIN(I.STUDY_ARM_ID)',
'          FROM EDC_PATIENT_VISIT V, IWRS_CRF_DM_IP D, EDC_IP_DETAIL I',
'         WHERE V.PATIENT_PROFILE_ID = P.PATIENT_PROFILE_ID ',
'           AND V.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'           AND V.VISIT_NUMBER = 2',
'           AND I.IP_ID = D.IP_ID',
'       ) VISIT_2_ARM',
'     , (SELECT listagg(I.BOTTLE_NO,'',  '') within group(order by I.IP_ID)',
'          FROM  EDC_PATIENT_VISIT V, IWRS_CRF_DM_IP D, EDC_IP_DETAIL I',
'         WHERE V.PATIENT_PROFILE_ID = P.PATIENT_PROFILE_ID ',
'           AND V.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'           AND V.VISIT_NUMBER = 2',
'           AND I.IP_ID = D.IP_ID',
'       ) VISIT_2_IPS',
'     , (SELECT MIN(I.STUDY_ARM_ID)',
'          FROM  EDC_PATIENT_VISIT V, IWRS_CRF_DM_IP D, EDC_IP_DETAIL I',
'         WHERE V.PATIENT_PROFILE_ID = P.PATIENT_PROFILE_ID ',
'           AND V.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'           AND V.VISIT_NUMBER = 7',
'           AND I.IP_ID = D.IP_ID',
'       ) VISIT_7_ARM',
'     , (SELECT listagg(I.BOTTLE_NO,'',  '') within group(order by I.IP_ID)',
'          FROM  EDC_PATIENT_VISIT V, IWRS_CRF_DM_IP D, EDC_IP_DETAIL I',
'         WHERE V.PATIENT_PROFILE_ID = P.PATIENT_PROFILE_ID ',
'           AND V.PATIENT_VISIT_ID = D.PATIENT_VISIT_ID',
'           AND V.VISIT_NUMBER = 7',
'           AND I.IP_ID = D.IP_ID',
'       ) VISIT_7_IPS',
'  FROM EDC_PATIENT_PROFILE P',
' WHERE DTLS_ID IS NOT NULL',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(P.STUDY_SITE_ID) <> 0',
'ORDER BY DTLS_ID;'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10421953128108123051)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>7976458389228303803
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2692911152537846108)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>40
,p_column_identifier=>'AC'
,p_column_label=>'Subject'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(2692948075963228807)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2692909546677846106)
,p_db_column_name=>'IPS'
,p_display_order=>50
,p_column_identifier=>'AD'
,p_column_label=>'Kit #'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2692518397190852998)
,p_db_column_name=>'GENDER'
,p_display_order=>90
,p_column_identifier=>'AJ'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2692928518362060349)
,p_db_column_name=>'DOB'
,p_display_order=>100
,p_column_identifier=>'AK'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2692909233620846106)
,p_db_column_name=>'AGE'
,p_display_order=>110
,p_column_identifier=>'AH'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2694266825433061754)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>220
,p_column_identifier=>'AW'
,p_column_label=>'Visit Title'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2694266843369061755)
,p_db_column_name=>'DISPANCE_DATE'
,p_display_order=>230
,p_column_identifier=>'AX'
,p_column_label=>'Dispense Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2694266994158061756)
,p_db_column_name=>'RANDOMIZATION_NUMBER'
,p_display_order=>240
,p_column_identifier=>'AY'
,p_column_label=>'Randomization<BR>Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2694691807078899450)
,p_db_column_name=>'RET_QTY'
,p_display_order=>260
,p_column_identifier=>'BA'
,p_column_label=>'Return<br>Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2694691899788899451)
,p_db_column_name=>'VISIT_3'
,p_display_order=>270
,p_column_identifier=>'BB'
,p_column_label=>'Follow up<br>Visit Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2694692000949899452)
,p_db_column_name=>'VISIT_2'
,p_display_order=>280
,p_column_identifier=>'BC'
,p_column_label=>'Randomization<br>Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2694692131973899453)
,p_db_column_name=>'ICDDT'
,p_display_order=>290
,p_column_identifier=>'BD'
,p_column_label=>'Informed Consent<br>Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2694692176995899454)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>300
,p_column_identifier=>'BE'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2465828859888195572)
,p_db_column_name=>'DISPANCE_DATE2'
,p_display_order=>310
,p_column_identifier=>'BF'
,p_column_label=>'Dispance Date2'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2003825298749748225)
,p_db_column_name=>'REGION'
,p_display_order=>320
,p_column_identifier=>'BJ'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2003825468190748227)
,p_db_column_name=>'PATIENT_STATUS'
,p_display_order=>340
,p_column_identifier=>'BL'
,p_column_label=>'Subject Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2003825616363748228)
,p_db_column_name=>'SMOKING'
,p_display_order=>350
,p_column_identifier=>'BM'
,p_column_label=>'Smoking Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2003825720162748229)
,p_db_column_name=>'ECOG_STATUS'
,p_display_order=>360
,p_column_identifier=>'BN'
,p_column_label=>'ECOG Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2003825791324748230)
,p_db_column_name=>'IC_EXC'
,p_display_order=>370
,p_column_identifier=>'BO'
,p_column_label=>'Inclusion/Exclusion<BR>Criteria met ? '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2003825892610748231)
,p_db_column_name=>'IC_EXC2'
,p_display_order=>380
,p_column_identifier=>'BP'
,p_column_label=>'Does the subject comply with all the<br>inclusion and exclusion criteria?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2003826004223748232)
,p_db_column_name=>'WEIGHT'
,p_display_order=>390
,p_column_identifier=>'BQ'
,p_column_label=>'Weight (Kg)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10428789253535011040)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2474172'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'STUDY_SITE_ID:PATIENT_PROFILE_ID:PATIENT_STATUS:RANDOMIZATION_NUMBER:VISIT_2:ICDDT:GENDER:DOB:AGE:REGION:SMOKING:ECOG_STATUS:IC_EXC:IC_EXC2:WEIGHT:VISIT_TITLE:IPS:DISPANCE_DATE:VISIT_3:RET_QTY:DISPANCE_DATE2'
,p_sort_column_1=>'ARM_BLOCK_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'DTLS_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2009181253661621129)
,p_report_id=>wwv_flow_imp.id(10428789253535011040)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PATIENT_PROFILE_ID'
,p_operator=>'='
,p_expr=>'001-003'
,p_condition_sql=>'"PATIENT_PROFILE_ID" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''001-003''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2692912435251846109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10421953008888123050)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2692912746207846110)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10421953008888123050)
,p_button_name=>'PRINT_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2445703468391208672)
,p_name=>'P115_TOTAL_RND_PATIENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10421953008888123050)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Randomized Patient'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT(*) ',
'                FROM EDC_PATIENT_PROFILE X',
'               WHERE STATUS = 3 ',
'                  AND X.STUDY_SITE_ID = DECODE(:P115_SITE,NULL,x.STUDY_SITE_ID,:P115_SITE)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2692931198250060376)
,p_name=>'P115_SITE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10421953008888123050)
,p_prompt=>'<b>Site</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'',
'order by r desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- All Sites --'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2692913524460846111)
,p_name=>'print pdf'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2692912435251846109)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2692914024260846112)
,p_event_id=>wwv_flow_imp.id(2692913524460846111)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Randomization Block Status/RANDOMIZATION_BLK_STS&_repFormat=pdf&_dataSource=default&_outFilename=RANDOMIZATION_BLK_STS.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&AP'
||'P_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2692914360118846112)
,p_name=>'print xls'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2692912746207846110)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2692914875881846113)
,p_event_id=>wwv_flow_imp.id(2692914360118846112)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Randomization Block Status/RANDOMIZATION_BLK_STS&_repFormat=xls&_dataSource=default&_outFilename=RANDOMIZATION_BLK_STS.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&AP'
||'P_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
