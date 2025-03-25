prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_tab_set=>'TS1'
,p_name=>'Subject Matrix'
,p_step_title=>'Subject Matrix'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P36_PATIENT_INITIAL").on(''keyup'', function(e) {',
'    var val = $(this).val();',
'   if (val.match(/[^a-zA-Z-]/g)) {',
'       $(this).val(val.replace(/[^a-zA-Z-]/g, ''''));',
'   }',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1785726358188335594)
,p_plug_name=>'Subject Matrix'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>13
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pp.ptintl,pp.status,pp.SCRNO,',
' TO_CHAR(PP.SCREENING_DATE,''DD-MON-YYYY'') SCREENING_DATE',
'    , pp.PATIENT_PROFILE_ID ,',
'    (SELECT VISIT_TITLE FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = pp.PATIENT_PROFILE_ID',
'    AND PARAM_ID = (select to_char(max(b.param_id)) from edc_patient_profile a, edc_patient_visit b, iwrs_crf_dm c',
'      where a.patient_profile_id = b.patient_profile_id',
'        and b.patient_visit_id = c.patient_visit_id',
'        and a.patient_profile_id = PP.PATIENT_PROFILE_ID)) LAST_VISIT,',
'    (select patient_visit_id from edc_patient_visit',
'    where patient_profile_id = pp.PATIENT_PROFILE_ID',
'    AND PARAM_ID = nvl((select max(b.param_id) from edc_patient_profile a, edc_patient_visit b, iwrs_crf_dm c',
'      where a.patient_profile_id = b.patient_profile_id',
'        and b.patient_visit_id = c.patient_visit_id',
'        and a.patient_profile_id = PP.PATIENT_PROFILE_ID),0)) PRE_PATIENT_VISIT_ID,',
'   (select  VISIT_TITLE  from EDC_PATIENT_VISIT where PATIENT_PROFILE_ID = pp.PATIENT_PROFILE_ID and param_id = decode(pp.status ,131,',
'                              (select param_id from edc_patient_visit_params where /*study_part = :P36_STUDY_PART and */ visit_type = ''End of Study'') ,',
'                                   nvl((select max(b.param_id)  from edc_patient_profile a, edc_patient_visit b, iwrs_crf_dm c,edc_patient_visit_params d',
'      where a.patient_profile_id = b.patient_profile_id',
'     --   and a.study_part = d.study_part',
'        and b.param_id = d.param_id',
'        and b.patient_visit_id = c.patient_visit_id ',
'        and a.patient_profile_id = PP.PATIENT_PROFILE_ID)',
'    ,(select param_id from edc_patient_visit_params where /*study_part = :P36_STUDY_PART and*/ visit_type = ''Screening Visit'') - 1) + 1)) next_visit',
'    ,(select PATIENT_VISIT_ID from EDC_PATIENT_VISIT where PATIENT_PROFILE_ID = pp.PATIENT_PROFILE_ID ',
'                              and /*study_part = pp.study_part and */param_id = decode(pp.status ,4,',
'     (select param_id from edc_patient_visit_params where /*study_part = :P36_STUDY_PART and*/ visit_type = ''End of Study''),',
'     nvl((select max(b.param_id) from edc_patient_profile a, edc_patient_visit b, iwrs_crf_dm c',
'      where a.patient_profile_id = b.patient_profile_id',
'        and b.patient_visit_id = c.patient_visit_id',
'        and a.patient_profile_id = PP.PATIENT_PROFILE_ID)',
'    ,(select param_id from edc_patient_visit_params where /*study_part = :P36_STUDY_PART and*/ visit_type = ''Screening Visit'') - 1) + 1)) next_visit_ID',
'   ,CASE WHEN PP.STATUS NOT IN (2,9,10,4,5,6)  AND PP.STATUS>=3  THEN ''EOS/ET Safety Follow-up'' ELSE NULL END  as EOS_VISIT',
'      ,CASE WHEN PP.STATUS NOT IN (2,8,10,4,5,6)  AND PP.STATUS>=3  THEN ''EOT Visit'' ELSE NULL END  as EOT_VISIT',
'   ,PP.RANDOMNO',
'   from edc_patient_profile pp , edc_study_sites s',
'    where s.study_id= 661 and s.study_site_id = pp.study_site_id',
'    AND SCRNO = UPPER(NVL(:P36_SCREENING_NUMBER,SCRNO)) AND UPPER(PTINTL) = UPPER(NVL(:P36_PATIENT_INITIAL,PTINTL))',
'    AND NVL(UPPER(RANDOMNO),0) = NVL(UPPER(NVL(:P36_RANDOMNO,RANDOMNO)),0)',
'    and pp.study_Site_id = nvl(:P36_SITES,PP.STUDY_SITE_ID)',
'    and delete_status=0',
'    AND PP.STATUS = NVL(:P36_STATUS,PP.STATUS)',
'   -- and pp.study_part = nvl(:P36_STUDY_PART,1)',
'    and EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(pp.STUDY_SITE_ID) <> 0',
'    order by pp.patient_profile_id --pp.scrno'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Subject Matrix'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width:1144px;overflow-x:auto;">',
'</div>'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1785728272657335614)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KOTHA.SAIMAHESH'
,p_internal_uid=>684777504515831521
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785728597708335617)
,p_db_column_name=>'SCRNO'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Screening Number'
,p_column_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::P37_PATIENT_PROFILE_ID:#PATIENT_PROFILE_ID#'
,p_column_linktext=>'#SCRNO#'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1765321713839102411)
,p_db_column_name=>'RANDOMNO'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Randomization Number'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785728393448335615)
,p_db_column_name=>'PTINTL'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Subject Intials'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785728535054335616)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Subject Status'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(12147517156473630257)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785728699128335618)
,p_db_column_name=>'SCREENING_DATE'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Screening Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785728815030335619)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Patient Profile Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785728913274335620)
,p_db_column_name=>'LAST_VISIT'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Present Visit'
,p_column_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.::APP_EDC_PATIENT_VISIT_ID,P37_PATIENT_PROFILE_ID:#PRE_PATIENT_VISIT_ID#,#PATIENT_PROFILE_ID#'
,p_column_linktext=>'#LAST_VISIT#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785729017763335621)
,p_db_column_name=>'PRE_PATIENT_VISIT_ID'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Pre Patient Visit Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785729140174335622)
,p_db_column_name=>'NEXT_VISIT'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Next Visit'
,p_column_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:1001:APP_EDC_PATIENT_VISIT_ID,P37_PATIENT_PROFILE_ID:#NEXT_VISIT_ID#,#PATIENT_PROFILE_ID#'
,p_column_linktext=>'#NEXT_VISIT#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_column_comment=>'#NEXT_VISIT#'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785729194761335623)
,p_db_column_name=>'NEXT_VISIT_ID'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Next Visit Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1785729312664335624)
,p_db_column_name=>'EOS_VISIT'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'End of Study/ET Visit'
,p_column_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_PARAM_ID,P44_PATIENT_PROFILE_ID,P44_VISIT_TITLE:133,#PATIENT_PROFILE_ID#,EOS/Safety Follow-up'
,p_column_linktext=>'#EOS_VISIT#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_column_comment=>'#EOS_VISIT#'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1807330171266989894)
,p_db_column_name=>'EOT_VISIT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'EOT Visit'
,p_column_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_PARAM_ID,P44_PATIENT_PROFILE_ID,P44_VISIT_TITLE:132,#PATIENT_PROFILE_ID#,EOT Visit'
,p_column_linktext=>'#EOT_VISIT#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1785753681087405247)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6848030'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS:SCRNO:PTINTL:RANDOMNO:SCREENING_DATE:LAST_VISIT:NEXT_VISIT:EOT_VISIT:EOS_VISIT:'
,p_sort_column_1=>'SCRNO'
,p_sort_direction_1=>'ASC NULLS LAST'
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
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12147473425894568719)
,p_name=>'Subject Matrix'
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>3
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BASE_URL VARCHAR2(4000):=''&EDC_IMAGE_PATH.'';',
'  V_RET VARCHAR2(32760);',
'  V_RET_ADD_VISIT clob;--VARCHAR2(32760);',
'  V_ADD_LINK_1 VARCHAR2(4000);',
'  V_ADD_LINK_2 VARCHAR2(4000);',
'  V NUMBER := 1;',
'BEGIN',
'    --if (:APP_EDC_USER_TYPE in (2,3)  or (:APP_EDC_ROLE_ID = 7 and :APP_EDC_USER_TYPE = 1) ) then',
'    if ((:APP_EDC_USER_TYPE in (2,3) and  :APP_EDC_ROLE_ID IN (15,16)) or (:APP_EDC_ROLE_ID = 13 and :APP_EDC_USER_TYPE = 1) ) then',
'        V_ADD_LINK_1:=''<A HREF="f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_PATIENT_PROFILE_ID,P44_VISIT_TITLE:'';',
'        V_ADD_LINK_2:=''"><IMG HEIGHT="15" title="Create Visit"  WIDTH="17" SRC="''|| V_BASE_URL || ''clth_edc/create_new.png" /></A>'';',
'    else',
'        V_ADD_LINK_1:=''<A HREF="f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_PATIENT_PROFILE_ID,P44_VISIT_TITLE:'';',
'        V_ADD_LINK_2:=''"></A>'';',
'    end if;',
'',
'    v_ret := ''select pp.status,pp.SCRNO,PP.PM_NOTIFIED,',
'    ''''<a href="f?p=&APP_ID.:37:&SESSION.::&DEBUG.::P37_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.SCRNO|| ''''</a>'''' as "Subject #",upper(PTINTL) as "Initial"'';',
'',
'    v_ret_add_visit:= ''select EDC_UTIL.GET_LOV_VAL(STATUS, ''''PATIENT_STATUS'''') STATUS,',
'    SCRNO, "Subject #","Initial", RANDOMNO'';',
'',
'    for c1 in (select PARAM_ID,visit_name,crf_link,DISP_SEQ from edc_patient_visit_params where study_id=661 and param_id<44 order by DISP_SEQ) ',
'    loop',
'        v_ret_add_visit:= v_ret_add_visit || '' , nvl2("'' || c1.disp_seq||''_''||v|| ''", "'' || c1.disp_seq||''_''||v|| ''", case when STATUS in (1,3,7) then ((CASE EDC_CRF_SUBMIT_BPL_RT_01_PKG.IS_NEXT_VISIT(PATIENT_PROFILE_ID, '' || 661 || '' , '''''' || c1.vis'
||'it_name||'''''' , '' || c1.DISP_SEQ|| '' ) WHEN 1 THEN '''''' || V_ADD_LINK_1 || '''''' || PATIENT_PROFILE_ID || '''','' ||  c1.VISIT_NAME|| V_ADD_LINK_2 || '''''' END)) end ) "'' || c1.disp_Seq||''_''||v|| ''"'';',
'',
'        v_ret := v_ret  || '',  max(EDC_CRF_SUBMIT_BPL_RT_01_PKG.GET_CRF_LINK_IMAGE_ADD_VISIT(P_PATIENT_VISIT_ID => pv.PATIENT_VISIT_ID, P_VISIT_NAME => '''''' || c1.visit_name || '''''', P_CRF_LINK => '''''' ',
'        || c1.crf_link || '''''', P_BASE_URL => '''''' || V_BASE_URL || '''''')) as "''||c1.disp_seq||''_''||v||''"'';',
'',
'        v := v + 1;',
'    end loop;',
'',
'    V_RET := V_RET ||'' , PP.RANDOMNO',
'    , pp.PATIENT_PROFILE_ID from edc_patient_profile pp, /*edc_patient_visit pv,*/',
'    (select patient_profile_id, max(patient_visit_id) patient_visit_id from edc_patient_visit group by patient_profile_id, param_id) pv,edc_study_sites s',
'    where s.study_id=''||:APP_EDC_STUDY_ID||'' and pp.PATIENT_PROFILE_ID = pv.PATIENT_PROFILE_ID and s.study_site_id = pp.study_site_id',
'    AND SCRNO = UPPER(NVL(:P36_SCREENING_NUMBER,SCRNO)) AND UPPER(PTINTL) = UPPER(NVL(:P36_PATIENT_INITIAL,PTINTL))',
'    AND NVL(UPPER(RANDOMNO),0) = NVL(UPPER(NVL(:P36_RANDOMNO,RANDOMNO)),0)',
'    and pp.study_Site_id = nvl(:P36_SITES,PP.STUDY_SITE_ID)',
'    and delete_status=0',
'    AND PP.STATUS = NVL(:P36_STATUS,PP.STATUS)',
'    and EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(pp.STUDY_SITE_ID) <> 0',
'',
'    group by PP.PM_NOTIFIED,pp.status,pp.SCRNO,upper(PTINTL), PP.RANDOMNO, pp.PATIENT_PROFILE_ID, ''''<a href="f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.SCRNO|| ''''</a>'''' order by pp.SCRNO'';',
'',
'    v_ret_add_visit:= v_ret_add_visit || '' from ( '' || v_ret || '' ) '';',
'',
'    RETURN V_RET_ADD_VISIT;',
'dbms_output.put_line(V_RET_ADD_VISIT);',
'end;'))
,p_display_condition_type=>'NEVER'
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width:1144px;overflow-x:auto;">',
''))
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_plug_query_max_columns=>60
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_report_title varchar2(4000);',
'BEGIN',
' v_report_title:=''Status:Patient Profile ID:Subject Number''||'':''||''Subject Initials:Randomization Number''; --||'':''||''Randomization <br>Number''',
' for c1 in (select VISIT_SHOW from edc_patient_visit_params where /*param_id < 4 and */study_id=:APP_EDC_STUDY_ID order by DISP_SEQ)',
' loop',
'     v_report_title:=v_report_title || '':'' || c1.VISIT_SHOW;',
' end loop;',
' RETURN V_REPORT_TITLE;',
'END;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>50
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
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
'declare',
'',
'V_BASE_URL varchar2(255):=''&EDC_IMAGE_PATH.'';',
'v_ret varchar2(32760);',
'v_ret_add_visit varchar2(32760);',
'V_ADD_LINK_1 VARCHAR2(4000);',
'V_ADD_LINK_2 VARCHAR2(4000);',
'v number := 1;',
'',
'begin',
'',
'--if (:APP_EDC_USER_TYPE in (2,3)  or (:APP_EDC_ROLE_ID = 7 and :APP_EDC_USER_TYPE = 1) ) then',
'if (:APP_EDC_USER_TYPE in (2,3)  or (:APP_EDC_ROLE_ID = 13 and :APP_EDC_USER_TYPE = 1) ) then',
'',
'V_ADD_LINK_1:=''<A HREF="f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_PATIENT_PROFILE_ID,P44_VISIT_TITLE:'';',
'V_ADD_LINK_2:=''"><IMG HEIGHT="15" title="Create Visit"  WIDTH="17" SRC="''|| V_BASE_URL || ''SUN_21010_DEV/create_new.png" /></A>'';',
'',
'else',
'',
'V_ADD_LINK_1:=''<A HREF="f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_PATIENT_PROFILE_ID,P44_VISIT_TITLE:'';',
'V_ADD_LINK_2:=''"></A>'';',
'',
'end if;',
'',
'v_ret := ''select pp.status,pp.SCRNO,',
'''''<a href="f?p=&APP_ID.:37:&SESSION.::&DEBUG.::P37_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.SCRNO|| ''''</a>'''' as "Subject #",upper(PTINTL) as "Initial"'';',
'',
'v_ret_add_visit:= ''select SCRNO, "Subject #","Initial"'';',
'for c1 in (select substr(visit_name,1,20) visit_name,crf_link,DISP_SEQ from edc_patient_visit_params where study_id=661 and param_id <> 6 order by DISP_SEQ) ',
'loop',
'',
'v_ret_add_visit:= v_ret_add_visit || '' , nvl2("'' || c1.visit_name||''_''||v|| ''", "'' || c1.visit_name||''_''||v|| ''", case when STATUS in (1,2,3,4) then ((CASE EDC_CRF_SUBMIT_BPL_RT_01_PKG.IS_NEXT_VISIT(PATIENT_PROFILE_ID, '' || 661 || '' , '''''' || c1.visit'
||'_name||'''''' , '' || c1.DISP_SEQ|| '' ) WHEN 1 THEN '''''' || V_ADD_LINK_1 || '''''' || PATIENT_PROFILE_ID || '''','' || c1.visit_name|| V_ADD_LINK_2 || '''''' END)) end ) "'' || c1.visit_name|| ''"'';',
'',
'v_ret := v_ret  || '',  max(EDC_CRF_SUBMIT_BPL_RT_01_PKG.GET_CRF_LINK_IMAGE_ADD_VISIT(P_PATIENT_VISIT_ID => pv.PATIENT_VISIT_ID, P_VISIT_NAME => '''''' || c1.visit_name || '''''', P_CRF_LINK => '''''' ',
'|| c1.crf_link || '''''', P_BASE_URL => '''''' || V_BASE_URL || '''''')) as "''||c1.visit_name||''_''||v||''"'';',
'',
'v := v + 1;',
'',
'end loop;',
'',
'V_RET := V_RET ||'' , pp.PATIENT_PROFILE_ID from edc_patient_profile pp, edc_patient_visit pv, edc_study_sites s ',
'where s.study_id=''||:APP_EDC_STUDY_ID||'' and pp.PATIENT_PROFILE_ID = pv.PATIENT_PROFILE_ID and s.study_site_id=pp.study_site_id',
'AND SCRNO = UPPER(NVL(:P36_SCREENING_NUMBER,SCRNO)) AND UPPER(PTINTL) = UPPER(NVL(:P36_PATIENT_INITIAL,PTINTL))',
'AND NVL(UPPER(RANDOMNO),0) = NVL(UPPER(NVL(:P36_RANDOMNO,RANDOMNO)),0)',
'and delete_status=0',
'and pp.study_site_id in ( ''||',
'case ',
'when :P36_SITES is not null then :P36_SITES',
'when :APP_EDC_USER_TYPE = 3 then ''select STUDY_SITE_ID from EDC_SITE_CONTACTS where SITE_CONTACT_ID = to_number(''||:APP_EDC_USER||'')''',
'when :APP_EDC_USER_TYPE = 2 then ''select contact_id from EDC_STUDY_CONTACT where study_contact_id =  to_number(''||:APP_EDC_USER_ID||'')''',
'when :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 17 then ''select a.study_site_id from edc_study_sites a, edc_study_contact b where a.user_id = b.contact_id and a.study_id = b.study_id and b.CONTACT_ID = to_number(''||:APP_EDC_USER||'')'' ',
'else',
'''pp.study_site_id''',
'end||'')',
'',
'group by pp.status,pp.SCRNO,upper(PTINTL), pp.PATIENT_PROFILE_ID, ''''<a href="f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.SCRNO|| ''''</a>'''' order by pp.SCRNO'';',
'',
'v_ret_add_visit:= v_ret_add_visit || '' from ( '' || v_ret || '' ) '';',
'RETURN V_RET_ADD_VISIT;',
'end;',
'',
'',
'---header text---',
'<div style="width:1144px;overflow-x:auto;">',
'',
'footer text---',
'</div>',
''))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147473656123568721)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147473746230568722)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147473834025568722)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147473951060568722)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474041293568722)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474131007568722)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474239517568722)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474355925568722)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474426602568722)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474556124568722)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474653187568722)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474754571568723)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474853485568723)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147474941254568723)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475024622568723)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475145118568723)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475229278568723)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475332081568723)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475446403568723)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475527993568723)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475655768568723)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475743981568723)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475833615568723)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147475936264568723)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476056378568723)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476155525568723)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476236752568723)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476351096568723)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476432146568723)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476536082568723)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476636029568723)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476755242568723)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476832070568724)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147476939296568724)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477047575568724)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477135161568724)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477253892568724)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477350085568724)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477444852568724)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477553581568724)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477642221568724)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477742909568724)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477834249568725)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147477939263568725)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478036221568725)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478137290568725)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478250359568725)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478338384568725)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478443966568725)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478551243568725)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478649433568725)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478749988568725)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478856109568725)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147478933531568725)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147479056333568725)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147479126115568725)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147479238124568725)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147479335853568725)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147479451968568725)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147479543762568725)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147480247547568730)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146131340165911980)
,p_plug_display_sequence=>23
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7756586605254383561)
,p_plug_name=>'Legend'
,p_parent_plug_id=>wwv_flow_imp.id(12147480247547568730)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132727102911981)
,p_plug_display_sequence=>53
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cursor c_st is',
'      select DISPLAY_VAL,',
'             IMAGE_TAG ',
'        from edc_crf_status ',
'       where status = 1',
'       order by return_val;',
'',
'   v_ret varchar2(2000);',
'',
'begin',
'    v_ret := ''<span>'';',
'    ',
'    for cur in c_st loop',
'        ',
'        IF CUR.IMAGE_TAG in (''create_new.png'',''bt_Help_Home.png'') THEN',
'            v_ret := v_ret || ''<p><div><img src="&EDC_IMAGE_PATH.clth_edc/''||cur.IMAGE_TAG||''"  width="16" height="16"/> - ''||cur.DISPLAY_VAL||''</div></p>'';',
'        ELSE',
'            v_ret := v_ret || ''<p><div><img src="&EDC_IMAGE_PATH.clth_edc/''||cur.IMAGE_TAG||''"  width="20" height="20"/> - ''||cur.DISPLAY_VAL||''</div></p>'';',
'        END IF;',
'        ',
'    end loop;',
'    v_ret := v_ret || ''</span>'';',
'    htp.prn(v_ret);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147480449646568732)
,p_plug_name=>'Patient List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146129741780911976)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PATIENT_PROFILE_ID", ',
'"STUDY_SITE_ID",',
'"PATIENT_INITIAL",',
'"STATUS",',
'"COMMENTS",',
'"CREATED_ON",',
'"CREATED_BY",',
'"UPDATED_ON",',
'"UPDATED_BY",',
'"SCREENING_DATE",',
'"SCREENING_NUMBER"',
'from "#OWNER#"."EDC_PATIENT_PROFILE" ',
'where STUDY_SITE_ID in ',
'(select STUDY_SITE_ID from edc_study_sites where study_id=:APP_EDC_STUDY_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12147480637917568734)
,p_name=>'Patient List'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_PATIENT_PROFILE_ID:#PATIENT_PROFILE_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'SOHIL.BHAVSAR'
,p_internal_uid=>150856913433002954
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147480754696568739)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Patient Profile Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PATIENT_PROFILE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147480843365568740)
,p_db_column_name=>'STUDY_SITE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Site'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STUDY_SITE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(12040794702731057223)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147480935354568740)
,p_db_column_name=>'PATIENT_INITIAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Patient Initial'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PATIENT_INITIAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147481036874568740)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(12040797092913120566)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147481125085568740)
,p_db_column_name=>'COMMENTS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147481237205568741)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created On'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_ON'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147481355546568741)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_rpt_named_lov=>wwv_flow_imp.id(12039459885443591293)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147481446008568741)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated On'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_ON'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147481546146568741)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_BY'
,p_rpt_named_lov=>wwv_flow_imp.id(12039459885443591293)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147481648585568741)
,p_db_column_name=>'SCREENING_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Screening Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'SCREENING_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147481744368568741)
,p_db_column_name=>'SCREENING_NUMBER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Screening Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SCREENING_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12147481833457568742)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1508582'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SCREENING_NUMBER:PATIENT_INITIAL:SCREENING_DATE:STUDY_SITE_ID:STATUS:COMMENTS'
,p_sort_column_1=>'STUDY_SITE_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SCREENING_NUMBER'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STUDY_SITE_ID:0:0:0:0:0'
,p_break_enabled_on=>'STUDY_SITE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147482241410568751)
,p_plug_name=>'SEARCH'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131930378911981)
,p_plug_display_sequence=>1
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12147483655645568757)
,p_name=>'Old Subjet Matrix'
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'V_BASE_URL varchar2(255):=''&EDC_IMAGE_PATH.'';',
'v_ret varchar2(32760);',
'',
'begin',
'',
'v_ret := ''select pp.screening_number,',
'''''<a href="f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.screening_number || ''''</a>'''' as "Subject #"'';',
'',
'for c1 in (select visit_name,crf_link from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID order by DISP_SEQ) ',
'loop',
'',
'',
'v_ret := v_ret  || '',  max( case when UPPER(pv.visit_title)=UPPER(''''''||c1.visit_name||'''''') then   EDC_CRF_PKG.GET_CRF_LINK_IMAGE(P_PATIENT_VISIT_ID => pv.PATIENT_VISIT_ID, P_VISIT_NAME => '''''' || c1.visit_name || '''''', P_CRF_LINK => '''''' ',
'|| c1.crf_link || '''''', P_BASE_URL => '''''' || V_BASE_URL || '''''')  end) as "''||c1.visit_name||''"'';',
'',
'end loop;',
'',
'v_ret := v_ret ||'' from edc_patient_profile pp, edc_patient_visit pv, edc_study_sites s ',
'where s.study_id=''||:APP_EDC_STUDY_ID||'' and pp.PATIENT_PROFILE_ID = pv.PATIENT_PROFILE_ID and s.study_site_id=pp.study_site_id ',
'group by pp.screening_number,''''<a href="f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.screening_number || ''''</a>'''' order by pp.screening_number'';',
'',
'return v_ret;',
'end;'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_plug_query_max_columns=>60
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_report_title varchar2(4000);',
'begin',
' v_report_title:=''Patient Profile ID:Screening Number'';',
' for c1 in (select visit_name from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID order by DISP_SEQ)',
' loop',
'     v_report_title:=v_report_title || '':'' || c1.visit_name;',
' end loop;',
' return v_report_title;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ret varchar2(32760);',
'begin',
'v_ret := ''select pp.screening_number,',
'''''<a href="f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.screening_number || ''''</a>'''' as "Subject #"'';',
'for c1 in (select visit_name from edc_patient_visit_params where study_id=:APP_EDC_STUDY_ID order by DISP_SEQ) ',
'loop',
'v_ret := v_ret || '',max(case when pv.visit_title=''''''||c1.visit_name||'''''' then ',
'CASE PV.CRF_STATUS a',
'WHEN 1 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''SCREENING VISIT'''' then ',
'''''f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else WHEN 2 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''BASELINE'''' then ',
'''''f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else',
'''''#''''',
'end || ''''"> <img src="&EDC_IMAGE_PATH.img/icon_Skipped.gif" /> </a>'''' ',
'WHEN 2 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''SCREENING VISIT'''' then ',
'''''f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else WHEN 2 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''BASELINE'''' then ',
'''''f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else',
'''''#''''',
'end || ''''"><img src="&EDC_IMAGE_PATH.img/icon_InitialDE.gif" /> </a>'''' ',
'WHEN 3 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''SCREENING VISIT'''' then ',
'''''f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else WHEN 2 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''BASELINE'''' then ',
'''''f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else',
'''''#''''',
'end || ''''"><img src="&EDC_IMAGE_PATH.img/icon_NotStarted.gif" /> </a>'''' ',
'WHEN 4 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''SCREENING VISIT'''' then ',
'''''f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else WHEN 2 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''BASELINE'''' then ',
'''''f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else',
'''''#''''',
'end || ''''"><img src="&EDC_IMAGE_PATH.img/icon_DEcomplete.gif" />  </a>'''' ',
'WHEN 5 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''SCREENING VISIT'''' then ',
'''''f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else WHEN 2 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''BASELINE'''' then ',
'''''f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else',
'''''#''''',
'end || ''''"><img src="&EDC_IMAGE_PATH.img/icon_Signed.gif" />  </a>'''' ',
'WHEN 6 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''SCREENING VISIT'''' then ',
'''''f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else WHEN 2 THEN',
'''''<a href="'''' || case upper(pv.visit_title)',
'when ''''BASELINE'''' then ',
'''''f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PATIENT_VISIT_ID:''''||pv.PATIENT_VISIT_ID',
'else',
'''''#''''',
'end || ''''"><img src="&EDC_IMAGE_PATH.img/icon_Locked.gif" />  </a>'''' ',
'WHEN 7 THEN',
'''''<img src="&EDC_IMAGE_PATH.img/icon_Stopped.gif" />'''' ',
'ELSE',
'''''<img src="&EDC_IMAGE_PATH.img/icon_NotStarted.gif" />''''',
'END',
'end) as "''||c1.visit_name||''"'';',
'end loop;',
'v_ret := v_ret ||'' from edc_patient_profile pp, edc_patient_visit pv, edc_study_sites s ',
'where s.study_id=''||:APP_EDC_STUDY_ID||'' and pp.PATIENT_PROFILE_ID = pv.PATIENT_PROFILE_ID and s.study_site_id=pp.study_site_id ',
'group by pp.screening_number,''''<a href="f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.screening_number || ''''</a>'''' order by pp.screening_number'';',
'return v_ret;',
'end;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485843453568759)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485941491568759)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486057231568759)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486141808568759)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486235225568759)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486339782568759)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486426882568759)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486544994568759)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486624629568759)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486730920568759)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486846700568759)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147486926295568759)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487050567568759)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487140579568759)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487227335568759)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487330227568759)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487430281568759)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487550083568760)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487656918568760)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487740508568760)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487831451568760)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147487934177568760)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488053929568760)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488148448568760)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488257177568760)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488336234568760)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488428116568760)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488539490568760)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488647356568760)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147483830241568758)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147483927695568758)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484031614568758)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484142921568758)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484248876568758)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484330241568758)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484437245568758)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484553068568758)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484636300568758)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484729000568758)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484829741568758)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147484929655568759)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485038391568759)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485153925568759)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485245578568759)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485336234568759)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485448091568759)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485552727568759)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485641901568759)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147485736620568759)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488746421568760)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488855532568760)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147488932042568760)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147489029878568760)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147489154501568760)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147489240386568760)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147489356973568760)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147489443785568760)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147489542811568760)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147489640931568760)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147489748090568760)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12151904357242337953)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147482425436568752)
,p_button_sequence=>45
,p_button_plug_id=>wwv_flow_imp.id(12147482241410568751)
,p_button_name=>'P36_SEARCH'
,p_button_static_id=>'P36_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Search'
,p_button_alignment=>'RIGHT-CENTER'
,p_request_source=>'Go'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147482654509568755)
,p_button_sequence=>55
,p_button_plug_id=>wwv_flow_imp.id(12147482241410568751)
,p_button_name=>'P36_RECEIVE_DRUGS'
,p_button_static_id=>'P36_RECEIVE_DRUGS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Receive Drugs'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RP,175::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_USER_TYPE IN (2,3) OR :APP_EDC_ROLE_ID = 7',
'',
'--Condition Remove :',
':APP_EDC_USER_TYPE IN (1) OR :APP_EDC_ROLE_ID = 13'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147483035135568757)
,p_button_sequence=>65
,p_button_plug_id=>wwv_flow_imp.id(12147482241410568751)
,p_button_name=>'P36_RETURN_DRUGD_TO_DEPOT'
,p_button_static_id=>'P36_RETURN_DRUGD_TO_DEPOT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Return Drugs to Depot'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:166:&SESSION.::&DEBUG.:RP,166::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--condition ;(Remonve)',
'Pl.sql Expression ',
':APP_EDC_USER_TYPE IN (1) OR :APP_EDC_ROLE_ID = 13'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147480049104568727)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1785726358188335594)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New Subject'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(PATIENT_PROFILE_ID) CNT',
'  FROM EDC_PATIENT_PROFILE',
' WHERE RANDOMNO IS NOT NULL',
'HAVING COUNT(PATIENT_PROFILE_ID) >= (SELECT TOT_PATIENTS FROM EDC_STUDY)'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'value of item in expression 1 is contained whithin colon delimited list in expression 2',
'APP_EDC_USER_TYPE',
'2:3:4'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11642959254706555216)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12147473425894568719)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'PI Signed Off'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12162821126680345234)
,p_button_comment=>'EDC_WORKFLOW.is_ready_for_authorize1(null,:APP_USER_NAME,''PI'') = 1'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11644658125425304290)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12147473425894568719)
,p_button_name=>'LOCK_CRF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'Lock CRF'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
,p_button_comment=>'EDC_WORKFLOW.is_ready_for_authorize_LOCK(:P36_SITES,null,:APP_USER_NAME,''LC'') = 1'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12147489928960568765)
,p_branch_action=>'f?p=&FLOW_ID.:36:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11646004244435126063)
,p_name=>'P36_STATUS'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_imp.id(12147482241410568751)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_PATIENT_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''PATIENT_STATUS'' and lv.status=1 --and stored_value<> ''9''',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11675080036135515329)
,p_name=>'P36_SITES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12147482241410568751)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_site_id number;',
'begin',
'if :APP_EDC_USER_TYPE = 3 then',
'select study_site_id ',
'into v_site_id',
'from edc_site_contacts a, edc_study_contact b',
'where a.site_contact_id = b.contact_id',
' and b.study_contact_id = :APP_EDC_USER_ID;',
'return v_site_id;',
'end if;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Sites'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(B.COUNTRY_ID) = 1',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT '' Site : '' || A.SITE_NUMBER || '' ( '' || B.INVNAME || '' )'' D,',
'       A.STUDY_SITE_ID R ',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND (:APP_EDC_USER = A.USER_ID',
'        OR',
'        :APP_EDC_ROLE_ID IN (13, 18, 20) -- Admin, DM, Sponsor',
'       )',
' ORDER BY 1',
'---------------',
' SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select STUDY_SITE_ID from EDC_SITE_CONTACTS where SITE_CONTACT_ID = to_number(:APP_EDC_USER))',
'   and  :APP_EDC_USER_TYPE = 3 ',
'union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select contact_id from EDC_STUDY_CONTACT where study_contact_id =  to_number(:APP_EDC_UER_ID))',
'   and :APP_EDC_USER_TYPE = 2',
'/*union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select a.study_site_id ',
'                                                              from edc_study_sites a, edc_study_contact b ',
'                                                              where a.user_id = b.contact_id ',
'                                                              and a.study_id = b.study_id ',
'                                                              and b.CONTACT_ID = to_number(:APP_EDC_USER))',
'   and :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 17*/',
'union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select STUDY_SITE_ID from EDC_SITE_CONTACTS)',
'   and  :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID in (13,21,18,17)',
'order by 1'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147482839281568757)
,p_name=>'P36_RANDOMNO'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(12147482241410568751)
,p_prompt=>'Randomization Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147483246765568757)
,p_name=>'P36_SCREENING_NUMBER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(12147482241410568751)
,p_prompt=>'Screening Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>9
,p_cMaxlength=>12
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147483434328568757)
,p_name=>'P36_PATIENT_INITIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12147482241410568751)
,p_prompt=>'Subject Initials'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>3
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11642960600797572632)
,p_name=>'PI_SIGNOFF_MODAL_OPEN'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11642959254706555216)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_da_event_comment=>'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM,P91_PAGE_ID:&APP_USER_NAME.,&APP_PAGE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642961016089572632)
,p_event_id=>wwv_flow_imp.id(11642960600797572632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM,P91_PAGE_ID:&APP_USER_NAME.,36'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'60'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'uMessageText',
'uSuccessMessage',
'',
'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM:&APP_USER_NAME.'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11642961424571574226)
,p_name=>'auto_close'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642961857837574226)
,p_event_id=>wwv_flow_imp.id(11642961424571574226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11642962114181575949)
,p_name=>'auto refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642962531235575949)
,p_event_id=>wwv_flow_imp.id(11642962114181575949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload(true);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11645145320907841961)
,p_name=>'lock modal page'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11644658125425304290)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11645145710581841964)
,p_event_id=>wwv_flow_imp.id(11645145320907841961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:552:&APP_SESSION.::RP,552::P552_SITE_ID,P552_PAGE_ID,P552_STATUS,P552_FLAG:&P36_SITES.,&APP_PAGE_ID.,10,1'
,p_attribute_06=>'.uMessageText'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11644660978332320734)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOCK_CRF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_res boolean;',
'begin',
'  /*  update edc_patient_visit',
'   set crf_signed_date = sysdate,',
'       crf_signed_by = :APP_EDC_USER_ID,',
'       crf_status = 9',
' where patient_Visit_id = :APP_EDC_PATIENT_VISIT_ID;',
'',
'    --   :P91_CLOSE_STATUS := ''Y'';',
'    ',
'*/',
'',
'if :P36_SITES is not null then',
'for i in (select distinct(crf_table_name),PATIENT_VISIT_ID from edc_crf_master a,edc_crf_pages b,edc_patient_visit c',
'           where a.crf_id = b.crf_id',
'             and b.param_id = c.param_id',
'             and c.patient_profile_id in (select patient_profile_id from edc_patient_profile where study_site_id = :P36_SITES)',
'          ORDER BY PATIENT_VISIT_ID)',
' LOOP',
' :APP_EDC_PATIENT_VISIT_ID := I.PATIENT_vISIT_ID;',
' ',
'     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                      '' SET SECTION_STATUS = 10 WHERE SECTION_STATUS=9 AND PATIENT_VISIT_ID = ''||I.PATIENT_VISIT_ID;',
'                      ',
'                     ',
'                      ',
' END LOOP;',
'',
'update edc_patient_visit ',
'set crf_status = 10 ',
'where CRF_STATUS=9 ',
'AND PATIENT_VISIT_ID in (select patient_visit_id ',
'                         from edc_patient_Visit a,edc_patient_profile b',
'                         where a.patient_profile_id = b.patient_profile_id',
'                           and b.study_site_id = :P36_SITES);',
'',
'else',
'',
'for i in (select distinct(crf_table_name),PATIENT_VISIT_ID from edc_crf_master a,edc_crf_pages b,edc_patient_visit c',
'           where a.crf_id = b.crf_id',
'             and b.param_id = c.param_id',
'             and c.crf_status = 9',
'          ORDER BY PATIENT_VISIT_ID)',
' LOOP',
' :APP_EDC_PATIENT_VISIT_ID := I.PATIENT_vISIT_ID;',
' ',
'     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                      '' SET SECTION_STATUS = 10 WHERE SECTION_STATUS=9 AND PATIENT_VISIT_ID = ''||I.PATIENT_VISIT_ID;',
'                      ',
'                     ',
'                      ',
' END LOOP;',
'',
'update edc_patient_visit ',
'set crf_status = 10 ',
'where CRF_STATUS=9 ',
'AND PATIENT_VISIT_ID in (select patient_visit_id ',
'                         from edc_patient_Visit a,edc_patient_profile b',
'                         where a.patient_profile_id = b.patient_profile_id',
'                           and b.study_site_id = :P36_SITES);',
'end if;',
'',
'       commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11644658125425304290)
,p_internal_uid=>10543710210190816641
);
wwv_flow_imp.component_end;
end;
/
