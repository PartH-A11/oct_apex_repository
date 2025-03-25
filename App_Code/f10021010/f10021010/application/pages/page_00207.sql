prompt --application/pages/page_00207
begin
--   Manifest
--     PAGE: 00207
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
 p_id=>207
,p_tab_set=>'TS1'
,p_name=>'Delivery to Depot'
,p_step_title=>'Delivery to Depot'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'var ship_status_id = new Array();',
'ship_status_id[''Received''] = 1;',
'ship_status_id[''Damaged''] = 2;',
'ship_status_id[''Quarantined''] = 3;',
'ship_status_id[''Unquarantined''] = 4;',
'ship_status_id[''Expired''] = 5;',
'ship_status_id[''Destroyed''] = 6;',
'ship_status_id[''Lost''] = 8;',
'ship_status_id[''Returned by Subject''] = -4;',
'',
'',
'',
'//To check Total Quantity is less than Available Quantity...(Nikhil)',
'function checkMaxQty(pThis){',
'',
'    var qty = parseFloat($(pThis).parent().parent().find(''input[name=f06]'').val());',
'//removed f07 to f06 as standard column VipulR on 21-APR-2015',
'    qty = !qty ? 0 : qty;    ',
'',
'    //var mxQty = parseFloat($(pThis).parent().parent().find(''input[name=f08]'').val());',
'//removed f08 to DERIVED_COL as standard column VipulR on 21-APR-2015',
'     var mxQty = parseFloat($(pThis).parent().parent().find(''td[headers=DERIVED01]'').html());',
'',
'    mxQty = !mxQty ? 0 : mxQty;',
'',
'    if(qty > mxQty){',
'        alert(''Number of Unit must not be greater than Max. No. of Tablets('' + mxQty + '')'');',
'        $(pThis).parent().parent().find(''input[name=f06]'').val('''');//removed f07 to f06 as standard column VipulR on 21-APR-2015',
'    }',
'    //else if($v(''P469_SHIP_STATUS'') != ''Dispatched'' || $v(''P469_SHIP_STATUS'') != ''Delivered''){',
'        else if(qty < mxQty && qty > 0){',
'            $(pThis).parent().parent().find(''.disYes'').attr(''style'',''display:block !important'');',
'            $(pThis).parent().parent().find(''.disNo'').attr(''style'',''display:none !important'');',
'            //--$(pThis).parent().parent().find(''input[name=f08]'').val(''Yes'');',
'            ',
'            //$(pThis).parent().parent().find(''input[name=f07]'').attr(''readonly'',false);',
'            $(pThis).parent().parent().find(''.remarkTxt'').attr(''readonly'',false);',
'        }',
'        else{',
'            $(pThis).parent().parent().find(''.disYes'').attr(''style'',''display:none !important'');',
'            $(pThis).parent().parent().find(''.disNo'').attr(''style'',''display:block !important'');',
'            //--$(pThis).parent().parent().find(''input[name=f08]'').val(''No'');',
'            ',
'            //$(pThis).parent().parent().find(''input[name=f07]'').val('''');',
'            //$(pThis).parent().parent().find(''input[name=f07]'').attr(''readonly'',true);        ',
'            $(pThis).parent().parent().find(''.remarkTxt'').val('''');',
'            $(pThis).parent().parent().find(''.remarkTxt'').attr(''readonly'',true);',
'        }',
'	//}',
'}',
'',
'',
'//',
'//Start: set Max. Shipment Qty. as defined in ARM Detail...(Nikhil)',
'//',
'function setMaxQty(){',
'    $(''select[name=f04]'').each(function(){',
'    	maxQty(this);',
'    });',
'}',
'',
'function maxQty(pThis){',
'    //var maxVal = parseInt(maxQtys[$(pThis)[0].selectedIndex]);',
'    var maxVal = parseInt(maxQtys[$(pThis).val()]);',
'    maxVal = !maxVal ? 0 : maxVal;',
'//    $(pThis).parent().parent().find(''input[name=f08]'').val(maxVal);  // f08 to standard column',
'    $(pThis).parent().parent().find(''td[headers=DERIVED01]'').html(maxVal);',
'      $(pThis).parent().parent().find(''td[headers=DERIVED01]'').css(''font-weight'',''bold'');',
'',
'    $(pThis).parent().parent().find(''input[name=f05]'').val(s_sts[$(pThis).val()]); //removed f05 as standard column',
'    $(pThis).parent().parent().find(''td[headers=SHIP_STATUS]'').html(s_sts[$(pThis).val()]);',
'    $(pThis).parent().parent().find(''td[headers=SHIP_STATUS]'').css(''font-weight'',''bold'');',
'',
'    $(pThis).parent().parent().find(''input[name=f10]'').val(ship_status_id[s_sts[$(pThis).val()]]); //test f12 to f10',
'    ',
'    $(pThis).parent().parent().find(''select[name=f05]'').show();  //removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    if(s_sts[$(pThis).val()] == ''Quarantined''){',
'    	$(pThis).parent().parent().find(''select[name=f05]'').val("Unused");//removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    }',
'    else if(s_sts[$(pThis).val()] == ''Damaged''){',
'        $(pThis).parent().parent().find(''select[name=f05]'').val("Unused");//removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    } ',
'    else if(s_sts[$(pThis).val()] == ''Expired''){',
'        $(pThis).parent().parent().find(''select[name=f05]'').val("Unused");//removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    } ',
'    else if(s_sts[$(pThis).val()] == ''Destroyed at Depot''){',
'        $(pThis).parent().parent().find(''select[name=f05]'').val("Unused");//removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    } ',
'    else if(s_sts[$(pThis).val()] == ''Destroyed at Site''){',
'        $(pThis).parent().parent().find(''select[name=f05]'').val("Unused");//removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    } ',
'    else if(s_sts[$(pThis).val()] == ''Received''){',
'       $(pThis).parent().parent().find(''select[name=f05]'').val(''''); //removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    }',
'    else if(s_sts[$(pThis).val()] == ''Unquarantined''){',
'       $(pThis).parent().parent().find(''select[name=f05]'').val(''''); //removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    }',
'    else if(s_sts[$(pThis).val()] == ''Lost''){',
'    	$(pThis).parent().parent().find(''select[name=f05]'').val('''');//removed f06 to f05 as standard column VipulR on 21-APR-2015',
'        $(pThis).parent().parent().find(''select[name=f05]'').hide(); //removed f06 to f05 as standard column VipulR on 21-APR-2015',
'    }',
'',
'    checkMaxQty(pThis);',
'}',
'',
'//',
'//End: set Max. Shipment Qty. as defined in ARM Detail...(Nikhil)',
'//',
'',
'',
'',
'//',
'//Start: Check duplicate Bottle # ...(Nikhil)',
'//',
'',
'(function( $ ){',
'      $.fn.valList = function(){',
'            return $.map( this, function (elem) {',
'                  return $(elem).find("option:selected").prop("value") || "";',
'            }).join( "," );',
'      };',
'})( jQuery );',
'',
'',
'function checkDupBottle(pThis){',
'    ',
'    $("select[name=f04]").each(function(){',
'    	$(this).css(''color'','''');',
'    });',
'',
'    ',
'    allSel = "," + $("select[name=f04]").valList() + "," ;',
'	oVal = $(pThis).find("option:selected").prop("value");',
'    ',
'    if(oVal == '''')',
'        return false;',
'    ',
'    allSel = allSel.replace(oVal,'''');',
'    ',
'    if(allSel.length > $("select[name=f04]").length - 1){',
'		if(allSel.indexOf(oVal) >= 0){',
'            $("select[name=f04]").each(function(){',
'                if($(pThis).find("option:selected").prop("value") == $(this).find("option:selected").prop("value")){',
'                    $(this).css(''color'',''red'');',
'                }',
'            });',
'			alert(''IP number already selected for this shipment, Please select another'');            ',
'            $(pThis).val('''');',
'            $(pThis).css(''color'','''');',
'		}		',
'	}      ',
'}',
'//',
'//End: Check duplicate Bottle # ...(Nikhil)',
'//',
'//check and uncheck all',
'function chk_unchk(){',
'    $(''#chk_all'').click(function(){',
'        var chkd = $(this).prop(''checked'');',
'        if (chkd == true){',
'            $(''input[name="f15"]'').prop(''checked'',true);',
'        }',
'        else if(chkd == false) {',
'            $(''input[name="f15"]'').prop(''checked'',false);',
'        }',
'    })',
'}',
'',
'function adRow(){',
'    apex.widget.tabular.addRow();',
'	$(''#report_R128816703354048962 tbody tbody tr:last-child .disb'').parent().append(''<img class="disYes" src="#WORKSPACE_IMAGES#yes.png"><img class="disNo" src="#WORKSPACE_IMAGES#no.png">'');    ',
'    //setMaxQty();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.disb'').parent().append(''<img class="disYes" src="#WORKSPACE_IMAGES#yes.png"><img class="disNo" src="#WORKSPACE_IMAGES#no.png">'');',
'//setMaxQty();',
'chk_unchk();',
'',
'$(''select[name=f04]'').each(function(){',
'    pThis = this;',
'    var maxVal = parseInt(maxQtys[$(pThis).val()]);',
'    maxVal = !maxVal ? 0 : maxVal;',
'    //$(pThis).parent().parent().find(''input[name=f08]'').val(maxVal);',
'    //removed f08 to DERIVED_COL as standard column VipulR on 21-APR-2015',
'      $(pThis).parent().parent().find(''td[headers=DERIVED01]'').html(maxVal);',
'      $(pThis).parent().parent().find(''td[headers=DERIVED01]'').css(''font-weight'',''bold'');',
'',
'$(pThis).parent().parent().find(''input[name=f05]'').val(s_sts[$(pThis).val()]);//removed f05 as standard column',
'    $(pThis).parent().parent().find(''td[headers=SHIP_STATUS]'').html(s_sts[$(pThis).val()]);',
'    $(pThis).parent().parent().find(''td[headers=SHIP_STATUS]'').css(''font-weight'',''bold'');',
'',
'    $(pThis).parent().parent().find(''input[name=f10]'').val(ship_status_id[s_sts[$(pThis).val()]]); //test f12 to f10',
'   ',
'	var qty = parseFloat($(pThis).parent().parent().find(''input[name=f06]'').val()); //removed f07 to f06 as standard column VipulR on 21-APR-2015',
'    qty = !qty ? 0 : qty;    ',
'',
'    //var mxQty = parseFloat($(pThis).parent().parent().find(''input[name=f08]'').val());',
'    //removed f08 to DERIVED_COL as standard column VipulR on 21-APR-2015',
'    var mxQty = parseFloat($(pThis).parent().parent().find(''td[headers=DERIVED01]'').html());',
'    mxQty = !mxQty ? 0 : mxQty;',
'',
'    if(qty > mxQty){',
'        alert(''Number of Unit must not be greater than Max. No. of Tablets('' + mxQty + '')'');',
'        $(pThis).parent().parent().find(''input[name=f06]'').val('''');//removed f07 to f06 as standard column VipulR on 21-APR-2015',
'    }',
'    //else if($v(''P469_SHIP_STATUS'') != ''Dispatched'' || $v(''P469_SHIP_STATUS'') != ''Delivered''){',
'        else if(qty < mxQty && qty > 0){',
'            $(pThis).parent().parent().find(''.disYes'').attr(''style'',''display:block !important'');',
'            $(pThis).parent().parent().find(''.disNo'').attr(''style'',''display:none !important'');',
'            //--$(pThis).parent().parent().find(''input[name=f08]'').val(''Yes'');',
'            ',
'            //$(pThis).parent().parent().find(''input[name=f07]'').attr(''readonly'',false); //changed f09 to f07',
'            $(pThis).parent().parent().find(''.remarkTxt'').attr(''readonly'',false);',
'        }',
'        else{',
'            $(pThis).parent().parent().find(''.disYes'').attr(''style'',''display:none !important'');',
'            $(pThis).parent().parent().find(''.disNo'').attr(''style'',''display:block !important'');',
'            //--$(pThis).parent().parent().find(''input[name=f08]'').val(''No'');',
'            ',
'            //$(pThis).parent().parent().find(''input[name=f07]'').val('''');',
'            //$(pThis).parent().parent().find(''input[name=f07]'').attr(''readonly'',true);        ',
'            $(pThis).parent().parent().find(''.remarkTxt'').val('''');',
'            $(pThis).parent().parent().find(''.remarkTxt'').attr(''readonly'',true);',
'        }',
'});',
'    '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.disb{',
'    display : none;   ',
'}',
'',
'.disNo{',
'    display : none;    ',
'    width: 16px;',
'    height: 16px;',
'    padding-left: 20px;',
'}',
'',
'.disYes{',
'    display : none;',
'    width: 16px;',
'    height: 16px;',
'    padding-left: 20px;    ',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052070859176873573)
,p_plug_name=>'IP Supply Management'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:10px;width: 220px;"'
,p_plug_display_sequence=>1
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>'283,372,374,469'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052071080129873579)
,p_plug_name=>'Return IP to Depot'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>'style="width:930px;"'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11052074869825873586)
,p_name=>'Kit to be returned to Depot'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_ITEM.CHECKBOX(15,RET_DTLS_ID) TEMP_ID,',
'       "RET_DTLS_ID",',
'       --"RET_DTLS_ID" RET_DTLS_ID_DISPLAY,',
'       "SHIP_ID",',
'       "IP_ID",',
'       "RET_DTLS_COMMENT",',
'       "IP_QTY",',
'       "DISTURBANCY",',
'       "REMARK",',
'       USED_UNUSED,',
'       shipped_status,',
'       NULL AS SHIP_STATUS,    -- Modified by VipulR on 21-APR-2015',
'       ORG_IP_STATUS,',
'       NULL AS DERIVED01,',
'       (SELECT study_arm_id FROM edc_ip_detail WHERE IP_ID = A.IP_ID) study_arm_id,',
'       '''' "AUDIT"',
'  from "#OWNER#"."EDC_IP_SHIPMENT_RETURN_DTLS" A',
' where ship_id = :P207_SHIP_ID',
' order by IP_ID'))
,p_display_when_condition=>'P207_SHIP_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Kit not added, Please click ''<b>Add Kit</b>'' button to select Kit for this Shipment'
,p_query_num_rows_item=>'P207_MAX_ROW_PAGES'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052076256514873588)
,p_query_column_id=>1
,p_column_alias=>'TEMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'<input type="checkbox" id="chk_all" value="0" autocomplete="off"/>'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075388484873587)
,p_query_column_id=>2
,p_column_alias=>'RET_DTLS_ID'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'     v_number number;',
'BEGIN',
'     SELECT NVL(MAX(RET_DTLS_ID),0) + 1 into v_number FROM EDC_IP_SHIPMENT_RETURN_DTLS;',
'     return v_number;',
'END;'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_RETURN_DTLS'
,p_ref_column_name=>'RET_DTLS_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075476862873587)
,p_query_column_id=>3
,p_column_alias=>'SHIP_ID'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P207_SHIP_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_RETURN_DTLS'
,p_ref_column_name=>'SHIP_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075588859873587)
,p_query_column_id=>4
,p_column_alias=>'IP_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Kit #'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select bottle_no d,ip_id r  From edc_ip_detail',
'where ip_status in (3,-4)',
'and study_id = :APP_EDC_STUDY_ID AND IP_ID IN (SELECT IP_ID FROM EDC_IP_SHIPMENT_DTLS WHERE SHIP_ID IN(',
'SELECT SHIP_ID FROM EDC_IP_SHIPMENT WHERE STUDY_SITE_ID = (:P207_STUDY_SITE_ID))AND SHIPPED_STATUS NOT IN(8,6))',
'union ALL',
'select a.bottle_no d,a.ip_id r',
'  from edc_ip_detail a, edc_ip_shipment_return_dtls b',
' where a.ip_id = b.ip_id',
'and b.ship_id = :P207_SHIP_ID AND a.STUDY_SITE_ID = (:P207_STUDY_SITE_ID)'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_RETURN_DTLS'
,p_ref_column_name=>'IP_ID'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select bottle_no d,ip_id r  From cro_ip_detail',
'where ip_status = -2',
'select a.bottle_no d,a.ip_id r',
'  from cro_ip_detail a, cro_ip_shipment_return_dtls b',
' where a.ip_id = b.ip_id',
'and a.ip_status = -1',
'',
'',
'select bottle_no d,ip_id r  From cro_ip_detail',
' where ip_status = -2',
'union',
'select a.bottle_no d,a.ip_id r',
'  from cro_ip_detail a, cro_ip_shipment_return_dtls b',
' where a.ip_id = b.ip_id',
'  and a.ip_status = -1;',
'',
'',
'/******* CODE MODIFIED BY VIPUL ON 30-MAR-2015 ********/',
'select bottle_no d,ip_id r  From cro_ip_detail',
'where ip_status = 3',
'and study_id = :APP_EDC_STUDY_ID',
'union ALL',
'select a.bottle_no d,a.ip_id r',
'  from cro_ip_detail a, cro_ip_shipment_return_dtls b',
' where a.ip_id = b.ip_id',
'and b.ship_id = :P207_SHIP_ID AND a.STUDY_SITE_ID = (:P207_STUDY_SITE_ID);',
'/******* CODE MODIFIED BY VIPUL ON 30-MAR-2015 ********/'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075757831873587)
,p_query_column_id=>5
,p_column_alias=>'RET_DTLS_COMMENT'
,p_column_display_sequence=>15
,p_column_heading=>'Comment'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_RETURN_DTLS'
,p_ref_column_name=>'RET_DTLS_COMMENT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075873115873587)
,p_query_column_id=>6
,p_column_alias=>'IP_QTY'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_RETURN_DTLS'
,p_ref_column_name=>'IP_QTY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075985408873588)
,p_query_column_id=>7
,p_column_alias=>'DISTURBANCY'
,p_column_display_sequence=>12
,p_column_heading=>'Discrepancy'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'TEXT'
,p_cattributes=>'class="disb"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052076078896873588)
,p_query_column_id=>8
,p_column_alias=>'REMARK'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_cattributes=>'readonly="readonly" class="remarkTxt"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075065288873587)
,p_query_column_id=>9
,p_column_alias=>'USED_UNUSED'
,p_column_display_sequence=>8
,p_column_heading=>'Used/Unused'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11051850568613150730)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'---Select---'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075184878873587)
,p_query_column_id=>10
,p_column_alias=>'SHIPPED_STATUS'
,p_column_display_sequence=>16
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_IP_SHIPMENT_RETURN_DTLS'
,p_ref_column_name=>'shipped_status'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075661125873587)
,p_query_column_id=>11
,p_column_alias=>'SHIP_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Shipped Status'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10174540991625096195)
,p_query_column_id=>12
,p_column_alias=>'ORG_IP_STATUS'
,p_column_display_sequence=>13
,p_column_heading=>'Kit Status'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11051816672495046750)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052076385780873588)
,p_query_column_id=>13
,p_column_alias=>'DERIVED01'
,p_column_display_sequence=>11
,p_column_heading=>'Max. No. of <br>Unit'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9911229671603911335)
,p_query_column_id=>14
,p_column_alias=>'STUDY_ARM_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Study Arm'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11051769157547568668)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(:APP_EDC_STUDY_ID, :APP_EDC_USER_ID) = 1',
'--------',
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)',
'    AND SUN_21010_DEV.EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(:APP_EDC_STUDY_ID, :APP_EDC_USER_ID) = 1'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7187491096596412393)
,p_query_column_id=>15
,p_column_alias=>'AUDIT'
,p_column_display_sequence=>17
,p_column_heading=>'Audit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP:P76_PAGE_ID,P76_PK_ID,P76_TABLE_NAME:207,#RET_DTLS_ID#,EDC_IP_SHIPMENT_RETURN_DTLS'
,p_column_linktext=>'Audit'
,p_column_link_attr=>'onclick="return false;" class="edit-link"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052075285705873587)
,p_query_column_id=>16
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052076180829873588)
,p_query_column_id=>17
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11052078872869873592)
,p_name=>'Study Information'
,p_template=>wwv_flow_imp.id(11045180167451407887)
,p_display_sequence=>9
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_column=>2
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "CRO_STUDY"."STUDY_ID" as "STUDY_ID",',
'substr(STUDY_NUMBER,1,15) as "STUDY_NUMBER",',
'PROTOCOL_NUMBER as "PROJECT_CODE",',
'CRO_SPONSOR_PKG.GET_SPONSOR_NAME("CRO_STUDY"."SPONSOR_ID") AS "SPONSOR",',
'substr(TITLE,1,82)||case when length(title) > 20 then ''...'' else null end as "Title",',
'CRO_STUDY_PKG.GET_PM_NAMESFROMCSV("CRO_STUDY"."PM_ID") as "Project Manager",',
'"CRO_STUDY"."START_DATE" as "Start Date",',
'"CRO_STUDY"."END_DATE" as "End Date",',
'"CRO_STUDY"."PHASE" as "PHASE",',
'substr(STUDY_ACTIVE,1,20) as "Study Status",',
'"CRO_STUDY"."NO_OF_PATIENTS" as "# of Patients"',
'from "CRO_STUDY" "CRO_STUDY"',
'where "CRO_STUDY"."STUDY_ID" = :APP_EDC_STUDY_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P207_STUDY_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Please Select Project...'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079266718873592)
,p_query_column_id=>1
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:P16_STUDY_ID:#STUDY_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079362018873593)
,p_query_column_id=>2
,p_column_alias=>'STUDY_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Protocol Number'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079460943873593)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Project Number'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079566404873593)
,p_query_column_id=>4
,p_column_alias=>'SPONSOR'
,p_column_display_sequence=>4
,p_column_heading=>'Sponsor'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079681691873593)
,p_query_column_id=>5
,p_column_alias=>'Title'
,p_column_display_sequence=>5
,p_column_heading=>'Protocol Title'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_cattributes_element=>'style="width:200px !important;"'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079784547873593)
,p_query_column_id=>6
,p_column_alias=>'Project Manager'
,p_column_display_sequence=>9
,p_column_heading=>'Project Manager'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079882619873593)
,p_query_column_id=>7
,p_column_alias=>'Start Date'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079959726873593)
,p_query_column_id=>8
,p_column_alias=>'End Date'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052080081913873593)
,p_query_column_id=>9
,p_column_alias=>'PHASE'
,p_column_display_sequence=>8
,p_column_heading=>'Phase'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079071551873592)
,p_query_column_id=>10
,p_column_alias=>'Study Status'
,p_column_display_sequence=>10
,p_column_heading=>'Study Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11052079183098873592)
,p_query_column_id=>11
,p_column_alias=>'# of Patients'
,p_column_display_sequence=>11
,p_column_heading=>'Target Enrollment'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052102666707065905)
,p_plug_name=>'Delivery to Depot'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>11
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052112386887128506)
,p_plug_name=>'IP Supply Management'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1.5
,p_list_id=>wwv_flow_imp.id(11051769575586568669)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062478265146962192)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062962966720411311)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180259607407887)
,p_plug_display_sequence=>25
,p_plug_new_grid_column=>false
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062963376070413947)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_imp.id(11062962966720411311)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052077069321873588)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11052074869825873586)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:adRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.widget.tabular.addRow();setMaxQty()',
'',
'----------Start ----------------',
'--Condition ',
'(Pl/Sql) :P207_SHIP_STATUS not in (''Dispatched'',''Delivered'')',
'----------- End --------------------------------'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052076680735873588)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11052074869825873586)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052071685607873580)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P207_SHIP_ID is not null and :P207_SHIP_STATUS in (''Shipment Created'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2465457206926872872)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'PRINT_PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print IP Return Form'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P207_SHIP_STATUS in (''Dispatched'',''Delivered'') and :APP_EDC_ROLE_ID IN (13,16)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052076467964873588)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11052074869825873586)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052072071442873580)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10172933319585697995)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P207_SHIP_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052071481719873580)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P207_SHIP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8841961492407763378)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'SUBMIT_FOR_REVIEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit For Review'
,p_button_position=>'CREATE2'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'1',
'from"EDC_IP_SHIPMENT_RETURN_DTLS"',
'where ship_id = :P207_SHIP_ID AND :P207_SHIP_ID is not null and :P207_SHIP_STATUS in (''Shipment Created'')'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052071284807873579)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'DISPATCHED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispatch to Depot'
,p_button_position=>'CREATE2'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'1',
'from"EDC_IP_SHIPMENT_RETURN_DTLS"',
'where ship_id = :P207_SHIP_ID AND :P207_SHIP_ID is not null and :P207_SHIP_STATUS in (''Shipment Created'')'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8841830369102770680)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'REVIEWED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Review'
,p_button_position=>'CREATE2'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11061870358538841141)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'1',
'from"EDC_IP_SHIPMENT_RETURN_DTLS"',
'where ship_id = :P207_SHIP_ID AND :P207_SHIP_ID is not null and :P207_SHIP_STATUS in (''Submitted'')'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8841830412577770681)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'APPROVED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE2'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'1',
'from"EDC_IP_SHIPMENT_RETURN_DTLS"',
'where ship_id = :P207_SHIP_ID AND :P207_SHIP_ID is not null and :P207_SHIP_STATUS in (''Reviewed'')'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052076878731873588)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11052074869825873586)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>':P207_SHIP_ID is not null and :P207_SHIP_STATUS not in (''Dispatched'',''Delivered'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10181385468051006589)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11052074869825873586)
,p_button_name=>'ADD_IPS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Add Kit'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P207_SHIP_ID is not null and :P207_SHIP_STATUS not in (''Dispatched'',''Delivered'',''Submitted'',''Reviewed'',''Approved'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052071860242873580)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P207_SHIP_ID is not null and :P207_SHIP_STATUS not in (''Dispatched'',''Delivered'')',
'AND :APP_EDC_ROLE_ID NOT IN (16 /* CRC */)'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11052084678095873604)
,p_branch_action=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:RP,207::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11052084459022873603)
,p_branch_action=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_branch_condition=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1192129015683457745)
,p_name=>'P207_STUDY_DEPOT_ID'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Depot'
,p_source=>'STUDY_DEPOT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.DEPOT_NO||'' - ''||A.DEPOT_NAME AS D, B.STUDY_DEPOT_ID AS R',
'  FROM EDC_DEPOT A',
'  JOIN EDC_STUDY_DEPOT B',
'    ON A.DEPOT_ID = B.DEPOT_ID',
'   --AND INSTR('':''||STUDY_SITES||'':'',:P207_STUDY_SITE_ID,1,1) > 0',
'   AND B.STUDY_ID = :APP_EDC_STUDY_ID',
' ORDER BY B.STUDY_DEPOT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- - Select Depot - -'
,p_lov_null_value=>'P207_STUDY_SITE_ID'
,p_lov_cascade_parent_items=>'P207_STUDY_SITE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 416px;"'
,p_label_alignment=>'RIGHT'
,p_read_only_when=>':P207_SHIP_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select STUDY_SITE_ID from EDC_SITE_CONTACTS where SITE_CONTACT_ID = to_number(:APP_EDC_USER))',
'   and  :APP_EDC_USER_TYPE = 3 ',
'union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select contact_id from EDC_STUDY_CONTACT where study_contact_id =  to_number(:APP_EDC_USER_ID))',
'   and :APP_EDC_USER_TYPE = 2',
'/*union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select a.study_site_id ',
'                            from edc_study_sites a',
'                               , edc_study_contact b ',
'                           where a.user_id = b.contact_id ',
'                             and a.study_id = b.study_id ',
'                             and b.CONTACT_ID = to_number(:APP_EDC_USER)',
'                        )',
'   and :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 17',
'*/',
'union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select STUDY_SITE_ID from EDC_SITE_CONTACTS)',
'   and  :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID in (13,21,18,17)',
'union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_site_id = (select study_site_id from edc_ip_shipment where ship_id = :P207_SHIP_ID)',
'order by 1'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2465259296052193204)
,p_name=>'P207_SHIP_DT_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipment Date'
,p_placeholder=>'Reason for Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2465263849047211273)
,p_name=>'P207_SHIP_COMMENT_CHANGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipment Date'
,p_placeholder=>'Reason for Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185664598407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10148785134800938209)
,p_name=>'P207_MAX_ROW_PAGES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11052074869825873586)
,p_use_cache_before_default=>'NO'
,p_source=>'5000'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052072287562873582)
,p_name=>'P207_STUDY_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052072483634873583)
,p_name=>'P207_SHIP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_source=>'SHIP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052072660615873583)
,p_name=>'P207_SHIP_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_no number;',
'  V_COUNTRY VARCHAR2(30);',
'begin',
'  return null;/*',
'    select count(*)+1 into v_no from EDC_IP_SHIPMENT where STUDY_SITE_ID IN (SELECT STUDY_SITE_ID',
'FROM EDC_STUDY_SITES WHERE STUDY_ID = NVL(:P0_STUDY_ID,:APP_EDC_STUDY_ID))',
' and ship_type = 2;',
' ',
'  SELECT COUNTRY',
'    INTO V_COUNTRY',
'    FROM EDC_STUDY_SITES',
'   WHERE STUDY_SITE_ID = :P207_STUDY_SITE_ID;',
' ',
' SELECT V_COUNTRY||'' - ''||LPAD(COUNT(A.SHIP_ID) + 1,2,0) SHP',
'            INTO v_no',
'            FROM EDC_IP_SHIPMENT A',
'            JOIN EDC_STUDY_SITES B',
'              ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'            JOIN EDC_SITES C',
'              ON B.SITE_ID = C.SITE_ID',
'             AND A.SHIP_TYPE = 1',
'             AND C.COUNTRY = V_COUNTRY;',
'    return v_no;*/',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Shipment No.'
,p_placeholder=>'Autogenerated'
,p_source=>'SHIP_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>20
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'updated by sanjay 04-3-2015',
'declare',
'  v_no number;',
'begin',
'    select count(*)+1 into v_no from CRO_IP_SHIPMENT where STUDY_SITE_ID IN (SELECT CRO_STUDY_SITE_ID',
'FROM CRO_STUDY_SITES WHERE STUDY_ID = NVL(:P0_STUDY_ID,:APP_EDC_STUDY_ID)) AND  SHIP_TYPE = 2; ',
'    return v_no;',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052072871815873584)
,p_name=>'P207_SHIP_DT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipment Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'SHIP_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>9
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2100'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052073081091873584)
,p_name=>'P207_STUDY_SITE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site'
,p_source=>'STUDY_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D,',
'       A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND SUN_21010_DEV.EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- - Select Site - -'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 416px;"'
,p_label_alignment=>'RIGHT'
,p_read_only_when=>':P207_SHIP_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select STUDY_SITE_ID from EDC_SITE_CONTACTS where SITE_CONTACT_ID = to_number(:APP_EDC_USER))',
'   and  :APP_EDC_USER_TYPE = 3 ',
'union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select contact_id from EDC_STUDY_CONTACT where study_contact_id =  to_number(:APP_EDC_USER_ID))',
'   and :APP_EDC_USER_TYPE = 2',
'/*union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select a.study_site_id ',
'                            from edc_study_sites a',
'                               , edc_study_contact b ',
'                           where a.user_id = b.contact_id ',
'                             and a.study_id = b.study_id ',
'                             and b.CONTACT_ID = to_number(:APP_EDC_USER)',
'                        )',
'   and :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID = 17',
'*/',
'union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_id = :APP_EDC_STUDY_ID',
'   AND Study_site_id in ( select STUDY_SITE_ID from EDC_SITE_CONTACTS)',
'   and  :APP_EDC_USER_TYPE = 1 and :APP_EDC_ROLE_ID in (13,21,18,17)',
'union',
'SELECT '' Site : ''||a.site_number||'' ( ''||b.invname||'' )'' d, a.study_site_id r ',
'  FROM EDC_STUDY_SITES a, edc_sites b',
' where a.site_id = b.site_id',
'   and a.study_site_id = (select study_site_id from edc_ip_shipment where ship_id = :P207_SHIP_ID)',
'order by 1'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052073288041873585)
,p_name=>'P207_SHIP_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Shipment Created'
,p_prompt=>'<b> Status </b>'
,p_source=>'SHIP_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly;"'
,p_label_alignment=>'RIGHT'
,p_display_when=>'P207_SHIP_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052073472544873585)
,p_name=>'P207_SHIP_COMMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Comment </b>'
,p_source=>'SHIP_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052073668032873585)
,p_name=>'P207_CREATED_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11062963376070413947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Created By </b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052073875724873585)
,p_name=>'P207_CREATED_DT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11062963376070413947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Created On </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052074058689873585)
,p_name=>'P207_UPDATED_BY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11062963376070413947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Updated By </b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052074257811873585)
,p_name=>'P207_UPDATED_DT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11062963376070413947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Updated On </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052074463467873586)
,p_name=>'P207_SHIP_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_source=>'SHIP_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052074686532873586)
,p_name=>'P207_SHIP_DOSE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11052102666707065905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship Dose'
,p_source=>'SHIP_DOSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052080387799873598)
,p_name=>'P207_FLAG'
,p_item_sequence=>140
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2688418940020553649)
,p_computation_sequence=>10
,p_computation_item=>'P207_SHIP_NO'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_NO VARCHAR2(30);',
'  V_COUNTRY VARCHAR2(30);',
'BEGIN',
'  SELECT COUNT(*)+1',
'    INTO V_NO',
'    FROM EDC_IP_SHIPMENT',
'   WHERE SHIP_TYPE = 2;',
'/*',
'  SELECT COUNTRY',
'    INTO V_COUNTRY',
'    FROM EDC_STUDY_SITES',
'   WHERE STUDY_SITE_ID = :P207_STUDY_SITE_ID;',
'*/',
'  SELECT /*V_COUNTRY||*/ ''R - ''||LPAD(COUNT(A.SHIP_ID) + 1,3,0) SHP',
'    INTO V_NO',
'    FROM EDC_IP_SHIPMENT A',
'    JOIN EDC_STUDY_SITES B',
'      ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'    JOIN EDC_SITES C',
'      ON B.SITE_ID = C.SITE_ID',
'     AND A.SHIP_TYPE = 2;',
'--     AND C.COUNTRY = V_COUNTRY;',
'    RETURN V_NO;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN NULL;',
'END;'))
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11052077568674873591)
,p_tabular_form_region_id=>wwv_flow_imp.id(11052074869825873586)
,p_validation_name=>'SHIP_ID not null'
,p_validation_sequence=>30
,p_validation=>'SHIP_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(11052076680735873588)
,p_associated_column=>'SHIP_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11052077784158873591)
,p_tabular_form_region_id=>wwv_flow_imp.id(11052074869825873586)
,p_validation_name=>'SHIP_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'SHIP_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(11052076680735873588)
,p_associated_column=>'SHIP_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11052077983128873591)
,p_tabular_form_region_id=>wwv_flow_imp.id(11052074869825873586)
,p_validation_name=>'IP_ID not null'
,p_validation_sequence=>40
,p_validation=>'IP_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(11121881902667123961)
,p_associated_column=>'IP_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11052078162120873591)
,p_tabular_form_region_id=>wwv_flow_imp.id(11052074869825873586)
,p_validation_name=>'IP_ID must be numeric'
,p_validation_sequence=>40
,p_validation=>'IP_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(11121881902667123961)
,p_associated_column=>'IP_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11052080684168873599)
,p_validation_name=>'P207_STUDY_SITE_ID'
,p_validation_sequence=>80
,p_validation=>'P207_STUDY_SITE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>':REQUEST IN(''SAVE'',''CREATE'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(11052073081091873584)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2461021132520608274)
,p_validation_name=>'P207_SHIP_DT is not null'
,p_validation_sequence=>100
,p_validation=>'P207_SHIP_DT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>':REQUEST IN(''SAVE'',''CREATE'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(11052072871815873584)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2465263765683211272)
,p_validation_name=>'P207_SHIP_DT_CHANGE'
,p_validation_sequence=>110
,p_validation=>'P207_SHIP_DT_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for Changing "Shipment Date" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SHIP_DT VARCHAR2(200);',
'BEGIN',
'  IF :P207_SHIP_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TO_CHAR(SHIP_DT,''DD-MON-YYYY'')',
'      INTO V_SHIP_DT',
'      FROM EDC_IP_SHIPMENT',
'     WHERE SHIP_ID = :P207_SHIP_ID;',
'',
'    IF V_SHIP_DT != UPPER(:P207_SHIP_DT) THEN',
'      RETURN TRUE;',
'    ELSIF V_SHIP_DT IS NULL AND :P207_SHIP_DT IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_SHIP_DT IS NOT NULL AND :P207_SHIP_DT IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(2465259296052193204)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2465264414724211278)
,p_validation_name=>'P207_SHIP_COMMENT_CHANGE'
,p_validation_sequence=>120
,p_validation=>'P207_SHIP_COMMENT_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for Changing "Comment" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SHIP_COMMENT VARCHAR2(200);',
'BEGIN',
'  IF :P207_SHIP_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT SHIP_COMMENT',
'      INTO V_SHIP_COMMENT',
'      FROM EDC_IP_SHIPMENT',
'     WHERE SHIP_ID = :P207_SHIP_ID;',
'',
'    IF V_SHIP_COMMENT != :P207_SHIP_COMMENT THEN',
'      RETURN TRUE;',
'    ELSIF V_SHIP_COMMENT IS NULL AND :P207_SHIP_COMMENT IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_SHIP_COMMENT IS NOT NULL AND :P207_SHIP_COMMENT IS NULL THEN',
'      RETURN TRUE;     ',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(2465263849047211273)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1192129676388457751)
,p_validation_name=>'P207_STUDY_DEPOT_ID_NN'
,p_validation_sequence=>130
,p_validation=>'P207_STUDY_DEPOT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>':REQUEST IN(''SAVE'',''CREATE'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11052082962117873602)
,p_name=>'Check IP'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_STUDY_SITE_ID'
,p_condition_element=>'P207_STUDY_SITE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052083477745873602)
,p_event_id=>wwv_flow_imp.id(11052082962117873602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_CNT NUMBER;',
'BEGIN',
'    select COUNT(*) INTO V_CNT from edc_ip_detail WHERE  STUDY_SITE_ID = :P207_STUDY_SITE_ID;',
'    IF V_CNT = 0  THEN ',
'            :P207_FLAG := 1;    ',
'    ELSE    ',
'            if :P207_SHIP_ID is null then',
'               :P207_FLAG := 2;          ',
'            else',
'               :P207_FLAG := 3;',
'            end if;',
'    END IF;',
'END;'))
,p_attribute_02=>'P207_STUDY_SITE_ID,P207_SHIP_ID'
,p_attribute_03=>'P207_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052083262209873602)
,p_event_id=>wwv_flow_imp.id(11052082962117873602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P207_FLAG'')==1)  ',
'{  ',
'      alert(''There is no IP available for this site...'');',
'      $x(''P207_STUDY_SITE_ID'').value = '''';',
'}',
'else if($v(''P207_FLAG'')==2)',
'{',
'      var a = 1;//$x(''P207_STUDY_SITE_ID'').value = '''';',
'}',
'else if($v(''P207_FLAG'')==3)',
'{',
'         doSubmit(''CHANGE_SITE'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11052083563297873603)
,p_name=>'Check IP Valid'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_STUDY_SITE_ID'
,p_condition_element=>'P207_STUDY_SITE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052083857436873603)
,p_event_id=>wwv_flow_imp.id(11052083563297873603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'dosubmit(''CHANGE_SITE'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11052083973987873603)
,p_name=>'DELETE PRESSED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11052071860242873580)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052084274361873603)
,p_event_id=>wwv_flow_imp.id(11052083973987873603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var r = confirm("Are you sure you want to delete this Records?");',
'if (r == true) {',
'        doSubmit(''DELETE''); ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10172934851947699457)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10172933319585697995)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10172935304496699457)
,p_event_id=>wwv_flow_imp.id(10172934851947699457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_PK_ID,P41_TABLE_NAME:&APP_PAGE_ID.,&P207_SHIP_ID.,EDC_IP_SHIPMENT'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10181385540888006590)
,p_name=>'ADD_IPs - (Page 55)'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10181385468051006589)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10181385635256006591)
,p_event_id=>wwv_flow_imp.id(10181385540888006590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:55:&APP_SESSION.:::55:P55_STUDY_SITE_ID:&P207_STUDY_SITE_ID.'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10181386516735006600)
,p_name=>'On Modal Close - Refresh Region'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10181386676392006601)
,p_event_id=>wwv_flow_imp.id(10181386516735006600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11052074869825873586)
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7187503127008482429)
,p_name=>'Open Audit Trail Popup (Page 76)'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7187503546869482439)
,p_event_id=>wwv_flow_imp.id(7187503127008482429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2461021010549608272)
,p_name=>'set shipment no'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_STUDY_SITE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2461021023955608273)
,p_event_id=>wwv_flow_imp.id(2461021010549608272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_SHIP_NO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_no VARCHAR2(30);',
'  V_COUNTRY number;',
'begin',
'  select count(*)+1 into v_no from EDC_IP_SHIPMENT where STUDY_SITE_ID IN (SELECT STUDY_SITE_ID',
'    FROM EDC_STUDY_SITES WHERE STUDY_ID = NVL(:P0_STUDY_ID,:APP_EDC_STUDY_ID))',
'     and ship_type = 2;',
' ',
'  SELECT COUNTRY_id',
'    INTO V_COUNTRY',
'    FROM EDC_STUDY_SITES',
'   WHERE STUDY_SITE_ID = :P207_STUDY_SITE_ID;',
' ',
' SELECT ''R - ''||LPAD(COUNT(A.SHIP_ID) + 1,3,0) SHP',
'            INTO v_no',
'            FROM EDC_IP_SHIPMENT A',
'            JOIN EDC_STUDY_SITES B',
'              ON A.STUDY_SITE_ID = B.STUDY_SITE_ID',
'            JOIN EDC_SITES C',
'              ON B.SITE_ID = C.SITE_ID',
'             AND A.SHIP_TYPE = 2',
'             AND C.COUNTRY_id = V_COUNTRY;',
'    return v_no;',
'   ',
'   EXCEPTION WHEN OTHERS THEN',
'    RETURN NULL;',
'end;'))
,p_attribute_07=>'P207_STUDY_SITE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2459287730842665318)
,p_name=>'P207_SHIP_DT_CHANGE Show'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SHIP_DT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P207_SHIP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2459287875764665319)
,p_event_id=>wwv_flow_imp.id(2459287730842665318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_SHIP_DT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2459287921491665320)
,p_name=>'P207_SHIP_DT_CHANGE Hide'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SHIP_DT VARCHAR2(200);',
'BEGIN',
'  IF :P207_SHIP_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TO_CHAR(SHIP_DT,''DD-MON-YYYY'')',
'      INTO V_SHIP_DT',
'      FROM EDC_IP_SHIPMENT',
'     WHERE SHIP_ID = :P207_SHIP_ID;',
'',
'    IF V_SHIP_DT != UPPER(:P207_SHIP_DT) THEN',
'      RETURN FALSE;',
'    ELSIF V_SHIP_DT IS NULL AND :P207_SHIP_DT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_SHIP_DT IS NOT NULL AND :P207_SHIP_DT IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2459288092091665321)
,p_event_id=>wwv_flow_imp.id(2459287921491665320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_SHIP_DT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2465264189228211276)
,p_name=>'P207_SHIP_COMMENT SHOW'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SHIP_COMMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P207_SHIP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2465264315362211277)
,p_event_id=>wwv_flow_imp.id(2465264189228211276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_SHIP_COMMENT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2465264639778211281)
,p_name=>'P207_SHIP_COMMENT_CHANGE Hide'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SHIP_COMMENT VARCHAR2(200);',
'BEGIN',
'  IF :P207_SHIP_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT SHIP_COMMENT',
'      INTO V_SHIP_COMMENT',
'      FROM EDC_IP_SHIPMENT',
'     WHERE SHIP_ID = :P207_SHIP_ID;',
'',
'    IF V_SHIP_COMMENT != :P207_SHIP_COMMENT THEN',
'      RETURN FALSE;',
'    ELSIF V_SHIP_COMMENT IS NULL AND :P207_SHIP_COMMENT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_SHIP_COMMENT IS NOT NULL AND :P207_SHIP_COMMENT IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2465264773404211282)
,p_event_id=>wwv_flow_imp.id(2465264639778211281)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_SHIP_COMMENT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2465457231536872873)
,p_name=>'PRINT_PDF jasper print'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2465457206926872872)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2465457371358872874)
,p_event_id=>wwv_flow_imp.id(2465457231536872873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_pat;',
'var v_flag;',
'',
'//window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/SITE_RETURN/IP_ASSIGNED_REP&_repFormat=pdf&_dataSource=default&_outFilename=SITE_IP_RETURN.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''+''&P_APP'
||'_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_SHIP_ID=&P207_SHIP_ID.''+'''',''_blank''); ',
'//window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/SITE_RETURN/IP_ASSIGNED_REP&_repFormat=pdf&_dataSource=default&_outFilename=SITE_IP_RETURN.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''+''&P_APP'
||'_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_SHIP_ID=&P207_SHIP_ID.''+'''',''_blank''); ',
'//window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/SITE_RETURN/IP_ASSIGNED_REP&_repFormat=pdf&_dataSource=default&_outFilename=SITE_IP_RETURN.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''+''&P_APP'
||'_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_SHIP_ID=&P207_SHIP_ID.''+''P_APP_USER=&APP_USER.''+'''',''_blank''); ',
'',
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/SITE_RETURN/IP_ASSIGNED_REP&_repFormat=pdf&_dataSource=default&_outFilename=SITE_IP_RETURN.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''+''&P_STUDY'
||'_ID=&APP_EDC_STUDY_ID.''+''&P_APP_EDC_USER_ID=&APP_EDC_USER_ID.''+''&P_APP_EDC_USER=&APP_EDC_USER.''+''&P_APP_EDC_ROLE_ID=&APP_EDC_ROLE_ID.''+''&P_SHIP_ID=&P207_SHIP_ID.''+''&P_APP_USER=&APP_USER.'',''_blank''); '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052080779627873599)
,p_process_sequence=>50
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'make form read only on Dispached'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P207_SHIP_STATUS in (''Dispatched'',''Delivered'') THEN',
'        htp.p(''<script language="Javascript">'');',
'        htp.p(''$("input,textarea").each(function(){ $(this).attr("readonly","readonly");});'');',
'        htp.p(''$(".remarkTxt").removeClass("remarkTxt");'');',
'        htp.p(''$("select").each(function(){ $(this).attr("disabled","disabled");});'');',
'        htp.p(''$(function(){$("img.ui-datepicker-trigger").css("display","none");});'');',
'	    htp.p(''</script>'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'3'
,p_internal_uid=>11052080779627873599
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052080972339873600)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CRO_IP_SHIPMENT'
,p_attribute_02=>'EDC_IP_SHIPMENT'
,p_attribute_03=>'P207_SHIP_ID'
,p_attribute_04=>'SHIP_ID'
,p_process_error_message=>'fetch'
,p_internal_uid=>11052080972339873600
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052081188076873600)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Max No of Tablets into JQuery array'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_text varchar2(1000);',
'BEGIN',
'',
'    v_text := '''';',
'    htp.p(''<script language="Javascript">'');',
'--    v_text := ''var maxQtys = ['';',
'    htp.p(''var maxQtys = new Array();'');',
'    htp.p(''var s_sts = new Array();'');',
'',
'    for i in (select ip_id id1, /*IP_NO_TABLETS ip,*/ EDC_UTIL.GET_IP_SHIIPED_STATUS (ip_id) S_STATUS From edc_ip_detail',
'where ip_status in (3,-4)',
'and study_id = :APP_EDC_STUDY_ID',
'union ALL',
'select a.ip_id id1, /*a.IP_NO_TABLETS ip,*/ EDC_UTIL.GET_IP_SHIIPED_STATUS (A.ip_id) S_STATUS',
'  from edc_ip_detail a, edc_ip_shipment_return_dtls b',
' where a.ip_id = b.ip_id',
'and b.ship_id = :P207_SHIP_ID',
'        ) loop',
'--        v_text := v_text || i.ip ||  '', '';',
'--htp.p(''maxQtys['' || i.id1 ||''] = "'' || i.ip ||''"; '');',
'htp.p(  ''s_sts['' || i.id1 ||''] = "'' || i.S_STATUS ||''"; '');',
'    end loop;',
'',
'--    v_text := substr(v_text,0,length(v_text) - 1) || '']'';',
'--    htp.p(v_text);',
'    --htp.p(''alert(maxQtys)'');',
'    htp.p(''</script>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'2'
,p_internal_uid=>11052081188076873600
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052078456998873591)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11052074869825873586)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EDC_IP_SHIPMENT_RETURN_DTLS'
,p_attribute_03=>'RET_DTLS_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN(''SAVE'',''SUBMIT'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Kits to be sent added successfully.'
,p_internal_uid=>11052078456998873591
,p_process_comment=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052081376985873600)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(SHIP_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_IP_SHIPMENT;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P207_SHIP_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052071481719873580)
,p_internal_uid=>11052081376985873600
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052082777795873601)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MANUAL MRD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_IP_ID NUMBER;',
'  V_ORG_IP_STATUS NUMBER;',
'BEGIN',
'  FOR I IN 1..APEX_APPLICATION.G_F15.COUNT LOOP',
'    IF TO_NUMBER(APEX_APPLICATION.G_F15(I)) IS NOT NULL THEN',
'',
'      SELECT IP_ID, ORG_IP_STATUS ',
'        INTO V_IP_ID, V_ORG_IP_STATUS',
'        FROM EDC_IP_SHIPMENT_RETURN_DTLS ',
'       WHERE RET_DTLS_ID = TO_NUMBER(APEX_APPLICATION.G_F15(I));',
'',
'      UPDATE EDC_IP_DETAIL',
'         SET IP_STATUS = V_ORG_IP_STATUS                             ',
'       WHERE IP_ID = V_IP_ID;',
'',
'      DELETE FROM EDC_IP_SHIPMENT_RETURN_DTLS',
'       WHERE RET_DTLS_ID = TO_NUMBER(APEX_APPLICATION.G_F15(I));',
'',
'    END IF;',
'  END LOOP;',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052076878731873588)
,p_process_success_message=>'Action Processed'
,p_internal_uid=>11052082777795873601
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ip_id number;',
'v_pre_ip_status number;',
'BEGIN',
'        FOR I IN 1..APEX_APPLICATION.G_F10.COUNT',
'        LOOP',
'          IF TO_NUMBER(APEX_APPLICATION.G_F10(I)) IS NOT NULL THEN',
'            ',
'SELECT IP_ID, pre_IP_STATUS ',
'  into v_ip_id,v_pre_ip_status',
'  FROM EDC_IP_SHIPMENT_RETURN_DTLS ',
'  WHERE RET_DTLS_ID=TO_NUMBER(APEX_APPLICATION.G_F10(I));',
'',
'            UPDATE edc_ip_detail',
'            SET IP_STATUS = v_pre_ip_status                             ',
'            WHERE IP_ID =v_ip_id;',
'              ',
'            DELETE',
'            FROM EDC_IP_SHIPMENT_RETURN_DTLS WHERE ',
'             RET_DTLS_ID=TO_NUMBER(APEX_APPLICATION.G_F10(I));',
'            ',
'          END IF;',
'          ',
'        END LOOP;',
'',
'			COMMIT;',
'',
'',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052078684499873592)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11052074869825873586)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EDC_IP_SHIPMENT_RETURN_DTLS'
,p_attribute_03=>'RET_DTLS_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>11052078684499873592
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052081566661873600)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_IP_SHIPMENT'
,p_attribute_02=>'EDC_IP_SHIPMENT'
,p_attribute_03=>'P207_SHIP_ID'
,p_attribute_04=>'SHIP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DISPATCHED'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11052081566661873600
,p_process_comment=>'Shipment Created.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8841961670582763379)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit_for_review'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update edc_ip_shipment',
'set ship_status = ''Submitted''',
'where ship_id = :P207_SHIP_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#sqlerrm#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8841961492407763378)
,p_process_success_message=>'Submitted for Review.'
,p_internal_uid=>8841961670582763379
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update CRO_IP_SHIPMENT set SHIP_STATUS=''Dispatched'' where SHIP_ID = :P382_SHIP_ID;',
'',
'        update cro_ip_detail',
'           set ip_status = -1',
'         where ip_status =  -2;      ',
'    commit;',
'',
'end;',
'',
'Shipment Details Entered.',
'',
'Shipment Details Entered.'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8841961755431763380)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Review'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update edc_ip_shipment',
'set ship_status = ''Reviewed''',
'where ship_id = :P207_SHIP_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#sqlerrm#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8841830369102770680)
,p_process_success_message=>'Reviewed.'
,p_internal_uid=>8841961755431763380
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update CRO_IP_SHIPMENT set SHIP_STATUS=''Dispatched'' where SHIP_ID = :P382_SHIP_ID;',
'',
'        update cro_ip_detail',
'           set ip_status = -1',
'         where ip_status =  -2;      ',
'    commit;',
'',
'end;',
'',
'Shipment Details Entered.',
'',
'Shipment Details Entered.'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8841961792917763381)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update edc_ip_shipment',
'set ship_status = ''Approved''',
'where ship_id = :P207_SHIP_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#sqlerrm#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8841830412577770681)
,p_process_success_message=>'Approved.'
,p_internal_uid=>8841961792917763381
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update CRO_IP_SHIPMENT set SHIP_STATUS=''Dispatched'' where SHIP_ID = :P382_SHIP_ID;',
'',
'        update cro_ip_detail',
'           set ip_status = -1',
'         where ip_status =  -2;      ',
'    commit;',
'',
'end;',
'',
'Shipment Details Entered.',
'',
'Shipment Details Entered.'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10897041348246574831)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT AVAILABLE IPS '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MAX_DTLS_ID NUMBER;',
'BEGIN',
'',
'    SELECT NVL(MAX(RET_DTLS_ID),0) + 1',
'      INTO V_MAX_DTLS_ID',
'      FROM EDC_IP_SHIPMENT_RETURN_DTLS;',
'',
'    FOR I IN (SELECT IP_ID',
'                   , IP_STATUS',
'                FROM EDC_IP_DETAIL',
'               WHERE STUDY_SITE_ID = :P207_STUDY_SITE_ID',
'                 AND STUDY_ID = :APP_EDC_STUDY_ID',
'                 AND IP_STATUS IN (''3'', ''7'', ''9'' ,''10'' ,''11'', ''12'') /*Received at Site, Expired at Site, Damaged at Site, Lost at Site, Qurantined at Site, Destroyed at Site*/',
'                 AND IP_ID NOT IN(SELECT IP_ID',
'                                    FROM EDC_IP_SHIPMENT_RETURN_DTLS D',
'                                   WHERE ((SELECT COUNT(*) FROM EDC_IP_SHIPMENT_DTLS WHERE IP_ID = D.IP_ID) <= (SELECT COUNT(*) FROM EDC_IP_SHIPMENT_RETURN_DTLS  WHERE IP_ID = D.IP_ID))',
'                                 )',
'             )',
'    LOOP',
'        INSERT INTO EDC_IP_SHIPMENT_RETURN_DTLS( RET_DTLS_ID',
'                                               , SHIP_ID',
'                                               , IP_ID',
'                                               , IP_QTY',
'                                               , ORG_IP_STATUS',
'                                               )',
'                                         VALUES( V_MAX_DTLS_ID',
'                                               , :P207_SHIP_ID',
'                                               , I.IP_ID',
'                                               , 1',
'                                               , I.IP_STATUS',
'                                               );',
'        V_MAX_DTLS_ID := V_MAX_DTLS_ID + 1;',
'    END LOOP;',
'',
'    COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052071481719873580)
,p_process_when_type=>'NEVER'
,p_internal_uid=>10897041348246574831
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052082571229873601)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_IP_SHIPMENT_AND DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR C1 IS',
'    select ret_dtls_id',
'         , ip_id',
'         , pre_ip_status',
'         , pre_shiiped_status',
'         , ORG_IP_STATUS',
'      from edc_ip_shipment_return_dtls',
'     where ship_id = :P207_SHIP_ID;',
'BEGIN',
'    FOR I IN C1 ',
'    LOOP',
'       update edc_ip_detail',
'         set ip_status = I.ORG_IP_STATUS',
'        where ip_id = I.IP_ID;',
'        NULL;',
'    END LOOP;',
'',
'    delete',
'      from edc_ip_shipment_return_dtls',
'     where ship_id = :P207_SHIP_ID;',
'',
'    delete',
'      from edc_ip_shipment',
'     where ship_id = :P207_SHIP_ID;',
'',
'    COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Shipment Deleted successfully.'
,p_internal_uid=>11052082571229873601
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052081779853873600)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save as Draft'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'V_TEMP NUMBER;',
'v_prev_ip_status number;',
'v_prev_ship_status number;',
'v_max_ship_id number;',
'',
'cursor c1 is ',
'  SELECT ip_id ,ip_qty',
'FROM EDC_IP_SHIPMENT_RETURN_DTLS',
'where ship_id = :P207_SHIP_ID;',
'',
'begin',
'update EDC_IP_SHIPMENT set SHIP_STATUS=''Draft'' where SHIP_ID = :P207_SHIP_ID;',
'',
'    for i in c1 ',
'    loop',
'   ',
'',
'select max(ship_id)',
'  into v_max_ship_id',
'  from edc_ip_shipment',
'  where ship_id in ',
'  (select  ship_id from edc_ip_shipment_dtls where ip_id =  i.ip_id',
'  union ',
'  select  ship_id from edc_ip_shipment_return_dtls where ip_id =  i.ip_id)',
'  and ship_id < :P207_SHIP_ID ;',
'',
' select shipped_status',
'  into v_prev_ship_status',
'  from edc_ip_shipment_return_dtls',
'   where ship_id = v_max_ship_id',
'   and ip_id = i.ip_id',
'  union',
'  select shipped_status',
'  from edc_ip_shipment_dtls',
'   where ship_id = v_max_ship_id',
'   and ip_id =i.ip_id ;',
'',
'select ip_status',
'  into v_prev_ip_status',
'  from edc_ip_detail',
' where ip_id = i.ip_id ;',
'',
'        update EDC_IP_SHIPMENT_RETURN_DTLS',
'         set ip_status = 20,',
'             pre_ip_status = v_prev_ip_status,',
'             pre_shiiped_status = v_prev_ship_status',
'         where ip_id = i.ip_id;  ',
'',
'update edc_ip_detail',
'           set ip_status = 20 WHERE IP_ID =  i.ip_id;',
'     ',
'    end loop;',
'    ',
'    COMMIT;  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#sqlerrm#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052071685607873580)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'&nbsp;&nbsp;&nbsp;'
,p_internal_uid=>11052081779853873600
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update CRO_IP_SHIPMENT set SHIP_STATUS=''Dispatched'' where SHIP_ID = :P382_SHIP_ID;',
'',
'        update cro_ip_detail',
'           set ip_status = -1',
'         where ip_status =  -2;      ',
'    commit;',
'',
'end;',
'',
'Shipment Details Entered.',
'',
'declare ',
'V_TEMP NUMBER;',
'cursor c1 is ',
'  SELECT ip_id ,ip_qty',
'FROM CRO_IP_SHIPMENT_RETURN_DTLS',
'where ship_id = :P207_SHIP_ID;',
'',
'begin',
'update CRO_IP_SHIPMENT set SHIP_STATUS=''Draft'' where SHIP_ID = :P207_SHIP_ID;',
'',
'    for i in c1 ',
'    loop',
'      V_TEMP := 1;',
' /*       ',
'        update cro_ip_detail',
'           set ip_status = 5',
'               --,IP_NO_TABLETS = i.ip_qty',
'         where ip_id = i.ip_id;  */    ',
'     ',
'        update CRO_IP_SHIPMENT_RETURN_DTLS',
'         set ip_status = 20',
'         where ip_id = i.ip_id;  ',
'     COMMIT;    ',
'    end loop;',
'    ',
'    --commit;',
'end;',
'-- updated by krunal on 04042015 to set previous status',
'declare ',
'V_TEMP NUMBER;',
'V_CNT NUMBER;',
'  ',
'',
'begin',
'update CRO_IP_SHIPMENT set SHIP_STATUS=''Draft'' where SHIP_ID = :P207_SHIP_ID;',
'',
'   -- for i in c1 ',
'  --  loop',
'SELECT COUNT(*) INTO  V_CNT ',
'FROM CRO_IP_SHIPMENT_RETURN_DTLS',
'where ship_id = :P207_SHIP_ID;',
'IF V_CNT > 0 THEN',
'      V_TEMP := 1;',
'',
'        update CRO_IP_SHIPMENT_RETURN_DTLS',
'         set ip_status = 20',
'         where SHIP_id = :P207_SHIP_ID;  ',
'update cro_ip_detail',
'           set ip_status = 20 WHERE IP_ID IN (SELECT IP_ID FROM CRO_IP_SHIPMENT_RETURN_DTLS',
'         where SHIP_id = :P207_SHIP_ID);',
'     COMMIT;    ',
'',
' END IF;',
' /*       ',
'        update cro_ip_detail',
'           set ip_status = 5',
'               --,IP_NO_TABLETS = i.ip_qty',
'         where ip_id = i.ip_id;  */    ',
'     ',
'    --end loop;',
'    ',
'    --commit;',
'end;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052082160600873601)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_IP_DETAIL - on Dispatch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_IP_STATUS NUMBER;',
'    V_QTY NUMBER;',
'    V_RES NUMBER;',
'',
'    CURSOR C1 IS',
'    SELECT ip_id',
'         , ip_qty',
'      FROM EDC_IP_SHIPMENT_RETURN_DTLS',
'     WHERE ship_id = :P207_SHIP_ID;',
'BEGIN',
'    SELECT COUNT(IP_ID)',
'      INTO V_QTY',
'      FROM EDC_IP_SHIPMENT_RETURN_DTLS',
'     WHERE SHIP_ID = :P207_SHIP_ID;',
'',
'    UPDATE EDC_IP_SHIPMENT',
'       SET SHIP_STATUS = ''Dispatched''',
'         , KITS = V_QTY',
'     WHERE SHIP_ID = :P207_SHIP_ID;',
'',
'    FOR I IN C1 ',
'    LOOP',
'        UPDATE edc_ip_detail',
'           SET ip_status = 5',
'               --,IP_NO_TABLETS = i.ip_qty',
'         WHERE ip_id = i.ip_id;      ',
'/*',
'        SELECT IP_STATUS',
'          INTO V_IP_STATUS',
'          FROM EDC_IP_DETAIL',
'         WHERE IP_ID = I.IP_ID;',
'*/',
'        UPDATE EDC_IP_SHIPMENT_RETURN_DTLS',
'           SET ip_status = 5',
'             , shipped_status = DECODE(ORG_IP_STATUS,',
'                                       --3, 1,   -- Received at Site		to Received',
'                                       3, 11,  -- Returned from Site    to Returned',
'                                       7, 5,   -- Expired at Site		to Expired',
'                                       9, 2,   -- Damaged at Site		to Damanged',
'                                       10, 8,  -- Lost at Site			to Lost',
'                                       11, 3,  -- Quarantined at Site	to Qurantined',
'                                       12, 6,  -- Destroyed at Site		to Destroyed',
'                                       17, 4,  -- Unquarantined at Site to Unqurantined',
'                                       20, 10, -- Not received at Site  to Not Received',
'                                       21, 9,  -- Tempretur at Site     to Tempreture',
'                                       --1',
'                                       11',
'                                      )',
'         WHERE ip_id = i.ip_id',
'           AND ship_id = :P207_SHIP_ID;',
'    END LOOP;',
'    COMMIT;',
'    EDC_MAIL.SEND_MAIL_DELIVERY_TO_DEPOT(:P207_SHIP_ID, :APP_EDC_STUDY_ID, V_RES);',
'--CRO_EMAIL_ALERT_PKG.CRO_SHIP_GEN(:P207_SHIP_ID, :P207_STUDY_SITE_ID, :APP_EDC_STUDY_ID, 1);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#sqlerrm#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052071284807873579)
,p_process_success_message=>'Kit Dispatched.'
,p_internal_uid=>11052082160600873601
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update CRO_IP_SHIPMENT set SHIP_STATUS=''Dispatched'' where SHIP_ID = :P382_SHIP_ID;',
'',
'        update cro_ip_detail',
'           set ip_status = -1',
'         where ip_status =  -2;      ',
'    commit;',
'',
'end;',
'',
'Shipment Details Entered.',
'',
'Shipment Details Entered.'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052081966732873601)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'382'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11052081966732873601
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052082363543873601)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create message'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_application.g_print_success_message := ''<span style=color:green>''||''Shipment Created''||''</span>'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''CREATE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>11052082363543873601
);
wwv_flow_imp.component_end;
end;
/
