prompt --application/pages/page_00111
begin
--   Manifest
--     PAGE: 00111
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
 p_id=>111
,p_tab_set=>'TS1'
,p_name=>'ePRO - CRF Status Report'
,p_step_title=>'ePRO - CRF Status Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3533594523391664114)
,p_plug_name=>'ePRO - CRF Status Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11766669691771127970)
,p_plug_name=>'CRF Status Report'
,p_parent_plug_id=>wwv_flow_imp.id(3533594523391664114)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  b.schedule_id,',
'  d.seq_no,',
'  a.study_site_id,',
'  a.scrno,',
'  b.schedule_title,',
'  c.disp_schedule_name,',
'  e.crf_name,',
'  patient_diary_id,',
'  NVL(edc_util.GET_SECTION_STATUS_MULTI_EDC(661,B.PATIENT_DIARY_ID,E.CRF_ID),''Open'') Status,',
'  e.crf_page_no,',
'  a.patient_profile_id,',
'  e.crf_id,',
'  b.diary_type,',
'  edc_util.GET_PENDING_FROM(661,B.PATIENT_DIARY_ID,E.CRF_ID) PENDING_FROM,',
'  (select count(1) from edc_crf_queries where crf_id = e.crf_id and patient_diary_id = b.patient_diary_id and qry_status in (''Open'',''Reopened'')) "QRY_CNT",',
'  CASE WHEN E.CRF_PAGE_NO=100 THEN',
' ''f?p=&APP_ID.:100:''||:APP_SESSION||''::NO::P100_CRF_ID,P100_SECTION_STATUS,APP_EDC_STUDY_SITE_ID,APP_PATIENT_PROFILE_ID,APP_EDC_SCHEDULE_NAME,APP_EDC_PATIENT_DIARY_ID:''||e.crf_id||'',''||b.section_status||'',''||a.study_site_id||'',''||a.patient_profile_id'
||'||'',''||c.SCHEDULE_NAME||'',''||b.patient_diary_id',
' WHEN E.CRF_PAGE_NO=509 THEN',
' ''f?p=&APP_ID.:509:''||:APP_SESSION||''::NO::P509_CRF_ID,P509_SECTION_STATUS,APP_EDC_STUDY_SITE_ID,APP_PATIENT_PROFILE_ID,APP_EDC_SCHEDULE_NAME,APP_EDC_PATIENT_DIARY_ID:''||e.crf_id||'',''||b.section_status||'',''||a.study_site_id||'',''||a.patient_profile_id'
||'||'',''||c.SCHEDULE_NAME||'',''||b.patient_diary_id',
' END "NEW_LINK",',
' a.randomno,',
' to_char(a.randomization_date,''DD-MON-YYYY'') "RANDOM_DT"',
'FROM edc_patient_profile a,',
'     edc_patient_diary b,',
'     edc_patient_diary_pages d,',
'     edc_Crf_master e,',
'     edc_patient_schedule_params c',
'WHERE a.patient_profile_id = b.patient_profile_id',
'AND b.schedule_id             = d.schedule_id',
'AND b.schedule_title         = c.schedule_name',
'AND d.crf_id               = e.crf_id',
'--and a.study_site_id = decode(:P111_SITES,999999,a.study_site_id,:P111_SITES)',
'and a.study_site_id = :P111_SITES',
'and e.crf_page_no in (100,509)',
'--and NVL(edc_util.GET_SECTION_STATUS_MULTI_EDC(661,B.PATIENT_DIARY_ID,E.CRF_ID),''Open'')=:P111_CRF_STATUS',
'--and edc_util.GET_SECTION_STATUS_REP(661,B.PATIENT_DIARY_ID,E.CRF_ID)=:P111_CRF_STATUS',
'--and e.crf_id not in (3,24)',
'and ((e.crf_id not in (3,24)) or',
' (e.crf_id = 3',
'and (SELECT count(1) FROM IWRS_CRF_DM ',
'     WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = a.PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') ',
'     and RADIO4=''Yes'') > 0) or',
'(e.crf_id = 24',
'and (SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'    WHERE PATIENT_PROFILE_ID = a.PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'') and GENDER=''Female'' and RADIO3=''Yes'') > 0)',
'    )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P111_SITES'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P111_SITES IS NOT NULL'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  b.schedule_id,',
'  d.seq_no,',
'  a.study_site_id,',
'  a.scrno,',
'  b.schedule_title,',
'  c.disp_schedule_name,',
'  e.crf_name,',
'  patient_diary_id,',
'  NVL(edc_util.GET_SECTION_STATUS_MULTI_EDC(:APP_EDC_STUDY_ID,B.PATIENT_DIARY_ID,E.CRF_ID),''Open'') Status,',
'  e.crf_page_no,',
'  a.patient_profile_id,',
'  e.crf_id,',
'  b.diary_type,',
'  edc_util.GET_PENDING_FROM(:APP_EDC_STUDY_ID,B.PATIENT_DIARY_ID,E.CRF_ID) PENDING_FROM,',
'  (select count(1) from edc_crf_queries where crf_id = e.crf_id and patient_diary_id = b.patient_diary_id and qry_status in (''Open'',''Reopened'')) "QRY_CNT",',
'  CASE WHEN E.CRF_PAGE_NO=100 THEN',
' ''f?p=&APP_ID.:100:''||:APP_SESSION||''::NO::P100_CRF_ID,P100_SECTION_STATUS,APP_EDC_STUDY_SITE_ID,APP_PATIENT_PROFILE_ID,APP_EDC_SCHEDULE_NAME,APP_EDC_PATIENT_DIARY_ID:''||e.crf_id||'',''||b.section_status||'',''||a.study_site_id||'',''||a.patient_profile_id'
||'||'',''||c.SCHEDULE_NAME||'',''||b.patient_diary_id',
' WHEN E.CRF_PAGE_NO=509 THEN',
' ''f?p=&APP_ID.:509:''||:APP_SESSION||''::NO::P509_CRF_ID,P509_SECTION_STATUS,APP_EDC_STUDY_SITE_ID,APP_PATIENT_PROFILE_ID,APP_EDC_SCHEDULE_NAME,APP_EDC_PATIENT_DIARY_ID:''||e.crf_id||'',''||b.section_status||'',''||a.study_site_id||'',''||a.patient_profile_id'
||'||'',''||c.SCHEDULE_NAME||'',''||b.patient_diary_id',
' END "NEW_LINK"',
'FROM edc_patient_profile a,',
'     edc_patient_diary b,',
'     edc_patient_diary_pages d,',
'     edc_Crf_master e,',
'     edc_patient_schedule_params c',
'WHERE a.patient_profile_id = b.patient_profile_id',
'AND b.schedule_id             = d.schedule_id',
'AND b.schedule_title         = c.schedule_name',
'AND d.crf_id               = e.crf_id',
'and e.parent_page is null',
'--and a.study_site_id = decode(:P111_SITES,999999,a.study_site_id,:P111_SITES)',
'and a.study_site_id = :P111_SITES',
'and e.study_id=:APP_EDC_STUDY_ID',
'and e.crf_page_no in (100,509,510)',
'--and NVL(edc_util.GET_SECTION_STATUS_MULTI_EDC(:APP_EDC_STUDY_ID,B.PATIENT_DIARY_ID,E.CRF_ID),''Open'')=:P111_CRF_STATUS',
'and NVL(edc_util.GET_SECTION_STATUS_REP(:APP_EDC_STUDY_ID,B.PATIENT_DIARY_ID,E.CRF_ID),2)=:P111_CRF_STATUS',
'--and e.crf_id not in (3,24)',
'and ((e.crf_id not in (3,24)) or',
' (e.crf_id = 3',
'and (SELECT count(1) FROM IWRS_CRF_DM ',
'     WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = a.PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') ',
'     and RADIO4=''Yes'') > 0) or',
'(e.crf_id = 24',
'and (SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'    WHERE PATIENT_PROFILE_ID = a.PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'') and GENDER=''Female'' and RADIO3=''Yes'') > 0)',
'    )',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11766669784961127970)
,p_name=>'Subject Visits'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'100000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>8220224277939804629
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790468610283324796)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Site'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(12152747731580527615)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790469715586324812)
,p_db_column_name=>'SCRNO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Screening<br/>Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790512614795422248)
,p_db_column_name=>'CRF_NAME'
,p_display_order=>45
,p_column_identifier=>'AQ'
,p_column_label=>'CRF Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790514530397422267)
,p_db_column_name=>'STATUS'
,p_display_order=>115
,p_column_identifier=>'AX'
,p_column_label=>'CRF Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3790943408551919988)
,p_db_column_name=>'DISP_SCHEDULE_NAME'
,p_display_order=>125
,p_column_identifier=>'AY'
,p_column_label=>'Schedule Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3549536222904092765)
,p_db_column_name=>'DIARY_TYPE'
,p_display_order=>135
,p_column_identifier=>'AZ'
,p_column_label=>'Diary Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3549536326567092766)
,p_db_column_name=>'PENDING_FROM'
,p_display_order=>145
,p_column_identifier=>'BA'
,p_column_label=>'Pending From'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3533594340327664112)
,p_db_column_name=>'QRY_CNT'
,p_display_order=>155
,p_column_identifier=>'BB'
,p_column_label=>'Open Queries'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3570107807533740165)
,p_db_column_name=>'NEW_LINK'
,p_display_order=>165
,p_column_identifier=>'BC'
,p_column_label=>'New Link'
,p_column_link=>'#NEW_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3569509683117504901)
,p_db_column_name=>'SCHEDULE_ID'
,p_display_order=>175
,p_column_identifier=>'BD'
,p_column_label=>'Schedule Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3569509738297504902)
,p_db_column_name=>'SEQ_NO'
,p_display_order=>185
,p_column_identifier=>'BE'
,p_column_label=>'Seq No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3569509881258504903)
,p_db_column_name=>'SCHEDULE_TITLE'
,p_display_order=>195
,p_column_identifier=>'BF'
,p_column_label=>'Schedule Title'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3569509971681504904)
,p_db_column_name=>'PATIENT_DIARY_ID'
,p_display_order=>205
,p_column_identifier=>'BG'
,p_column_label=>'Patient Diary Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3569510004178504905)
,p_db_column_name=>'CRF_PAGE_NO'
,p_display_order=>215
,p_column_identifier=>'BH'
,p_column_label=>'Crf Page No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3569510180459504906)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>225
,p_column_identifier=>'BI'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3569510198532504907)
,p_db_column_name=>'CRF_ID'
,p_display_order=>235
,p_column_identifier=>'BJ'
,p_column_label=>'Crf Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3571684653996805265)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>245
,p_column_identifier=>'BK'
,p_column_label=>'Randomization Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3571975581286280465)
,p_db_column_name=>'RANDOM_DT'
,p_display_order=>255
,p_column_identifier=>'BL'
,p_column_label=>'Randomization Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11766676601927128903)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2440258'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'STUDY_SITE_ID:SCRNO:NEW_LINK:RANDOMNO:DISP_SCHEDULE_NAME:DIARY_TYPE:CRF_NAME:STATUS:PENDING_FROM:QRY_CNT::RANDOM_DT'
,p_sort_column_1=>'SCHEDULE_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SEQ_NO'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STUDY_SITE_ID:SCRNO:RANDOMNO:RANDOM_DT:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:SCRNO:RANDOMNO:RANDOM_DT:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11766669123829127968)
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
 p_id=>wwv_flow_imp.id(11766696809691232930)
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
 p_id=>wwv_flow_imp.id(3569509582326504900)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3533594523391664114)
,p_button_name=>'GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3533594446607664113)
,p_name=>'P111_CRF_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3533594523391664114)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3790514705029422268)
,p_name=>'P111_SITES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3533594523391664114)
,p_prompt=>'<b>Sites</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r from (SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R, ''1'' s',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'/*union',
'select ''All Sites'' D, 999999 r, ''0'' s',
'from dual*/',
'order by s, d)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790475515272324921)
,p_name=>'Download PDF_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10506106941451303413)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790476080418324928)
,p_event_id=>wwv_flow_imp.id(3790475515272324921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/DICLO_IWRS_SV&_repFormat=csv&_dataSource=default&_outFilename=Subject_Visits.csv&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_ROLE_ID=''+$v("P111_EDC_ROLE_ID_1")+''&P_EDC_USER=''+ $v("P'
||'111_EDC_USER_1") +''&P_EDC_USER_ID=''+ $v("P111_EDC_USER_ID_1")+'''',''_blank'');'
);
wwv_flow_imp.component_end;
end;
/
