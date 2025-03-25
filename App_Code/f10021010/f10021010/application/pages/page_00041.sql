prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_tab_set=>'TS1'
,p_name=>'Audit Trail'
,p_step_title=>'Audit Trail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(9916884921573203154)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(785166649427949727)
,p_plug_name=>'Audit Trail 5'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180572024407887)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT GET_COLUMN_LABLE_NAME(126, COLUMN_NAME)  COLUMN_NAME,',
'       ACTION,',
'       USERNAME,',
'       to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'',
' CASE /*WHEN :P41_TABLE_NAME =''EDC_DEPOT_CONTACTS'' AND COLUMN_NAME = ''STATUS'' THEN',
'              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,OLD_VALUE),OLD_VALUE)*/',
'      WHEN :P41_TABLE_NAME =''EDC_DEPOT_CONTACTS'' AND COLUMN_NAME = ''STUDY_SITE_ID'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES_ID'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(OLD_VALUE),OLD_VALUE)',
'      ELSE ',
'            OLD_VALUE',
' END OLD_VALUE,',
'',
' CASE /*WHEN :P41_TABLE_NAME =''EDC_DEPOT_CONTACTS'' AND COLUMN_NAME = ''STATUS'' THEN',
'           DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,NEW_VALUE),NEW_VALUE) */',
'      WHEN :P41_TABLE_NAME =''EDC_DEPOT_CONTACTS'' AND COLUMN_NAME = ''STUDY_SITES_ID'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES_ID'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(NEW_VALUE),NEW_VALUE)     ',
'     ELSE',
'           NEW_VALUE',
' END NEW_VALUE,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE ',
'TABLE_NAME = :P41_TABLE_NAME',
'AND TABLE_PK_VALUE = :P41_PK_ID',
'AND COLUMN_NAME NOT IN(''DEPOT_CONTACT_ID'',''STUDY_ID'') AND GET_COLUMN_LABLE_NAME(126, COLUMN_NAME) IS NOT NULL',
'UNION',
'SELECT GET_COLUMN_LABLE_NAME(134, COLUMN_NAME)  COLUMN_NAME,',
'       ACTION,',
'       USERNAME,',
'       to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_DEPOT'' AND COLUMN_NAME = ''STATUS'' THEN',
'              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_DEPOT'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(OLD_VALUE),OLD_VALUE)',
'      ELSE ',
'            OLD_VALUE',
' END OLD_VALUE,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_DEPOT'' AND COLUMN_NAME = ''STATUS'' THEN',
'           DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_DEPOT'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(NEW_VALUE),NEW_VALUE)     ',
'     ELSE',
'           NEW_VALUE',
' END NEW_VALUE,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE ',
'TABLE_NAME = ''EDC_DEPOT''',
'AND TABLE_PK_VALUE = :P41_PK_ID ',
'AND COLUMN_NAME NOT IN(''DEPOT_ID'',''STUDY_ID'') AND GET_COLUMN_LABLE_NAME(134, COLUMN_NAME) IS NOT NULL',
'UNION',
'SELECT GET_COLUMN_LABLE_NAME(23, COLUMN_NAME)  COLUMN_NAME,',
'       ACTION,',
'       USERNAME,',
'       to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_SPONSOR'' AND COLUMN_NAME = ''STATUS'' THEN',
'              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_SPONSOR'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(OLD_VALUE),OLD_VALUE)',
'      ELSE ',
'            OLD_VALUE',
' END OLD_VALUE,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_SPONSOR'' AND COLUMN_NAME = ''STATUS'' THEN',
'           DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_SPONSOR'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(NEW_VALUE),NEW_VALUE)     ',
'     ELSE',
'           NEW_VALUE',
' END NEW_VALUE,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE ',
'TABLE_NAME = ''EDC_SPONSOR''',
'AND TABLE_PK_VALUE = :P41_PK_ID',
'AND COLUMN_NAME NOT IN(''SPONSOR_ID'',''STUDY_ID'') AND GET_COLUMN_LABLE_NAME(23, COLUMN_NAME) IS NOT NULL',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_TABLE_NAME,P41_PK_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P41_TABLE_NAME IN (''EDC_DEPOT_CONTACTS'',''EDC_DEPOT'',''EDC_SPONSOR'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Audit Trail 5'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(785166894185949729)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KOTHA.SAIMAHESH'
,p_internal_uid=>33508381631701917
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785166947938949730)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785167103105949731)
,p_db_column_name=>'ACTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785167125498949732)
,p_db_column_name=>'USERNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785167235674949733)
,p_db_column_name=>'LOG_TIMESTAMP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Timestamp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785167403585949734)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785167512262949735)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785167544737949736)
,p_db_column_name=>'REASON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(785520076796687935)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'338616'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:ACTION:USERNAME:LOG_TIMESTAMP:OLD_VALUE:NEW_VALUE:REASON'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(785168884298949749)
,p_plug_name=>'Audit Trail 6'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180572024407887)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT GET_COLUMN_LABLE_NAME(132, COLUMN_NAME)  COLUMN_NAME,',
'       ACTION,',
'       USERNAME,',
'       to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_COUNTRY_MST'' AND COLUMN_NAME = ''STATUS'' THEN',
'              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_COUNTRY_MST'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(OLD_VALUE),OLD_VALUE)',
'      ELSE ',
'            OLD_VALUE',
' END OLD_VALUE,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_SPONSOR'' AND COLUMN_NAME = ''STATUS'' THEN',
'           DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_COUNTRY_MST'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(NEW_VALUE),NEW_VALUE)     ',
'     ELSE',
'           NEW_VALUE',
' END NEW_VALUE,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE ',
'TABLE_NAME = ''EDC_COUNTRY_MST''',
'AND TABLE_PK_VALUE = :P41_PK_ID',
'AND COLUMN_NAME NOT IN(''COUNTRY_ID'',''STUDY_ID'') AND GET_COLUMN_LABLE_NAME(132, COLUMN_NAME) IS NOT NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_TABLE_NAME,P41_PK_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P41_TABLE_NAME IN (''EDC_COUNTRY_MST'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Audit Trail 6'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(785168985657949750)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KOTHA.SAIMAHESH'
,p_internal_uid=>33510473103701938
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785169041942949751)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785169150324949752)
,p_db_column_name=>'ACTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785169220835949753)
,p_db_column_name=>'USERNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785169392568949754)
,p_db_column_name=>'LOG_TIMESTAMP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Timestamp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785169476102949755)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785169550904949756)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(785169653591949757)
,p_db_column_name=>'REASON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(787011247718447830)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'353528'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:ACTION:USERNAME:LOG_TIMESTAMP:OLD_VALUE:NEW_VALUE:REASON'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2006598717354281508)
,p_plug_name=>'Audit Trail 4'
,p_region_name=>'audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT GET_COLUMN_LABLE_NAME(136, COLUMN_NAME)  COLUMN_NAME,',
'       ACTION,',
'       USERNAME,',
'       to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_STUDY_DEPOT'' AND COLUMN_NAME = ''STATUS'' THEN',
'              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY_DEPOT'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(OLD_VALUE),OLD_VALUE)',
'      ELSE ',
'            OLD_VALUE',
' END OLD_VALUE,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_STUDY_DEPOT'' AND COLUMN_NAME = ''STATUS'' THEN',
'           DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY_DEPOT'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(NEW_VALUE),NEW_VALUE)     ',
'     ELSE',
'           NEW_VALUE',
' END NEW_VALUE,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE ',
'TABLE_NAME = :P41_TABLE_NAME',
'AND TABLE_PK_VALUE = :P41_PK_ID',
'AND COLUMN_NAME NOT IN(''STUDY_DEPOT_ID'',''USER_ID'',''STUDY_ID'');',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_COLUMN_NAME'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P41_TABLE_NAME IN (''EDC_STUDY_DEPOT'')'
,p_plug_display_when_cond2=>'PLSQL'
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
'SELECT GET_COLUMN_LABLE_NAME(136, COLUMN_NAME)  COLUMN_NAME,',
'       ACTION,',
'       USERNAME,',
'       to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_STUDY_DEPOT'' AND COLUMN_NAME = ''STATUS'' THEN',
'              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY_DEPOT'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(OLD_VALUE),OLD_VALUE)',
'      ELSE ',
'            OLD_VALUE',
' END OLD_VALUE,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_STUDY_DEPOT'' AND COLUMN_NAME = ''STATUS'' THEN',
'           DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY_DEPOT'' AND COLUMN_NAME = ''STUDY_SITES'' THEN',
'              DECODE(COLUMN_NAME,''STUDY_SITES'',CRO_IWRS_PKG.GET_DEPOT_SITE_NM_FOR_AUDIT(NEW_VALUE),NEW_VALUE)     ',
'     ELSE',
'           NEW_VALUE',
' END NEW_VALUE,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE ',
'TABLE_NAME = :P41_TABLE_NAME',
'AND TABLE_PK_VALUE = :P41_PK_ID',
'AND COLUMN_NAME NOT IN(''STUDY_DEPOT_ID'',''USER_ID'',''STUDY_ID'');',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2006598772546281509)
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
,p_owner=>'VISHAL.MAVANI'
,p_internal_uid=>198390107489327526
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2006598895494281510)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2006598992101281511)
,p_db_column_name=>'ACTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2006599142507281512)
,p_db_column_name=>'USERNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2006599206039281513)
,p_db_column_name=>'LOG_TIMESTAMP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Timestamp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2006599327908281514)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2006599436753281515)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2006599524739281516)
,p_db_column_name=>'REASON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2007456588009825675)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1992480'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:ACTION:USERNAME:LOG_TIMESTAMP:OLD_VALUE:NEW_VALUE:REASON'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4134995345742634207)
,p_plug_name=>'Audit Trail 3'
,p_region_name=>'audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT case when TABLE_NAME = ''EDC_STUDY'' then GET_COLUMN_LABLE_NAME(3, COLUMN_NAME) ',
'            when TABLE_NAME = ''EDC_STUDY_DOC_GROUP'' then GET_COLUMN_LABLE_NAME(8, COLUMN_NAME) ',
'            when TABLE_NAME = ''EDC_STUDY_ARM'' then GET_COLUMN_LABLE_NAME(149, COLUMN_NAME) ',
'            when TABLE_NAME = ''EDC_STUDY_SITES'' then GET_COLUMN_LABLE_NAME(17, COLUMN_NAME) ',
'            when TABLE_NAME = ''EDC_SITE_CONTACTS'' then GET_COLUMN_LABLE_NAME(18, COLUMN_NAME)',
'            when TABLE_NAME = ''EDC_STUDY_ARM_BLOCK'' then GET_COLUMN_LABLE_NAME(188, COLUMN_NAME) ',
'            when TABLE_NAME = ''EDC_STUDY_CONTACT'' then GET_COLUMN_LABLE_NAME(21, COLUMN_NAME) ',
'       end COLUMN_NAME,',
'       ACTION,',
'USERNAME,to_char(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_STUDY_SITES'' AND COLUMN_NAME = ''STATUS'' THEN',
'              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(11,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_SITE_CONTACTS'' AND COLUMN_NAME = ''DESIGNATION'' THEN',
'                              DECODE(COLUMN_NAME,''DESIGNATION'',GET_LOV_VALUES(10,OLD_VALUE),OLD_VALUE) ',
'      WHEN :P41_TABLE_NAME =''EDC_SITE_CONTACTS'' AND COLUMN_NAME = ''STATUS'' THEN                              ',
'                              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_SITE_CONTACTS'' AND COLUMN_NAME = ''ROLE'' THEN                              ',
'                              DECODE(COLUMN_NAME,''ROLE'',GET_LOV_VALUES(12,OLD_VALUE),OLD_VALUE)          ',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY_CONTACT'' AND COLUMN_NAME = ''STATUS'' THEN                              ',
'                              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(14,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY'' AND COLUMN_NAME = ''STUDY_PHASE'' THEN                                ',
'                              DECODE(COLUMN_NAME,''STUDY_PHASE'',GET_LOV_VALUES(6,OLD_VALUE),OLD_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY'' AND COLUMN_NAME = ''CALC_SCH_VISIT_FROM'' THEN                                ',
'                              DECODE(COLUMN_NAME,''CALC_SCH_VISIT_FROM'',GET_LOV_VALUES(8,OLD_VALUE),OLD_VALUE)',
'       ',
'     WHEN :P41_TABLE_NAME =''EDC_STUDY'' AND COLUMN_NAME = ''DRUG_SHIPMENT'' THEN                                ',
'                              DECODE(COLUMN_NAME,''DRUG_SHIPMENT'',GET_LOV_VALUES(7,OLD_VALUE),OLD_VALUE)     ',
'     WHEN :P41_TABLE_NAME =''EDC_STUDY'' AND COLUMN_NAME = ''STUDY_ACTIVE'' THEN                                ',
'                              DECODE(COLUMN_NAME,''STUDY_ACTIVE'',GET_LOV_VALUES(2,OLD_VALUE),OLD_VALUE)               ',
'                                                          ',
'ELSE',
'      DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(36,OLD_VALUE),OLD_VALUE)',
'END OLD_VALUE,',
'',
' CASE WHEN :P41_TABLE_NAME =''EDC_STUDY_SITES'' AND COLUMN_NAME = ''STATUS'' THEN',
'              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(11,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_SITE_CONTACTS'' AND COLUMN_NAME = ''DESIGNATION'' THEN',
'                              DECODE(COLUMN_NAME,''DESIGNATION'',GET_LOV_VALUES(10,NEW_VALUE),NEW_VALUE) ',
'      WHEN :P41_TABLE_NAME =''EDC_SITE_CONTACTS'' AND COLUMN_NAME = ''STATUS'' THEN                              ',
'                              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(1,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_SITE_CONTACTS'' AND COLUMN_NAME = ''ROLE'' THEN                              ',
'                              DECODE(COLUMN_NAME,''ROLE'',GET_LOV_VALUES(12,NEW_VALUE),NEW_VALUE)          ',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY_CONTACT'' AND COLUMN_NAME = ''STATUS'' THEN                              ',
'                              DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(14,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY'' AND COLUMN_NAME = ''STUDY_PHASE'' THEN                                ',
'                              DECODE(COLUMN_NAME,''STUDY_PHASE'',GET_LOV_VALUES(6,NEW_VALUE),NEW_VALUE)',
'      WHEN :P41_TABLE_NAME =''EDC_STUDY'' AND COLUMN_NAME = ''CALC_SCH_VISIT_FROM'' THEN                                ',
'                              DECODE(COLUMN_NAME,''CALC_SCH_VISIT_FROM'',GET_LOV_VALUES(8,NEW_VALUE),NEW_VALUE)',
'       ',
'     WHEN :P41_TABLE_NAME =''EDC_STUDY'' AND COLUMN_NAME = ''DRUG_SHIPMENT'' THEN                                ',
'                              DECODE(COLUMN_NAME,''DRUG_SHIPMENT'',GET_LOV_VALUES(7,NEW_VALUE),NEW_VALUE)     ',
'     WHEN :P41_TABLE_NAME =''EDC_STUDY'' AND COLUMN_NAME = ''STUDY_ACTIVE'' THEN                                ',
'                              DECODE(COLUMN_NAME,''STUDY_ACTIVE'',GET_LOV_VALUES(2,NEW_VALUE),NEW_VALUE)      ',
'                              ',
' ELSE',
'    DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(36,NEW_VALUE),NEW_VALUE)',
' END NEW_VALUE,',
'REASON ',
'fROM AUDIT_TRAIL',
'WHERE --TABLE_NAME IN(''EDC_STUDY'',''EDC_STUDY_DOC_GROUP'',''EDC_STUDY_ARM'',''EDC_STUDY_SITES'',''EDC_SITE_CONTACTS'',''EDC_STUDY_ARM_BLOCK'',''EDC_STUDY_CONTACT'')',
'TABLE_NAME = :P41_TABLE_NAME',
'AND TABLE_PK_VALUE = :P41_PK_ID',
'AND ((TABLE_NAME =''EDC_STUDY_SITES'' AND (GET_COLUMN_LABLE_NAME(17, COLUMN_NAME) IS NOT NULL) AND GET_COLUMN_LABLE_NAME(17, COLUMN_NAME) NOT IN (''Study Site Id'',''Study Id'') ) OR',
'      (TABLE_NAME =''EDC_STUDY'' AND (GET_COLUMN_LABLE_NAME(3, COLUMN_NAME) IS NOT NULL)) OR',
'      (TABLE_NAME =''EDC_STUDY_DOC_GROUP'' AND (GET_COLUMN_LABLE_NAME(8, COLUMN_NAME) IS NOT NULL)) OR',
'      (TABLE_NAME =''EDC_STUDY_ARM'' AND (GET_COLUMN_LABLE_NAME(149, COLUMN_NAME) IS NOT NULL)) OR',
'      (TABLE_NAME =''EDC_SITE_CONTACTS'' AND (GET_COLUMN_LABLE_NAME(18, COLUMN_NAME) IS NOT NULL) AND GET_COLUMN_LABLE_NAME(18, COLUMN_NAME) NOT IN (''Study Site Id'',''Site Contact Id'')) OR',
'      (TABLE_NAME =''EDC_STUDY_ARM_BLOCK'' AND (GET_COLUMN_LABLE_NAME(188, COLUMN_NAME) IS NOT NULL)) OR',
'      (TABLE_NAME =''EDC_STUDY_CONTACT'' AND (GET_COLUMN_LABLE_NAME(21, COLUMN_NAME) IS NOT NULL) AND GET_COLUMN_LABLE_NAME(21, COLUMN_NAME) NOT IN (''Study Contact Id'',''Study Id'',''<B> Deactivate Date </B>'',''Assigned Role''))) '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_COLUMN_NAME'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P41_TABLE_NAME IN (''EDC_STUDY'',''EDC_STUDY_DOC_GROUP'',''EDC_STUDY_ARM'',''EDC_SITE_CONTACTS'',''EDC_STUDY_SITES'',''EDC_STUDY_ARM_BLOCK'',''EDC_STUDY_CONTACT'')'
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(4134995510431634209)
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
,p_owner=>'MILAN.KADIA'
,p_internal_uid=>236916762683927905
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4134995557037634210)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4134995720206634211)
,p_db_column_name=>'ACTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4134995818145634212)
,p_db_column_name=>'USERNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4134995894053634213)
,p_db_column_name=>'LOG_TIMESTAMP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Timestamp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4134996019664634214)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4134996132420634215)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4134996240542634216)
,p_db_column_name=>'REASON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4135044405682813762)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2369657'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:ACTION:USERNAME:LOG_TIMESTAMP:OLD_VALUE:NEW_VALUE:REASON'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7187393540614701293)
,p_plug_name=>'Audit Trail 2'
,p_region_name=>'audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  --GET_COLUMN_LABLE_NAME(37, COLUMN_NAME) COLUMN_NAME',
'(CASE WHEN COLUMN_NAME = ''UNBLINDED_RQ_BY'' THEN ''Unblinding Request By''',
'           WHEN COLUMN_NAME = ''UNBLINDED_RQ_DATE'' THEN ''Unblinding Request Date''',
'           when column_name = ''UNBLINDED_ON'' THEN ''Unblinding on''',
'           WHEN COLUMN_NAME = ''UNBLINDED_BY'' THEN ''Unblinding by''',
'           WHEN COLUMN_NAME = ''UNBLIND_REJ_REASON'' THEN ''Unblinded Rejected Reason''',
'           ELSE GET_COLUMN_LABLE_NAME(37, COLUMN_NAME)',
'      END ) AS COLUMN_NAME',
'     ',
'     , ACTION',
'     , USERNAME',
'     , TO_CHAR(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP',
'     , DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(36,OLD_VALUE),',
'              --''UNBLINDED_ON'',TO_CHAR(OLD_VALUE,''DD-MON-YYYY HH12:MI AM''),',
'              OLD_VALUE) OLD_VALUE',
'     , DECODE(COLUMN_NAME,''STATUS'',GET_LOV_VALUES(36,NEW_VALUE),',
'              --''UNBLINDED_ON'',TO_CHAR(NEW_VALUE,''DD-MON-YYYY HH12:MI AM''),',
'              NEW_VALUE) NEW_VALUE',
'     , REASON',
'     , APEX_ITEM.HIDDEN(1, AUDIT_LOG_ID)||APEX_ITEM.TEXTAREA(2,REASON,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) RFC',
'     , APEX_ITEM.TEXTAREA(3,USERNAME,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) ACB',
'  FROM AUDIT_TRAIL',
' WHERE TABLE_NAME = ''EDC_PATIENT_PROFILE''',
'   AND TABLE_PK_VALUE = :P41_PK_ID',
'   AND COLUMN_NAME NOT IN (''EPRO_STATUS'',''USER_LANG'',''USER_REGION'',''EPRO_PASSWORD'')',
' UNION',
'SELECT ''Language'' COLUMN_NAME',
'     , ACTION',
'     , USERNAME',
'     , TO_CHAR(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP',
'     , DECODE(OLD_VALUE,''EN'',''English'',''ES'',''Spanish'',''PT'',''Portuguese'') OLD_VALUE',
'     , DECODE(NEW_VALUE,''EN'',''English'',''ES'',''Spanish'',''PT'',''Portuguese'') NEW_VALUE',
'     , REASON',
'     , APEX_ITEM.HIDDEN(1, AUDIT_LOG_ID)||APEX_ITEM.TEXTAREA(2,REASON,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) RFC',
'     , APEX_ITEM.TEXTAREA(3,USERNAME,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) ACB',
'  FROM AUDIT_TRAIL',
' WHERE TABLE_NAME = ''EDC_PATIENT_PROFILE''',
'   AND TABLE_PK_VALUE = :P41_PK_ID',
'   AND COLUMN_NAME IN (''USER_LANG'')',
' UNION',
'SELECT ''Password'' COLUMN_NAME',
'     , ACTION',
'     , USERNAME',
'     , TO_CHAR(LOG_TIMESTAMP,''DD-MON-YYYY HH:MI PM'') LOG_TIMESTAMP',
'     , OLD_VALUE',
'     , NEW_VALUE',
'     , REASON',
'     , APEX_ITEM.HIDDEN(1, AUDIT_LOG_ID)||APEX_ITEM.TEXTAREA(2,REASON,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) RFC',
'     , APEX_ITEM.TEXTAREA(3,USERNAME,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) ACB',
'  FROM AUDIT_TRAIL',
' WHERE TABLE_NAME = ''EDC_PATIENT_PROFILE''',
'   AND TABLE_PK_VALUE = :P41_PK_ID',
'   AND COLUMN_NAME IN (''EPRO_PASSWORD'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_COLUMN_NAME'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P41_TABLE_NAME IN (''EDC_PATIENT_PROFILE'')'
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(7187393747524701295)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Audit Trail not recorded yet...'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KRUNAL.BHATT'
,p_internal_uid=>539486780417929503
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187394032613701298)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187394129002701299)
,p_db_column_name=>'ACTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Action Taken'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187394704649701305)
,p_db_column_name=>'USERNAME'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187394847408701306)
,p_db_column_name=>'LOG_TIMESTAMP'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Log timestamp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187394889236701307)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Old value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187395054876701308)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'New value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187395114999701309)
,p_db_column_name=>'REASON'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2469477823992480079)
,p_db_column_name=>'RFC'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Reason For Change'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':APP_EDC_ROLE_ID = 13'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2469477947460480080)
,p_db_column_name=>'ACB'
,p_display_order=>110
,p_column_identifier=>'P'
,p_column_label=>'Action By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':APP_EDC_ROLE_ID = 13'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7187407359117706281)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5395004'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:ACTION:USERNAME:LOG_TIMESTAMP:OLD_VALUE:NEW_VALUE:REASON:RFC:ACB'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7725924954868784647)
,p_plug_name=>'Audit Trail FOR IP DETAIL'
,p_region_name=>'audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select ',
'                decode(action,''I'',''Insert'',''U'',''Update'',''D'',''Delete'') action,',
'                        action_date,',
'                        action_by,',
'                        ',
'                        GET_LOV_VALUES(42,old_number)||'' > ''||GET_LOV_VALUES(42,new_number)',
'                         change',
'           from EDC_IP_SHIP_HIST',
'           WHERE TABLE_NAME = ''EDC_IP_DETAIL''',
'           AND COLUMN_NAME = ''IP_STATUS''',
'           AND PK1 = :P41_PK_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_COLUMN_NAME'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P41_TABLE_NAME IN (''EDC_IP_DETAIL'')'
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(7725925164935784649)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Audit Trail not recorded yet...'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KRUNAL.BHATT'
,p_internal_uid=>538670523061916806
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7725925546217784653)
,p_db_column_name=>'ACTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Action Taken'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7725925733533784654)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Action Taken On'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7725925810273784655)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Action Taken By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7725925943791784657)
,p_db_column_name=>'CHANGE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Old Value > New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7726004253502589980)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5387497'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACTION:ACTION_DATE:ACTION_BY:CHANGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10170903306436766207)
,p_plug_name=>'Audit Trail 1'
,p_region_name=>'audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'       TABLE_NAME,',
'       --GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) COLUMN_NAME,',
'       case WHEN :APP_EDC_PARAM_ID=2 AND :P41_PAGE_ID=1001 AND COLUMN_NAME=''INTIAL_FIGO_STATING'' THEN ',
'       ''Initial Clinical FIGO Staging''',
'       when :P41_PAGE_ID = 1001 then',
'       REPLACE(REPLACE(REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'',''''),''<br>'',''''),''</br>'','''')',
'        else GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end COLUMN_NAME,',
'       ACTION,',
'       ACTION_DATE,',
'       ACTION_BY,',
'       --TABLE_PRIMARY_KEY,',
'       TABLE_ROW_VERSION,',
'       CHANGE,',
'       REASON_FOR_CHANGE',
'     , APEX_ITEM.HIDDEN(1, ID)||APEX_ITEM.TEXTAREA(2,REASON_FOR_CHANGE,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) RFC',
'     , APEX_ITEM.TEXTAREA(3,ACTION_BY,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) ACB',
'  FROM IWRS_CRF_DM_AUDIT_V',
' WHERE TABLE_NAME = :P41_TABLE_NAME',
'   AND GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME) ',
'   AND COLUMN_NAME <> ''DATE3''',
'   AND :P41_TABLE_NAME IN (''IWRS_CRF_DM'')',
'   AND        REPLACE(REPLACE(REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'',''''),''<br>'',''''),''</br>'','''') NOT IN(''Not Defined'')',
'UNION',
'SELECT ID,',
'       TABLE_NAME,',
'      -- GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) COLUMN_NAME,',
'      case when :P41_PAGE_ID = 1001 then',
'       REPLACE(REPLACE(REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'',''''),''<br>'',''''),''</br>'','''')',
'        else GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end COLUMN_NAME,',
'        CASE WHEN TABLE_NAME = ''EDC_IP_SHIPMENT_REQ'' AND CHANGE = '' > Open'' THEN ''Insert''',
'             WHEN TABLE_NAME = ''EDC_IP_SHIPMENT'' AND CHANGE = '' > Draft'' THEN ''Insert''',
'             WHEN TABLE_NAME = ''EDC_IP_SHIPMENT'' AND CHANGE = '' > Shipment Created'' THEN ''Insert''',
'            ELSE ACTION',
'        END ACTION,',
'       ACTION_DATE,',
'       ACTION_BY,',
'       --TABLE_PRIMARY_KEY,',
'       TABLE_ROW_VERSION,',
'       CHANGE,',
'       REASON_FOR_CHANGE REASON_FOR_CHANGE',
'     , APEX_ITEM.HIDDEN(1, ID)||APEX_ITEM.TEXTAREA(2,REASON_FOR_CHANGE,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) RFC',
'     , APEX_ITEM.TEXTAREA(3,ACTION_BY,1,20,''style="vertical-align: middle;"''||CASE WHEN UPPER(ACTION) IN (''INSERT'',''DELETE'') THEN ''readonlY'' END) ACB',
'  FROM EDC_IP_SHIP_HIST_AUDIT_V',
' WHERE TABLE_NAME = :P41_TABLE_NAME',
'   AND GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME)',
'   AND :P41_TABLE_NAME IN (''EDC_IP_SHIPMENT'', ''EDC_IP_SHIPMENT_REQ'')',
'   and ACTION NOT IN (''Delete'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_COLUMN_NAME,P41_TABLE_NAME,P41_PK_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P41_TABLE_NAME IN (''IWRS_CRF_DM'' , ''EDC_IP_SHIPMENT'', ''EDC_IP_SHIPMENT_REQ'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10170903321026766207)
,p_name=>'Audit Trail'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Audit Trail not recorded yet...'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>286359010455037151
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170903756275766215)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170904113540766217)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170904587976766217)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170904997461766217)
,p_db_column_name=>'ACTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Action Taken'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170905389418766218)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Action Taken On'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170905746025766218)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Action Taken By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170906578060766219)
,p_db_column_name=>'TABLE_ROW_VERSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Table Row Version'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170906989210766219)
,p_db_column_name=>'CHANGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Old Value > New Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10170907325533766219)
,p_db_column_name=>'REASON_FOR_CHANGE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Reason For Change'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2451618107065608172)
,p_db_column_name=>'RFC'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Reason For Change'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':APP_EDC_ROLE_ID = 13'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2451618249825608174)
,p_db_column_name=>'ACB'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Action By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':APP_EDC_ROLE_ID = 13'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10170907734145766705)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2863635'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TABLE_NAME:COLUMN_NAME:ACTION:ACTION_DATE:ACTION_BY:TABLE_ROW_VERSION:CHANGE:REASON_FOR_CHANGE:RFC:ACB'
,p_sort_column_1=>'ACTION_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10171619295449174303)
,p_plug_name=>'Assigned Kit Audit Trail'
,p_region_name=>'ip_audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'      TABLE_NAME,',
'      --NVL(GET_COLUMN_LABLE_NAME(1001, COLUMN_NAME),COLUMN_NAME) COLUMN_NAME,',
'      DECODE(COLUMN_NAME,''CREATED_DT'',''Assigned Kit Date/Time Stamp'',''DISPENSE_TIME'',''Dispensed Kit Date/Time Stamp'',''APP_DT'',''Approval date'',''APP_BY'',''Approve By'',''RPLC_RSN'',''Replace reason'',''IP_ID'',''Kit'',''APP_FLG'',''Approval Flag'',COLUMN_NAME) COLUM'
||'N_NAME,',
'      ACTION,',
'      ACTION_DATE,',
'      ACTION_BY,',
'      --TABLE_PRIMARY_KEY,',
'      TABLE_ROW_VERSION,',
'      CHANGE,',
'      REASON_FOR_CHANGE',
' FROM IWRS_CRF_DM_AUDIT_V',
'WHERE TABLE_NAME = :P41_TABLE_NAME',
'  AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'  AND COLUMN_NAME NOT IN (''APP_BY'',''APP_DT'',''APP_FLG'',''RPLC_RSN'');'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_COLUMN_NAME'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P41_TABLE_NAME = ''IWRS_CRF_DM_IP'''
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'       TABLE_NAME,',
'       GET_COLUMN_LABLE_NAME(1001, COLUMN_NAME) COLUMN_NAME,',
'       ACTION,',
'       ACTION_DATE,',
'       ACTION_BY,',
'       --TABLE_PRIMARY_KEY,',
'       TABLE_ROW_VERSION,',
'       CHANGE,',
'       REASON_FOR_CHANGE',
'  FROM IWRS_CRF_DM_AUDIT_V',
' WHERE TABLE_NAME = :P41_TABLE_NAME',
'   AND TABLE_PRIMARY_KEY IN (SELECT DIP_ID',
'                               FROM IWRS_CRF_DM_IP',
'                              WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'                            )',
'   --AND GET_COLUMN_LABLE_NAME(1001, COLUMN_NAME) IS NOT NULL',
'   --AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   --AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME)'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10171619538690174307)
,p_name=>'Audit Trail'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Audit Trail not recorded yet...'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>287075228118445251
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171619709429174311)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171620102989174313)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171620451006174313)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171620823285174313)
,p_db_column_name=>'ACTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Action Taken'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171621265601174314)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Action Taken On'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171621680291174314)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Action Taken By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171622096613174314)
,p_db_column_name=>'TABLE_ROW_VERSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Table Row Version'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171622433900174314)
,p_db_column_name=>'CHANGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Old Value > New Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10171622847709174315)
,p_db_column_name=>'REASON_FOR_CHANGE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Reason For Change'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10171623300447174316)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2870790'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TABLE_NAME:COLUMN_NAME:ACTION:ACTION_DATE:ACTION_BY:TABLE_ROW_VERSION:CHANGE:REASON_FOR_CHANGE'
,p_sort_column_1=>'ACTION_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10171624226856179548)
,p_plug_name=>'Items'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>5
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2451618139530608173)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10170903306436766207)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':APP_EDC_ROLE_ID = 13'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2469478024242480081)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7187393540614701293)
,p_button_name=>'SAVE2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':APP_EDC_ROLE_ID = 13'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7187393611113701294)
,p_name=>'P41_COLUMN_NAME_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7187393540614701293)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT case when :P41_PAGE_ID = 1001 then REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''') ',
'               else ',
'               GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end  D,',
'       COLUMN_NAME R',
'  FROM IWRS_CRF_DM_AUDIT_V',
' WHERE GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME)',
'UNION',
'SELECT DISTINCT case when :P41_PAGE_ID = 1001 then REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''') ',
'               else ',
'               GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end D,',
'       COLUMN_NAME R',
'  FROM EDC_IP_SHIP_HIST_AUDIT_V',
' WHERE GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- All --'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7725925076217784648)
,p_name=>'P41_COLUMN_NAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7725924954868784647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT case when :P41_PAGE_ID = 1001 then REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''') ',
'               else ',
'               GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end  D,',
'       COLUMN_NAME R',
'  FROM IWRS_CRF_DM_AUDIT_V',
' WHERE GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME)',
'UNION',
'SELECT DISTINCT case when :P41_PAGE_ID = 1001 then REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''') ',
'               else ',
'               GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end D,',
'       COLUMN_NAME R',
'  FROM EDC_IP_SHIP_HIST_AUDIT_V',
' WHERE GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- All --'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10170924293391851250)
,p_name=>'P41_PK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10171624226856179548)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10170926865543855647)
,p_name=>'P41_COLUMN_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10170903306436766207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  ',
'                case WHEN :APP_EDC_PARAM_ID=2 AND :P41_PAGE_ID=1001 AND COLUMN_NAME=''INTIAL_FIGO_STATING'' THEN ',
'       ''Initial Clinical FIGO Staging''',
'                when :P41_PAGE_ID = 1001 then ',
'                REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''')',
'               else ',
'               GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end  D,',
'       COLUMN_NAME R',
'  FROM IWRS_CRF_DM_AUDIT_V',
' WHERE GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME) AND COLUMN_NAME NOT IN (''CREATED_DT'')',
'   AND REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''') NOT IN(''Not Defined'')',
'UNION',
'SELECT DISTINCT case when :P41_PAGE_ID = 1001 then REPLACE(REPLACE(NVL(edc_util.GET_ITEM_LABEL(:APP_EDC_PARAM_ID,:P41_PAGE_ID,''P''||:P41_PAGE_ID||''_''||COLUMN_NAME),COLUMN_NAME)',
'               ,''<B>'',''''),''</B>'','''') ',
'               else ',
'               GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) end D,',
'       COLUMN_NAME R',
'  FROM EDC_IP_SHIP_HIST_AUDIT_V',
' WHERE GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P41_PK_ID',
'   AND COLUMN_NAME = NVL(:P41_COLUMN_NAME, COLUMN_NAME) ',
'   AND GET_COLUMN_LABLE_NAME(:P41_PAGE_ID, COLUMN_NAME) NOT IN(''Not Defined'')'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- All --'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10171594107214674617)
,p_name=>'P41_TABLE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10171624226856179548)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10172823716837494761)
,p_name=>'P41_PAGE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10171624226856179548)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10169553955986136781)
,p_name=>'Refresh Audit IR - on Item change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_COLUMN_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10169554086370136782)
,p_event_id=>wwv_flow_imp.id(10169553955986136781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10170903306436766207)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2451618346829608175)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Reason for change'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  FOR I IN 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'    IF :P41_TABLE_NAME IN (''IWRS_CRF_DM'') THEN',
'',
'      UPDATE EDC_REASON_FOR_CH_HIST',
'         SET REASON_FOR_CHANGE = APEX_APPLICATION.G_F02(I)',
'           , ACTION_BY = APEX_APPLICATION.G_F03(I)',
'       WHERE ID = APEX_APPLICATION.G_F01(I);',
'',
'    ELSIF :P41_TABLE_NAME IN (''EDC_IP_SHIPMENT'', ''EDC_IP_SHIPMENT_REQ'') THEN',
'',
'      UPDATE EDC_IP_SHIP_HIST',
'         SET REASON_FOR_CHANGE = APEX_APPLICATION.G_F02(I)',
'           , ACTION_BY = APEX_APPLICATION.G_F03(I)',
'       WHERE ID = APEX_APPLICATION.G_F01(I);',
'',
'    END IF;',
'  END LOOP;',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>2451618346829608175
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2469478126247480082)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Reason for change2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  FOR I IN 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'    IF :P41_TABLE_NAME IN (''EDC_PATIENT_PROFILE'') THEN',
'',
'      UPDATE AUDIT_TRAIL',
'         SET REASON = APEX_APPLICATION.G_F02(I)',
'           , USERNAME = APEX_APPLICATION.G_F03(I)',
'       WHERE AUDIT_LOG_ID = APEX_APPLICATION.G_F01(I);',
'',
'    END IF;',
'  END LOOP;',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE2'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>2469478126247480082
);
wwv_flow_imp.component_end;
end;
/
