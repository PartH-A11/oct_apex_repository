prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_tab_set=>'TS1'
,p_name=>'Kit Requests'
,p_step_title=>'Kit Requests'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910448353878663934)
,p_plug_name=>'Kit Requests'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "SR_ID", ',
'        LPAD(SR_ID, 3, ''0'') IP_REQ_ID,',
'       "STUDY_SITE_ID",',
'       "SR_REQ_DATE",',
'       "ARM_1_QTY",',
'       "ARM_2_QTY",',
'       "ARM_3_QTY",',
'       "ARM_4_QTY",',
'       RESCUE_MEDICINE KITS,',
'       "PLACIBO_RUNIN",',
'       "RESCUE_MEDICINE",',
'       "EXP_DEL_DATE",',
'       (SELECT SHIP_NO FROM EDC_IP_SHIPMENT WHERE SHIP_ID = A.SHIPMENT_NO) SHIPMENT_NO,',
'       "RESPONSE_BY",',
'       "RESPONSE_DATE",',
'       DECODE(PM_APPROVED, 1, ''Approved'', -1, ''Declined'', ''Pending'') PM_APPROVED,',
'       CASE WHEN NVL(PM_APPROVED, -1) = -1',
'            THEN ''-''',
'            ELSE REQUEST_STATUS',
'        END REQUEST_STATUS',
'  FROM "#OWNER#"."EDC_IP_SHIPMENT_REQ" A',
' WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND ( (:APP_EDC_ROLE_ID IN (19) AND REQUEST_STATUS IS NOT NULL)',
'        OR',
'        (:APP_EDC_ROLE_ID IN (18,19) AND (PM_APPROVED = 1 OR PM_APPROVED IS NULL) ) -- DM can see Shipment Requests which are Approved by PM',
'        OR',
'        (:APP_EDC_ROLE_ID NOT IN (18, 19))',
'       )',
' ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "SR_ID", ',
'       SR."STUDY_SITE_ID",',
'       "SR_REQ_DATE",',
'       "ARM_1_QTY",',
'       "ARM_2_QTY",',
'       "EXP_DEL_DATE",',
'       "REQUEST_STATUS",',
'       "SHIPMENT_NO",',
'       "RESPONSE_BY",',
'       "RESPONSE_DATE"',
'   FROM "#OWNER#"."EDC_IP_SHIPMENT_REQ"  SR,',
'        EDC_STUDY_SITES A',
'  WHERE SR.STUDY_SITE_ID = A.STUDY_SITE_ID',
'    AND (:APP_EDC_USER = A.USER_ID',
'         OR',
'         :APP_EDC_ROLE_ID IN (13, 18, 20) -- Admin, DM, Sponsor',
'        )',
'  ORDER BY 1 '))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9910448719888663934)
,p_name=>'IP Requests'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:40:&APP_SESSION.::::P40_SR_ID:#SR_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>35490342716938339
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910448795606663935)
,p_db_column_name=>'SR_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sr Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910452807334663938)
,p_db_column_name=>'IP_REQ_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Kit Request #'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910449227924663935)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910449605789663935)
,p_db_column_name=>'SR_REQ_DATE'
,p_display_order=>31
,p_column_identifier=>'C'
,p_column_label=>'Request Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910450031725663936)
,p_db_column_name=>'ARM_1_QTY'
,p_display_order=>41
,p_column_identifier=>'D'
,p_column_label=>'Test Arm<br/>Quantity'
,p_column_type=>'NUMBER'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910450393638663936)
,p_db_column_name=>'ARM_2_QTY'
,p_display_order=>51
,p_column_identifier=>'E'
,p_column_label=>'Reference Arm<br/>Quantity'
,p_column_type=>'NUMBER'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9521369142723728039)
,p_db_column_name=>'ARM_3_QTY'
,p_display_order=>61
,p_column_identifier=>'M'
,p_column_label=>'Placebo<br/>Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9521369273490728040)
,p_db_column_name=>'ARM_4_QTY'
,p_display_order=>71
,p_column_identifier=>'N'
,p_column_label=>'Placebo Run-in<br/>Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9521370297522728050)
,p_db_column_name=>'KITS'
,p_display_order=>81
,p_column_identifier=>'O'
,p_column_label=>'Total Number of Kits'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9521370418232728051)
,p_db_column_name=>'PLACIBO_RUNIN'
,p_display_order=>91
,p_column_identifier=>'P'
,p_column_label=>'Placebo Run-in'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9521370520513728052)
,p_db_column_name=>'RESCUE_MEDICINE'
,p_display_order=>101
,p_column_identifier=>'Q'
,p_column_label=>'Total Number of Kits'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910450796457663936)
,p_db_column_name=>'EXP_DEL_DATE'
,p_display_order=>111
,p_column_identifier=>'F'
,p_column_label=>'Expected<br/>Delivery Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910451234058663937)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>121
,p_column_identifier=>'G'
,p_column_label=>'Request Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910451592582663937)
,p_db_column_name=>'SHIPMENT_NO'
,p_display_order=>131
,p_column_identifier=>'H'
,p_column_label=>'Shipment No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910452019149663937)
,p_db_column_name=>'RESPONSE_BY'
,p_display_order=>141
,p_column_identifier=>'I'
,p_column_label=>'Response By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910452400210663938)
,p_db_column_name=>'RESPONSE_DATE'
,p_display_order=>151
,p_column_identifier=>'J'
,p_column_label=>'Response Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910453215717663938)
,p_db_column_name=>'PM_APPROVED'
,p_display_order=>161
,p_column_identifier=>'L'
,p_column_label=>'PM Approved?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9910453589912663939)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'354953'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IP_REQ_ID:STUDY_SITE_ID:SR_REQ_DATE:RESCUE_MEDICINE:EXP_DEL_DATE:PM_APPROVED:REQUEST_STATUS:SHIPMENT_NO:'
,p_sort_column_1=>'IP_REQ_ID'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910454506712663940)
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
 p_id=>wwv_flow_imp.id(9910454922174663940)
,p_plug_name=>'IP_INVENTORY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045178973639407883)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(11051769575586568669)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910454165734663939)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9910448353878663934)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Kit'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:40'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp.component_end;
end;
/
