prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
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
 p_id=>87
,p_tab_set=>'TS1'
,p_name=>'Patient Calendar'
,p_step_title=>'Patient Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11997099100467485424)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>21
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162615554135520437)
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
wwv_flow_imp_page.create_calendar(
 p_id=>wwv_flow_imp.id(12162631557007593540)
,p_plug_name=>'Patient Calendar'
,p_region_attributes=>'style="margin-left:5px;"'
,p_plug_source_type=>'NATIVE_CALENDAR'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PP.PATIENT_PROFILE_ID AS ID, /*''<a href="javascript:popupURL(''''f?p=&APP_ID.:37:&SESSION.::::P37_PATIENT_PROFILE_ID:''||PP.PATIENT_PROFILE_ID||',
'                                    '''''');">(''||PP.RANDOMNO||'' - ''||PP.PTINTL||'')</BR>''||EDC_SITE_PKG.GET_INVESTIGATOR_NAME(SS.SITE_ID)||'' - ''||',
'                                    PV.VISIT_TITLE||''</a>'' AS "NAME",*/',
'       PP.RANDOMNO||'' - ''||PP.PTINTL||'')</BR>''||EDC_SITE_PKG.GET_INVESTIGATOR_NAME(SS.SITE_ID)||'' - ''||PV.VISIT_TITLE AS "NAME",',
'       PV.SCHEDULE_DATE AS "S_DATE"',
'FROM EDC_PATIENT_VISIT PV, EDC_PATIENT_PROFILE PP, EDC_STUDY_SITES SS ',
'WHERE PV.PATIENT_PROFILE_ID=PP.PATIENT_PROFILE_ID',
'AND PP.STUDY_SITE_ID=SS.STUDY_SITE_ID ',
'AND SS.STUDY_ID=:APP_EDC_STUDY_ID',
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
'                         ELSE PP.STUDY_SITE_ID END)'))
,p_plug_template=>wwv_flow_imp.id(12146131340165911980)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'ABOVE'
,p_cal_id=>wwv_flow_imp.id(12162638130914593549)
,p_begin_at_start_of_interval=>'Y'
,p_date_item=>'P87_CALENDAR_DATE'
,p_display_as=>'M'
,p_display_item=>'P87_CALENDAR_DISPLAY'
,p_display_type=>'COL'
,p_date_column=>'S_DATE'
,p_display_column=>'NAME'
,p_start_of_week=>19721105
,p_start_time=>0
,p_end_time=>23
,p_time_format=>'24HOUR'
,p_week_start_day=>19721105
,p_week_end_day=>19721111
,p_date_type_column=>'P87_CALENDAR_TYPE'
,p_end_date_item=>'P87_CALENDAR_END_DATE'
,p_include_custom_cal=>'N'
,p_custom_cal_days=>3
,p_primary_key_column=>'ID'
,p_item_link_primary_key_item=>'P90_STUDY_SITE_ID'
,p_item_link_date_item=>'P90_START_DATE_TMP'
,p_item_link_open_in=>'W'
,p_include_time_with_date=>'N'
,p_agenda_cal_days_type=>'MONTH'
,p_agenda_cal_days=>30
,p_calendar_type=>'A'
,p_template_id=>wwv_flow_imp.id(12146138156535911993)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12162646150071865962)
,p_plug_name=>'Patient Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12162644854395829366)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162638927156593550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&FLOW_ID.:90:&SESSION.::&DEBUG.:90'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'Generated 10/26/2015'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162639142888593551)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_button_name=>'MONTHLY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Monthly'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''M'',''same''); void(0);'
,p_button_condition=>'NVL(:P87_CALENDAR_TYPE, ''M'') <> ''M'''
,p_button_comment=>'Generated 10/26/2015'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162639350313593551)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_button_name=>'WEEKLY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Weekly'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''W'',''same''); void(0);'
,p_button_condition=>'P87_CALENDAR_TYPE'
,p_button_condition2=>'W'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'Generated 10/26/2015'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162639524925593551)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_button_name=>'DAILY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Daily'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''D'',''same''); void(0);'
,p_button_condition=>'P87_CALENDAR_TYPE'
,p_button_condition2=>'D'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'Generated 10/26/2015'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162639757125593551)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_button_name=>'LISTVIEW'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'List'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''A'',''same''); void(0);'
,p_button_condition=>'P87_CALENDAR_TYPE'
,p_button_condition2=>'A'
,p_button_comment=>'Generated 10/26/2015'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162639944557593551)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'< Previous'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''previous''); void(0);'
,p_button_comment=>'Generated 10/26/2015'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162640138317593552)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_button_name=>'TODAY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Today'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''today''); void(0);'
,p_button_comment=>'Generated 10/26/2015'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12162640343253593552)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Next >'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''next''); void(0);'
,p_button_comment=>'Generated 10/26/2015'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12162638440371593549)
,p_name=>'P87_CALENDAR_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P87_CALENDAR_DISPLAY'
,p_source=>'P87_CALENDAR_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 10/26/2015'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12162638646070593549)
,p_name=>'P87_CALENDAR_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_source=>'P87_CALENDAR_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 10/26/2015'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12162638834254593550)
,p_name=>'P87_CALENDAR_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12162631557007593540)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate+3;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_source=>'P87_CALENDAR_END_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_begin_on_new_line=>'N'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 10/26/2015'
);
wwv_flow_imp.component_end;
end;
/
