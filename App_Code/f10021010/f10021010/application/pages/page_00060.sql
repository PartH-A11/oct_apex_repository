prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_tab_set=>'TS1'
,p_name=>'Placebo Run-in Status'
,p_step_title=>'Placebo Run-in Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9475835335070163144)
,p_plug_name=>'Placebo Run-in Status'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.STUDY_SITE_ID SITE',
'     , ''Placebo Run-in'' BLOCK_ARM',
'     , P.PTINTL',
'     , P.SCRNO',
'     , P.RANDOMNO',
'     , P.STATUS',
'     , (SELECT listagg(IPD.BOTTLE_NO,'',  '') within group(order by IPD.IP_ID)',
'          FROM EDC_PATIENT_VISIT V, IWRS_CRF_DM_IP IP, EDC_IP_DETAIL IPD',
'         WHERE V.PATIENT_PROFILE_ID = P.PATIENT_PROFILE_ID ',
'           AND V.PATIENT_VISIT_ID = IP.PATIENT_VISIT_ID',
'           AND V.VISIT_NUMBER = 2',
'           AND IPD.IP_ID = IP.IP_ID',
'       ) VISIT_2_IPS',
'  FROM EDC_PATIENT_PROFILE P',
' WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(P.STUDY_SITE_ID) <> 0'))
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
 p_id=>wwv_flow_imp.id(9475835749783163146)
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
,p_internal_uid=>76201560019568239
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475835830282163149)
,p_db_column_name=>'VISIT_2_IPS'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Start of Placebo Runin<br/>Assigned Kit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475836201996163150)
,p_db_column_name=>'STATUS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(10970865637450814166)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475836633220163151)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Randomization<br/>Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475837839639163153)
,p_db_column_name=>'SCRNO'
,p_display_order=>120
,p_column_identifier=>'Y'
,p_column_label=>'Screening Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475837471647163152)
,p_db_column_name=>'PTINTL'
,p_display_order=>130
,p_column_identifier=>'X'
,p_column_label=>'Subject Initial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475837072511163152)
,p_db_column_name=>'SITE'
,p_display_order=>170
,p_column_identifier=>'W'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(10976096212557711524)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9475838217010163154)
,p_db_column_name=>'BLOCK_ARM'
,p_display_order=>180
,p_column_identifier=>'Z'
,p_column_label=>'ARM'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9475838678920163155)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'762045'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'BLOCK_ARM:PTINTL:SCRNO:RANDOMNO:STATUS:SITE:VISIT_2_IPS:'
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
,p_break_on=>'0:0:0:0:0:SITE'
,p_break_enabled_on=>'0:0:0:0:0:SITE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9475839153547163159)
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
 p_id=>wwv_flow_imp.id(9475839539291163161)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;     width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp.component_end;
end;
/
