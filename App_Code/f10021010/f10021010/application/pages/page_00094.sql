prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_name=>'Userwise VS Report '
,p_step_title=>'Userwise VS Report '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10898234851735461823)
,p_plug_name=>'Userwise VS report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180572024407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  b.PTINTL,',
'           b.SCRNO,',
'           a.CREATED_BY CRC_USER,',
'           b.CREATED_BY PI_USER,',
'           CRC_RR,PI_RR,',
'           CRC_PR,PI_PR,',
'           CRC_SBP,PI_SBP,',
'           CRC_DBP,PI_DBP,',
'           CRC_TEMP,PI_TEMP,',
'           CRC_comt,PI_comt',
'from',
'(SELECT ',
'            created_by,   ',
'            row_count(RESPIRATORY_RATE,CREATED_BY,patient_visit_id) CRC_RR,',
'            row_count(PULSE_RATE,CREATED_BY,patient_visit_id) CRC_PR,',
'            row_count(BLOOD_PRESSURE,CREATED_BY,patient_visit_id) CRC_SBP,   --BLOOD_PRESSURE SBP,',
'            row_count(BLOOD_PRESSURE_1,CREATED_BY,patient_visit_id) CRC_DBP,   --BLOOD_PRESSURE_1 DBP,',
'            row_count(TEMPERATURE,CREATED_BY,patient_visit_id) CRC_TEMP, --TEMPERATURE,',
'            row_count(CE_1,CREATED_BY,patient_visit_id) CRC_comt --CE_1 comt,',
' FROM edc_crf_vs_2',
'where patient_visit_id = 436',
'   and study_id = 661',
'   and created_by = ''DEMO.CRC'') a,',
'   (SELECT ',
'             CREATED_BY,',
'            (select PTINTL ',
'               from edc_patient_profile ',
'             where patient_profile_id = (select patient_profile_id ',
'                                                     from edc_patient_visit ',
'                                                     where patient_visit_id = 436',
'                                                  )',
'            ) PTINTL,',
'            (select SCRNO ',
'               from edc_patient_profile ',
'             where patient_profile_id = (select patient_profile_id ',
'                                                     from edc_patient_visit ',
'                                                     where patient_visit_id = 436',
'                                                  )',
'            ) SCRNO,',
'            row_count(RESPIRATORY_RATE,CREATED_BY,patient_visit_id) PI_RR,',
'            row_count(PULSE_RATE,CREATED_BY,patient_visit_id) PI_PR,',
'            row_count(BLOOD_PRESSURE,CREATED_BY,patient_visit_id) PI_SBP,   --BLOOD_PRESSURE SBP,',
'            row_count(BLOOD_PRESSURE_1,CREATED_BY,patient_visit_id) PI_DBP,   --BLOOD_PRESSURE_1 DBP,',
'            row_count(TEMPERATURE,CREATED_BY,patient_visit_id) PI_TEMP, --TEMPERATURE,',
'            row_count(CE_1,CREATED_BY,patient_visit_id) PI_comt --CE_1 comt,',
'     FROM edc_crf_vs_2',
'    where patient_visit_id = 436',
'       and study_id = 661',
'       and created_by = ''PI'') b;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10898234936783461823)
,p_name=>'Userwise VS report'
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
,p_owner=>'LABDHI.SHAH'
,p_internal_uid=>170950306471891616
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235161594461828)
,p_db_column_name=>'PTINTL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient <br> Initial'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PTINTL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235248082461828)
,p_db_column_name=>'SCRNO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Screening <br> Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SCRNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235348046461828)
,p_db_column_name=>'CRC_USER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'CRC <br> User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CRC_USER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235460366461828)
,p_db_column_name=>'PI_USER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'PI <br> User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PI_USER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235552122461829)
,p_db_column_name=>'CRC_RR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'CRC <br> Respiratory rate '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CRC_RR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235632932461829)
,p_db_column_name=>'PI_RR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'PI <br> Respiratory rate '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PI_RR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235755295461829)
,p_db_column_name=>'CRC_PR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'CRC <br> Pulse rate'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CRC_PR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235850869461829)
,p_db_column_name=>'PI_PR'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'PI <br> Pulse rate'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PI_PR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898235955799461829)
,p_db_column_name=>'CRC_SBP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'CRC <br> SBP'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CRC_SBP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898236061594461829)
,p_db_column_name=>'PI_SBP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'PI <br> SBP'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PI_SBP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898236161344461829)
,p_db_column_name=>'CRC_DBP'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'CRC <br> DBP'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CRC_DBP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898236246288461830)
,p_db_column_name=>'PI_DBP'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'PI <Br> DBP'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PI_DBP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898236336158461830)
,p_db_column_name=>'CRC_TEMP'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'CRC <br> Temperature '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CRC_TEMP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898236446774461830)
,p_db_column_name=>'PI_TEMP'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'PI <br> Temperature '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PI_TEMP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898236540597461830)
,p_db_column_name=>'CRC_COMT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'CRC <br> Clinical <br> Examination '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CRC_COMT'
,p_rpt_named_lov=>wwv_flow_imp.id(11049998581337606894)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10898236631501461830)
,p_db_column_name=>'PI_COMT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'PI <br> Clinical <br> Examination '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PI_COMT'
,p_rpt_named_lov=>wwv_flow_imp.id(11049998581337606894)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10898236753121462277)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1709522'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PTINTL:SCRNO:CRC_USER:PI_USER:CRC_RR:PI_RR:CRC_PR:PI_PR:CRC_SBP:PI_SBP:CRC_DBP:PI_DBP:CRC_TEMP:PI_TEMP:CRC_COMT:PI_COMT'
,p_sort_column_1=>'0'
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
,p_break_on=>'PTINTL:SCRNO:0:0:0'
,p_break_enabled_on=>'PTINTL:SCRNO:0:0:0'
);
wwv_flow_imp.component_end;
end;
/
