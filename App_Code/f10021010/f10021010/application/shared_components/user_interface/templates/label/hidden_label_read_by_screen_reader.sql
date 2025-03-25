prompt --application/shared_components/user_interface/templates/label/hidden_label_read_by_screen_reader
begin
--   Manifest
--     LABEL TEMPLATE: HIDDEN_LABEL,_READ_BY_SCREEN_READER
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(11045185561393407895)
,p_template_name=>'Hidden label, read by screen reader'
,p_internal_name=>'HIDDEN_LABEL,_READ_BY_SCREEN_READER'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_imp.component_end;
end;
/
