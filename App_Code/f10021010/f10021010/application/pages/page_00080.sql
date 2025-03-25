prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_tab_set=>'TS1'
,p_name=>'Study Personnel Sheet'
,p_step_title=>'Study Personnel Sheet'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#R165646305145481198',
'{ ',
'     width:59%;',
'     clear:both;',
'}'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11060549387982209514)
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
 p_id=>wwv_flow_imp.id(11060549670882209514)
,p_plug_name=>'Study Personnel Sheet'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ESC.STUDY_CONTACT_ID AS CONTACT_ID',
'     , NVL2(EU.FIRSTNAME, EU.FIRSTNAME || '' '' || EU.LASTNAME, (SELECT FIRST_NAME || '' '' || LAST_NAME',
'                                                                 FROM EDC_SITE_CONTACTS',
'                                                                WHERE SITE_CONTACT_ID = ESC.CONTACT_ID',
'                                                              )',
'           ) AS CONTACT',
'     , EDC_USER.GET_STUDY_CONTACT_ROLE(ESC.TYPE, ESC.CONTACT_ROLE, ESC.CONTACT_ID) CONTACT_ROLE',
'     , ESC.STATUS AS STATUS',
'     , EDC_USER.GET_APP_USEREMAIL(ESC.STUDY_CONTACT_ID) AS EMAIL',
'     , NVL(EU.MOBILE, EU.PHONE) AS PHONE',
'     , NVL(EU.ADDRESS_LINE1, ADDRESS_LINE2) AS ADDRESS',
'     , EU.CITY AS CITY',
'     , EU.ZIP_CODE AS ZIPCODE',
'     , EDC_UTIL.SITE_ACCESS(ESC.CONTACT_ID, ESC.CONTACT_ROLE, ESC.TYPE) "Site name"',
'     , EU.STATE AS STATE',
'     , EU.COUNTRY AS COUNTRY',
'     , ESC.TYPE AS TYPE',
'     , ESC.DEACTIVATE_DATE',
'     , NVL(ESC.UPDATED_ON, ESC.CREATED_ON) ACTIVATION_DATE',
'  FROM EDC_STUDY_CONTACT ESC',
'  JOIN EDC_USERS EU',
'    ON ESC.CONTACT_ID = EU.USER_ID',
'   AND ESC.TYPE = 1',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
' UNION',
'SELECT ESC.STUDY_CONTACT_ID AS CONTACT_ID',
'     , EU.FIRST_NAME || '' '' || EU.LAST_NAME AS CONTACT',
'     , EDC_USER.GET_STUDY_CONTACT_ROLE(ESC.TYPE, ESC.CONTACT_ROLE, ESC.CONTACT_ID) CONTACT_ROLE',
'     , ESC.STATUS AS STATUS',
'     , EDC_USER.GET_APP_USEREMAIL(ESC.STUDY_CONTACT_ID) AS EMAIL',
'     , EU.PHONE AS PHONE',
'     , NULL AS ADDRESS --NVL(EU.ADDRESS_LINE1, ESC.ADDRESS_LINE2) AS ADDRESS',
'     , NULL CITY --EU.CITY AS CITY',
'     , NULL ZIPCODE--EU.ZIP_CODE AS ZIPCODE',
'     , EDC_UTIL.SITE_ACCESS(ESC.CONTACT_ID, ESC.CONTACT_ROLE, ESC.TYPE) "Site name"',
'     , NULL STATE --EU.STATE AS STATE',
'     , NULL AS COUNTRY --EU.COUNTRY AS COUNTRY',
'     , ESC.TYPE AS TYPE',
'     , ESC.DEACTIVATE_DATE',
'     --, NVL(ESC.UPDATED_ON, ESC.CREATED_ON) ACTIVATION_DATE',
'     , ESC.CREATED_ON ACTIVATION_DATE',
'  FROM EDC_STUDY_CONTACT ESC',
'  JOIN EDC_SITE_CONTACTS EU',
'    ON ESC.CONTACT_ID = EU.SITE_CONTACT_ID',
'   AND ESC.TYPE = 3',
'   AND ESC.STUDY_ID = :APP_EDC_STUDY_ID',
' UNION',
'SELECT ESC.STUDY_CONTACT_ID AS CONTACT_ID',
'     , EU.FIRST_NAME || '' '' || EU.LAST_NAME AS CONTACT',
'     , EDC_USER.GET_STUDY_CONTACT_ROLE(ESC.TYPE, ESC.CONTACT_ROLE, ESC.CONTACT_ID) CONTACT_ROLE',
'     , ESC.STATUS AS STATUS',
'     , EDC_USER.GET_APP_USEREMAIL(ESC.STUDY_CONTACT_ID) AS EMAIL',
'     , NVL(EU.MOBILE, EU.PHONE) AS PHONE',
'     , EU.ADDR AS ADDRESS',
'     , EU.CITY AS CITY',
'     , EU.ZIP_CODE AS ZIPCODE',
'     , EDC_UTIL.SITE_ACCESS(ESC.CONTACT_ID, ESC.CONTACT_ROLE, ESC.TYPE) "Site name"',
'     , EU.STATE AS STATE',
'     , EU.COUNTRY AS COUNTRY',
'     , ESC.TYPE AS TYPE',
'     , ESC.DEACTIVATE_DATE',
'    -- , NVL(ESC.UPDATED_ON, ESC.CREATED_ON) ACTIVATION_DATE',
'     , ESC.CREATED_ON ACTIVATION_DATE',
'  FROM EDC_STUDY_CONTACT ESC',
'  JOIN EDC_SITES EU',
'    ON ESC.CONTACT_ID = EU.SITE_ID',
'   AND ESC.TYPE = 2',
'   AND STUDY_ID = :APP_EDC_STUDY_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STUDY_CONTACT_ID AS CONTACT_ID',
'     , NVL2(EU.FIRSTNAME, EU.FIRSTNAME || '' '' || EU.LASTNAME, (SELECT FIRST_NAME || '' '' || LAST_NAME',
'                                                                 FROM EDC_SITE_CONTACTS',
'                                                                WHERE SITE_CONTACT_ID = ESC.CONTACT_ID',
'                                                              )',
'           ) AS CONTACT',
'     , EDC_USER.GET_STUDY_CONTACT_ROLE(ESC.TYPE, ESC.CONTACT_ROLE, ESC.CONTACT_ID) CONTACT_ROLE',
'     , ESC.STATUS AS STATUS',
'     , EDC_USER.GET_APP_USEREMAIL(ESC.STUDY_CONTACT_ID) AS EMAIL',
'     , NVL(EU.MOBILE, EU.PHONE) AS PHONE',
'     , NVL(EU.ADDRESS_LINE1, ADDRESS_LINE2) AS ADDRESS',
'     , EU.CITY AS CITY',
'     , EU.ZIP_CODE AS ZIPCODE',
'     , EDC_UTIL.SITE_ACCESS(ESC.CONTACT_ID, ESC.CONTACT_ROLE, ESC.TYPE) "Site name"',
'     , EU.STATE AS STATE',
'     , EU.COUNTRY AS COUNTRY',
'     , ESC.TYPE AS TYPE',
'     , ESC.DEACTIVATE_DATE',
'     , NVL(ESC.UPDATED_ON, ESC.CREATED_ON) ACTIVATION_DATE',
'  FROM EDC_STUDY_CONTACT ESC',
'  LEFT JOIN EDC_USERS EU',
'    ON ESC.CONTACT_ID = EU.USER_ID',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11060549788972209514)
,p_name=>'Study Personnel Shit'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'AVINASH.BHATIYA'
,p_internal_uid=>164876832629147827
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060549969761209518)
,p_db_column_name=>'CONTACT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Contact Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CONTACT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550060074209518)
,p_db_column_name=>'CONTACT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CONTACT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550185010209518)
,p_db_column_name=>'CONTACT_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'User Role'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CONTACT_ROLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550270178209518)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(11045417159215999184)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550386391209519)
,p_db_column_name=>'EMAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550477240209519)
,p_db_column_name=>'PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PHONE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550588553209519)
,p_db_column_name=>'ADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550676505209519)
,p_db_column_name=>'CITY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'City'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550786551209519)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Zipcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ZIPCODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550859404209519)
,p_db_column_name=>'STATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'State'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060550958387209519)
,p_db_column_name=>'COUNTRY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Country'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COUNTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11060551064881209520)
,p_db_column_name=>'TYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'TYPE'
,p_rpt_named_lov=>wwv_flow_imp.id(11045416964432999184)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10543648862062971379)
,p_db_column_name=>'Site name'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Site Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10543718160240066295)
,p_db_column_name=>'DEACTIVATE_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Deactivation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10545007689682899436)
,p_db_column_name=>'ACTIVATION_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11060551176089213636)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1648783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CONTACT:CONTACT_ROLE:STATUS:EMAIL:PHONE:ADDRESS:CITY:ZIPCODE:STATE:COUNTRY:TYPE:Site name:ACTIVATION_DATE:DEACTIVATE_DATE:'
,p_break_on=>'TYPE:0:0:0:0:0'
,p_break_enabled_on=>'TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11061314581611501395)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11061305288454172215)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11061512871844880215)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10545793326271052220)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11060549670882209514)
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
 p_id=>wwv_flow_imp.id(8467690383168212233)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11060549670882209514)
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
 p_id=>wwv_flow_imp.id(10545793691936054832)
,p_name=>'print pdf'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10545793326271052220)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10545794028882054833)
,p_event_id=>wwv_flow_imp.id(10545793691936054832)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/STUDY_PRSNL_SHEET/STUDY_PRSNL_SHEET&_repFormat=pdf&_dataSource=default&_outFilename=studypersonnelsheet.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.'
||'''',
'            +''&P_USERNAME=&APP_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8467896974246781705)
,p_name=>'print xls'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8467690383168212233)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8467897070231781706)
,p_event_id=>wwv_flow_imp.id(8467896974246781705)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/STUDY_PRSNL_SHEET/STUDY_PRSNL_SHEET&_repFormat=xls&_dataSource=default&_outFilename=studypersonnelsheet.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.'
||'''',
'            +''&P_USERNAME=&APP_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
