prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_tab_set=>'TS1'
,p_name=>'Section Status Report'
,p_step_title=>'Section Status Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10542477188297775402)
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
 p_id=>wwv_flow_imp.id(10542477802569775404)
,p_plug_name=>'Section Status Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180572024407887)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select d.seq_no as "seq",a.study_site_id,a.scrno,b.visit_title,e.crf_name,patient_visit_id,',
'      case when NVL(edc_util.get_section_status(:APP_EDC_STUDY_ID,B.PATIENT_VISIT_ID,E.CRF_PAGE_NO),''Open'') = ''Incomplete'' then ''DE Incomplete'' else  NVL(edc_util.get_section_status(:APP_EDC_STUDY_ID,B.PATIENT_VISIT_ID,E.CRF_PAGE_NO),''Open'') end Stat'
||'us,e.crf_page_no,a.patient_profile_id,(select TO_CHAR(CONSNTDT,''DD-MON-YYYY'') from edc_crf_xic icd,edc_patient_visit epv,edc_patient_profile epp',
' where icd.patient_visit_id = epv.patient_visit_id',
'   and epv.patient_profile_id = epp.patient_profile_id',
'   and epv.visit_title = ''Screening Visit''',
'   and epp.patient_profile_id = a.PATIENT_PROFILE_ID) icf',
'  from edc_patient_profile a,edc_patient_Visit b,edc_crf_pages d,edc_Crf_master e',
' where a.patient_profile_id = b.patient_profile_id',
'   and b.param_id = d.param_id',
'and b.visit_title != ''Unscheduled Visit''',
'   and d.crf_id = e.crf_id',
'   AND A.STUDY_SITE_ID IN (CASE WHEN :APP_EDC_USER_TYPE = 3 THEN (SELECT STUDY_SITE_ID FROM EDC_SITE_CONTACTS',
'                                                                WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER))',
'                              WHEN :APP_EDC_USER_TYPE = 2 THEN (SELECT CONTACT_ID FROM EDC_STUDY_CONTACT',
'                                                                WHERE STUDY_CONTACT_ID =  TO_NUMBER(:APP_EDC_USER_ID))',
'                              /*WHEN :APP_EDC_USER_TYPE = 1 AND :APP_EDC_ROLE_ID = 6 THEN (SELECT A.STUDY_SITE_ID',
'                                                                                         FROM EDC_STUDY_SITES A',
'                                                                                         JOIN EDC_STUDY_CONTACT B',
'                                                                                         ON A.USER_ID = B.CONTACT_ID',
'                                                                                         AND A.STUDY_ID = B.STUDY_ID',
'                                                                                         AND B.CONTACT_ID = TO_NUMBER(:APP_EDC_USER))*/ ',
'                         ELSE A.STUDY_SITE_ID END)',
' --  order by b.patient_visit_id,d.param_id,d.seq_no',
'',
'union',
'',
'select d.seq_no as "seq",a.study_site_id,a.scrno,b.visit_title,e.crf_name,patient_visit_id,',
'      case when NVL(edc_util.get_section_status(:APP_EDC_STUDY_ID,B.PATIENT_VISIT_ID,E.CRF_PAGE_NO),''Open'') = ''Incomplete'' then ''DE Incomplete'' else  NVL(edc_util.get_section_status(:APP_EDC_STUDY_ID,B.PATIENT_VISIT_ID,E.CRF_PAGE_NO),''Open'') end Stat'
||'us,e.crf_page_no,a.patient_profile_id,(select TO_CHAR(CONSNTDT,''DD-MON-YYYY'') from edc_crf_xic icd,edc_patient_visit epv,edc_patient_profile epp',
' where icd.patient_visit_id = epv.patient_visit_id',
'   and epv.patient_profile_id = epp.patient_profile_id',
'   and epv.visit_title = ''Screening Visit''',
'   and epp.patient_profile_id = a.PATIENT_PROFILE_ID) icf',
'  from edc_patient_profile a,edc_patient_Visit b,edc_crf_pages d,edc_Crf_master e',
' where a.patient_profile_id = b.patient_profile_id',
'   and b.param_id = d.param_id',
'   and d.crf_id = e.crf_id',
'      AND A.STUDY_SITE_ID IN (CASE WHEN :APP_EDC_USER_TYPE = 3 THEN (SELECT STUDY_SITE_ID FROM EDC_SITE_CONTACTS',
'                                                                WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER))',
'                              WHEN :APP_EDC_USER_TYPE = 2 THEN (SELECT CONTACT_ID FROM EDC_STUDY_CONTACT',
'                                                                WHERE STUDY_CONTACT_ID =  TO_NUMBER(:APP_EDC_USER_ID))',
'                              /*WHEN :APP_EDC_USER_TYPE = 1 AND :APP_EDC_ROLE_ID = 6 THEN (SELECT A.STUDY_SITE_ID',
'                                                                                         FROM EDC_STUDY_SITES A',
'                                                                                         JOIN EDC_STUDY_CONTACT B',
'                                                                                         ON A.USER_ID = B.CONTACT_ID',
'                                                                                         AND A.STUDY_ID = B.STUDY_ID',
'                                                                                         AND B.CONTACT_ID = TO_NUMBER(:APP_EDC_USER))*/ ',
'                         ELSE A.STUDY_SITE_ID END)',
'and b.visit_title = ''Unscheduled Visit''',
'',
')',
'order by 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10542477886087775404)
,p_name=>'Section Status Report'
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
,p_owner=>'DIPIKA.PORANIYA'
,p_internal_uid=>193865617621481016
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542480695224775413)
,p_db_column_name=>'CRF_PAGE_NO'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:#CRF_PAGE_NO#:&SESSION.::&DEBUG.::APP_EDC_PATIENT_VISIT_ID,P37_PATIENT_PROFILE_ID,APP_EDC_VISIT_NAME:#PATIENT_VISIT_ID#,#PATIENT_PROFILE_ID#,#VISIT_TITLE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542478734387775411)
,p_db_column_name=>'SCRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Screening No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542478336803775410)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Site '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(11051796963439023522)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542479082190775411)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Visit '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542479529862775412)
,p_db_column_name=>'CRF_NAME'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'CRF'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542479927134775412)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Patient Visit Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542480364846775412)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542481096868775413)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10542481514161775413)
,p_db_column_name=>'ICF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Icf'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10544836664428869162)
,p_db_column_name=>'seq'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Seq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10542482071178776641)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1938699'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CRF_PAGE_NO:STUDY_SITE_ID:SCRNO:VISIT_TITLE:CRF_NAME:STATUS:'
,p_sort_column_1=>'seq'
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
,p_break_on=>'STUDY_SITE_ID:SCRNO:VISIT_TITLE:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:SCRNO:VISIT_TITLE:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10542489841798874540)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;     width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>20
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp.component_end;
end;
/
