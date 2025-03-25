prompt --application/pages/page_00801
begin
--   Manifest
--     PAGE: 00801
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
 p_id=>801
,p_tab_set=>'TS1'
,p_name=>'Field Declaration'
,p_step_title=>'Field Declaration'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function blockSpecialChar(e){',
'        var k;',
'   ',
'        document.all ? k = e.keyCode : k = e.which;',
'        //return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));',
'',
'        return ((k > 64 && k < 91)  || (k >47 && k<58) ||(k==95) ); //||(k > 96 && k < 123)',
'',
'',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*#IG_MYGRID button[data-action="selection-add-row"], */',
'#IG_MYGRID div[data-action="edit"] ',
'{',
'   display: none !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5498981804859811852)
,p_plug_name=>'&P801_CRF_NAME.'
,p_region_name=>'IG_MYGRID'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEM_ID,',
'       CRF_SHORT_NAME,',
'       ITEM_TYPE,',
'       ITEM_LABEL,',
'       COLUMN_NAME,',
'       ITEM_SEQ,',
'       ITEM_SIZE,',
'       CRF_TABLE_NAME,',
'       ITEM_VALIDATION,',
'       ITEM_LOV,',
'       STUDY_ID,',
'       CRF_ID,',
'       ACTION,',
'       DIGITS_AFTR_DECI',
'  from EDC_CRF_ITEMS',
'  WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME',
'  AND STUDY_ID = :APP_EDC_STUDY_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_column_width=>'style="width:1000px;"'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5089435614477011519)
,p_name=>'DIGITS_AFTR_DECI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIGITS_AFTR_DECI'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No. of Digits after Decimal point'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5498982985363811865)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5498983517828811866)
,p_name=>'APEX$ROW_ACTION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501006641173433368)
,p_name=>'CRF_SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_SHORT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CRF Short Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>10
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P801_CRF_SHORT_NAME'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
,p_column_comment=>':P801_FLAG = 1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501006659220433369)
,p_name=>'CRF_TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_TABLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'''EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501007394319433376)
,p_name=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STUDY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_EDC_STUDY_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501206793713556240)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501206862276556241)
,p_name=>'ITEM_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Item Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4071460256671953785)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'TEXT'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'EXPRESSION'
,p_readonly_condition=>':P801_FLAG = 1'
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501207039978556242)
,p_name=>'ITEM_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item Label'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501207097666556243)
,p_name=>'ITEM_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item Seq'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501207182390556244)
,p_name=>'ITEM_SIZE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_SIZE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item Size'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'EXPRESSION'
,p_readonly_condition=>':P801_FLAG = 1'
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501207336917556245)
,p_name=>'ITEM_VALIDATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_VALIDATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501207381200556246)
,p_name=>'ITEM_LOV'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_LOV'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Item Lov'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4071460993847953785)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'EXPRESSION'
,p_readonly_condition=>':P801_FLAG = 1'
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5501207822553556250)
,p_name=>'CRF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P801_CRF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5505415846854235454)
,p_name=>'COLUMN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Column Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_placeholder=>'UPPERCASE ONLY'
,p_item_attributes=>'onkeypress="return blockSpecialChar(event);" style="text-transform: uppercase"'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'EXPRESSION'
,p_readonly_condition=>':P801_FLAG = 1'
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
,p_column_comment=>':P801_FLAG = 1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5505416489289235461)
,p_name=>'ACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Action'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5498982295427811859)
,p_internal_uid=>1600903547680105555
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'  var a = $v("P801_FLAG");',
'  if (a == 1)',
'        {',
'            var $ = apex.jQuery;',
'            var toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();',
'            toolbarData.splice(5,1); //remove add row button',
'            config.toolbarData = toolbarData;',
'        }',
'  return config;',
'  }  ',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5498982653411811861)
,p_interactive_grid_id=>wwv_flow_imp.id(5498982295427811859)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>100
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5498982777516811863)
,p_report_id=>wwv_flow_imp.id(5498982653411811861)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5090481707662627305)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5089435614477011519)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497463906149955530)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5498982985363811865)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497467522565023998)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5501006659220433369)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497485598164214995)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(5501206793713556240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497486221583214997)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5501206862276556241)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497486814502214999)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5501207039978556242)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>586
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497487478360215001)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5501207097666556243)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497488016046215003)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5501207182390556244)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497488668104215004)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5501207336917556245)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5497489241385215006)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5501207381200556246)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5498983855480811868)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5498983517828811866)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5501176324190580772)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5501006641173433368)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5501193444824025659)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5501007394319433376)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5501244383474003602)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(5501207822553556250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5501352462069640758)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5505415846854235454)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5501455197780066639)
,p_view_id=>wwv_flow_imp.id(5498982777516811863)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5505416489289235461)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5524212777239159004)
,p_plug_name=>'Enable/ Disable Items'
,p_region_name=>'ENDIS_REPORT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ENDIS_ID", ',
'"CRF_ID",',
'"CRF_SHORT_NAME",',
'"ITEM_NAME",',
'"ITEM_VALUE",',
'"ITEM_ENDIS",',
'"ITEM_TOBE_ENDIS",',
'"ITEM_TOBE_ENDIS_LABEL",',
'"STUDY_ID",',
'''Audit'' as "Audit"',
'from "#OWNER#"."EDC_CRF_ITEMS_ENDIS" ',
'WHERE CRF_ID = :P801_CRF_ID',
'ORDER BY CRF_ID,ENDIS_ID',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5524213205730159005)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:810:&SESSION.::&DEBUG.:RP:P810_ENDIS_ID:#ENDIS_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JAIMINI.DESAI'
,p_internal_uid=>1626134457982452701
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071444455260953797)
,p_db_column_name=>'ENDIS_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Endis Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071444932985953797)
,p_db_column_name=>'CRF_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Crf Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071445304221953797)
,p_db_column_name=>'CRF_SHORT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Crf Short Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071445724886953797)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4071459719266953786)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071446059227953796)
,p_db_column_name=>'ITEM_VALUE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Item Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071446528953953796)
,p_db_column_name=>'ITEM_ENDIS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Enable/Disable'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4071461672967953784)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071446929679953796)
,p_db_column_name=>'ITEM_TOBE_ENDIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Item To be Enable/Disable'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071447288389953796)
,p_db_column_name=>'STUDY_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Study Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071447736800953796)
,p_db_column_name=>'ITEM_TOBE_ENDIS_LABEL'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Item To be Enable/Disable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4071444130962953799)
,p_db_column_name=>'Audit'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Audit'
,p_column_link=>'javascript:popupURL(''f?p=&APP_ID.:143:&APP_SESSION.:::143:P143_PAGE_ID,P143_TABLE_NAME,P143_PK_ID:810,EDC_CRF_ITEMS_ENDIS,&ENDIS_ID.'');'
,p_column_linktext=>'#Audit#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5524218220368160379)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1733693'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENDIS_ID:CRF_ID:CRF_SHORT_NAME:ITEM_NAME:ITEM_VALUE:ITEM_ENDIS:ITEM_TOBE_ENDIS:STUDY_ID:ITEM_TOBE_ENDIS_LABEL:Audit'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6552966159779553753)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7210600659814403671)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;width: 225;"'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11045204683056824372)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Study Submenu',
'',
'style="margin-right:3px;width:97%;"'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071435399149953808)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_button_name=>'ALTER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Alter Table'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P801_FLAG = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071435778874953807)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Drop Column'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P801_FLAG = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071436229468953807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071436618506953807)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_button_name=>'AUDIT_TRAIL_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Deleted Audit'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071436953590953807)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P801_FLAG = 0 AND :P801_CRF_TYPE IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071437401789953807)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P801_FLAG = 1 OR :P801_CRF_TYPE IS NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071437785812953807)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_button_name=>'OPEN_CRF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Open Design CRF'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:800:&SESSION.::&DEBUG.:RP:P800_CRF_SHORT_NAME,P800_CRF_NAME:&P801_CRF_SHORT_NAME.,&P801_CRF_NAME.'
,p_button_condition=>':P801_FLAG = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071438197672953806)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:802:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071448460268953791)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5524212777239159004)
,p_button_name=>'AUDIT_TRAIL_1_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Deleted Audit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4071448914329953791)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5524212777239159004)
,p_button_name=>'CREATE1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:810:&SESSION.::&DEBUG.:RP,810::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071438561925953806)
,p_name=>'P801_CRF_SHORT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071439032309953805)
,p_name=>'P801_CRF_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_use_cache_before_default=>'NO'
,p_source=>'select CRF_NAME FROM EDC_CRF_MASTER WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071439364471953804)
,p_name=>'P801_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071439781478953804)
,p_name=>'P801_FLAG1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071440226252953804)
,p_name=>'P801_FLAG2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071440639433953804)
,p_name=>'P801_CRF_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4071441017098953804)
,p_name=>'P801_CRF_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5498981804859811852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071441926884953803)
,p_tabular_form_region_id=>wwv_flow_imp.id(5498981804859811852)
,p_validation_name=>'ITEM_NAME Item Size'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'    ',
'    if :APEX$ROW_STATUS = ''C'' then',
'        if :ITEM_TYPE IN (''TEXT'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') then',
'            if :ITEM_SIZE IS NULL THEN',
'                return ''Please mention Item Size for ''||:ITEM_LABEL;',
'            end if;',
'        end if;',
'        ',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_column=>'ITEM_SIZE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071442274204953803)
,p_tabular_form_region_id=>wwv_flow_imp.id(5498981804859811852)
,p_validation_name=>'ITEM_LOV NOT NULL'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'    ',
'    if :APEX$ROW_STATUS = ''C'' then',
'        ',
'        if :ITEM_TYPE IN (''SELECT LIST'',''RADIO BUTTON'') then',
'            if :ITEM_LOV IS NULL THEN',
'                return ''Please mention LOV for ''||:ITEM_LABEL;',
'            end if;',
'        end if;',
'        ',
'    end if;',
'    end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_column=>'ITEM_LOV'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071442650982953803)
,p_tabular_form_region_id=>wwv_flow_imp.id(5498981804859811852)
,p_validation_name=>'ITEM_LABEL NOT NULL'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'    ',
'    if :APEX$ROW_STATUS = ''C'' then',
'            ',
'        if :ITEM_SEQ IS NULL THEN',
'            return ''Please mention Sequence for ''||:ITEM_LABEL;',
'        end if;',
'        ',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_column=>'ITEM_SEQ'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071443098253953803)
,p_tabular_form_region_id=>wwv_flow_imp.id(5498981804859811852)
,p_validation_name=>'Column Name Start Validation'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'x number;',
'begin',
'if (regexp_like(:COLUMN_NAME, ''^[_]|^[0-9]'') = true) then',
'   return :COLUMN_NAME||''is invalid. Column name must be begin with alphabet'';',
'   elsif (regexp_like(:COLUMN_NAME, ''[_]$'') = true) then',
'   return :COLUMN_NAME||''is invalid. Column name can not end with underscore(_).'';',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_column=>'COLUMN_NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4071441521633953803)
,p_tabular_form_region_id=>wwv_flow_imp.id(5498981804859811852)
,p_validation_name=>'System Reserved Word'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'x number;',
'begin',
'select 1 into x from resv_word_vw where UPPER(keyword)=UPPER(:COLUMN_NAME);',
'   return :COLUMN_NAME||'' is System Reserved Keyword'';',
'exception when no_data_found then',
'    null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'COLUMN_NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071452510560953789)
,p_name=>'Alter Column'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4071435399149953808)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071452952412953788)
,p_event_id=>wwv_flow_imp.id(4071452510560953789)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:804:&APP_SESSION.::RP,804::P804_CRF_SHORT_NAME,P804_SELBUTTON:,ALT'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'60'
,p_da_action_comment=>'div#success-message '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071453392441953788)
,p_name=>'Drop Column'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4071435778874953807)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071453892419953788)
,p_event_id=>wwv_flow_imp.id(4071453392441953788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:804:&APP_SESSION.::RP,804::P804_CRF_SHORT_NAME,P804_SELBUTTON:,DEL'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'60'
,p_da_action_comment=>'div#success-message '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071454253210953788)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071454751315953788)
,p_event_id=>wwv_flow_imp.id(4071454253210953788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071455229284953788)
,p_name=>'On Save_SPSI'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5498981804859811852)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071455662244953787)
,p_event_id=>wwv_flow_imp.id(4071455229284953788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5498981804859811852)
,p_attribute_01=>'apex.region("IG_MYGRID").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071456069751953787)
,p_name=>'Audit'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4071436229468953807)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071456553935953787)
,p_event_id=>wwv_flow_imp.id(4071456069751953787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:142:&APP_SESSION.:::142:P142_PAGE_ID,P142_TABLE_NAME,P142_PK_ID:801,EDC_CRF_ITEMS,&P801_CRF_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071456967041953787)
,p_name=>'Audit_1'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4071436618506953807)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071457465721953787)
,p_event_id=>wwv_flow_imp.id(4071456967041953787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:142:&APP_SESSION.:::142:P142_PAGE_ID,P142_TABLE_NAME,P142_PK_ID:804,EDC_CRF_ITEMS,&P801_CRF_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071457850429953786)
,p_name=>'Audit_1_1'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4071448460268953791)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071458405554953786)
,p_event_id=>wwv_flow_imp.id(4071457850429953786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:143:&APP_SESSION.:::143:P143_PAGE_ID,P143_TABLE_NAME:810,EDC_CRF_ITEMS.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4071458818535953786)
,p_name=>'audit_row_endis'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.tab_audit'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4071459327261953786)
,p_event_id=>wwv_flow_imp.id(4071458818535953786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071443394625953803)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5498981804859811852)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Save Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'case :APEX$ROW_STATUS',
'when ''C'' then ',
'',
'   insert into edc_crf_items(crf_id,study_id, crf_short_name,item_type,item_label, item_seq, item_size, item_lov, column_name, action, digits_aftr_deci, crf_table_name) ',
'   values(:P801_CRF_ID,:APP_EDC_STUDY_ID, :P801_CRF_SHORT_NAME,:ITEM_TYPE,:ITEM_LABEL,:ITEM_SEQ,:ITEM_SIZE,:ITEM_LOV,:COLUMN_NAME,''INSERT'',:DIGITS_AFTR_DECI, :CRF_TABLE_NAME);',
'',
'when ''U'' then',
'',
'   update edc_crf_items',
'   set item_type = :ITEM_TYPE,',
'   item_label = :ITEM_LABEL,',
'   item_seq = :ITEM_SEQ,',
'   item_size = :ITEM_SIZE,',
'   item_lov = :ITEM_LOV,',
'   column_name = :COLUMN_NAME,',
'   action = ''UPDATE'',',
'   digits_aftr_deci = :DIGITS_AFTR_DECI',
'   where crf_id = :P801_CRF_ID',
'   and crf_short_name = :P801_CRF_SHORT_NAME',
'   and item_id = :item_id;',
'        ',
'end case;',
'',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''CREATE'',''SAVE'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>4071443394625953803
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071450510532953790)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_SQL CLOB;',
'L_SQL VARCHAR2(20000);',
'BEGIN',
'  ',
'  FOR I IN (SELECT ITEM_LABEL, ITEM_TYPE , ITEM_SIZE , COLUMN_NAME',
'          FROM EDC_CRF_ITEMS',
'          WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME',
'          AND STUDY_ID = :APP_EDC_STUDY_ID) LOOP',
'          ',
'    IF I.ITEM_TYPE IN (''TEXT'',''RADIO BUTTON'',''SELECT LIST'',''TEXTAREA'',''CHECKBOX'',''LABEL'',''UNKNOWN DATE'',''HEADING'') THEN',
'      ',
'      I.ITEM_TYPE := ''VARCHAR2'';',
'    ',
'      V_SQL := V_SQL || '',''||I.COLUMN_NAME ||'' ''|| I.ITEM_TYPE||''(''||I.ITEM_SIZE||'')'';',
'      ',
'    ELSIF I.ITEM_TYPE IN (''DATE'',''TIME'') THEN',
'      ',
'      I.ITEM_TYPE := ''DATE'';',
'    ',
'      V_SQL := V_SQL || '',''||I.COLUMN_NAME ||'' ''|| I.ITEM_TYPE;      ',
'      ',
'    ELSE       ',
'    ',
'      V_SQL := V_SQL || '',''||I.COLUMN_NAME ||'' ''|| I.ITEM_TYPE;',
'      ',
'    END IF;',
'    ',
'  END LOOP;',
'',
'  --DBMS_OUTPUT.PUT_LINE('' V_SQL : ''||V_SQL); ',
'  ',
'  IF :P801_CRF_TYPE in (''CRF'',''VPAR'') then',
'',
'      IF :P801_CRF_TYPE = ''CRF'' THEN',
'          UPDATE EDC_CRF_MASTER SET CRF_PAGE_NO = 100 WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME AND STUDY_ID = :APP_EDC_STUDY_ID;',
'      ELSIF :P801_CRF_TYPE = ''VPAR'' THEN',
'          UPDATE EDC_CRF_MASTER SET CRF_PAGE_NO = 509 WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME AND STUDY_ID = :APP_EDC_STUDY_ID;',
'      END IF;',
'      COMMIT;',
'      ',
'      V_SQL := ''CREATE TABLE EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||'' (''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_ID NUMBER, STUDY_ID NUMBER, SECTION_STATUS NUMBER, PATIENT_DIARY_ID NUMBER ''|| V_SQL ||''',
'                ,CREATED_BY VARCHAR2(50), CREATED_ON DATE, UPDATED_BY VARCHAR2(50), UPDATED_ON DATE, ',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_PK PRIMARY KEY (''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_ID),',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_UK UNIQUE (PATIENT_DIARY_ID),',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_FK FOREIGN KEY (STUDY_ID) REFERENCES EDC_STUDY(STUDY_ID),',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_FK1 FOREIGN KEY (PATIENT_DIARY_ID) REFERENCES EDC_PATIENT_DIARY(PATIENT_DIARY_ID))'';',
'                ',
'  ELSIF :P801_CRF_TYPE IN (''VCHL'') THEN',
'  ',
'      UPDATE EDC_CRF_MASTER SET CRF_PAGE_NO = 510 WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME AND STUDY_ID = :APP_EDC_STUDY_ID;  COMMIT;',
'      ',
'      V_SQL := ''CREATE TABLE EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||'' (''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_ID NUMBER, STUDY_ID NUMBER, SECTION_STATUS NUMBER, PATIENT_DIARY_ID NUMBER ''|| V_SQL ||''',
'                ,CREATED_BY VARCHAR2(50), CREATED_ON DATE, UPDATED_BY VARCHAR2(50), UPDATED_ON DATE, ',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_PK PRIMARY KEY (''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_ID),',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_FK FOREIGN KEY (STUDY_ID) REFERENCES EDC_STUDY(STUDY_ID),',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_FK1 FOREIGN KEY (PATIENT_DIARY_ID) REFERENCES EDC_PATIENT_DIARY(PATIENT_DIARY_ID))'';',
'  ',
'  ELSIF :P801_CRF_TYPE IN (''COM'',''COMRF'',''CFPAR'',''CFCHL'') THEN',
'',
'      IF :P801_CRF_TYPE = ''COM'' THEN',
'          UPDATE EDC_CRF_MASTER SET CRF_PAGE_NO = 820 WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME AND STUDY_ID = :APP_EDC_STUDY_ID;',
'      ELSIF :P801_CRF_TYPE = ''COMRF'' THEN',
'           UPDATE EDC_CRF_MASTER SET CRF_PAGE_NO = 819 WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME AND STUDY_ID = :APP_EDC_STUDY_ID;',
'      ELSIF :P801_CRF_TYPE = ''CFPAR'' THEN',
'           UPDATE EDC_CRF_MASTER SET CRF_PAGE_NO = 518 WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME AND STUDY_ID = :APP_EDC_STUDY_ID;',
'      ELSIF :P801_CRF_TYPE = ''CFCHL'' THEN',
'           UPDATE EDC_CRF_MASTER SET CRF_PAGE_NO = 519 WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME AND STUDY_ID = :APP_EDC_STUDY_ID;',
'      END IF;',
'      ',
'      V_SQL := ''CREATE TABLE EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||'' (''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_ID NUMBER, STUDY_ID NUMBER, SECTION_STATUS NUMBER, PATIENT_PROFILE_ID NUMBER ''|| V_SQL ||''',
'                ,CREATED_BY VARCHAR2(50), CREATED_ON DATE, UPDATED_BY VARCHAR2(50), UPDATED_ON DATE, ',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_PK PRIMARY KEY (''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_ID),',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_FK FOREIGN KEY (STUDY_ID) REFERENCES EDC_STUDY(STUDY_ID),',
'                CONSTRAINT EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||''_FK1 FOREIGN KEY (PATIENT_PROFILE_ID) REFERENCES EDC_PATIENT_PROFILE(PATIENT_PROFILE_ID))'';            ',
'',
'  END IF;',
'',
'  --DBMS_OUTPUT.PUT_LINE('' V_SQL : ''||V_SQL); ',
'  ',
'  EXECUTE IMMEDIATE V_SQL;',
'  ',
'  L_SQL := ''GRANT SELECT ON EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||'' TO JASPER'';',
'  EXECUTE IMMEDIATE L_SQL;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4071436953590953807)
,p_process_when=>':P801_FLAG1!=0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Table Created Successfully.'
,p_internal_uid=>4071450510532953790
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071451710359953789)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Alter Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_SQL CLOB;',
'BEGIN',
'',
'  FOR I IN (SELECT ITEM_LABEL, ITEM_TYPE , ITEM_SIZE , COLUMN_NAME',
'          FROM EDC_CRF_ITEMS',
'          WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME',
'          AND STUDY_ID = :APP_EDC_STUDY_ID',
'          AND ACTION IS NULL) LOOP',
'          ',
'    IF I.ITEM_TYPE IN (''TEXT'',''RADIO BUTTON'',''SELECT LIST'',''TEXTAREA'',''CHECKBOX'') THEN',
'      ',
'      I.ITEM_TYPE := ''VARCHAR2'';',
'    ',
'      V_SQL := V_SQL ||'' ''||I.COLUMN_NAME ||'' ''|| I.ITEM_TYPE||''(''||I.ITEM_SIZE||'')'';',
'      ',
'    ELSIF I.ITEM_TYPE IN (''DATE'',''TIME'') THEN',
'      ',
'      I.ITEM_TYPE := ''DATE'';',
'    ',
'      V_SQL := V_SQL ||'' ''||I.COLUMN_NAME ||'' ''|| I.ITEM_TYPE;      ',
'      ',
'    ELSE       ',
'    ',
'      V_SQL := V_SQL ||'' ''||I.COLUMN_NAME ||'' ''|| I.ITEM_TYPE;',
'      ',
'    END IF;',
'    ',
' END LOOP;',
'',
'  --DBMS_OUTPUT.PUT_LINE('' V_SQL : ''||V_SQL); ',
'',
'  V_SQL := ''ALTER TABLE EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'           '' ADD''|| V_SQL ;',
'  ',
'  --DBMS_OUTPUT.PUT_LINE('' V_SQL : ''||V_SQL);',
'  ',
'  ',
'  EXECUTE IMMEDIATE V_SQL;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Table Altered Successfully.'
,p_internal_uid=>4071451710359953789
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071452062162953789)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE EDC_CRF_ITEMS ',
'    SET ACTION = ''CREATE'' ',
'    WHERE CRF_SHORT_NAME = :P801_CRF_SHORT_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''Create'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4071452062162953789
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071450853807953789)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update to Designed'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update edc_crf_master',
'    set crf_design_status = ''Designed'',',
'    CRF_TABLE_NAME = ''EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID',
'    where crf_short_name = :P801_CRF_SHORT_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'    :P801_FLAG := 1; ',
'    ',
'    COMMIT;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''CREATE'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4071450853807953789
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4071451333790953789)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Show/Hide Create Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'v_cnt1 number;',
'begin',
'',
'    select count(1) into v_cnt',
'    from EDC_CRF_ITEMS',
'    where CRF_SHORT_NAME = :P801_CRF_SHORT_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'    select count(1) into v_cnt1',
'    from ALL_TABLES',
'    where table_name like ''%EDC_CRF_''||:P801_CRF_SHORT_NAME||:APP_EDC_STUDY_ID;',
'    ',
'    --IF V_CNT > 0  and v_cnt1 > 0 THEN',
'    IF v_cnt1 > 0 THEN',
'        :P801_FLAG := 1;',
'    else',
'        :P801_FLAG := 0;',
'    END IF;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4071451333790953789
);
wwv_flow_imp.component_end;
end;
/
