prompt --application/shared_components/user_interface/templates/list/list_vertical_collapsible
begin
--   Manifest
--     REGION TEMPLATE: LIST_VERTICAL_COLLAPSIBLE
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
 p_id=>wwv_flow_imp.id(11249081323199722727)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="is-lvl1-current"><span id="#A01#">#TEXT#</span>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div><span id="#A01#">#TEXT#</span>',
'</div>'))
,p_list_template_name=>'List Vertical Collapsible'
,p_internal_name=>'LIST_VERTICAL_COLLAPSIBLE'
,p_theme_id=>26
,p_theme_class_id=>11
,p_list_template_before_rows=>'<div id="vertical-collapsible-nav">'
,p_list_template_after_rows=>' </div>'
,p_after_sub_list=>'</ul></div>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#" alt="#TEXT#" class="is-lvl2-current">',
'    <img src="#IMAGE#" #IMAGE_ATTR# />',
'    #TEXT#',
'  </a>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#" alt="#TEXT#">',
'    <img src="#IMAGE#" #IMAGE_ATTR# />',
'    #TEXT#',
'  </a>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="is-lvl1-current"><span id="#A01#">#TEXT#</span>',
'<ul>'))
);
wwv_flow_imp.component_end;
end;
/
