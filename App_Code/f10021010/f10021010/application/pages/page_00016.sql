prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_tab_set=>'TS1'
,p_name=>'Enrolled Sites'
,p_step_title=>'Enrolled Sites'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11045404888621941598)
,p_name=>'Enrolled Sites'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>12
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "STUDY_SITE_ID", ',
'       STUDY_ID,',
'       S.SITE_ID,',
'       "START_DATE",',
'       "END_DATE",',
'       "ENABLED",',
'       "DESCRIPTION",',
'       S.SITE_NUMBER,',
'       "USER_ID",',
'       EDC_UTIL.GET_LOV_VAL(S.STATUS,''ENROLL_SITE_STATUS'') "STATUS",',
'       "EC_NAME",',
'       "EC_ADDRESS",',
'       "EC_CONTACT_NO",',
'       "EC_EMAIL",',
'       "CAP_SIZE",',
'       EDC_SITE_PKG.GET_SITE_CURRENT_CAP(STUDY_SITE_ID) "CURRENT_SITE_CAP",',
'       INIT_QTY,',
'       REG_QTY,',
'       REPL_QTY,',
'       SS.COUNTRY_ID,',
'       SS.REGION',
'  FROM "EDC_STUDY_SITES"  s',
'  JOIN EDC_SITES SS',
'    ON S.SITE_ID = SS.SITE_ID',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID ',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(S.STUDY_SITE_ID) >= 0'))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183286521407891)
,p_query_num_rows=>200000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "STUDY_SITE_ID", ',
'       "STUDY_ID",',
'       "SITE_ID",',
'       "START_DATE",',
'       "END_DATE",',
'       "ENABLED",',
'       "DESCRIPTION",',
'       "SITE_NUMBER",',
'       "USER_ID",',
'       "STATUS",',
'       "EC_NAME",',
'       "EC_ADDRESS",',
'       "EC_CONTACT_NO",',
'       "EC_EMAIL",',
'       "CAP_SIZE",',
'       EDC_SITE_PKG.GET_SITE_CURRENT_CAP(STUDY_SITE_ID) "CURRENT_SITE_CAP"',
'  FROM "EDC_STUDY_SITES"  s',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID ',
' and study_site_id in (case ',
'    when :APP_EDC_USER_TYPE = 3 then (select STUDY_SITE_ID from EDC_SITE_CONTACTS where SITE_CONTACT_ID = to_number(:APP_EDC_USER))',
'    when :APP_EDC_USER_TYPE = 2 then (select contact_id from EDC_STUDY_CONTACT where study_contact_id =  to_number(:APP_EDC_USER_ID))',
'    when :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 17 then (select a.study_site_id from edc_study_sites a, edc_study_contact b ',
'                                                            where a.user_id = b.contact_id ',
'                                                            and a.study_id = b.study_id',
'                                                            and s.study_site_id = a.study_site_id',
'                                                            and b.CONTACT_ID = to_number(:APP_EDC_USER)) ',
'    else',
'    study_site_id',
'    end)',
'  ',
''))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405087872941599)
,p_query_column_id=>1
,p_column_alias=>'STUDY_SITE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:P17_STUDY_SITE_ID:#STUDY_SITE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(11045208363860824391)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405180304941599)
,p_query_column_id=>2
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Study Id'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405275549941599)
,p_query_column_id=>3
,p_column_alias=>'SITE_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Site'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045398373645926458)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405366834941599)
,p_query_column_id=>4
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405466415941599)
,p_query_column_id=>5
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405566404941599)
,p_query_column_id=>6
,p_column_alias=>'ENABLED'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405668225941599)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>19
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405772069941599)
,p_query_column_id=>8
,p_column_alias=>'SITE_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Site<br>Code'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405876779941599)
,p_query_column_id=>9
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'CRA'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045398669261926462)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045405982395941599)
,p_query_column_id=>10
,p_column_alias=>'STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045406071299941600)
,p_query_column_id=>11
,p_column_alias=>'EC_NAME'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045406161388941600)
,p_query_column_id=>12
,p_column_alias=>'EC_ADDRESS'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045406284033941600)
,p_query_column_id=>13
,p_column_alias=>'EC_CONTACT_NO'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045406381311941600)
,p_query_column_id=>14
,p_column_alias=>'EC_EMAIL'
,p_column_display_sequence=>15
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10169552103567136762)
,p_query_column_id=>15
,p_column_alias=>'CAP_SIZE'
,p_column_display_sequence=>10
,p_column_heading=>'Cap<br/>Size'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10169552582577136767)
,p_query_column_id=>16
,p_column_alias=>'CURRENT_SITE_CAP'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136999937650973310)
,p_query_column_id=>17
,p_column_alias=>'INIT_QTY'
,p_column_display_sequence=>16
,p_column_heading=>'Initial Block'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4136999990649973311)
,p_query_column_id=>18
,p_column_alias=>'REG_QTY'
,p_column_display_sequence=>17
,p_column_heading=>'Replenishment Block'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4139307297267153505)
,p_query_column_id=>19
,p_column_alias=>'REPL_QTY'
,p_column_display_sequence=>18
,p_column_heading=>'Minimum Kit Quantity for<br>Reshipment Trigger'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2006718359262976113)
,p_query_column_id=>20
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Region'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(2007278703369980775)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045406960194941603)
,p_plug_name=>'Enroll Site'
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
 p_id=>wwv_flow_imp.id(11045888070501261039)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180981693407888)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
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
 p_id=>wwv_flow_imp.id(11046251569261566085)
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
 p_id=>wwv_flow_imp.id(11045406582040941600)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045404888621941598)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enroll New Site'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp.component_end;
end;
/
