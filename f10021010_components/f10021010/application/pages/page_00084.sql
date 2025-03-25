prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_tab_set=>'TS1'
,p_name=>'Adverse Event'
,p_step_title=>'Adverse Event'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#apexir_WORKSHEET',
'{',
'overflow-x:auto !important;',
' width:100%!important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162103544381049664)
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
 p_id=>wwv_flow_imp.id(12162105632349076417)
,p_plug_name=>'Adverse Event'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EPP.SCRNO "Screening Number", EPP.PTINTL "Patient Initial", EPP.RANDOMNO "Randomization Number", EPP.SCREENING_DATE "Screening Date",',
'       EPP.RANDOMIZATION_DATE "Randomization Date", EDC_SITE_PKG.GET_SITE_NAME(ESS.SITE_ID) "Site Name", ESS.SITE_NUMBER "Site Number",',
'       ECAS.AED_ID,',
'       ECAS.AESNO,',
'ECAS.AETERM,',
'ECAS.AESTDAT,',
'to_char(ECAS.AESTTIM,''HH24:MI'') "Start Time",',
'ECAS.AEREL,',
'ECAS.AEAPSR,',
'ECAS.AESEV1,',
'ECAS.AETRT,',
'ECAS.AEDIS,',
'ECAS.AEENDAT,',
'to_char(ECAS.AEENTIM,''HH24:MI'') "End Time",',
'ECAS.AEOUT1,',
'       ECAS.AESER , ECAS.CREATED_BY "Created By",',
'       ECAS.CREATED_DT "Created By Date", ECAS.SECTION_STATUS "Section Status",',
'AEACTKN "Action Taken",',
'AEOUT1 "Outcome"',
'FROM EDC_PATIENT_PROFILE EPP',
'JOIN EDC_PATIENT_VISIT EPV',
'ON EPP.PATIENT_PROFILE_ID = EPV.PATIENT_PROFILE_ID',
'JOIN EDC_STUDY_SITES ESS',
'ON ESS.STUDY_SITE_ID = EPP.STUDY_SITE_ID',
'JOIN EDC_CRF_AE_DTL ECAS',
'ON EPV.PATIENT_PROFILE_ID = EPV.PATIENT_PROFILE_ID',
'AND EPP.STUDY_SITE_ID IN (CASE WHEN :APP_EDC_USER_TYPE = 3 THEN (SELECT STUDY_SITE_ID FROM EDC_SITE_CONTACTS',
'                                                                 WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER))',
'                               WHEN :APP_EDC_USER_TYPE = 2 THEN (SELECT CONTACT_ID FROM EDC_STUDY_CONTACT',
'                                                                 WHERE STUDY_CONTACT_ID =  TO_NUMBER(:APP_EDC_USER_ID))',
'                               /*WHEN :APP_EDC_USER_TYPE = 1 AND :APP_EDC_ROLE_ID = 6 THEN (SELECT A.STUDY_SITE_ID',
'                                                                                          FROM EDC_STUDY_SITES A',
'                                                                                          JOIN EDC_STUDY_CONTACT B',
'                                                                                          ON A.USER_ID = B.CONTACT_ID',
'                                                                                          AND A.STUDY_ID = B.STUDY_ID',
'                                                                                          AND B.CONTACT_ID = TO_NUMBER(:APP_EDC_USER))*/ ',
'                          ELSE EPP.STUDY_SITE_ID END)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12162105749807076417)
,p_name=>'Adverse Event'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'AVINASH.BHATIYA'
,p_internal_uid=>165482025322510637
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162105932140076419)
,p_db_column_name=>'Screening Number'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Screening Number'
,p_column_html_expression=>'style="width:250;"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Screening Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162106026078076419)
,p_db_column_name=>'Patient Initial'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Initial'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Patient Initial'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162106144871076419)
,p_db_column_name=>'Randomization Number'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Randomization Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Randomization Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162106233518076419)
,p_db_column_name=>'Screening Date'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Screening Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Screening Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162106332643076419)
,p_db_column_name=>'Randomization Date'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Randomization Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Randomization Date'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162106445536076420)
,p_db_column_name=>'Site Name'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Site Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Site Name'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="width:250;background-color: yellow; color: red;">#Site Name#</span> '
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162106546330076420)
,p_db_column_name=>'Site Number'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Site Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Site Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12162107639142076421)
,p_db_column_name=>'Start Time'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Start Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Start Time'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643530816144307173)
,p_db_column_name=>'AED_ID'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Aed Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643531490502307174)
,p_db_column_name=>'AESNO'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'AE No.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643532228607307175)
,p_db_column_name=>'AETERM'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Adverse Event'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643532914760307175)
,p_db_column_name=>'AESTDAT'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643533585087307176)
,p_db_column_name=>'AEREL'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Relation To Study Drug'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643534267560307177)
,p_db_column_name=>'AEAPSR'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Application Site Reaction'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643534950797307177)
,p_db_column_name=>'AESEV1'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Severity'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643535728681307178)
,p_db_column_name=>'AETRT'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Any Medication Received For This AE?'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643536405034307178)
,p_db_column_name=>'AEDIS'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Caused Study Discontinuation?'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643537092013307179)
,p_db_column_name=>'AEENDAT'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643537773811307180)
,p_db_column_name=>'End Time'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'End Time'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643538492743307180)
,p_db_column_name=>'AEOUT1'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Aeout1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643539140597307181)
,p_db_column_name=>'Created By'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643539907492307181)
,p_db_column_name=>'Created By Date'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Created By Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643540562972307182)
,p_db_column_name=>'Section Status'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Section Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11643559099984347348)
,p_db_column_name=>'AESER'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Serious AE'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11646210338338739461)
,p_db_column_name=>'Action Taken'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Action Taken'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11677329292262054746)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11646211083613739465)
,p_db_column_name=>'Outcome'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Outcome'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11672190969022400460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12162109033734076817)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1654854'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'Screening Number:Patient Initial:Site Name:Site Number:AESNO:AETERM:AESTDAT:Start Time:AEREL:Action Taken:AEAPSR:AESEV1:AETRT:AEDIS:AEENDAT:End Time:Outcome:AESER:'
,p_break_on=>'Patient Initial:Visit:Screening Number:Randomization Number:0:0'
,p_break_enabled_on=>'Patient Initial:Visit:Screening Number:Randomization Number:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162539846349445745)
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
 p_id=>wwv_flow_imp.id(11646448690695630790)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12162105632349076417)
,p_button_name=>'PRINT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11646449268391633675)
,p_name=>'print'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11646448690695630790)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11646449668450633676)
,p_event_id=>wwv_flow_imp.id(11646449268391633675)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Adverse&_repFormat=pdf&_dataSource=default&_outFilename=Adverse.pdf&_repLocale=en_US&_repEncoding=UTF-8&EDC_USER_TYPE=''+$v("APP_EDC_USER_TYPE")+''&EDC_USER_TYPE=''+ $v("APP_EDC_USER'
||'_TYPE") +''&EDC_USER_ID=''+ $v("APP_EDC_USER_ID")+'''',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
