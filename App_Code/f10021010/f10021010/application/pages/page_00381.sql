prompt --application/pages/page_00381
begin
--   Manifest
--     PAGE: 00381
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
 p_id=>381
,p_tab_set=>'TS1'
,p_name=>'Received at Depot'
,p_step_title=>'Received at Depot'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
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
'            var dt1 = $(''#P381_SHIP_DT'').val();',
'            var dt2 = $(''#P381_SHIP_REC_DT'').val();',
'',
'         // var dt1 = $(pThis).parent().parent().find(''input[name=p_t05]'').val();',
'         // var dt2 = $(pThis).parent().parent().find(''input[name=p_t06]'').val();',
'',
'        var cDt1 = customDateParse(dt1);',
'        var cDt2 = customDateParse(dt2);',
'',
'    cDt1 = +new Date(cDt1);',
'    cDt2 = +new Date(cDt2);',
'',
'',
'       var dateType = $(pThis).attr(''id'');',
'    ',
'',
'       if (cDt2 < cDt1 && dateType == ''P381_SHIP_REC_DT'')',
'       {',
'           alert(''Received Date should be greater than Shipment Date.'');',
'           $(''#P381_SHIP_REC_DT'').val('''');',
'       }',
'       else if (cDt1 > cDt2 && dateType == ''P381_SHIP_DT'')',
'       {',
'           alert(''Shipment Date should be less than Received Date.'');',
'           $(''#P381_SHIP_DT'').val('''');',
'       }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("select[name=f05] option[value=''2'']").remove();',
'$("select[name=f05] option[value=''3'']").remove();',
'$("select[name=f05] option[value=''5'']").remove();',
'$("select[name=f05] option[value=''9'']").remove();'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052277962327388709)
,p_plug_name=>'IP Supply Management'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:10px;width: 220px;"'
,p_plug_display_sequence=>1
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>'283,372,374,469,381,382,384'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052278159545388711)
,p_plug_name=>' Received at Depot'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>'style="width:930px;"'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11052281578720388715)
,p_name=>'Study Information'
,p_template=>wwv_flow_imp.id(11045180167451407887)
,p_display_sequence=>9
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "CRO_STUDY"."STUDY_ID" as "STUDY_ID",',
'substr(STUDY_NUMBER,1,15) as "STUDY_NUMBER",',
'PROTOCOL_NUMBER as "PROJECT_CODE",',
'CRO_SPONSOR_PKG.GET_SPONSOR_NAME("CRO_STUDY"."SPONSOR_ID") AS "SPONSOR",',
'substr(TITLE,1,82)||case when length(title) > 20 then ''...'' else null end as "Title",',
'CRO_STUDY_PKG.GET_PM_NAMESFROMCSV("CRO_STUDY"."PM_ID") as "Project Manager",',
'"CRO_STUDY"."START_DATE" as "Start Date",',
'"CRO_STUDY"."END_DATE" as "End Date",',
'"CRO_STUDY"."PHASE" as "PHASE",',
'substr(STUDY_ACTIVE,1,20) as "Study Status"',
'--"CRO_STUDY"."NO_OF_PATIENTS" as "# of Patients"',
'from "EDC_STUDY" "CRO_STUDY"',
'where "CRO_STUDY"."STUDY_ID" = :APP_EDC_STUDY_ID'))
,p_display_condition_type=>'NEVER'
,p_read_only_when_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P381_STUDY_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Please Select Project...'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052281783104388716)
,p_query_column_id=>1
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:P16_STUDY_ID:#STUDY_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052281877128388716)
,p_query_column_id=>2
,p_column_alias=>'STUDY_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Protocol Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052281964647388716)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Project Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052282760386388716)
,p_query_column_id=>4
,p_column_alias=>'SPONSOR'
,p_column_display_sequence=>4
,p_column_heading=>'Sponsor'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052282079415388716)
,p_query_column_id=>5
,p_column_alias=>'Title'
,p_column_display_sequence=>5
,p_column_heading=>'Protocol Title'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_cattributes_element=>'style="width:200px !important;"'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052282156869388716)
,p_query_column_id=>6
,p_column_alias=>'Project Manager'
,p_column_display_sequence=>9
,p_column_heading=>'Project Manager'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052282263144388716)
,p_query_column_id=>7
,p_column_alias=>'Start Date'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052282368336388716)
,p_query_column_id=>8
,p_column_alias=>'End Date'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052282473485388716)
,p_query_column_id=>9
,p_column_alias=>'PHASE'
,p_column_display_sequence=>8
,p_column_heading=>'Phase'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052282587043388716)
,p_query_column_id=>10
,p_column_alias=>'Study Status'
,p_column_display_sequence=>10
,p_column_heading=>'Study Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052282886496388718)
,p_plug_name=>'Kit Received at Depot'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>11
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.bottle_no ip_id,',
'       b.study_arm_id,',
'       a.ORG_IP_STATUS,',
'       b.ip_content,',
'   --  b.ip_dose_level,',
'       b.ip_dose ,',
'    --   B.IP_NO_TABLETS,',
'       b.IP_STATUS,',
'       CASE WHEN b.ip_dose IN (8,16,32,64)',
'            THEN ''<b>Bottle</b>''',
'       ELSE ''<b>Box</b>''',
'       END AS "Box/ Bottle",',
'       --APEX_ITEM.SELECT_LIST_FROM_LOV(5,decode(A.SHIPPED_STATUS,1,11,NVL(A.SHIPPED_STATUS,11)),''CRO_SHIPPED_IP_STATUS'',NULL,''YES'',NULL,''-- Select  --'')  AS SHIP_STATUS,',
'       --APEX_ITEM.SELECT_LIST_FROM_LOV(5,decode(A.SHIPPED_STATUS,A.SHIPPED_STATUS,11),''CRO_SHIPPED_IP_STATUS'',NULL,''YES'',NULL,''-- Select  --'')  AS SHIP_STATUS,',
'       APEX_ITEM.SELECT_LIST_FROM_LOV(5,decode(A.SHIPPED_STATUS,12,12,A.SHIPPED_STATUS,11),''CRO_SHIPPED_IP_STATUS'',NULL,''YES'',NULL,''-- Select  --'')  AS SHIP_STATUS,',
'       /*CASE WHEN SHIPPED_STATUS IS NOT NULL THEN APEX_ITEM.SELECT_LIST_FROM_LOV(5,11,''CRO_SHIPPED_IP_STATUS'',NULL,''YES'',NULL,''-- Select  --'')',
'       ELSE',
'       APEX_ITEM.SELECT_LIST_FROM_LOV(5,NVL(A.SHIPPED_STATUS,11),''CRO_SHIPPED_IP_STATUS'',NULL,''YES'',NULL,''-- Select  --'')',
'       END AS SHIP_STATUS,*/',
'       apex_item.text (1,A.RET_DTLS_ID,NULL,NULL,''style="display: none;"'') TEMP_ID,',
'       '''' as AUDITT',
'     , a.ret_dtls_id',
'  FROM edc_ip_shipment_RETURN_dtls a,',
'       edc_ip_detail b',
' WHERE A.IP_ID = B.IP_ID',
'   AND ship_id   = :P381_SHIP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P381_SHIP_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select a.ip_id,b.study_arm_id,b.ip_content,b.ip_dose_level,b.ip_dose ,B.IP_NO_TABLETS, b.IP_STATUS, case when b.ip_dose in (8,16,32,64) then ''<b>Bottle</b>'' else ''<b>Box</b>'' end as "Box/ Bottle",cro_util.GET_IP_SHIIPED_STATUS(a.ip_id) as SHIP_STAT'
||'US',
'  from cro_ip_shipment_RETURN_dtls a, cro_ip_detail b',
' WHERE A.IP_ID = B.IP_ID/',
'   and ship_id = :P381_SHIP_ID*/',
'   ',
'   ',
'   SELECT a.ip_id,',
'  b.study_arm_id,',
'  b.ip_content,',
'  b.ip_dose_level,',
'  b.ip_dose ,',
'  B.IP_NO_TABLETS,',
'  b.IP_STATUS,',
'  CASE',
'    WHEN b.ip_dose IN (8,16,32,64)',
'    THEN ''<b>Bottle</b>''',
'    ELSE ''<b>Box</b>''',
'  END                                     AS "Box/ Bottle",',
'  APEX_ITEM.SELECT_LIST_FROM_LOV(5,A.SHIPPED_STATUS,''CRO_SHIPPED_IP_STATUS'',NULL,''YES'',NULL,''-- Not Started - 0%  --'')  AS SHIP_STATUS,',
'  apex_item.text (1,A.RET_DTLS_ID,NULL,NULL,''style="display: none;"'') TEMP_ID',
'FROM edc_ip_shipment_RETURN_dtls a,',
'  edc_ip_detail b',
'WHERE A.IP_ID = B.IP_ID',
'AND ship_id   = :P381_SHIP_ID',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11052283066604388718)
,p_name=>'IP Received at Site'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>156610110261327031
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10150520545596819861)
,p_db_column_name=>'IP_ID'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Kit #'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11062587074096456055)
,p_db_column_name=>'STUDY_ARM_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Study Arm'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STUDY_ARM_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11051769157547568668)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)',
'    AND SUN_21010_DEV.EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(:APP_EDC_STUDY_ID, :APP_EDC_USER_ID) = 1'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(750213195894648059)
,p_db_column_name=>'ORG_IP_STATUS'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>'Kit Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(11051816672495046750)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(750214404360648071)
,p_db_column_name=>'SHIP_STATUS'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'<center>Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SHIP_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11062587163848456056)
,p_db_column_name=>'IP_CONTENT'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Ip Content'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'IP_CONTENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11062587385508456056)
,p_db_column_name=>'IP_DOSE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Size'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'IP_DOSE'
,p_use_as_row_header=>'N'
,p_column_comment=>'''Size'' rename instead of ''Ip Dose'''
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11062587563721456056)
,p_db_column_name=>'IP_STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Shipped Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'IP_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11062587661228456056)
,p_db_column_name=>'Box/ Bottle'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Box/ Bottle'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'Box/ Bottle'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11062587872343456057)
,p_db_column_name=>'TEMP_ID'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'&nbsp;'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187476548041379993)
,p_db_column_name=>'AUDITT'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Audit'
,p_column_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP,76:P76_TABLE_NAME,P76_PAGE_ID,P76_PK_ID:EDC_IP_SHIPMENT_RETURN_DTLS,381,#RET_DTLS_ID#'
,p_column_linktext=>'Audit'
,p_column_link_attr=>'onclick="return false" class="a_edit_link"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7187476583526379994)
,p_db_column_name=>'RET_DTLS_ID'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Ret dtls id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11052284173599388719)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1566113'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'IP_ID:STUDY_ARM_ID:ORG_IP_STATUS:SHIP_STATUS:TEMP_ID:AUDITT:'
,p_sort_column_1=>'IP_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052284584866388721)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 500px;"'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052299383720549511)
,p_plug_name=>'IP_INVENTORY'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1.5
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(11051769575586568669)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062810887426907173)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1.5
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062964880235490875)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180259607407887)
,p_plug_display_sequence=>25
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
 p_id=>wwv_flow_imp.id(11062965174479498703)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_imp.id(11062964880235490875)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052278579110388711)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Accept Shipment'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P381_SHIP_STATUS = ''Dispatched'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052278961663388712)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:380:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052278382710388711)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P381_SHIP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10172936952473712824)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CREATE2'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P381_SHIP_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052278786115388711)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052284373886388719)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11052282886496388718)
,p_button_name=>'SAVE_STATUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P381_SHIP_STATUS = ''Dispatched'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11052286272424388726)
,p_branch_name=>'Go To Page 380'
,p_branch_action=>'f?p=&APP_ID.:380:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':REQUEST IN (''SAVE'')'
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052279174469388713)
,p_name=>'P381_SHIP_TYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_source=>'SHIP_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052279374021388713)
,p_name=>'P381_SHIP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_use_cache_before_default=>'NO'
,p_source=>'SHIP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052279573546388714)
,p_name=>'P381_SHIP_NO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipment No.'
,p_source=>'SHIP_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly;"'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052279768525388714)
,p_name=>'P381_SHIP_DT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipment Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'SHIP_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052279968377388714)
,p_name=>'P381_STUDY_SITE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site'
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
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052280165792388714)
,p_name=>'P381_SHIP_REC_DT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11052278159545388711)
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
,p_read_only_when=>':P381_SHIP_STATUS IN (''Delivered'')'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P381_SHIP_DT.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2100'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- For Date Comparision',
'onchange="revise_date_act(this)"',
'-- End -- For Date Comparision',
'',
'sysdate'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052280384915388714)
,p_name=>'P381_SHIP_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_use_cache_before_default=>'NO'
,p_source=>'SHIP_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052280583832388714)
,p_name=>'P381_SHIP_COMMENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11052278159545388711)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Comment</b>'
,p_source=>'SHIP_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>75
,p_cMaxlength=>2000
,p_cHeight=>2
,p_colspan=>3
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
,p_item_comment=>'<b> Ship Comment </b>'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052280764656388715)
,p_name=>'P381_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11062965174479498703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Created By </b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052280958263388715)
,p_name=>'P381_CREATED_DT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11062965174479498703)
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
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052281180056388715)
,p_name=>'P381_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11062965174479498703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Updated By </b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052281380299388715)
,p_name=>'P381_UPDATED_DT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11062965174479498703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Updated On </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(773571105730366532)
,p_computation_sequence=>10
,p_computation_item=>'P381_SHIP_STATUS'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'Delivered'
,p_compute_when=>':REQUEST IN (''SAVE'') AND :P381_SHIP_REC_DT IS NOT NULL'
,p_compute_when_text=>'PLSQL'
,p_compute_when_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10171429405272112322)
,p_validation_name=>'IR Status NN'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'     V_ERROR_COUNT NUMBER := 0;',
'BEGIN',
'	FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'  		IF APEX_APPLICATION.G_F05(i) IS NULL THEN',
'                   V_ERROR_COUNT := V_ERROR_COUNT + 1;',
'                END IF;',
'	END LOOP;',
'',
'IF V_ERROR_COUNT > 0 THEN',
'   RETURN FALSE;',
'ELSE',
'   RETURN TRUE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must have to select Status for the IP'
,p_validation_condition=>':REQUEST IN (''SAVE'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1192129396555457748)
,p_validation_name=>'P381_SHIP_REC_DT_NN'
,p_validation_sequence=>20
,p_validation=>'P381_SHIP_REC_DT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Received Date must have some value'
,p_associated_item=>wwv_flow_imp.id(11052280165792388714)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10172937187709714150)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10172936952473712824)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10172937558154714151)
,p_event_id=>wwv_flow_imp.id(10172937187709714150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_PK_ID,P41_TABLE_NAME:&APP_PAGE_ID.,&P381_SHIP_ID.,EDC_IP_SHIPMENT'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7187476764247379995)
,p_name=>'Open Audit Trail'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.a_edit_link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7187476777796379996)
,p_event_id=>wwv_flow_imp.id(7187476764247379995)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052284764889388724)
,p_process_sequence=>50
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'make form read only on Delivered'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P381_SHIP_STATUS in (''Delivered'') THEN',
'        htp.p(''<script language="Javascript">'');',
'        htp.p(''$("input,textarea").each(function(){ $(this).attr("readonly","readonly");});'');',
'        htp.p(''$("select").each(function(){ $(this).attr("disabled","disabled");});'');',
'        htp.p(''$(function(){$("img.ui-datepicker-trigger").css("display","none");});'');',
'	    htp.p(''</script>'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11052284764889388724
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052284966705388725)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CRO_IP_SHIPMENT'
,p_attribute_02=>'EDC_IP_SHIPMENT'
,p_attribute_03=>'P381_SHIP_ID'
,p_attribute_04=>'SHIP_ID'
,p_internal_uid=>11052284966705388725
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052285164022388725)
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
'    :P381_SHIP_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052278382710388711)
,p_internal_uid=>11052285164022388725
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052285362197388725)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_IP_DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P381_SHIP_REC_DT IS NOT NULL THEN',
'       :P381_SHIP_STATUS := ''Delivered'';',
'',
'        update EDC_ip_detail',
'           set ip_status = -2',
'         where ip_id in(select ip_id',
'                          from edc_ip_shipment_return_dtls',
'                         where ship_id = :P381_SHIP_ID',
'                       );',
'',
'        update edc_ip_shipment_return_dtls',
'           set IP_STATUS = -2',
'         where ship_id = :P381_SHIP_ID;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#sqlerrm#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052278579110388711)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'&nbsp;&nbsp;&nbsp;'
,p_internal_uid=>11052285362197388725
,p_process_comment=>'Medicines received at Site.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052285573255388725)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_IP_SHIPMENT'
,p_attribute_02=>'EDC_IP_SHIPMENT'
,p_attribute_03=>'P381_SHIP_ID'
,p_attribute_04=>'SHIP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11052285573255388725
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052285984450388725)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save interactive report'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RES NUMBER;',
'BEGIN',
'	FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'  		UPDATE EDC_IP_SHIPMENT_RETURN_DTLS',
'           SET SHIPPED_STATUS = APEX_APPLICATION.G_F05(i)',
'		 WHERE RET_DTLS_ID = APEX_APPLICATION.G_F01(i);',
'	END LOOP;',
'',
'	COMMIT;',
'',
'    IF :P381_SHIP_REC_DT IS NOT NULL AND :REQUEST IN (''SAVE'') THEN',
'        :P381_SHIP_STATUS := ''Delivered'';',
'',
'        for j in (select ip_id',
'                       , SHIPPED_STATUS',
'                    from EDC_IP_SHIPMENT_RETURN_DTLS ',
'                   where ship_id = :P381_SHIP_ID',
'                 ) ',
'        loop',
'            update EDC_ip_detail',
'             --set ip_status = -2',
'               set ip_status = DECODE(J.SHIPPED_STATUS,',
'                                       --1, 1,   -- Received     to Received at Depot',
'                                      11, -2,   -- Returned   to Returned from Site',
'                                      5, 6,   -- Expired      to Expired at Depot',
'                                      2, 13,  -- Damanged     to Damaged at Depot',
'                                      8, 14,  -- Lost         to Lost at Depot',
'                                      3, 15,  -- Qurantined   to Quarantined at Depot',
'                                      6, 16,  -- Destroyed    to Destroyed at Depot',
'                                      4, 18,  -- Unqurantined to Unquarantined at Depot',
'                                      9, 22,  -- Tempreture   to Tempreture at Depot',
'                                      12,23,  -- Not Received to Not Received at Depot',
'                                      --1,',
'                                      -2',
'                                     )',
'             where ip_id = j.ip_id;',
'             commit;',
'        end loop; ',
'        --end loop; ',
'',
'        /*UPDATE EDC_IP_SHIPMENT_RETURN_DTLS',
'         SET IP_STATUS = -2',
'        WHERE ship_id = :P381_SHIP_ID;*/',
'',
'        COMMIT;',
'    END IF;',
'    IF :REQUEST = ''SAVE'' THEN',
'      EDC_MAIL.SEND_MAIL_REC_AT_DEPOT(:P381_SHIP_ID, :APP_EDC_STUDY_ID, V_RES);',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'', ''SAVE_STATUS'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>11052285984450388725
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'  		UPDATE EDC_IP_SHIPMENT_RETURN_DTLS',
'           SET SHIPPED_STATUS = APEX_APPLICATION.G_F05(i)',
'		 WHERE RET_DTLS_ID = APEX_APPLICATION.G_F01(i);',
'	END LOOP;',
'',
'	COMMIT;',
'',
'    IF :P381_SHIP_REC_DT IS NOT NULL THEN',
'        :P381_SHIP_STATUS := ''Delivered'';',
'',
'        for j in (select ip_id',
'                       , SHIPPED_STATUS',
'                    from EDC_IP_SHIPMENT_RETURN_DTLS ',
'                   where ship_id = :P381_SHIP_ID',
'                 ) ',
'        loop',
'            update EDC_ip_detail',
'             --set ip_status = -2',
'               set ip_status = DECODE(J.SHIPPED_STATUS,',
'                                      1, 1,   -- Received     to Received at Depot',
'                                      5, 6,   -- Expired      to Expired at Depot',
'                                      2, 13,  -- Damanged     to Damaged at Depot',
'                                      8, 14,  -- Lost         to Lost at Depot',
'                                      3, 15,  -- Qurantined   to Quarantined at Depot',
'                                      6, 16,  -- Destroyed    to Destroyed at Depot',
'                                      4, 18,  -- Unqurantined to Unquarantined at Depot',
'                                      1)',
'             where ip_id = j.ip_id;',
'             commit;',
'        end loop; ',
'        --end loop; ',
'',
'        UPDATE EDC_IP_SHIPMENT_RETURN_DTLS',
'         SET IP_STATUS = -2',
'        WHERE ship_id = :P381_SHIP_ID;',
'',
'        COMMIT;',
'    END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2461021277200608275)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set IP_status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P381_SHIP_REC_DT IS NOT NULL AND :REQUEST IN (''SAVE_STATUS'',''SAVE'') THEN',
'        :P381_SHIP_STATUS := ''Dispatched'';',
'',
'        for j in (select ip_id',
'                       , RET_DTLS_ID',
'                       , SHIP_ID  ',
'                       , SHIPPED_STATUS',
'                    from EDC_IP_SHIPMENT_RETURN_DTLS ',
'                   where ship_id = :P381_SHIP_ID',
'                 ) ',
'        loop',
'           ',
'             ',
'        ',
'    update EDC_IP_SHIPMENT_RETURN_DTLS',
'                 set ip_status = DECODE(J.SHIPPED_STATUS,',
'                                      11, -2,   -- Returned   to Returned from Site',
'                                      5, 6,   -- Expired      to Expired at Depot',
'                                      2, 13,  -- Damanged     to Damaged at Depot',
'                                      3, 15,  -- Qurantined   to Quarantined at Depot',
'                                      9, 22,  -- Tempreture   to Tempreture at Depot',
'                                      12,23  -- Not Received to Not Received at Depot',
'                                      )',
'             where RET_DTLS_ID = J.RET_DTLS_ID;',
'             ',
'           commit;',
'           ',
'           end loop; ',
'       END IF;    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'', ''SAVE_STATUS'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>2461021277200608275
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052285779877388725)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052278786115388711)
,p_internal_uid=>11052285779877388725
);
wwv_flow_imp.component_end;
end;
/
