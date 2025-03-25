prompt --application/shared_components/user_interface/templates/list/copy_of_wizard_progress_list_custom
begin
--   Manifest
--     REGION TEMPLATE: COPY_OF_WIZARD_PROGRESS_LIST_CUSTOM
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(12150616740893796360)
,p_list_template_current=>'<li class="current"><a href="#LINK#" style = "color: white;">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="non-current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Copy of Wizard Progress List - Custom'
,p_internal_name=>'COPY_OF_WIZARD_PROGRESS_LIST_CUSTOM'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
);
wwv_flow_imp.component_end;
end;
/
