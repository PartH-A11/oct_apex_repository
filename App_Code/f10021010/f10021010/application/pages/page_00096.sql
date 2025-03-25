prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
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
 p_id=>96
,p_tab_set=>'TS1'
,p_name=>'Randomization Block'
,p_step_title=>'Randomization Block'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10902982748921965292)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180572024407887)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   GET_PATIENT_NAME(B.STUDY_SITE_ID,a.STUDY_ARM_ID,a.dtls_id) PTINL,',
'            a.STUDY_ARM_ID',
'from EDC_STUDY_ARM_BLOCK_DTLS a',
'        ,EDC_STUDY_ARM_BLOCK b',
'where b.blk_id = a.blk_id',
'   and b.study_site_id in (select pp.study_site_id',
'                               from EDC_PATIENT_PROFILE pp',
'                             where pp.study_site_id in( case ',
'                                                                      when :APP_EDC_USER_TYPE = 3 ',
'                                                                       then (select STUDY_SITE_ID from EDC_SITE_CONTACTS where SITE_CONTACT_ID = to_number(:APP_EDC_USER))',
'                                                                      when :APP_EDC_USER_TYPE = 2 ',
'                                                                        then (select contact_id from EDC_STUDY_CONTACT where study_contact_id =  to_number(:APP_EDC_USER_ID))',
'                                                                      when :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 17 ',
'                                                                       then (select a.study_site_id from edc_study_sites a, edc_study_contact b where a.user_id = b.contact_id and a.study_id = b.study_id and b.CONTACT_ID = to_number(:APP_EDC_USER))',
'                                                                  else',
'                                                                      pp.study_site_id',
'                                                                  end',
'                                                                 )',
'                            )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10902982837846965292)
,p_name=>'&nbsp;'
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
,p_internal_uid=>175698207535395085
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10902983058605965295)
,p_db_column_name=>'PTINL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient  <br> Initials'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PTINL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10902983131613965295)
,p_db_column_name=>'STUDY_ARM_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Study Arm '
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STUDY_ARM_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11045283369488317223)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10902983839140981377)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1756993'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PTINL:STUDY_ARM_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10902983434985980246)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10902985240143028999)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
);
wwv_flow_imp.component_end;
end;
/
