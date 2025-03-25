prompt --application/pages/page_00095
begin
--   Manifest
--     PAGE: 00095
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
 p_id=>95
,p_tab_set=>'TS1'
,p_name=>'Login Attempts'
,p_step_title=>'Login Attempts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10660777619561852853)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px; width: 235px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10898242453750634780)
,p_plug_name=>'Login Attempts'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT USERNAME',
'     , DATE_AND_TIME',
'     , D_T_WITH_TIME_ZONE',
'     , IP_ADDRESS',
'     , MAC_ADDRESS',
'     , CLIENT_INFO',
'     , LOGIN_STATUS',
'     , ERROR_MSG_DURING_LOGIN',
'     , row_number() OVER (PARTITION BY USERNAME ORDER BY USERNAME) as SR',
'  FROM LOGIN_ATTEMPTS',
' WHERE :APP_EDC_ROLE_ID = 13',
' and upper(username) in (',
' select ',
'       upper(USERNAME)',
'  from EDC_STUDY_CONTACT ',
' where study_id = (case when TYPE = 1',
'                        then decode(edc_user.get_user_studies(type, contact_role, :APP_EDC_STUDY_ID,USERNAME), 1, study_id, null)',
'                        when type in (2, 3, 5)',
'                        then to_number(:APP_EDC_STUDY_ID)',
'                   end',
'                  )',
'                    )',
' ',
' ORDER BY ID DESC ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USERNAME',
'     , DATE_AND_TIME',
'     , D_T_WITH_TIME_ZONE',
'     , IP_ADDRESS',
'     , MAC_ADDRESS',
'     , CLIENT_INFO',
'     , LOGIN_STATUS',
'     , ERROR_MSG_DURING_LOGIN',
'     , row_number() OVER (PARTITION BY USERNAME ORDER BY USERNAME) as SR',
'  FROM LOGIN_ATTEMPTS',
' WHERE :APP_EDC_ROLE_ID = 13',
' ',
' ORDER BY ID DESC '))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10898242659812634781)
,p_name=>'Userwise VS report'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'LABDHI.SHAH'
,p_internal_uid=>170958029501064574
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(10898293455872011719)
,p_name=>'CRC'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(10898294636506233185)
,p_name=>'PI'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572558970281032071)
,p_db_column_name=>'USERNAME'
,p_display_order=>10
,p_column_identifier=>'S'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572559136994032072)
,p_db_column_name=>'DATE_AND_TIME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Login Date & Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572559224249032073)
,p_db_column_name=>'D_T_WITH_TIME_ZONE'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Date&time With Time Zone'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572559287147032074)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'IP Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572559405913032075)
,p_db_column_name=>'MAC_ADDRESS'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'MAC(Physical) Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572559578231032077)
,p_db_column_name=>'LOGIN_STATUS'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Login Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572559659001032078)
,p_db_column_name=>'ERROR_MSG_DURING_LOGIN'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Error Message During Login'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572559915839032080)
,p_db_column_name=>'SR'
,p_display_order=>90
,p_column_identifier=>'AB'
,p_column_label=>'Sr.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10572559984958032081)
,p_db_column_name=>'CLIENT_INFO'
,p_display_order=>100
,p_column_identifier=>'AC'
,p_column_label=>'Client Web Browser Information'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10898244335300634786)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1709598'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:SR:DATE_AND_TIME:D_T_WITH_TIME_ZONE:IP_ADDRESS:CLIENT_INFO:LOGIN_STATUS:ERROR_MSG_DURING_LOGIN:'
,p_sort_column_1=>'SR'
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
,p_break_on=>'USERNAME:0:0:0:0:0'
,p_break_enabled_on=>'USERNAME:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10898299151978379578)
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
 p_id=>wwv_flow_imp.id(8467690534978212234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10898242453750634780)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8467690615206212235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10898242453750634780)
,p_button_name=>'PRINT_XLS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10898291461580975524)
,p_name=>'IR Group Column'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10898242453750634780)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10898291760914975525)
,p_event_id=>wwv_flow_imp.id(10898291461580975524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IR_COLUMN_GROUPS'
,p_attribute_01=>'true'
,p_attribute_02=>'500'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10898301231854421112)
,p_name=>'IR Freeze Column'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10898242453750634780)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10898301556205421112)
,p_event_id=>wwv_flow_imp.id(10898301231854421112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZECOLS'
,p_attribute_01=>'7'
,p_attribute_03=>'true'
,p_attribute_04=>'irFreezeCols_HOVER'
,p_attribute_05=>'0'
,p_attribute_06=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8467897186320781708)
,p_name=>'PRINT PDF'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467690534978212234)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8467897362465781709)
,p_event_id=>wwv_flow_imp.id(8467897186320781708)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Login_Attempts/Login_Attempts&_repFormat=pdf&_dataSource=default&_outFilename=Login_Attempts.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8467897458864781710)
,p_name=>'print xls'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467690615206212235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8467897507549781711)
,p_event_id=>wwv_flow_imp.id(8467897458864781710)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Login_Attempts/Login_Attempts&_repFormat=xls&_dataSource=default&_outFilename=Login_Attempts.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
