prompt --application/pages/page_00802
begin
--   Manifest
--     PAGE: 00802
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
 p_id=>802
,p_tab_set=>'TS1'
,p_name=>'CRF Setup'
,p_step_title=>'CRF Setup'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Code to hide Save button when its a live application',
'var a=''&APP_ID.'';',
'if(a.match(/999*/)){',
'$(''#IG_MYGRID1 button[data-action="save"]'').css("display", "none");',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IG_MYGRID1 div[data-action="edit"] ',
'{',
'   display: none !important;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6599883305897880206)
,p_plug_name=>'CRF Setup'
,p_region_name=>'IG_MYGRID1'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:1200px"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'CRF_ID,',
'CRF_NAME,',
'CRF_SHORT_NAME,',
'CRF_PAGE_NO,',
'CRF_TABLE_NAME,',
'--DECODE(CRF_TYPE,''CRF'',''Simple CRF'',''COM'',''Common Form'',''COMRF'',''Common Report with Form'') CRF_TYPE,',
'CRF_TYPE,',
'CRF_DESIGN_STATUS,',
'DISP_SHORT_NAME,',
'(case when crf_design_status = ''Not-Designed'' then ''Click to Design'' else '''' end) crfyn,',
'parent_page,',
'parent_ques,',
'parent_ans,',
'''Audit'' as"Audit"',
'--(case when crf_design_status = ''Designed'' then '''' else ''U'' end) ctrl',
'FROM EDC_CRF_MASTER',
'WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'AND CRF_SHORT_NAME NOT IN (''UV'')',
'AND CRF_PAGE_NO IN (100,509,510,518,519,818,819,820)'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6191868401028375294)
,p_name=>'Audit'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Audit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:popupURL(''f?p=&APP_ID.:143:&APP_SESSION.:::143:P143_PAGE_ID,P143_TABLE_NAME,P143_PK_ID:802,EDC_CRF_MASTER,&CRF_ID.'');'
,p_link_text=>'Audit'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6405335925262079738)
,p_name=>'PARENT_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_PAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Parent Page'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select crf_name d, crf_id r',
'from edc_crf_master',
'where study_id = 661',
'and crf_type in (''VPAR'',''CFPAR'')'))
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'EXPRESSION'
,p_readonly_condition=>':CRF_DESIGN_STATUS = ''Designed'''
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6405335999950079739)
,p_name=>'PARENT_QUES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_QUES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Parent Page Question'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ITEM_LABEL D, COLUMN_NAME R',
'FROM EDC_CRF_ITEMS',
'WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'AND CRF_ID = :PARENT_PAGE',
'AND ITEM_TYPE IN (''RADIO BUTTON'',''SELECT LIST'')',
'ORDER BY ITEM_SEQ'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'PARENT_PAGE'
,p_ajax_items_to_submit=>'APP_EDC_STUDY_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6405336149201079740)
,p_name=>'PARENT_ANS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_ANS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Parent Page Answer'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value d, stored_value r',
'from edc_lov_values',
'where lov_id = (select item_lov from edc_crf_items',
'               where study_id = :APP_EDC_STUDY_ID',
'               and crf_id = :PARENT_PAGE',
'               and column_name = :PARENT_QUES);'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'PARENT_QUES'
,p_ajax_items_to_submit=>'APP_EDC_STUDY_ID,PARENT_PAGE,PARENT_QUES'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6592687438328369782)
,p_name=>'DISP_SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SHORT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Display Short Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6599884350528880216)
,p_name=>'CRF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:801:&SESSION.::&DEBUG.:RP:P801_CRF_SHORT_NAME,P801_CRF_ID,P801_CRF_TYPE:&CRF_SHORT_NAME.,&CRF_ID.,&CRF_TYPE.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6599884492659880217)
,p_name=>'CRF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'CRF Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6599884583828880218)
,p_name=>'CRF_SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_SHORT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CRF Short Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>15
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
,p_readonly_condition=>':CRF_DESIGN_STATUS = ''Designed'''
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6599884626763880219)
,p_name=>'CRF_PAGE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_PAGE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(6599884775600880220)
,p_name=>'CRF_TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_TABLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(6599884860721880221)
,p_name=>'CRF_DESIGN_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_DESIGN_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Designed'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(5172358504086515136)
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'EXPRESSION'
,p_readonly_condition=>':CRF_DESIGN_STATUS = ''Designed'' and :APP_EDC_ROLE_ID NOT IN (13,22)'
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6599885302192880225)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6599885326405880226)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6611339119516580120)
,p_name=>'CRFYN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRFYN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Save From Library'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_link_target=>'#'
,p_link_text=>'&CRFYN.'
,p_link_attributes=>'class="ig-link"'
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
,p_display_condition_type=>'NEVER'
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6612964289207283689)
,p_name=>'CRF_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CRF_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Crf Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(5172360003803515131)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
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
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'EXPRESSION'
,p_readonly_condition=>':CRF_DESIGN_STATUS = ''Designed'''
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6599884292960880215)
,p_internal_uid=>1600854777071669818
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
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6601843593575246230)
,p_interactive_grid_id=>wwv_flow_imp.id(6599884292960880215)
,p_static_id=>'11009737'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>50
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6601843635710246231)
,p_report_id=>wwv_flow_imp.id(6601843593575246230)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6192697710260676447)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(6191868401028375294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6410456788100049686)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6405335925262079738)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6410457246515049681)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(6405335999950079739)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6410457728495049679)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(6405336149201079740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6600318164372494296)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6592687438328369782)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6601844194240246237)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6599884350528880216)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>44
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6601844678320246242)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6599884492659880217)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6601845196017246245)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6599884583828880218)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6601845689589246247)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6599884626763880219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6601846174044246249)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6599884775600880220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6601846652220246251)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6599884860721880221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6601857690010274529)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6599885302192880225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6611411743936352756)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6611339119516580120)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6614127931994464419)
,p_view_id=>wwv_flow_imp.id(6601843635710246231)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6612964289207283689)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6600162849505100670)
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
 p_id=>wwv_flow_imp.id(8311519746891966068)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;padding-right:4px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12146155451198328465)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Study Submenu',
'',
'style="margin-right:3px;width:97%;"'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5172353778488515146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6599883305897880206)
,p_button_name=>'LOV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'List of Values'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:811:&SESSION.::&DEBUG.:RP:P803_FLAG,APP_EDC_STUDY_ID:0,'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5172355764255515139)
,p_name=>'When Yes Clicked Assigning Value To Design Status'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.ig-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172356252339515138)
,p_event_id=>wwv_flow_imp.id(5172355764255515139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Get the link element that was clicked',
'var $te = $(this.triggeringElement);',
' ',
'//Get the ID of the row',
'var rowId = $te.closest(''tr'').data(''id'');',
' ',
'//Identify the particular interactive grid',
'var ig$ = apex.region("IG_MYGRID1").widget();',
' ',
'//Fetch the model for the interactive grid',
'var model = ig$.interactiveGrid("getViews","grid").model;',
' ',
'//Fetch the record for the particular rowId',
'var record = model.getRecord(rowId);',
' ',
'//Access the cell value via the column name',
'//var sal = model.getValue(record,"crfyn");',
' ',
'//Set the values for dummy cell',
'//model.setValue(record,"DUMMY",''U'');',
'model.setValue(record,"CRF_DESIGN_STATUS",''Designed'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5172356663403515137)
,p_name=>'On Save'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6599883305897880206)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172357164344515137)
,p_event_id=>wwv_flow_imp.id(5172356663403515137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("IG_MYGRID1").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5172357582005515137)
,p_name=>'audit_row'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.tab_audit'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5172358022825515137)
,p_event_id=>wwv_flow_imp.id(5172357582005515137)
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
 p_id=>wwv_flow_imp.id(5172354144023515144)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_imp.id(6599883305897880206)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'CRF Report - Save Interactive Grid Data_Final'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;v_crfsn varchar2(10);vstdy number := :APP_EDC_STUDY_ID;v_cnt1 number;v_msg varchar2(1000); v_sn varchar2(10); V_TABLE_NAME VARCHAR2(50);',
'begin',
'v_sn := :CRF_SHORT_NAME;',
'case :APEX$ROW_STATUS',
'when ''C'' then',
'',
'    if :crf_short_name is null then',
'        v_crfsn := UPPER(substr(:crf_name,0,3));',
'    else',
'        v_crfsn := UPPER(:crf_short_name);',
'    end if;',
'    ',
'    select count(1) into v_cnt1 from edc_crf_master where study_id=vstdy and crf_short_name=v_crfsn;',
'    ',
'    if v_cnt1 = 0 then ',
'        ',
'        insert into edc_crf_master(crf_name,crf_short_name,crf_page_no,crf_table_name,crf_table_pk_col,crf_design_status,',
'        study_id,crfyn,crf_type,disp_short_name) values(:CRF_NAME,v_crfsn,100,''EDC_CRF_''||v_crfsn||vstdy,v_crfsn||vstdy||''_ID'',''Not-Designed'',vstdy,''No'',:CRF_TYPE,:DISP_SHORT_NAME); ',
'        ',
'        commit;',
'    else ',
'        v_msg := ''A CRF with the same short name already exists. Please change the crf name.'';',
'        APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style=color:red>''||v_msg||''<br></span>''; ',
'        ',
'    end if;',
'',
'when ''U'' then',
'',
'        IF :CRF_DESIGN_STATUS = ''Designed'' THEN',
'        ',
'            CREATE_STUDY_CRF(:APP_EDC_STUDY_ID,:CRF_SHORT_NAME,:CRF_NAME, :CRF_TYPE,:DISP_SHORT_NAME, :CRF_DESIGN_STATUS, :CRF_ID, ''U'',:PARENT_PAGE, :PARENT_QUES, :PARENT_ANS);',
'        ',
'        ELSIF :CRF_DESIGN_STATUS = ''Not-Designed'' THEN',
'            ',
'            UPDATE EDC_CRF_MASTER SET CRF_TYPE = NULL, CRFYN = ''No'', PARENT_QUES = NULL, PARENT_ANS = NULL',
'            WHERE CRF_ID = :CRF_ID;',
'            COMMIT;',
'            ',
'            SELECT CRF_TABLE_NAME INTO V_TABLE_NAME FROM EDC_CRF_MASTER WHERE CRF_ID = :CRF_ID;',
'            ',
'            SELECT COUNT(1) INTO V_CNT FROM ALL_TABLES WHERE TABLE_NAME = V_TABLE_NAME;',
'            ',
'            IF V_CNT = 1 THEN',
'                EXECUTE IMMEDIATE ''DROP TABLE ''||V_TABLE_NAME||'' PURGE'';',
'                COMMIT;',
'            END IF;',
'            ',
'            CREATE_STUDY_CRF(:APP_EDC_STUDY_ID,:CRF_SHORT_NAME,:CRF_NAME, NULL,:DISP_SHORT_NAME, :CRF_DESIGN_STATUS, :CRF_ID, ''U'',NULL, NULL, NULL);',
'            ',
'        END IF;',
'        ',
'end case;',
'',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4071403375882011051
);
wwv_flow_imp.component_end;
end;
/
