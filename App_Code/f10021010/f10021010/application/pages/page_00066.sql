prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_tab_set=>'TS1'
,p_name=>'IP Reconciliation Log'
,p_step_title=>'IP Reconciliation Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>'$(''section[class="uRegion uNoHeading  clearfix"]'').css({"margin-right":"5px"})'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(12146158257108328472)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576922027860641309)
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
 p_id=>wwv_flow_imp.id(10576922372640641310)
,p_plug_name=>'IP Reconciliation Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131340165911980)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'  KITS AS (SELECT B.SHIP_ID, A.BOTTLE_NO, A.IP_ID, B.SHIPPED_STATUS, A.PATIENT_PROFILE_ID, A.IP_STATUS',
'             FROM EDC_IP_DETAIL A',
'             JOIN EDC_IP_SHIPMENT_DTLS B',
'               ON A.IP_ID = B.IP_ID),',
'',
'  ALL_KITS AS (SELECT SHIP_ID, COUNT(*) KIT_COUNT, LISTAGG(BOTTLE_NO,'',<br>'') WITHIN GROUP(ORDER BY IP_ID) KIT_NUMBERS',
'                 FROM KITS',
'                GROUP BY SHIP_ID),',
'',
'  RET_KITS AS (SELECT SHIP_ID, COUNT(*) KIT_COUNT, LISTAGG(BOTTLE_NO,'',<br>'') WITHIN GROUP(ORDER BY IP_ID) KIT_NUMBERS',
'                 FROM KITS',
'                WHERE IP_STATUS = 8 --OR SHIPPED_STATUS = 99',
'                GROUP BY SHIP_ID),',
'',
'  USED_KIT AS (SELECT SHIP_ID, LISTAGG(BOTTLE_NO,'',<br>'') WITHIN GROUP(ORDER BY IP_ID) KIT_NUMBERS',
'                 FROM KITS',
'                WHERE PATIENT_PROFILE_ID IS NOT NULL',
'                GROUP BY SHIP_ID),',
'',
'  UNUSED_KIT AS (SELECT SHIP_ID, LISTAGG(BOTTLE_NO,'',<br>'') WITHIN GROUP(ORDER BY IP_ID) KIT_NUMBERS',
'                   FROM KITS',
'                  WHERE IP_STATUS = 3',
'                    AND PATIENT_PROFILE_ID IS NULL',
'                  GROUP BY SHIP_ID)',
'',
'  SELECT A.SHIP_ID,',
'         TO_CHAR(A.SHIP_REC_DT,''DD-MON-YY'') SHIP_DT,',
'         '''' NO_OF_BLOCKS,',
'         NVL(A.KITS,0) + NVL(A.PLACIBO_RUNIN,0) KIT_RCVD,',
'         (SELECT KIT_NUMBERS FROM ALL_KITS WHERE SHIP_ID = A.SHIP_ID) KIT_NUMBERS,',
'         NVL((SELECT KIT_COUNT FROM RET_KITS WHERE SHIP_ID = A.SHIP_ID),0) KIT_RETAINED,',
'         (SELECT KIT_NUMBERS FROM RET_KITS WHERE SHIP_ID = A.SHIP_ID) KIT_NUMBER,',
'         (SELECT KIT_NUMBERS FROM USED_KIT WHERE SHIP_ID = A.SHIP_ID) USED_KIT,',
'         (SELECT KIT_NUMBERS FROM UNUSED_KIT WHERE SHIP_ID = A.SHIP_ID) UNUSED_KIT,',
'         '''' COMMENTS,',
'         '''' DATE_RET_DEPOT,',
'         '''' REC_SIGN_DT,',
'         C.STUDY_NUMBER,',
'         A.STUDY_SITE_ID',
'    FROM EDC_IP_SHIPMENT A',
'    JOIN EDC_STUDY_SITES B',
'      ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'    JOIN EDC_STUDY C',
'      ON B.STUDY_ID = C.STUDY_ID',
'     AND B.STUDY_ID = :APP_EDC_STUDY_ID',
'     AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(B.STUDY_SITE_ID) <> 0',
'     AND A.SHIP_TYPE = 1',
'   ORDER BY A.SHIP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10576922793817641311)
,p_name=>'Accountability Log - Placebo Run-In'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
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
,p_owner=>'AVINASH.BHATIYA'
,p_internal_uid=>76337835912542311
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576922912341641312)
,p_db_column_name=>'SHIP_ID'
,p_display_order=>10
,p_column_identifier=>'AL'
,p_column_label=>'Ship id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576923730543641313)
,p_db_column_name=>'NO_OF_BLOCKS'
,p_display_order=>30
,p_column_identifier=>'AN'
,p_column_label=>'No. of<br>Blocks<br>Received'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576924074862641314)
,p_db_column_name=>'KIT_RCVD'
,p_display_order=>40
,p_column_identifier=>'AO'
,p_column_label=>'No. of kits<br>Received'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576924515550641314)
,p_db_column_name=>'KIT_NUMBERS'
,p_display_order=>50
,p_column_identifier=>'AP'
,p_column_label=>'Kit<br>Numbers'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576925326728641316)
,p_db_column_name=>'KIT_NUMBER'
,p_display_order=>70
,p_column_identifier=>'AR'
,p_column_label=>'Kit<br>Numbers'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576925687303641316)
,p_db_column_name=>'USED_KIT'
,p_display_order=>80
,p_column_identifier=>'AS'
,p_column_label=>'Used Kit #'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576926125249641317)
,p_db_column_name=>'UNUSED_KIT'
,p_display_order=>90
,p_column_identifier=>'AT'
,p_column_label=>'Unused Kit #'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576926528569641317)
,p_db_column_name=>'COMMENTS'
,p_display_order=>100
,p_column_identifier=>'AU'
,p_column_label=>'Comment'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576926935576641318)
,p_db_column_name=>'DATE_RET_DEPOT'
,p_display_order=>110
,p_column_identifier=>'AV'
,p_column_label=>'Date<br>Returned to Depot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10576927354148641318)
,p_db_column_name=>'REC_SIGN_DT'
,p_display_order=>120
,p_column_identifier=>'AW'
,p_column_label=>'Recorded By<br>Sign/date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577886478848516101)
,p_db_column_name=>'STUDY_NUMBER'
,p_display_order=>130
,p_column_identifier=>'AX'
,p_column_label=>'Project No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10577887400897516110)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>140
,p_column_identifier=>'BA'
,p_column_label=>'Site ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10578538330551466504)
,p_db_column_name=>'KIT_RETAINED'
,p_display_order=>150
,p_column_identifier=>'BB'
,p_column_label=>'No. of Kits<br>Retained'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10502050591363393498)
,p_db_column_name=>'SHIP_DT'
,p_display_order=>160
,p_column_identifier=>'BC'
,p_column_label=>'Date of<br>Shipment<br>Received'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10576927741617641319)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'763428'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STUDY_NUMBER:SHIP_DT:KIT_RCVD:KIT_NUMBERS:KIT_RETAINED:KIT_NUMBER:USED_KIT:UNUSED_KIT:COMMENTS:STUDY_SITE_ID:'
,p_break_on=>'STUDY_NUMBER:STUDY_SITE_ID:0:0:0:0'
,p_break_enabled_on=>'STUDY_NUMBER:STUDY_SITE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576928239653641320)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10576928648168641321)
,p_plug_name=>'Accountability Log'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 235px;"'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_list_id=>wwv_flow_imp.id(10576810059521697454)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10500919736904572934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10576922372640641310)
,p_button_name=>'PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500919185265572929)
,p_name=>'P66_EDC_ROLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10576922372640641310)
,p_item_default=>':APP_EDC_ROLE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500919311491572930)
,p_name=>'P66_EDC_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10576922372640641310)
,p_item_default=>':APP_EDC_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500919448674572931)
,p_name=>'P66_EDC_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10576922372640641310)
,p_item_default=>':APP_EDC_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10500919825603572935)
,p_name=>'Download PDF'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10500919736904572934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10500919924112572936)
,p_event_id=>wwv_flow_imp.id(10500919825603572935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_IP_RL&_repFormat=pdf&_dataSource=default&_outFilename=IP_Reconciliation_Log.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P66_EDC_ROLE_ID")+''&P_EDC_USER='''
||'+ $v("P66_EDC_USER") +''&P_EDC_USER_ID=''+ $v("P66_EDC_USER_ID")+'''',''_blank'');'
);
wwv_flow_imp.component_end;
end;
/
