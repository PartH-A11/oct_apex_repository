prompt --application/shared_components/user_interface/templates/label/optional_with_help
begin
--   Manifest
--     LABEL TEMPLATE: OPTIONAL_WITH_HELP
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(12146136625482911989)
,p_template_name=>'Optional with help'
,p_internal_name=>'OPTIONAL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Before Lable ',
'<label for="#CURRENT_ITEM_NAME#" class="uOptional"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
'',
'--after lable',
'</a></label>',
'',
'--on error after lable',
'<span class="uLabelError">#ERROR_MESSAGE#</span>',
''))
);
wwv_flow_imp.component_end;
end;
/
