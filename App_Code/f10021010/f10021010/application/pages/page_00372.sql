prompt --application/pages/page_00372
begin
--   Manifest
--     PAGE: 00372
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
 p_id=>372
,p_tab_set=>'TS1'
,p_name=>'Delivery to Site'
,p_step_title=>'Delivery to Site'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.ui-autocomplete-loading{background: url("#JQUERYUI_DIRECTORY#themes/base/images/ui-anim_basic_16x16.gif") no-repeat scroll right center transparent;}',
'</style>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
'',
'//To calculate sum of quantity from Tabular Report to "Total Quantity"...(Nikhil)',
'var tot, tmp;',
'function totQty(){',
'	tot = tmp = 0;',
'	$("input[name=f07]").each(function(){',
'		tmp =  parseInt($(this).val());',
'		tot += !tmp ? 0 : tmp;		',
'	});',
'	$(''#P372_SHIP_TOT_QTY'').val(tot);',
'}',
'',
'',
'//To check Total Quantity is less than Available Quantity...(Nikhil)',
'function checkMaxQty(pThis){',
'',
'    var qty = parseFloat($(pThis).parent().parent().find(''input[name=f07]'').val());',
'    qty = !qty ? 0 : qty;    ',
'',
'    ',
'/*    var mxQty = parseFloat($(pThis).parent().parent().find(''input[name=f10]'').val());',
'    mxQty = !mxQty ? 0 : mxQty;',
'*/',
'    ',
'    var doseLevel = $(pThis).closest(''tr'').find(''select[name=f06]'').val();',
'    doseLevel = !doseLevel ? 0 : doseLevel;',
'',
'',
'    var mxQty = parseInt(maxQtys[doseLevel]);',
'    mxQty = !mxQty ? 0 : mxQty;',
'',
'    ',
'    //Max. Shipment Qty.',
'    var maxShipQty = parseInt(maxShipQtys[doseLevel]);',
'    maxShipQty = !maxShipQty ? 0 : maxShipQty;',
'    ',
'    //Min. Shipment Qty.',
'    var minShipQty = parseInt(minShipQtys[doseLevel]);',
'    minShipQty = !minShipQty ? 0 : minShipQty;',
'    ',
'    //console.log(doseLevel + '', '' + maxShipQty  + '', '' + minShipQty);',
'    ',
'/**/    if(qty > mxQty){',
'        alert(''Quantity must not be greater than Available Count(''+mxQty+'')'');',
'        $(pThis).parent().parent().find(''input[name=f07]'').val('''').focus();',
'    }',
'    else ',
' /**/   if(parseInt($v(''P372_SHIP_TOT_QTY'')) > parseInt($v(''P372_AVAILABLE_QUANTITY''))){',
'        alert(''Total Quantity must not be greater than Available Quantity'');',
'        $(pThis).parent().parent().find(''input[name=f07]'').val('''').focus();',
'    }',
'    else',
'    if(qty < minShipQty && $(pThis).parent().parent().find(''input[name=f07]'').val()){',
'        alert(''IP details is less than the Minimum Shipment Quantity(''+minShipQty+'')'');',
'        $(pThis).parent().parent().find(''input[name=f07]'').val('''').focus();',
'    }',
'    else',
'    if(qty > maxShipQty){',
'        alert(''IP details is greater than the Maximum Shipment Quantity(''+maxShipQty+'')'');',
'        $(pThis).parent().parent().find(''input[name=f07]'').val('''').focus();',
'    }',
'    totQty();',
'}',
'',
'',
'//',
'//Start: set Max. Shipment Qty. as defined in ARM Detail...(Nikhil)',
'//',
'function setMaxQty(){',
'    $(''select[name=f06]'').each(function(){',
'    	maxQty(this);',
'    });',
'  ',
'}',
'',
'function maxQty(pThis){',
'  ',
'	//var maxVal = parseInt(maxQtys[$(pThis)[0].selectedIndex]);',
'    var maxVal = parseInt(maxQtys[$(pThis).val()]);',
'    maxVal = !maxVal ? 0 : maxVal;',
'    ',
'    var minVal = parseInt(minShipQtys[$(pThis).val()]);',
'    minVal = !minVal ? 0 : minVal;',
'    ',
'  ',
'    if ($(pThis).val().length > 0){',
'        if (maxVal <= 0){',
'            alert(''Qantity not available for this Dose'');',
'            $(pThis).parent().parent().find(''input[name=f07]'').val(0);',
'            $(pThis).parent().parent().find(''select[name=f05]'').val('''');',
'            $(pThis).val('''');',
'            ',
'        }',
'        else{',
'            $(pThis).parent().parent().find(''input[name=f07]'').val(minVal);',
'        }',
'    }',
'    else{',
'		$(pThis).parent().parent().find(''input[name=f07]'').val(0);		',
'    }',
'    //$(pThis).parent().parent().find(''input[name=f10]'').val(maxVal);',
' //   $(pThis).parent().parent().find(''input[name=f07]'').val(maxVal);',
' //   checkMaxQty(pThis);',
'    //alert(''Maximum available IP is ''+ maxVal);',
'  //alert(pThis.value)',
'}',
'//',
'//End: set Max. Shipment Qty. as defined in ARM Detail...(Nikhil)',
'//',
'',
'',
'',
'',
'//',
'// Start: Cascade Select List for Arm in Tabular Form...(Nikhil.B, 20-Feb-15, Ticket No. 121)',
'//',
'',
'(function($){',
'   ',
' /*** Cascading select list ***/',
' $.fn.htmldbCascade=function(parent,onDemand,options){',
'   ',
'  options=$.extend({',
'   trigger       : false,',
'   extrVal       : false,',
'   nullShow      : false,',
'   nullValue     : "",',
'   nullDisplay   : "%",',
'   disAlias      : "DIS",',
'   retAlias      : "RET",',
'   loadingTxt    : "Loading ...",',
'   loadingCss    : {"width":"80px"}',
'  },options);',
'   ',
'  return this.each(function(i){',
'  ',
'   var self=$(this);',
'   var lParent=$(parent).eq(i);',
'   var lSelfVal=self.val();',
'   if(!lSelfVal){lSelfVal="";};',
'  ',
'   if(!lParent.data("htmldbCascade")){',
'    lParent.change(function(){',
'  ',
'     var lParentVal=$v(this);',
'     if(!lParentVal){lParentVal="";};',
'       ',
'     $.extend(options.loadingCss,{"height":self.parent().height()});',
'   ',
'     self',
'      .hide()',
'      .empty()',
'      .parent()',
'      .find("div.ui-autocomplete-loading")',
'      .remove()',
'      .end()',
'      .append($("<div/>",{"html":options.loadingTxt,"css":options.loadingCss})',
'      .addClass("ui-autocomplete-loading"));',
'   ',
'     if(options.nullShow){',
'      appendOpt(self,options.nullDisplay,options.nullValue);',
'     };',
'   ',
'     $.post("wwv_flow.show",{',
'      p_flow_id:"&APP_ID.",',
'      p_flow_step_id:"&APP_PAGE_ID.",',
'      p_instance:"&APP_SESSION.",',
'      p_request:"APPLICATION_PROCESS="+onDemand,',
'      x01:lParentVal',
'     },function(jd){',
'      var lExists=false;',
'      $.each(jd.row,function(i,d){',
'       if(d[options.retAlias]===lSelfVal){lExists=true;};',
'       appendOpt(self,d[options.disAlias],d[options.retAlias]);',
'      });',
'      if(options.extrVal&&!lExists){',
'       appendOpt(self,lSelfVal,lSelfVal);',
'      };',
'      self',
'       .val(lSelfVal)',
'       .show()',
'       .parent()',
'       .find("div.ui-autocomplete-loading")',
'       .remove();',
'      if(options.trigger){self.trigger(options.trigger);};',
'     },"json");',
'   ',
'    }).data("htmldbCascade",true).trigger("change");',
'   }',
'  });',
'  /*** Append option ***/',
'  function appendOpt(pThis,pDis,pRet){',
'   pThis.append( $("<option/>",{"html":pDis,"value":pRet}) );',
'  };',
' };',
'   ',
'})(apex.jQuery);',
'',
'//',
'// End: Cascade Select List for Arm in Tabular Form...(Nikhil.B, 20-Feb-15, Ticket No. 121)',
'//',
'',
'',
'',
'',
'//',
'//Start: check total of arm quantity is not more than available quantity per arm...(Nikhil.B 16-March-2015)',
'//',
'var dsName = '''';',
'function getDoseName(ky){',
'  $(''select[name=f06]'').each(function(){',
'    if($(this).val() == ky){',
'      dsName = ($(''#'' + $(this).attr(''id'') + '' :selected'').text());',
'      return false;',
'    }',
'  });',
'}',
'',
'var armName = '''';',
'function getArmName(ky){',
'  $(''select[name=f06]'').each(function(){',
'    if($(this).val() == ky){',
'      armName = $(''#'' + $(this).attr(''id'')).closest(''tr'').find(''select[name=f05] :selected'').text();',
'      return false;',
'    }',
'  });',
'}',
'',
'var errText = '''';',
'function checkMaxOnSave(){',
'  errText = '''';',
'  var doseArrayTmp = new Array();',
'  $(''select[name=f06]'').each(function(){',
'    var maxQtyArr = parseInt(doseArrayTmp[$(this).val()]);',
'    maxQtyArr = !maxQtyArr ? 0 : maxQtyArr;',
'    ',
'    var curDosQty = parseInt($(this).closest(''tr'').find(''input[name=f07]'').val());',
'    curDosQty = !curDosQty ? 0 : curDosQty;',
'    ',
'    doseArrayTmp[$(this).val()] =  maxQtyArr + curDosQty;',
'  });',
'  ',
'  //var doseArray = doseArrayTmp.filter(function(v){return v!==''''});',
'  ',
'  ',
'  $.each(doseArrayTmp, function(key, val) {',
'      if(val > maxQtys[key]){',
'        getArmName(key);',
'        getDoseName(key);',
'        /*var armName = $("select[value=''+parseInt(key)+'']").closest(''tr'').find(''select[name=f05] :selected'').map(function() {',
'          return $(this).text();',
'        }).get();',
'        ',
'        var doseLevel = $("select[value=''+parseInt(key)+''] :selected").map(function() {',
'          return $(this).text();',
'        }).get();*/',
'        ',
'    /*    errText = errText + ''Maximum available quantity for Study Arm "'' + armName + ''" and Dose level "'' + dsName + ''" is '' + maxQtys[key] + ''\n'';*/',
'errText = errText + ''Maximum available quantity for Study Arm "'' + armName + ''" and Size "'' + dsName + ''" is '' + maxQtys[key] + ''\n'';',
'      }',
'  });',
'  if(errText.length > 10){',
'    alert(errText);',
'  }',
'  else{',
'    apex.submit(''SAVE'');',
'  }',
'}',
'//',
'//End: check total of arm quantity is not more than available quantity per arm...(Nikhil.B 16-March-2015)',
'//'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//totQty();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.borderGlow { ',
'    outline: none;',
'    border-color: #f00;',
'    box-shadow: 0 0 10px #f00;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
'',
'//To calculate sum of quantity from Tabular Report to "Total Quantity"...(Nikhil)',
'var tot, tmp;',
'function totQty(){',
'	tot = tmp = 0;',
'	$("input[name=f06]").each(function(){',
'		tmp =  parseInt($(this).val());',
'		tot += !tmp ? 0 : tmp;		',
'	});',
'	$(''#P372_SHIP_TOT_QTY'').val(tot);',
'}',
'',
'',
'//To check Total Quantity is less than Available Quantity...(Nikhil)',
'function checkMaxQty(pThis){',
'',
'    var qty = parseFloat($(pThis).parent().parent().find(''input[name=f06]'').val());',
'    qty = !qty ? 0 : qty;    ',
'',
'    ',
'    var mxQty = parseFloat($(pThis).parent().parent().find(''input[name=f09]'').val());',
'    mxQty = !mxQty ? 0 : mxQty;',
'',
'    ',
'    if(qty > mxQty){',
'        alert(''Quantity must not be greater than Maximum Shipment Quantity(''+mxQty+'')'');',
'        $(pThis).parent().parent().find(''input[name=f06]'').val('''');',
'    }',
'    else ',
'    if(parseInt($v(''P372_SHIP_TOT_QTY'')) > parseInt($v(''P372_AVAILABLE_QUANTITY''))){',
'        alert(''Total Quantity must not be greater than Available Quantity'');',
'        //$(pThis).parent().parent().find(''input[name=f06]'').val('''');',
'    }',
'    ',
'    totQty();',
'}',
'',
'',
'//',
'//Start: set Max. Shipment Qty. as defined in ARM Detail...(Nikhil)',
'//',
'function setMaxQty(){',
'    $(''select[name=f05]'').each(function(){',
'    	maxQty(this);',
'    });',
'  ',
'}',
'',
'function maxQty(pThis){',
'  ',
'	//var maxVal = parseInt(maxQtys[$(pThis)[0].selectedIndex]);',
'    var maxVal = parseInt(maxQtys[$(pThis).val()]);',
'    maxVal = !maxVal ? 0 : maxVal;',
'    $(pThis).parent().parent().find(''input[name=f09]'').val(maxVal);',
'    checkMaxQty(pThis);',
'    //alert(''Maximum available IP is ''+ maxVal);',
'  //alert(pThis.value)',
'}',
'//',
'//End: set Max. Shipment Qty. as defined in ARM Detail...(Nikhil)',
'//'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910323645277334233)
,p_plug_name=>'IP Supply Management'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:10px;width: 220px;"'
,p_plug_display_sequence=>1
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>'283,372,374'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9910324057695334235)
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
'substr(STUDY_ACTIVE,1,20) as "Study Status"',
'--"CRO_STUDY"."NO_OF_PATIENTS" as "# of Patients"',
'from "EDC_STUDY" "CRO_STUDY"',
'where "CRO_STUDY"."STUDY_ID" = :APP_EDC_STUDY_ID'))
,p_display_condition_type=>'NEVER'
,p_read_only_when_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P372_STUDY_ID'
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
 p_id=>wwv_flow_imp.id(9910324427365334236)
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
 p_id=>wwv_flow_imp.id(9910324868792334237)
,p_query_column_id=>2
,p_column_alias=>'STUDY_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Protocol Number'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910325237765334237)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Project Number'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910325665835334238)
,p_query_column_id=>4
,p_column_alias=>'SPONSOR'
,p_column_display_sequence=>4
,p_column_heading=>'Sponsor'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910326004258334238)
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
 p_id=>wwv_flow_imp.id(9910326473578334238)
,p_query_column_id=>6
,p_column_alias=>'Project Manager'
,p_column_display_sequence=>8
,p_column_heading=>'Project Manager'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910326858054334239)
,p_query_column_id=>7
,p_column_alias=>'Start Date'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910327242020334239)
,p_query_column_id=>8
,p_column_alias=>'End Date'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910327623773334239)
,p_query_column_id=>9
,p_column_alias=>'PHASE'
,p_column_display_sequence=>9
,p_column_heading=>'Phase'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910327991911334240)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910328421076334240)
,p_plug_name=>'Dispatch IP to Site'
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910328867741334240)
,p_plug_name=>'Kit to be sent to Site'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ip_id',
'     , a.ip_id "IP ID DIS"',
'     , A.DTLS_ID',
'     , a.ip_status',
'     , b.study_arm_id',
'     , a.armd_id',
'     , b.ip_content',
'     , b.ip_dose_level',
'     , b.ip_dose',
'    -- , B.IP_NO_TABLETS',
'     , case when b.ip_dose in (8,16,32,64) then ''<b>Bottle</b>'' else ''<b>Box</b>'' end as "Box/ Bottle"',
'     , B.COUNTRY_ID REGION',
'     , null as "AUDIT"',
'  from edc_ip_shipment_dtls a, edc_ip_detail b',
' WHERE A.IP_ID = B.IP_ID',
'   and ship_id = :P372_SHIP_ID --AND B.IP_STATUS NOT IN(16,17,18)',
' order by a.ip_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P372_SHIP_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9910329191782334242)
,p_name=>'IP to be sent to Site'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'NIKHIL.BUTANI'
,p_internal_uid=>35370814610608647
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910329289151334242)
,p_db_column_name=>'IP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Kit #'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'IP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11051816974756046751)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910329727285334244)
,p_db_column_name=>'IP_STATUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IP_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910330168395334245)
,p_db_column_name=>'STUDY_ARM_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Study ARM'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'STUDY_ARM_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(11051769157547568668)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_ROLE_ID IN (13, 18, 20, 22 /*Admin, DM, Sponsor, Safety*/)',
'',
'',
'SELECT 1 FROM DUAL',
'    WHERE (SELECT BLINDED_FLAG FROM EDC_STUDY) = ''Yes'' ',
'    AND :APP_EDC_ROLE_ID IN (13,18)',
'    AND SUN_21010_DEV.EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(:APP_EDC_STUDY_ID, :APP_EDC_USER_ID) = 1'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910330576600334245)
,p_db_column_name=>'IP_CONTENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'IP Content'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'IP_CONTENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910330927870334245)
,p_db_column_name=>'IP_DOSE_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'IP Size'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'IP_DOSE_LEVEL'
,p_use_as_row_header=>'N'
,p_column_comment=>'EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(NVL(:P371_STUDY_ID,:APP_EDC_STUDY_ID),:APP_USER_ID) = 1'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910331333915334246)
,p_db_column_name=>'IP_DOSE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dose'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'IP_DOSE'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'SUN_21010_DEV.EDC_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(NVL(:P371_STUDY_ID,:APP_EDC_STUDY_ID),:APP_USER_ID) = 1'
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910332119529334246)
,p_db_column_name=>'Box/ Bottle'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Box/ Bottle'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'Box/ Bottle'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9910332523629334247)
,p_db_column_name=>'ARMD_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Arm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ARMD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2684546241251325696)
,p_db_column_name=>'AUDIT'
,p_display_order=>29
,p_column_identifier=>'K'
,p_column_label=>'Audit'
,p_column_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP,76:P76_PK_ID,P76_TABLE_NAME,P76_PAGE_ID:#DTLS_ID#,EDC_IP_SHIPMENT_DTLS,372'
,p_column_linktext=>'Audit'
,p_column_link_attr=>'onclick="return false;" class="edit-link"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2684546410152325697)
,p_db_column_name=>'IP ID DIS'
,p_display_order=>39
,p_column_identifier=>'L'
,p_column_label=>'Ip Id Dis'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2688481607937683357)
,p_db_column_name=>'DTLS_ID'
,p_display_order=>49
,p_column_identifier=>'M'
,p_column_label=>'Dtls Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2008837062898334884)
,p_db_column_name=>'REGION'
,p_display_order=>59
,p_column_identifier=>'O'
,p_column_label=>'Region'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(2007278703369980775)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9910332900621334248)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'353746'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'IP_ID:STUDY_ARM_ID:REGION:AUDIT:'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9910333381527334250)
,p_name=>'IP to be sent'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_ITEM.CHECKBOX(10,SHIP_DOSE_ID) TEMP_ID,',
'"SHIP_DOSE_ID",',
'"SHIP_DOSE_ID" SHIP_DOSE_ID_DISPLAY,',
'"SHIP_ID",',
'"STUDY_ID",',
'"STUDY_ARM_ID",',
'"ARMD_ID",',
'"QUANTITY",',
'"COMMENTS",',
'null AVA_IP',
'from "EDC_IP_SHIPMENT_DOSE"',
'WHERE ship_id = :P372_SHIP_ID'))
,p_display_condition_type=>'NEVER'
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P372_SHIP_ID IS NOT NULL',
'',
'--Condition ',
'--Pl/Sql Expression',
':P372_SHIP_ID IS NOT NULL AND cRO_AUTH_PKG.CRO_STUDY_BLIND_ARM_AUTH(NVL(:P371_STUDY_ID,:APP_STUDY_ID),:APP_USER_ID) =1',
'-----------------------------------------------------------------',
'-------------------------------------------------------------------'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910333794003334250)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910334250037334250)
,p_query_column_id=>2
,p_column_alias=>'TEMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910334655806334251)
,p_query_column_id=>3
,p_column_alias=>'SHIP_DOSE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Ship Dose Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_number number;',
'BEGIN',
'select nvl(max(SHIP_DOSE_ID),0)+1 into v_number  from EDC_IP_SHIPMENT_DOSE;',
'return v_number ;',
'END;'))
,p_include_in_export=>'Y'
,p_ref_schema=>'BILCARE_ABBOTT_LIVE'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DOSE'
,p_ref_column_name=>'SHIP_DOSE_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910335005328334251)
,p_query_column_id=>4
,p_column_alias=>'SHIP_DOSE_ID_DISPLAY'
,p_column_display_sequence=>4
,p_column_heading=>'Ship Dose Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'BILCARE_ABBOTT_LIVE'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DOSE'
,p_ref_column_name=>'SHIP_DOSE_ID_DISPLAY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910335394138334251)
,p_query_column_id=>5
,p_column_alias=>'SHIP_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Ship Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_column_default=>'P372_SHIP_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'BILCARE_ABBOTT_LIVE'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DOSE'
,p_ref_column_name=>'SHIP_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910335823761334252)
,p_query_column_id=>6
,p_column_alias=>'STUDY_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Study Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_column_default=>'APP_EDC_STUDY_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'BILCARE_ABBOTT_LIVE'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DOSE'
,p_ref_column_name=>'STUDY_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910336247844334252)
,p_query_column_id=>7
,p_column_alias=>'STUDY_ARM_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Study Arm'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(11051769157547568668)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'- Select -'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910336671852334252)
,p_query_column_id=>8
,p_column_alias=>'ARMD_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL d,',
'  NULL r',
'FROM DUAL',
'WHERE 1 = 2'))
,p_lov_show_nulls=>'YES'
,p_cattributes=>'onchange="maxQty(this)"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'BILCARE_ABBOTT_LIVE'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DOSE'
,p_ref_column_name=>'ARMD_ID'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Name Rename : rename name of ''Size'' instead of ''Dose level'' on 18th november',
'',
'onchange="getMaxIpCnt(this);"',
'---',
'previous LOV "CRO_ARM_DOS_NAME"...Nikhil.B (20-Feb-2015..Ticket No. 121)',
'',
'---Element Attribute :',
'onchange="maxQty(this)"',
'----------------------------------'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910337031673334253)
,p_query_column_id=>9
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>9
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_cattributes=>'onkeyup="totQty()" onchange="checkMaxQty(this)" style="text-align: right;"'
,p_include_in_export=>'Y'
,p_ref_schema=>'BILCARE_ABBOTT_LIVE'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DOSE'
,p_ref_column_name=>'QUANTITY'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Element Attribute :',
'onkeyup="totQty()" onchange="checkMaxQty(this)" style="text-align: right;"'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910337451403334253)
,p_query_column_id=>10
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>11
,p_column_heading=>'Comment'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>25
,p_include_in_export=>'Y'
,p_ref_schema=>'BILCARE_ABBOTT_LIVE'
,p_ref_table_name=>'EDC_IP_SHIPMENT_DOSE'
,p_ref_column_name=>'COMMENTS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910337840350334253)
,p_query_column_id=>11
,p_column_alias=>'AVA_IP'
,p_column_display_sequence=>12
,p_column_heading=>'Available Count'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>':P372_SHIP_STATUS not in (''Delivered'',''Dispatched'')'
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_cattributes=>'readonly="readonly"'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9910338239216334254)
,p_query_column_id=>13
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Max. Shipment Qty.'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_cattributes=>'readonly="readonly" style="text-align:right" tabindex="9999"'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910343392337334259)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 1000px;"'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910343818705334259)
,p_plug_name=>'Delivery to Site'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="min-width: 1000px;margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>11
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P372_SHIP_STATUS in (''Quarantined'', ''Dispatched'', ''Delivered'')'
,p_plug_read_only_when2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910353059432334268)
,p_plug_name=>'IP_INVENTORY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>6
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(11051769575586568669)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910353403367334268)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>1.1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910353783872334269)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180259607407887)
,p_plug_display_sequence=>30
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910354192017334269)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_imp.id(9910353783872334269)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910338599243334254)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9910333381527334250)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910344186268334260)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_button_name=>'SAVE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:checkMaxOnSave();'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM EDC_IP_SHIPMENT',
' WHERE SHIP_ID = :P372_SHIP_ID AND :P372_SHIP_ID is not null AND :P372_SHIP_STATUS not in (''Quarantined'', ''Dispatched'', ''Delivered'')'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2684545678049325690)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print IWRS Order'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':APP_EDC_ROLE_ID IN (13,18) AND :P372_SHIP_STATUS in (''Quarantined'', ''Dispatched'', ''Delivered'', ''Draft'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910339060525334255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9910333381527334250)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:372:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910344581646334260)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910345032586334260)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P372_SHIP_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910339428294334255)
,p_button_sequence=>28
,p_button_plug_id=>wwv_flow_imp.id(9910333381527334250)
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Add Row'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>':P372_SHIP_STATUS not in (''Dispatched'',''Delivered'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:apex.widget.tabular.addRow();setMaxQty();',
'',
'',
'SELECT 1 FROM EDC_IP_SHIPMENT_DTLS',
' WHERE SHIP_ID = :P372_SHIP_ID AND :P372_SHIP_STATUS not in (''Dispatched'',''Delivered'')'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910339798666334255)
,p_button_sequence=>29
,p_button_plug_id=>wwv_flow_imp.id(9910333381527334250)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete Row'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from EDC_IP_SHIPMENT_DOSE',
'WHERE ship_id = :P372_SHIP_ID AND :P372_SHIP_STATUS not in (''Dispatched'',''Delivered'')'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_button_comment=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910345450621334260)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P372_SHIP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910345863866334261)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_button_name=>'DISPATCHED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispatch to Site'
,p_button_position=>'CREATE2'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from edc_ip_shipment',
' where ship_id = :P372_SHIP_ID',
'   AND :P372_SHIP_STATUS not in (''Quarantined'', ''Dispatched'', ''Delivered'')'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ip_id,a.ip_status,b.study_arm_id,a.armd_id,b.ip_content,b.ip_dose_level,b.ip_dose ,B.IP_NO_TABLETS, case when b.ip_dose in (8,16,32,64) then ''<b>Bottle</b>'' else ''<b>Box</b>'' end as "Box/ Bottle"',
'  from EDC_ip_shipment_dtls a, EDC_ip_detail b',
' WHERE A.IP_ID = B.IP_ID',
'   and ship_id = :P372_SHIP_ID AND :P372_SHIP_ID is not null AND :P372_SHIP_STATUS not in (''Quarantined'', ''Dispatched'', ''Delivered'')'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9910346225977334261)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:apex.confirm(htmldb_delete_message,''DELETE'');',
':P372_SHIP_ID is not null and NVL(:P372_SHIP_STATUS,''Draft'') = ''Draft'''))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9910368919577334340)
,p_branch_action=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(9910369308601334341)
,p_branch_action=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1192129224954457747)
,p_name=>'P372_DATE_VAL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_dt date;',
'begin',
'    select sysdate into v_dt from dual;',
'return v_dt;',
'exception when others then',
'    return null;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2008537089143150793)
,p_name=>'P372_STUDY_DEPOT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_DEPOT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4139307436638153506)
,p_name=>'P372_SHIP_DT_CHANGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
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
 p_id=>wwv_flow_imp.id(9521367325944728020)
,p_name=>'P372_AVAILABLE_ARM_3'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_tot NUMBER := 0;',
'   v_this_ship_tot number := 0;',
'BEGIN',
'	SELECT COUNT(IP_ID)',
'      INTO v_tot',
'      FROM EDC_IP_DETAIL',
'     WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'       AND NVL(IP_STATUS, 1) = 1',
'       AND STUDY_ARM_ID = 3',
'       AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS'') + 1)) - EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS''));',
'/*    IF :P372_SHIP_ID IS NOT NULL THEN',
'    	SELECT NVL(SUM(QUANTITY),0) INTO v_this_ship_tot FROM EDC_IP_SHIPMENT_DOSE D JOIN EDC_IP_SHIPMENT S ON(D.SHIP_ID = S.SHIP_ID)',
'        		WHERE D.SHIP_ID = :P372_SHIP_ID AND S.SHIP_STATUS NOT IN (''Dispatched'',''Delivered'');',
'    END IF;',
'*/    RETURN v_tot + v_this_ship_tot;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'    RETURN 0;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b> Available Placebo Quantity </b>'
,p_source=>'SHIP_AVAILABLE_ARM_3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly = "readonly();"'
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_tot NUMBER;',
'BEGIN',
'	SELECT COUNT(*) INTO v_tot FROM CRO_IP_DETAIL WHERE STUDY_ID = :APP_STUDY_ID AND NVL(IP_STATUS,1) = 1;',
'    RETURN v_tot;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'    RETURN 0;',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9521367349849728021)
,p_name=>'P372_AVAILABLE_ARM_4'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_tot NUMBER := 0;',
'   v_this_ship_tot number := 0;',
'BEGIN',
'	SELECT COUNT(IP_ID)',
'      INTO v_tot',
'      FROM EDC_IP_DETAIL',
'     WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'       AND NVL(IP_STATUS, 1) = 1',
'       AND STUDY_ARM_ID = 4',
'       AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS'') + 1)) - EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS''));',
'/*    IF :P372_SHIP_ID IS NOT NULL THEN',
'    	SELECT NVL(SUM(QUANTITY),0) INTO v_this_ship_tot FROM EDC_IP_SHIPMENT_DOSE D JOIN EDC_IP_SHIPMENT S ON(D.SHIP_ID = S.SHIP_ID)',
'        		WHERE D.SHIP_ID = :P372_SHIP_ID AND S.SHIP_STATUS NOT IN (''Dispatched'',''Delivered'');',
'    END IF;',
'*/    RETURN v_tot + v_this_ship_tot;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'    RETURN 0;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b> Available Placebo Runin Quantity </b>'
,p_source=>'SHIP_AVAILABLE_ARM_4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly = "readonly();"'
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_tot NUMBER;',
'BEGIN',
'	SELECT COUNT(*) INTO v_tot FROM CRO_IP_DETAIL WHERE STUDY_ID = :APP_STUDY_ID AND NVL(IP_STATUS,1) = 1;',
'    RETURN v_tot;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'    RETURN 0;',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9521367494687728022)
,p_name=>'P372_RESCUE_MEDICINE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'<b>Total No of Kits</b>'
,p_source=>'RESCUE_MEDICINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9521367672251728024)
,p_name=>'P372_RESCUE_MEDICINE_OLD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'P372_RESCUE_MEDICINE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910346611637334261)
,p_name=>'P372_SHIP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_source=>'SHIP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910347020279334263)
,p_name=>'P372_SHIP_NO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  --v_no number;',
'  v_no varchar2(300);',
'begin',
'    select to_char(count(*)+1,''000'') into v_no from EDC_IP_SHIPMENT where STUDY_SITE_ID IN (SELECT STUDY_SITE_ID',
'FROM EDC_STUDY_SITES WHERE STUDY_ID = NVL(:P371_STUDY_ID,:APP_EDC_STUDY_ID))',
'and ship_type = 1;',
'    return v_no;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Shipment No.'
,p_source=>'SHIP_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>3
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
'--updated by sanjay 04-03-2015',
'declare',
'  v_no number;',
'begin',
'    select count(*)+1 into v_no from CRO_IP_SHIPMENT where STUDY_SITE_ID IN (SELECT CRO_STUDY_SITE_ID',
'FROM CRO_STUDY_SITES WHERE STUDY_ID = NVL(:P371_STUDY_ID,:APP_STUDY_ID)) AND  SHIP_TYPE = 1 ; ',
'    return v_no;',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910347416012334263)
,p_name=>'P372_SHIP_DT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipment Date'
,p_source=>'SHIP_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>50
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P372_DATE_VAL.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1999:2050'
,p_item_comment=>'to_Date(to_char(localtimestamp,''DD-MON-YYYY''),''DD-MON-YYYY'')'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910347857638334263)
,p_name=>'P372_STUDY_SITE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site'
,p_source=>'STUDY_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.SITE_NUMBER || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || B.INVNAME || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A',
'     , EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID,:P372_STUDY_DEPOT_ID) <> 0',
'   AND EDC_AUTH_PKG.CHECK_REGION_ACCESS(B.COUNTRY_ID,:P372_STUDY_DEPOT_ID) = 1',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---  Select ---'
,p_lov_cascade_parent_items=>'P372_STUDY_DEPOT_ID'
,p_ajax_items_to_submit=>'P372_STUDY_DEPOT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>':P372_SHIP_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910348276049334264)
,p_name=>'P372_SHIP_DOSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dose to be Sent'
,p_source=>'SHIP_DOSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Initial Shipment;1,Replenishment;2'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910348603622334264)
,p_name=>'P372_SHIP_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Draft'
,p_prompt=>'<b> Shipment Status </b>'
,p_source=>'SHIP_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_tag_attributes=>'readonly = "readonly";'
,p_label_alignment=>'RIGHT'
,p_display_when=>'P372_SHIP_ID'
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
 p_id=>wwv_flow_imp.id(9910349390543334265)
,p_name=>'P372_AVAILABLE_QUANTITY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TEST_QTY NUMBER;',
'  V_REF_QTY NUMBER;',
'  V_EXP_CUT_OFF NUMBER := EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS'');',
'BEGIN',
'',
'  SELECT COUNT(IP_ID)',
'    INTO V_TEST_QTY',
'    FROM EDC_IP_DETAIL',
'   WHERE NVL(IP_STATUS, 1) = 1',
'     AND STUDY_DEPOT_ID = :P372_STUDY_DEPOT_ID',
'     AND STUDY_ARM_ID = 1',
'     AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + V_EXP_CUT_OFF + 1)) - V_EXP_CUT_OFF)',
'     AND STUDY_ID = :APP_EDC_STUDY_ID;',
'',
'  /*SELECT COUNT(IP_ID)',
'    INTO V_TEST_QTY',
'    FROM EDC_IP_DETAIL',
'   WHERE NVL(IP_STATUS, 1) = 1',
'     AND STUDY_DEPOT_ID = :P372_STUDY_DEPOT_ID',
'     AND STUDY_ARM_ID = 2',
'     AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + V_EXP_CUT_OFF + 1)) - V_EXP_CUT_OFF)',
'     AND STUDY_ID = :APP_EDC_STUDY_ID;*/',
'',
'RETURN NVL(V_TEST_QTY,0);',
'  --:P372_AVAILABLE_QUANTITY := NVL(V_TEST_QTY,0);',
'  --:P372_AVAILABLE_REF_QUANTITY_1 := V_TEST_QTY;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b> Available Test Quantity </b>'
,p_source=>'SHIP_AVAILABLE_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_attributes=>'readonly = "readonly();"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_tot NUMBER;',
'BEGIN',
'	SELECT COUNT(*) INTO v_tot FROM CRO_IP_DETAIL WHERE STUDY_ID = :APP_STUDY_ID AND NVL(IP_STATUS,1) = 1;',
'    RETURN v_tot;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'    RETURN 0;',
'END;',
'------------',
'DECLARE',
'   v_tot NUMBER := 0;',
'   v_this_ship_tot number := 0;',
'   V_EXP_CUT_OFF NUMBER := EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS'');',
'BEGIN',
'	SELECT COUNT(IP_ID)',
'      INTO v_tot',
'      FROM EDC_IP_DETAIL',
'      WHERE NVL(IP_STATUS, 1) = 1',
'     AND STUDY_DEPOT_ID = :P372_STUDY_DEPOT_ID',
'     AND STUDY_ARM_ID = 1',
'     AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + V_EXP_CUT_OFF + 1)) - V_EXP_CUT_OFF)',
'     AND STUDY_ID = :APP_EDC_STUDY_ID;',
'/*    IF :P372_SHIP_ID IS NOT NULL THEN',
'    	SELECT NVL(SUM(QUANTITY),0) INTO v_this_ship_tot FROM EDC_IP_SHIPMENT_DOSE D JOIN EDC_IP_SHIPMENT S ON(D.SHIP_ID = S.SHIP_ID)',
'        		WHERE D.SHIP_ID = :P372_SHIP_ID AND S.SHIP_STATUS NOT IN (''Dispatched'',''Delivered'');',
'    END IF;',
'*/    RETURN v_tot;-- + v_this_ship_tot;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'    RETURN 0;',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910349868117334265)
,p_name=>'P372_AVAILABLE_REF_QUANTITY_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_tot NUMBER := 0;',
'   v_this_ship_tot number := 0;',
'   V_EXP_CUT_OFF NUMBER := EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS'');',
'BEGIN',
'	SELECT COUNT(IP_ID)',
'      INTO v_tot',
'      FROM EDC_IP_DETAIL',
'     WHERE NVL(IP_STATUS, 1) = 1',
'     AND STUDY_DEPOT_ID = :P372_STUDY_DEPOT_ID',
'     AND STUDY_ARM_ID = 2',
'     AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + V_EXP_CUT_OFF + 1)) - V_EXP_CUT_OFF)',
'     AND STUDY_ID = :APP_EDC_STUDY_ID;',
'/*    IF :P372_SHIP_ID IS NOT NULL THEN',
'    	SELECT NVL(SUM(QUANTITY),0) INTO v_this_ship_tot FROM EDC_IP_SHIPMENT_DOSE D JOIN EDC_IP_SHIPMENT S ON(D.SHIP_ID = S.SHIP_ID)',
'        		WHERE D.SHIP_ID = :P372_SHIP_ID AND S.SHIP_STATUS NOT IN (''Dispatched'',''Delivered'');',
'    END IF;',
'*/    RETURN v_tot;-- + v_this_ship_tot;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'    RETURN 0;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b> Available Placebo Quantity </b>'
,p_source=>'SHIP_AVAILABLE_REF_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_tag_attributes=>'readonly = "readonly();"'
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_tot NUMBER;',
'BEGIN',
'	SELECT COUNT(*) INTO v_tot FROM CRO_IP_DETAIL WHERE STUDY_ID = :APP_STUDY_ID AND NVL(IP_STATUS,1) = 1;',
'    RETURN v_tot;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'    RETURN 0;',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910350239751334266)
,p_name=>'P372_KITS'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'<b>No of Test Kits</b>'
,p_source=>'KITS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4
,p_tag_attributes=>'readonly="readonly''"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910350670672334266)
,p_name=>'P372_PLACIBO_RUNIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'<b>No of Placebo Kits</b>'
,p_source=>'PLACIBO_RUNIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4
,p_tag_attributes=>'readonly'
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910350995455334266)
,p_name=>'P372_KITS_OLD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'P372_KITS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910351393837334267)
,p_name=>'P372_PLACIBO_RUNIN_OLD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'P372_PLACIBO_RUNIN'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910351826890334267)
,p_name=>'P372_SHIP_TOT_QTY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Total Quantity </b>'
,p_source=>'SHIP_TOT_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>5
,p_tag_attributes=>'readonly="readonly" style="text-align: right;"'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P372_SHIP_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910352262652334267)
,p_name=>'P372_SHIP_COMMENT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Comment </b>'
,p_source=>'SHIP_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910352620420334268)
,p_name=>'P372_SHIP_TYPE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'SHIP_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910354590061334270)
,p_name=>'P372_CREATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9910354192017334269)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Created By </b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly = "readonly;"'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(9910355028208334270)
,p_name=>'P372_CREATED_DT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9910354192017334269)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Created On </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9910355408619334270)
,p_name=>'P372_UPDATED_BY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(9910354192017334269)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Updated By </b>'
,p_source=>'UPDATED_BY'
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
 p_id=>wwv_flow_imp.id(9910355792094334271)
,p_name=>'P372_UPDATED_DT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9910354192017334269)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Updated On </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9911228186824911321)
,p_name=>'P372_SHIPMENT_REQ_NUM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9910343818705334259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Kit Request #'
,p_source=>'SHIPMENT_REQ_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(SR_ID, 3, ''0'') D',
'     , SR_ID R',
'  FROM EDC_IP_SHIPMENT_REQ',
' WHERE STUDY_SITE_ID = :P372_STUDY_SITE_ID',
'   AND NVL(PM_APPROVED, 0) = 1',
'   AND SR_ID NOT IN (SELECT SHIPMENT_REQ_NUM',
'                       FROM EDC_IP_SHIPMENT',
'                      WHERE SHIP_ID != NVL(:P372_SHIP_ID, -1)',
'                        AND SHIPMENT_REQ_NUM IS NOT NULL',
'                    )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select --'
,p_lov_cascade_parent_items=>'P372_STUDY_SITE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT NUMBER;',
'BEGIN',
'    SELECT COUNT(*) AS CNT INTO V_CNT FROM EDC_IP_SHIPMENT WHERE STUDY_SITE_ID = :P372_STUDY_SITE_ID AND SHIP_ID=:P372_SHIP_ID;',
'    IF V_CNT >= 1 THEN',
'        RETURN TRUE;',
'    ELSIF V_CNT < 1 THEN',
'        RETURN FALSE;',
'    END IF;',
'EXCEPTION WHEN OTHERS THEN RETURN NULL;',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT NUMBER;',
'BEGIN',
'    SELECT COUNT(*) AS CNT INTO V_CNT FROM EDC_IP_SHIPMENT WHERE STUDY_SITE_ID = :P372_STUDY_SITE_ID AND SHIP_ID=:P372_SHIP_ID;',
'    IF V_CNT >= 1 THEN',
'        RETURN TRUE;',
'    ELSIF V_CNT < 1 THEN',
'        RETURN FALSE;',
'    END IF;',
'EXCEPTION WHEN OTHERS THEN RETURN NULL;',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910341928670334257)
,p_tabular_form_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_validation_name=>'ARMD_ID must be numeric'
,p_validation_sequence=>50
,p_validation=>'ARMD_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'ARMD_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910342277789334257)
,p_tabular_form_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_validation_name=>'QUANTITY must be numeric'
,p_validation_sequence=>60
,p_validation=>'QUANTITY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'QUANTITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910340297783334256)
,p_tabular_form_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_validation_name=>'STUDY_ARM_ID NN'
,p_validation_sequence=>70
,p_validation=>'STUDY_ARM_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must be selected.'
,p_associated_column=>'STUDY_ARM_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910340709457334256)
,p_tabular_form_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_validation_name=>'ARMD_ID NN'
,p_validation_sequence=>80
,p_validation=>'ARMD_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must be selected.'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ARMD_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910341130082334257)
,p_tabular_form_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_validation_name=>'QUANTITY NN'
,p_validation_sequence=>90
,p_validation=>'QUANTITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must be entered.'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'QUANTITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910341553083334257)
,p_tabular_form_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_validation_name=>'QUANTITY > 0'
,p_validation_sequence=>100
,p_validation=>':QUANTITY > 0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Quantity must be greater than 0'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_associated_column=>'QUANTITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910357333780334330)
,p_validation_name=>'Quantity must > 0'
,p_validation_sequence=>110
,p_validation=>'(:P372_KITS + :P372_PLACIBO_RUNIN + :P372_RESCUE_MEDICINE) > 0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Kits must be more than 0'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910358114629334331)
,p_validation_name=>'Placebo Run-in - Availability'
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT        NUMBER;',
'  V_NEW_QUANTITY NUMBER;',
'BEGIN',
'  SELECT COUNT(*)',
'    INTO V_COUNT',
'    FROM EDC_IP_DETAIL A',
'   WHERE STUDY_ARM_ID = 4',
'     AND NVL(IP_STATUS,1) = 1                         ',
'     AND STUDY_ID = :APP_EDC_STUDY_ID',
'     AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE)) - EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS''));',
'',
'  IF :P372_PLACIBO_RUNIN > :P372_PLACIBO_RUNIN_OLD THEN',
'    V_NEW_QUANTITY := :P372_PLACIBO_RUNIN - :P372_PLACIBO_RUNIN_OLD;',
'',
'    IF V_COUNT < V_NEW_QUANTITY THEN',
'      RETURN ''Only '' || V_COUNT || '' quantity of Placebo Run-in is available'' ;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'Error'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(9910350670672334266)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9910356890775334329)
,p_validation_name=>'P372_STUDY_SITE_ID must be Active'
,p_validation_sequence=>160
,p_validation=>'EDC_UTIL.GET_SITE_STATUS(:P372_STUDY_SITE_ID) = 3'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Shipment cannot be processed, because this site is not Active'
,p_always_execute=>'Y'
,p_validation_condition=>':P372_STUDY_SITE_ID IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4139307527081153507)
,p_validation_name=>'P372_SHIP_DT_CHANGE'
,p_validation_sequence=>180
,p_validation=>'P372_SHIP_DT_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for Changing "Shipment Date" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SHIP_DT VARCHAR2(200);',
'BEGIN',
'  IF :P372_SHIP_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT TO_CHAR(SHIP_DT,''DD-MON-YYYY'')',
'      INTO V_SHIP_DT',
'      FROM EDC_IP_SHIPMENT',
'     WHERE SHIP_ID = :P372_SHIP_ID;',
'',
'    IF V_SHIP_DT != UPPER(:P372_SHIP_DT) THEN',
'      RETURN TRUE;',
'    ELSIF V_SHIP_DT IS NULL AND :P372_SHIP_DT IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_SHIP_DT IS NOT NULL AND :P372_SHIP_DT IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(4139307436638153506)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2009196461395105813)
,p_validation_name=>'Dpot Kit Null Validation'
,p_validation_sequence=>190
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_VAL NUMBER;',
'BEGIN',
'        SELECT COUNT(*) INTO V_VAL FROM EDC_IP_DETAIL',
'            WHERE NVL(IP_STATUS,1) = 1',
'            AND STUDY_DEPOT_ID = :P372_STUDY_DEPOT_ID ;',
'        ',
'        IF V_VAL = 0 THEN',
'            RETURN ''Depot Does not have any KITS'';',
'        else',
'            return null;',
'        END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(2008537089143150793)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1404661744363873730)
,p_validation_name=>'P372_SHIP_DT_NN'
,p_validation_sequence=>200
,p_validation=>'P372_SHIP_DT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Shipment Date  must have some value'
,p_associated_item=>wwv_flow_imp.id(9910347416012334263)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1404661792996873731)
,p_validation_name=>'P372_STUDY_SITE_ID_NN'
,p_validation_sequence=>210
,p_validation=>'P372_STUDY_SITE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Site must have some value'
,p_associated_item=>wwv_flow_imp.id(9910347857638334263)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1404661951981873732)
,p_validation_name=>'P372_SHIPMENT_REQ_NUM_NN'
,p_validation_sequence=>220
,p_validation=>'P372_SHIPMENT_REQ_NUM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Kit Request # have some value'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT NUMBER;',
'BEGIN',
'    SELECT COUNT(*) AS CNT INTO V_CNT FROM EDC_IP_SHIPMENT WHERE STUDY_SITE_ID = :P372_STUDY_SITE_ID;',
'    IF V_CNT > 1 THEN',
'        RETURN TRUE;',
'    ELSIF V_CNT < 2 THEN',
'        RETURN FALSE;',
'    END IF;',
'EXCEPTION WHEN OTHERS THEN RETURN NULL;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(9911228186824911321)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(712299822212004554)
,p_validation_name=>'IP Expiry Date is null'
,p_validation_sequence=>230
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.IP_ID',
'  FROM EDC_IP_DETAIL A',
'  JOIN EDC_IP_SHIPMENT_DTLS B',
'    ON A.IP_ID = B.IP_ID',
'   AND (A.EXP_DATE_REAL IS NULL OR A.EXP_DATE_LABEL IS NULL)',
'   AND B.SHIP_ID = :P372_SHIP_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Kit(s) included in this shipment do not have an Expiry Date. Please ask your Depot Manager to update the expiry date.'
,p_validation_condition=>':REQUEST IN(''DISPATCHED'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(628364032163369647)
,p_validation_name=>'P372_KITS AVAILABIITY VALIDATION'
,p_validation_sequence=>240
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P372_KITS IS NOT NULL THEN ',
'    IF :P372_KITS<:P372_AVAILABLE_QUANTITY THEN ',
'    RETURN TRUE;',
'    ELSE',
'    RETURN FALSE;',
'    END IF;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Total no of kits is not available at depot'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(9910350239751334266)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910364363531334336)
,p_name=>'Set cascading LOV after refresh and onload'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910364780694334337)
,p_event_id=>wwv_flow_imp.id(9910364363531334336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("[name=f06]").htmldbCascade(',
' "[name=f05]",',
' "GET_ARMD_FOR_SHIP",{',
'  nullShow:true,',
'  nullDisplay:"- Select -"',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910365179097334337)
,p_name=>'Set cascading select listfor new row'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11428683481159741547)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910365707608334338)
,p_event_id=>wwv_flow_imp.id(9910365179097334337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'addRow();',
'$("[name=f06]:last").htmldbCascade(',
' "[name=f05]:last",',
' "GET_ARMD_FOR_SHIP",{',
'  nullShow:true,',
'  nullDisplay:"- Select -"',
'});',
''))
,p_da_action_comment=>'setMaxQty();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910366163034334338)
,p_name=>'DELETE_CONFERMATION'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9910346225977334261)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910366588070334338)
,p_event_id=>wwv_flow_imp.id(9910366163034334338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var r = confirm("Would you like to Perform this delete action?");',
'if (r == true) {',
'        doSubmit(''DELETE''); ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910367012974334339)
,p_name=>'Delete_confirmation'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11428683286527741547)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910367487495334339)
,p_event_id=>wwv_flow_imp.id(9910367012974334339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var r = confirm("Are you sure you want to delete?");',
'if (r == true) {',
'       doSubmit(''DELETE1'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9910367893108334339)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9910345032586334260)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9910368383079334340)
,p_event_id=>wwv_flow_imp.id(9910367893108334339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_PK_ID,P41_TABLE_NAME:&APP_PAGE_ID.,&P372_SHIP_ID.,EDC_IP_SHIPMENT'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9911228334254911322)
,p_name=>'Set Quantity Test per Request'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_SHIPMENT_REQ_NUM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P372_SHIP_ID IS NULL'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9911228393996911323)
,p_event_id=>wwv_flow_imp.id(9911228334254911322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P372_KITS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT KITS',
'  FROM EDC_IP_SHIPMENT_REQ',
' WHERE SR_ID = :P372_SHIPMENT_REQ_NUM'))
,p_attribute_07=>'P372_SHIPMENT_REQ_NUM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2204542746300829505)
,p_name=>'Set Quantity Reference per Request'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_SHIPMENT_REQ_NUM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>':P372_SHIP_ID IS NULL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204542858621829506)
,p_event_id=>wwv_flow_imp.id(2204542746300829505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P372_PLACIBO_RUNIN'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PLACIBO_RUNIN',
'  FROM EDC_IP_SHIPMENT_REQ',
' WHERE SR_ID = :P372_SHIPMENT_REQ_NUM'))
,p_attribute_07=>'P372_SHIPMENT_REQ_NUM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4139307633997153508)
,p_name=>'P372_SHIP_DT_CHANGE Hide'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SHIP_DT VARCHAR2(200);',
'BEGIN',
'  IF :P372_SHIP_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT TO_CHAR(SHIP_DT,''DD-MON-YYYY'')',
'      INTO V_SHIP_DT',
'      FROM EDC_IP_SHIPMENT',
'     WHERE SHIP_ID = :P372_SHIP_ID;',
'',
'    IF V_SHIP_DT != UPPER(:P372_SHIP_DT) THEN',
'      RETURN FALSE;',
'    ELSIF V_SHIP_DT IS NULL AND :P372_SHIP_DT IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_SHIP_DT IS NOT NULL AND :P372_SHIP_DT IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4139307725944153509)
,p_event_id=>wwv_flow_imp.id(4139307633997153508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P372_SHIP_DT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4139307770713153510)
,p_name=>'P372_SHIP_DT_CHANGE Show'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_SHIP_DT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P372_SHIP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4139307871846153511)
,p_event_id=>wwv_flow_imp.id(4139307770713153510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P372_SHIP_DT_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2684545778197325691)
,p_name=>'print shipment report'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2684545678049325690)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2684545855081325692)
,p_event_id=>wwv_flow_imp.id(2684545778197325691)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   var v_pat;',
'var v_flag;',
'',
'',
'',
'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/Shipment Report/SHIPMENT_REPORT&_repFormat=pdf&_dataSource=default&_outFilename=IWRS Order.pdf&_repLocale=en_US&_repEncoding=UTF-8&APP_EDC_STUDY_ID=&APP_EDC_STUDY_ID.''',
'            +''&P_APP_USER=&APP_USER.''+''&P_SHIP_ID=&P372_SHIP_ID.'',''_blank'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688467733282513179)
,p_name=>'Open Model Audit Trail'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.edit-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688468080532513425)
,p_event_id=>wwv_flow_imp.id(2688467733282513179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'75'
,p_attribute_09=>'90'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2008537167071150794)
,p_name=>'Set IP Qty'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P372_STUDY_DEPOT_ID'
,p_condition_element=>'P372_STUDY_DEPOT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2008537340854150795)
,p_event_id=>wwv_flow_imp.id(2008537167071150794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TEST_QTY NUMBER;',
'  V_REF_QTY NUMBER;',
'  V_EXP_CUT_OFF NUMBER := EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS'');',
'BEGIN',
'  SELECT COUNT(IP_ID)',
'    INTO V_TEST_QTY',
'    FROM EDC_IP_DETAIL',
'   WHERE NVL(IP_STATUS, 1) = 1',
'     AND STUDY_DEPOT_ID = :P372_STUDY_DEPOT_ID',
'     AND STUDY_ARM_ID = 1',
'     AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + V_EXP_CUT_OFF + 1)) - V_EXP_CUT_OFF)',
'     AND STUDY_ID = :APP_EDC_STUDY_ID;',
'     ',
'  /*SELECT COUNT(IP_ID)',
'    INTO V_TEST_QTY',
'    FROM EDC_IP_DETAIL',
'   WHERE NVL(IP_STATUS, 1) = 1',
'     AND STUDY_DEPOT_ID = :P372_STUDY_DEPOT_ID',
'     AND STUDY_ARM_ID = 2',
'     AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + V_EXP_CUT_OFF + 1)) - V_EXP_CUT_OFF)',
'     AND STUDY_ID = :APP_EDC_STUDY_ID;*/',
'',
'  :P372_AVAILABLE_QUANTITY := NVL(V_TEST_QTY,0);',
'  --:P372_AVAILABLE_REF_QUANTITY_1 := V_TEST_QTY;',
'END;'))
,p_attribute_02=>'P372_STUDY_DEPOT_ID'
,p_attribute_03=>'P372_AVAILABLE_QUANTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910358842018334331)
,p_process_sequence=>60
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'make form read only on Dispached'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P372_SHIP_STATUS in (''Quarantined'', ''Dispatched'', ''Delivered'') THEN',
'        htp.p(''<script language="Javascript">'');',
'        htp.p(''$("input,textarea").each(function(){ $(this).attr("readonly","readonly");});'');',
'        htp.p(''$("select").each(function(){ $(this).attr("disabled","disabled");});'');',
'        htp.p(''$(function(){$("img.ui-datepicker-trigger").css("display","none");});'');',
'	    htp.p(''</script>'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9910358842018334331
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910359197934334332)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CRO_IP_SHIPMENT'
,p_attribute_02=>'EDC_IP_SHIPMENT'
,p_attribute_03=>'P372_SHIP_ID'
,p_attribute_04=>'SHIP_ID'
,p_internal_uid=>9910359197934334332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910359612450334332)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Max Ship Qtys into JQuery array variable'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_text varchar2(1000);',
'BEGIN',
'',
'    v_text := '''';',
'    htp.p(''<script language="Javascript">'');',
'--    v_text := ''var maxQtys = ['';',
'    htp.p(''var maxQtys = new Array();'');',
'    htp.p(''var minShipQtys = new Array();'');',
'    htp.p(''var maxShipQtys = new Array();'');',
'/*	for i in (select ARMD_MAX_SHP maxshp from edc_study_arm a, EDC_STUDY_ARM_DTLS b',
'    where a.study_arm_id = b.study_arm_id',
'    and b.ARM_TYPE = 1',
'    and b.study_id = :APP_STUDY_ID) loop*/',
'',
'/*	for i in (select count(*) maxshp from edc_ip_detail',
'                  where study_id = :APP_EDC_STUDY_ID',
'                  group by armd_id) loop',
'*/',
'for i in(',
'SELECT a.arm_name',
'  || '' - ''',
'  || b.armd_sh_nm d,',
'  b.armd_id r,',
'  (SELECT COUNT(*)',
'  FROM edc_ip_detail',
'  WHERE armd_id        = b.armd_id',
'  AND NVL(ip_status,1) = 1',
'  )+NVL(',
'  (SELECT QUANTITY',
'  FROM EDC_IP_SHIPMENT_DOSE',
'  WHERE ship_id = :P372_SHIP_ID',
'  AND ARMD_ID   = B.ARMD_ID',
'  AND STUDY_ARM_ID <> B.STUDY_ARM_ID',
'  ),0) maxshp,',
'  b.ARMD_MAX_SHP maxqty,',
'  b.ARMD_MIN_SHP minqty',
'FROM edc_study_arm a,',
'  EDC_STUDY_ARM_DTLS b',
'WHERE a.study_arm_id = b.study_arm_id',
'AND b.study_id       = :APP_EDC_STUDY_ID',
') loop',
'--		v_text := v_text || i.maxshp ||  '', '';',
'htp.p(''maxQtys['' || i.r ||''] = "'' || i.maxshp ||''"; '');',
'htp.p(''minShipQtys['' || i.r ||''] = "'' || i.minqty ||''"; '');',
'htp.p(''maxShipQtys['' || i.r ||''] = "'' || i.maxqty ||''"; '');',
'--htp.p(''console.log(''''''|| i.r || '', maxshp='' || i.maxshp || '', minqty='' || i.minqty || '', maxqty='' || i.maxqty ||'''''');'');',
'    end loop;',
'',
'--	v_text := substr(v_text,0,length(v_text) - 1) || '']'';',
'--    htp.p(v_text);',
'    --htp.p(''alert(maxQtys)'');',
'    ',
'    htp.p(''</script>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9910359612450334332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910363482869334335)
,p_process_sequence=>4
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_MANUAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS VARCHAR2(30);',
'BEGIN',
'    SELECT NVL(SHIP_STATUS,''Draft'') INTO V_STATUS',
'      FROM EDC_IP_SHIPMENT',
'     WHERE SHIP_ID = :P372_SHIP_ID;',
'',
'    IF V_STATUS = ''Draft'' THEN',
'        /* added to resolve issue of not changing IP status even after the shipment was deleted.*/',
'',
'        update edc_ip_detail',
'         set ip_status = 1,',
'             study_site_id = null',
'        where ip_id in (select ip_id',
'                         from edc_ip_shipment_dtls',
'                        where ship_id =:P372_SHIP_ID',
'                      );  ',
'',
'        /*-------------------------------------------------------------------------------------------*/',
'    ',
'        DELETE FROM EDC_IP_SHIPMENT_DTLS WHERE SHIP_ID = :P372_SHIP_ID;',
'',
'        DELETE FROM EDC_IP_SHIPMENT_DOSE',
'        WHERE SHIP_ID = :P372_SHIP_ID;',
'',
'',
'        DELETE FROM EDC_IP_SHIPMENT',
'         WHERE SHIP_ID = :P372_SHIP_ID;',
'',
'        COMMIT;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Action Proceed.'
,p_internal_uid=>9910363482869334335
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910359955329334332)
,p_process_sequence=>5
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
'    :P372_SHIP_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9910345450621334260)
,p_internal_uid=>9910359955329334332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910342661906334258)
,p_process_sequence=>6
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EDC_IP_SHIPMENT_DOSE'
,p_attribute_03=>'SHIP_DOSE_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'IPs to be sent added successfully.'
,p_internal_uid=>9910342661906334258
,p_process_comment=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910361887090334334)
,p_process_sequence=>6.5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MANUAL MRD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	V_SHIP_ID NUMBER;',
'    V_ARMD_ID NUMBER;',
'    V_SHIP_DOSE_ID NUMBER;',
'    v_QUANTITY number;',
'    ',
'BEGIN',
'',
'	',
'  FOR I IN 1..APEX_APPLICATION.G_F10.COUNT LOOP',
'  if TO_NUMBER(APEX_APPLICATION.G_F10(I)) is not null then',
'    --DELETE FROM CRO_IP_SHIPMENT',
'   -- WHERE SHIP_ID = TO_NUMBER(APEX_APPLICATION.G_F10(I));',
'   SELECT SHIP_ID,ARMD_ID,SHIP_DOSE_ID,QUANTITY INTO V_SHIP_ID,V_ARMD_ID,V_SHIP_DOSE_ID,v_QUANTITY FROM EDC_IP_SHIPMENT_DOSE ',
'   WHERE SHIP_DOSE_ID=TO_NUMBER(APEX_APPLICATION.G_F10(I));',
'   ',
'   ',
'   UPDATE EDC_IP_SHIPMENT SET SHIP_TOT_QTY=(SELECT SUM(QUANTITY) FROM EDC_IP_SHIPMENT_DOSE WHERE SHIP_ID=:P372_SHIP_ID) WHERE SHIP_ID=:P372_SHIP_ID;',
'   ',
'   UPDATE edc_ip_detail SET ',
'   STUDY_SITE_ID = NULL,',
'   IP_STATUS = 1 WHERE /*ARMD_ID =V_ARMD_ID AND */',
'   IP_ID IN(SELECT A.IP_ID FROM   edc_ip_shipment_dtls a, edc_ip_detail b',
'   WHERE A.IP_ID = B.IP_ID',
'   and A.ship_id = V_SHIP_ID AND A.SHIP_DOSE_ID=TO_NUMBER(APEX_APPLICATION.G_F10(I)));  --AND A.SHIP_DOSE_ID=TO_NUMBER(APEX_APPLICATION.G_F10(I))',
'   ',
'   ',
'    ',
'    DELETE FROM    edc_ip_shipment_dtls',
'    WHERE  /*ARMD_ID =V_ARMD_ID AND*/  SHIP_ID=V_SHIP_ID ',
'    AND SHIP_DOSE_ID=TO_NUMBER(APEX_APPLICATION.G_F10(I));',
'',
'	DELETE FROM   EDC_IP_SHIPMENT_DOSE ',
'    WHERE /* ARMD_ID =V_ARMD_ID AND*/ SHIP_DOSE_ID=TO_NUMBER(APEX_APPLICATION.G_F10(I));',
'    ',
'end if;    ',
'  END LOOP;',
'    COMMIT;',
'  ',
' EXCEPTION WHEN OTHERS THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE1'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>9910361887090334334
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910343019225334258)
,p_process_sequence=>7
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9910333381527334250)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EDC_IP_SHIPMENT_DOSE'
,p_attribute_03=>'SHIP_DOSE_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>9910343019225334258
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910360303223334332)
,p_process_sequence=>8
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_IP_SHIPMENT'
,p_attribute_02=>'EDC_IP_SHIPMENT'
,p_attribute_03=>'P372_SHIP_ID'
,p_attribute_04=>'SHIP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'ERROR2'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST NOT IN (''DELETE'',''DELETE1'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Action Processed...'
,p_internal_uid=>9910360303223334332
,p_process_comment=>'Shipment Created.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910363124142334334)
,p_process_sequence=>36
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISPATCH_IP_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_get NUMBER;',
'begin',
'    update EDC_IP_SHIPMENT set SHIP_STATUS=''Dispatched'', DISP_TIME = LOCALTIMESTAMP where SHIP_ID = :P372_SHIP_ID;',
'    --CRO_IWRS_PKG.INSERT_DOSE(:P372_SHIP_ID,:P372_STUDY_SITE_ID,:APP_STUDY_ID);',
'   ',
'    UPDATE edc_ip_detail',
'       SET IP_STATUS = 2',
'         , study_site_id = :P372_STUDY_SITE_ID',
'     WHERE IP_ID IN(SELECT a.IP_ID',
'                      FROM edc_ip_shipment_dtls a,',
'                           edc_ip_detail b',
'                     WHERE A.IP_ID = B.IP_ID',
'                       and ship_id = :P372_SHIP_ID',
'                   );',
'',
'    update edc_ip_shipment_dtls ',
'       set ip_status = 2',
'     where ship_id = :P372_SHIP_ID;',
'',
'',
'    -- Update Shipment Request details',
'    UPDATE EDC_IP_SHIPMENT_REQ',
'       SET REQUEST_STATUS = ''Shipped''',
'         , SHIPMENT_NO = :P372_SHIP_ID',
'         , PM_APPROVED = 1',
'     WHERE SR_ID = :P372_SHIPMENT_REQ_NUM;',
'',
'    commit;',
'',
'--   CRO_EMAIL_ALERT_PKG.CRO_SHIP_GEN(:P372_SHIP_ID,:P372_STUDY_SITE_ID,:APP_STUDY_ID,1);',
'    EDC_MAIL.SEND_MAIL_DELIVERY_TO_SITE(:P372_SHIP_ID,:APP_EDC_STUDY_ID,v_get);',
' End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9910345863866334261)
,p_process_success_message=>'Kit Dispatched.'
,p_internal_uid=>9910363124142334334
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':request in (''CREATE'',''SAVE'')',
'',
':request in (''SAVE'')'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910361095784334333)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_error_message=>'ERROR5'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9910346225977334261)
,p_internal_uid=>9910361095784334333
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9910358413513334331)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert/Update IPs to Shipment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER;',
'BEGIN',
'    --CRO_IWRS_PKG.EDC_IP_SHIP_CREATE_DOSE(P_SHIP_ID => :P372_SHIP_ID, P_OPERATION => ''UPDATING'' , P_STUDY_ARM_ID => 1, P_ARMD_ID => 1, V_OLD_QTY => (:P372_KITS_OLD) , V_NEW_QTY => (:P372_KITS));',
'',
'   CRO_IWRS_PKG.INSERT_KITS(:P372_SHIP_ID);',
'',
'  --  COMMIT;',
'',
'    SELECT COUNT(*)',
'      INTO V_COUNT',
'      FROM EDC_IP_SHIPMENT_DTLS',
'     WHERE SHIP_ID = :P372_SHIP_ID;',
'',
'    UPDATE EDC_IP_SHIPMENT',
'       SET SHIP_TOT_QTY = KITS + NVL(PLACIBO_RUNIN,0)',
'     WHERE SHIP_ID = :P372_SHIP_ID;',
'',
'    COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''CREATE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Action Processed...'
,p_internal_uid=>9910358413513334331
);
wwv_flow_imp.component_end;
end;
/
