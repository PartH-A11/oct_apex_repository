prompt --application/shared_components/user_interface/templates/list/vertical_list_report
begin
--   Manifest
--     REGION TEMPLATE: VERTICAL_LIST_REPORT
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
 p_id=>wwv_flow_imp.id(12162463639986384308)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="active" style="width:200px !important;">',
'      <a href="#LINK#" style="width:200px !important;">',
'           <span style="font-size:13px;">#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li style="width:200px !important;">',
'      <a href="#LINK#" style="width:200px !important;">',
'          <span style="font-size:13px;">#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical List REPORT'
,p_internal_name=>'VERTICAL_LIST_REPORT'
,p_theme_id=>26
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uImagesList clearfix" style="width:230px;">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'style="font-size:12px;',
' style="min-width:220px;"'))
);
wwv_flow_imp.component_end;
end;
/
