prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
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
 p_id=>wwv_flow_imp.id(2688481648034683358)
,p_plug_name=>'Audit Trail'
,p_region_name=>'audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>35
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  decode(action,''I'',''Insert'',''U'',''Update'',''D'',''Delete'') ACTION,',
'        --DECODE(COLUMN_NAME,''ORG_IP_STATUS'',''Kit Status'',COLUMN_NAME) COLUMN_NAME,',
'        CASE WHEN :P76_PAGE_ID = 381 THEN',
'            DECODE(COLUMN_NAME,''IP_STATUS'',''Kit Status'',''SHIPPED_STATUS'',''Status'',COLUMN_NAME)',
'        WHEN :P76_PAGE_ID = 207 THEN',
'           DECODE(COLUMN_NAME,''IP_STATUS'',''Kit Status'',''RET_DTLS_COMMENT'',''Comment'',COLUMN_NAME)',
'        END COLUMN_NAME, ',
'        TO_CHAR(ACTION_DATE,''DD-MON-YY HH:MI AM'') ACTION_DATE,',
'      --to_char(from_tz(cast(ACTION_DATE as timestamp),''EST'')at time zone ''Asia/Calcutta'',''dd-mon-yy hh:mi AM'') ACTION_DATE,',
'        ACTION_BY,',
'        decode(data_type,',
'                        ''NUMBER'',CASE COLUMN_NAME ',
'                                                  WHEN ''SHIPPED_STATUS'' THEN GET_LOV_VALUES(26,OLD_NUMBER)||'' > ''||GET_LOV_VALUES(26,NEW_NUMBER)',
'                                                  WHEN ''ORG_IP_STATUS'' THEN GET_LOV_VALUES(42,OLD_NUMBER)||'' > ''||GET_LOV_VALUES(42,NEW_NUMBER)',
'                                                  WHEN ''IP_STATUS'' THEN GET_LOV_VALUES(42,OLD_NUMBER)||'' > ''||GET_LOV_VALUES(42,NEW_NUMBER)',
'                                 ELSE OLD_NUMBER||'' > ''||NEW_NUMBER END,',
'                        ''VARCHAR2'',substr(old_vc,1,50)||'' > ''||substr(new_vc,1,50),',
'                        --''DATE'',to_char(old_date,''DD-MON-YYY HH24:MI:SS'')||'' > ''||to_char(new_date,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''DATE'',to_char(old_date,''DD-MON-YYYY'')||'' > ''||to_char(new_date,''DD-MON-YYYY''),',
'                        ''TIMESTAMP'',to_char(old_ts,''DD-MON-YYYY HH24:MI:SS'')||'' > ''||to_char(new_ts,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''TIMESTAMP WITH TIMEZONE'',to_char(old_tswtz,''DD-MON-YYYY HH24:MI:SS'')||'' > ''||to_char(new_tswtz,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''TIMESTAMP WITH LOCAL TIMEZONE'',to_char(old_tswltz,''DD-MON-YYYY HH24:MI:SS'')||'' > ''||to_char(new_tswltz,''DD-MON-YYYY HH24:MI:SS''),',
'                        ''BLOB'',''length ''||dbms_lob.getlength(old_blob)||'' > ''||'' length ''||dbms_lob.getlength(new_blob),',
'                        ''CLOB'',dbms_lob.substr(old_vc,50,1)||'' > ''||dbms_lob.substr(new_vc,50,1)',
'                      ) change',
'FROM EDC_IP_SHIP_RETU_DTLS_HIST',
'WHERE TABLE_NAME = ''EDC_IP_SHIPMENT_RETURN_DTLS''',
'AND PK1 = :P76_PK_ID',
'AND COLUMN_NAME NOT IN(''PRE_IP_STATUS'',''ORG_IP_STATUS'')',
'--AND ((COLUMN_NAME IN (''RET_DTLS_COMMENT'',''IP_STATUS'') AND :P76_PAGE_ID= 207) OR (COLUMN_NAME IN (''SHIPPED_STATUS'',''IP_STATUS'') AND :P76_PAGE_ID= 381))',
'AND ((COLUMN_NAME IN (''RET_DTLS_COMMENT'',''IP_STATUS'')))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P76_PK_ID,P76_TABLE_NAME'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P76_TABLE_NAME = ''EDC_IP_SHIPMENT_RETURN_DTLS'''
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
 p_id=>wwv_flow_imp.id(2688481766765683359)
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
,p_owner=>'VISHAL.MAVANI'
,p_internal_uid=>242987027885864111
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688481963256683361)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Action Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688482047219683362)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688482141488683363)
,p_db_column_name=>'ACTION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Action Taken'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688482285246683364)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Action Taken By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2697668894854083249)
,p_db_column_name=>'CHANGE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Change'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2688516744938096905)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2430221'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:ACTION:ACTION_BY:ACTION_DATE::CHANGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4136266795420110105)
,p_plug_name=>'Audit Trail'
,p_region_name=>'audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>25
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT (SELECT BOTTLE_NO FROM EDC_IP_DETAIL WHERE IP_ID = TABLE_PRIMARY_KEY) KIT,',
'       ''IP Status'' COLUMN_NAME,',
'       ACTION,',
'       ACTION_BY,',
'       TO_CHAR(ACTION_DATE,''DD-MON-YY HH:MI AM'')ACTION_DATE,',
'       CHANGE,',
'       REASON_FOR_CHANGE',
'FROM EDC_IP_SHIP_HIST_AUDIT_V ',
'WHERE TABLE_NAME = :P76_TABLE_NAME',
'AND COLUMN_NAME = ''IP_STATUS''',
'AND TABLE_PRIMARY_KEY = :P76_PK_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P76_PK_ID,P76_TABLE_NAME'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P76_TABLE_NAME = ''EDC_IP_DETAIL'''
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
 p_id=>wwv_flow_imp.id(4136268017424110117)
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
,p_owner=>'MILAN.KADIA'
,p_internal_uid=>238189269676403813
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4136268321013110120)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4136268380786110121)
,p_db_column_name=>'ACTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Action Taken'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4136268631882110123)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Action Taken By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4136268912881110126)
,p_db_column_name=>'CHANGE'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Old Value > New Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4136268951920110127)
,p_db_column_name=>'REASON_FOR_CHANGE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Reason For Change'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2684546106178325694)
,p_db_column_name=>'KIT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Kit #'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2684546148735325695)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Action Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4136280799423155198)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2382021'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'KIT:COLUMN_NAME:ACTION:ACTION_DATE:ACTION_BY:CHANGE:REASON_FOR_CHANGE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8456085521099261003)
,p_plug_name=>'Items'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>5
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8456087174530261007)
,p_plug_name=>'Audit Trail'
,p_region_name=>'audit_trail_region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181564010407888)
,p_plug_display_sequence=>15
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'       TABLE_NAME,',
'       EDC_UTIL.GET_ITEM_LABEL_T(:P76_PAGE_ID, COLUMN_NAME) COLUMN_NAME,',
'       ACTION,',
'       ACTION_DATE  ACTION_DATE,',
'       ACTION_BY,',
'       TABLE_PRIMARY_KEY,',
'       TABLE_ROW_VERSION,',
'       CHANGE',
'  FROM EDC_IP_SHIP_DTLS_HIST_V',
' WHERE TABLE_NAME = :P76_TABLE_NAME',
'   AND EDC_UTIL.GET_ITEM_LABEL_T(:P76_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P76_PK_ID',
'   AND :P76_TABLE_NAME = ''EDC_IP_SHIPMENT_DTLS''',
' ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P76_PK_ID,P76_PAGE_ID,P76_TABLE_NAME'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P76_TABLE_NAME not in(''EDC_IP_DETAIL'',''EDC_IP_SHIPMENT_RETURN_DTLS'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'       TABLE_NAME,',
'       EDC_UTIL.GET_ITEM_LABEL_T(:P76_PAGE_ID, COLUMN_NAME) COLUMN_NAME,',
'       ACTION,',
'       ACTION_DATE+9/24 +1/24/2 ACTION_DATE,',
'       ACTION_BY,',
'       TABLE_PRIMARY_KEY,',
'       TABLE_ROW_VERSION,',
'       CHANGE',
'  FROM EDC_IP_SHIP_DTLS_HIST_V',
' WHERE TABLE_NAME = :P76_TABLE_NAME',
'   AND EDC_UTIL.GET_ITEM_LABEL_T(:P76_PAGE_ID, COLUMN_NAME) IS NOT NULL',
'   AND TABLE_PRIMARY_KEY = :P76_PK_ID',
'   AND :P76_TABLE_NAME = ''EDC_IP_SHIPMENT_DTLS''',
' UNION',
'SELECT ID,',
'       TABLE_NAME,',
'       EDC_UTIL.GET_ITEM_LABEL_T(:P76_PAGE_ID, COLUMN_NAME) COLUMN_NAME,',
'       ACTION,',
'       ACTION_DATE+9/24 +1/24/2 ACTION_DATE,',
'       ACTION_BY,',
'       TABLE_PRIMARY_KEY,',
'       TABLE_ROW_VERSION,',
'       CHANGE',
'  FROM EDC_IP_SHIP_RETU_DTLS_HIST_V',
' WHERE TABLE_NAME = :P76_TABLE_NAME   ',
'   AND TABLE_PRIMARY_KEY = :P76_PK_ID',
'   AND :P76_TABLE_NAME = ''EDC_IP_SHIPMENT_RETURN_DTLS''',
' UNION',
'SELECT ID,',
'       TABLE_NAME,',
'       ''IP Status'' AS COLUMN_NAME,',
'       ACTION,',
'       ACTION_DATE,',
'       ACTION_BY,',
'       PK1,',
'       TAB_ROW_VERSION,',
'       OLD_VC||'' > ''||NEW_VC CHANGE',
'  FROM EDC_REASON_FOR_CH_HIST',
' WHERE PK1 = :P76_PK_ID',
'   AND TABLE_NAME = :P76_TABLE_NAME',
'   AND :P76_TABLE_NAME = ''EDC_IP_DETAIL''',
'   AND PAGE_ID = :P76_PAGE_ID',
' ORDER BY 1 DESC'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8456087547851261008)
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>507656068438993617
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8456087597526261010)
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
 p_id=>wwv_flow_imp.id(8456088004499261012)
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
 p_id=>wwv_flow_imp.id(8456088423924261013)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8456088806643261013)
,p_db_column_name=>'ACTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Action Taken'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8456089262339261013)
,p_db_column_name=>'ACTION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Action Taken On'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8456089655464261014)
,p_db_column_name=>'ACTION_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Action Taken By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8456090026148261014)
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
 p_id=>wwv_flow_imp.id(8456090433090261015)
,p_db_column_name=>'CHANGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Old Value > New Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8456090867989261015)
,p_db_column_name=>'TABLE_PRIMARY_KEY'
,p_display_order=>19
,p_column_identifier=>'K'
,p_column_label=>'Table primary key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8456091197897261016)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5076598'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:CHANGE:ACTION_BY:ACTION_DATE:'
,p_sort_column_1=>'ACTION_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8456085937333261004)
,p_name=>'P76_PK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8456085521099261003)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8456086307549261006)
,p_name=>'P76_TABLE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8456085521099261003)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8456086771234261006)
,p_name=>'P76_PAGE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8456085521099261003)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8456091751474261020)
,p_name=>'Refresh Audit IR - on Item change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_COLUMN_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8456092265993261022)
,p_event_id=>wwv_flow_imp.id(8456091751474261020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8456087174530261007)
);
wwv_flow_imp.component_end;
end;
/
