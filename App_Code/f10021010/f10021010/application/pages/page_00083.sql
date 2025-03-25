prompt --application/pages/page_00083
begin
--   Manifest
--     PAGE: 00083
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
 p_id=>83
,p_tab_set=>'TS1'
,p_name=>'Query Report'
,p_step_title=>'Query Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162080428350641820)
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
 p_id=>wwv_flow_imp.id(12162081125685693182)
,p_plug_name=>'Query Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PP.study_site_id||''-''||(select INVNAME from edc_sites where site_id= (select site_id from edc_study_sites where study_site_id = PP.study_site_id)) as "SITE",PP.PTINTL "Patient Initial", V.VISIT_TITLE "Visit Title", PP.SCRNO "Screening No.", to'
||'_char((select exkit from edc_crf_xr x, edc_patient_visit y , edc_patient_profile z',
' where x.patient_visit_id = y.patient_visit_id',
'   and y.patient_profile_id = z.patient_profile_id',
'   and z.patient_profile_id = pp.patient_profile_id)) "Randomization No.", Q.QRY_ID "Query#",',
'       V.VISIT_NUMBER, Q.STUDY_ID, Q.PATIENT_VISIT_ID, Q.PAGE_ID "Page Name", Q.ITEM_NAME "Item Name", Q.QRY_DESC "Query Description",',
'       Q.QRY_STATUS "Query Status", Q.QRY_RESPONSE "Query Response", Q.CREATED_BY "Created By", Q.CREATED_DT, Q.UPDATED_BY "Updated By",',
'       Q.UPDATED_DT, PP.PATIENT_PROFILE_ID,',
'Q.PAGE_ID,floor(sysdate - q.created_dt) diff',
'FROM EDC_CRF_QUERIES Q',
'JOIN EDC_PATIENT_VISIT V ',
'ON V.PATIENT_VISIT_ID = Q.PATIENT_VISIT_ID',
'JOIN EDC_PATIENT_PROFILE PP',
'ON PP.PATIENT_PROFILE_ID = V.PATIENT_PROFILE_ID ',
'AND PP.STUDY_SITE_ID IN (CASE WHEN :APP_EDC_USER_TYPE = 3 THEN (SELECT STUDY_SITE_ID FROM EDC_SITE_CONTACTS',
'                                                                WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER))',
'                              WHEN :APP_EDC_USER_TYPE = 2 THEN (SELECT CONTACT_ID FROM EDC_STUDY_CONTACT',
'                                                                WHERE STUDY_CONTACT_ID =  TO_NUMBER(:APP_EDC_USER_ID))',
'                              /*WHEN :APP_EDC_USER_TYPE = 1 AND :APP_EDC_ROLE_ID = 6 THEN (SELECT A.STUDY_SITE_ID',
'                                                                                         FROM EDC_STUDY_SITES A',
'                                                                                         JOIN EDC_STUDY_CONTACT B',
'                                                                                         ON A.USER_ID = B.CONTACT_ID',
'                                                                                         AND A.STUDY_ID = B.STUDY_ID',
'                                                                                         AND B.CONTACT_ID = TO_NUMBER(:APP_EDC_USER))*/ ',
'                         ELSE PP.STUDY_SITE_ID END)',
'                         '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12162081251362693182)
,p_name=>'Query Report'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'AVINASH.BHATIYA'
,p_internal_uid=>165457526878127402
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162081435538693185)
,p_db_column_name=>'Patient Initial'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Initial'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Patient Initial'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162081536775693185)
,p_db_column_name=>'Visit Title'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Visit Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Visit Title'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162081654575693186)
,p_db_column_name=>'Screening No.'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Screening No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Screening No.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162081747363693186)
,p_db_column_name=>'Randomization No.'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Randomization No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Randomization No.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162081834969693186)
,p_db_column_name=>'Query#'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Query#'
,p_column_link=>'f?p=&APP_ID.:#PAGE_ID#:&SESSION.::&DEBUG.::APP_EDC_PATIENT_VISIT_ID,P37_PATIENT_PROFILE_ID:#PATIENT_VISIT_ID#,#PATIENT_PROFILE_ID#'
,p_column_linktext=>'#Query##'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Query#'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162081942867693186)
,p_db_column_name=>'VISIT_NUMBER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Visit Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VISIT_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082032992693186)
,p_db_column_name=>'STUDY_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Study Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STUDY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082149272693186)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Patient Visit Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PATIENT_VISIT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082231994693187)
,p_db_column_name=>'Page Name'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Page Name'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'Page Name'
,p_rpt_named_lov=>wwv_flow_imp.id(12146521228636104789)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082351495693187)
,p_db_column_name=>'Item Name'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Item Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'Item Name'
,p_rpt_named_lov=>wwv_flow_imp.id(12162088349138043685)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082452344693187)
,p_db_column_name=>'Query Description'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Query Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Query Description'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082554884693187)
,p_db_column_name=>'Query Status'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Query Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Query Status'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082649049693187)
,p_db_column_name=>'Query Response'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Query Response'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Query Response'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082734827693187)
,p_db_column_name=>'Created By'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Created By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082846024693187)
,p_db_column_name=>'CREATED_DT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Created Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162082945631693187)
,p_db_column_name=>'Updated By'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Updated By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162083053354693188)
,p_db_column_name=>'UPDATED_DT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Updated Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_DT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162083142775693188)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Patient Profile Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PATIENT_PROFILE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11645681887104328238)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11645682609529328240)
,p_db_column_name=>'DIFF'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11645763069324910518)
,p_db_column_name=>'SITE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Site'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11645769301966979572)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'OPEN/REOPENED'
,p_report_seq=>10
,p_report_alias=>'1962063'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'Patient Initial:Visit Title:Screening No.:Randomization No.:Query#:VISIT_NUMBER:STUDY_ID:PATIENT_VISIT_ID:Page Name:Item Name:Query Description:Query Status:Query Response:Created By:CREATED_DT:Updated By:UPDATED_DT:PATIENT_PROFILE_ID:PAGE_ID:DIFF:SI'
||'TE'
,p_sort_column_1=>'Query Status'
,p_sort_direction_1=>'ASC'
,p_break_on=>'Patient Initial:Visit Title:Screening No.:Randomization No.:SITE:0'
,p_break_enabled_on=>'Patient Initial:Visit Title:Screening No.:Randomization No.:SITE:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11645769657809979572)
,p_report_id=>wwv_flow_imp.id(11645769301966979572)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'Query Status'
,p_operator=>'in'
,p_expr=>'Open,Reopened'
,p_condition_sql=>'"Query Status" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Open, Reopened''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11645770338973983889)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'CLOSED/RESPONDED'
,p_report_seq=>10
,p_report_alias=>'1962074'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'Patient Initial:Visit Title:Screening No.:Randomization No.:Query#:VISIT_NUMBER:STUDY_ID:PATIENT_VISIT_ID:Page Name:Item Name:Query Description:Query Status:Query Response:Created By:CREATED_DT:Updated By:UPDATED_DT:PATIENT_PROFILE_ID:PAGE_ID:DIFF:SI'
||'TE'
,p_sort_column_1=>'Query Status'
,p_sort_direction_1=>'ASC'
,p_break_on=>'Patient Initial:Visit Title:Screening No.:Randomization No.:SITE:0'
,p_break_enabled_on=>'Patient Initial:Visit Title:Screening No.:Randomization No.:SITE:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11645770811150983890)
,p_report_id=>wwv_flow_imp.id(11645770338973983889)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'Query Status'
,p_operator=>'in'
,p_expr=>'Closed,Responded'
,p_condition_sql=>'"Query Status" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Closed, Responded''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12162083227071693577)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1654596'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'Patient Initial:Visit Title:Screening No.:Randomization No.:Query#:VISIT_NUMBER:STUDY_ID:PATIENT_VISIT_ID:Page Name:Item Name:Query Description:Query Status:Query Response:Created By:CREATED_DT:Updated By:UPDATED_DT:PATIENT_PROFILE_ID:PAGE_ID:DIFF:SI'
||'TE'
,p_sort_column_1=>'Query Status'
,p_sort_direction_1=>'ASC'
,p_break_on=>'Patient Initial:Visit Title:Screening No.:Randomization No.:SITE:0'
,p_break_enabled_on=>'Patient Initial:Visit Title:Screening No.:Randomization No.:SITE:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11645768897228977471)
,p_application_user=>'AKASH.HALDER'
,p_name=>'OPEN/REOPENED'
,p_report_seq=>10
,p_display_rows=>15
,p_report_columns=>'Patient Initial:Visit Title:Screening No.:Randomization No.:Query#:VISIT_NUMBER:STUDY_ID:PATIENT_VISIT_ID:Page Name:Item Name:Query Description:Query Status:Query Response:Created By:CREATED_DT:Updated By:UPDATED_DT:PATIENT_PROFILE_ID:PAGE_ID:DIFF:SI'
||'TE'
,p_sort_column_1=>'Query Status'
,p_sort_direction_1=>'ASC'
,p_break_on=>'Patient Initial:Visit Title:Screening No.:Randomization No.:SITE:0'
,p_break_enabled_on=>'Patient Initial:Visit Title:Screening No.:Randomization No.:SITE:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11645768970002977471)
,p_report_id=>wwv_flow_imp.id(11645768897228977471)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'Query Status'
,p_operator=>'in'
,p_expr=>'Open,Reopened'
,p_condition_sql=>'"Query Status" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Open, Reopened''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162524534864988349)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11646806338959175549)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12162081125685693182)
,p_button_name=>'PRINT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11646806511192177084)
,p_name=>'print'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11646806338959175549)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11646806907650177085)
,p_event_id=>wwv_flow_imp.id(11646806511192177084)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'',
'',
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Query_Report&_repFormat=pdf&_dataSource=default&_outFilename=Query_Report.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_USER_TYPE=''+$v("APP_EDC_USER_TYPE")+''&APP_EDC_USER=''+ $v('
||'"APP_EDC_USER_TYPE") +''&APP_EDC_USER_ID=''+ $v("APP_EDC_USER_ID")+'''',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
