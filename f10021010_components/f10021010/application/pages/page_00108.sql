prompt --application/pages/page_00108
begin
--   Manifest
--     PAGE: 00108
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
 p_id=>108
,p_tab_set=>'TS1'
,p_name=>'Location wise IP'
,p_step_title=>'Location wise IP'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3568001389637077465)
,p_plug_name=>'Block Status'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.STUDY_SITE_ID STUDY_SITE_ID2',
'     , A.STUDY_SITE_ID',
'     , (SELECT COUNT(DTLS_ID) FROM EDC_STUDY_ARM_BLOCK_DTLS WHERE PATIENT_PROFILE_ID IS NULL AND BLK_ID = A.BLK_ID) / 2 CNT',
'     , B.REPL_QTY',
'  FROM EDC_STUDY_ARM_BLOCK A',
'  JOIN EDC_STUDY_SITES B',
'    ON A.STUDY_SITE_ID = B.STUDY_SITE_ID'))
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3568001553760077466)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AVINASH.BHATIYA'
,p_internal_uid=>274525565789930302
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3568002361245077474)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3568002625835077477)
,p_db_column_name=>'CNT'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Available Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3568002718810077478)
,p_db_column_name=>'STUDY_SITE_ID2'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'SS ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3568573148080688165)
,p_db_column_name=>'REPL_QTY'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Replenish Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3568008559182082772)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2745326'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDY_SITE_ID2:STUDY_SITE_ID:CNT::REPL_QTY'
,p_sort_column_1=>'STUDY_SITE_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11991043109913285667)
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
 p_id=>wwv_flow_imp.id(11991056871688344851)
,p_plug_name=>'Admin Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;     width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_list_id=>wwv_flow_imp.id(3552315147236588000)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12003086461684901061)
,p_plug_name=>'Location wise IP'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  DEPOT AS (SELECT *',
'              FROM (SELECT COUNT(IP_ID) CNT, STUDY_ARM_ID, ''Depot - ''||REGION   REGION, TO_NUMBER(NULL) REPL_QTY, 1 ORD',
'                      FROM EDC_IP_DETAIL',
'                     WHERE NVL(IP_STATUS,1) = 1',
'                     GROUP BY STUDY_ARM_ID, REGION)',
'             PIVOT (SUM(CNT) FOR STUDY_ARM_ID IN (1 AS "TEST", 2 "PLACEBO"))),',
'',
'  SITES AS (SELECT *',
'              FROM (SELECT A.IP_ID, A.STUDY_ARM_ID, ''Available - ''||EDC_SITE_PKG.GET_CRO_STUDY_SITE_NAME(A.STUDY_SITE_ID) SITES, A.STUDY_SITE_ID, B.REPL_QTY, 2 ORD, B.REG_QTY',
'                      FROM EDC_IP_DETAIL A',
'                      JOIN EDC_STUDY_SITES B',
'                        ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'                       AND A.IP_STATUS = 3)',
'             PIVOT (COUNT(IP_ID) FOR STUDY_ARM_ID IN (1 AS "TEST", 2 "PLACEBO"))),',
'',
'  TRANS AS (SELECT *',
'              FROM (SELECT IP_ID, STUDY_ARM_ID, ''In Transit - ''||EDC_SITE_PKG.GET_CRO_STUDY_SITE_NAME(STUDY_SITE_ID) SITES, STUDY_SITE_ID, TO_NUMBER(NULL) REPL_QTY, 3 ORD',
'                      FROM EDC_IP_DETAIL',
'                     WHERE IP_STATUS IN (2,19)) ',
'             PIVOT (COUNT(IP_ID) FOR STUDY_ARM_ID IN (1 AS "TEST", 2 "PLACEBO"))),',
'',
'  SITE_SUB AS (SELECT STUDY_SITE_ID, COUNT(PATIENT_PROFILE_ID) CNT',
'                 FROM EDC_PATIENT_PROFILE',
'                --WHERE STATUS = 1',
'                GROUP BY STUDY_SITE_ID),',
'',
'  ALL_DET AS (SELECT REGION, TEST, PLACEBO, REPL_QTY, ORD, TO_NUMBER(NULL) CNT, 0 REG_QTY, 0 STUDY_SITE_ID',
'                FROM DEPOT',
'               UNION',
'              SELECT A.SITES, A.TEST, A.PLACEBO, A.REPL_QTY, A.ORD, NVL(B.CNT,0) CNT, A.REG_QTY, A.STUDY_SITE_ID',
'                FROM SITES A',
'                LEFT OUTER JOIN SITE_SUB B',
'                  ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'               UNION',
'              SELECT A.SITES, A.TEST, A.PLACEBO, A.REPL_QTY, A.ORD, NVL(B.CNT,0) CNT, 0 REG_QTY, A.STUDY_SITE_ID',
'                FROM TRANS A',
'                LEFT OUTER JOIN SITE_SUB B',
'                  ON A.STUDY_SITE_ID = B.STUDY_SITE_ID)',
'',
'  SELECT REGION, TEST, PLACEBO, REPL_QTY, ORD, CNT',
'       , CASE WHEN (SELECT COUNT(SITES) FROM TRANS WHERE STUDY_SITE_ID = A.STUDY_SITE_ID) > 0 THEN ''+/0''',
'              WHEN (REPL_QTY > TEST OR REPL_QTY > PLACEBO) THEN ''-''',
'         ELSE ''+/0'' END COLOR_CODE',
'       , REG_QTY',
'    FROM ALL_DET A',
'   ORDER BY ORD'))
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12003086580904901062)
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
,p_internal_uid=>8456641073883577721
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789237349163992551)
,p_db_column_name=>'TEST'
,p_display_order=>20
,p_column_identifier=>'AL'
,p_column_label=>'Test'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789237773239992551)
,p_db_column_name=>'PLACEBO'
,p_display_order=>30
,p_column_identifier=>'AM'
,p_column_label=>'Placebo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789015607767685481)
,p_db_column_name=>'ORD'
,p_display_order=>50
,p_column_identifier=>'AR'
,p_column_label=>'Ord'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789015788657685482)
,p_db_column_name=>'REPL_QTY'
,p_display_order=>60
,p_column_identifier=>'AS'
,p_column_label=>'Replenishment<br>Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3799308988994162742)
,p_db_column_name=>'CNT'
,p_display_order=>70
,p_column_identifier=>'AT'
,p_column_label=>'Total<br>Subject'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3568767336689624466)
,p_db_column_name=>'COLOR_CODE'
,p_display_order=>90
,p_column_identifier=>'AV'
,p_column_label=>'Req Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3568767401302624467)
,p_db_column_name=>'REG_QTY'
,p_display_order=>100
,p_column_identifier=>'AW'
,p_column_label=>'New<br>Shipment<br>Block<br>Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3306576680449131893)
,p_db_column_name=>'REGION'
,p_display_order=>110
,p_column_identifier=>'AX'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12009922706331789051)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2427938'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TEST:PLACEBO:REPL_QTY:REG_QTY:CNT:COLOR_CODE:REGION'
,p_sort_column_1=>'ORD'
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
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3568780574674741046)
,p_report_id=>wwv_flow_imp.id(12009922706331789051)
,p_name=>'Available'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COLOR_CODE'
,p_operator=>'='
,p_expr=>'+/0'
,p_condition_sql=>' (case when ("COLOR_CODE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''+/0''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#37C737'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3568780936384741047)
,p_report_id=>wwv_flow_imp.id(12009922706331789051)
,p_name=>'Required'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COLOR_CODE'
,p_operator=>'='
,p_expr=>'-'
,p_condition_sql=>' (case when ("COLOR_CODE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''-''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#E02F03'
,p_column_font_color=>'#FFFFFF'
);
wwv_flow_imp.component_end;
end;
/
