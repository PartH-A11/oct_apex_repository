prompt --application/pages/page_00210
begin
--   Manifest
--     PAGE: 00210
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
 p_id=>210
,p_tab_set=>'TS1'
,p_name=>'Subject Diary Matrix'
,p_step_title=>'Subject Diary Matrix'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function($){$.fn.htmldbDscroll=function(opt){',
' opt=$.extend({',
'  width:1000,',
'  height:550,',
'  freezeColumns:1,',
'  freezeRows:1,',
'  addCellWidth:60,',
'  addRowHeight:2,',
'  addTblWidth:8,',
'  scrollWidth:18',
' },opt);',
'',
' $(''.report-standard'').css(''width'',''400px'');',
' if(opt.freezeColumns<1&&opt.freezeRows<1){',
'  return this;',
' }',
'',
' return this.each(function(i){',
'',
'  var lId=this.id.substr(6)',
'  /* styles */',
'  $("#lh"+lId).css({"right":"0","bottom":"0"}).parent().css({"right":"0","bottom":"0"});',
'  $("#rh"+lId).css({"overflow-x":"hidden","width":opt.width-opt.scrollWidth,"left":"0","bottom":"0"}).parent().css({"bottom":"0"});',
'  $("#lb"+lId).css({"overflow-y":"hidden","height":opt.height-opt.scrollWidth,"right":"0","top":"0"}).parent().css({"right":"0","top":"0","vertical-align":"top"});',
'  //$("#rb"+lId).css({"overflow":"scroll","width":opt.width,"height":opt.height});',
'  $("#rb"+lId).css({"overflow-y":"hidden","width":opt.width,"height":opt.height});',
'',
'  /* report cell width */',
'  if(opt.freezeRows>0){',
'   $("#rb"+lId).find("tr:first,tr:eq("+opt.freezeRows+")").children().each(function(){    ',
'    var w=$(this).width()+opt.addCellWidth;',
'    $(this).width(w);',
'   });',
'  }else{',
'   $("#rb"+lId).find("tr:first").children().each(function(){',
'    var w=$(this).width()+opt.addCellWidth;',
'    $(this).width(w);',
'   });',
'  }',
'',
'  /* row process */',
'  if(opt.freezeColumns>0){',
'   $("#rb"+lId).find("tr").each(function(j){',
'    var t1=$(this);',
'    /* set row height and copy row */',
'    var h=t1.height()+opt.addRowHeight;',
'    t1.height(h);',
'    var t2=t1.clone().empty().append(t1.children(":lt("+opt.freezeColumns+")"));',
'    if(j>(opt.freezeRows-1)){',
'     $("#lb"+lId).children().append(t2);',
'    }else{',
'     $("#rh"+lId).children().append(t1);',
'     $("#lh"+lId).children().append(t2);',
'    }',
'   });',
'  }else{',
'   for(var j=0;j<=(opt.freezeRows-1);j++){',
'    $("#rh"+lId).children().append($("#rb"+lId).find("tr:eq("+j+")"));',
'   }',
'  }',
'',
'  /* table width */',
'  if(opt.freezeColumns>0){',
'   if($("#lh"+lId).children().width()>$("#lb"+lId).children().width()){',
'    var w=$("#lh"+lId).children().width();',
'    $("#lb"+lId).children().width(w);',
'    $("#lh"+lId).children().width(w);',
'   }else{',
'    var w=$("#lb"+lId).children().width();',
'    $("#lh"+lId).children().width(w);',
'    $("#lb"+lId).children().width(w);',
'   }',
'  }',
'  if($("#rh"+lId).children().width()>$("#rb"+lId).children().width()){',
'   var h=$("#rh"+lId).children().width()+opt.addTblWidth;',
'   $("#rb"+lId).children().width(h);',
'   $("#rh"+lId).children().width(h);',
'  }else{',
'   var h=$("#lb"+lId).children().width()+opt.addTblWidth;',
'   $("#rh"+lId).children().width(h);',
'   $("#rb"+lId).children().width(h);',
'  }',
'',
'  $("#rh"+lId).children().css({"table-layout":"fixed"});',
'  $("#rb"+lId).children().css({"table-layout":"fixed"});',
'',
'  /* scroll */',
'  $("#rb"+lId).scroll(function(){',
'   $("#rh"+lId).scrollLeft(this.scrollLeft);',
'   $("#lb"+lId).scrollTop(this.scrollTop);',
'  });',
' });',
'',
'}})(jQuery);'))
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12321084360121335232)
,p_name=>'Subject Diary Matrix'
,p_region_name=>'sdMatrix'
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
'declare',
'    V_BASE_URL varchar2(4000):=''&EDC_IMAGE_PATH.'';',
'    v_ret varchar2(32760);',
'    v_ret_add_visit varchar2(32760);',
'    V_ADD_LINK_1 VARCHAR2(4000);',
'    V_ADD_LINK_2 VARCHAR2(4000);',
'    v number := 1;',
'begin',
'',
'    v_ret := ''select pp.status,',
'     ''''<a href="f?p=&APP_ID.:110:&SESSION.::&DEBUG.::P110_PATIENT_PROFILE_ID:''''||pp.PATIENT_PROFILE_ID||''''">'''' || pp.SCRNO|| ''''</a>'''' as "Subject #",',
'     upper(PTINTL) as "PTINTL", GET_PTNT_DIARY_TYPE(pp.study_site_id,661,pp.patient_profile_id) as "DIARY_TYPE", decode(pp.USER_LANG,''''EN'''',''''English'''',''''ES'''',''''Spanish'''',''''PT'''',''''Portuguese'''',''''English'''') "USER_LANG"'';',
'',
'    v_ret_add_visit:= ''select decode(status,1,''''Screened'''',2,''''Screen Failure'''',3,''''Randomized'''',4,''''Withdrawn/Discontinued'''',5,''''Completed'''',6,''''Lost To Follow up'''',7,''''Unblinded'''') "Status","Subject #","PTINTL", "DIARY_TYPE","USER_LANG"'';',
'',
'    for c1 in (select SCHEDULE_NAME,crf_link,crf_link1, DISP_SEQ from EDC_PATIENT_SCHEDULE_PARAMS where study_id=:APP_EDC_STUDY_ID order by DISP_SEQ) ',
'    loop',
'        v_ret_add_visit:= v_ret_add_visit || '' , "'' || c1.disp_Seq||''_''||v|| ''"'';',
'',
'        --v_ret := v_ret  || '',  max(EDC_CRF_SUBMIT_BPL_RT_01_PKG.GET_CRF_LINK_IMAGE_SCHEDULE(P_PATIENT_PROFILE_ID=>pp.PATIENT_PROFILE_ID,P_PATIENT_DIARY_ID => pv.PATIENT_DIARY_ID, P_SCHEDULE_NAME => '''''' || c1.SCHEDULE_NAME || '''''', P_CRF_LINK => '''''' ',
'        v_ret := v_ret  || '',  EDC_CRF_SUBMIT_BPL_RT_01_PKG.GET_CRF_LINK_IMAGE_SCHEDULE(P_PATIENT_PROFILE_ID=>pp.PATIENT_PROFILE_ID, P_SCHEDULE_NAME => '''''' || c1.SCHEDULE_NAME || '''''', P_CRF_LINK => '''''' ',
'        || c1.crf_link || '''''', P_CRF_LINK1 => ''''''||c1.crf_link1||'''''', P_BASE_URL => '''''' || V_BASE_URL || '''''') as "''||c1.disp_seq||''_''||v||''"'';',
'',
'        v := v + 1;',
'    end loop;',
'',
'    V_RET := V_RET ||'' , pp.PATIENT_PROFILE_ID from edc_patient_profile pp, edc_patient_diary pv, edc_study_sites s, edc_patient_schedule_params sp',
'    where s.study_id=''||:APP_EDC_STUDY_ID||'' and pp.PATIENT_PROFILE_ID = pv.PATIENT_PROFILE_ID ',
'    and s.study_site_id=pp.study_site_id',
'    and sp.schedule_name = pv.schedule_title',
'    --AND UPPER(PTINTL) = UPPER(NVL(:P210_PATIENT_INITIAL,PTINTL))',
'    --AND NVL(UPPER(RANDOMNO),0) = NVL(UPPER(NVL(:P210_RANDOMNO,RANDOMNO)),0)',
'    and pp.study_Site_id = :P210_SITES',
'    AND ((SCRNO = UPPER(TRIM(:P210_SCREENING_NUMBER)) and :P210_SEARCH_BY = 1) OR (:P210_SEARCH_BY = 2 AND ',
'    scrno between substr(:P210_SEARCH_BY_RANGE,1,instr(:P210_SEARCH_BY_RANGE,'''' '''')-1) ',
'    and substr(:P210_SEARCH_BY_RANGE,instr(:P210_SEARCH_BY_RANGE,'''' '''',1,2)+1)',
'    )',
'  /*(',
'    (:P210_SEARCH_BY_RANGE=1   and to_number(substr(scrno,length(scrno)-2)) between 001 and 010 ) or',
'    (:P210_SEARCH_BY_RANGE=2   and to_number(substr(scrno,length(scrno)-2)) between 011 and 020 ) or',
'    (:P210_SEARCH_BY_RANGE=3   and to_number(substr(scrno,length(scrno)-2)) between 021 and 030 ) or',
'    (:P210_SEARCH_BY_RANGE=4   and to_number(substr(scrno,length(scrno)-2)) between 031 and 040 ) or',
'    (:P210_SEARCH_BY_RANGE=5   and to_number(substr(scrno,length(scrno)-2)) between 041 and 050 ) or',
'    (:P210_SEARCH_BY_RANGE=6   and to_number(substr(scrno,length(scrno)-2)) between 051 and 060 ) or',
'    (:P210_SEARCH_BY_RANGE=7   and to_number(substr(scrno,length(scrno)-2)) between 061 and 070 ) or',
'    (:P210_SEARCH_BY_RANGE=8   and to_number(substr(scrno,length(scrno)-2)) between 071 and 080 ) or',
'    (:P210_SEARCH_BY_RANGE=9   and to_number(substr(scrno,length(scrno)-2)) between 081 and 090 ) or',
'    (:P210_SEARCH_BY_RANGE=10   and to_number(substr(scrno,length(scrno)-2)) between 091 and 100 ) or',
'    (:P210_SEARCH_BY_RANGE=11   and to_number(substr(scrno,length(scrno)-2)) between 101 and 110 ) or',
'    (:P210_SEARCH_BY_RANGE=12   and to_number(substr(scrno,length(scrno)-2)) between 111 and 120 ) or',
'    (:P210_SEARCH_BY_RANGE=13   and to_number(substr(scrno,length(scrno)-2)) between 121 and 130 ) or',
'    (:P210_SEARCH_BY_RANGE=14   and to_number(substr(scrno,length(scrno)-2)) between 131 and 140 ) or',
'    (:P210_SEARCH_BY_RANGE=15   and to_number(substr(scrno,length(scrno)-2)) between 141 and 150 )  ',
'  ))*/',
'  )',
'    --AND PP.STATUS = NVL(:P210_STATUS,PP.STATUS)',
'    AND PV.SECTION_STATUS NOT IN (12)',
'    ',
'    group by pp.status,pp.SCRNO,upper(PTINTL),GET_PTNT_DIARY_TYPE(pp.study_site_id,661,pp.patient_profile_id), pp.PATIENT_PROFILE_ID,pp.USER_LANG order by to_number(SUBSTR(scrno,LENGTH(scrno)-2))'';',
'',
'    v_ret_add_visit:= v_ret_add_visit || '' from ( '' || v_ret || '' ) '';',
'',
'    RETURN V_RET_ADD_VISIT;',
'    --dbms_output.put_line(V_RET_ADD_VISIT);',
'end;'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P210_SITES IS NOT NULL AND :P210_SEARCH_BY IS NOT NULL ',
'AND ((:P210_SEARCH_BY = 1 AND :P210_SCREENING_NUMBER IS NOT NULL) OR (:P210_SEARCH_BY = 2 AND :P210_SEARCH_BY_RANGE IS NOT NULL))'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(3553782765890982656)
,p_plug_query_max_columns=>60
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_report_title varchar2(4000);',
'BEGIN',
' v_report_title:=''Status''||'':''||''Screening Number''||'':''||''Subject Initials''||'':''||''Diary Type''||'':''||''Language'';',
' for c1 in (select disp_schedule_name from EDC_PATIENT_SCHEDULE_PARAMS where study_id=:APP_EDC_STUDY_ID order by DISP_SEQ)',
' loop',
'     v_report_title:=v_report_title || '':'' || c1.disp_schedule_name;',
' end loop;',
' RETURN V_REPORT_TITLE;',
'END;',
' '))
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
''))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172641450042976898)
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
 p_id=>wwv_flow_imp.id(5172641828526976898)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172642288070976898)
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
 p_id=>wwv_flow_imp.id(5172642671682976897)
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
 p_id=>wwv_flow_imp.id(5172643088790976897)
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
 p_id=>wwv_flow_imp.id(5172643428718976897)
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
 p_id=>wwv_flow_imp.id(5172643881896976897)
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
 p_id=>wwv_flow_imp.id(5172644245484976896)
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
 p_id=>wwv_flow_imp.id(5172644659907976896)
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
 p_id=>wwv_flow_imp.id(5172645024170976896)
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
 p_id=>wwv_flow_imp.id(5172645446861976896)
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
 p_id=>wwv_flow_imp.id(5172645903173976896)
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
 p_id=>wwv_flow_imp.id(5172646247796976896)
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
 p_id=>wwv_flow_imp.id(5172646690808976896)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172647027740976895)
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
 p_id=>wwv_flow_imp.id(5172647472617976895)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172647866841976895)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172648286204976895)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172648673077976895)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172649081126976895)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172649503891976895)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172649865649976894)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172650295140976894)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172650657656976894)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172651073110976894)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172651441296976893)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172651819913976893)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172652308067976893)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172652694379976893)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172653020482976893)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172653456440976893)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172653884502976892)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172654270560976892)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172654660412976892)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172655088366976892)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172655445810976892)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172655884408976892)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172656304411976892)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172656706849976891)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172657072602976891)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172657513779976891)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172657823655976891)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172658308302976891)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172658641420976891)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172659057276976891)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172659505105976890)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172659870822976890)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172660233454976890)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172660670598976890)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172661095718976890)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172661511137976890)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172661861622976890)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172662294213976889)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172662654940976889)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172663113344976889)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172663490071976889)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172663908260976889)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172664245284976889)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172664655903976889)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5172665044779976888)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12321091181774335243)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146131340165911980)
,p_plug_display_sequence=>4
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7930197539481150074)
,p_plug_name=>'Legend'
,p_parent_plug_id=>wwv_flow_imp.id(12321091181774335243)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132727102911981)
,p_plug_display_sequence=>53
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cursor c_st is',
'      select DISPLAY_VAL,',
'             IMAGE_TAG ',
'        from edc_crf_status ',
'       --where status = 1',
'       where return_val in (0,2,3,4,4.5,5,6,9)',
'       order by return_val;',
'',
'   v_ret varchar2(2000);',
'',
'begin',
'    v_ret := ''<span>'';',
'    ',
'    for cur in c_st loop',
'    ',
'        if cur.DISPLAY_VAL = ''Create Visit'' then',
'            cur.DISPLAY_VAL := ''Create Schedule'';',
'        end if;',
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12321091383873335245)
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
 p_id=>wwv_flow_imp.id(12321091572144335247)
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
,p_internal_uid=>7322062056255124850
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5172667601192976883)
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
 p_id=>wwv_flow_imp.id(5172667963663976880)
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
 p_id=>wwv_flow_imp.id(5172668334047976880)
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
 p_id=>wwv_flow_imp.id(5172668780453976880)
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
 p_id=>wwv_flow_imp.id(5172669188773976880)
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
 p_id=>wwv_flow_imp.id(5172669558914976880)
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
 p_id=>wwv_flow_imp.id(5172669973937976880)
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
 p_id=>wwv_flow_imp.id(5172670373445976879)
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
 p_id=>wwv_flow_imp.id(5172670793823976879)
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
 p_id=>wwv_flow_imp.id(5172671169527976879)
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
 p_id=>wwv_flow_imp.id(5172671600047976879)
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
 p_id=>wwv_flow_imp.id(12321092767684335255)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1736424'
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
 p_id=>wwv_flow_imp.id(12321093175637335264)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12325515291469104466)
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
 p_id=>wwv_flow_imp.id(5172672701668976876)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_button_name=>'P210_SEARCH'
,p_button_static_id=>'P36_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_is_hot=>'Y'
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
 p_id=>wwv_flow_imp.id(5172673101407976876)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_button_name=>'P210_RECEIVE_DRUGS'
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
 p_id=>wwv_flow_imp.id(5172673438637976876)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_button_name=>'P210_RETURN_DRUGD_TO_DEPOT'
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
 p_id=>wwv_flow_imp.id(5172666276887976887)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12321084360121335232)
,p_button_name=>'PI_SIGNOFF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'PI Signoff'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CNT NUMBER;',
'  V_CNT1 NUMBER:=0;',
'  V_CNT2 NUMBER;',
'  V_CNT3 NUMBER:=0;',
'  v_Section_status number;',
'  v_diary_type varchar2(20);',
'BEGIN',
'  ',
'  for k in (select patient_profile_id from edc_patient_profile where study_site_id=:P210_SITES) loop',
'',
'      for j in (select patient_diary_id, section_status from edc_patient_diary where patient_profile_id=K.PATIENT_PROFILE_ID) loop',
'',
'          select diary_type into v_diary_type from edc_patient_diary where patient_diary_id=J.PATIENT_DIARY_ID;',
'',
'          select count(1) into v_cnt from (select c.crf_table_name ',
'          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'          where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id and c.parent_page is null',
'          and a.patient_diary_id=J.PATIENT_DIARY_ID and b.app_type=''WEB'' and c.crf_id not in (3,24)',
'          union all',
'          select c.crf_table_name ',
'          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'          where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'          and a.patient_diary_id=J.PATIENT_DIARY_ID and c.crf_id=3',
'          and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                  WHERE PATIENT_PROFILE_ID=K.PATIENT_PROFILE_ID AND VISIT_TITLE=''Randomization'') and RADIO4=''Yes'')',
'          union all',
'          select c.crf_table_name',
'          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'          where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'          and a.patient_diary_id=J.PATIENT_DIARY_ID and c.crf_id=24',
'          and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                  WHERE PATIENT_PROFILE_ID=K.PATIENT_PROFILE_ID AND VISIT_TITLE=''Screening'') and GENDER=''Female'' and RADIO3=''Yes''));',
'',
'          for i in (select c.crf_table_name',
'          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'          where a.schedule_id=b.schedule_id',
'          and b.crf_id=c.crf_id and c.parent_page is null',
'          and a.patient_diary_id=J.PATIENT_DIARY_ID and b.app_type=''WEB'' and c.crf_id not in (3,24)',
'          union all',
'          select c.crf_table_name',
'          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'          where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'          and a.patient_diary_id=J.PATIENT_DIARY_ID and c.crf_id=3',
'          and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                  WHERE PATIENT_PROFILE_ID=K.PATIENT_PROFILE_ID AND VISIT_TITLE=''Randomization'') and RADIO4=''Yes'')',
'          union all',
'          select c.crf_table_name ',
'          from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'          where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'          and a.patient_diary_id=J.PATIENT_DIARY_ID and c.crf_id=24',
'          and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                  WHERE PATIENT_PROFILE_ID=K.PATIENT_PROFILE_ID AND VISIT_TITLE=''Screening'') and GENDER=''Female'' and RADIO3=''Yes'')) loop',
'',
'                execute immediate ''select count(1) from ''||i.crf_table_name||'' where patient_diary_id=''||J.PATIENT_DIARY_ID into v_cnt2;',
'',
'                if v_cnt2 > 0 then',
'                    execute immediate ''select section_status from ''||i.crf_table_name||'' where patient_diary_id=''||J.PATIENT_DIARY_ID into v_section_status;',
'',
'                    if v_diary_type=''Electronic'' and v_section_status in (4.5,6) then v_cnt1:=v_cnt1 + 1;',
'                    elsif v_diary_type=''Paper'' and v_section_status=6 then v_cnt1:=v_cnt1 + 1; end if;',
'',
'                end if;',
'',
'          end loop;',
'',
'          if v_cnt=v_cnt1 and :APP_EDC_ROLE_ID IN (13,15) then V_CNT3:=V_CNT3 + 1; end if;',
'',
'      end loop;',
'',
'  end loop;',
'',
'  if v_cnt3 > 0 then return true;',
'  else return false;',
'  end if;',
'',
'END;'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5172705129227976855)
,p_branch_action=>'f?p=&FLOW_ID.:210:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3557646143598175279)
,p_name=>'P210_SEARCH_BY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_item_default=>'1'
,p_prompt=>'Search By'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Screening Number;1,Subjects'' Range;2'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3557646652089175284)
,p_name=>'P210_SEARCH_BY_RANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_prompt=>'<b>Subjects'' Range</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(scrno)||'' - ''||max(scrno) D, min(scrno)||'' - ''||max(scrno) R',
'from edc_patient_profile where study_site_id = :P210_SITES',
'group by FLOOR((rownum-1)/10)',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P210_SITES'
,p_ajax_items_to_submit=>'P210_SITES'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3791142345290920649)
,p_name=>'P210_QRY_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'',
'    select count(1) into v_cnt',
'    from edc_crf_queries',
'    where patient_diary_id in (select patient_diary_id from edc_patient_diary where patient_profile_id in (select patient_profile_id from edc_patient_profile ',
'                                                                                                          where study_site_id = :P210_SITES))',
'    and qry_status in (''Open'',''Reopened'',''Responded'');',
'    ',
'    if v_cnt > 0 then',
'        return v_cnt;',
'    else',
'        return 0;',
'    end if;',
'    ',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172673874022976876)
,p_name=>'P210_SCREENING_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_prompt=>'<b>Screening Number</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>9
,p_cMaxlength=>12
,p_cAttributes=>'nowrap="nowrap"'
,p_new_grid=>true
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172674262801976873)
,p_name=>'P210_PATIENT_INITIAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12321093175637335264)
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
 p_id=>wwv_flow_imp.id(5172674693541976873)
,p_name=>'P210_SITES'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_site_id number;',
'v_site_no varchar2(100);',
'begin',
'    if :APP_EDC_USER_TYPE = 3 then',
'        select study_site_id ',
'        into v_site_id',
'        from edc_site_contacts a, edc_study_contact b',
'        where a.site_contact_id = b.contact_id',
'        and b.study_contact_id = :APP_EDC_USER_ID;',
'        ',
'        return v_site_id;',
'    /*elsif :APP_EDC_USER_TYPE = 2 then',
'        ',
'        select study_site_id ',
'        into v_site_id',
'        from edc_study_sites a, edc_study_contact b',
'        where a.study_site_id = b.contact_id',
'        and b.study_contact_id = :APP_EDC_USER_ID;',
'        ',
'        return v_site_id;',
'    else',
'    ',
'        SELECT min(a.site_number) d',
'        into v_site_no',
'        FROM EDC_STUDY_SITES A',
'        WHERE A.STUDY_ID = :APP_EDC_STUDY_ID',
'        AND SUN_21010_DEV.EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0;',
'        ',
'        SELECT A.STUDY_SITE_ID R',
'        into v_site_id',
'        FROM EDC_STUDY_SITES A',
'        WHERE site_number = v_site_no;',
'        ',
'        return v_site_id;*/',
'        ',
'    end if;',
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
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
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
 p_id=>wwv_flow_imp.id(5172675105803976873)
,p_name=>'P210_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12321093175637335264)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_PATIENT_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''PATIENT_STATUS'' and lv.status=1 --and stored_value<> ''9''',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172675420964976872)
,p_name=>'P210_RANDOMNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12321093175637335264)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5172701420296976857)
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
 p_id=>wwv_flow_imp.id(5172701950320976856)
,p_event_id=>wwv_flow_imp.id(5172701420296976857)
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
 p_id=>wwv_flow_imp.id(5172702324430976856)
,p_name=>'auto_close'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172702852839976856)
,p_event_id=>wwv_flow_imp.id(5172702324430976856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5172703219669976856)
,p_name=>'auto refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172703763496976856)
,p_event_id=>wwv_flow_imp.id(5172703219669976856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload(true);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5172704176334976856)
,p_name=>'lock modal page'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11644658125425304290)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172704635846976855)
,p_event_id=>wwv_flow_imp.id(5172704176334976856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:552:&APP_SESSION.::RP,552::P552_SITE_ID,P552_PAGE_ID,P552_STATUS,P552_FLAG:&P210_SITES.,&APP_PAGE_ID.,10,1'
,p_attribute_06=>'.uMessageText'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3791139323095871365)
,p_name=>'PI_SIGNOFF_MODAL_OPEN'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5172666276887976887)
,p_condition_element=>'P210_QRY_COUNT'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791139770370871397)
,p_event_id=>wwv_flow_imp.id(3791139323095871365)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert("Please get all queries closed by the CRA and then Sign off.");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791140236811871400)
,p_event_id=>wwv_flow_imp.id(3791139323095871365)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM,P91_PAGE_ID,P91_STUDY_SITE_ID:&APP_USER_NAME.,210,&P210_SITES.'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3553785945404068965)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12321084360121335232)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3553786001519068966)
,p_event_id=>wwv_flow_imp.id(3553785945404068965)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report_sdMatrix").htmldbDscroll({freezeColumns:5});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3557646232605175280)
,p_name=>'search enable disable'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P210_SEARCH_BY'
,p_condition_element=>'P210_SEARCH_BY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3557646292521175281)
,p_event_id=>wwv_flow_imp.id(3557646232605175280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_SCREENING_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3557647032558175288)
,p_event_id=>wwv_flow_imp.id(3557646232605175280)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_SEARCH_BY_RANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3557646446686175282)
,p_event_id=>wwv_flow_imp.id(3557646232605175280)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_SCREENING_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3557646720304175285)
,p_event_id=>wwv_flow_imp.id(3557646232605175280)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_SEARCH_BY_RANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3557646955951175287)
,p_event_id=>wwv_flow_imp.id(3557646232605175280)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_SCREENING_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3557646886335175286)
,p_event_id=>wwv_flow_imp.id(3557646232605175280)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P210_SEARCH_BY_RANGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5172701081728976857)
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
'if :P210_SITES is not null then',
'for i in (select distinct(crf_table_name),PATIENT_VISIT_ID from edc_crf_master a,edc_crf_pages b,edc_patient_visit c',
'           where a.crf_id = b.crf_id',
'             and b.param_id = c.param_id',
'             and c.patient_profile_id in (select patient_profile_id from edc_patient_profile where study_site_id = :P210_SITES)',
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
'                           and b.study_site_id = :P210_SITES);',
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
'                           and b.study_site_id = :P210_SITES);',
'end if;',
'',
'       commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11644658125425304290)
,p_internal_uid=>4071750313587472764
);
wwv_flow_imp.component_end;
end;
/
