prompt --application/shared_components/user_interface/templates/button/interactive_report_button
begin
--   Manifest
--     BUTTON TEMPLATE: INTERACTIVE_REPORT_BUTTON
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(11045186266226407898)
,p_template_name=>'Interactive Report Button'
,p_internal_name=>'INTERACTIVE_REPORT_BUTTON'
,p_template=>'<a href="#LINK#" class="uButtonIR #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>26
);
wwv_flow_imp.component_end;
end;
/
