prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_tab_set=>'TS1'
,p_name=>'IP Inventory'
,p_step_title=>'&P50_REPORT.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11277046333424539872)
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
 p_id=>wwv_flow_imp.id(11277047344309551612)
,p_plug_name=>'&P50_REPORT.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IP_ID, ',
'       STUDY_ID, ',
'       BOTTLE_NO, ',
'       STUDY_ARM_ID, ',
'       ARMD_ID, ',
'       IP_CONTENT, ',
'       --IP_DOSE_LEVEL, ',
'       IP_DOSE, ',
'       --IP_NO_TABLETS, ',
'       STUDY_SITE_ID, ',
'       PATIENT_PROFILE_ID,',
'       PATIENT_VISIT_ID,',
'       NVL(IP_STATUS,1) IP_STATUS,',
'       BATCH,',
'       EXP_DATE_REAL,',
'       NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS STATUS,',
'       MANUF_DATE,',
'       EXP_DATE_LABEL,',
'       LOT_NUMBER LOT_NO,',
'       (SELECT RANDOMNO D',
'          FROM EDC_PATIENT_PROFILE',
'         WHERE PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID',
'       ) RANDOM_NO,',
'       REGION',
'  FROM EDC_IP_DETAIL A',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID --NVL(:P0_STUDY_ID,:APP_STUDY_ID)',
' --and EDC_USER.GET_USER_SITE_ACCESS(STUDY_SITE_ID, :APP_EDC_USER_TYPE, :APP_EDC_USER, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_ROLE_ID) = 1',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(A.COUNTRY_ID, A.STUDY_DEPOT_ID) = 1',
' ORDER BY 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P50_STUDY_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IP_ID, ',
'       STUDY_ID, ',
'       BOTTLE_NO, ',
'       STUDY_ARM_ID, ',
'       ARMD_ID, ',
'       IP_CONTENT, ',
'       --IP_DOSE_LEVEL, ',
'       IP_DOSE, ',
'       IP_NO_TABLETS, ',
'       STUDY_SITE_ID, ',
'       PATIENT_PROFILE_ID,',
'       PATIENT_VISIT_ID,',
'       NVL(IP_STATUS,1) IP_STATUS,',
'       BATCH,',
'       EXP_DATE_REAL,',
'       NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS STATUS,',
'       MANUF_DATE,',
'       EXP_DATE_LABEL,',
'       LOT_NUMBER LOT_NO,',
'       (SELECT a.RANDOMNO D',
'          FROM EDC_PATIENT_PROFILE A',
'         WHERE PATIENT_PROFILE_ID = EDC_IP_DETAIL.PATIENT_PROFILE_ID',
'       ) RANDOM_NO',
'  FROM EDC_IP_DETAIL',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID --NVL(:P0_STUDY_ID,:APP_STUDY_ID)',
'   and EDC_USER.GET_USER_SITE_ACCESS(STUDY_SITE_ID, :APP_EDC_USER_TYPE, :APP_EDC_USER, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_ROLE_ID) = 1',
'   /*AND STUDY_SITE_ID IN (SELECT STUDY_SITE_ID',
'                           FROM EDC_SITE_CONTACTS',
'                          WHERE SITE_CONTACT_ID = TO_NUMBER(:APP_EDC_USER)',
'                            AND TO_NUMBER(:APP_EDC_USER_TYPE) = 3',
'                          UNION',
'                         SELECT CONTACT_ID',
'                           FROM EDC_STUDY_CONTACT',
'                          WHERE STUDY_CONTACT_ID = TO_NUMBER(:APP_EDC_USER_ID)',
'                            AND TO_NUMBER(:APP_EDC_USER_TYPE) = 2',
'                          UNION',
'                         SELECT STUDY_SITE_ID',
'                           FROM EDC_STUDY_SITES',
'                          WHERE USER_ID = TO_NUMBER(:APP_EDC_USER)',
'                            AND TO_NUMBER(:APP_EDC_ROLE_ID) = 17',
'                        )*/',
'UNION',
'SELECT IP_ID,',
'       STUDY_ID, ',
'       BOTTLE_NO, ',
'       STUDY_ARM_ID, ',
'       ARMD_ID, ',
'       IP_CONTENT, ',
'       --IP_DOSE_LEVEL, ',
'       IP_DOSE, ',
'       IP_NO_TABLETS, ',
'       STUDY_SITE_ID, ',
'       PATIENT_PROFILE_ID,',
'       PATIENT_VISIT_ID,',
'       NVL(IP_STATUS,1) IP_STATUS,',
'       BATCH,',
'       EXP_DATE_REAL,',
'       NVL(EDC_UTIL.GET_DRUG_INV_STATUS(IP_ID, IP_STATUS), 1) AS STATUS,',
'       MANUF_DATE,',
'       EXP_DATE_LABEL,',
'       LOT_NUMBER LOT_NO,',
'       (SELECT a.RANDOMNO D',
'          FROM EDC_PATIENT_PROFILE A',
'         WHERE PATIENT_PROFILE_ID = EDC_IP_DETAIL.PATIENT_PROFILE_ID',
'       ) RANDOM_NO',
'  FROM EDC_IP_DETAIL',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID --NVL(:P0_STUDY_ID,:APP_STUDY_ID)',
'   and EDC_USER.GET_USER_SITE_ACCESS(STUDY_SITE_ID, :APP_EDC_USER_TYPE, :APP_EDC_USER, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_ROLE_ID) = 1',
' ORDER BY 1 DESC'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11277047603522551615)
,p_name=>'Study Arm Inventory'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No Data Found'
,p_base_pk1=>'IP_ID'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt=""  style="vertical-align: middle;">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>291552524809318466
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277047773860551617)
,p_db_column_name=>'IP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'IP Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277048171996551617)
,p_db_column_name=>'STUDY_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Study Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STUDY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277048566253551617)
,p_db_column_name=>'BOTTLE_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Kit #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_static_id=>'BOTTLE_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277048907982551618)
,p_db_column_name=>'IP_CONTENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Size'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'IP_CONTENT'
,p_use_as_row_header=>'N'
,p_column_comment=>'rename name : size insteasd of Dose level'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277049335780551619)
,p_db_column_name=>'IP_DOSE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dose'
,p_report_label=>'IP Size'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_DOSE'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_blinded edc_study.blinded%TYPE;',
'begin',
'select nvl(blinded, ''No'') ',
'  into v_blinded',
'  from edc_study',
' where study_id = :APP_EDC_STUDY_ID;',
'',
'if v_blinded = ''No'' then',
' return true;',
'else',
' return false;',
'end if;',
'',
'end;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_blinded number;',
'begin',
'select nvl(blinded,0) ',
'  into v_blinded',
'  from edc_study',
' where study_id = :APP_EDC_STUDY_ID;',
'',
'if v_blinded = 0 then',
' return true;',
'else',
' return false;',
'end if;',
'',
'end;'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277050112129551620)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Site'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STUDY_SITE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277050503096551620)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Screening No.'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PATIENT_PROFILE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11996862309151366005)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277050903401551620)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Visit'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PATIENT_VISIT_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(12152718845647072760)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277051295767551621)
,p_db_column_name=>'IP_STATUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Kit Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'IP_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(12152767440636550843)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277051732772551621)
,p_db_column_name=>'BATCH'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Batch <BR>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'BATCH'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277052114585551622)
,p_db_column_name=>'EXP_DATE_REAL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Exp Date.<br> Real'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'EXP_DATE_REAL'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277052558737551622)
,p_db_column_name=>'MANUF_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Manufacture'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'MANUF_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277052908010551622)
,p_db_column_name=>'EXP_DATE_LABEL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Exp Date.<br>Label'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'EXP_DATE_LABEL'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277053305748551623)
,p_db_column_name=>'ARMD_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Study Arm'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ARMD_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(12089529439489798421)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277053685361551623)
,p_db_column_name=>'STUDY_ARM_ID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Study Arm'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STUDY_ARM_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(12146234137629821316)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_blinded edc_study.blinded%TYPE;',
'begin',
'select nvl(blinded, ''No'') ',
'  into v_blinded',
'  from edc_study',
' where study_id = :APP_EDC_STUDY_ID;',
'',
'if v_blinded = ''No'' then',
' return true;',
'else',
' return false;',
'end if;',
'',
'end;',
'/',
'',
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277054168803551623)
,p_db_column_name=>'STATUS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(12152719031561072760)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277054566609551624)
,p_db_column_name=>'LOT_NO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Lot <BR>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LOT_NO'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11277054916515551624)
,p_db_column_name=>'RANDOM_NO'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Randomization No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RANDOM_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3293692106427402528)
,p_db_column_name=>'REGION'
,p_display_order=>31
,p_column_identifier=>'V'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11277055309160551625)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Dispensed Kit'
,p_report_seq=>10
,p_report_alias=>'Dispensed_Kits'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'STUDY_SITE_ID:PATIENT_PROFILE_ID:RANDOM_NO:BOTTLE_NO:IP_STATUS:PATIENT_VISIT_ID:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1886091329535527865)
,p_report_id=>wwv_flow_imp.id(11277055309160551625)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'='
,p_expr=>'Dispensed to Subject'
,p_condition_sql=>'"IP_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Dispensed to Subject''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11277056244551551627)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Inventory at Site'
,p_report_seq=>10
,p_report_alias=>'Inventory_at_Site'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'STUDY_SITE_ID:BOTTLE_NO:BATCH:IP_STATUS:EXP_DATE_REAL'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3560361218857968227)
,p_report_id=>wwv_flow_imp.id(11277056244551551627)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'contains'
,p_expr=>'Site'
,p_condition_sql=>'upper("IP_STATUS") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Site''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11277057178267551627)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Site Wise Kit Status'
,p_report_seq=>10
,p_report_alias=>'Site_Wise_Kit_Status'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:BATCH:LOT_NO:STUDY_SITE_ID:IP_STATUS:PATIENT_PROFILE_ID:RANDOM_NO:PATIENT_VISIT_ID'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11277057642069551628)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'Kit_Inventory'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:BATCH:STUDY_SITE_ID:IP_STATUS:PATIENT_PROFILE_ID:RANDOM_NO:PATIENT_VISIT_ID:EXP_DATE_REAL:REGION'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11286334521755357918)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Inventory at Depot'
,p_report_seq=>10
,p_report_alias=>'Inventory_at_Depot'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:STUDY_SITE_ID:IP_STATUS:EXP_DATE_REAL:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1886090464414506977)
,p_report_id=>wwv_flow_imp.id(11286334521755357918)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'contains'
,p_expr=>'at Depot'
,p_condition_sql=>'upper("IP_STATUS") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''at Depot''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11286335580062362865)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Expired Kit'
,p_report_seq=>10
,p_report_alias=>'Expired_Kits'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'BOTTLE_NO:BATCH:LOT_NO:STUDY_SITE_ID:IP_STATUS:PATIENT_PROFILE_ID:RANDOM_NO:PATIENT_VISIT_ID'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(11286336034461362865)
,p_report_id=>wwv_flow_imp.id(11286335580062362865)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IP_STATUS'
,p_operator=>'contains'
,p_expr=>'Expired'
,p_condition_sql=>'upper("IP_STATUS") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''Expired''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11277064133231561217)
,p_plug_name=>'Study Reports List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(12162256056595676308)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12162463639986384308)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568641798130716332)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_PDF_KIT_INVENTORY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568641889709716333)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_XLS_KIT_INVENTORY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568849343157285814)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_PDF_DISPENSED_KITS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568849439954285815)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_XLS_DISPENSED_KITS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568849866715285820)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_PDF_INVENTORY_AT_SITE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568850038543285821)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_XLS_INVENTORY_AT_SITE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9568851269584285834)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_PDF_SITE_WISE_KIT_STATUS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9569086640143708685)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_XLS_SITE_WISE_KIT_STATUS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9569087114558708690)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_PDF_INVENTORY_AT_DEPOT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print PDF'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9569087178657708691)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_button_name=>'PRINT_XLS_INVENTORY_AT_DEPOT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print XLS'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11282017198238300055)
,p_name=>'P50_REPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11277047344309551612)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9568848920083285810)
,p_name=>'PRINT_PDF_KIT_INVENTORY'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568641798130716332)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9568848974531285811)
,p_event_id=>wwv_flow_imp.id(9568848920083285810)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Kit Inventory/KIT_INVENTORY&_repFormat=pdf&_dataSource=default&_outFilename=KIT_INVENTORY.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9568849056714285812)
,p_name=>'PRINT_XLS_KIT_INVENTORY'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568641889709716333)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9568849187428285813)
,p_event_id=>wwv_flow_imp.id(9568849056714285812)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Kit Inventory/KIT_INVENTORY&_repFormat=xls&_dataSource=default&_outFilename=KIT_INVENTORY.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9568849502126285816)
,p_name=>'PRINT_PDF_DISPENSED_KITS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568849343157285814)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9568849646754285817)
,p_event_id=>wwv_flow_imp.id(9568849502126285816)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Dispensed Kits/DISPENSED_KIT&_repFormat=pdf&_dataSource=default&_outFilename=DISPENSED_KIT.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9568849696838285818)
,p_name=>'PRINT_XLS_DISPENSED_KITS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568849439954285815)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9568849780703285819)
,p_event_id=>wwv_flow_imp.id(9568849696838285818)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Dispensed Kits/DISPENSED_KIT&_repFormat=xls&_dataSource=default&_outFilename=DISPENSED_KIT.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9568850141137285822)
,p_name=>'PRINT_PDF_INVENTORY_AT_SITE'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568849866715285820)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9568850192323285823)
,p_event_id=>wwv_flow_imp.id(9568850141137285822)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Inventory At Site/INVENTORY_AT_SITE&_repFormat=pdf&_dataSource=default&_outFilename=INVENTORY_AT_SITE.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9568850330965285824)
,p_name=>'PRINT_XLS_INVENTORY_AT_SITE'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568850038543285821)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9568850437292285825)
,p_event_id=>wwv_flow_imp.id(9568850330965285824)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Inventory At Site/INVENTORY_AT_SITE&_repFormat=xls&_dataSource=default&_outFilename=INVENTORY_AT_SITE.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569086726370708686)
,p_name=>'PRINT_PDF_SITE_WISE_KIT_STATUS'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9568851269584285834)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569086797639708687)
,p_event_id=>wwv_flow_imp.id(9569086726370708686)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Site Wise Kit Status/SITE_WISE_KIT_STATUS&_repFormat=pdf&_dataSource=default&_outFilename=SITE_WISE_KIT_STATUS.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_ST'
||'UDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569086898415708688)
,p_name=>'PRINT_XLS_SITE_WISE_KIT_STATUS'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9569086640143708685)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569087009636708689)
,p_event_id=>wwv_flow_imp.id(9569086898415708688)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Site Wise Kit Status/SITE_WISE_KIT_STATUS&_repFormat=xls&_dataSource=default&_outFilename=SITE_WISE_KIT_STATUS.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_ST'
||'UDY_ID.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569087275670708692)
,p_name=>'PRINT_PDF_INVENTORY_AT_DEPOT'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9569087114558708690)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569087350201708693)
,p_event_id=>wwv_flow_imp.id(9569087275670708692)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Inventory At Depot/INVENTORY_AT_DEPOT&_repFormat=pdf&_dataSource=default&_outFilename=INVENTORY_AT_DEPOT.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID'
||'.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9569087480865708694)
,p_name=>'PRINT_XLS_INVENTORY_AT_DEPOT'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9569087178657708691)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9569087641086708695)
,p_event_id=>wwv_flow_imp.id(9569087480865708694)
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
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Inventory At Depot/INVENTORY_AT_DEPOT&_repFormat=xls&_dataSource=default&_outFilename=INVENTORY_AT_DEPOT.xls&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID'
||'.''',
'            +''&P_USERNAME=&APP_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.'',''_blank'');  '))
);
wwv_flow_imp.component_end;
end;
/
