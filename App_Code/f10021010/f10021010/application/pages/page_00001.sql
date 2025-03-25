prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_step_title=>'Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function set_study(pthis) {',
'//  alert (pthis.value);',
'//  document.getElementById("APP_EDC_STUDY_ID").value = pthis.value;',
'  document.getElementById("P1_SELECT_STUDY").value = pthis.value;',
'  apex.submit();',
'//  alert (pthis.value);',
'',
'//  alert (document.getElementById("P1_SELECT_STUDY").value);',
'}',
'',
'$(''table [summary="CRF Section Status"]'').css(''width'',''422px'');'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''table [summary="CRF Section Status"]'').css(''width'',''422px'');',
'$(''.abhi1'').parent().css({"overflow-x":"auto"});'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712609873909814603)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_location=>null
,p_plug_header=>'<div class="abhi1" style="overflow-x: auto;">'
,p_plug_footer=>'</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712609961587814604)
,p_plug_name=>'Total Subject Randomized'
,p_parent_plug_id=>wwv_flow_imp.id(712609873909814603)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:725px"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045181765579407888)
,p_plug_display_sequence=>10
,p_plug_new_grid=>true
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(712610063524814605)
,p_region_id=>wwv_flow_imp.id(712609961587814604)
,p_chart_type=>'funnel'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_value_format_scaling=>'auto'
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(712610189301814606)
,p_chart_id=>wwv_flow_imp.id(712610063524814605)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH  FINAL_OUT AS (',
'    SELECT',
'        ( SELECT TOT_PATIENTS VALUE FROM EDC_STUDY )AS MAX_VAL,',
'        ( SELECT COUNT(PATIENT_PROFILE_ID) MAX_VALUE FROM EDC_PATIENT_PROFILE WHERE STATUS >= 3 )    AS VAL',
'    FROM',
'        DUAL',
'                 ),',
'   FINAL_QRY AS (SELECT',
'            MAX_VAL,VAL , ''Total Randomized'' AS LBL',
'        FROM',
'            FINAL_OUT',
'        UNION',
'            SELECT ARM_CAP AS MAX_VAL ,',
'                (SELECT COUNT(PF.PATIENT_PROFILE_ID) MAX_VALUE FROM EDC_PATIENT_PROFILE PF WHERE PF.STUDY_ARM_ID = A.STUDY_ARM_ID) AS VAL',
'                , DESCRIPTION AS LBL',
'            FROM EDC_STUDY_ARM A ',
'                 )',
'SELECT ',
'MAX_VAL, VAL, LBL, ',
'DECODE(TRIM(LBL),''Placebo'',''#791b19'',''Test Arm'',''#92817E'',''Reference Arm'',''#4CB4EB'',''Total Randomized'',''#68FF00'') AS COLOR_CODE',
'FROM FINAL_QRY'))
,p_items_value_column_name=>'VAL'
,p_items_target_value=>'MAX_VAL'
,p_items_label_column_name=>'LBL'
,p_color=>'&COLOR_CODE.'
,p_items_label_rendered=>false
,p_link_target=>'javascript:$s("P1_SERIES",''&LBL. Current: &VAL., Target: &MAX_VAL.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712610531825814610)
,p_plug_name=>'Total Kits'
,p_region_name=>'asd'
,p_parent_plug_id=>wwv_flow_imp.id(712609873909814603)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:725px"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045181765579407888)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(712610626667814611)
,p_region_id=>wwv_flow_imp.id(712610531825814610)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(712610792894814612)
,p_chart_id=>wwv_flow_imp.id(712610626667814611)
,p_seq=>10
,p_name=>'KIT VALUES'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT IP_STATUS, COUNT(*) AS CNT , ',
'        DECODE(NVL(IP_STATUS,1),1,''Received at Depot'',',
'                                3,''Received at Site'') AS LBL,',
'        DECODE(NVL(IP_STATUS,1),1,''red'',3,''green'') SERIES_COLORS',
'    FROM EDC_IP_DETAIL ',
'    WHERE STUDY_SITE_ID = NVL(:P1_ST_ID_KIT,STUDY_SITE_ID)',
'    AND (IP_STATUS = 3)',
' GROUP BY IP_STATUS',
'UNION',
'SELECT 1, COUNT(*) AS CNT , ',
'        ''Received at Depot'' AS LBL ,',
'        ''red'' SERIES_COLORS ',
'    FROM EDC_IP_DETAIL',
'    WHERE (IP_STATUS IS NULL OR IP_STATUS = 1);'))
,p_ajax_items_to_submit=>'P1_ST_ID_KIT'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'LBL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(712610968299814614)
,p_chart_id=>wwv_flow_imp.id(712610626667814611)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(712610859647814613)
,p_chart_id=>wwv_flow_imp.id(712610626667814611)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712611114459814616)
,p_plug_name=>'Site Name(s)'
,p_parent_plug_id=>wwv_flow_imp.id(712609873909814603)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(712611231504814617)
,p_region_id=>wwv_flow_imp.id(712611114459814616)
,p_chart_type=>'pie'
,p_height=>'430'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_min=>0
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'    // Add new 3D effect to existing chart style defaults   ',
'    options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(712611302670814618)
,p_chart_id=>wwv_flow_imp.id(712611231504814617)
,p_seq=>10
,p_name=>'Site Name(s)'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.STUDY_SITE_ID ,A.SITE_NUMBER || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || B.INVNAME || '')'' NAME',
'     , A.STUDY_SITE_ID ST_ID',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND A.STATUS = 3',
'   AND  A.STUDY_SITE_ID IN(SELECT UNIQUE PF.STUDY_SITE_ID FROM EDC_PATIENT_PROFILE PF)',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' ORDER BY 1'))
,p_items_value_column_name=>'ST_ID'
,p_items_label_column_name=>'NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_link_target=>'javascript:$s(''P1_ST_ID'',&ST_ID.);'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(712611785155814622)
,p_plug_name=>'Kit Status Chart'
,p_parent_plug_id=>wwv_flow_imp.id(712609873909814603)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(712611899147814623)
,p_region_id=>wwv_flow_imp.id(712611785155814622)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(712611997238814624)
,p_chart_id=>wwv_flow_imp.id(712611899147814623)
,p_seq=>10
,p_name=>'Kit Site Name(s)'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT IP_STATUS, COUNT(*) AS CNT , ',
'        DECODE(NVL(IP_STATUS,1),1,''Received at Depot'',',
'                                2,''Dispatched to Site'',',
'                                3,''Received at Site'',',
'                                4,''Dispensed to Subject'',',
'                                24,''Retention at Depot'') AS LBL',
'    FROM EDC_IP_DETAIL ',
'    WHERE STUDY_SITE_ID = :P1_ST_ID',
'    AND NVL(IP_STATUS,1) IN(1,2,3,4,24)',
' GROUP BY IP_STATUS'))
,p_ajax_items_to_submit=>'P1_ST_ID'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'LBL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(712612172841814626)
,p_chart_id=>wwv_flow_imp.id(712611899147814623)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(712612062747814625)
,p_chart_id=>wwv_flow_imp.id(712611899147814623)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2009248821301856285)
,p_plug_name=>'Kit Inventory at Site'
,p_parent_plug_id=>wwv_flow_imp.id(712609873909814603)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045179371360407886)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'APP_EDC_USER_TYPE'
,p_plug_display_when_cond2=>'2:3'
,p_plug_header=>'<div class="abhi1" style="overflow-x: auto;">'
,p_plug_footer=>'</div>'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_USER_TYPE = 1',
'AND :APP_EDC_ROLE_ID NOT IN (20, 16, 17 /* Spnsor, CRC, CRA*/)'))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2009248976380856287)
,p_region_id=>wwv_flow_imp.id(2009248821301856285)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2009249096506856288)
,p_chart_id=>wwv_flow_imp.id(2009248976380856287)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null,',
'       b.site_number||'' Dr. ''||(SELECT REPLACE(USERNAME,''.'','' '') FROM EDC_STUDY_CONTACT WHERE CONTACT_ROLE = 15 AND CONTACT_ID = b.study_site_id) LABEL,',
'       count(*) VALUE',
'  from edc_ip_detail a',
'     , edc_study_sites b',
'     , edc_sites c',
' where a.study_site_id = b.study_site_id',
'   and b.site_id = c.site_id',
'   and ip_status = 3',
'   and a.study_site_id is not null',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID, A.STUDY_DEPOT_ID) = 1',
' group by b.site_number, b.study_site_id/*',
' union all',
'SELECT NULL',
'     , CRO_IWRS_PKG.GET_DEPOT_DTL(STUDY_DEPOT_ID)||'' - Depot'' LABEL',
'     , COUNT(*) VALUE',
'  FROM EDC_IP_DETAIL',
' WHERE NVL(IP_STATUS,1) = 1',
'   AND (:APP_EDC_ROLE_ID IN (9, 10, 11, 12, 13, 18, 20, 22,25,19,17,28,27,23, 30)) -- Admin, DM, Sponsor, Safety',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(COUNTRY_ID) = 1',
' GROUP BY CRO_IWRS_PKG.GET_DEPOT_DTL(STUDY_DEPOT_ID, STUDY_DEPOT_ID)',
' ORDER BY 2*/'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_color=>'#D494D4'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2009249322802856290)
,p_chart_id=>wwv_flow_imp.id(2009248976380856287)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2009249165883856289)
,p_chart_id=>wwv_flow_imp.id(2009248976380856287)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2449781446232796272)
,p_plug_name=>'Subject Status'
,p_region_name=>'swsp'
,p_parent_plug_id=>wwv_flow_imp.id(712609873909814603)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045179371360407886)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'APP_EDC_USER_TYPE'
,p_plug_display_when_cond2=>'2:3'
,p_plug_header=>'<div id="abhi1" style="overflow-x: auto;">'
,p_plug_footer=>'</div>'
,p_plug_comment=>'<div id="abhi1" style="width: 1550px; overflow-x: auto;">'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2449781762116796275)
,p_region_id=>wwv_flow_imp.id(2449781446232796272)
,p_chart_type=>'bar'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2449781849616796276)
,p_chart_id=>wwv_flow_imp.id(2449781762116796275)
,p_seq=>10
,p_name=>'Total Subjects'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with qry as (',
'select --''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID  link,',
'       NULL AS LINK,',
'       a.site_number label, ',
'       count(b.patient_profile_id) value,',
'       a.study_site_id ',
'  from edc_study_sites a,edc_patient_profile b',
' where a.study_site_id = b.study_site_id(+)',
'   AND B.DELETE_STATUS = 0',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS((SELECT COUNTRY_ID FROM EDC_SITES C WHERE C.SITE_ID = A.SITE_ID)) = 1',
' group by ''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID , a.site_number, a.study_site_id',
' order by 2',
' )',
' select link, ',
' label||'' Dr. ''||(SELECT REPLACE(USERNAME,''.'','' '') FROM EDC_STUDY_CONTACT WHERE CONTACT_ROLE = 15 AND CONTACT_ID = a.study_site_id) label, ',
' value ',
' from qry a, edc_study_sites b',
' where a.study_site_id = b.study_site_id'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2449782133418796279)
,p_chart_id=>wwv_flow_imp.id(2449781762116796275)
,p_seq=>20
,p_name=>'Total Randomized'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with qry as (',
'select --''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID  link,',
'       NULL AS LINK,',
'       a.site_number label, ',
'       count(b.patient_profile_id) value,',
'       a.study_site_id ',
'  from edc_study_sites a,edc_patient_profile b',
' where a.study_site_id = b.study_site_id(+)',
'   AND B.RANDOMNO IS NOT NULL',
'   AND B.DELETE_STATUS = 0',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS((SELECT COUNTRY_ID FROM EDC_SITES C WHERE C.SITE_ID = A.SITE_ID)) = 1',
' group by ''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID , a.site_number, a.study_site_id',
' order by 2',
' )',
' select link, ',
' label||'' Dr. ''||(SELECT REPLACE(USERNAME,''.'','' '') FROM EDC_STUDY_CONTACT WHERE CONTACT_ROLE = 15 AND CONTACT_ID = a.study_site_id) label, ',
' value ',
' from qry a, edc_study_sites b',
' where a.study_site_id = b.study_site_id'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2449782469120796282)
,p_chart_id=>wwv_flow_imp.id(2449781762116796275)
,p_seq=>30
,p_name=>'Withdrawn/Discontinued/Lost To Follow up'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with qry as (',
'select --''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID  link,',
'       NULL AS LINK,',
'       a.site_number label, ',
'       count(b.patient_profile_id) value,',
'       a.study_site_id ',
'  from edc_study_sites a,edc_patient_profile b',
' where a.study_site_id = b.study_site_id(+)',
'   AND B.STATUS IN (4,6)',
'   AND B.DELETE_STATUS = 0',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS((SELECT COUNTRY_ID FROM EDC_SITES C WHERE C.SITE_ID = A.SITE_ID)) = 1',
' group by ''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID , a.site_number, a.study_site_id',
' order by 2',
' )',
' select link, ',
' label||'' Dr. ''||(SELECT REPLACE(USERNAME,''.'','' '') FROM EDC_STUDY_CONTACT WHERE CONTACT_ROLE = 15 AND CONTACT_ID = a.study_site_id) label, ',
' value ',
' from qry a, edc_study_sites b',
' where a.study_site_id = b.study_site_id'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2449782361100796281)
,p_chart_id=>wwv_flow_imp.id(2449781762116796275)
,p_seq=>50
,p_name=>'Completed'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with qry as (',
'select --''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID  link,',
'       NULL AS LINK,',
'       a.site_number label, ',
'       count(b.patient_profile_id) value,',
'       a.study_site_id ',
'  from edc_study_sites a,edc_patient_profile b',
' where a.study_site_id = b.study_site_id(+)',
'   AND B.STATUS = 5',
'   AND B.DELETE_STATUS = 0',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS((SELECT COUNTRY_ID FROM EDC_SITES C WHERE C.SITE_ID = A.SITE_ID)) = 1',
' group by ''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID , a.site_number, a.study_site_id',
' order by 2',
' )',
' select link, ',
' label||'' Dr. ''||(SELECT REPLACE(USERNAME,''.'','' '') FROM EDC_STUDY_CONTACT WHERE CONTACT_ROLE = 15 AND CONTACT_ID = a.study_site_id) label, ',
' value ',
' from qry a, edc_study_sites b',
' where a.study_site_id = b.study_site_id'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2449782226663796280)
,p_chart_id=>wwv_flow_imp.id(2449781762116796275)
,p_seq=>60
,p_name=>'Screen Failed'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with qry as (',
'select --''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID  link,',
'       NULL AS LINK,',
'       a.site_number label, ',
'       count(b.patient_profile_id) value,',
'       a.study_site_id ',
'  from edc_study_sites a,edc_patient_profile b',
' where a.study_site_id = b.study_site_id(+)',
'   AND B.STATUS = 2',
'   AND B.DELETE_STATUS = 0',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS((SELECT COUNTRY_ID FROM EDC_SITES C WHERE C.SITE_ID = A.SITE_ID)) = 1',
' group by ''f?p=&APP_ID.:17:''||:APP_SESSION||''::NO::P17_STUDY_SITE_ID:''||a.STUDY_SITE_ID , a.site_number, a.study_site_id',
' order by 2',
' )',
' select link, ',
' label||'' Dr. ''||(SELECT REPLACE(USERNAME,''.'','' '') FROM EDC_STUDY_CONTACT WHERE CONTACT_ROLE = 15 AND CONTACT_ID = a.study_site_id) label, ',
' value ',
' from qry a, edc_study_sites b',
' where a.study_site_id = b.study_site_id'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2449781995208796277)
,p_chart_id=>wwv_flow_imp.id(2449781762116796275)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2449782028573796278)
,p_chart_id=>wwv_flow_imp.id(2449781762116796275)
,p_axis=>'y'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1192127290306457727)
,p_plug_name=>'Feedback Tickets Dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'UPPER(:APP_USER_NAME) IN(''KRUNAL.BHATT'',''AVINASH'',''NAFISA.KATHIWALA'',''MILAN.KADIA'',''ARUN.JANARDHANAN'') AND :APP_EDC_ROLE_ID = 13'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1192127370760457728)
,p_plug_name=>'Ticket Dash board'
,p_parent_plug_id=>wwv_flow_imp.id(1192127290306457727)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180572024407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value,STORED_VALUE ,',
'(select nvl(count(a.STATUS),0) as count_sttus',
'from EDC_USER_FEEDBACK a',
'WHERE ((:APP_EDC_ROLE_ID = 16 AND UPPER(:APP_USER) = UPPER(CREATED_BY)) OR :APP_EDC_ROLE_ID != 16)',
'and a.STATUS=STORED_VALUE',
') as cnt,',
'''Click Me'' as link',
'from EDC_LOV a,EDC_LOV_VALUES B',
'WHERE A.LOV_ID=B.LOV_ID ',
'AND A.LOV_NAME=''EDC_FEEDBACK_STATUS''',
'and STORED_VALUE IN (''1'',''2'',''3'',''4'',''5'')',
'union',
'select ''Status is not mentioned'' as display_value ,''0'' as STORED_VALUE, count(*) as count_sttus , ''Click Me'' as link',
'from EDC_USER_FEEDBACK a',
'WHERE ((:APP_EDC_ROLE_ID = 16 AND UPPER(:APP_USER) = UPPER(CREATED_BY)) OR :APP_EDC_ROLE_ID != 16)',
'and a.status is null',
'order by stored_value;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1192127481077457729)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MILAN.KADIA'
,p_internal_uid=>215148083928499525
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192127555184457730)
,p_db_column_name=>'DISPLAY_VALUE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ticket Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192127623595457731)
,p_db_column_name=>'STORED_VALUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Stored value'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192127767038457732)
,p_db_column_name=>'CNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Count Of Tickets'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192127891330457733)
,p_db_column_name=>'LINK'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Redirection'
,p_column_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:RP:P78_STATUS:#STORED_VALUE#'
,p_column_linktext=>'#LINK#'
,p_column_link_attr=>'#LINK#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1192812749540455811)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2158334'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'DISPLAY_VALUE:STORED_VALUE:CNT:LINK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1192128198754457737)
,p_plug_name=>'Shipment Request Approval/Rejection Reminder'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':APP_EDC_ROLE_ID in (13,19)'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1192128324819457738)
,p_plug_name=>'Pending Requests'
,p_parent_plug_id=>wwv_flow_imp.id(1192128198754457737)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180572024407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Shipment Request : '' as task_todo',
'       , sr_id D',
'       , SHIPMENT_NO R ',
'       , FUN_BUN(study_site_id,:APP_EDC_STUDY_ID) as SITES',
'       , ''<a href='''''' || APEX_UTIL.PREPARE_URL(''f?p=&APP_ID.:40:&SESSION.::NO:RP,40:P40_SR_ID:''||sr_id) || ''''''>''||sr_id||''</a>'' AS LINK',
'       from edc_ip_shipment_req G',
' where pm_approved is null',
' AND REQUEST_STATUS IS NOT NULL',
'UNION ALL',
'select ''Delivery to Site Request : '' as task_todo',
'      , SHIP_ID D',
'      , SHIP_NO R',
'      , FUN_BUN(A.study_site_id,:APP_EDC_STUDY_ID) as SITES',
'      , ''<a href='''''' || APEX_UTIL.PREPARE_URL(''f?p=&APP_ID.:372:&SESSION.::NO:RP,372:P372_SHIP_ID:''|| A.SHIP_ID) || ''''''>''||A.SHIP_NO||''</a>'' AS LINK',
'  from EDC_IP_SHIPMENT A',
'  JOIN EDC_STUDY_SITES B',
'    ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'  JOIN EDC_SITES C',
'    ON B.SITE_ID = C.SITE_ID',
'   AND B.STUDY_ID = NVL(:P371_STUDY_ID, :APP_EDC_STUDY_ID)',
'   AND A.SHIP_TYPE = 1',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID, A.STUDY_DEPOT_ID) = 1',
'  AND nvl(SHIP_STATUS,''Shipment Created'') = ''Shipment Created''',
'  AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'  AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID, A.STUDY_DEPOT_ID) = 1',
'-- ORDER BY SHIP_ID;',
'UNION ALL',
'select ''Received at Site Request : '' as task_todo',
'      , A.SHIP_ID D',
'      , SHIP_NO R',
'      , FUN_BUN(A.study_site_id,:APP_EDC_STUDY_ID) as SITES',
'      , ''<a href='''''' || APEX_UTIL.PREPARE_URL(''f?p=&APP_ID.:205:&SESSION.::NO:RP,205:P205_SHIP_ID:''|| A.SHIP_ID) || ''''''>''||A.SHIP_NO||''</a>'' AS LINK',
'  from EDC_IP_SHIPMENT A',
'  JOIN EDC_STUDY_SITES B',
'    ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'  JOIN EDC_SITES C',
'    ON B.SITE_ID = C.SITE_ID',
'   AND B.STUDY_ID = NVL(:P0_STUDY_ID,:APP_EDC_STUDY_ID)',
'   AND A.SHIP_TYPE = 1',
'  -- and SHIP_STATUS in (''Quarantined'', ''Dispatched'', ''Delivered'')',
'   and edc_user.get_user_site_access(a.study_site_id,:APP_EDC_USER_TYPE,:APP_EDC_USER,:APP_EDC_USER_ID,:APP_USER_NAME,:APP_EDC_ROLE_ID) = 1',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID) = 1',
'   AND ((A.SHIP_STATUS = ''Dispatched'' or A.SHIP_STATUS = ''Quarantined'') AND SHIP_REC_DT IS NULL)',
'--ORDER BY SHIP_ID',
'UNION ALL',
'select ''Delivery to Depot Request : '' as task_todo',
'      , SHIP_ID D',
'      , SHIP_NO R',
'      , FUN_BUN(A.study_site_id,:APP_EDC_STUDY_ID) as SITES',
'      , ''<a href='''''' || APEX_UTIL.PREPARE_URL(''f?p=&APP_ID.:207:&SESSION.::NO:RP,207:P207_SHIP_ID:''|| A.SHIP_ID) || ''''''>''||A.SHIP_NO||''</a>'' AS LINK',
'from EDC_IP_SHIPMENT A',
'JOIN EDC_STUDY_SITES B',
'  ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'JOIN EDC_SITES C',
'  ON B.SITE_ID = C.SITE_ID',
' AND B.STUDY_ID = NVL(:P0_STUDY_ID,:APP_EDC_STUDY_ID)',
' AND A.SHIP_TYPE = 2',
'--and edc_user.get_user_site_access(study_site_id,:APP_EDC_USER_TYPE,:APP_EDC_USER,:APP_EDC_USER_ID,:APP_USER_NAME,:APP_EDC_ROLE_ID) = 1',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID) = 1',
'   AND nvl(SHIP_STATUS,''Shipment Created'') = ''Shipment Created''',
'--ORDER BY SHIP_ID',
'UNION ALL',
'select  ''Received at Depot Request : '' as task_todo',
'      , SHIP_ID D',
'      , SHIP_NO R',
'      , FUN_BUN(A.study_site_id,:APP_EDC_STUDY_ID) as SITES',
'      , ''<a href='''''' || APEX_UTIL.PREPARE_URL(''f?p=&APP_ID.:381:&SESSION.::NO:RP,381:P381_SHIP_ID:''|| A.SHIP_ID) || ''''''>''||A.SHIP_NO||''</a>'' AS LINK',
'from EDC_IP_SHIPMENT A',
'JOIN EDC_STUDY_SITES B',
'  ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'JOIN EDC_SITES C',
'  ON B.SITE_ID = C.SITE_ID',
' AND A.SHIP_TYPE = 2 ',
' AND B.STUDY_ID = NVL(:P0_STUDY_ID,:APP_EDC_STUDY_ID)',
' AND SHIP_STATUS in (''Dispatched'')',
'--  AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID) = 1',
'ORDER BY D;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1192128407169457739)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MILAN.KADIA'
,p_internal_uid=>215149010020499535
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192128578654457740)
,p_db_column_name=>'TASK_TODO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Pending Tasks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192128795678457742)
,p_db_column_name=>'R'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Shipment/Kit Request Number'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192128681683457741)
,p_db_column_name=>'D'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Redirection'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192128984963457744)
,p_db_column_name=>'LINK'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Shipment/Kit Request Number'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1192128839568457743)
,p_db_column_name=>'SITES'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Sites'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1192824025412512894)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2158447'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TASK_TODO:D:R:SITES:LINK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2006599704293281518)
,p_plug_name=>'Study Status'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045179371360407886)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY_2'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'APP_EDC_USER_TYPE'
,p_plug_display_when_cond2=>'2:3'
,p_plug_header=>'<div id="abhi1" style="overflow-x: auto;">'
,p_plug_footer=>'</div>'
,p_plug_comment=>'item is not in colon delimited list : APP_EDC_USER_TYPE : 2:3'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2006599839351281519)
,p_region_id=>wwv_flow_imp.id(2006599704293281518)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'',
'  // Setup a callback function which gets called when data is retrieved, it allows to manipulate the series',
'  options.dataFilter = function( data ) {',
'',
'  data.series[ 0 ].items[0].color = "#00CED1";',
'',
'  data.series[ 0 ].items[1].color = "#32CD32";',
'',
'  data.series [0 ].items[2].color = "gold";',
'',
'  data.series[ 0 ].items[3].color = "#FF001A";',
'',
'  data.series[ 0 ].items[4].color = "#C937F6";',
'',
'  data.series[ 0 ].items[5].color = "#969DFD";',
'      ',
'  data.series[ 0 ].items[6].color = "#FFB6C1";',
'      ',
'  data.series[ 0 ].items[7].color = "#BDB76B";',
'      ',
'  data.series[ 0 ].items[8].color = "#F6780A";',
'      ',
'  data.series[ 0 ].items[9].color = "#A6A6A5";',
'',
'  return data;',
'',
'  };',
'',
'  // Set chart initialization options',
'',
'  return options;',
'',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2006599955113281520)
,p_chart_id=>wwv_flow_imp.id(2006599839351281519)
,p_seq=>10
,p_name=>'Total Subjects'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(''1'') "ORD", ''Total Screened'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND (A.STATUS = 1 or A.STATUS >= 1)',
'UNION',
'SELECT TO_NUMBER(''2'') "ORD", ''Total Randomized'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND RANDOMNO IS NOT NULL',
'AND A.STATUS >= 3',
'UNION',
'SELECT TO_NUMBER(''3'') "ORD", ''Screened'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND (A.STATUS = 1)',
'UNION',
'SELECT TO_NUMBER(''4'') "ORD", ''Screen Failed'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND A.STATUS = 2',
'UNION',
'SELECT TO_NUMBER(''5'') "ORD", ''Randomized'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND RANDOMNO IS NOT NULL',
'AND A.STATUS = 3',
'UNION',
'SELECT TO_NUMBER(''6'') "ORD", ''Discontinued'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND A.STATUS = 4',
'UNION',
'SELECT TO_NUMBER(''7'') "ORD", ''Consent Withdrawn'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND A.STATUS = 5',
'UNION',
'SELECT TO_NUMBER(''8'') "ORD", ''Lost To Follow up'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND A.STATUS = 6',
'UNION',
'SELECT TO_NUMBER(''9'') "ORD", ''EOT Completed'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND A.STATUS = 8',
'UNION',
'SELECT TO_NUMBER(''10'') "ORD", ''EOS Completed'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL_1,A.STUDY_SITE_ID)',
'AND A.STATUS = 10',
'ORDER BY 1'))
,p_ajax_items_to_submit=>'P1_STUDY_SITE_VAL_1'
,p_items_value_column_name=>'VAL'
,p_items_label_column_name=>'STATUS'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2006600124953281522)
,p_chart_id=>wwv_flow_imp.id(2006599839351281519)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2006599999145281521)
,p_chart_id=>wwv_flow_imp.id(2006599839351281519)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2449628077631048021)
,p_plug_name=>'Kit Inventory at Depot'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045179371360407886)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY_2'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'APP_EDC_USER_TYPE'
,p_plug_display_when_cond2=>'2:3'
,p_plug_header=>'<div class="abhi1" style="overflow-x: auto;">'
,p_plug_footer=>'</div>'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_USER_TYPE = 1',
'AND :APP_EDC_ROLE_ID NOT IN (20, 16, 17 /* Spnsor, CRC, CRA*/)'))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2450083226357069172)
,p_region_id=>wwv_flow_imp.id(2449628077631048021)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2450083342943069173)
,p_chart_id=>wwv_flow_imp.id(2450083226357069172)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select null,',
'       b.site_number||'' Dr. ''||(SELECT REPLACE(USERNAME,''.'','' '') FROM EDC_STUDY_CONTACT WHERE CONTACT_ROLE = 15 AND CONTACT_ID = b.study_site_id) LABEL,',
'       count(*) VALUE',
'  from edc_ip_detail a',
'     , edc_study_sites b',
'     , edc_sites c',
' where a.study_site_id = b.study_site_id',
'   and b.site_id = c.site_id',
'   and ip_status = 3',
'   and a.study_site_id is not null',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(C.COUNTRY_ID, A.STUDY_DEPOT_ID) = 1',
' group by b.site_number, b.study_site_id',
' union all*/',
'SELECT NULL',
'     , CRO_IWRS_PKG.GET_DEPOT_DTL(STUDY_DEPOT_ID)||'' - Depot'' LABEL',
'     , COUNT(*) VALUE',
'  FROM EDC_IP_DETAIL',
' WHERE NVL(IP_STATUS,1) = 1',
'   AND (:APP_EDC_ROLE_ID IN (9, 10, 11, 12, 13, 18, 20, 22,25,19,17,28,27,23, 30,33,34)) -- Admin, DM, Sponsor, Safety',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(COUNTRY_ID, STUDY_DEPOT_ID) = 1',
' GROUP BY CRO_IWRS_PKG.GET_DEPOT_DTL(STUDY_DEPOT_ID)',
' ORDER BY 2'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_color=>'#9FA7D1'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2450083555200069175)
,p_chart_id=>wwv_flow_imp.id(2450083226357069172)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2450083466698069174)
,p_chart_id=>wwv_flow_imp.id(2450083226357069172)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2449927524777592872)
,p_plug_name=>'Study Status'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045179371360407886)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_2'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'APP_EDC_USER_TYPE'
,p_plug_display_when_cond2=>'2:3'
,p_plug_header=>'<div class="abhi1" style="overflow-x: auto;">'
,p_plug_footer=>'</div>'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'item is not in colon delimited list : APP_EDC_USER_TYPE : 2:3',
'',
'/',
'<div id="abhi1" style="overflow-x: auto;">',
'',
'</div>',
'',
'',
'',
'SELECT TO_NUMBER(''1'') "ORD", ''Total Screened'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND (A.STATUS = 1 or A.STATUS >= 1)',
'UNION',
'SELECT TO_NUMBER(''2'') "ORD", ''Total Randomized'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND RANDOMNO IS NOT NULL',
'AND A.STATUS >= 3',
'UNION',
'SELECT TO_NUMBER(''3'') "ORD", ''Screened'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND (A.STATUS = 1)',
'UNION',
'SELECT TO_NUMBER(''4'') "ORD", ''Screen Failed'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 2',
'UNION',
'SELECT TO_NUMBER(''5'') "ORD", ''Randomized'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND RANDOMNO IS NOT NULL',
'AND A.STATUS = 3',
'UNION',
'SELECT TO_NUMBER(''6'') "ORD", ''Discontinued'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 4',
'UNION',
'SELECT TO_NUMBER(''7'') "ORD", ''Withdrawn'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 5',
'UNION',
'SELECT TO_NUMBER(''8'') "ORD", ''Lost To Follow up'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 6',
'UNION',
'SELECT TO_NUMBER(''9'') "ORD", ''EOT Completed'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 8',
'UNION',
'SELECT TO_NUMBER(''10'') "ORD", ''Unblinded'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 9',
'ORDER BY 1'))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2449927630571592873)
,p_region_id=>wwv_flow_imp.id(2449927524777592872)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'',
'  // Setup a callback function which gets called when data is retrieved, it allows to manipulate the series',
'  options.dataFilter = function( data ) {',
'',
'  data.series[ 0 ].items[0].color = "#00CED1";',
'',
'  data.series[ 0 ].items[1].color = "#32CD32";',
'',
'  data.series [0 ].items[2].color = "gold";',
'',
'  data.series[ 0 ].items[3].color = "#FF001A";',
'',
'  data.series[ 0 ].items[4].color = "#C937F6";',
'',
'  data.series[ 0 ].items[5].color = "#969DFD";',
'      ',
'  data.series[ 0 ].items[6].color = "#FFB6C1";',
'      ',
'  data.series[ 0 ].items[7].color = "#BDB76B";',
'      ',
'  data.series[ 0 ].items[8].color = "#F6780A";',
'      ',
'  data.series[ 0 ].items[9].color = "#A6A6A5";',
'',
'  return data;',
'',
'  };',
'',
'  // Set chart initialization options',
'',
'  return options;',
'',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2449927732635592874)
,p_chart_id=>wwv_flow_imp.id(2449927630571592873)
,p_seq=>10
,p_name=>'Study Status'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(''1'') "ORD", ''Total Screened'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND (A.STATUS = 1 or A.STATUS >= 1)',
'UNION',
'SELECT TO_NUMBER(''2'') "ORD", ''Total Randomized'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND RANDOMNO IS NOT NULL',
'AND A.STATUS >= 3',
'UNION',
'SELECT TO_NUMBER(''3'') "ORD", ''Screened'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND (A.STATUS = 1)',
'UNION',
'SELECT TO_NUMBER(''4'') "ORD", ''Screen Failed'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 2',
'UNION',
'SELECT TO_NUMBER(''5'') "ORD", ''Randomized'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND RANDOMNO IS NOT NULL',
'AND A.STATUS = 3',
'UNION',
'SELECT TO_NUMBER(''6'') "ORD", ''Discontinued'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 4',
'UNION',
'SELECT TO_NUMBER(''7'') "ORD", ''Consent Withdrawn'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 5',
'UNION',
'SELECT TO_NUMBER(''8'') "ORD", ''Lost To Follow up'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 6',
'UNION',
'SELECT TO_NUMBER(''9'') "ORD", ''EOT Completed'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 8',
'UNION',
'SELECT TO_NUMBER(''10'') "ORD", ''EOS Completed'' "STATUS", COUNT(1) VAL',
'FROM EDC_PATIENT_PROFILE A',
'WHERE EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'AND A.STUDY_SITE_ID = NVL(:P1_STUDY_SITE_VAL,A.STUDY_SITE_ID)',
'AND A.STATUS = 10',
'ORDER BY 1'))
,p_ajax_items_to_submit=>'P1_STUDY_SITE_VAL'
,p_items_value_column_name=>'VAL'
,p_items_label_column_name=>'STATUS'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2449928370238592880)
,p_chart_id=>wwv_flow_imp.id(2449927630571592873)
,p_axis=>'y'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2449928224050592879)
,p_chart_id=>wwv_flow_imp.id(2449927630571592873)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6655780710736769570)
,p_name=>'Pending Randomization Request'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style = "width:400px;margin-right:20px;display: none;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.patient_profile_id,b.patient_visit_id,a.ptintl,a.scrno,c.gender,c.age',
' from edc_patient_profile a, edc_patient_visit b,iwrs_Crf_dm c',
' where a.patient_profile_id = b.patient_profile_id',
'   and b.patient_visit_id = c.patient_visit_id',
'   and b.param_id = 1',
'   and pm_notified = 1 ',
'   and pm_approved is null'))
,p_display_when_condition=>':APP_EDC_ROLE_ID in (13,19)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Pending Request'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655781305223769575)
,p_query_column_id=>1
,p_column_alias=>'PATIENT_PROFILE_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655781327700769576)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_VISIT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:RP:APP_EDC_PATIENT_VISIT_ID,P37_PATIENT_PROFILE_ID:#PATIENT_VISIT_ID#,#PATIENT_PROFILE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655781419369769577)
,p_query_column_id=>3
,p_column_alias=>'PTINTL'
,p_column_display_sequence=>3
,p_column_heading=>'Initial'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655781573487769578)
,p_query_column_id=>4
,p_column_alias=>'SCRNO'
,p_column_display_sequence=>4
,p_column_heading=>'Screening No.'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655781679312769579)
,p_query_column_id=>5
,p_column_alias=>'GENDER'
,p_column_display_sequence=>5
,p_column_heading=>'Gender'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655781787490769580)
,p_query_column_id=>6
,p_column_alias=>'AGE'
,p_column_display_sequence=>6
,p_column_heading=>'Age'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6655781902462769581)
,p_name=>'Pending Replacement Request'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style = "width:400px;margin-right:20px;display: none;"'
,p_new_grid_row=>false
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.patient_profile_id,b.patient_visit_id,a.ptintl,a.scrno,a.randomno',
' from edc_patient_profile a, edc_patient_visit b,iwrs_Crf_dm c',
' where a.patient_profile_id = b.patient_profile_id',
'   and b.patient_visit_id = c.patient_visit_id',
'   and c.rplc_flg = ''R''',
'   AND a.STATUS = 3'))
,p_display_when_condition=>':APP_EDC_ROLE_ID in (13,19)'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Pending Request'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655782353230769586)
,p_query_column_id=>1
,p_column_alias=>'PATIENT_PROFILE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:RP:APP_EDC_PATIENT_VISIT_ID,P37_PATIENT_PROFILE_ID:#PATIENT_VISIT_ID#,#PATIENT_PROFILE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655782438265769587)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_VISIT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Visit'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'select visit_title d,patient_visit_id r from edc_patient_visit'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655782567432769588)
,p_query_column_id=>3
,p_column_alias=>'PTINTL'
,p_column_display_sequence=>3
,p_column_heading=>'Initial'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655782657545769589)
,p_query_column_id=>4
,p_column_alias=>'SCRNO'
,p_column_display_sequence=>4
,p_column_heading=>'Screening No.'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6655782932008769592)
,p_query_column_id=>5
,p_column_alias=>'RANDOMNO'
,p_column_display_sequence=>5
,p_column_heading=>'Randomization No.'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10176203146866222692)
,p_plug_name=>'Charts'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_2'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045331057649844546)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11045926857762212960)
,p_name=>'Study Details'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>11
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_display_point=>'BODY_2'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.protocol_number,',
'        a.sponsor_id,',
'        a.title, ',
'        cro_study_pkg.get_indication(a.therapeutic_area) therapeutic_area,',
'        replace(cro_study_pkg.get_indication(a.STUDY_INDICATION),''<br/>'','''') STUDY_INDICATION,',
'        CRO_STUDY_PKG.GET_PM_NAMESFROMCSV(a.pm_id) pm_id,',
'        (select count(study_site_id) from edc_study_sites ss where ss.study_id = a.study_id) study_site_id',
'        ,NO_OF_SITES,',
'        a.study_id,',
'        a.study_id study_disp',
'  from edc_study a',
' where a.study_id = nvl(:P1_SELECT_STUDY,:APP_EDC_STUDY_ID)'))
,p_display_when_condition=>'1'
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
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'where a.study_id = nvl(:P1_SELECT_STUDY,:APP_EDC_STUDY_ID)',
' where a.study_id = nvl(:P1_SELECT_STUDY,:APP_EDC_STUDY_ID)'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927176121212967)
,p_query_column_id=>1
,p_column_alias=>'PROTOCOL_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Project Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927283042212968)
,p_query_column_id=>2
,p_column_alias=>'SPONSOR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Sponsor'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927360334212968)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927482575212968)
,p_query_column_id=>4
,p_column_alias=>'THERAPEUTIC_AREA'
,p_column_display_sequence=>6
,p_column_heading=>'Therapeutic Area'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927567989212968)
,p_query_column_id=>5
,p_column_alias=>'STUDY_INDICATION'
,p_column_display_sequence=>7
,p_column_heading=>'Disease Area'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927657111212968)
,p_query_column_id=>6
,p_column_alias=>'PM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'PM'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11045203274930824370)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927764417212968)
,p_query_column_id=>7
,p_column_alias=>'STUDY_SITE_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Sites Enrolled'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>':APP_EDC_ROLE_ID not in (16)'
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927860091212968)
,p_query_column_id=>8
,p_column_alias=>'NO_OF_SITES'
,p_column_display_sequence=>10
,p_column_heading=>'Total No. of Sites'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045927981798212968)
,p_query_column_id=>9
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Protocol Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>':APP_EDC_USER_TYPE = 1'
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11046275367409821272)
,p_derived_column=>'N'
,p_column_default=>'declare   v_id number; begin   select min(study_id) into v_id from edc_study where STUDY_ACTIVE not in (''C'',''N'');   return v_id; end;'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Condition ',
'--Pl/Sql Expresion',
':APP_EDC_USER_TYPE = 1',
'---------------------------------------------',
'List Of Value :',
'select study_number,study_id ',
'from edc_study',
'where edc_user.get_user_studies(:APP_EDC_USER_TYPE,:APP_EDC_ROLE_ID,STUDY_ID,:app_user) = 1;',
'-------------------------------------------------',
''))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11045928079992212968)
,p_query_column_id=>10
,p_column_alias=>'STUDY_DISP'
,p_column_display_sequence=>2
,p_column_heading=>'Protocol Number'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>':APP_EDC_USER_TYPE <> 1'
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select study_number,study_id ',
'from edc_study'))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2456340033566021378)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2449781446232796272)
,p_button_name=>'Stack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Stack'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2456340410997021381)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2449781446232796272)
,p_button_name=>'Unstack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Unstack'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2456339449573021372)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2449781446232796272)
,p_button_name=>'Horizontal'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Horizontal'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2456339746297021375)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2449781446232796272)
,p_button_name=>'Vertical'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Vertical'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(712610438394814609)
,p_name=>'P1_SERIES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(712609961587814604)
,p_prompt=>'Selected:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(712611027865814615)
,p_name=>'P1_ST_ID_KIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(712610531825814610)
,p_prompt=>'Site Name'
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
,p_lov_null_text=>'--All Sites--'
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(712611668066814621)
,p_name=>'P1_ST_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(712611114459814616)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(712612261116814627)
,p_name=>'P1_ST_NM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(712611785155814622)
,p_prompt=>'Site Name :=> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(758894898812533164)
,p_name=>'P1_STUDY_SITE_VAL_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2006599704293281518)
,p_prompt=>'Site Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   --AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(B.COUNTRY_ID) = 1',
'--   AND B.SITE_ID = :P1_SITE_NAME',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1192127111110457726)
,p_name=>'P1_STUDY_SITE_VAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2449927524777592872)
,p_prompt=>'Site Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
'   --AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(B.COUNTRY_ID) = 1',
'--   AND B.SITE_ID = :P1_SITE_NAME',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2009248937583856286)
,p_name=>'P1_SITE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2009248821301856285)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CNT NUMBER;',
'BEGIN',
'select count(*) INTO V_CNT',
'  from edc_ip_detail',
' where nvl(ip_status,1) = 3',
'   AND (:APP_EDC_ROLE_ID IN (9, 10, 11, 12, 13, 18, 20, 22,25,19,17,28,27,23, 30)) -- Admin, DM, Sponsor, Safety',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(STUDY_SITE_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(COUNTRY_ID, STUDY_DEPOT_ID) = 1;',
'',
'  RETURN V_CNT;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Kit Inventory at Site</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2450083999311069179)
,p_name=>'P1_DEPOT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2449628077631048021)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CNT NUMBER;',
'BEGIN',
'select count(*) INTO V_CNT',
'  from edc_ip_detail',
' where nvl(ip_status,1) = 1',
'   AND (:APP_EDC_ROLE_ID IN (9, 10, 11, 12, 13, 18, 20, 22,25,19,17,28,27,23, 30,33,34)) -- Admin, DM, Sponsor, Safety',
'   --AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(STUDY_SITE_ID) <> 0;',
'   --AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(COUNTRY_ID, STUDY_DEPOT_ID) = 1;',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(COUNTRY_ID, STUDY_DEPOT_ID) = 1',
' GROUP BY CRO_IWRS_PKG.GET_DEPOT_DTL(STUDY_DEPOT_ID);',
'  RETURN V_CNT;',
'  EXCEPTION WHEN NO_DATA_FOUND THEN ',
'  RETURN 0;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>Kit Inventory at Depot</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11062988267270471627)
,p_name=>'P1_PATIENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11045331057649844546)
,p_item_default=>'EDC_UTIL.GET_TOTAL_PATIENTS_1(:APP_EDC_USER_TYPE,:APP_USER_NAME)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11062988482139479925)
,p_name=>'P1_USER_IP_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11045331057649844546)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11045968684938599760)
,p_computation_sequence=>10
,p_computation_item=>'APP_EDC_STUDY_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT MIN(STUDY_ID) FROM EDC_STUDY'
,p_computation_error_message=>'Page Computation'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2456339564143021373)
,p_name=>'Horizontal Orientation'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2456339449573021372)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2456339648600021374)
,p_event_id=>wwv_flow_imp.id(2456339564143021373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("swsp").widget().ojChart({orientation: ''horizontal''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2456339873952021376)
,p_name=>'Vertical Orientation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2456339746297021375)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2456339988821021377)
,p_event_id=>wwv_flow_imp.id(2456339873952021376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("swsp").widget().ojChart({orientation: ''vertical''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2456340198724021379)
,p_name=>'Stack Chart'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2456340033566021378)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2456340283784021380)
,p_event_id=>wwv_flow_imp.id(2456340198724021379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("swsp").widget().ojChart({stack: ''on''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2456340484254021382)
,p_name=>'Unstack Chart'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2456340410997021381)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2456340614647021383)
,p_event_id=>wwv_flow_imp.id(2456340484254021382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("swsp").widget().ojChart({stack: ''off''});'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10542971159678975432)
,p_process_sequence=>10
,p_process_point=>'AFTER_FOOTER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE LOGIN_ATTEMPTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update LOGIN_ATTEMPTS set flag=1 where flag is null and username=:APP_USER_NAME;',
'',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10542971159678975432
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11046270871404746393)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_APP_STUDY_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_study_id number;',
'  v_type number;',
'begin',
' select TYPE, STUDY_ID',
' into v_type, v_study_id',
' from edc_study_contact',
' where upper(username) = upper(:APP_USER_NAME);',
'',
'  if v_type = 1 then ',
'   select min(study_id) into v_study_id from edc_study where STUDY_ACTIVE not in (''C'',''N'');',
'  end if;',
'  :APP_EDC_STUDY_ID := v_study_id;',
'--  dbms_output.put_line(v_study_id);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11046270871404746393
);
wwv_flow_imp.component_end;
end;
/
