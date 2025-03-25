prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
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
 p_id=>120
,p_tab_set=>'TS1'
,p_name=>'ePRO Symptom Tracker'
,p_step_title=>'ePRO Symptom Tracker'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3548277097188974407)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3548276610560974402)
,p_plug_name=>'ePRO Symptom Tracker'
,p_parent_plug_id=>wwv_flow_imp.id(3548277097188974407)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px; width :1000px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3548276787162974403)
,p_region_id=>wwv_flow_imp.id(3548276610560974402)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3549339379396923684)
,p_chart_id=>wwv_flow_imp.id(3548276787162974403)
,p_seq=>250
,p_name=>'Test Arm'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCHEDULE_ID, DISP_SCHEDULE_NAME,',
'GET_SYMPTOMS_COUNT (:P120_SITE_NAME, SCHEDULE_ID,1) "TOTAL_SYMPTOMS"',
'FROM EDC_PATIENT_SCHEDULE_PARAMS',
'WHERE SCHEDULE_ID IN (3,5,7,9,11,13,15,17,19,21)',
'ORDER BY 1;'))
,p_ajax_items_to_submit=>'P120_SITE_NAME'
,p_items_value_column_name=>'TOTAL_SYMPTOMS'
,p_items_label_column_name=>'DISP_SCHEDULE_NAME'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3549339885036923689)
,p_chart_id=>wwv_flow_imp.id(3548276787162974403)
,p_seq=>260
,p_name=>'Reference Arm'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCHEDULE_ID, DISP_SCHEDULE_NAME,',
'GET_SYMPTOMS_COUNT (:P120_SITE_NAME, SCHEDULE_ID,2) "TOTAL_SYMPTOMS"',
'FROM EDC_PATIENT_SCHEDULE_PARAMS',
'WHERE SCHEDULE_ID IN (3,5,7,9,11,13,15,17,19,21)',
'ORDER BY 1;'))
,p_ajax_items_to_submit=>'P120_SITE_NAME'
,p_items_value_column_name=>'TOTAL_SYMPTOMS'
,p_items_label_column_name=>'DISP_SCHEDULE_NAME'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3548276927512974405)
,p_chart_id=>wwv_flow_imp.id(3548276787162974403)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3548277040462974406)
,p_chart_id=>wwv_flow_imp.id(3548276787162974403)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>10
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12016120996518089471)
,p_plug_name=>'ePRO Symptom Tracker'
,p_parent_plug_id=>wwv_flow_imp.id(3548277097188974407)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.STUDY_SITE_ID, B.SITE_NUMBER||''-''||A.INVNAME,',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 3,1) "DAY 1 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 5,1) "DAY 2 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 7,1) "DAY 3 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 9,1) "DAY 4 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 11,1) "DAY 5 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 13,1) "DAY 6 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 15,1) "DAY 7 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 17,1) "DAY 8 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 19,1) "DAY 9 DOSE 1",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 21,1) "DAY 10 DOSE 1"/*,',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 26,1) "DAY 14",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 33,1) "DAY 21",',
'GET_SYMPTOMS_COUNT (B.STUDY_SITE_ID, 41,1) "EARLY TERMINATION"*/',
'FROM EDC_SITES A, EDC_STUDY_SITES B',
'WHERE A.SITE_ID = B.SITE_ID',
'AND (SELECT COUNT(1) FROM EDC_PATIENT_PROFILE WHERE STUDY_SITE_ID = B.STUDY_SITE_ID) > 0',
'ORDER BY STUDY_SITE_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(12016121115738089472)
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
,p_internal_uid=>8722645127767942308
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275173003974387)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>10
,p_column_identifier=>'AQ'
,p_column_label=>'Study Site Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275243586974388)
,p_db_column_name=>'B.SITE_NUMBER||''-''||A.INVNAME'
,p_display_order=>20
,p_column_identifier=>'AR'
,p_column_label=>'Site Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275312774974389)
,p_db_column_name=>'DAY 1 DOSE 1'
,p_display_order=>30
,p_column_identifier=>'AS'
,p_column_label=>'Day 1 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275426365974390)
,p_db_column_name=>'DAY 2 DOSE 1'
,p_display_order=>40
,p_column_identifier=>'AT'
,p_column_label=>'Day 2 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275556690974391)
,p_db_column_name=>'DAY 3 DOSE 1'
,p_display_order=>50
,p_column_identifier=>'AU'
,p_column_label=>'Day 3 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275597517974392)
,p_db_column_name=>'DAY 4 DOSE 1'
,p_display_order=>60
,p_column_identifier=>'AV'
,p_column_label=>'Day 4 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275787933974393)
,p_db_column_name=>'DAY 5 DOSE 1'
,p_display_order=>70
,p_column_identifier=>'AW'
,p_column_label=>'Day 5 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275803978974394)
,p_db_column_name=>'DAY 6 DOSE 1'
,p_display_order=>80
,p_column_identifier=>'AX'
,p_column_label=>'Day 6 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275978758974395)
,p_db_column_name=>'DAY 7 DOSE 1'
,p_display_order=>90
,p_column_identifier=>'AY'
,p_column_label=>'Day 7 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548275988175974396)
,p_db_column_name=>'DAY 8 DOSE 1'
,p_display_order=>100
,p_column_identifier=>'AZ'
,p_column_label=>'Day 8 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548276176654974397)
,p_db_column_name=>'DAY 9 DOSE 1'
,p_display_order=>110
,p_column_identifier=>'BA'
,p_column_label=>'Day 9 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3548276220702974398)
,p_db_column_name=>'DAY 10 DOSE 1'
,p_display_order=>120
,p_column_identifier=>'BB'
,p_column_label=>'Day 10 Dose 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12022957241164977461)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2558285'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>':STUDY_SITE_ID:B.SITE_NUMBER||''-''||A.INVNAME:DAY 1 DOSE 1:DAY 2 DOSE 1:DAY 3 DOSE 1:DAY 4 DOSE 1:DAY 5 DOSE 1:DAY 6 DOSE 1:DAY 7 DOSE 1:DAY 8 DOSE 1:DAY 9 DOSE 1:DAY 10 DOSE 1'
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
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12004077644746474077)
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
 p_id=>wwv_flow_imp.id(12004091406521533261)
,p_plug_name=>'Admin Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;     width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>10
,p_plug_new_grid=>true
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_1'
,p_list_id=>wwv_flow_imp.id(3552315147236588000)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3549339231791923683)
,p_name=>'P120_SITE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3548276610560974402)
,p_prompt=>'<b>Site</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.SITE_NUMBER||''-''||A.INVNAME D,B.STUDY_SITE_ID R',
'FROM EDC_SITES A, EDC_STUDY_SITES B',
'WHERE A.SITE_ID = B.SITE_ID',
'AND (SELECT COUNT(1) FROM EDC_PATIENT_PROFILE WHERE STUDY_SITE_ID = B.STUDY_SITE_ID) > 0',
'ORDER BY STUDY_SITE_ID;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Sites'
,p_lov_null_value=>'999999'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3549339473297923685)
,p_name=>'P120_TOT_SUBJECTS_TST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3548276610560974402)
,p_prompt=>'<b>Test Arm Subject Count</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3549339904254923690)
,p_name=>'P120_TOT_SUBJECTS_REF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3548276610560974402)
,p_prompt=>'<b>Reference Arm Subject Count</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3549339755118923688)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Subjects'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P120_SITE_NAME IS NULL THEN :P120_SITE_NAME := 999999; END IF;',
'',
'SELECT COUNT(PATIENT_PROFILE_ID) INTO :P120_TOT_SUBJECTS_TST FROM EDC_PATIENT_PROFILE A',
'  WHERE A.STUDY_SITE_ID = DECODE(:P120_SITE_NAME,999999, A.STUDY_SITE_ID,:P120_SITE_NAME)',
'  AND EPRO_STATUS IS NOT NULL',
'  AND STUDY_ARM_ID = 1',
'  AND (SELECT COUNT(1) FROM EDC_PATIENT_DIARY WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID AND SCHEDULE_ID IN (3,5,7,9,11,13,15,17,19,21)) = 10',
'  AND (SELECT COUNT(1) FROM EDC_CRF_CSE661 WHERE PATIENT_DIARY_ID IN (SELECT PATIENT_DIARY_ID FROM EDC_PATIENT_DIARY ',
'  WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID AND SCHEDULE_ID IN (3,5,7,9,11,13,15,17,19,21))) = 10;',
'  ',
'  SELECT COUNT(PATIENT_PROFILE_ID) INTO :P120_TOT_SUBJECTS_REF FROM EDC_PATIENT_PROFILE A',
'  WHERE A.STUDY_SITE_ID = DECODE(:P120_SITE_NAME,999999, A.STUDY_SITE_ID,:P120_SITE_NAME)',
'  AND EPRO_STATUS IS NOT NULL',
'  AND STUDY_ARM_ID = 2',
'  AND (SELECT COUNT(1) FROM EDC_PATIENT_DIARY WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID AND SCHEDULE_ID IN (3,5,7,9,11,13,15,17,19,21)) = 10',
'  AND (SELECT COUNT(1) FROM EDC_CRF_CSE661 WHERE PATIENT_DIARY_ID IN (SELECT PATIENT_DIARY_ID FROM EDC_PATIENT_DIARY ',
'  WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID AND SCHEDULE_ID IN (3,5,7,9,11,13,15,17,19,21))) = 10;',
' ',
' END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2448388986977419595
);
wwv_flow_imp.component_end;
end;
/
