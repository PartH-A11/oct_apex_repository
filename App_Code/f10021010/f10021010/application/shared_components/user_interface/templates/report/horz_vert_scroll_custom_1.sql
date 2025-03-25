prompt --application/shared_components/user_interface/templates/report/horz_vert_scroll_custom_1
begin
--   Manifest
--     ROW TEMPLATE: HORZ/VERT_SCROLL_CUSTOM_1
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>759714394172364641
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(2452831997749478563)
,p_row_template_name=>'Horz/Vert Scroll (Custom 1)'
,p_internal_name=>'HORZ/VERT_SCROLL_CUSTOM_1'
,p_row_template1=>'<td#ALIGNMENT# align="center" headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <style>#report_#REGION_STATIC_ID# table </style>',
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><div id="lh_#REGION_STATIC_ID#" >',
'<table cellpadding="0" border="1" cellspacing="0" summary="" class="report-standard" bgcolor="#F2F2F5"> </table>',
'</div></td><td><div id="rh_#REGION_STATIC_ID#">',
'<table cellpadding="0" border="1" cellspacing="0" summary="" class="report-standard" bgcolor="#F2F2F5"> </table>',
'</div></td></tr><tr><td><div id="lb_#REGION_STATIC_ID#">',
'<table cellpadding="0" border="1" cellspacing="0" summary="" class="report-standard" bgcolor="#FFFFFF"> </table>',
'</div></td><td><div id="rb_#REGION_STATIC_ID#">',
'<table cellpadding="0" border="1" cellspacing="0" summary="" class="report-standard" bgcolor="#FFFFFF">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
' </table></div><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>',
'#PAGINATION#',
'',
'</table>'))
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# align="center" id="#COLUMN_HEADER_NAME#" class="header"><b>#COLUMN_HEADER#</b></th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_imp.component_end;
end;
/
