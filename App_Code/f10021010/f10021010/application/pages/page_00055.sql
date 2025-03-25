prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_tab_set=>'TS1'
,p_name=>'add Kits to be returned to Depot'
,p_step_title=>'add Kits to be returned to Depot'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(9916884921573203154)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10181385922543006594)
,p_plug_name=>'Add Kit'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10181385909526006593)
,p_plug_name=>'Kit Filter'
,p_parent_plug_id=>wwv_flow_imp.id(10181385922543006594)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10181556217521401243)
,p_plug_name=>'Kits to be returned to Depot'
,p_parent_plug_id=>wwv_flow_imp.id(10181385922543006594)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.CHECKBOX(1, IP_ID) || APEX_ITEM.HIDDEN(2, IP_ID) || APEX_ITEM.HIDDEN(3, IP_STATUS) CHECKBX',
'     , BOTTLE_NO',
'     , TO_CHAR(IP_STATUS) AS ORG_STATUS',
'     , STUDY_ARM_ID',
'  FROM EDC_IP_DETAIL',
' WHERE STUDY_SITE_ID = :P55_STUDY_SITE_ID',
'   AND STUDY_ARM_ID = 1',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
'   AND INSTR('':'' || NVL(:P55_IP_STATUS, IP_STATUS) || '':'', '':'' || IP_STATUS || '':'') > 0',
'   AND IP_STATUS IN (''3'', ''7'', ''9'' , /*''10'', ''11'',''12'', 17'', ''20'',*/ ''21'' ) /*Received at Site, Expired at Site, Damaged at Site, (Lost at Site, Qurantined at Site,) Destroyed at Site, (Unquarantined at Site, Not Received,) Temprature Excursion*/',
'   AND IP_ID NOT IN(SELECT IP_ID',
'					  FROM EDC_IP_SHIPMENT_RETURN_DTLS D',
'				     WHERE ((SELECT COUNT(*) FROM EDC_IP_SHIPMENT_DTLS WHERE IP_ID = D.IP_ID) <= (SELECT COUNT(*) FROM EDC_IP_SHIPMENT_RETURN_DTLS  WHERE IP_ID = D.IP_ID))',
'				   )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P55_IP_STATUS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10181556389471401243)
,p_name=>'IPs to be returned to Depot'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>297012078899672187
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10181556789438401248)
,p_db_column_name=>'CHECKBX'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'<input type="checkbox" id="check-all-rows">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10181557593564401249)
,p_db_column_name=>'BOTTLE_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Kit #'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9911229569023911334)
,p_db_column_name=>'STUDY_ARM_ID'
,p_display_order=>13
,p_column_identifier=>'G'
,p_column_label=>'Study Arm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11051769157547568668)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'SUN_21010_DEV.EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(:APP_EDC_STUDY_ID, :APP_EDC_USER_ID) = 1'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
,p_column_comment=>'EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(:APP_EDC_STUDY_ID, :APP_EDC_USER_ID) = 1'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10181385765919006592)
,p_db_column_name=>'ORG_STATUS'
,p_display_order=>23
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(11051816672495046750)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10181558745286402358)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2970145'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CHECKBX:BOTTLE_NO:STUDY_ARM_ID:ORG_STATUS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10181386323404006598)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10181556217521401243)
,p_button_name=>'ADD_IPS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Add Selected Kits'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10181385347319006588)
,p_name=>'P55_STUDY_SITE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10181556217521401243)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10181386079379006595)
,p_name=>'P55_IP_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10181385909526006593)
,p_prompt=>'Kit Status'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LV.DISPLAY_VALUE D',
'     , LV.STORED_VALUE R',
'  FROM EDC_LOV L',
'     , EDC_LOV_VALUES LV',
' WHERE L.LOV_ID = LV.LOV_ID',
'   AND LOV_NAME = ''IP_STATUS''',
'   AND LV.STATUS = 1',
'   AND LV.STORED_VALUE IN (''3'', ''7'', ''9'' , /*''10'', ''11'', ''12'', ''17'', ''20'',*/ ''21'' ) /*Received at Site, Expired at Site, Damaged at Site, (Lost at Site, Qurantined at Site, Destroyed at Site), (Unquarantined at Site,) Not Received, Temprature Excursi'
||'on*/',
' ORDER BY LV.SEQUENCE'))
,p_cHeight=>6
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10181386193428006596)
,p_name=>'IP_STATUS change - Refresh IR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_IP_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10181386234006006597)
,p_event_id=>wwv_flow_imp.id(10181386193428006596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10181556217521401243)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9911227509072911314)
,p_name=>'Apply Check All JS'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10181556217521401243)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9911227601842911315)
,p_event_id=>wwv_flow_imp.id(9911227509072911314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#check-all-rows").change(function () {',
'    $(''input[name=f01]'').prop(''checked'', $(this).prop("checked"));',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10181386433928006599)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert IPs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MAX_DTLS_ID NUMBER;',
'BEGIN',
'    SELECT NVL(MAX(RET_DTLS_ID),0) + 1',
'      INTO V_MAX_DTLS_ID',
'      FROM EDC_IP_SHIPMENT_RETURN_DTLS;',
'',
'    FOR i IN 1..APEX_APPLICATION.G_F01.count LOOP',
'        FOR j IN 1..APEX_APPLICATION.G_F02.count LOOP',
'            IF APEX_APPLICATION.G_F01(i) = APEX_APPLICATION.G_F02(j) THEN',
'                INSERT INTO EDC_IP_SHIPMENT_RETURN_DTLS( RET_DTLS_ID',
'                                                       , SHIP_ID',
'                                                       , IP_ID',
'                                                       , IP_QTY',
'                                                       , ORG_IP_STATUS',
'                                                       )',
'                                                 VALUES( V_MAX_DTLS_ID',
'                                                       , :P207_SHIP_ID',
'                                                       , APEX_APPLICATION.G_F02(J)',
'                                                       , 1',
'                                                       , APEX_APPLICATION.G_F03(J)',
'                                                       );',
'                V_MAX_DTLS_ID := V_MAX_DTLS_ID + 1;',
'',
'                UPDATE EDC_IP_DETAIL',
'                   SET IP_STATUS = 19',
'                 WHERE IP_ID = APEX_APPLICATION.G_F02(J);',
'                COMMIT;',
'            END IF;',
'        END LOOP;',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''ADD_IPS'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'IP Added'
,p_internal_uid=>10181386433928006599
);
wwv_flow_imp.component_end;
end;
/
