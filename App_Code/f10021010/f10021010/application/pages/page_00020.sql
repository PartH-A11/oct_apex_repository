prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_tab_set=>'TS1'
,p_name=>'Study Team'
,p_step_title=>'Study Team'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045412559833999164)
,p_plug_name=>'Study Team'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "STUDY_CONTACT_ID",',
'    -- "STUDY_ID",',
'       EDC_USER.get_study_contact_name(TYPE,CONTACT_ID) "CONTACT_ID",',
'       "COMMENTS",',
'       "TYPE",',
'       EDC_USER.get_study_contact_role(TYPE,CONTACT_ROLE,CONTACT_ID) "CONTACT_ROLE",',
'       "STATUS",',
'       "USERNAME",',
'       "PASSWORD",',
'       EDC_USER.get_app_useremail(STUDY_CONTACT_ID) "EMAIL",',
'       TO_CHAR(created_on,''DD-MON-YY HH:MI AM'') created_on,',
'       TO_CHAR(updated_on,''DD-MON-YY HH:MI AM'') updated_on,',
'       (case when type = 2 then ''Site'' ',
'             when type = 3 then ''Site Contact'' ',
'             when type = 5 then ''Depot'' ',
'             when type = 1 and lower(EDC_USER.get_study_contact_role(TYPE,CONTACT_ROLE,CONTACT_ID)) = ''vendor'' then ''Other Contacts''',
'             when type = 1 and lower(EDC_USER.get_study_contact_role(TYPE,CONTACT_ROLE,CONTACT_ID)) = ''sponsor'' then ''Sponsor''',
'             when type = 1 then ''CRO'' end',
'       ) type_new,',
'       FATCH_REAGION(CONTACT_ID,TYPE) AS REGION,',
'       CREATED_BY,',
'       UPDATED_BY',
'  from "EDC_STUDY_CONTACT" ',
' where study_id = (case when TYPE = 1',
'                        then decode(edc_user.get_user_studies(type, contact_role, :APP_EDC_STUDY_ID,USERNAME), 1, study_id, null)',
'                        when type in (2, 3, 5)',
'                        then to_number(:APP_EDC_STUDY_ID)',
'                   end',
'                  )',
' order by type'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11045412762052999165)
,p_name=>'Study Personnel'
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
,p_owner=>'KRUNAL.BHATT'
,p_internal_uid=>149739805709937478
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045413158102999169)
,p_db_column_name=>'TYPE'
,p_display_order=>1
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'TYPE'
,p_rpt_named_lov=>wwv_flow_imp.id(11255012356264777553)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_column_comment=>'EDC_STUDY_CONTACT_TYPE_LOV'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045412886284999169)
,p_db_column_name=>'STUDY_CONTACT_ID'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_STUDY_CONTACT_ID:#STUDY_CONTACT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STUDY_CONTACT_ID'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045412958265999169)
,p_db_column_name=>'CONTACT_ID'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONTACT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045413271004999169)
,p_db_column_name=>'CONTACT_ROLE'
,p_display_order=>4
,p_column_identifier=>'E'
,p_column_label=>'User Role'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONTACT_ROLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045413388990999169)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(11045417159215999184)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045413678403999170)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'I'
,p_column_label=>'Email'
,p_column_link=>'mailto:#EMAIL#'
,p_column_linktext=>'#EMAIL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045413087363999169)
,p_db_column_name=>'COMMENTS'
,p_display_order=>7
,p_column_identifier=>'C'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045413467540999169)
,p_db_column_name=>'USERNAME'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERNAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045413557283999170)
,p_db_column_name=>'PASSWORD'
,p_display_order=>9
,p_column_identifier=>'H'
,p_column_label=>'Password'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'PASSWORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11045413868659999170)
,p_db_column_name=>'TYPE_NEW'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TYPE_NEW'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688482647402683368)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>21
,p_column_identifier=>'M'
,p_column_label=>'Created On'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1807744025541525602)
,p_db_column_name=>'REGION'
,p_display_order=>41
,p_column_identifier=>'O'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1807573678175394477)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>51
,p_column_identifier=>'P'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1607510961407685243)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>61
,p_column_identifier=>'R'
,p_column_label=>'Updated On'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1607511151113685244)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>71
,p_column_identifier=>'S'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11045413969764999170)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1497411'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TYPE_NEW:STUDY_CONTACT_ID:CONTACT_ID:CONTACT_ROLE:STATUS:EMAIL:COMMENTS:USERNAME:CREATED_ON:CREATED_BY:UPDATED_BY:UPDATED_ON:REGION:'
,p_break_on=>'TYPE_NEW:0:0:0:0:0'
,p_break_enabled_on=>'TYPE_NEW:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1609019062024007638)
,p_application_user=>'ARUN.JANARDHANAN'
,p_name=>'Admin'
,p_report_seq=>10
,p_display_rows=>100000
,p_report_columns=>'TYPE_NEW:STUDY_CONTACT_ID:CONTACT_ID:CONTACT_ROLE:STATUS:EMAIL:USERNAME:CREATED_ON:REGION:'
,p_break_on=>'TYPE_NEW:0:0:0:0:0'
,p_break_enabled_on=>'TYPE_NEW:0:0:0:0:0'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11045414363275999174)
,p_name=>'Study Personnel - Disabled'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "STUDY_CONTACT_ID", ',
'    -- "STUDY_ID",',
'       EDC_USER.get_study_contact_name(TYPE, CONTACT_ID) "CONTACT_ID",',
'       "COMMENTS",',
'       "TYPE",',
'       EDC_USER.get_study_contact_role(TYPE,CONTACT_ROLE, CONTACT_ID) "CONTACT_ROLE",',
'       "STATUS",',
'       "USERNAME",',
'       "PASSWORD",',
'       EDC_USER.get_app_useremail(STUDY_CONTACT_ID) "EMAIL"',
'  from "EDC_STUDY_CONTACT" ',
' where study_id=:APP_EDC_STUDY_ID',
' order by type'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'1'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_imp.id(11045414558088999175)
,p_query_column_id=>1
,p_column_alias=>'STUDY_CONTACT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_STUDY_CONTACT_ID:#STUDY_CONTACT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045414658966999175)
,p_query_column_id=>2
,p_column_alias=>'CONTACT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'User'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045414788020999175)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>7
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045414873536999175)
,p_query_column_id=>4
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045416964432999184)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045414959545999175)
,p_query_column_id=>5
,p_column_alias=>'CONTACT_ROLE'
,p_column_display_sequence=>4
,p_column_heading=>'User Role'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045415064844999175)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045417159215999184)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045415173054999175)
,p_query_column_id=>7
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045415257950999175)
,p_query_column_id=>8
,p_column_alias=>'PASSWORD'
,p_column_display_sequence=>9
,p_column_heading=>'Password'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045415365885999175)
,p_query_column_id=>9
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>6
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_column_link=>'mailto:#EMAIL#'
,p_column_linktext=>'#EMAIL#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11045415481549999177)
,p_name=>'Study Personnel'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "STUDY_CONTACT_ID", ',
'--"STUDY_ID",',
'EDC_USER.get_study_contact_name(TYPE,CONTACT_ID) "CONTACT_ID",',
'"COMMENTS",',
'"TYPE",',
'EDC_USER.get_study_contact_role(TYPE,CONTACT_ROLE,CONTACT_ID) "CONTACT_ROLE",',
'"STATUS",',
'"USERNAME",',
'"PASSWORD",',
'EDC_USER.get_app_useremail(STUDY_CONTACT_ID) "EMAIL"',
'from "EDC_STUDY_CONTACT" ',
''))
,p_display_condition_type=>'NEVER'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183286521407891)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_exp_filename=>'study_personnel'
,p_plug_query_exp_separator=>','
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045415681260999177)
,p_query_column_id=>1
,p_column_alias=>'STUDY_CONTACT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_STUDY_CONTACT_ID:#STUDY_CONTACT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_CONTACT'
,p_ref_column_name=>'STUDY_CONTACT_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045415782139999177)
,p_query_column_id=>2
,p_column_alias=>'CONTACT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'User'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_CONTACT'
,p_ref_column_name=>'CONTACT_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045415883400999178)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>7
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_CONTACT'
,p_ref_column_name=>'COMMENTS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045415963188999178)
,p_query_column_id=>4
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045416964432999184)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_CONTACT'
,p_ref_column_name=>'TYPE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045416078589999178)
,p_query_column_id=>5
,p_column_alias=>'CONTACT_ROLE'
,p_column_display_sequence=>4
,p_column_heading=>'User Role'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_CONTACT'
,p_ref_column_name=>'CONTACT_ROLE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045416173575999178)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>4
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045417159215999184)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_CONTACT'
,p_ref_column_name=>'STATUS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045416273279999178)
,p_query_column_id=>7
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_CONTACT'
,p_ref_column_name=>'USERNAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045416368934999178)
,p_query_column_id=>8
,p_column_alias=>'PASSWORD'
,p_column_display_sequence=>9
,p_column_heading=>'Password'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_STUDY_CONTACT'
,p_ref_column_name=>'PASSWORD'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045416482781999178)
,p_query_column_id=>9
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>6
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_column_link=>'mailto:#EMAIL#'
,p_column_linktext=>'#EMAIL#'
,p_default_sort_column_sequence=>5
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045416771930999181)
,p_plug_name=>'Study Personnel'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045890274573281148)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180981693407888)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11045204683056824372)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184883131407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046252865236574352)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11045414186373999172)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045412559833999164)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create User'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21::'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_button_comment=>'21'
);
wwv_flow_imp.component_end;
end;
/
