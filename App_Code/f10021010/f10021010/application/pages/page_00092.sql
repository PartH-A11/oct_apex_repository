prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_tab_set=>'TS1'
,p_name=>'Visit Status'
,p_step_title=>'Visit Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12164760632626275885)
,p_plug_name=>'Visit Status'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131340165911980)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.study_site_id,',
'        A.PATIENT_PROFILE_ID,',
'       a.ptintl,',
'       a.scrno,',
'       a.screening_date,',
'       b.patient_Visit_id,',
'      (select TO_CHAR(CONSNTDT,''DD-MON-YYYY'') from edc_crf_XIC icd,edc_patient_visit epv,edc_patient_profile epp',
'        where icd.patient_visit_id = epv.patient_visit_id',
'          and epv.patient_profile_id = epp.patient_profile_id',
'          and epv.visit_title = ''Screening Visit''',
'          and epp.patient_profile_id = a.PATIENT_PROFILE_ID) icf,',
'       visit_title,',
'       decode(visit_title,''Screening Visit'',null,b.schedule_date) schedule_date,',
'       b.actual_Date, ',
'      decode(visit_title,''Screening Visit'',null,''Visit 2'',null,(b.schedule_date - (c.window_period_m + 1))) negative_window,',
'      decode(visit_title,''Screening Visit'',null,''Visit 2'',b.schedule_date,(b.schedule_date + (c.window_period_p - 1))) positive_window ',
'from edc_patient_profile a,edc_patient_visit b,edc_patient_visit_params c ',
' where a.patient_profile_id = b.patient_profile_id ',
'   and b.param_id = c.param_id ',
'   and b.visit_number <> 9 ',
'   AND a.STUDY_SITE_ID IN (CASE WHEN :APP_EDC_USER_TYPE = 3 THEN (SELECT STUDY_SITE_ID FROM EDC_SITE_CONTACTS',
'                                                                WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER))',
'                              WHEN :APP_EDC_USER_TYPE = 2 THEN (SELECT CONTACT_ID FROM EDC_STUDY_CONTACT',
'                                                                WHERE STUDY_CONTACT_ID =  TO_NUMBER(:APP_EDC_USER_ID))',
'                              /*WHEN :APP_EDC_USER_TYPE = 1 AND :APP_EDC_ROLE_ID = 6 THEN (SELECT A.STUDY_SITE_ID',
'                                                                                         FROM EDC_STUDY_SITES A',
'                                                                                         JOIN EDC_STUDY_CONTACT B',
'                                                                                         ON A.USER_ID = B.CONTACT_ID',
'                                                                                         AND A.STUDY_ID = B.STUDY_ID',
'                                                                                         AND B.CONTACT_ID = TO_NUMBER(:APP_EDC_USER))*/ ',
'                         ELSE a.STUDY_SITE_ID END)',
'order by a.patient_profile_id,b.visit_number'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_header=>'<div style="overflow: auto;width:1062px;">'
,p_plug_footer=>'</div>'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12164760742873275885)
,p_name=>'Visit Statud'
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
,p_owner=>'LABDHI.SHAH'
,p_internal_uid=>168137018388710105
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12164760955284275889)
,p_db_column_name=>'SCRNO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Screening Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SCRNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12164761135882275890)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Visit Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VISIT_TITLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12164761351467275890)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>5
,p_column_identifier=>'E'
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
 p_id=>wwv_flow_imp.id(12164761450997275890)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>6
,p_column_identifier=>'F'
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
 p_id=>wwv_flow_imp.id(11674077247136654665)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Study Site Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11674077918025654666)
,p_db_column_name=>'PTINTL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ptintl'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11674078653441654667)
,p_db_column_name=>'SCREENING_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Screening Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11674079387929654667)
,p_db_column_name=>'ICF'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Icf'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11674080013145654668)
,p_db_column_name=>'SCHEDULE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Schedule Date'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11674080745025654669)
,p_db_column_name=>'ACTUAL_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Actual Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11674081412484654669)
,p_db_column_name=>'NEGATIVE_WINDOW'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Negative Window'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11674082201084654670)
,p_db_column_name=>'POSITIVE_WINDOW'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Positive Window'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12164761943146288428)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1681383'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SCRNO:VISIT_TITLE:STUDY_SITE_ID:PTINTL:SCREENING_DATE:ICF:SCHEDULE_DATE:ACTUAL_DATE:NEGATIVE_WINDOW:POSITIVE_WINDOW'
,p_break_on=>'SITENAME:SCRNO:VISIT_TITLE:RANDOMNO:0:0'
,p_break_enabled_on=>'SITENAME:SCRNO:VISIT_TITLE:RANDOMNO:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12164763538092372157)
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
 p_id=>wwv_flow_imp.id(12164766635799380935)
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
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp.component_end;
end;
/
