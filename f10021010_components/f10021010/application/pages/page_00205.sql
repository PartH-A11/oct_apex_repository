prompt --application/pages/page_00205
begin
--   Manifest
--     PAGE: 00205
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
 p_id=>205
,p_tab_set=>'TS1'
,p_name=>'Received at Site'
,p_step_title=>'Received at Site'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'function customDateParse(str) {',
'  var months = [''JAN'',''FEB'',''MAR'',''APR'',''MAY'',''JUN'',',
'                ''JUL'',''AUG'',''SEP'',''OCT'',''NOV'',''DEC''],',
'      n = months.length, re = /(\d{2})-([a-z]{3})-(\d{4})/i, matches;',
'',
'  while(n--) { months[months[n]]=n; } // map month names to their index :)',
'',
'  matches = str.match(re); // extract date parts from string',
'',
'  return new Date(matches[3], months[matches[2].toUpperCase()], matches[1]);',
'}',
'function revise_date_act(pThis)',
'{',
'            var dt1 = $(''#P374_SHIP_DT'').val();',
'            var dt2 = $(''#P374_SHIP_REC_DT'').val();',
'',
'         // var dt1 = $(pThis).parent().parent().find(''input[name=p_t05]'').val();',
'         // var dt2 = $(pThis).parent().parent().find(''input[name=p_t06]'').val();',
'',
'        var cDt1 = customDateParse(dt1);',
'        var cDt2 = customDateParse(dt2);',
'',
'        cDt1 = +new Date(cDt1);',
'        cDt2 = +new Date(cDt2);',
' ',
'        var dateType = $(pThis).attr(''id'');',
'   ',
'',
'       if (cDt2 < cDt1 && dateType == ''P374_SHIP_REC_DT'')',
'       {',
'           alert(''Received Date should be greater than to Shipment Date.'');',
'           $(''#P374_SHIP_REC_DT'').val('''');',
'       }',
'       else if (cDt1 > cDt2 && dateType == ''P374_SHIP_DT'')',
'       {',
'           alert(''Shipment date should less than to Received Date.'');',
'           $(''#P374_SHIP_DT'').val('''');',
'       }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P374_SHIP_REC_QTY'').change(function(){',
'',
'            var dt1 = parseInt($(''#P374_SHIP_TOT_QTY'').val());',
'            var dt2 = parseInt($(''#P374_SHIP_REC_QTY'').val());',
'',
'     //  if (dt2 > dt1)',
'     //  {',
'     //      alert(''Recieved Qty. should not be greater than Total Qty.'');',
'     //      $(''#P374_SHIP_REC_QTY'').val('''');',
'     //  }*/',
'});',
'',
'/*',
'// Default "Shiped Status" should be "Recieved"',
'if ($v(''P205_SHIP_STATUS'') != ''Delivered''){',
'    $(''select[name=f04]'').each(function(){',
'        if(!$(this).val()){',
'          $(this).val(1);',
'        }',
'    });',
'}',
'*/'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152753328709550813)
,p_plug_name=>'IP_INVENTORY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146129741780911976)
,p_plug_display_sequence=>35
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_read_only_when_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12152757528444550824)
,p_name=>'Kit Received at Site'
,p_parent_plug_id=>wwv_flow_imp.id(12152753328709550813)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"DTLS_ID",',
'A.BLOCK,',
'"DTLS_ID" DTLS_ID_DISPLAY,',
'"SHIP_ID",',
'A.IP_ID,',
'B.BOTTLE_NO "IP_LABEL",',
'A.IP_STATUS,',
'A.ARMD_ID,',
'B.study_arm_id study_arm_id,',
'"SHIPPED_STATUS",',
'case when b.ip_dose in (8,16,32,64) then ''<b>Bottle</b>'' else ''<b>Box</b>'' end as "Box/ Bottle",',
'--(SELECT b.ip_status FROM cro_ip_detail B WHERE  A.IP_ID = B.IP_ID) as ip_status,',
'--b.IP_NO_TABLETS as IP_NO_TABLETS,',
'A.COMMENTS,',
''''' AS AUDITT',
'--B.COUNTRY',
'from EDC_IP_SHIPMENT_DTLS A',
'JOIN EDC_IP_DETAIL B',
'  ON A.IP_ID = B.IP_ID',
'WHERE ship_id = :P205_SHIP_ID AND A.IP_ID NOT IN (SELECT IP_ID FROM edc_ip_detail WHERE IP_STATUS IN(1))',
'order by A.ip_id'))
,p_display_when_condition=>'P205_SHIP_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_items_to_submit=>'P205_SHIP_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>10000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152757736391550824)
,p_query_column_id=>1
,p_column_alias=>'DTLS_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_PRIMARY_KEY NUMBER;',
'BEGIN',
'  SELECT NVL(MAX(dtls_id),0) + 1',
'    INTO L_PRIMARY_KEY ',
'    FROM EDC_ip_shipment_dtls;',
'  RETURN L_PRIMARY_KEY;',
'END;'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DTLS'
,p_ref_column_name=>'DTLS_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7755866839515414558)
,p_query_column_id=>2
,p_column_alias=>'BLOCK'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_cattributes=>'style="display: none;"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152757835974550824)
,p_query_column_id=>3
,p_column_alias=>'DTLS_ID_DISPLAY'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DTLS'
,p_ref_column_name=>'DTLS_ID_DISPLAY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152757944042550825)
,p_query_column_id=>4
,p_column_alias=>'SHIP_ID'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DTLS'
,p_ref_column_name=>'SHIP_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152758034173550825)
,p_query_column_id=>5
,p_column_alias=>'IP_ID'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_cattributes=>'style="display: none;"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DTLS'
,p_ref_column_name=>'IP_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11012179300028415417)
,p_query_column_id=>6
,p_column_alias=>'IP_LABEL'
,p_column_display_sequence=>8
,p_column_heading=>'Kit #'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152758126787550825)
,p_query_column_id=>7
,p_column_alias=>'IP_STATUS'
,p_column_display_sequence=>10
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12152767440636550843)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DTLS'
,p_ref_column_name=>'IP_STATUS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152758227221550825)
,p_query_column_id=>8
,p_column_alias=>'ARMD_ID'
,p_column_display_sequence=>11
,p_column_heading=>'Study Arm'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select a.arm_name d,b.armd_id r ',
'from EDC_STUDY_ARM a, EDC_STUDY_ARM_DTLS b',
'where a.study_arm_id = b.study_arm_id',
'and b.study_id = :APP_EDC_STUDY_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DTLS'
,p_ref_column_name=>'ARMD_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11012180234414415426)
,p_query_column_id=>9
,p_column_alias=>'STUDY_ARM_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Study Arm'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12152719925689072761)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)',
'    AND SUN_21010_DEV.EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(:APP_EDC_STUDY_ID, :APP_EDC_USER_ID) = 1'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152758526708550825)
,p_query_column_id=>10
,p_column_alias=>'SHIPPED_STATUS'
,p_column_display_sequence=>12
,p_column_heading=>'Shipped Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISPLAY_VALUE AS "DISPLAY_VALUE",',
'       STORED_VALUE AS "STORED_VALUE" ',
'  FROM EDC_LOV L, EDC_LOV_VALUES LV',
' WHERE L.LOV_ID = LV.LOV_ID',
'   AND LOV_NAME =''SHIPPED_IP_STATUS''',
'   AND STORED_VALUE NOT IN (''10'',''11'',''12'',''6'')',
'   AND LV.STATUS = 1',
'',
' ORDER BY TO_NUMBER(STORED_VALUE)'))
,p_lov_show_nulls=>'NO'
,p_css_classes=>'new_ip_status'
,p_derived_column=>'N'
,p_column_default=>'1'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DTLS'
,p_ref_column_name=>'SHIPPED_STATUS'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*union',
'select ''Retention Quantity at Site'', ''99''',
'  from dual*/'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152758339121550825)
,p_query_column_id=>11
,p_column_alias=>'Box/ Bottle'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152758753601550825)
,p_query_column_id=>12
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>13
,p_column_heading=>'<center>Comments'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXTAREA'
,p_column_width=>18
,p_column_height=>1
,p_cattributes=>'style="height: 20px; vertical-align: bottom;"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DTLS'
,p_ref_column_name=>'COMMENTS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9557044562361770585)
,p_query_column_id=>13
,p_column_alias=>'AUDITT'
,p_column_display_sequence=>14
,p_column_heading=>'Audit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP,76:P76_TABLE_NAME,P76_PAGE_ID,P76_PK_ID:EDC_IP_SHIPMENT_DTLS,205,#DTLS_ID#'
,p_column_linktext=>'Audit'
,p_column_link_attr=>'onclick="return false;" class="edit-link"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12152758650557550825)
,p_query_column_id=>14
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152753524916550817)
,p_plug_name=>'Received at Site'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="min-width: 1000px;"'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152761425700550830)
,p_plug_name=>'Drug Supply'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:10px;margin-top:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146129741780911976)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152761650863550831)
,p_plug_name=>'IP Received at Site'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ip_id,b.ip_status,b.study_arm_id,a.armd_id,b.ip_content,b.ip_dose_level,b.ip_dose ,B.IP_NO_TABLETS, case when b.ip_dose in (8,16,32,64) then ''<b>Bottle</b>'' else ''<b>Box</b>'' end as "Box/ Bottle"',
'  from cro_ip_shipment_dtls a, cro_ip_detail b',
' WHERE A.IP_ID = B.IP_ID',
'   and ship_id = :P205_SHIP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12152761840185550832)
,p_name=>'IP Received at Site'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>156138115700985052
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152761954306550832)
,p_db_column_name=>'IP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Bottle #'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(12126582637718780335)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152762033052550832)
,p_db_column_name=>'STUDY_ARM_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Study Arm'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STUDY_ARM_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152762143714550832)
,p_db_column_name=>'IP_CONTENT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Content'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'IP_CONTENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152762252497550832)
,p_db_column_name=>'IP_DOSE_LEVEL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Size'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_DOSE_LEVEL'
,p_use_as_row_header=>'N'
,p_column_comment=>'rename name of ''Size'' instead of ''Dose level'''
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152762332346550832)
,p_db_column_name=>'IP_DOSE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Dose'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_DOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152762442539550832)
,p_db_column_name=>'IP_NO_TABLETS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'No. of<br>Tablets'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_NO_TABLETS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152762552235550833)
,p_db_column_name=>'IP_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(12126584255784832711)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152762645215550833)
,p_db_column_name=>'Box/ Bottle'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Box/ Bottle'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Box/ Bottle'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12152762726257550833)
,p_db_column_name=>'ARMD_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Arm'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ARMD_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(12127204456310588838)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12152762830722550833)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1561392'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'Box/ Bottle:IP_ID:IP_STATUS:IP_NO_TABLETS:ARMD_ID:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(12152763054793550833)
,p_report_id=>wwv_flow_imp.id(12152762830722550833)
,p_name=>'Bottle'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'Box/ Bottle'
,p_operator=>'='
,p_expr=>'<b>Bottle</b>'
,p_condition_sql=>' (case when ("Box/ Bottle" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''<b>Bottle</b>''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99CCFF'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(12152763148078550833)
,p_report_id=>wwv_flow_imp.id(12152762830722550833)
,p_name=>'Box'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'Box/ Bottle'
,p_operator=>'='
,p_expr=>'<b>Box</b>'
,p_condition_sql=>' (case when ("Box/ Bottle" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''<b>Box</b>''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99FF99'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12152988953148121196)
,p_plug_name=>'IP_INVENTORY'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(12152720343728072762)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12163428354497453426)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12163911651259853880)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131027748911980)
,p_plug_display_sequence=>45
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12163911829919857155)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_imp.id(12163911651259853880)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>55
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152759426722550826)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12152757528444550824)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152754334397550817)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Accept Shipment'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P205_SHIP_STATUS in(''Dispatched'',''Quarantined'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152759039430550825)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12152757528444550824)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152754747545550818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152758850376550825)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12152757528444550824)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:373:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11273879192165164640)
,p_button_sequence=>78
,p_button_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P205_SHIP_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11012178449498415409)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12152757528444550824)
,p_button_name=>'TEMPERATURE_EXCURSION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Temperature Excursion of all Kits'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P205_SHIP_STATUS in(''Dispatched'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152754156093550817)
,p_button_sequence=>58
,p_button_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152754544346550818)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152759237218550825)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12152757528444550824)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152753748356550817)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_button_name=>'DAMAGED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Shipment Damaged'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>'Dispatched'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12152753932407550817)
,p_button_sequence=>38
,p_button_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_button_name=>'QUARANTINED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Shipment Quarantined'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P205_SHIP_STATUS in(''Dispatched'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2293080539806961845)
,p_button_sequence=>68
,p_button_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_button_name=>'UNQUARANTINED'
,p_button_static_id=>'Unquarantined'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Unquarantined'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_IP_SHIPMENT_DTLS',
' WHERE SHIPPED_STATUS = 3',
'   AND SHIP_ID = :P205_SHIP_ID',
'   AND :APP_EDC_ROLE_ID IN(13,33,19)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12152766933184550842)
,p_branch_action=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12152754747545550818)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12152767142290550842)
,p_branch_action=>'f?p=&APP_ID.:205:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12152767351736550843)
,p_branch_action=>'f?p=&APP_ID.:205:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152754943420550820)
,p_name=>'P205_SHIP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_source=>'SHIP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152755142697550821)
,p_name=>'P205_SHIP_NO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipment No.'
,p_source=>'SHIP_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152755332278550821)
,p_name=>'P205_SHIP_DT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipment Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'SHIP_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152755554355550821)
,p_name=>'P205_STUDY_SITE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Site </b>'
,p_source=>'STUDY_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CRO_SITE_NAME_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.SITE_NUMBER || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || B.INVNAME || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A',
'     , EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(B.COUNTRY_ID, :APP_EDC_SD_ID) = 1',
' ORDER BY 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152755725256550822)
,p_name=>'P205_SHIP_REC_DT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Received Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'SHIP_REC_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"onchange="revise_date_act(this)"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P205_SHIP_DT.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2100'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152755925247550822)
,p_name=>'P205_SHIP_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_source=>'SHIP_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152756130584550822)
,p_name=>'P205_SHIP_COMMENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Comment </b>'
,p_source=>'SHIP_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>2000
,p_cHeight=>2
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152756340340550823)
,p_name=>'P205_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12163911829919857155)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Created By </b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152756551735550823)
,p_name=>'P205_CREATED_DT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12163911829919857155)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Created On </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152756748150550823)
,p_name=>'P205_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12163911829919857155)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Updated By </b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152756956817550823)
,p_name=>'P205_UPDATED_DT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12163911829919857155)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Updated On </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152757151359550823)
,p_name=>'P205_SHIP_TOT_QTY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Total Quantity </b>'
,p_source=>'SHIP_TOT_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>5
,p_cHeight=>1
,p_tag_attributes=>'style="text-align:right;" readonly = "readonly;"'
,p_label_alignment=>'RIGHT'
,p_display_when=>'P205_SHIP_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12152757354293550824)
,p_name=>'P205_SHIP_REC_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12152753524916550817)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'<b> Available for Dispensing</b>'
,p_source=>'SHIP_REC_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>7
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_display_when=>'P205_SHIP_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152763932018550839)
,p_validation_name=>'P205_SHIP_REC_DT'
,p_validation_sequence=>10
,p_validation=>'P205_SHIP_REC_DT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Received Date is Missing. Please Provide.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12152755725256550822)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152763551372550839)
,p_validation_name=>'P205_SHIP_REC_QTY'
,p_validation_sequence=>20
,p_validation=>':P205_SHIP_REC_QTY > :P205_SHIP_TOT_QTY'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'error'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(12152757354293550824)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152759755696550827)
,p_tabular_form_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_validation_name=>'SHIP_ID not null'
,p_validation_sequence=>30
,p_validation=>'SHIP_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(12152759039430550825)
,p_associated_column=>'SHIP_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152759951153550828)
,p_tabular_form_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_validation_name=>'SHIP_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'SHIP_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(12152759039430550825)
,p_associated_column=>'SHIP_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152760125181550828)
,p_tabular_form_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_validation_name=>'IP_ID not null'
,p_validation_sequence=>40
,p_validation=>'IP_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(12152759039430550825)
,p_associated_column=>'IP_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152760337823550828)
,p_tabular_form_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_validation_name=>'IP_ID must be numeric'
,p_validation_sequence=>40
,p_validation=>'IP_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(12152759039430550825)
,p_associated_column=>'IP_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152760534963550828)
,p_tabular_form_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_validation_name=>'IP_STATUS must be numeric'
,p_validation_sequence=>50
,p_validation=>'IP_STATUS'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(12152759039430550825)
,p_associated_column=>'IP_STATUS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152760745282550828)
,p_tabular_form_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_validation_name=>'ARMD_ID must be numeric'
,p_validation_sequence=>60
,p_validation=>'ARMD_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(12152759039430550825)
,p_associated_column=>'ARMD_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152760931761550828)
,p_tabular_form_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_validation_name=>'SHIPPED_STATUS must be numeric'
,p_validation_sequence=>70
,p_validation=>'SHIPPED_STATUS'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(12152759039430550825)
,p_associated_column=>'SHIPPED_STATUS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12152763756897550839)
,p_validation_name=>'Shipped Status cnt 3'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE  ',
'  TYPE tt_taskamount IS TABLE OF NUMBER INDEX BY VARCHAR2(20);  ',
'  t_taskamount tt_taskamount;  ',
'  ',
'  l_task NUMBER;--VARCHAR2(20);  --Shipped Status val',
'  l_amount NUMBER := 0;  --Shipped Status count',
'  l_max NUMBER := :P205_SHIP_REC_QTY;  --Received Quantity',
'BEGIN  ',
'  -- F02 is the Shipped Status',
'  -- F03 is the amount  ',
'  -- adapt to your situation!  ',
'  FOR i IN 1..apex_application.g_f04.count  ',
'  LOOP  ',
'    l_task := apex_application.g_f04(i);  ',
'--    l_amount := 0; --apex_application.g_f02(i);  ',
'    /*IF NOT t_taskamount.exists(l_task) THEN  ',
'      t_taskamount(l_task) := l_amount;  ',
'    ELSE  ',
'      t_taskamount(l_task) := t_taskamount(l_task) + l_amount;  ',
'    END IF;  */',
'    ',
'    IF l_task = 1 THEN',
'      l_amount := l_amount + l_task;',
'    END IF;',
'--   return apex_application.g_f02.count;',
'   END LOOP;',
'    -- it''s not the best idea to perform a select each time and could be  ',
'    -- done better but for the sake of the example it''s fine  ',
'    -- not too bad either if the rowcount is small.  ',
'    /*SELECT maxamount  ',
'      INTO l_max  ',
'      FROM table2  ',
'     WHERE taskname = l_task;  */',
'        ',
'  /*  IF l_amount <> l_max THEN  ',
'      -- returning will stop further processing and throw an error message as soon as a budget has been overrun  ',
'      -- it might or might not be required behaviour but that''s up to you  ',
'--      RETURN ''The max amount (''||l_max||'') for task '' || l_task ||'' has been exceeded. Reduce the total amount on associated tasks!'';  ',
'      RETURN ''The recieved bottles (''||l_amount||'') should be equal to '' || l_max ||''.'';',
'    END IF;*/  ',
'     ',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'Error'
,p_when_button_pressed=>wwv_flow_imp.id(12126406127471105220)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11288568580113270666)
,p_tabular_form_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_validation_name=>'SHIPPED_STATUS not Quarantined while Accept'
,p_validation_sequence=>110
,p_validation=>'SHIPPED_STATUS'
,p_validation2=>'3'
,p_validation_type=>'ITEM_IN_VALIDATION_NOT_EQ_STRING2'
,p_error_message=>'IPs can not be in Quarantine status while Accepting Shipment'
,p_always_execute=>'Y'
,p_validation_condition=>':REQUEST IN (''SAVE'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_associated_column=>'SHIPPED_STATUS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7755631430544281859)
,p_validation_name=>'RETENTION VALIDATION'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_Cnt number := 0;',
'TYPE kitnoarray IS VARRAY(500) OF VARCHAR2(10); ',
'kitno kitnoarray := kitnoarray();',
'type blockarray is table of integer;',
'blocks blockarray := blockarray();',
'distblocks blockarray := blockarray();',
'v_arraycnt number := 0;',
'v_blockcnt number := 0;',
'v_min number := 100000;',
'v_max number := 0;',
'begin',
'FOR i IN 1 .. apex_application.g_f06.COUNT -- select list with facilities',
'   LOOP',
'     if apex_application.g_f06(i) = 99 then',
'        v_cnt := v_cnt + 1;',
'        kitno.extend;',
'        kitno(v_cnt) := apex_application.g_f04(i);',
'        blocks.extend;',
'        blocks(v_cnt) := apex_application.g_f05(i);',
'     end if;',
'   end loop;',
'   ',
'   if v_cnt <5 or mod(v_cnt,5) <> 0 then',
'   ',
'     return ''Kits must be retained in multiplication of 5.'';',
'   ',
'   end if;',
'   ',
'   distblocks := blocks;',
'   ',
'   blocks := blocks MULTISET UNION DISTINCT distblocks;',
'   ',
'   FOR i in blocks.FIRST .. blocks.LAST',
'   LOOP',
'      v_blockcnt := v_blockcnt + 1;',
'   END LOOP;',
'   ',
'   v_arraycnt := kitno.count; ',
'   ',
'   if (v_arraycnt / 5) <> v_blockcnt then',
'   ',
'   return ''Retained kit no. must be in sequential order and last kit no. must be multiplication of 5.'';',
'   end if;',
'   ',
' /* ',
' for i in 1.. v_arraycnt ',
'  loop',
'  ',
'   if kitno(i) < v_min then',
'     v_min := kitno(i);',
'   end if;',
'   ',
'   if kitno(i) > v_max then',
'     v_max := kitno(i);',
'   end if;',
'   ',
'     kitno.extend;',
'  end loop;',
'    if (v_max - v_min) <> 4 then',
'       return ''Retained kit no. must be in sequential order and last kit no. must be multiplication of 5.'';',
'   end if;*/',
'   end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12152765643844550841)
,p_name=>'All IP Damaged'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12152753748356550817)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12152765949687550841)
,p_event_id=>wwv_flow_imp.id(12152765643844550841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:551:&APP_SESSION.::NO:RP,551:P551_SHIP_ID,P551_FLAG,P551_DQ_STATUS:&P205_SHIP_ID.,Damaged,2'
,p_attribute_05=>'href'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_PX'
,p_attribute_08=>'425'
,p_attribute_09=>'650'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12152766446356550842)
,p_name=>'All IP Quarantined (Page 59)'
,p_event_sequence=>15
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12152753932407550817)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12152766732976550842)
,p_event_id=>wwv_flow_imp.id(12152766446356550842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:59:&APP_SESSION.::NO:RP,59:P59_SHIP_ID:&P205_SHIP_ID.'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_PX'
,p_attribute_08=>'425'
,p_attribute_09=>'650'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12152766049307550841)
,p_name=>'refresh page on modal close'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12152766350417550842)
,p_event_id=>wwv_flow_imp.id(12152766049307550841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11273879473060167687)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11273879192165164640)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11273879824766167690)
,p_event_id=>wwv_flow_imp.id(11273879473060167687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_PK_ID,P41_TABLE_NAME:&APP_PAGE_ID.,&P205_SHIP_ID.,EDC_IP_SHIPMENT'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11012178598191415410)
,p_name=>'Temperature Excursion of all Kit'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11012178449498415409)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11012178702701415411)
,p_event_id=>wwv_flow_imp.id(11012178598191415410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''.new_ip_status'').val(''9'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9557044680411770586)
,p_name=>'Open Model Audit Trail'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.edit-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9557044753475770587)
,p_event_id=>wwv_flow_imp.id(9557044680411770586)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'75'
,p_attribute_09=>'90'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2293080573288961846)
,p_name=>'Unquarantined IPs'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2293080539806961845)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2293080708749961847)
,p_event_id=>wwv_flow_imp.id(2293080573288961846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''select[name="f06"]'').val(1);',
'$(''#Unquarantined'').addClass(''apex_disabled'');'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152765450217550841)
,p_process_sequence=>60
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'make form read only on Delivered'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P205_SHIP_STATUS in (''Delivered'') THEN',
'        htp.p(''<script language="Javascript">'');',
'        htp.p(''$("input,textarea").each(function(){ ',
'              var a= $(this).prop(''''id'''');',
'              if(a != "P205_SHIP_COMMENT"){',
'              $(this).attr("readonly","readonly");}',
'              });'');',
'        htp.p(''$("select").each(function(){ $(this).attr("disabled","disabled");});'');',
'        htp.p(''$(function(){$("img.ui-datepicker-trigger").css("display","none");});'');',
'	    htp.p(''</script>'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11051814682076046748
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152764035944550839)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CRO_IP_SHIPMENT'
,p_attribute_02=>'EDC_IP_SHIPMENT'
,p_attribute_03=>'P205_SHIP_ID'
,p_attribute_04=>'SHIP_ID'
,p_internal_uid=>11051813267803046746
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152761056870550828)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EDC_IP_SHIPMENT_DTLS'
,p_attribute_03=>'DTLS_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152754334397550817)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>11051810288729046735
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152764247600550839)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(SHIP_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_IP_SHIPMENT;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P205_SHIP_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152754156093550817)
,p_internal_uid=>11051813479459046746
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152761245301550829)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12152757528444550824)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EDC_IP_SHIPMENT_DTLS'
,p_attribute_03=>'DTLS_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>11051810477160046736
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152764445879550840)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_IP_DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P205_SHIP_REC_DT IS NOT NULL THEN',
'        :P205_SHIP_STATUS := ''Delivered'';',
'',
'        for j in (select ip_id',
'                       , SHIPPED_STATUS',
'                    from EDC_ip_shipment_dtls ',
'                   where ship_id = :P205_SHIP_ID /* and rownum <= v_rec_qty */',
'                 ) ',
'        loop',
'            update EDC_ip_detail',
'             --set ip_status = 3',
'               set ip_status = DECODE(J.SHIPPED_STATUS,',
'                                      1, 3,   -- Ready for use to Received at Site',
'                                      5, 7,   -- Expired       to Expired at Site',
'                                      2, 9,   -- Damanged      to Damaged at Site',
'                                      8, 10,  -- Lost          to Lost at Site',
'                                      3, 11,  -- Qurantined    to Quarantined at Site',
'                                      6, 12,  -- Destroyed     to Destroyed at Site',
'                                      4, 17,  -- Unqurantined  to Unquarantined at Site',
'                                     10, 20,  -- Not received  to Not Received at Site',
'                                      9, 21,  -- Temperature Excursion to Temperature Excursion at Site ',
'                                     7, 8,   -- Retained at Site ',
'                                      3)',
'             where ip_id = j.ip_id;',
'           --commit;',
'        end loop; ',
'        --end loop;',
'',
'        UPDATE EDC_ip_shipment_dtls',
'         SET IP_STATUS = 3',
'        WHERE ship_id = :P205_SHIP_ID;',
'',
'      --COMMIT;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#sqlerrm# '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152754334397550817)
,p_process_success_message=>'Inventory received at Site.'
,p_internal_uid=>11051813677738046747
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FROM_IP NUMBER;',
'  V_TO_IP   NUMBER;',
'',
'BEGIN',
'IF :P374_SHIP_REC_DT IS NOT NULL THEN',
'   ',
'   :P374_SHIP_STATUS := ''Delivered'';',
'',
'update cro_ip_detail',
'      set ip_status = 3',
'   where ip_id in(select ip_id from cro_ip_shipment_dtls',
' where ship_id = :P374_SHIP_ID);',
'   ',
'END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152764644147550840)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CRO_IP_SHIPMENT'
,p_attribute_02=>'EDC_IP_SHIPMENT'
,p_attribute_03=>'P205_SHIP_ID'
,p_attribute_04=>'SHIP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11051813876006046747
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152764832664550840)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'374'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152754544346550818)
,p_internal_uid=>11051814064523046747
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152765044119550840)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET RECEIVED QUANTITY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_QTY NUMBER;',
'  V_GET_RESULT NUMBER;',
'  CURSOR CUR_SHIP_QTY IS',
'    SELECT SHIP_REC_QTY FROM EDC_IP_SHIPMENT WHERE SHIP_ID = :P205_SHIP_ID; ',
'  V_CNT NUMBER;',
'BEGIN',
'  SELECT NVL(SHIP_REC_QTY,0) ',
'    INTO V_QTY',
'    FROM EDC_IP_SHIPMENT WHERE SHIP_ID = :P205_SHIP_ID; ',
'',
'  SELECT COUNT(A.DTLS_ID)',
'    INTO V_CNT',
'    FROM EDC_IP_SHIPMENT_DTLS A',
'    JOIN EDC_IP_DETAIL B',
'      ON A.IP_ID = B.IP_ID',
'     AND A.SHIP_ID = :P205_SHIP_ID',
'     AND B.IP_STATUS = 3;',
'',
'  UPDATE EDC_IP_SHIPMENT',
'     SET SHIP_REC_QTY = V_CNT',
'   WHERE SHIP_ID = :P205_SHIP_ID;',
'   /*   If v_qty <> 0  then',
'         for x in cur_ship_qty',
'             loop ',
'                UPDATE CRO_IP_SHIPMENT',
'                SET SHIP_REC_QTY = x.ship_rec_qty WHERE ship_id = :P205_SHIP_ID;',
'         end loop;     ',
'      End If;*/',
'  BEGIN',
'    EDC_MAIL.SEND_MAIL_REC_AT_SITE(:P205_SHIP_ID,:APP_EDC_STUDY_ID,V_GET_RESULT);',
'  END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152754334397550817)
,p_internal_uid=>11051814275978046747
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12152765240144550840)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SEND MAIL FOR RETAINED IP SHIPMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  V_CNT NUMBER;',
'BEGIN',
'       SELECT COUNT(*)  INTO V_CNT from EDC_IP_SHIPMENT_DTLS A WHERE ship_id = :P205_SHIP_ID AND SHIPPED_STATUS IN (99);',
'       IF V_CNT > 0 THEN',
'             --CRO_EMAIL_ALERT_PKG.SEND_SHIP_TO_SITE_DAMAGED(:APP_STUDY_ID,:P205_STUDY_SITE_ID,:P205_SHIP_ID,1);',
'            EDC_MAIL.IP_RETAINED_ALERT(:P205_SHIP_ID);',
'        END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12152754334397550817)
,p_process_when_type=>'NEVER'
,p_internal_uid=>11051814472003046747
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10622320471456232137)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Rescue Stock for Site'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE EDC_STUDY_SITES',
'       SET RESCUE_TABS_STOCK = RESCUE_TABS_STOCK + (SELECT NVL(RESCUE_MEDICINE, 0)',
'                                                      FROM EDC_IP_SHIPMENT',
'                                                     WHERE SHIP_ID = :P205_SHIP_ID',
'                                                   )',
'     WHERE STUDY_SITE_ID = :P205_STUDY_SITE_ID;',
'     ',
'     COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>9521369703314728044
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10622320938697232142)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Randomization block'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_DTLS_ID      NUMBER;',
'    V_BLK_ID       NUMBER;',
'    V_ADD_BLOCK_NO NUMBER;',
'BEGIN',
'    -- Get Parent ID, Add if not found',
'    BEGIN',
'        SELECT BLK_ID',
'          INTO V_BLK_ID',
'          FROM EDC_STUDY_ARM_BLOCK',
'         WHERE STUDY_SITE_ID = :P205_STUDY_SITE_ID;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        SELECT NVL(MAX(BLK_ID),0) + 1',
'          INTO V_BLK_ID',
'          FROM EDC_STUDY_ARM_BLOCK;',
'',
'        INSERT INTO EDC_STUDY_ARM_BLOCK(BLK_ID, STUDY_SITE_ID,BLK_LEVEL,BLK_NO,STUDY_ID) ',
'        VALUES(V_BLK_ID, :P205_STUDY_SITE_ID,1,0,:APP_EDC_STUDY_ID);',
'    END;',
'',
'',
'    -- Calculate Blocks to be added',
'    SELECT KITS ',
'      INTO V_ADD_BLOCK_NO',
'      FROM EDC_IP_SHIPMENT',
'     WHERE SHIP_ID = :P205_SHIP_ID;',
'',
'    SELECT NVL(MAX(DTLS_ID), 0)',
'      INTO V_DTLS_ID ',
'      FROM EDC_STUDY_ARM_BLOCK_DTLS;',
'',
'   ',
'        for j in (select b.study_Arm_id ',
'                     from EDC_IP_SHIPMENT_dtls a,',
'                          edc_ip_detail b',
'                 where a.ip_id = b.ip_id',
'                    and ship_id= :P205_SHIP_ID',
'                   order by a.ip_id',
'                 )',
'        loop         ',
'            V_DTLS_ID := V_DTLS_ID + 1;',
'',
'            INSERT INTO EDC_STUDY_ARM_BLOCK_DTLS(DTLS_ID,',
'                                                 BLK_ID,',
'                                                 study_arm_id',
'                                                 ',
'                                                )',
'                                          VALUES(V_DTLS_ID,',
'                                                 V_BLK_ID,                                                 ',
'                                                 j.study_arm_id                                                 ',
'                                                );',
'',
'',
'            ',
'        end loop;       ',
' ',
'         ',
'    update edc_study_arm_block',
'       set blk_no = nvl(blk_no, 0) + V_ADD_BLOCK_NO',
'     where blk_id = V_BLK_ID;',
'',
'     COMMIT;     ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>9521370170555728049
,p_process_comment=>':REQUEST IN (''SAVE'')'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7755955790834056258)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'send low qty mail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'edc_mail.IP_LOW_STOCK_ALERT;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>6655005022692552165
);
wwv_flow_imp.component_end;
end;
/
