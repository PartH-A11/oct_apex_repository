prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 10021010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(11045187778059407907)
,p_theme_id=>26
,p_theme_name=>'Productivity Applications'
,p_theme_internal_name=>'PRODUCTIVITY_APPLICATIONS'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(11045177967597407881)
,p_error_template=>wwv_flow_imp.id(11045177478759407880)
,p_printer_friendly_template=>wwv_flow_imp.id(11045178458841407882)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(11045177065054407876)
,p_default_button_template=>wwv_flow_imp.id(11045186175944407897)
,p_default_region_template=>wwv_flow_imp.id(11045181488778407888)
,p_default_chart_template=>wwv_flow_imp.id(11045179862037407887)
,p_default_form_template=>wwv_flow_imp.id(11045180167451407887)
,p_default_reportr_template=>wwv_flow_imp.id(11045181488778407888)
,p_default_tabform_template=>wwv_flow_imp.id(11045181488778407888)
,p_default_wizard_template=>wwv_flow_imp.id(11045182258432407888)
,p_default_menur_template=>wwv_flow_imp.id(11045179465801407886)
,p_default_listr_template=>wwv_flow_imp.id(11045179765325407886)
,p_default_irr_template=>wwv_flow_imp.id(11045180572024407887)
,p_default_report_template=>wwv_flow_imp.id(11045183173560407891)
,p_default_label_template=>wwv_flow_imp.id(11045185769059407896)
,p_default_menu_template=>wwv_flow_imp.id(11045187162360407898)
,p_default_calendar_template=>wwv_flow_imp.id(11045187388394407900)
,p_default_list_template=>wwv_flow_imp.id(11045185280851407894)
,p_default_option_label=>wwv_flow_imp.id(11045185857341407896)
,p_default_required_label=>wwv_flow_imp.id(11045186061821407896)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(26),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(11045674559235436623)
,p_theme_id=>101
,p_theme_name=>'Simple Red'
,p_theme_internal_name=>'SIMPLE_RED'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(101),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(11045674780777457050)
,p_theme_id=>102
,p_theme_name=>'Simple Red -2'
,p_theme_internal_name=>'SIMPLE_RED_2'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(102),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(11045675077720504013)
,p_theme_id=>103
,p_theme_name=>'Simple Red'
,p_theme_internal_name=>'SIMPLE_RED'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(103),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(11045707461293557243)
,p_theme_id=>104
,p_theme_name=>'Simple Red'
,p_theme_internal_name=>'SIMPLE_RED'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(104),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
