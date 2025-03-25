prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_tab_set=>'TS1'
,p_name=>'&APP_EDC_SCHEDULE_TITLE.'
,p_step_title=>'&APP_EDC_SCHEDULE_TITLE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function monitor_crf()',
'{',
' var answer = confirm("Would you like to submit CRF data for monitoring?")',
'	if (answer){',
'            doSubmit(''SUBMIT'');',
'	}',
'}',
'function sdv_crf()',
'{',
' var answer = confirm("Would you like to confirm that Source Data Verified?")',
'	if (answer){',
'            doSubmit(''SDV'');',
'	}',
'}',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'button.ui-datepicker-current { display: none; }',
'',
'.vertical-menu {',
'  width: 150px;',
'}',
'',
'.vertical-menu a {',
'  border-radius: 5px;',
'  background-color: #D2E9E1;',
'  color: black;',
'  display: block;',
'  padding: 12px;',
'  text-decoration: none;',
'  margin-bottom: 10px;',
'}',
'',
'.vertical-menu a:hover {',
'  background-color: #B6DCB6;',
'}',
'',
'.vertical-menu a.active {',
'  background-color: #B6DCB6;',
'  color: black;',
'}',
'',
'.vertical-menu a.red {',
'  background-color: #F63C41;',
'  color: black;',
'}',
'',
'.vertical-menu a.yellow {',
'  background-color: #FCD12A;',
'  color: black;',
'}',
'',
'.vertical-menu a.green {',
'  background-color: #77DD77;',
'  color: black;',
'}',
'',
'',
'',
'',
'/*Horizontal menu new*/',
'.horizontal-menu {',
'  width: 500px;',
'  margin:10px;',
'	  font-family: sans-serif;',
'}',
'',
'.horizontal-menu li {',
'	display:block;',
'	width:140px;',
'	float:left;',
'	margin-left:2px;',
'	/*border:1px solid #000;*/',
'}',
'',
'.horizontal-menu a {',
'  border-radius: 5px;',
'  background-color: #D2E9E1;',
'  color: black;',
'  display: block;',
'  padding: 5px;',
'  text-decoration: none;',
'  margin-bottom: 5px;',
'}',
'',
'.horizontal-menu a:hover {',
'  background-color: #B6DCB6;',
'}',
'',
'.horizontal-menu a.active {',
'  background-color: #B6DCB6;',
'  color: black;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2688617134755063890)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2688617021491063889)
,p_plug_name=>'Diary Type Details'
,p_parent_plug_id=>wwv_flow_imp.id(2688617134755063890)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':APP_EDC_SCHEDULE_TITLE != ''Early Termination'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4137815913977610942)
,p_plug_name=>'CRF Section'
,p_parent_plug_id=>wwv_flow_imp.id(2688617134755063890)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>160
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number := 0;',
'v_cnt2 number:=0;',
'v_cnt3 number:=0;',
'v_cnt4 number:=0;',
'v_cnt5 number:=0;',
'v_status number;',
'cursor crf_section is ',
'',
'select b.seq_no,b.crf_id,c.disp_short_name,--c.crf_short_name,',
'          nvl(edc_util.get_section_status_multi_edc(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID,c.crf_id),''Open'') status,',
'          c.crf_page_no,a.patient_profile_id,(select count(*) from edc_crf_queries',
'                                               where page_id = c.crf_page_no',
'                                                 and qry_status in (''Open'',''Reopened'')',
'                                                 and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                                                 and study_id = :APP_EDC_STUDY_ID',
'                                                 and crf_id = b.crf_id) Open_queries',
'                                                 ,(select count(*) from edc_crf_queries',
'                                               where page_id = c.crf_page_no',
'                                                 and qry_status in (''Responded'')',
'                                                 and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                                                 and study_id = :APP_EDC_STUDY_ID',
'                                                 and crf_id = b.crf_id) Responded_queries',
'     from edc_patient_diary a, edc_patient_diary_pages b,edc_Crf_master c',
'    where a.schedule_id = b.schedule_id',
'      and b.crf_id = c.crf_id',
'      and a.patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'      and c.parent_page is null',
'      and c.crf_page_no in (100,509,510,818,819,820)',
'      and b.app_type = ''WEB''',
'      and b.crf_id not in (3,24)',
' UNION',
' select b.seq_no,b.crf_id,c.disp_short_name,--c.crf_short_name,',
'          nvl(edc_util.get_section_status_multi_edc(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID,c.crf_id),''Open'') status,',
'          c.crf_page_no,a.patient_profile_id,(select count(*) from edc_crf_queries',
'                                               where page_id = c.crf_page_no',
'                                                 and qry_status in (''Open'',''Reopened'')',
'                                                 and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                                                 and study_id = :APP_EDC_STUDY_ID',
'                                                 and crf_id = b.crf_id) Open_queries',
'                                                 ,(select count(*) from edc_crf_queries',
'                                               where page_id = c.crf_page_no',
'                                                 and qry_status in (''Responded'')',
'                                                 and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                                                 and study_id = :APP_EDC_STUDY_ID',
'                                                 and crf_id = b.crf_id) Responded_queries',
'     from edc_patient_diary a, edc_patient_diary_pages b,edc_Crf_master c',
'    where a.schedule_id = b.schedule_id',
'      and b.crf_id = c.crf_id',
'      and a.patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'      and c.parent_page is null',
'      and c.crf_page_no in (100)',
'      and c.crf_id = 3',
'      and 1 = (SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'      WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'      and b.app_type = ''WEB''',
' UNION',
' select b.seq_no,b.crf_id,c.disp_short_name,--c.crf_short_name,',
'          nvl(edc_util.get_section_status_multi_edc(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID,c.crf_id),''Open'') status,',
'          c.crf_page_no,a.patient_profile_id,(select count(*) from edc_crf_queries',
'                                               where page_id = c.crf_page_no',
'                                                 and qry_status in (''Open'',''Reopened'')',
'                                                 and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                                                 and study_id = :APP_EDC_STUDY_ID',
'                                                 and crf_id = b.crf_id) Open_queries',
'                                                 ,(select count(*) from edc_crf_queries',
'                                               where page_id = c.crf_page_no',
'                                                 and qry_status in (''Responded'')',
'                                                 and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                                                 and study_id = :APP_EDC_STUDY_ID',
'                                                 and crf_id = b.crf_id) Responded_queries',
'     from edc_patient_diary a, edc_patient_diary_pages b,edc_Crf_master c',
'    where a.schedule_id = b.schedule_id',
'      and b.crf_id = c.crf_id',
'      and a.patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'      and c.parent_page is null',
'      and c.crf_page_no in (100)',
'      and c.crf_id = 24',
'      and 1 = (SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'      WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'') and GENDER=''Female'' and RADIO3=''Yes'')',
'      and b.app_type = ''WEB''',
' UNION',
' select b.seq_no,b.crf_id,c.disp_short_name,--c.crf_short_name,',
'          nvl(edc_util.get_section_status_multi_edc(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID,c.crf_id),''Open'') status,',
'          c.crf_page_no,a.patient_profile_id,(select count(*) from edc_crf_queries',
'                                               where (page_id = c.crf_page_no or page_id = (select crf_page_no from edc_crf_master',
'                                                                                  where parent_page = (select crf_id from edc_crf_master',
'                                                                                                      where crf_page_no = c.crf_page_no',
'                                                                                                      AND STUDY_ID = :APP_EDC_STUDY_ID)',
'                                                                                  and study_id = :APP_EDC_STUDY_ID))',
'                                                 and qry_status in (''Open'',''Reopened'')',
'                                                 and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                                                 and study_id = :APP_EDC_STUDY_ID) Open_queries',
'                                                 ,(select count(*) from edc_crf_queries',
'                                               where (page_id = c.crf_page_no or page_id = (select crf_page_no from edc_crf_master',
'                                                                                  where parent_page = (select crf_id from edc_crf_master',
'                                                                                                      where crf_page_no = c.crf_page_no',
'                                                                                                      AND STUDY_ID = :APP_EDC_STUDY_ID)',
'                                                                                  and study_id = :APP_EDC_STUDY_ID))',
'                                                 and qry_status in (''Responded'')',
'                                                 and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                                                 and study_id = :APP_EDC_STUDY_ID) Responded_queries',
'     from edc_patient_diary a, edc_patient_diary_pages b,edc_Crf_master c',
'    where a.schedule_id = b.schedule_id',
'      and b.crf_id = c.crf_id',
'      and a.patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'      and c.parent_page is null',
'      and c.crf_page_no not in (100,509,510,818,819,820)',
'      and b.app_type = ''WEB'';',
'',
'begin',
'htp.prn(''<table style="height: 23px;" width="750" border="1">',
'<tbody>'');',
'',
'--if :APP_EDC_SCHEDULE_NAME != ''Unscheduled Visit'' then',
'  htp.prn(''<tr>',
'<td style="border: 1px solid black; background-color: #dddddd !important; text-align: center;"><B>Section</B></td>',
'<td style="border: 1px solid black; background-color: #dddddd !important; padding: 2px 2px 2px 5px !important;"><B>Status</B></td>',
'<td style="border: 1px solid black; background-color: #dddddd !important; padding: 2px 2px 2px 5px !important;"><B>Open<br>Queries</B></td>',
'<td style="border: 1px solid black; background-color: #dddddd !important; padding: 2px 2px 2px 5px !important;"><B>Responded<br>Queries</B></td>'');',
'  htp.prn(''',
'<td style="border: 1px solid black; background-color: #dddddd !important; text-align: center;"><B>Section</B></td>',
'<td style="border: 1px solid black; background-color: #dddddd !important; padding: 2px 2px 2px 5px !important;"><B>Status</B></td>',
'<td style="border: 1px solid black; background-color: #dddddd !important; padding: 2px 2px 2px 5px !important;"><B>Open<br>Queries</B></td>',
'<td style="border: 1px solid black; background-color: #dddddd !important; padding: 2px 2px 2px 5px !important;"><B>Responded<br>Queries</B></td></tr>'');',
'--end if;',
' for i in crf_section',
' loop',
' ',
'     select return_val into v_status',
'     from edc_crf_status',
'     where upper(display_val) = upper(i.status);',
' ',
'/*if v_cnt = 0 then',
'htp.p( ''<tr>',
'<td style="border: 1px solid black; text-align: center;"><a href="f?p=&APP_ID.:''||i.crf_page_no||'':&SESSION.::&DEBUG.:::">''||i.crf_short_name||''</a></td>',
'<td style="border: 1px solid black; padding: 2px 2px 2px 5px !important;">''||i.status||''</td>',
'<td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||i.Open_queries||''</td>',
'<td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||i.Responded_queries||''</td>'');',
'v_cnt := v_cnt +1;',
'elsif v_cnt = 1 then ',
'htp.prn(''<td style="border: 1px solid black; text-align: center;"><a href="f?p=&APP_ID.:''||i.crf_page_no||'':&SESSION.::&DEBUG.:::">''||i.crf_short_name||''</a></td>',
'<td style="border: 1px solid black; padding: 2px 2px 2px 5px !important;">''||i.status||''</td>',
'<td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||i.Open_queries||''</td>',
'<td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||i.Responded_queries||''</td></tr>'');',
'v_cnt := 0;',
'end if;*/',
'',
'if i.crf_id = 7 then',
'    select count(1) into v_cnt2 from edc_crf_queries where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and crf_id = 8 and qry_status in (''Open'',''Reopened'');',
'    select count(1) into v_cnt3 from edc_crf_queries where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and crf_id = 8 and qry_status in (''Responded'');',
'elsif i.crf_id = 9 then',
'    select count(1) into v_cnt2 from edc_crf_queries where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and crf_id = 10 and qry_status in (''Open'',''Reopened'');',
'    select count(1) into v_cnt3 from edc_crf_queries where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and crf_id = 10 and qry_status in (''Responded'');',
'elsif i.crf_id = 18 then',
'    select count(1) into v_cnt2 from edc_crf_queries where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and crf_id = 19 and qry_status in (''Open'',''Reopened'');',
'    select count(1) into v_cnt3 from edc_crf_queries where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and crf_id = 19 and qry_status in (''Responded'');',
'elsif i.crf_id = 21 then',
'    select count(1) into v_cnt2 from edc_crf_queries where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and crf_id = 22 and qry_status in (''Open'',''Reopened'');',
'    select count(1) into v_cnt3 from edc_crf_queries where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and crf_id = 22 and qry_status in (''Responded'');',
'end if;',
'v_cnt4 := i.Open_queries + v_cnt2;',
'v_cnt5 := i.Open_queries + v_cnt3;',
'',
'if v_cnt = 0 then',
'    if i.crf_page_no = 509 then',
'        htp.p( ''<tr>',
'        <td style="border: 1px solid black; text-align: center;"><a href="f?p=&APP_ID.:''||i.crf_page_no||'':&SESSION.::&DEBUG.::P509_CRF_ID,P509_SECTION_STATUS:''||i.crf_id||'',''||v_status||''">''||i.disp_short_name||''</a></td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important;">''||i.status||''</td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||v_cnt4||''</td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||v_cnt5||''</td>'');',
'    elsif i.crf_page_no not in (509) then',
'        htp.p( ''<tr>',
'        <td style="border: 1px solid black; text-align: center;"><a href="f?p=&APP_ID.:''||i.crf_page_no||'':&SESSION.::&DEBUG.::P100_CRF_ID,P100_SECTION_STATUS:''||i.crf_id||'',''||v_status||''">''||i.disp_short_name||''</a></td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important;">''||i.status||''</td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||i.Open_queries||''</td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||i.Responded_queries||''</td>'');',
'    end if;',
'v_cnt := v_cnt +1;',
'elsif v_cnt = 1 then ',
'    if i.crf_page_no = 509 then',
'        htp.prn(''<td style="border: 1px solid black; text-align: center;"><a href="f?p=&APP_ID.:''||i.crf_page_no||'':&SESSION.::&DEBUG.::P509_CRF_ID,P509_SECTION_STATUS:''||i.crf_id||'',''||v_status||''">''||i.disp_short_name||''</a></td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important;">''||i.status||''</td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||v_cnt4||''</td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||v_cnt5||''</td></tr>'');',
'    elsif i.crf_page_no not in (509) then',
'        htp.prn(''<td style="border: 1px solid black; text-align: center;"><a href="f?p=&APP_ID.:''||i.crf_page_no||'':&SESSION.::&DEBUG.::P100_CRF_ID,P100_SECTION_STATUS:''||i.crf_id||'',''||v_status||''">''||i.disp_short_name||''</a></td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important;">''||i.status||''</td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||i.Open_queries||''</td>',
'        <td style="border: 1px solid black; padding: 2px 2px 2px 5px !important; text-align: right;">''||i.Responded_queries||''</td></tr>'');',
'    end if;',
'v_cnt := 0;',
'end if;',
'',
' end loop;',
' htp.prn(''</tbody>',
'</table>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4313584077272285623)
,p_plug_name=>'Patient Diary List_vertical'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    --htp.p(''<ul style="list-style-type:circle;">'');',
'    htp.p(''<div class="vertical-menu">'');',
'    --htp.p(''<div class="topnav">'');',
'   ',
'    for i in (SELECT',
'        --''<b style="float:left">''|| DISP_SECTION_NAME ||''</b> '' label, ',
'        ''<b style="text-align:left-center; font-size:120%;">''|| DISP_SCHEDULE_NAME ||''</b> '' label, ',
'        --A.CRF_LINK||:APP_EDC_SCHEDULE_NAME||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_STUDY_SITE_ID target,',
'        ''f?p=&APP_ID.:45:&SESSION.::NO::APP_EDC_SCHEDULE_NAME,APP_PATIENT_PROFILE_ID,APP_EDC_STUDY_SITE_ID:''||A.SCHEDULE_NAME||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_STUDY_SITE_ID target, ',
'        --CASE WHEN b.PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        CASE WHEN A.SCHEDULE_NAME = :APP_EDC_SCHEDULE_NAME',
'        THEN ''YES'' ELSE ''NO'' END is_current,',
'        A.PAGE_NO,',
'        A.SCHEDULE_NAME',
'        FROM  EDC_PATIENT_SCHEDULE_PARAMS A ,EDC_PATIENT_DIARY B',
'        WHERE A.SCHEDULE_NAME = B.SCHEDULE_TITLE',
'        AND B.PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID',
'        AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'        ORDER BY A.SCHEDULE_ID) loop',
'    ',
'        --htp.p(''<a href="''||i.target||''"><li>''||i.label||''</li></a>'');',
'        if i.SCHEDULE_NAME = :APP_EDC_SCHEDULE_NAME then',
'            htp.p(''<a href="''||i.target||''" class="active">''||i.label||''</a>'');',
'        else',
'            htp.p(''<a href="''||i.target||''">''||i.label||''</a>'');',
'        end if;',
'    ',
'    end loop;',
'    ',
'    --htp.p(''</ul>'');',
'    htp.p(''</div>'');',
'    ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11050955181528860019)
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
 p_id=>wwv_flow_imp.id(2689208203741609971)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2688617021491063889)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2688617160955063891)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2688617021491063889)
,p_button_name=>'UPDATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update'
,p_button_alignment=>'LEFT-CENTER'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare    ',
'    v_status number;',
'begin',
'    ',
'    select section_status into v_status',
'    from edc_patient_diary',
'    where patient_profile_id = :APP_PATIENT_PROFILE_ID',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    if v_status > 4.5 and :APP_EDC_ROLE_ID IN (13,16) then',
'        return false;',
'    elsif :APP_EDC_ROLE_ID IN (13,16) then',
'        return true;',
'    end if;',
'    ',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_cattributes=>'style="margin-right:50px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_button_comment=>':APP_EDC_ROLE_ID IN (13,16)'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046624287795319296)
,p_button_sequence=>40
,p_button_name=>'UNLOCK'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186787997407898)
,p_button_image_alt=>'UnLock CRF'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:unlock_crf();'
,p_button_condition=>'select 1 from EDC_PATIENT_VISIT where crf_status=6 and PATIENT_VISIT_ID=:P45_PATIENT_VISIT_ID and :APP_EDC_USER_TYPE = 3'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2688616838486063887)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4137815913977610942)
,p_button_name=>'CRA_REVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CRA Review'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CNT NUMBER;',
'  V_CNT1 NUMBER := 0;',
'  V_CNT2 NUMBER;',
'  v_Section_status number;',
'BEGIN',
'  ',
'  --count of number of tables present in the schedule--',
'  select count(1) into v_cnt from (select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id = b.schedule_id',
'  and b.crf_id = c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type = ''WEB''',
'  and c.crf_id not in (3,24)',
'  union all',
'  select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id = b.schedule_id',
'  and b.crf_id = c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type = ''WEB''',
'  and c.crf_id = 3',
'  and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'          WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'          WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'  union all',
'  select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id = b.schedule_id',
'  and b.crf_id = c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type = ''WEB''',
'  and c.crf_id = 24',
'  and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'          WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'          WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'          and GENDER=''Female'' and RADIO3=''Yes''));',
'  ---count ends-------------',
'  ',
'  for i in (select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id = b.schedule_id',
'  and b.crf_id = c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type = ''WEB''',
'  and c.crf_id not in (3,24)',
'  union all',
'  select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id = b.schedule_id',
'  and b.crf_id = c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type = ''WEB''',
'  and c.crf_id = 3',
'  and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'          WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'          WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'  union all',
'  select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id = b.schedule_id',
'  and b.crf_id = c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type = ''WEB''',
'  and c.crf_id = 24',
'  and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'          WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'          WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'          and GENDER=''Female'' and RADIO3=''Yes'')) loop',
'          ',
'        execute immediate ''select count(1) from ''||i.crf_table_name||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID',
'        into v_cnt2;',
'        ',
'        if v_cnt2 > 0 then',
'            execute immediate ''select section_status from ''||i.crf_table_name||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID',
'            into v_section_status;',
'        ',
'            if v_section_status = 4.5 then        --data submitted by crc',
'                v_cnt1 := v_cnt1 + 1;',
'            end if;',
'        ',
'        end if;',
'        ',
'  end loop;',
'',
'  if v_cnt = v_cnt1 and :APP_EDC_ROLE_ID IN (13,27,17) then',
'      return true;',
'  else',
'      return false;',
'  end if;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2689818870554220863)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4137815913977610942)
,p_button_name=>'PI_SIGNOFF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'PI SIgnoff'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CNT NUMBER;',
'  V_CNT1 NUMBER := 0;',
'  V_CNT2 NUMBER;',
'  v_Section_status number;',
'  v_diary_type varchar2(20);',
'BEGIN',
'',
'  select diary_type into v_diary_type',
'  from edc_patient_diary',
'  where patient_diary_id=:APP_EDC_PATIENT_DIARY_ID;',
'  ',
'  --count of number of tables present in the schedule--',
'  select count(1) into v_cnt from (select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id=b.schedule_id',
'  and b.crf_id=c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id=:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type=''WEB''',
'  and c.crf_id not in (3,24)',
'  union all',
'  select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id=b.schedule_id',
'  and b.crf_id=c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id=:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type=''WEB''',
'  and c.crf_id=3',
'  and 1=(SELECT count(1) FROM IWRS_CRF_DM',
'          WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'          WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Randomization'') and RADIO4=''Yes'')',
'  union all',
'  select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id=b.schedule_id',
'  and b.crf_id=c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id=:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type=''WEB''',
'  and c.crf_id=24',
'  and 1=(SELECT count(1) FROM IWRS_CRF_DM',
'          WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'          WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Screening'')',
'          and GENDER=''Female'' and RADIO3=''Yes''));',
'  ---count ends-------------',
'  ',
'  for i in (select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id=b.schedule_id',
'  and b.crf_id=c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and b.app_type=''WEB''',
'  and c.crf_id not in (3,24)',
'  union all',
'  select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id=b.schedule_id',
'  and b.crf_id=c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id=:APP_EDC_PATIENT_DIARY_ID and b.app_type=''WEB''',
'  and c.crf_id=3',
'  and 1=(SELECT count(1) FROM IWRS_CRF_DM',
'          WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'          WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Randomization'') and RADIO4=''Yes'')',
'  union all',
'  select c.crf_table_name ',
'  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'  where a.schedule_id=b.schedule_id',
'  and b.crf_id=c.crf_id',
'  and c.parent_page is null',
'  and a.patient_diary_id=:APP_EDC_PATIENT_DIARY_ID',
'  and b.app_type=''WEB''',
'  and c.crf_id=24',
'  and 1=(SELECT count(1) FROM IWRS_CRF_DM',
'          WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'          WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Screening'')',
'          and GENDER=''Female'' and RADIO3=''Yes'')) loop',
'          ',
'        execute immediate ''select count(1) from ''||i.crf_table_name||'' where patient_diary_id=''||:APP_EDC_PATIENT_DIARY_ID',
'        into v_cnt2;',
'        ',
'        if v_cnt2 > 0 then',
'            execute immediate ''select section_status from ''||i.crf_table_name||'' where patient_diary_id=''||:APP_EDC_PATIENT_DIARY_ID',
'            into v_section_status;',
'        ',
'            if v_diary_type=''Electronic'' and v_section_status in (4.5,6) then        --data submitted by crc or cra reviewed',
'                v_cnt1 := v_cnt1 + 1;',
'            elsif v_diary_type=''Paper'' and v_section_status=6 then',
'                v_cnt1 := v_cnt1 + 1;',
'            end if;',
'        ',
'        end if;',
'        ',
'  end loop;',
'',
'  if v_cnt=v_cnt1 and :APP_EDC_ROLE_ID IN (13,15) then',
'      return true;',
'  else',
'      return false;',
'  end if;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11046626161667319299)
,p_branch_name=>'Go To Page 45'
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_PATIENT_VISIT_ID:&P45_PATIENT_VISIT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 06-DEC-2010 01:32 by KARTIK.PATEL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688616890129063888)
,p_name=>'P45_DIARY_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2688617021491063889)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_diary_type varchar2(50);',
'begin',
'    ',
'    select diary_type into v_diary_type',
'    from edc_patient_diary',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    return v_diary_type;',
'',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Diary Type</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Paper;Paper,Electronic;Electronic'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2689817663262220851)
,p_name=>'P45_DIARY_TYPE_CHANGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2688617021491063889)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Diary Type</b>'
,p_placeholder=>'Reason for Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_diary_type varchar2(50);',
'begin',
'    ',
'    select diary_type into v_diary_type',
'    from edc_patient_diary',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    return v_diary_type;',
'',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2689818082811220855)
,p_name=>'P45_SCHEDULE_QRY_CNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2688617021491063889)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'',
'    select count(1) into v_cnt',
'    from edc_crf_queries',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and qry_status in (''Open'',''Reopened'',''Responded'');',
'    ',
'    if v_cnt > 0 then',
'        return v_cnt;',
'    else',
'        return 0;',
'    end if;',
'',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046623667638319292)
,p_name=>'P45_PATIENT_VISIT_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Patient Visit Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11046624557107319297)
,p_computation_sequence=>10
,p_computation_item=>'APP_EDC_PATIENT_VISIT_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P45_PATIENT_VISIT_ID'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(10559397381737823577)
,p_computation_sequence=>10
,p_computation_item=>'APP_EDC_VISIT_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VISIT_TITLE from edc_patient_visit',
' where patient_Visit_id = :P45_PATIENT_VISIT_ID'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(10570961319790035799)
,p_computation_sequence=>10
,p_computation_item=>'MINIMUM_DATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :APP_EDC_VISIT_NAME = ''Screening Visit'' THEN',
'    RETURN :APP_ICF_DATE;',
'  ELSE',
'    RETURN :APP_EDC_VISIT_DATE;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(10570964517416062131)
,p_computation_sequence=>10
,p_computation_item=>'MAXIMUM_DATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_VISIT_DATE VARCHAR2(15);',
'BEGIN',
'  if :APP_EDC_VISIT_NAME <> ''Visit 8'' then',
'',
'     SELECT TO_CHAR(ACTUAL_DATE - 1,''DD-MON-YYYY'') ',
'       INTO V_VISIT_DATE',
'       FROM EDC_PATIENT_VISIT',
'      WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'        AND VISIT_NUMBER = (SELECT VISIT_NUMBER + 1 FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID);',
'',
'  ELSE',
'',
'    RETURN TO_CHAR(SYSDATE,''DD-MON-YYYY'');',
'',
'  END IF;',
'  RETURN V_VISIT_DATE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN TO_CHAR(SYSDATE,''DD-MON-YYYY'');',
'END;'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11046624770839319298)
,p_computation_sequence=>10
,p_computation_item=>'APP_EDC_VISIT_DATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT TO_DATE(ACTUAL_DATE,''DD-MON-YYYY'') FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :P45_PATIENT_VISIT_ID;'
,p_compute_when=>'P45_PATIENT_VISIT_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11046624976918319298)
,p_computation_sequence=>10
,p_computation_item=>'APP_EDC_SCREENING_DATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'Select Screening_Date From Edc_Patient_Profile Where Patient_Profile_Id = :P37_Patient_Profile_Id'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11046625174950319298)
,p_computation_sequence=>10
,p_computation_item=>'APP_EDC_STUDY_SITE_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT STUDY_SITE_ID FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID'
,p_compute_when=>'P37_PATIENT_PROFILE_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(4137816000539610943)
,p_computation_sequence=>30
,p_computation_item=>'APP_EDC_PATIENT_DIARY_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT PATIENT_DIARY_ID FROM EDC_PATIENT_DIARY WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND SCHEDULE_TITLE = :APP_EDC_SCHEDULE_NAME'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2688616621502063885)
,p_computation_sequence=>40
,p_computation_item=>'APP_EDC_SCHEDULE_TITLE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISP_SCHEDULE_NAME FROM EDC_PATIENT_SCHEDULE_PARAMS',
'WHERE SCHEDULE_NAME = :APP_EDC_SCHEDULE_NAME'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11046625359003319298)
,p_validation_name=>'Complete CRF'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_ret number;',
'begin',
'  v_ret := EDC_CRF_SUBMIT_BPL_RT_01_PKG.is_scr_crf_complete(:P45_PATIENT_VISIT_ID);',
'  if v_ret = 0 then',
'    return false;',
'  else',
'    return true;',
'  end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Incomplete CRF !!! Please fill all data in CRF and then go for Submit for monitoring.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2689837871015379602)
,p_validation_name=>'P45_DIARY_TYPE_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P45_DIARY_TYPE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Diary Type" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(30);',
'BEGIN',
'',
'    SELECT DIARY_TYPE INTO a FROM EDC_PATIENT_DIARY WHERE PATIENT_DIARY_ID=:APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    IF a IS NULL AND LENGTH(:P45_DIARY_TYPE)>0 THEN',
'      RETURN TRUE;',
'    elsif a IS NULL AND LENGTH(:P45_DIARY_TYPE) IS NULL THEN',
'      RETURN FALSE;',
'    elsif a IS NOT NULL AND a = :P45_DIARY_TYPE THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(2688617160955063891)
,p_associated_item=>wwv_flow_imp.id(2689817663262220851)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11061984982839229728)
,p_name=>'auto_close'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11061985271636229728)
,p_event_id=>wwv_flow_imp.id(11061984982839229728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11061985380199238364)
,p_name=>'auto refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11061985663021238364)
,p_event_id=>wwv_flow_imp.id(11061985380199238364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload(true);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688617414133063893)
,p_name=>'Alert on Update'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2688617160955063891)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688617456115063894)
,p_event_id=>wwv_flow_imp.id(2688617414133063893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P45_DIARY_TYPE");',
'if (a == ''Electronic'')',
'    {',
'        if (confirm("Selecting ''Electronic'' data entry type means that the Subject will now enter data through the Mobile Application. Please also update the diary type in ePRO credentials in subject matrix and click on resend credentials.")) {',
'              apex.submit("UPDATE");',
'            }',
'    }',
'else if (a == ''Paper'')',
'    {',
'        if (confirm("Selecting ''Paper'' diary type means that now the CRC will transcribe/enter data into the Web Application.")) {',
'              apex.submit("UPDATE");',
'            }',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2689412560414691089)
,p_name=>'Audit'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2689208203741609971)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689412950714691106)
,p_event_id=>wwv_flow_imp.id(2689412560414691089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_DIARY_ID,P141_PK_ID:&APP_PAGE_ID.,&APP_EDC_PATIENT_DIARY_ID.,&APP_EDC_PATIENT_DIARY_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2689831099380341613)
,p_name=>'P45_DIARY_TYPE_CHANGE HIDE'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'    SELECT DIARY_TYPE INTO a FROM EDC_PATIENT_DIARY WHERE PATIENT_DIARY_ID=:APP_EDC_PATIENT_DIARY_ID;',
'    INSERT INTO TEMP(V_TMP,VALUE1) VALUES(''a'',a); commit;',
'    INSERT INTO TEMP(V_TMP,VALUE1) VALUES(''P45_DIARY_TYPE'',:P45_DIARY_TYPE); commit;',
'     ',
'    IF a IS NULL AND LENGTH(:P45_DIARY_TYPE)>0 THEN',
'      RETURN false;',
'    elsif a IS NULL AND LENGTH(:P45_DIARY_TYPE) IS NULL THEN',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P45_DIARY_TYPE THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689831529452341629)
,p_event_id=>wwv_flow_imp.id(2689831099380341613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_DIARY_TYPE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689817955976220854)
,p_event_id=>wwv_flow_imp.id(2689831099380341613)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_DIARY_TYPE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2689832619554345291)
,p_name=>'P45_DIARY_TYPE CHANGE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_DIARY_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689832970215345292)
,p_event_id=>wwv_flow_imp.id(2689832619554345291)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_DIARY_TYPE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2689818224356220856)
,p_name=>'CRA Review Click'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2688616838486063887)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689818338260220857)
,p_event_id=>wwv_flow_imp.id(2689818224356220856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P45_SCHEDULE_QRY_CNT");',
'',
'if ( a > 0)',
'    {',
'        alert("Please close all queries and then Review.");',
'    }',
'else',
'    {',
'        apex.submit(''CRA_REVIEW'');',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2689819297179220867)
,p_name=>'PI_SIGNOFF_MODAL_OPEN'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2689818870554220863)
,p_condition_element=>'P45_SCHEDULE_QRY_CNT'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689819352351220868)
,p_event_id=>wwv_flow_imp.id(2689819297179220867)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM,P91_PAGE_ID:&APP_USER_NAME.,45'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689820088301220875)
,p_event_id=>wwv_flow_imp.id(2689819297179220867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert("Please get all queries closed by the CRA and then Sign off.");'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046625482853319298)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Locked'
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
'*/',
'for i in (select crf_table_name from edc_crf_master a,edc_crf_pages b,edc_patient_visit c',
'           where a.crf_id = b.crf_id',
'             and b.param_id = c.param_id',
'             and c.patient_visit_id = :APP_EDC_PATIENT_VISIT_ID)',
' LOOP',
' ',
'     EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                      '' SET SECTION_STATUS = 10 WHERE PATIENT_vISIT_ID = ''|| :APP_EDC_PATIENT_VISIT_ID;',
'                      ',
' END LOOP;',
'execute immediate ''update edc_patient_visit set crf_status = 10 where patient_visit_id = ''|| :APP_EDC_PATIENT_VISIT_ID ;',
'       commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11046625482853319298
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2688617315373063892)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Diary Type'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    update edc_patient_diary',
'    set diary_type = :P45_DIARY_TYPE',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    commit;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2688617160955063891)
,p_internal_uid=>2688617315373063892
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2689209568939609985)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRA Review Schedule Level'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_res boolean;',
' l_sql varchar2(32767);',
' v_pk_id varchar2(20);',
' v_pk_value number;',
' v_cnt number;',
' v_section_status number;',
' v_crf_status number;',
' TYPE EmpCurTyp IS REF CURSOR;',
' emp_cv   EmpCurTyp;',
' v_cur_txt1 varchar2(2000);',
'begin',
'    ',
'    for i in (select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'              from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'              where a.schedule_id = b.schedule_id',
'              and b.crf_id = c.crf_id',
'              --and c.parent_page is null',
'              and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'              and b.app_type = ''WEB''',
'              and c.crf_id not in (3,24)',
'              union all',
'              select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'              from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'              where a.schedule_id = b.schedule_id',
'              and b.crf_id = c.crf_id',
'              and c.parent_page is null',
'              and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'              and b.app_type = ''WEB''',
'              and c.crf_id = 3',
'              and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                      WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                      WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'              union all',
'              select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'              from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'              where a.schedule_id = b.schedule_id',
'              and b.crf_id = c.crf_id',
'              and c.parent_page is null',
'              and a.patient_diary_id =:APP_EDC_PATIENT_DIARY_ID',
'              and b.app_type = ''WEB''',
'              and c.crf_id = 24',
'              and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                      WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                      WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'                      and GENDER=''Female'' and RADIO3=''Yes'')',
'              ) loop',
'              ',
'         :APP_EDC_PATIENT_DIARY_ID:= I.PATIENT_DIARY_ID;',
'                          ',
'         --if i.crf_id not in (94,95,197,198,241,242) then        --static parent child pages',
'         if i.crf_page_no in (100,509) then        --dynamic page numbers',
'         ',
'             EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                AND cons.constraint_name = cols.constraint_name',
'                                AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'             EXECUTE IMMEDIATE ''SELECT ''||V_PK_ID||'' FROM ''||I.CRF_TABLE_NAME||',
'             '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID INTO V_PK_VALUE;',
'             ',
'             EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'             '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID INTO V_CRF_STATUS;',
'             ',
'             if V_CRF_STATUS = 4.5 then',
'',
'                 l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                          USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                          values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                          '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''4.5'''',''''6'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                 execute immediate l_sql;',
'                 ',
'             end if;',
'            ',
'         elsif i.crf_page_no in (510) then        --dynamic visit child page number',
'         ',
'             EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                AND cons.constraint_name = cols.constraint_name',
'                                AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'             v_cur_txt1 := ''select ''||V_PK_ID||'' from ''||I.CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'             ',
'             open emp_cv for v_cur_txt1;',
'             loop',
'             fetch emp_cv into V_PK_VALUE;',
'             exit when emp_cv%NOTFOUND;',
'',
'                 EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                 '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||V_PK_ID||'' = ''||V_PK_VALUE INTO V_CRF_STATUS;',
'',
'                 if V_CRF_STATUS = 4.5 then',
'',
'                     l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                              USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                              values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                              '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''4.5'''',''''6'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                     execute immediate l_sql;',
'',
'                 end if;',
'                ',
'             end loop;',
'             ',
'             close emp_cv;',
'             ',
'         end if;             ',
'         commit;',
'         ',
'         if i.crf_page_no in (100,509,510) then',
'             EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                          '' SET SECTION_STATUS = 6,',
'                          UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'                          WHERE section_Status = 4.5 and PATIENT_DIARY_ID = ''|| :APP_EDC_PATIENT_DIARY_ID;',
'         else',
'             EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                          '' SET SECTION_STATUS = 6',
'                          WHERE section_Status = 4.5 and PATIENT_DIARY_ID = ''|| :APP_EDC_PATIENT_DIARY_ID;',
'         end if;',
'         commit;',
'',
'     end loop;',
'     ',
'     commit;',
'     ',
'     update edc_patient_diary',
'     set section_status = 6',
'     where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'     and section_status = 4.5;',
'    ',
'     COMMIT;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2688616838486063887)
,p_internal_uid=>2689209568939609985
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046625886419319298)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update edc_patient_visit_det_pages'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'UPDATE EDC_PATIENT_VISIT_DET_PAGES',
'SET IS_CURRENT = 1',
'WHERE PAGE_NO = :APP_PAGE_ID;',
'',
'UPDATE EDC_PATIENT_VISIT_DET_PAGES',
'SET IS_CURRENT = '''' WHERE PAGE_NO <> :APP_PAGE_ID;',
'',
'COMMIT; ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11046625886419319298
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2686589780216622772)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set CRF_ID = null'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   ',
'    :P509_CRF_ID := NULL;',
'    :P510_CRF_ID := NULL;',
'    :P100_CRF_ID := NULL;',
'    :P100_CRF_TABLE_PK_VAL := NULL;',
'    :P509_CRF_TABLE_PK_VAL := NULL;',
'    :P510_CRF_TABLE_PK_VAL := NULL;',
'    ',
'',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2686589780216622772
);
wwv_flow_imp.component_end;
end;
/
