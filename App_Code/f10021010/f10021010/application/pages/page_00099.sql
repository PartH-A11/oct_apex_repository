prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_tab_set=>'TS1'
,p_name=>'Randomization Block Status'
,p_step_title=>'Randomization Block Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10162497896974480804)
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
 p_id=>wwv_flow_imp.id(10162511658749539988)
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
 p_id=>wwv_flow_imp.id(10174541248746096198)
,p_plug_name=>'Randomization Block Status'
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
'  PK_INF AS (SELECT A.PATIENT_PROFILE_ID, A.PATIENT_VISIT_ID, A.VISIT_TITLE, NUM1 AS FIGO,',
'       (SELECT HK.COMM4  FROM IWRS_CRF_DM HK WHERE HK.PATIENT_VISIT_ID IN(',
'(select KP.PATIENT_VISIT_ID from EDC_PATIENT_VISIT KP WHERE KP.PATIENT_PROFILE_ID IN(',
'SELECT LM.PATIENT_PROFILE_ID from EDC_PATIENT_VISIT LM where LM.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID) AND VISIT_NUMBER = 1))) AS COLOR_CODE',
'               FROM EDC_PATIENT_VISIT A',
'               JOIN IWRS_CRF_DM B',
'                 ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'                AND A.PARAM_ID = 1),',
'',
'  PV_IP AS (SELECT A.PATIENT_PROFILE_ID, A.PATIENT_VISIT_ID, A.VISIT_TITLE, A.PARAM_ID',
'                 , LISTAGG(''<span style="color: cadetblue;">''||B.BOTTLE_NO||''</span> - ''||C.ARM_NAME,'', '') WITHIN GROUP(ORDER BY B.IP_ID) KITS',
'--                 , LISTAGG(B.BOTTLE_NO||''- ''||C.ARM_NAME,'', '') WITHIN GROUP(ORDER BY B.IP_ID) KITS',
'              FROM EDC_PATIENT_VISIT A',
'              JOIN EDC_IP_DETAIL B',
'                ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'              JOIN EDC_STUDY_ARM C',
'                ON B.STUDY_ARM_ID = C.STUDY_ARM_ID',
'             GROUP BY A.PATIENT_PROFILE_ID, A.PATIENT_VISIT_ID, A.VISIT_TITLE, A.PARAM_ID),',
'',
'  PP_IP AS (SELECT A.PATIENT_PROFILE_ID, A.PTINTL, A.SCRNO, A.RANDOMIZATION_DATE RANDOM_DATE, C.COLOR_CODE, A.RANDOMNO',
'                 , LISTAGG(''<span style="color: coral;">''||B.VISIT_TITLE||''</span> (''||B.KITS||'')'','',<BR>'') WITHIN GROUP (ORDER BY B.PATIENT_VISIT_ID) VISIT_IP, C.FIGO',
'              FROM EDC_PATIENT_PROFILE A',
'              JOIN PV_IP B',
'                ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'              JOIN PK_INF C',
'                ON A.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID',
'             GROUP BY A.PATIENT_PROFILE_ID, A.PTINTL, A.SCRNO, A.RANDOMIZATION_DATE, C.COLOR_CODE, A.RANDOMNO,C.FIGO)',
'',
'  SELECT A.OBS, A.TREATMENT, A.STUDY_ARM_ID, A.RANDOMIZATION_NUMBER, A.STUDY_SITE_ID, A.PATIENT_PROFILE_ID, A.BLOCK',
'       , NVL(B.PTINTL,(SELECT G.PTINTL FROM EDC_PATIENT_PROFILE G WHERE G.PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID)) AS PTINTL',
'       , NVL(B.SCRNO,(SELECT G.SCRNO FROM EDC_PATIENT_PROFILE G WHERE G.PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID)) AS SCRNO',
'       , NVL(B.RANDOM_DATE,(SELECT G.RANDOMIZATION_DATE FROM EDC_PATIENT_PROFILE G WHERE G.PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID)) AS RANDOM_DATE',
'       , B.VISIT_IP',
'       , COLOR_CODE',
'       , NVL(B.RANDOMNO,(SELECT G.RANDOMNO FROM EDC_PATIENT_PROFILE G WHERE G.PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID)) AS RANDOMNO',
'    FROM EDC_RANDOM_MST A',
'    LEFT OUTER JOIN PP_IP B',
'      ON A.PATIENT_PROFILE_ID = B.PATIENT_PROFILE_ID',
'   ORDER BY A.OBS'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(10174541367966096199)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>289997057394367143
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7949608173041568860)
,p_db_column_name=>'OBS'
,p_display_order=>10
,p_column_identifier=>'AA'
,p_column_label=>'Obs'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9411908290308220005)
,p_db_column_name=>'RANDOMIZATION_NUMBER'
,p_display_order=>20
,p_column_identifier=>'Z'
,p_column_label=>'Central<br>Randomization<br>No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7949608361224568861)
,p_db_column_name=>'STUDY_ARM_ID'
,p_display_order=>30
,p_column_identifier=>'AB'
,p_column_label=>'Treatment<br>Arm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(11045283369488317223)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7949608441678568862)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>40
,p_column_identifier=>'AC'
,p_column_label=>'Patient'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11051767858421568667)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4138732134332655605)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>60
,p_column_identifier=>'AE'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1808343221414534072)
,p_db_column_name=>'TREATMENT'
,p_display_order=>70
,p_column_identifier=>'AN'
,p_column_label=>'Treatment'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1808343795493534078)
,p_db_column_name=>'BLOCK'
,p_display_order=>130
,p_column_identifier=>'AT'
,p_column_label=>'Block'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1808343960326534080)
,p_db_column_name=>'PTINTL'
,p_display_order=>150
,p_column_identifier=>'AV'
,p_column_label=>'Initial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1808344090170534081)
,p_db_column_name=>'SCRNO'
,p_display_order=>160
,p_column_identifier=>'AW'
,p_column_label=>'Screening<br>No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1808344276632534083)
,p_db_column_name=>'VISIT_IP'
,p_display_order=>180
,p_column_identifier=>'AY'
,p_column_label=>'Assigned<br>Kit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1808582011268098581)
,p_db_column_name=>'RANDOM_DATE'
,p_display_order=>190
,p_column_identifier=>'AZ'
,p_column_label=>'Randomization<br>Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1404605319334207616)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>210
,p_column_identifier=>'BB'
,p_column_label=>'Assigned<br>Randomization no.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1193444124735157905)
,p_db_column_name=>'COLOR_CODE'
,p_display_order=>220
,p_column_identifier=>'BC'
,p_column_label=>'Light iris color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10181377493392984188)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2968332'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'RANDOMIZATION_NUMBER:STUDY_ARM_ID:STUDY_SITE_ID:SCRNO:VISIT_IP:RANDOM_DATE:RANDOMNO'
,p_sort_column_1=>'RANDOMIZATION_NUMBER'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'RANDOM_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'OBS'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8467690690295212236)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10174541248746096198)
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
 p_id=>wwv_flow_imp.id(8467690876605212237)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10174541248746096198)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8467897635871781712)
,p_name=>'print pdf'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467690690295212236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8467897682831781713)
,p_event_id=>wwv_flow_imp.id(8467897635871781712)
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
 p_id=>wwv_flow_imp.id(8467897852131781714)
,p_name=>'print xls'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467690876605212237)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8467897879487781715)
,p_event_id=>wwv_flow_imp.id(8467897852131781714)
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
