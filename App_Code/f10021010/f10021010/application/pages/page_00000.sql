prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page - DESKTOP'
,p_step_title=>'Global Page - Desktop'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2688616031533063879)
,p_plug_name=>'Legends'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height:90px; margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181162237407888)
,p_plug_display_sequence=>2
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0"style="width:150px;">',
'	<tr>',
'		<td>',
'            <img  src="#APP_IMAGES#Flag_Yellow.png" style="vertical-align: middle;margin-left:5px;" width="15px"  title=" - Open Query" />',
'			<!--<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#ffff00;font-family:Arial, Geneva, sans-serif"></div> -->',
'		</td>',
'',
'		 <td>  - Open Query </td>',
'         </tr>',
'         <tr>  ',
'		<td>',
'            <img  src="#APP_IMAGES#Flag_Green.png" style="vertical-align: middle;margin-left:5px;" width="15px"  title=" - Responded Query" />',
'			<!--<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#298A08;font-family:Arial, Geneva, sans-serif"></div>-->',
'		</td>',
'',
'		<td>  - Responded Query ',
'		</td>',
'',
'        </tr>',
'        <tr>',
'                <td>',
'             <img  src="#APP_IMAGES#Flag_blue.png" style="vertical-align: middle;margin-left:5px;" width="15px"  title="	- Closed Query" />',
'			<!--<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#3399FF;font-family:Arial, Geneva, sans-serif"></div>-->',
'		</td>',
'		<td> - Closed Query',
'		</td>',
'       </tr>',
'        <tr>',
'                        <td>',
'             <img  src="#APP_IMAGES#Flag_orange.png" style="vertical-align: middle;margin-left:5px;" width="15px"  title=" - Reopened Query" />',
'			<!--<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#F63;font-family:Arial, Geneva, sans-serif"></div>-->',
'		</td>',
'		<td> - Reopened Query',
'		</td>',
'	</TR>',
'</table>',
''))
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'45,100,509,510'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4620053676394072838)
,p_name=>'Schedule Details'
,p_template=>wwv_flow_imp.id(11045181162237407888)
,p_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:700px"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PTINTL,',
'SCRNO,',
'(SELECT DISP_SCHEDULE_NAME FROM EDC_PATIENT_SCHEDULE_PARAMS WHERE SCHEDULE_NAME = :APP_EDC_SCHEDULE_NAME) "SCHEDULE_NAME",',
'(SELECT DISPLAY_VAL FROM EDC_CRF_STATUS WHERE RETURN_VAL = (SELECT SECTION_STATUS FROM EDC_PATIENT_DIARY WHERE PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID)) "STATUS",',
'(SELECT TO_CHAR(SCHEDULE_DT,''DD-MON-YYYY'') FROM EDC_PATIENT_DIARY WHERE PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID) "DT",',
'--(SELECT TO_CHAR(SCHEDULE_TM,''HH24:MI'') FROM EDC_PATIENT_DIARY WHERE PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID) "TM"',
'CASE WHEN UPPER(:APP_EDC_SCHEDULE_NAME) LIKE ''%MORNING%''',
'THEN ''Dose 1''',
'WHEN UPPER(:APP_EDC_SCHEDULE_NAME) LIKE ''%EVENING%''',
'THEN ''Dose 2''',
'ELSE',
'''''',
'END "TM"',
'FROM EDC_PATIENT_PROFILE',
'WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID'))
,p_display_when_condition=>'45,100,509,510'
,p_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2688201225849046314)
,p_query_column_id=>1
,p_column_alias=>'PTINTL'
,p_column_display_sequence=>1
,p_column_heading=>'Subject Initials'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2688201576979046314)
,p_query_column_id=>2
,p_column_alias=>'SCRNO'
,p_column_display_sequence=>2
,p_column_heading=>'Screening Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2688201958378046315)
,p_query_column_id=>3
,p_column_alias=>'SCHEDULE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Schedule Name'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2688202348800046316)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Schedule Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2688200388081046304)
,p_query_column_id=>5
,p_column_alias=>'DT'
,p_column_display_sequence=>5
,p_column_heading=>'Schedule Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2688200822659046313)
,p_query_column_id=>6
,p_column_alias=>'TM'
,p_column_display_sequence=>6
,p_column_heading=>'Schedule Time'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10148132479954280183)
,p_plug_name=>'Global JS, CSS'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>1
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/js-cookie/2.1.4/js.cookie.js"></script>',
'',
'<style>',
'/* first level menu */',
'div#vertical-collapsible-nav {',
'  width: 200px;',
'  background-color: #DDDDDD;',
'  border: 1px solid #9C9C9C;',
'}',
'div#vertical-collapsible-nav div span {',
'  display: block;',
'  padding: 4px 5px 4px 10px;',
'  font-weight: bold;',
'  color: #222222;',
'}',
'div#vertical-collapsible-nav div span:hover {',
'  background-color: #CCCCCC;',
'  cursor: pointer;',
'}',
' ',
'/* second level menu */',
'div#vertical-collapsible-nav div ul {',
'  list-style-type: none;',
'  margin: 0;',
'}',
'div#vertical-collapsible-nav div ul li {',
'  background-color: #F2F2F2;',
'  padding: 4px 5px 4px 18px;',
'}',
'div#vertical-collapsible-nav div ul li a {',
'  text-decoration: none;',
'  color: #222222;',
'}',
'div#vertical-collapsible-nav div ul li a.is-lvl2-current {',
'  font-weight: bold;',
'}',
'div#vertical-collapsible-nav div ul li a:hover {',
'  color: #3E9FFF;',
'}',
'div#vertical-collapsible-nav div ul li a img {',
'  vertical-align: middle;',
'  padding-right: 5px;',
'}',
'</style>',
'<script>',
'// return a unique array',
'Array.prototype.getUnique = function(sort) {',
'  var u = {}, a = [], i, l = this.length;',
'  for (i = 0; i < l; ++i) {',
'    if (this[i] in u) { continue; }',
'    a.push(this[i]);',
'    u[this[i]] = 1;',
'  }',
'  return (sort) ? a.sort() : a;',
'}',
'',
'var cookie = $.cookie("panelState"), collapsed = cookie ? cookie.split("|").getUnique() : [], cookieExpires = 7;',
' ',
'$.each(collapsed, function() {',
'  $(''#'' + this).siblings("ul").hide();',
'});',
' ',
'$("div#vertical-collapsible-nav div span").click(function() {',
'  var spanClicked = this;',
' ',
'  $(this).siblings("ul").slideToggle(300, function() {',
'    updateCookie(spanClicked);',
'  });',
'});',
' ',
'function updateCookie(el) {',
'  var tmp = collapsed.getUnique();',
' ',
'  if ($(''#'' + el.id).siblings("ul").is('':hidden'')) {',
'    tmp.push(el.id);',
'  } else {',
'    tmp.splice(tmp.indexOf(el.id), 1);',
'  }',
'  collapsed = tmp.getUnique();',
'  $.cookie("panelState", collapsed.join(''|''), { expires: cookieExpires } );',
'}',
'</script>'))
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10542893493375631337)
,p_plug_name=>'Put Add Query logo after all fields'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>221
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PARENT_ROW VARCHAR2(50);',
'    v_row_cnt number;',
'    v_crf_table_name edc_crf_master.crf_Table_name%type;',
'    V_CRF_ID NUMBER;',
'    V_CNT NUMBER;',
'    V_QRY_CNT NUMBER;',
'BEGIN',
'    -- #APP_IMAGES#add_query_1.png',
'    HTP.P(''<style>',
'          ',
'          .img_margin',
'          {',
'              margin: 2px;',
'          }',
'          .img_margin1',
'          {',
'              margin: 2px;',
'          }',
'          ',
'          ',
'          .img_format',
'          {',
'              width:19px;                ',
'          }',
'          ',
'          .v_bottom',
'          {',
'              vertical-align:bottom;',
'          }',
'          ',
'          .v_middle',
'          {',
'              vertical-align: middle;',
'              margin-top:3px;',
'          }',
'          </style>',
'          '');',
'    ',
'    ',
'    HTP.P(''<script>'');',
'    HTP.P(''$(function(){'');',
'',
'    FOR I IN (SELECT *',
'                FROM APEX_APPLICATION_PAGE_ITEMS',
'               WHERE PAGE_ID        = :APP_PAGE_ID',
'                 AND APPLICATION_ID = :APP_ID',
'                 AND UPPER(REGION) NOT IN (''AUDIT'', ''TEMP'')',
'                 AND UPPER(DISPLAY_AS) NOT IN (''HIDDEN'')',
'                 AND ITEM_NAME NOT LIKE ''%CHANGE''',
'                 AND ITEM_NAME NOT LIKE ''%SECTION_STATUS''',
'                 AND ITEM_NAME NOT LIKE ''%IMG''',
'                 AND ITEM_NAME NOT LIKE ''%_CHANGE''',
'                 AND ITEM_NAME NOT LIKE ''%_CHANGED''',
'                 AND DISPLAY_AS NOT IN (''Hidden'',''Display Only'') --''Display Only''                 ',
'                 AND ITEM_NAME NOT IN (SELECT ITEM_NAME FROM EDC_PARENT_ITEMS WHERE AUDIT_FLAG = ''N'')',
'    ) LOOP',
'        /*',
'        -- For icon after each Item',
'        HTP.P(''$("#'' || I.ITEM_NAME || ''").closest("td").append("<a class=''''add_query'''' href=''''f?p=&APP_ID.:124:&SESSION.::NO:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID,P124_ITEM_NAME:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.,'' || I.ITEM_NAME || ''''''><i'
||'mg src=''''#APP_IMAGES#add_query_1.png'''' /></a>");'');',
'        */',
'         select crf_table_name,',
'                CRF_ID',
'           into v_crf_table_name,',
'                V_CRF_ID',
'           from edc_Crf_master',
'          where crf_page_no = :APP_PAGE_ID;',
'              ',
'          SELECT COUNT(*)',
'            INTO V_CNT',
'            FROM EDC_CRF_PAGES',
'           WHERE CRF_ID = V_CRF_ID;',
'',
'        IF I.DISPLAY_AS IN (''Radio Group'') THEN',
'             V_PARENT_ROW := ''.closest("td")'';',
'        ELSE',
'             V_PARENT_ROW := ''.parent()'';',
'        END IF;',
'        ',
'        -- For icon after once in a row, for multiple Items on same row.',
'--nkl        HTP.P(''if($("#'' || I.ITEM_NAME || ''").'' || V_PARENT_ROW || ''.find(".add_query").length == 0){'');',
'      --HTP.P(''$("#'' || I.ITEM_NAME || ''").closest("tr").append("<a class=''''add_query'''' href=''''#''''><img src=''''#APP_IMAGES#add_query_1.png'''' /></a>");'');',
'            ',
'                  --$("#'' || I.ITEM_NAME || ''").'' || V_PARENT_ROW || ''.append("<td>");',
'            -- To check if user is allowed to raise query? --      ',
'            if EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID) = 1 then      ',
'                HTP.P(''',
'                      $("#'' || I.ITEM_NAME || ''")''||V_PARENT_ROW||''.append("<a class=''''add_query_link'''' href=''''f?p=&APP_ID.:124:&SESSION.::NO:RP,124:P124_TBL_PK_ID,P124_PATIENT_VISIT_ID,P124_PAGE_ID,P124_ITEM_NAME:&APP_TBL_PK_ID.,&APP_EDC_PATIENT_VIS'
||'IT_ID.,&APP_PAGE_ID.,''|| I.ITEM_NAME || ''''''><img class=''''v_bottom img_margin1 '' || I.ITEM_NAME || '' '''' title=''''Add Query'''' src=''''https://prd1.octalsoft.com:8181/edc/img/bt_Help_Home.gif'''' /></a>");',
'                      $("#'' || I.ITEM_NAME || ''").css({''''vertical-align'''':''''bottom''''});',
'                      ',
'                      '');',
'                      ',
'            end if;   ',
'           /*  select count(*)',
'             into V_QRY_CNT',
'            from edc_Crf_queries',
'            WHERE QRY_STATUS in (''Open'',''Reopen'')',
'              AND AUTO_FLAG = ''U''',
'              AND ItEM_NAME = I.ITEM_NAME',
'              AND PAGE_ID = :APP_PAGE_ID',
'              AND PATIENT_VISIT_ID= :APP_EDC_PATIENT_VISIT_ID',
'              AND STUDY_ID = :APP_EDC_STUDY_ID;',
'            ',
'            if v_qry_cnt > 0 then               ',
'            htp.p (''$("#'' || I.ITEM_NAME || ''").'' || V_PARENT_ROW || ''.append("<img class=''''img_margin '' || I.ITEM_NAME || '''''' title=''''SDV'''' src=''''https://prd1.octalsoft.com:8181/edc/img/icon_DEcomplete.gif'''' />");'');',
'           end if;*/',
'           /* TO CHECK IF ROW EXITS IN THE TABLE THEN ONLY SHOW AUDIT TRAIL ICON*/',
'            ',
'           ',
'              IF V_CNT >0 THEN',
'                  ',
'                  execute immediate ''SELECT COUNT(*) FROM ''||v_crf_table_name||'' WHERE PATIENT_VISIT_ID = ''||:APP_EDC_PATIENT_VISIT_ID',
'                     INTO V_ROW_CNT;',
'              ELSE',
'              ',
'                  execute immediate ''SELECT COUNT(*) FROM ''||v_crf_table_name||'' WHERE PATIENT_PROFILE_ID = ''||:P37_PATIENT_PROFILE_ID',
'                     INTO V_ROW_CNT;',
'              END IF;',
'              ',
'              IF V_ROW_CNT > 0 THEN',
'                    htp.p (''$("#'' || I.ITEM_NAME || ''")''||V_PARENT_ROW ||''.append("<a class=''''add_query img_margin v_middle '' || I.ITEM_NAME || '' '''' title=''''Audit'''' onclick=''''return false;'''' href=''''f?p=&APP_ID.:141:&SESSION.::NO:RP,141:P124_TBL_PK_ID'
||',P141_PATIENT_VISIT_ID,P141_PAGE_ID,P141_ITEM:&APP_TBL_PK_ID.,&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.,'' || replace(I.ITEM_NAME,''P''||:APP_PAGE_ID||''_'','''') || ''''''><img class=''''v_bottom img_format'''' src=''''#WORKSPACE_IMAGES#audit.png'''' /></a>");',
'                              $("#'' || I.ITEM_NAME || ''").css({''''vertical-align'''':''''bottom''''});',
'                           '');',
'              ',
'              END IF; ',
'              ',
'                 ',
'                  --$("#'' || I.ITEM_NAME || ''").'' || V_PARENT_ROW || ''.append("</td>");',
'--nkl               HTP.P(''}''); --#APP_IMAGES#add_query_1.png (OLD IMG)',
'',
'    END LOOP;',
'',
'    HTP.P(''$(''''.add_query_link'''').each(function(){'');',
'       HTP.P(''url = $(this).attr("href");'');',
'       HTP.P(''$(this).attr("href", "javascript:popupURL(''''" + url + "'''')");'');',
'    HTP.P(''});'');',
'',
'',
'    HTP.P(''});'');',
'    HTP.P(''</script>'');',
'END;  '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_CRF_MASTER',
' WHERE CRF_PAGE_NO = :APP_PAGE_ID AND CRF_PAGE_NO IN (506,508,129)',
'  /* AND UPPER(:APP_USER) IN (''NIKHIL.BUTANI'', ''KRUNAL.BHATT'',''TUSHAR.KOTHIA'',''AVINASH'')*/'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PARENT_ROW VARCHAR2(50);',
'    v_row_cnt number;',
'    v_crf_table_name edc_crf_master.crf_Table_name%type;',
'    V_CRF_ID NUMBER;',
'    V_CNT NUMBER;',
'    V_QRY_CNT NUMBER;',
'BEGIN',
'    -- #APP_IMAGES#add_query_1.png',
'    HTP.P(''<style>',
'          ',
'          .img_margin',
'          {',
'              margin: 2px;',
'          }',
'          ',
'          .img_format',
'          {',
'              width:19px;                ',
'          }',
'          ',
'          .v_middle',
'          {',
'              vertical-align: middle;',
'              margin-top:3px;',
'          }',
'          </style>',
'          '');',
'    ',
'    ',
'    HTP.P(''<script>'');',
'    HTP.P(''$(function(){'');',
'',
'    FOR I IN (SELECT *',
'                FROM APEX_APPLICATION_PAGE_ITEMS',
'               WHERE PAGE_ID        = :APP_PAGE_ID',
'                 AND APPLICATION_ID = :APP_ID',
'                 AND UPPER(REGION) NOT IN (''AUDIT'', ''TEMP'')',
'                 AND UPPER(DISPLAY_AS) NOT IN (''HIDDEN'')',
'                 AND ITEM_NAME NOT LIKE ''%CHANGE''',
'                 AND ITEM_NAME NOT LIKE ''%SECTION_STATUS''',
'                 AND ITEM_NAME NOT LIKE ''%IMG''',
'                 AND ITEM_NAME NOT LIKE ''%_CHANGE''',
'                 AND ITEM_NAME NOT LIKE ''%_CHANGED''',
'                 AND DISPLAY_AS NOT IN (''Hidden'') --''Display Only'',',
'    ) LOOP',
'        ',
'        select crf_table_name,CRF_ID',
'              into v_crf_table_name,V_CRF_ID',
'              from edc_Crf_master',
'              where crf_page_no = :APP_PAGE_ID;',
'              ',
'              SELECT COUNT(*)',
'               INTO V_CNT',
'               FROM EDC_CRF_PAGES',
'                WHERE CRF_ID = V_CRF_ID;',
'       -- For icon after once in a row, for multiple Items on same row.',
'',
'            -- To check if user is allowed to raise query? --      ',
'            if EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID) = 1 then      ',
'            HTP.P(''',
'                  $("#'' || I.ITEM_NAME || ''").after("<a class=''''add_query_link'''' href=''''f?p=&APP_ID.:124:&SESSION.::NO:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID,P124_ITEM_NAME:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.,''|| I.ITEM_NAME || ''''''><img class'
||'=''''img_margin1 '' || I.ITEM_NAME || '' '''' title=''''Add Query'''' src=''''https://prd1.octalsoft.com:8181/edc/img/bt_Help_Home.gif'''' /></a>");'');',
'             end if;   ',
'           ',
'           /* TO CHECK IF ROW EXITS IN THE TABLE THEN ONLY SHOW AUDIT TRAIL ICON*/',
'            ',
'                IF V_CNT >0 THEN',
'                  execute immediate ''SELECT COUNT(*) FROM ''||v_crf_table_name||'' WHERE PATIENT_VISIT_ID = ''||:APP_EDC_PATIENT_VISIT_ID',
'                  INTO V_ROW_CNT;',
'                 ELSE',
'                 execute immediate ''SELECT COUNT(*) FROM ''||v_crf_table_name||'' WHERE PATIENT_PROFILE_ID = ''||:P37_PATIENT_PROFILE_ID',
'                 INTO V_ROW_CNT;',
'                 END IF;',
'                IF V_ROW_CNT > 0 THEN',
'                htp.p (''$("#'' || I.ITEM_NAME || ''").after("<a class=''''add_query img_margin v_middle '' || I.ITEM_NAME || '' '''' title=''''Audit'''' onclick=''''return false;'''' href=''''f?p=&APP_ID.:141:&SESSION.::NO:RP,141:P141_PATIENT_VISIT_ID,P141_PAGE_ID,P14'
||'1_ITEM:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.,'' || replace(I.ITEM_NAME,''P''||:APP_PAGE_ID||''_'','''') || ''''''><img class=''''img_format'''' src=''''#WORKSPACE_IMAGES#audit.png'''' /></a>");'');',
'                 END IF; ',
'                  ',
'--nkl               HTP.P(''}''); --#APP_IMAGES#add_query_1.png (OLD IMG)',
'',
'    END LOOP;',
'',
'    HTP.P(''$(''''.add_query_link'''').each(function(){'');',
'       HTP.P(''url = $(this).attr("href");'');',
'       HTP.P(''$(this).attr("href", "javascript:popupURL(''''" + url + "'''')");'');',
'    HTP.P(''});'');',
'',
'',
'    HTP.P(''});'');',
'    HTP.P(''</script>'');',
'END;  '))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10543309347513276309)
,p_plug_name=>'Set Item Query for AE'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>231
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_style varchar2(10000);',
'begin',
'  for i in (SELECT item_name,',
'  qry_status,',
'  4',
'FROM EDC_CRF_QUERIES',
'WHERE qry_status = ''Closed''',
'AND page_id      =:APP_PAGE_ID',
'--AND TBL_PK_ID    = :APP_TBL_PK_ID',
'AND study_id     = :APP_EDC_STUDY_ID',
'AND TBL_PK_ID    = :P518_AED_ID',
'AND :P518_AED_ID IS NOT NULL',
'UNION',
'SELECT item_name,',
'  qry_status,',
'  3',
'FROM EDC_CRF_QUERIES',
'WHERE qry_status = ''Responded''',
'AND page_id      =:APP_PAGE_ID',
'--AND TBL_PK_ID    = :APP_TBL_PK_ID',
'AND study_id     = :APP_EDC_STUDY_ID',
'AND TBL_PK_ID    = :P518_AED_ID',
'AND :P518_AED_ID IS NOT NULL',
'UNION',
'SELECT item_name,',
'  qry_status,',
'  2',
'FROM EDC_CRF_QUERIES',
'WHERE qry_status = ''Reopened''',
'AND page_id      =:APP_PAGE_ID',
'--AND TBL_PK_ID    = :APP_TBL_PK_ID',
'AND study_id     = :APP_EDC_STUDY_ID',
'AND TBL_PK_ID    = :P518_AED_ID',
'AND :P518_AED_ID IS NOT NULL',
'UNION',
'SELECT item_name,',
'  qry_status,',
'  1',
'FROM EDC_CRF_QUERIES',
'WHERE qry_status = ''Open''',
'AND page_id      =:APP_PAGE_ID',
'--AND TBL_PK_ID    = :APP_TBL_PK_ID',
'AND study_id     = :APP_EDC_STUDY_ID',
'AND TBL_PK_ID    = :P518_AED_ID',
'AND :P518_AED_ID IS NOT NULL',
'',
'order by 3 desc) loop',
'    if i.qry_status in (''Open'') then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:#F44A16 !important;font-weight:bold !important;background-color: yellow !important;}'';',
'  elsif i.qry_status in (''Reopened'') then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:white !important;font-weight:bold !important;background-color: #f63!important;}'';',
'    elsif i.qry_status=''Responded'' then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:white !important;font-weight:bold !important;background-color:#298A08 !important;}'';',
'    elsif i.qry_status=''Closed'' then ',
'        v_style := v_style || ''label[for="''||i.item_name||''"]{color:WHITE !important;font-weight:bold !important;background-color:#3399FF!important;}'';',
'    end if;',
'  end loop;',
'  htp.p(''<style type="text/css">'' || v_style ||''</style>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'518'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10559390023849620760)
,p_plug_name=>'&nbsp;'
,p_region_name=>'pvl'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style = "width: 210px !important; margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181671661407888)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11049669378282367882)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11049804869784018939)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'1001,74,82'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10569390249881667601)
,p_plug_name=>'Put Add Query logo after all fields'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>211
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PARENT_ROW VARCHAR2(50);',
'    v_row_cnt number;',
'    v_crf_table_name edc_crf_master.crf_Table_name%type;',
'    V_CRF_ID NUMBER;',
'    V_CNT NUMBER;',
'    V_QRY_CNT NUMBER;',
'BEGIN',
'    -- #APP_IMAGES#add_query_1.png',
'    HTP.P(''<style>',
'          ',
'          .img_margin',
'          {',
'              margin: 2px;',
'          }',
'          .img_margin1',
'          {',
'              margin: 2px;',
'          }',
'          ',
'          ',
'          .img_format',
'          {',
'              width:19px;                ',
'          }',
'          ',
'          .v_bottom',
'          {',
'              vertical-align:bottom;',
'          }',
'          ',
'          .v_middle',
'          {',
'              vertical-align: middle;',
'              margin-top:3px;',
'          }',
'          </style>',
'          '');',
'    ',
'    ',
'    HTP.P(''<script>'');',
'    HTP.P(''$(function(){'');',
'',
'    FOR I IN (SELECT *',
'                FROM APEX_APPLICATION_PAGE_ITEMS',
'               WHERE PAGE_ID        = :APP_PAGE_ID',
'                 AND APPLICATION_ID = :APP_ID',
'                 AND UPPER(REGION) NOT IN (''AUDIT'', ''TEMP'')',
'                 AND UPPER(DISPLAY_AS) NOT IN (''HIDDEN'')',
'                 AND ITEM_NAME NOT LIKE ''%CHANGE''',
'                 AND ITEM_NAME NOT LIKE ''%SECTION_STATUS''',
'                 AND ITEM_NAME NOT LIKE ''%IMG''',
'                 AND ITEM_NAME NOT LIKE ''%_CHANGE''',
'                 AND ITEM_NAME NOT LIKE ''%_CHANGED''',
'                 AND ITEM_NAME NOT LIKE ''%XMAMET2''',
'                 AND ITEM_NAME NOT IN  (''P1001_RANDOMI_NUMBER'')',
'                 AND DISPLAY_AS NOT IN (''Hidden'',''Display Only'') --''Display Only''                 ',
'                 AND ITEM_NAME NOT IN  (SELECT ITEM_NAME',
'                                          FROM EDC_PARENT_ITEMS',
'                                         WHERE AUDIT_FLAG = ''N''',
'                                       )',
'    ) LOOP',
'        /*',
'        -- For icon after each Item',
'        HTP.P(''$("#'' || I.ITEM_NAME || ''").closest("td").append("<a class=''''add_query'''' href=''''f?p=&APP_ID.:124:&SESSION.::NO:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID,P124_ITEM_NAME:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.,'' || I.ITEM_NAME || ''''''><i'
||'mg src=''''#APP_IMAGES#add_query_1.png'''' /></a>");'');',
'        */',
'         select crf_table_name,',
'                CRF_ID',
'           into v_crf_table_name,',
'                V_CRF_ID',
'           from edc_Crf_master',
'          where crf_page_no = :APP_PAGE_ID;',
'              ',
'          SELECT COUNT(*)',
'            INTO V_CNT',
'            FROM EDC_CRF_PAGES',
'           WHERE CRF_ID = V_CRF_ID;',
'',
'        IF I.DISPLAY_AS IN (''Radio Group'') THEN',
'             V_PARENT_ROW := ''.closest("td")'';',
'        ELSE',
'             V_PARENT_ROW := ''.parent()'';',
'        END IF;',
'        ',
'        -- For icon after once in a row, for multiple Items on same row.',
'--nkl        HTP.P(''if($("#'' || I.ITEM_NAME || ''").'' || V_PARENT_ROW || ''.find(".add_query").length == 0){'');',
'      --HTP.P(''$("#'' || I.ITEM_NAME || ''").closest("tr").append("<a class=''''add_query'''' href=''''#''''><img src=''''#APP_IMAGES#add_query_1.png'''' /></a>");'');',
'            ',
'                  --$("#'' || I.ITEM_NAME || ''").'' || V_PARENT_ROW || ''.append("<td>");',
'            -- To check if user is allowed to raise query? --      ',
'            if EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID) = 1 then      ',
'                HTP.P(''',
'                      $("#'' || I.ITEM_NAME || ''")''||V_PARENT_ROW||''.append("<a class=''''add_query_link'''' onclick=''''return false;'''' href=''''f?p=&APP_ID.:124:&SESSION.::NO:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID,P124_ITEM_NAME:&APP_EDC_PATIENT_VISIT_ID'
||'.,&APP_PAGE_ID.,''|| I.ITEM_NAME || ''''''><img class=''''v_bottom img_margin1 '' || I.ITEM_NAME || '' '''' title=''''Add Query'''' src=''''https://prd1.octalsoft.com:8181/edc/img/bt_Help_Home.gif'''' /></a>");',
'                      $("#'' || I.ITEM_NAME || ''").css({''''vertical-align'''':''''bottom''''});',
'                      '');',
'            end if;   ',
'           /*  select count(*)',
'             into V_QRY_CNT',
'            from edc_Crf_queries',
'            WHERE QRY_STATUS in (''Open'',''Reopen'')',
'              AND AUTO_FLAG = ''U''',
'              AND ItEM_NAME = I.ITEM_NAME',
'              AND PAGE_ID = :APP_PAGE_ID',
'              AND PATIENT_VISIT_ID= :APP_EDC_PATIENT_VISIT_ID',
'              AND STUDY_ID = :APP_EDC_STUDY_ID;',
'            ',
'            if v_qry_cnt > 0 then               ',
'            htp.p (''$("#'' || I.ITEM_NAME || ''").'' || V_PARENT_ROW || ''.append("<img class=''''img_margin '' || I.ITEM_NAME || '''''' title=''''SDV'''' src=''''https://prd1.octalsoft.com:8181/edc/img/icon_DEcomplete.gif'''' />");'');',
'           end if;*/',
'           /* TO CHECK IF ROW EXITS IN THE TABLE THEN ONLY SHOW AUDIT TRAIL ICON*/',
'            ',
'           ',
'              IF V_CNT >0 THEN',
'                  ',
'                  execute immediate ''SELECT COUNT(*) FROM ''||v_crf_table_name||'' WHERE PATIENT_VISIT_ID = ''||:APP_EDC_PATIENT_VISIT_ID',
'                     INTO V_ROW_CNT;',
'              ELSE',
'              ',
'                  execute immediate ''SELECT COUNT(*) FROM ''||v_crf_table_name||'' WHERE PATIENT_PROFILE_ID = ''||:P37_PATIENT_PROFILE_ID',
'                     INTO V_ROW_CNT;',
'              END IF;',
'              ',
'              /*',
'              IF V_ROW_CNT > 0 THEN',
'                    htp.p (''$("#'' || I.ITEM_NAME || ''")''||V_PARENT_ROW ||''.append("<a class=''''add_query img_margin v_middle '' || I.ITEM_NAME || '' '''' title=''''Audit'''' onclick=''''return false;'''' href=''''f?p=&APP_ID.:141:&SESSION.::NO:RP,141:P141_PATIENT_V'
||'ISIT_ID,P141_PAGE_ID,P141_ITEM:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.,'' || replace(I.ITEM_NAME,''P''||:APP_PAGE_ID||''_'','''') || ''''''><img class=''''v_bottom img_format'''' src=''''#WORKSPACE_IMAGES#audit.png'''' /></a>");',
'                              $("#'' || I.ITEM_NAME || ''").css({''''vertical-align'''':''''bottom''''});',
'                          '');',
'              END IF; ',
'              */',
'                 ',
'                  --$("#'' || I.ITEM_NAME || ''").'' || V_PARENT_ROW || ''.append("</td>");',
'--nkl               HTP.P(''}''); --#APP_IMAGES#add_query_1.png (OLD IMG)',
'',
'    END LOOP;',
'/*',
'    HTP.P(''$(''''.add_query_link'''').each(function(){'');',
'       HTP.P(''url = $(this).attr("href");'');',
'       HTP.P(''$(this).attr("href", "javascript:popupURL(''''" + url + "'''')");'');',
'    HTP.P(''});'');',
'*/',
'',
'    HTP.P(''});'');',
'    HTP.P(''</script>'');',
'END;  '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Exist',
'SELECT 1',
'  FROM EDC_CRF_MASTER',
' WHERE CRF_PAGE_NO = :APP_PAGE_ID and crf_page_no not in (506,508)',
'  /* AND UPPER(:APP_USER) IN (''NIKHIL.BUTANI'', ''KRUNAL.BHATT'',''TUSHAR.KOTHIA'',''AVINASH'')*/',
'-----',
'DECLARE',
'    V_PARENT_ROW VARCHAR2(50);',
'    v_row_cnt number;',
'    v_crf_table_name edc_crf_master.crf_Table_name%type;',
'    V_CRF_ID NUMBER;',
'    V_CNT NUMBER;',
'    V_QRY_CNT NUMBER;',
'BEGIN',
'    -- #APP_IMAGES#add_query_1.png',
'    HTP.P(''<style>',
'          ',
'          .img_margin',
'          {',
'              margin: 2px;',
'          }',
'          ',
'          .img_format',
'          {',
'              width:19px;                ',
'          }',
'          ',
'          .v_middle',
'          {',
'              vertical-align: middle;',
'              margin-top:3px;',
'          }',
'          </style>',
'          '');',
'    ',
'    ',
'    HTP.P(''<script>'');',
'    HTP.P(''$(function(){'');',
'',
'    FOR I IN (SELECT *',
'                FROM APEX_APPLICATION_PAGE_ITEMS',
'               WHERE PAGE_ID        = :APP_PAGE_ID',
'                 AND APPLICATION_ID = :APP_ID',
'                 AND UPPER(REGION) NOT IN (''AUDIT'', ''TEMP'')',
'                 AND UPPER(DISPLAY_AS) NOT IN (''HIDDEN'')',
'                 AND ITEM_NAME NOT LIKE ''%CHANGE''',
'                 AND ITEM_NAME NOT LIKE ''%SECTION_STATUS''',
'                 AND ITEM_NAME NOT LIKE ''%IMG''',
'                 AND ITEM_NAME NOT LIKE ''%_CHANGE''',
'                 AND ITEM_NAME NOT LIKE ''%_CHANGED''',
'                 AND DISPLAY_AS NOT IN (''Hidden'') --''Display Only'',',
'    ) LOOP',
'        ',
'        select crf_table_name,CRF_ID',
'              into v_crf_table_name,V_CRF_ID',
'              from edc_Crf_master',
'              where crf_page_no = :APP_PAGE_ID;',
'              ',
'              SELECT COUNT(*)',
'               INTO V_CNT',
'               FROM EDC_CRF_PAGES',
'                WHERE CRF_ID = V_CRF_ID;',
'       -- For icon after once in a row, for multiple Items on same row.',
'',
'            -- To check if user is allowed to raise query? --      ',
'            if EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID) = 1 then      ',
'            HTP.P(''',
'                  $("#'' || I.ITEM_NAME || ''").after("<a class=''''add_query_link'''' href=''''f?p=&APP_ID.:124:&SESSION.::NO:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID,P124_ITEM_NAME:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.,''|| I.ITEM_NAME || ''''''><img class'
||'=''''img_margin1 '' || I.ITEM_NAME || '' '''' title=''''Add Query'''' src=''''https://prd1.octalsoft.com:8181/edc/img/bt_Help_Home.gif'''' /></a>");'');',
'             end if;   ',
'           ',
'           /* TO CHECK IF ROW EXITS IN THE TABLE THEN ONLY SHOW AUDIT TRAIL ICON*/',
'            ',
'                IF V_CNT >0 THEN',
'                  execute immediate ''SELECT COUNT(*) FROM ''||v_crf_table_name||'' WHERE PATIENT_VISIT_ID = ''||:APP_EDC_PATIENT_VISIT_ID',
'                  INTO V_ROW_CNT;',
'                 ELSE',
'                 execute immediate ''SELECT COUNT(*) FROM ''||v_crf_table_name||'' WHERE PATIENT_PROFILE_ID = ''||:P37_PATIENT_PROFILE_ID',
'                 INTO V_ROW_CNT;',
'                 END IF;',
'                IF V_ROW_CNT > 0 THEN',
'                htp.p (''$("#'' || I.ITEM_NAME || ''").after("<a class=''''add_query img_margin v_middle '' || I.ITEM_NAME || '' '''' title=''''Audit'''' onclick=''''return false;'''' href=''''f?p=&APP_ID.:141:&SESSION.::NO:RP,141:P141_PATIENT_VISIT_ID,P141_PAGE_ID,P14'
||'1_ITEM:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.,'' || replace(I.ITEM_NAME,''P''||:APP_PAGE_ID||''_'','''') || ''''''><img class=''''img_format'''' src=''''#WORKSPACE_IMAGES#audit.png'''' /></a>");'');',
'                 END IF; ',
'                  ',
'--nkl               HTP.P(''}''); --#APP_IMAGES#add_query_1.png (OLD IMG)',
'',
'    END LOOP;',
'',
'    HTP.P(''$(''''.add_query_link'''').each(function(){'');',
'       HTP.P(''url = $(this).attr("href");'');',
'       HTP.P(''$(this).attr("href", "javascript:popupURL(''''" + url + "'''')");'');',
'    HTP.P(''});'');',
'',
'',
'    HTP.P(''});'');',
'    HTP.P(''</script>'');',
'END;',
'---------',
':APP_PAGE_ID IN (1001) AND :APP_EDC_ROLE_ID IN (13)'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10574597009139279407)
,p_plug_name=>'Set Item Query child pages'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>110
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_style varchar2(10000);',
'begin',
'  for i in (select item_name,qry_status,4 from  EDC_CRF_QUERIES where qry_status = ''Closed'' and page_id=:APP_PAGE_ID and TBL_PK_ID = :APP_TBL_PK_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'union',
'select item_name,qry_status,3 from  EDC_CRF_QUERIES where qry_status = ''Responded'' and page_id=:APP_PAGE_ID and TBL_PK_ID = :APP_TBL_PK_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'union',
'select item_name,qry_status,2 from  EDC_CRF_QUERIES where qry_status = ''Reopened'' and page_id=:APP_PAGE_ID and TBL_PK_ID = :APP_TBL_PK_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'union',
'select item_name,qry_status,1 from  EDC_CRF_QUERIES where qry_status = ''Open'' and page_id=:APP_PAGE_ID and TBL_PK_ID = :APP_TBL_PK_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'',
'order by 3 desc) loop',
'    if i.qry_status in (''Open'') then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:#F44A16 !important;font-weight:bold !important;background-color: yellow !important;}'';',
'  elsif i.qry_status in (''Reopened'') then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:white !important;font-weight:bold !important;background-color: #f63!important;}'';',
'    elsif i.qry_status=''Responded'' then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:white !important;font-weight:bold !important;background-color:#298A08 !important;}'';',
'    elsif i.qry_status=''Closed'' then ',
'        v_style := v_style || ''label[for="''||i.item_name||''"]{color:WHITE !important;font-weight:bold !important;background-color:#3399FF!important;}'';',
'    end if;',
'  end loop;',
'  htp.p(''<style type="text/css">'' || v_style ||''</style>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'506,508,521'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11046099864693157853)
,p_name=>'Study Details'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>0
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_1'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.protocol_number,',
'        a.sponsor_id,',
'        a.title, ',
'        cro_study_pkg.get_indication(a.therapeutic_area) therapeutic_area,',
'        replace(cro_study_pkg.get_indication(a.STUDY_INDICATION),''<br/>'','''') STUDY_INDICATION,',
'        CRO_STUDY_PKG.GET_PM_NAMESFROMCSV(a.pm_id) pm_id,',
'        (select count(study_site_id) from edc_study_sites where study_id = a.study_id) study_site_id,',
'        NO_OF_SITES,',
'        a.study_id,',
'        a.study_id study_disp,',
'        edc_util.get_pending_rndm_cnt,',
'        edc_util.get_pending_ship_req,',
'        edc_util.get_pending_ret_ship',
'  from edc_study a',
' where a.study_id = nvl(:P0_SELECT_STUDY,:APP_EDC_STUDY_ID)'))
,p_display_when_condition=>'139,2,3,4,140,5,123,6,7,8,9,10,116,11,12,13,14,15,16,17,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,82,85,87'
||',89,91,93,95,99,101,102,103,106,107,108,109,110,111,112,113,114,115,119,124,133,134,135,136,141,147,148,149,171,172,183,184,187,188,190,193,194,195,196,201,204,205,206,207,371,372,376,380,381,501,701,702,703,704,705,706,708,494,1001,79,82,802,801,810'
||',208,209,804,210,100,509,510,98,103,104,105,117,118,121,125,131,132,126,129,18,137,153'
,p_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100179979157855)
,p_query_column_id=>1
,p_column_alias=>'PROTOCOL_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Project Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100280453157855)
,p_query_column_id=>2
,p_column_alias=>'SPONSOR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Sponsor'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100381145157855)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100468035157855)
,p_query_column_id=>4
,p_column_alias=>'THERAPEUTIC_AREA'
,p_column_display_sequence=>6
,p_column_heading=>'Therapeutic Area'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100586768157855)
,p_query_column_id=>5
,p_column_alias=>'STUDY_INDICATION'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100672032157855)
,p_query_column_id=>6
,p_column_alias=>'PM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'PM'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100776124157855)
,p_query_column_id=>7
,p_column_alias=>'STUDY_SITE_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Sites Enrolled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100886585157855)
,p_query_column_id=>8
,p_column_alias=>'NO_OF_SITES'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046100964747157855)
,p_query_column_id=>9
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Protocol Number'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11046101080285157855)
,p_query_column_id=>10
,p_column_alias=>'STUDY_DISP'
,p_column_display_sequence=>2
,p_column_heading=>'Protocol Number'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select study_number,study_id ',
'from edc_study'))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8437437787968116995)
,p_query_column_id=>11
,p_column_alias=>'GET_PENDING_RNDM_CNT'
,p_column_display_sequence=>11
,p_column_heading=>'Pending<br>Randomization'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'#GET_PENDING_RNDM_CNT#'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>':APP_EDC_ROLE_ID in (13,19,25)'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8437437913817116996)
,p_query_column_id=>12
,p_column_alias=>'GET_PENDING_SHIP_REQ'
,p_column_display_sequence=>12
,p_column_heading=>'Pending<br>Shipment Req.'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'#GET_PENDING_SHIP_REQ#'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>':APP_EDC_ROLE_ID in (13,19,25)'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8437437988104116997)
,p_query_column_id=>13
,p_column_alias=>'GET_PENDING_RET_SHIP'
,p_column_display_sequence=>13
,p_column_heading=>'Pending<br>Return Shipment'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'#GET_PENDING_RET_SHIP#'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>':APP_EDC_ROLE_ID in (13,19,25,18)'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046258875634653020)
,p_plug_name=>'Navigate'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>9.5
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_1'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'19,40,55,57,59,85,89,97,102,129,131,191,192'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046264089056675853)
,p_plug_name=>'Navigate to Other Subject'
,p_parent_plug_id=>wwv_flow_imp.id(11046258875634653020)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180259607407887)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11046264987802684979)
,p_plug_name=>'Navigate2'
,p_parent_plug_id=>wwv_flow_imp.id(11046264089056675853)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>89
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(11051137978156316061)
,p_plug_name=>'Common Report Region'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>89
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'',
'//Those two function are use to hide those three image behind the item ',
'  //for use this function just pass item name i.e. show_img(''P503_PEDAT_CHANGED'')',
'',
' function hide_img(p_item_name)',
' {',
'     var gen_item_name = ''#'' + p_item_name;',
'     var hid_item_name = ''.'' + p_item_name;',
'     ',
'     if($(gen_item_name).css(''display'') == "none"){',
'         $(hid_item_name).hide();',
'     }',
'     ',
' }',
' ',
' function show_img(p_item_name)',
' {',
'     var gen_item_name = ''#'' + p_item_name;',
'     var hid_item_name = ''.'' + p_item_name;',
'     ',
'     if($(gen_item_name).css(''display'') != "none"){',
'         $(hid_item_name).show();',
'     }',
'     ',
' }',
' ',
' ',
'//Set page region width of patient''s visit',
'',
' $(function(){',
' ',
'     $(''#pg_reg_width'').css({''width'':''810px''});',
'     $(''#pg_reg_width'').css({''overflow'':''auto''})',
' ',
' });',
'',
'</script>'))
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
 p_id=>wwv_flow_imp.id(10169554140107136783)
,p_plug_name=>'Note'
,p_parent_plug_id=>wwv_flow_imp.id(11051137978156316061)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:400px;height:120px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>29
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<b>BSA Calculation : </b>Calculated according to body surface area [Calculated by Dubois & Dubois formula- <b>Body Surface Area (m2) = (Weight (kg)<sup>0.425</sup> x Height (cm)<sup>0.725</sup>) x 0.007184]</b>.'
,p_plug_column_width=>'style="padding-left:10px;"'
,p_plug_display_condition_type=>'NEVER'
,p_plug_footer=>'<br>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_PAGE_ID IN (1001)',
'------',
'<b>BSA Calculation : </b>The dose of Doxorubicin Hydrochloride for individual patient will be calculated according to body surface area [Calculated by Dubois & Dubois formula- <b>Body Surface Area (m2) = (Weight (kg)<sup>0.425</sup> x Height (cm)<sup'
||'>0.725</sup>) x 0.007184]</b>.'))
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11051138259372329474)
,p_name=>'Screening CRF Status'
,p_parent_plug_id=>wwv_flow_imp.id(11051137978156316061)
,p_template=>wwv_flow_imp.id(11045181162237407888)
,p_display_sequence=>19.2
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<img src="&EDC_IMAGE_PATH.clth_edc/icon_InitialDE.png" width="18" height="18" /> - ''||DISPLAY_VAL as "Status",',
'pp.PTINTL,to_char(pp.SCREENING_DATE,''DD-MON-YYYY'') as "Screening Date",pp.SCRNO, pv.VISIT_NUMBER,',
'pv.VISIT_TITLE,pv.VISIT_TYPE,to_char(pv.ACTUAL_DATE,''DD-MON-YYYY'') as "Actual Date",',
'ESS.SITE_NUMBER || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || ES.INVNAME || '')'' as Site,',
'(select PROTOCOL_NUMBER from EDC_STUDY  where STUDY_ID = ESS.STUDY_ID) PROTOCOL_NUMBER,',
'(select distinct RANDOMNO from EDC_PATIENT_PROFILE where STUDY_SITE_ID = ESS.STUDY_SITE_ID and PATIENT_PROFILE_ID = PP.PATIENT_PROFILE_ID) Randomization_Number,',
'(select distinct RANDOMIZATION_DATE from EDC_PATIENT_PROFILE ',
' where STUDY_SITE_ID = ESS.STUDY_SITE_ID ',
'    and PATIENT_PROFILE_ID = PP.PATIENT_PROFILE_ID) RANDOMIZATION_DATE,',
'PP.STATUS CRF_STATUS',
'from edc_crf_status cs, edc_patient_visit pv, edc_patient_profile pp,EDC_STUDY_SITES ESS,EDC_SITES ES',
'where pv.patient_visit_id=:APP_EDC_PATIENT_VISIT_ID and pv.crf_status=cs.RETURN_VAL and pp.patient_profile_id=pv.patient_profile_id',
'AND ESS.STUDY_SITE_ID = PP.STUDY_SITE_ID AND ESS.SITE_ID = ES.SITE_ID'))
,p_display_when_condition=>'1001,74,82'
,p_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P45_PATIENT_VISIT_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<img src="&EDC_IMAGE_PATH.CLTH_DICLOD/''||IMAGE_TAG||''" width="18" height="18" /> - ''||DISPLAY_VAL as "Status",',
'pp.PTINTL,to_char(pp.SCREENING_DATE,''DD-MON-YYYY'') as "Screening Date",pp.SCRNO, pv.VISIT_NUMBER,',
'pv.VISIT_TITLE,pv.VISIT_TYPE,to_char(pv.ACTUAL_DATE,''DD-MON-YYYY'') as "Actual Date",',
'ESS.SITE_NUMBER||'' - ''||EDC_SITE_PKG.get_site_name(ESS.SITE_ID)||'' (''||EDC_SITE_PKG.get_investigator_name(ESS.SITE_ID)||'')'' as Site,',
'(select PROTOCOL_NUMBER from EDC_STUDY  where STUDY_ID = ESS.STUDY_ID) PROTOCOL_NUMBER,',
'(select distinct RANDOMNO from EDC_PATIENT_PROFILE where STUDY_SITE_ID = ESS.STUDY_SITE_ID and PATIENT_PROFILE_ID = PP.PATIENT_PROFILE_ID) Randomization_Number,',
'(select distinct RANDOMIZATION_DATE from EDC_PATIENT_PROFILE ',
' where STUDY_SITE_ID = ESS.STUDY_SITE_ID ',
'    and PATIENT_PROFILE_ID = PP.PATIENT_PROFILE_ID) RANDOMIZATION_DATE',
'from edc_crf_status cs, edc_patient_visit pv, edc_patient_profile pp,EDC_STUDY_SITES ESS,EDC_SITES ES',
'where pv.patient_visit_id=:APP_EDC_PATIENT_VISIT_ID and pv.crf_status=cs.RETURN_VAL and pp.patient_profile_id=pv.patient_profile_id',
'AND ESS.STUDY_SITE_ID = PP.STUDY_SITE_ID AND ESS.SITE_ID = ES.SITE_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051138574197329479)
,p_query_column_id=>1
,p_column_alias=>'Status'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11046566388332126164)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051138657837329480)
,p_query_column_id=>2
,p_column_alias=>'PTINTL'
,p_column_display_sequence=>3
,p_column_heading=>'Subject <br>  Initial'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051138776589329480)
,p_query_column_id=>3
,p_column_alias=>'Screening Date'
,p_column_display_sequence=>4
,p_column_heading=>'Screening <br>  Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MON/YY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051138882939329480)
,p_query_column_id=>4
,p_column_alias=>'SCRNO'
,p_column_display_sequence=>5
,p_column_heading=>'Subject <br> Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051138968782329480)
,p_query_column_id=>5
,p_column_alias=>'VISIT_NUMBER'
,p_column_display_sequence=>6
,p_column_heading=>'VISIT_NUMBER'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051139086748329480)
,p_query_column_id=>6
,p_column_alias=>'VISIT_TITLE'
,p_column_display_sequence=>7
,p_column_heading=>'Visit <br>  Name'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051139160026329480)
,p_query_column_id=>7
,p_column_alias=>'VISIT_TYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Visit <br>  Type'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051139262753329480)
,p_query_column_id=>8
,p_column_alias=>'Actual Date'
,p_column_display_sequence=>9
,p_column_heading=>'Visit Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MON/YY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11051139384067329480)
,p_query_column_id=>9
,p_column_alias=>'SITE'
,p_column_display_sequence=>10
,p_column_heading=>'Site &  Doctor'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11053205976625690749)
,p_query_column_id=>10
,p_column_alias=>'PROTOCOL_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Study Code'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11053206770106754528)
,p_query_column_id=>11
,p_column_alias=>'RANDOMIZATION_NUMBER'
,p_column_display_sequence=>11
,p_column_heading=>'Randomization <br> Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11053914376773036546)
,p_query_column_id=>12
,p_column_alias=>'RANDOMIZATION_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Randomization <br> Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MON/YY'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10174539233828096178)
,p_query_column_id=>13
,p_column_alias=>'CRF_STATUS'
,p_column_display_sequence=>13
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<b>'' || lv.display_value || ''<b>'' d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''PATIENT_STATUS'' and lv.status=1',
'order by lv.sequence'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11055360084003442398)
,p_plug_name=>'Legends'
,p_parent_plug_id=>wwv_flow_imp.id(11051137978156316061)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11049662161252265398)
,p_plug_display_sequence=>39
,p_plug_new_grid_row=>false
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0"style="width:150px;">',
'	<tr>',
'		<td>',
'			<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#ffff00;font-family:Arial, Geneva, sans-serif"></div>',
'		</td>',
'',
'		 <td>  - Open Query </td>',
'         </tr>',
'         <tr>  ',
'		<td>',
'			<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#298A08;font-family:Arial, Geneva, sans-serif"></div>',
'		</td>',
'',
'		<td>  - Responded Query ',
'		</td>',
'',
'        </tr>',
'        <tr>',
'                <td>',
'			<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#3399FF;font-family:Arial, Geneva, sans-serif"></div>',
'		</td>',
'		<td> - Closed Query',
'		</td>',
'       </tr>',
'        <tr>',
'                        <td>',
'			<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#F63;font-family:Arial, Geneva, sans-serif"></div>',
'		</td>',
'		<td> - Reopened Query',
'		</td>',
'	</TR>',
'</table>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0">',
'	<tr>',
'		<td>',
'			<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#ffff00;font-family:Verdana, Geneva, sans-serif"></div>',
'		</td>',
'',
'		<td><b>Open Query </b>',
'		</td>',
'        </tr>',
'         <tr>  ',
'		<td>',
'			<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#298A08;font-family:Verdana, Geneva, sans-serif"></div>',
'		</td>',
'',
'		<td><b>Resolved Query</b>',
'		</td>',
'',
'        </tr>',
'        <tr>',
'                <td>',
'			<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#3399FF;font-family:Verdana, Geneva, sans-serif"></div>',
'		</td>',
'		<td><b>Closed Query</b>',
'		</td>',
'        </tr>',
'        <tr> ',
'                        <td>',
'			<div id ="legends" style="border:1px solid black;width:10px;height:10px;background-color:#F63;font-family:Verdana, Geneva, sans-serif"></div>',
'		</td>',
'		<td><b>Reopened Query</b>',
'		</td>',
'	</TR>',
'</table>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11055353478978053006)
,p_plug_name=>'Set Item Query_c0'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>109
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_script varchar2(32000);',
'begin',
'  for i in (select item_name,qry_status,4 from  EDC_CRF_QUERIES where qry_status = ''Closed'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'            union',
'            select item_name,qry_status,3 from  EDC_CRF_QUERIES where qry_status = ''Responded'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'            union',
'            select item_name,qry_status,2 from  EDC_CRF_QUERIES where qry_status = ''Reopened'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'            union',
'            select item_name,qry_status,1 from  EDC_CRF_QUERIES where qry_status = ''Open'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'            order by 3 desc',
'           )',
'  loop',
'    if i.qry_status in (''Open'') then',
'        v_script := v_script || ''$("#'' || i.item_name || ''_flag").remove();'';',
'        v_script := v_script || ''$("#'' || i.item_name || ''").after(''''<img id="''||i.item_name||''_flag" src="#APP_IMAGES#Flag_Yellow.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px"  title="Open" />'''');'';',
'    elsif i.qry_status in (''Reopened'') then',
'        v_script := v_script || ''$("#'' || i.item_name || ''_flag").remove();'';',
'        v_script := v_script || ''$("#'' || i.item_name || ''").after(''''<img id="''||i.item_name||''_flag" src="#APP_IMAGES#Flag_orange.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="Reopened" />'''');'';',
'    elsif i.qry_status=''Responded'' then',
'        v_script := v_script || ''$("#'' || i.item_name || ''_flag").remove();'';',
'        v_script := v_script || ''$("#'' || i.item_name || ''").after(''''<img id="''||i.item_name||''_flag" src="#APP_IMAGES#Flag_Green.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="Responded" />'''');'';',
'    elsif i.qry_status=''Closed'' then',
'        v_script := v_script || ''$("#'' || i.item_name || ''_flag").remove();'';',
'        v_script := v_script || ''$("#'' || i.item_name || ''").after(''''<img id="''||i.item_name||''_flag" src="#APP_IMAGES#Flag_blue.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="Closed" />'''');'';',
'    end if;',
'  end loop;',
'',
'  htp.p(''<script>$(function(){'' || v_script ||''});</script>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_PAGE_ID IN (1001)',
'----------------------------',
'declare',
'v_style varchar2(10000);',
'begin',
'  for i in (select item_name,qry_status,4 from  EDC_CRF_QUERIES where qry_status = ''Closed'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'union',
'select item_name,qry_status,2 from  EDC_CRF_QUERIES where qry_status = ''Responded'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'union',
'select item_name,qry_status,3 from  EDC_CRF_QUERIES where qry_status = ''Reopened'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'union',
'select item_name,qry_status,1 from  EDC_CRF_QUERIES where qry_status = ''Open'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'',
'order by 3 desc',
') loop',
'    if i.qry_status in (''Open'') then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:#F44A16 !important;font-weight:bold !important;background-color: yellow !important;}'';',
'  elsif i.qry_status in (''Reopened'') then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:white !important;font-weight:bold !important;background-color: #f63!important;}'';',
'    elsif i.qry_status=''Responded'' then',
'      v_style := v_style || ''label[for="''||i.item_name||''"]{color:white !important;font-weight:bold !important;background-color:#298A08 !important;}'';',
'    elsif i.qry_status=''Closed'' then ',
'        v_style := v_style || ''label[for="''||i.item_name||''"]{color:WHITE !important;font-weight:bold !important;background-color:#3399FF!important;}'';',
'    end if;',
'  end loop;',
'  htp.p(''<style type="text/css">'' || v_style ||''</style>'');',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11046258277478634230)
,p_name=>'P0_STUDY_SITE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11046258875634653020)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Select Site'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.invname d,a.study_site_id r from edc_study_sites a, edc_sites b',
' where a.site_id = b.site_id ',
'   and study_site_id in ',
'case ',
'when :APP_EDC_USER_TYPE = 3 then (select STUDY_SITE_ID from EDC_SITE_CONTACTS where SITE_CONTACT_ID = to_number(:APP_EDC_USER))',
'when :APP_EDC_USER_TYPE = 2 then (select contact_id from EDC_STUDY_CONTACT where study_contact_id =  to_number(:APP_EDC_USER_ID))',
'when :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 6 then (SELECT C.STUDY_SITE_ID FROM EDC_STUDY_SITES C,EDC_STUDY_CONTACT B',
'where c.study_site_id=b.study_contact_id and upper(b.username)=upper(:APP_USER_NAME))',
'',
'/*when :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 6 then (select a.study_site_id from edc_study_sites a, edc_study_contact b where a.user_id = b.contact_id and a.study_id = b.study_id and b.CONTACT_ID = to_number(:APP_EDC_USER)) */',
'else',
'study_site_id',
'end',
'and study_id = :APP_EDC_STUDY_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10545489531520101718)
,p_name=>'redirect to home page if session timeout'
,p_event_sequence=>5
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_STUDY_ID is null and :APP_PAGE_ID NOT IN (101,1,47,67,105)'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10545489894500101718)
,p_event_id=>wwv_flow_imp.id(10545489531520101718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location="f?p=&APP_ID.:1:&SESSION.";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10554119293946539320)
,p_name=>'SET NUMBER FORMAT'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10554119738477539321)
,p_event_id=>wwv_flow_imp.id(10554119293946539320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'   $(".number_field").keydown(function (e) {',
'       // Allow: backspace, delete, tab, escape, enter and .',
'       if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||',
'            // Allow: Ctrl+A, Command+A',
'           (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || ',
'            // Allow: home, end, left, right, down, up',
'           (e.keyCode >= 35 && e.keyCode <= 40)) {',
'                // let it happen, don''t do anything',
'                return;',
'       }',
'       // Ensure that it is a number and stop the keypress',
'       if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {',
'           e.preventDefault();',
'       }',
'   });',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10559485623613233168)
,p_name=>'remove nbsp heaer'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10559485644008233169)
,p_event_id=>wwv_flow_imp.id(10559485623613233168)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#pvl'').find(''div[class="uRegionHeading"]'').remove();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10569551240794190426)
,p_name=>'Add Query - Modal Page(Page 141)'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.add_query,.img_margin'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10569551632936190427)
,p_event_id=>wwv_flow_imp.id(10569551240794190426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10571487887915674385)
,p_name=>'CLEAR IMG BUTTON FOR RADIO GROUP'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_display_when_cond=>'124,81,4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10571488324070674386)
,p_event_id=>wwv_flow_imp.id(10571487887915674385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// CREATED BY Sanjay',
'',
'$(document).ready(function() {',
'',
'$(''.ak02'').click(function(){',
'            var a=$(this).prop(''id'');',
'$(''#''+a).val('''');',
'$(''#''+a).trigger("change");',
'})',
'',
'   $(''.ak01'').click(function(){',
'            var a=$(this).prop(''id'');',
'          //  console.log(a);',
'',
'           $(''#''+a+''0'').prop(''checked'', false);',
'$(''#''+a+''1'').prop(''checked'', false);',
'$(''#''+a+''2'').prop(''checked'', false);',
'$(''#''+a+''3'').prop(''checked'', false);',
'$(''#''+a+''4'').prop(''checked'', false);',
'$(''#''+a+''5'').prop(''checked'', false);',
'$(''#''+a+''6'').prop(''checked'', false);',
'$(''#''+a+''7'').prop(''checked'', false);',
'$(''#''+a+''8'').prop(''checked'', false);',
'$(''#''+a+''9'').prop(''checked'', false);',
'$(''#''+a+''10'').prop(''checked'', false);',
'$(''#''+a+''11'').prop(''checked'', false);',
'var q=a.substr(0,a.length-1);      ',
'$(''#''+q).trigger("change");',
'        })',
'});',
'',
'',
'$(''fieldset .radio_group tbody'').each(function(){',
'',
' var b=$(this).children().find(''input[type="radio"]'').prop(''id'');',
' //console.log(b);',
'b=b.substr(0,b.length-1);',
'var r=$(''<img id="''+b+''" src="#APP_IMAGES#clear.png" class="ak01" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" />'');',
'',
'   $(this).find(''tr:last'').append(r);',
'});',
'',
'',
'$(''.hasDatepicker'').each(function(){',
' var b=$(this).prop(''id'');',
'var c=b.substring(5, 9);',
'',
'var r=$(''<img id="''+b+''" src="#WORKSPACE_IMAGES#clear.png" style="cursor: pointer;vertical-align: middle;margin-left: 4px;" class="ak02" width="23px" title="Clear" />'');',
'',
'   $(this).after(r);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10575521976843987489)
,p_name=>'HIDE CLEAR IMG BUTTON'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10575522441404987490)
,p_event_id=>wwv_flow_imp.id(10575521976843987489)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Created By Akash',
'',
'  $("input:radio").each(function () {',
'            var V_A1=$(this).prop(''id'');',
'',
'if ($(''#''+V_A1).prop(''disabled'')) {',
' var V_B1=V_A1.substr(0,V_A1.length-1);',
'',
'$(''#''+V_B1).hide();',
'                                  }',
'                                     })'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10169551523606136757)
,p_name=>'Ideal Session Warning'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_display_when_cond=>'101,47'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10169551649602136758)
,p_event_id=>wwv_flow_imp.id(10169551523606136757)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKLLBUILDERS_SESSION_TIMEOUT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9540823705861801914)
,p_name=>'Add Query - Modal (Page 124)'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.add_query_link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9540823831318801915)
,p_event_id=>wwv_flow_imp.id(9540823705861801914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8843955870502428178)
,p_name=>'DISABLE RIGHT CLICK'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_ROLE_ID != 13'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8843955906780428179)
,p_event_id=>wwv_flow_imp.id(8843955870502428178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function () {',
'    //Disable mouse right click',
'    $("body").on("contextmenu",function(e){',
'        return false;',
'    });',
'});',
'/*',
'$(document).keydown(function (event) {',
'            if (event.keyCode == 123) {',
'                return false;',
'            }',
'            else if ((event.ctrlKey && event.shiftKey && event.keyCode == 73) || (event.ctrlKey && event.shiftKey && event.keyCode == 74)) {',
'                return false;',
'            }',
'else if (event.ctrlKey) {',
'  return false;',
'  console.log(''its disabled'');',
'}',
'        });*/'))
);
wwv_flow_imp.component_end;
end;
/
