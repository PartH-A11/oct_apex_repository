prompt --application/pages/page_00510
begin
--   Manifest
--     PAGE: 00510
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>666903967469575309
,p_default_application_id=>10021010
,p_default_id_offset=>1100950768141504093
,p_default_owner=>'SUN_21010_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>510
,p_tab_set=>'TS1'
,p_name=>'&P510_CRF_PAGE_NAME.'
,p_step_title=>'&P510_CRF_PAGE_NAME.'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function myFunction(item_id) ',
'{',
'    var a = ''rsc''+item_id;',
'    if (document.getElementById(item_id).style.background != "gainsboro")',
'    {',
'        document.getElementById(a).style.visibility = "visible";',
'    };',
'}',
'',
'function makeInitialTextReadOnly(input) {',
'    //var readOnlyLength = input.value.length;',
'    var readOnlyLength = 2;',
'    input.addEventListener(''keydown'', function(event) {',
'        var which = event.which;',
'        if (((which == 8) && (input.selectionStart <= readOnlyLength))',
'                || ((which == 46) && (input.selectionStart < readOnlyLength))) {',
'            event.preventDefault();',
'        }',
'    });',
'    input.addEventListener(''keypress'', function(event) {',
'        var which = event.which;',
'        if ((event.which != 0) && (input.selectionStart < readOnlyLength)) {',
'            event.preventDefault();',
'        }',
'    });',
'    input.addEventListener(''cut'', function(event) {',
'        if (input.selectionStart < readOnlyLength) {',
'            event.preventDefault();',
'        }',
'    });',
'    input.addEventListener(''paste'', function(event) {',
'        if (input.selectionStart < readOnlyLength) {',
'            event.preventDefault();',
'        }',
'    });',
'}',
'',
'',
'function isNumber(evt) {',
'    evt = (evt) ? evt : window.event;',
'    var charCode = (evt.which) ? evt.which : evt.keyCode;',
'    if (charCode > 31 && (charCode < 48 || charCode > 57)) {',
'        return false;',
'    }',
'    return true;',
'}',
'',
'function getcolumnname(item_id,column_name)',
'{',
'    $x("P510_COLUMN_NAME").value = column_name;',
'}',
'',
'function getValue(item_name,column_name) ',
'{',
'    var item_name = "" + item_name;',
'    var pad = "00";',
'    var item_name = pad.substring(0, pad.length - item_name.length) + item_name;',
'    var a = $("input[type=''radio''][name=''f" + item_name + "'']:checked").val();',
'    $x("P510_FIELD_VAL").value = a;',
'    var b = column_name;',
'    $x("P510_FIELD_NAME").value = b;',
'    ',
'    //ajax callback process to save data in table',
'    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO", $v(''pFlowStepId''));',
'    oDBGet.add(''P510_FIELD_VAL'', $v("P510_FIELD_VAL"));',
'    oDBGet.add(''P510_FIELD_NAME'', $v("P510_FIELD_NAME"));',
'',
'    oDBGet.get();',
'}',
'',
'function findDisable() ',
'{',
'    var z = $v("P510_FINDDISABLE");',
'    eval(z);',
'}',
'',
'function enDis(item_id,item_condition,item_id_endis,output,item_type,item2_type,item_name,column_name) ',
'//item _id : id on whose value other items will be enabled or disabled',
'//item_condition : item value',
'//item_id_endis : item id to be enabled/disabled',
'//output : what has to be done - enabled/disabled',
'//item_type : item_type of the item on basis of which others have to be enabled/disabled',
'//item2_type : item_type of the item which has to be enabled/disabled',
'//item_name : name of the item on basis of which others have to be enabled/disabled (eg like f01, f04 etc)',
'//column_name : item that has to be enabled/disabled',
'{',
'    var a = item_id;',
'    var b = item_condition;',
'    ',
'    if (item_type == ''RADIO BUTTON'')',
'        {',
'            var pad = "00";',
'            var item_name1 = pad.substring(0, pad.length - item_name.length) + item_name;',
'            var e = $("input[type=''radio''][name=''f" + item_name1 + "'']:checked").val();',
'            if (e == undefined)',
'                {',
'                    e = '''';',
'                }',
'        }            ',
'    else',
'        {',
'            e = document.getElementById(a).value; ',
'        }',
'    ',
'    if (e == b)',
'        {',
'            var c = item_id_endis;',
'            var d = output;',
'',
'            if (d == ''DIS'' && (item2_type ==''TEXT'' || item2_type == ''TEXTAREA'' || item2_type  == ''NUMBER''))',
'                {',
'                    document.getElementById(c).readOnly = true;',
'                    document.getElementById(c).style.background = "gainsboro";',
'                    document.getElementById(c).value = "";',
'                }',
'            if (d == ''DIS'' && item2_type ==''SELECT LIST'')',
'                {',
'                    document.getElementById(c).style.pointerEvents = "none";',
'                    document.getElementById(c).style.background = "gainsboro";',
'                    document.getElementById(c).value = "";   ',
'                }',
'            if (d == ''DIS'' && item2_type ==''RADIO BUTTON'')',
'                {',
'                    var f = document.getElementById(c).name;',
'                    $("input[type=radio][name=" + f + "]").attr(''disabled'', true);',
'                    $("input[type=radio][name=" + f + "]").prop(''checked'', false);',
'                    var f = "" + f;',
'                    var pad = "00";',
'                    var f = pad.substring(0, pad.length - f.length) + f;',
'                    var a = $("input[type=''radio''][name=''" + f + "'']:checked").val();',
'                    $x("P510_FIELD_VAL").value = a;',
'                    var b = column_name;',
'                    $x("P510_FIELD_NAME").value = b;',
'',
'                    //ajax callback process to save data in table',
'                    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                    oDBGet.add(''P510_FIELD_VAL'', $v("P510_FIELD_VAL"));',
'                    oDBGet.add(''P510_FIELD_NAME'', $v("P510_FIELD_NAME"));',
'                    oDBGet.get();',
'',
'                }',
'            if (d == ''DIS'' && (item2_type ==''DATE'' || item2_type ==''TIME''))',
'                {',
'                    document.getElementById(c).readOnly = true;',
'                    document.getElementById(c).style.background = "gainsboro";',
'                    document.getElementById(c).value = "";',
'                }',
'            if (d == ''EN'' && (item2_type ==''TEXT'' || item2_type == ''TEXTAREA'' || item2_type  == ''NUMBER''))',
'                {',
'                    document.getElementById(c).readOnly = false;',
'                    document.getElementById(c).style.removeProperty("background-color");',
'                }',
'            if (d == ''EN'' && item2_type ==''SELECT LIST'')',
'                {',
'                    document.getElementById(c).style.pointerEvents = "auto";',
'                    document.getElementById(c).style.removeProperty("background-color");',
'                }',
'            if (d == ''EN'' && item2_type ==''RADIO BUTTON'')',
'                {',
'                    var f = document.getElementById(c).name;',
'                    $("input[type=radio][name=" + f + "]").attr(''disabled'', false);',
'                }',
'            if (d == ''EN'' && (item2_type ==''DATE'' || item2_type ==''TIME''))',
'                {',
'                    document.getElementById(c).readOnly = true;',
'                    document.getElementById(c).style.removeProperty("background-color");',
'                }',
'        }',
'    else if (e == '''')',
'        {   ',
'            var c = item_id_endis;',
'            var d = output;',
'',
'            if (item2_type ==''TEXT'' || item2_type == ''TEXTAREA'' || item2_type  == ''NUMBER'')',
'                {',
'                    document.getElementById(c).readOnly = true;',
'                    document.getElementById(c).style.background = "gainsboro";',
'                    document.getElementById(c).value = "";',
'                }',
'            if (item2_type ==''SELECT LIST'')',
'                {',
'                    document.getElementById(c).style.pointerEvents = "none";',
'                    document.getElementById(c).style.background = "gainsboro";',
'                    document.getElementById(c).value = "";   ',
'                }',
'            if (item2_type ==''RADIO BUTTON'')',
'                {',
'                    var f = document.getElementById(c).name;',
'                    $("input[type=radio][name=" + f + "]").attr(''disabled'', true);',
'                    $("input[type=radio][name=" + f + "]").prop(''checked'', false);',
'                    var f = "" + f;',
'                    var pad = "00";',
'                    var f = pad.substring(0, pad.length - f.length) + f;',
'                    var a = $("input[type=''radio''][name=''" + f + "'']:checked").val();',
'                    $x("P510_FIELD_VAL").value = a;',
'                    var b = column_name;',
'                    $x("P510_FIELD_NAME").value = b;',
'',
'                    //ajax callback process to save data in table',
'                    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                    oDBGet.add(''P510_FIELD_VAL'', $v("P510_FIELD_VAL"));',
'                    oDBGet.add(''P510_FIELD_NAME'', $v("P510_FIELD_NAME"));',
'                    oDBGet.get();',
'                }',
'            if (item2_type ==''DATE'' || item2_type ==''TIME'')',
'                {',
'                    document.getElementById(c).readOnly = true;',
'                    document.getElementById(c).style.background = "gainsboro";',
'                    document.getElementById(c).value = "";',
'                }',
'        }',
'    else if (item_type == ''DATE'')',
'        {',
'            var c = item_id_endis;',
'            var d = output;',
'            ',
'            if (e != '''' && b == ''NOT NULL'')',
'                {',
'                     if (d == ''DIS'' && (item2_type ==''TEXT'' || item2_type == ''TEXTAREA'' || item2_type  == ''NUMBER''))',
'                        {',
'                            document.getElementById(c).readOnly = true;',
'                            document.getElementById(c).style.background = "gainsboro";',
'                            document.getElementById(c).value = "";',
'                        }',
'                    if (d == ''DIS'' && item2_type ==''SELECT LIST'')',
'                        {',
'                            document.getElementById(c).style.pointerEvents = "none";',
'                            document.getElementById(c).style.background = "gainsboro";',
'                            document.getElementById(c).value = "";   ',
'                        }',
'                    if (d == ''DIS'' && item2_type ==''RADIO BUTTON'')',
'                        {',
'                            var f = document.getElementById(c).name;',
'                            $("input[type=radio][name=" + f + "]").attr(''disabled'', true);',
'                            $("input[type=radio][name=" + f + "]").prop(''checked'', false);',
'                            var f = "" + f;',
'                            var pad = "00";',
'                            var f = pad.substring(0, pad.length - f.length) + f;',
'                            var a = $("input[type=''radio''][name=''" + f + "'']:checked").val();',
'                            $x("P510_FIELD_VAL").value = a;',
'                            var b = column_name;',
'                            $x("P510_FIELD_NAME").value = b;',
'',
'                            //ajax callback process to save data in table',
'                            var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                            oDBGet.add(''P510_FIELD_VAL'', $v("P510_FIELD_VAL"));',
'                            oDBGet.add(''P510_FIELD_NAME'', $v("P510_FIELD_NAME"));',
'                            oDBGet.get();',
'',
'                        }',
'                    if (d == ''DIS'' && (item2_type ==''DATE'' || item2_type ==''TIME''))',
'                        {',
'                            document.getElementById(c).readOnly = true;',
'                            document.getElementById(c).style.background = "gainsboro";',
'                            document.getElementById(c).value = "";',
'                        }',
'                    if (d == ''EN'' && (item2_type ==''TEXT'' || item2_type == ''TEXTAREA'' || item2_type  == ''NUMBER''))',
'                        {',
'                            document.getElementById(c).readOnly = false;',
'                            document.getElementById(c).style.removeProperty("background-color");',
'                        }',
'                    if (d == ''EN'' && item2_type ==''SELECT LIST'')',
'                        {',
'                            document.getElementById(c).style.pointerEvents = "auto";',
'                            document.getElementById(c).style.removeProperty("background-color");',
'                        }',
'                    if (d == ''EN'' && item2_type ==''RADIO BUTTON'')',
'                        {',
'                            var f = document.getElementById(c).name;',
'                            $("input[type=radio][name=" + f + "]").attr(''disabled'', false);',
'                        }',
'                    if (d == ''EN'' && (item2_type ==''DATE'' || item2_type ==''TIME''))',
'                        {',
'                            document.getElementById(c).readOnly = true;',
'                            document.getElementById(c).style.removeProperty("background-color");',
'                        }   ',
'                }',
'        }',
'}',
'',
'',
'//Function to allow only 3 numbers before decimal and 1 number after decimal for height weight and temperature',
'function setInputFilter(textbox, inputFilter) {',
'  ["input", "keydown", "keyup", "mousedown", "mouseup", "select", "contextmenu", "drop"].forEach(function(event) {',
'    textbox.addEventListener(event, function() {',
'      if (inputFilter(this.value)) {',
'        this.oldValue = this.value;',
'        this.oldSelectionStart = this.selectionStart;',
'        this.oldSelectionEnd = this.selectionEnd;',
'      } else if (this.hasOwnProperty("oldValue")) {',
'        this.value = this.oldValue;',
'        this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);',
'      }',
'    });',
'  });',
'}',
'',
'function calcAge()',
'{',
'    var m = $v("P510_CRF_SHORT_NAME");',
'    ',
'    if (m == ''DM'')',
'        {',
'            var x = $v("P510_DOB_ITEM_ID");',
'            var arr = JSON.parse("[" + x + "]");',
'',
'            document.getElementById(arr[3]).readOnly = true;',
'            var daydob = document.getElementById(arr[0]).value;',
'            var monthdob = document.getElementById(arr[1]).value;',
'            var yeardob = document.getElementById(arr[2]).value;',
'',
'            today_date = new Date();',
'            today_year = today_date.getFullYear();',
'            today_month = today_date.getMonth();',
'            today_day = today_date.getDate();',
'            ',
'            if (yeardob != "")',
'                {',
'                    age = today_year - yeardob;',
'',
'                    if ( today_month < (monthdob - 1))',
'                        {',
'                            age--;',
'                        }',
'                    if (((monthdob - 1) == today_month) && (today_day < daydob))',
'                        {',
'                            age--;',
'                        }',
'                    document.getElementById(arr[3]).value = age;        ',
'                }',
'            else if(daydob == "" || monthdob == "" || yeardob == "")',
'                {',
'                    document.getElementById(arr[3]).value = '''';    ',
'                }',
'        }            ',
'}',
'',
'function calcBMI()',
'{',
'    var m = $v("P510_CRF_SHORT_NAME");',
'    ',
'    if (m == ''DM'')',
'        {',
'    ',
'            var x = $v("P510_BMI_ITEM_ID");',
'            var arr = JSON.parse("[" + x + "]");',
'',
'            var height = document.getElementById(arr[0]).value;',
'            var weight = document.getElementById(arr[1]).value;',
'            document.getElementById(arr[2]).readOnly = true;',
'',
'            if(weight > 0 && height > 0)',
'                {	',
'                    var finalBmi = weight/(height/100*height/100);',
'                    var roundbmi = Math.round(finalBmi * 10) / 10;',
'                    document.getElementById(arr[2]).value = roundbmi;  ',
'                }',
'            else if(weight == '''' || height == '''')',
'                {',
'                    document.getElementById(arr[2]).value = '''';    ',
'                }',
'        }            ',
'}',
'',
'',
'',
'function validateInsert()         ',
'{',
'    var m=$v("P510_OCOMP_FLAG");',
'    var n=$v("P510_ONSD_FLAG");',
'    var x=$v("P510_CRF_ID");',
'    /*var x = $v("P510_ARRAY");',
'    var arr = JSON.parse("[" + x + "]");',
'    var y = arr.length;',
'    ',
'    var p = $v("P510_ARRLBL");',
'    var arr1 = p.split(",");',
'    var q = arr1.length;',
'    ',
'    var str = "";',
'    var str1 = "";',
'',
'    for(count= 0; count < y; count++)',
'    { ',
'        var c = arr[count]; ',
'',
'        if (document.getElementById(c).value == "")',
'        {',
'            d = arr1[count];',
'            str1 = str1+" ''"+d+"'' is null.Please provide"+''\n'';',
'        }',
'    }',
'    ',
'    var m = str.length;        //reason for change ',
'    var n = str1.length;       //auto query',
'    ',
'    if (m > 0)',
'        {alert(str);}',
'    ',
'    if (m == 0 && n > 0)',
'        {alert(str1);}',
'    ',
'    if (m > 0)',
'        {return false;}',
'       ',
'    else*/',
'    ',
'    if (x==19 && m > 0)',
'       {',
'          str="End Date cannot be prior to Start Date.";',
'          alert(str);',
'       }',
'    else if (x==10 && n > 0)',
'       {',
'          str="End Date cannot be prior to Start Date.";',
'          alert(str);',
'       }',
'    else',
'        {',
'            apex.submit(''SAVE'');',
'        }',
'}',
'',
'',
'function validateUpdate()         ',
'{',
'    var m=$v("P510_OCOMP_FLAG");',
'    var n=$v("P510_ONSD_FLAG");',
'    var x=$v("P510_CRF_ID");',
'    ',
'    if (x==19 && m > 0)',
'        {',
'            str="End Date cannot be prior to Start Date.";',
'            alert(str);',
'        }',
'    else if (x==10 && n > 0)',
'       {',
'          str="End Date cannot be prior to Start Date.";',
'          alert(str);',
'       }',
'    else',
'    {',
'    ',
'        var x = $v("P510_ARRAY");',
'        var arr = JSON.parse("[" + x + "]");',
'        var y = arr.length;',
'',
'        var p = $v("P510_ARRLBL");',
'        var arr1 = p.split(",");',
'        var q = arr1.length;',
'',
'        var str = "";',
'        var str1 = "";',
'',
'        for(count= 0; count < y; count++)',
'        {',
'            var a = ''rsc''+arr[count]; ',
'',
'            if ((document.getElementById(a).value == "") && (document.getElementById(a).style.visibility == "visible"))',
'            {',
'                var b = arr1[count];',
'                str = str+" Reason for changing ''"+b+"'' must have some value."+''\n'';',
'            }  ',
'',
'            var c = arr[count]; ',
'',
'           /* if (document.getElementById(c).value == "")',
'            {',
'                d = arr1[count];',
'                str1 = str1+" ''"+d+"'' is null.Please provide"+''\n'';',
'            }*/',
'       }',
'',
'       var m = str.length;        //reason for change ',
'       var n = str1.length;       //auto query',
'',
'       if (m > 0)',
'           {alert(str);}',
'',
'       if (m == 0 && n > 0)',
'           {alert(str1);}',
'',
'       if (m > 0)',
'           {return false;}',
'',
'       else',
'           {apex.submit(''SAVE'');}',
'',
'        }            ',
'}',
'',
'function deci_restr(a,b,c)',
'{',
'    //a == item id and b == item size and c == digits after decimal point',
'    if (c !== undefined && c != "0")',
'        {',
'            var m = document.getElementById(a);',
'            var d = b - c - 1;  //digits before decimal = total sze - digits after decimal - 1(decimal point itself',
'            var e;',
'            if (d == 1) { e = 9; }',
'            if (d == 2) { e = 99; }',
'            if (d == 3) { e = 999; }',
'            if (d == 4) { e = 9999; }',
'            if (d == 5) { e = 99999; }',
'            if (d == 6) { e = 999999; }',
'            if (d == 7) { e = 9999999; }',
'            if (d == 8) { e = 99999999; }',
'            if (d == 9) { e = 999999999; }',
'            if (d == 10) { e = 9999999999; }',
'',
'            setInputFilter(m, function(value)',
'                {',
'                    return value === "" || parseInt(value) <= e;',
'                }',
'            );',
'',
'            $(''#''+a).on(''input'', function () {',
'                if (c == 1) {this.value = this.value.match(/^\d+\.?\d{0,1}/);}',
'                if (c == 2) {this.value = this.value.match(/^\d+\.?\d{0,2}/);}',
'                if (c == 3) {this.value = this.value.match(/^\d+\.?\d{0,3}/);}',
'                if (c == 4) {this.value = this.value.match(/^\d+\.?\d{0,4}/);}',
'                if (c == 5) {this.value = this.value.match(/^\d+\.?\d{0,5}/);}',
'                if (c == 6) {this.value = this.value.match(/^\d+\.?\d{0,6}/);}',
'            });',
'        }',
'}',
'',
'function setId(a){',
'    apex.item(''P12_ID'').setValue(a);',
'    getPosition(event);',
'}',
'function alrt(){',
'    var x;',
'    x=apex.item(''P10_DAY'').getValue()+''-''+apex.item(''P9_MONTH'').getValue()+''-''+apex.item(''P11_YEAR'').getValue();',
'    apex.item(apex.item(''P12_ID'').getValue()).setValue(x);',
'}',
'function getPosition(event){',
'    ',
'            var a = event.clientX +300;',
'            var b = event.clientY;',
'            var el = document.getElementById(''datePick''); ',
'            ',
'            el.style.left = a + ''px''; ',
'            el.style.top = b + ''px''; ',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.number'').keypress(function(e) { ',
'',
' var charCode = (e.which) ? e.which : event.keyCode',
'         if (charCode > 31 && (charCode < 48 || charCode > 57))',
'            return false;',
'',
'         return true;',
'',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'button.ui-datepicker-current { display: none; }',
'',
'.vertical-menu {',
'  width: 150px;',
'}',
'',
'.vertical-menu a {',
'  border-radius: 5px;',
'  background-color: #D2E9E1;',
'  color: black;',
'  display: block;',
'  padding: 12px;',
'  text-decoration: none;',
'  margin-bottom: 10px;',
'}',
'',
'.vertical-menu a:hover {',
'  background-color: #B6DCB6;',
'}',
'',
'.vertical-menu a.active {',
'  background-color: #B6DCB6;',
'  color: black;',
'}',
'',
'.vertical-menu a.red {',
'  background-color: #F63C41;',
'  color: black;',
'}',
'',
'.vertical-menu a.yellow {',
'  background-color: #FCD12A;',
'  color: black;',
'}',
'',
'.vertical-menu a.green {',
'  background-color: #77DD77;',
'  color: black;',
'}',
'',
'',
'',
'',
'/*Horizontal menu new*/',
'.horizontal-menu {',
'  width: 500px;',
'  margin:10px;',
'	  font-family: sans-serif;',
'}',
'',
'.horizontal-menu li {',
'	display:block;',
'	width:140px;',
'	float:left;',
'	margin-left:2px;',
'	/*border:1px solid #000;*/',
'}',
'',
'.horizontal-menu a {',
'  border-radius: 5px;',
'  background-color: #D2E9E1;',
'  color: black;',
'  display: block;',
'  padding: 5px;',
'  text-decoration: none;',
'  margin-bottom: 5px;',
'}',
'',
'.horizontal-menu a:hover {',
'  background-color: #B6DCB6;',
'}',
'',
'.horizontal-menu a.active {',
'  background-color: #B6DCB6;',
'  color: black;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5642979952735302058)
,p_plug_name=>'Patient Diary List_vertical'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    --htp.p(''<ul style="list-style-type:circle;">'');',
'    htp.p(''<div class="vertical-menu">'');',
'    --htp.p(''<div class="topnav">'');',
'   ',
'    for i in (SELECT',
'        --''<b style="float:left">''|| DISP_SECTION_NAME ||''</b> '' label, ',
'        ''<b style="text-align:left-center; font-size:120%;">''|| DISP_SCHEDULE_NAME ||''</b> '' label, ',
'        --A.CRF_LINK||:APP_EDC_SCHEDULE_NAME||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_STUDY_SITE_ID target,',
'        ''f?p=&APP_ID.:45:&SESSION.::NO::APP_EDC_SCHEDULE_NAME,APP_PATIENT_PROFILE_ID,APP_EDC_STUDY_SITE_ID:''||A.SCHEDULE_NAME||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_STUDY_SITE_ID target, ',
'        --CASE WHEN b.PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        CASE WHEN A.SCHEDULE_NAME = :APP_EDC_SCHEDULE_NAME',
'        THEN ''YES'' ELSE ''NO'' END is_current,',
'        A.PAGE_NO,',
'        A.SCHEDULE_NAME',
'        FROM  EDC_PATIENT_SCHEDULE_PARAMS A ,EDC_PATIENT_DIARY B',
'        WHERE A.SCHEDULE_NAME = B.SCHEDULE_TITLE',
'        AND B.PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID',
'        AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'        ORDER BY A.SCHEDULE_ID) loop',
'    ',
'        --htp.p(''<a href="''||i.target||''"><li>''||i.label||''</li></a>'');',
'        if i.SCHEDULE_NAME = :APP_EDC_SCHEDULE_NAME then',
'            htp.p(''<a href="''||i.target||''" class="active">''||i.label||''</a>'');',
'        else',
'            htp.p(''<a href="''||i.target||''">''||i.label||''</a>'');',
'        end if;',
'    ',
'    end loop;',
'    ',
'    --htp.p(''</ul>'');',
'    htp.p(''</div>'');',
'    ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8335608997087127714)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8335630783108200350)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:930px; margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>12
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6133873655622119264)
,p_plug_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(8335630783108200350)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:250px; height:130px;"'
,p_plug_template=>wwv_flow_imp.id(12146129741780911976)
,p_plug_display_sequence=>41
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<span class="uButtonContainer">'');',
'htp.p(''<span  class="u-Button a-Icon icon-remove" style="padding-left:180px;border:10px;" onClick="javascript:closeModal(''''datePick'''');"></span>'');',
'htp.p(''</span>'');',
'htp.p(''<table align="center">'');',
'htp.p(''<tr style="font-weight:bold;">',
'    <th>DAY</th>',
'    <th>MONTH</th> ',
'    <th>YEAR</th>',
'  </tr>'');',
'htp.p(''<td>''||apex_item.select_list_from_query(p_idx=>48,',
'                                            p_value=>''UK'',',
'                                            p_query=>''select to_char(lvl) lvl1,to_char(lvl) lvl2  from (SELECT to_char(lpad(level,2,''''0'''')) lvl,level+1 lv FROM dual CONNECT BY level <= 31',
'                                              union all select ''''UK'''',1 from dual) a',
'                                               order by lv'',',
'                                            p_show_null=>''NO'',',
'                                            p_attributes=>''style="height:30px"'',',
'                                            p_item_id=>''P10_DAY'')||''</td>'');',
'htp.p(''<td>''||apex_item.select_list_from_query(p_idx=>48,',
'                                            p_value=>''UNK'',',
'                                            p_query=>''select month_disp d,month_disp r from (select upper(month_display) month_disp,(month_value+1) month_val from wwv_flow_months_mon',
'                                               union all',
'                                               select ''''UNK'''' month_disp,1 month_val from dual )a',
'                                               order by month_val '',',
'                                            p_show_null=>''NO'',',
'                                            p_attributes=>''style="height:30px"'',',
'                                            p_item_id=>''P9_MONTH'')',
'                                            ||''</td>'');                                                             ',
'htp.p(''<td>''||apex_item.select_list_from_query(p_idx=>48,',
'                                            p_value=>1920,',
'                                            p_query=>''select year_value dv,year_value rv from WWV_FLOW_YEARS where year_value<=to_char(sysdate,''''RRRR'''') '',',
'                                            p_show_null=>''NO'',',
'                                            p_attributes=>''style="height:30px"'',',
'                                            p_item_id=>''P11_YEAR'')||''</td>''); ',
'htp.p(''<td><span class="u-Button" style="padding:7px;background-color:#24528c;color:white;font-weight:bold;" onClick="javascript:alrt();closeModal(''''datePick'''');">Save</span></td>'');',
'',
'htp.p(''<td>''||APEX_ITEM.HIDDEN(',
'    p_idx  => 48,',
'    p_value  =>null,',
'    p_attributes =>null,',
'    p_item_id    =>''P12_ID'' ,',
'    p_item_label =>NULL',
')||''</td>'');',
'',
'htp.p(''</table>''); '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6575319341146263045)
,p_plug_name=>'List S4'
,p_parent_plug_id=>wwv_flow_imp.id(8335630783108200350)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(5173499712130917201)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6891230498055664076)
,p_plug_name=>'CRF LIST'
,p_parent_plug_id=>wwv_flow_imp.id(8335630783108200350)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7271550352571950199)
,p_plug_name=>'&P510_CRF_PAGE_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(8335630783108200350)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'v_cnt1 number;',
'v_cnt2 number;',
'v_cnt3 number;',
'v_value varchar2(400) := '''';',
'v_value1 varchar2(400) := '''';',
'v_value2 varchar2(400) := '''';',
'v_value3 date;',
'v_attributes varchar2(2000);',
'v_attributes1 varchar2(2000);',
'v_item_name varchar2(100);',
'v_item_type varchar2(50);',
'v_item2_type varchar2(50);',
'v_qry_status varchar2(100);',
'v_script varchar2(32000);',
'v_script1 varchar2(32000);        --for enable disable items',
'v_item_id number;',
'v_item_value varchar2(100);',
'v_year number;',
'v_month number;',
'v_day number;',
'v_date date;',
'v_idx number := 4;',
'v_col_name varchar2(100);',
'',
'begin',
'    ',
'    htp.p(''<table>'');',
'    for i in (',
'        select *',
'        from V_EDC_CRF_ITEMS',
'        where CRF_ID = :P510_CRF_ID',
'    )',
'    LOOP',
'                ',
'        --execute immediate ''select count(1) from ''||:P510_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt1;',
'        ',
'        --Code starts For Flag--',
'        v_script := '''';',
'        execute immediate ''select count(1) from  EDC_CRF_QUERIES where page_id=''||:APP_PAGE_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||''',
'                           and study_id = ''||:APP_EDC_STUDY_ID||''',
'                           and CRF_ID = ''||:P510_CRF_ID||''',
'                           and tbl_pk_id = ''||:P510_CRF_TABLE_PK_VAL||''',
'                           and item_name = ''''''||i.column_name||'''''''' into v_cnt2;',
'                           ',
'                           ',
'        if v_cnt2 > 0 then                           ',
'        ',
'           for j in (select qry_status,4 from  EDC_CRF_QUERIES where qry_status = ''Closed'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID and study_id = :APP_EDC_STUDY_ID and CRF_ID = :P510_CRF_ID and item_name = i.column_n'
||'ame and tbl_pk_id = :P510_CRF_TABLE_PK_VAL',
'            union',
'            select qry_status,3 from  EDC_CRF_QUERIES where qry_status = ''Responded'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID and study_id = :APP_EDC_STUDY_ID and CRF_ID = :P510_CRF_ID and item_name = i.column_name an'
||'d tbl_pk_id = :P510_CRF_TABLE_PK_VAL',
'            union',
'            select qry_status,2 from  EDC_CRF_QUERIES where qry_status = ''Reopened'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID and study_id = :APP_EDC_STUDY_ID and CRF_ID = :P510_CRF_ID and item_name = i.column_name and'
||' tbl_pk_id = :P510_CRF_TABLE_PK_VAL',
'            union',
'            select qry_status,1 from  EDC_CRF_QUERIES where qry_status = ''Open'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID and study_id = :APP_EDC_STUDY_ID and CRF_ID = :P510_CRF_ID and item_name = i.column_name and tbl'
||'_pk_id = :P510_CRF_TABLE_PK_VAL',
'            order by 2 desc',
'           ) loop',
'        ',
'            --v_script := '''';',
'            if j.qry_status in (''Open'') then',
'                v_script := ''<img id="''||i.item_id||''_flag" src="#APP_IMAGES#Flag_Yellow.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px"  title="Open" />'';',
'            elsif j.qry_status in (''Reopened'') then',
'                v_script := ''<img id="''||i.item_id||''_flag" src="#APP_IMAGES#Flag_orange.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px"  title="Reopened" />'';',
'            elsif j.qry_status=''Responded'' then',
'                v_script := ''<img id="''||i.item_id||''_flag" src="#APP_IMAGES#Flag_Green.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px"  title="Responded" />'';',
'            elsif j.qry_status=''Closed'' then',
'                v_script := ''<img id="''||i.item_id||''_flag" src="#APP_IMAGES#Flag_blue.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="Closed" />'';',
'            end if;',
'            ',
'            end loop;',
'        ',
'        end if;',
'        --Code ends For Flag--',
'        ',
'        --if v_cnt1 = 0 then        --insert',
'        if :P510_CRF_TABLE_PK_VAL = 0 then        --insert',
'        ',
'            --code begins for enable/disable for insert',
'            v_script1 := '''';',
'            ',
'            select count(1) into v_cnt',
'            from EDC_CRF_ITEMS_ENDIS',
'            WHERE CRF_SHORT_NAME = :P510_CRF_SHORT_NAME AND CRF_ID = :P510_CRF_ID',
'            AND STUDY_ID = :APP_EDC_STUDY_ID AND ITEM_ID = i.item_id',
'            order by ITEM_TOBE_ENDIS;',
'            ',
'            select item_type into v_item_type',
'            from edc_crf_items',
'            where crf_id = :P510_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_id = i.item_id;',
'            ',
'            if v_cnt > 0 then ',
'',
'                for m in ( select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS',
'                from EDC_CRF_ITEMS_ENDIS',
'                WHERE CRF_SHORT_NAME = :P510_CRF_SHORT_NAME',
'                AND CRF_ID = :P510_CRF_ID',
'                AND STUDY_ID = :APP_EDC_STUDY_ID',
'                AND ITEM_ID = i.item_id',
'                order by ITEM_TOBE_ENDIS) loop',
'                ',
'                  v_cnt3 := regexp_count(m.item_tobe_endis,'','');',
'',
'                  for j in (select regexp_substr(m.item_tobe_endis,''[^,]+'', 1, level) value1 from dual',
'                  connect by regexp_substr(m.item_tobe_endis, ''[^,]+'', 1, level) is not null) loop',
'                  ',
'                  select item_type,column_name into v_item2_type, v_col_name',
'                  from edc_crf_items',
'                  where crf_id = :P510_CRF_ID',
'                  and study_id = :APP_EDC_STUDY_ID',
'                  and item_id = j.value1;',
'                    ',
'                    if v_item_type = ''RADIO BUTTON'' then',
'                        v_script1 := v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||v_idx||'''''',''''''||v_col_name||'''''');''; ',
'                    else',
'                        v_script1 := v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||0||'''''',''''''||v_col_name||'''''');''; ',
'                    end if;',
'                      ',
'                  end loop;             ',
'                    ',
'                end loop;',
'',
'            end if;',
'            --code ends for enable/disable',
'   ',
'            if i.item_type IN (''TEXT'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_item_id => i.item_id,',
'                        p_size => 20,',
'                        p_maxlength=>i.item_size,',
'                        p_attributes => v_script1',
'                      )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'                ',
'            elsif i.item_type IN (''LABEL'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' </b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.display_and_save(',
'                        p_idx => 1,',
'                        p_Value => '''',',
'                        p_item_id => i.item_id,',
'                        p_item_label => i.item_label',
'                      )||''</td>''',
'                );',
'                htp.p(''</tr>'');                ',
'',
'            elsif i.item_type IN (''CHECKBOX'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                        htp.p(''<td>''||',
'                        apex_item.checkbox2(',
'                            p_idx => 1,',
'                            p_Value => ''Yes'',',
'                            p_item_id => i.item_id,',
'                            p_attributes => v_script1',
'                        )||''</td>''',
'                        );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type IN (''RADIO BUTTON'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>'');',
'                for j in (select sequence,display_value,stored_value ',
'                     from edc_lov_values ',
'                     where lov_id = i.item_lov)',
'                     loop',
'                            htp.p(apex_item.radiogroup(',
'                            p_idx => v_idx,',
'                            p_Value => j.stored_value,',
'                            p_display => j.display_value,',
'                            p_selected_value => v_value,',
'                            p_item_id => i.item_id,',
'                            p_attributes => ''onchange="getValue(''||lpad(v_idx,2,''0'')||'',''''''||trim(upper(i.column_name))||'''''');''||v_script1||''"''',
'                        )--||''</td>''',
'                        );',
'                    end loop;',
'                htp.p(''<img id="''||i.item_id||''" src="#WORKSPACE_IMAGES#clear.png" class="ak03" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" onclick="getcolumnname(''||i.item_id||'',''''''||i.column_name||'''''''
||')" />'');',
'                htp.p(''</td>'');                    ',
'                htp.p(''</tr>'');',
'                ',
'                v_idx := v_idx + 1;',
'            ',
'            elsif i.item_type IN (''SELECT LIST'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                        htp.p(''<td>''||',
'                        apex_item.select_list_from_query(',
'                            p_idx => 1,',
'                            p_value => v_value,',
'                            p_query => ''select display_value,stored_value from edc_lov_values where lov_id = ''||i.item_lov||'' and status = 1 order by sequence'',',
'                            p_show_null => ''YES'',',
'                            p_null_text => ''--Select--'',',
'                            p_null_value => NULL,',
'                            p_item_id => i.item_id,',
'                            p_attributes => ''onchange="calcAge();''||v_script1||''"''',
'                        )||''</td>''',
'                        );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type = ''DATE'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.date_popup2(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_item_id => i.item_id,',
'                        p_size => 12,',
'                        p_attributes => ''readonly="readonly"''||v_script1,',
'                        p_navigation_list_for => ''MONTH_AND_YEAR'',',
'                        p_year_range => ''1940:2029'',',
'                        p_max_value => ''+0d''',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''UNKNOWN DATE'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>12,',
'                      p_attributes=>''readonly="readonly"''||v_script1)||''<img id="''||i.item_id||''" src="#WORKSPACE_IMAGES#clear.png" class="ak04" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" />',
'                      <span class="u-Button a-Icon icon-calendar" style="height:12px; border:none;" onClick="javascript:setId(''||i.item_id||'');openModal(''''datePick'''');getPosition(event);"></button></td>'');',
'                htp.p(''</tr>'');',
'            ',
'            elsif i.item_type = ''TIME'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.date_popup2(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_date_format => ''HH24:MI'',',
'                        p_item_id => i.item_id,',
'                        p_size => 5,',
'                        p_number_of_months => 0,',
'                        p_attributes => ''readonly="readonly"''||v_script1',
'                    )||''</td>''',
'                );',
'                htp.p(''<tr>'');',
'',
'            elsif i.item_type = ''NUMBER'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_attributes=> ''class="number_field" oninput=deci_restr(''||i.item_id||'',''||i.item_size||'',''||i.digits_aftr_deci||'') onchange="calcBMI();''||v_script1||''"'',',
'                        p_item_id => i.item_id,',
'                        p_maxlength=>i.item_size,',
'                        p_size => 5',
'                    )||''</td>''',
'                );',
'                htp.p(''<tr>'');',
'',
'            elsif i.item_type = ''TEXTAREA'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td valign = "middle"><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.textarea(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_rows=>  1,',
'                        p_item_id => i.item_id,',
'                        p_attributes => v_script1',
'                    )||''</td>''',
'                );',
'                htp.p(''<tr>'');',
'                            ',
'            end if; ',
'',
'        --elsif v_cnt1 = 1 then            --update',
'        elsif :P510_CRF_TABLE_PK_VAL != 0 then            --update',
'        ',
'            v_attributes1 := ''placeholder="Reason for Change" style="visibility:hidden"'';',
'            ',
'            --code begins for enable/disable',
'            v_script1 := '''';',
'            ',
'            select count(1) into v_cnt',
'            from EDC_CRF_ITEMS_ENDIS',
'            WHERE CRF_SHORT_NAME = :P510_CRF_SHORT_NAME',
'            AND CRF_ID = :P510_CRF_ID',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND ITEM_ID = i.item_id',
'            order by ITEM_TOBE_ENDIS;',
'            ',
'            select item_type into v_item_type',
'            from edc_crf_items',
'            where crf_id = :P510_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_id = i.item_id;',
'            ',
'            if v_cnt > 0 then ',
'',
'                for m in ( select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS',
'                from EDC_CRF_ITEMS_ENDIS',
'                WHERE CRF_SHORT_NAME = :P510_CRF_SHORT_NAME',
'                AND CRF_ID = :P510_CRF_ID',
'                AND STUDY_ID = :APP_EDC_STUDY_ID',
'                AND ITEM_ID = i.item_id',
'                order by ITEM_TOBE_ENDIS) loop',
'                ',
'                  v_cnt3 := regexp_count(m.item_tobe_endis,'','');',
'',
'                  for j in (select regexp_substr(m.item_tobe_endis,''[^,]+'', 1, level) value1 from dual',
'                  connect by regexp_substr(m.item_tobe_endis, ''[^,]+'', 1, level) is not null) loop',
'                  ',
'                  select item_type,column_name into v_item2_type,v_col_name',
'                  from edc_crf_items',
'                  where crf_id = :P510_CRF_ID',
'                  and study_id = :APP_EDC_STUDY_ID',
'                  and item_id = j.value1;',
'                    ',
'                    if v_item_type = ''RADIO BUTTON'' then',
'                        v_script1 := v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||v_idx||'''''',''''''||v_col_name||'''''');''; ',
'                    else',
'                        v_script1 := v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||0||'''''',''''''||v_col_name||'''''');''; ',
'                    end if;',
'                      ',
'                  end loop;             ',
'                    ',
'                end loop;',
'',
'            end if;',
'            --code ends for enable/disable',
'',
'            if i.item_type = ''TIME'' then',
'                execute immediate ''select ''||i.column_name|| '' from ''||:P510_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL into v_value3;',
'            else                ',
'                execute immediate ''select ''||i.column_name|| '' from ''||:P510_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL into v_value;',
'            end if;                    ',
'            ',
'            if i.item_type = ''CHECKBOX'' then',
'               if v_value is null then',
'                  v_attributes := ''UNCHECKED onchange="myFunction(''||i.item_id||'')"'';',
'               elsif v_value = ''Yes'' then      ',
'                  v_attributes := ''CHECKED onchange="myFunction(''||i.item_id||'')"'';',
'               end if;',
'            end if;             ',
'',
'            if i.item_type IN (''TEXT'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_item_id => i.item_id,',
'                        p_size => 20,',
'                        p_maxlength=>i.item_size,',
'                        p_attributes => ''onchange="myFunction(''||i.item_id||'');''||v_script1||''"''',
'                    )||v_script||''</td>''',
'                );',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'            ',
'            elsif i.item_type IN (''LABEL'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' </b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.display_and_save(',
'                        p_idx => 1,',
'                        p_Value => '''',',
'                        p_item_id => i.item_id,',
'                        p_item_label => i.item_label',
'                      )||''</td>''',
'                );',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type IN (''CHECKBOX'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                        htp.p(''<td>''||',
'                        apex_item.checkbox2(',
'                            p_idx => 1,',
'                            p_Value => ''Yes'',',
'                            p_attributes => v_attributes,',
'                            p_item_id => i.item_id',
'                        )||v_script||''</td>''',
'                        );',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type IN (''RADIO BUTTON'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>'');',
'                for j in (select display_value,stored_value ',
'                     from edc_lov_values ',
'                     where lov_id = i.item_lov)',
'                     loop',
'                        htp.p(',
'                        apex_item.radiogroup(',
'                            p_idx => v_idx,',
'                            p_Value => j.stored_value,',
'                            p_display => j.display_value,',
'                            p_selected_value => v_value,',
'                            p_item_id => i.item_id,',
'                            p_attributes => ''class="hasRadioButton" onchange="myFunction(''||i.item_id||'');getValue(''||lpad(v_idx,2,''0'')||'',''''''||trim(upper(i.column_name))||'''''');''||v_script1||''"''',
'                        )',
'                        );',
'                    end loop;',
'                htp.p(''<img id="''||i.item_id||''" src="#WORKSPACE_IMAGES#clear.png" class="ak03" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" onclick="getcolumnname(''||i.item_id||'',''''''||i.column_name||'''''''
||')" />'');',
'                htp.p(v_script);                    ',
'                htp.p(''</td>'');                    ',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                ',
'                v_idx := v_idx + 1;',
'',
'            elsif i.item_type IN (''SELECT LIST'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                        htp.p(''<td>''||',
'                        apex_item.select_list_from_query(',
'                            --p_idx => i.f_index,',
'                            p_idx => 1,',
'                            p_value => v_value,',
'                            p_query => ''select display_value,stored_value from edc_lov_values where lov_id = ''||i.item_lov||'' and status = 1 order by sequence'',',
'                            p_show_null => ''YES'',',
'                            p_null_value => NULL,',
'                            p_null_text => ''--Select--'',',
'                            p_item_id => i.item_id,',
'                            p_attributes => ''onchange="myFunction(''||i.item_id||'');calcAge();''||v_script1||''"''',
'                        )||v_script||''</td>''',
'                        );',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type = ''DATE'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.date_popup2(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_item_id => i.item_id,',
'                        p_size => 12,',
'                        p_navigation_list_for => ''MONTH_AND_YEAR'',',
'                        p_year_range => ''1940:2029'',',
'                        p_attributes => ''readonly="readonly" onchange="myFunction(''||i.item_id||'')''||v_script1||''"'',',
'                        p_max_value => ''+0d''',
'                    )||v_script||''</td>''',
'                );',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''UNKNOWN DATE'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>12,',
'                        p_attributes=>''readonly="readonly" onchange="myFunction(''||i.item_id||'')''||v_script1||''"'')||v_script||''<img id="''||i.item_id||',
'                        ''" src="#WORKSPACE_IMAGES#clear.png" class="ak04" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" />',
'                        <span class="u-Button a-Icon icon-calendar" style="height:12px; border:none;" onClick="javascript:setId(''||i.item_id||'');openModal(''''datePick'''');getPosition(event);"></button></td>'');',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>20)||''</td>'');',
'                htp.p(''</tr>'');',
'            ',
'            elsif i.item_type = ''TIME'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.date_popup2(',
'                        p_idx => 1,',
'                        p_Value => v_value3,',
'                        p_date_format => ''HH24:MI'',',
'                        p_item_id => i.item_id,',
'                        p_size => 5,',
'                        p_number_of_months => 0,',
'                        p_attributes => ''readonly="readonly" onchange="myFunction(''||i.item_id||'')''||v_script1||''"''',
'                    )||v_script||''</td>''',
'                );',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type = ''NUMBER'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_item_id => i.item_id,',
'                        p_size => 5,',
'                        p_maxlength=>i.item_size,',
'                        p_attributes => ''class="number_field" oninput=deci_restr(''||i.item_id||'',''||i.item_size||'',''||i.digits_aftr_deci||'') onchange="myFunction(''||i.item_id||'');calcBMI();''||v_script1||''"''',
'                    )||v_script||''</td>''',
'                );',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>''); ',
'',
'            elsif i.item_type = ''TEXTAREA'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td valign = "middle"><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.textarea(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_rows=>  1,',
'                        p_item_id => i.item_id,',
'                        p_attributes => ''onchange="myFunction(''||i.item_id||'')''||v_script1||''"''',
'                    )||v_script||''</td>''',
'                );',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');            ',
'            end if; ',
'            ',
'        end if;                --end of v_cnt1 if statement',
'',
'    htp.p(''</form>'');',
'    END LOOP;',
'    htp.p(''</table>'');',
'   ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8335631111061200350)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(8335630783108200350)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8335637487546200355)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(8335630783108200350)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131134462911980)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8338259558076955158)
,p_plug_name=>'H'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>50
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5233583253303407146)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_diary_type  varchar2(30);',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_cnt2 number;',
'    v_cnt3 number;',
'begin',
'    ',
'    select diary_type into v_diary_type',
'    from edc_patient_diary',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    select count(1) into v_cnt1        --data entry by subject',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = :P510_CRF_TABLE_NAME',
'    and username in (select scrno from edc_patient_profile where study_id = 661)',
'    and table_pk_value = :P510_CRF_TABLE_PK_VAL;',
'    ',
'    select count(1) into v_cnt        --data entry by user',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = :P510_CRF_TABLE_NAME',
'    and upper(username) = upper(:APP_USER_NAME)',
'    and table_pk_value = :P510_CRF_TABLE_PK_VAL;',
'    ',
'    select count(1) into v_cnt2        --data entry or not',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = :P510_CRF_TABLE_NAME',
'    and table_pk_value = :P510_CRF_TABLE_PK_VAL;',
'    ',
'    select count(1) into v_cnt3        --audit trail for data submitted by subject present',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = ''EDC_PATIENT_DIARY''',
'    and new_value = ''4''',
'    and table_pk_value = :P510_CRF_TABLE_PK_VAL;',
'    ',
'    if :P510_CRF_ID = 22 then        --for other comments',
'        if :APP_EDC_ROLE_ID IN (13,15,16,26) and :P510_SECTION_STATUS < 4.5 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Paper'' then',
'        if :APP_EDC_ROLE_ID IN (13,15,16,26) AND :P510_SECTION_STATUS <= 4 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Electronic'' then',
'        if :APP_EDC_ROLE_ID IN (13,15,16,26) AND v_cnt3 > 0 AND :P510_SECTION_STATUS IN (2,3,4)',
'        /*AND ((:P510_SECTION_STATUS = 4 AND v_cnt1 > 0 AND v_cnt = 0) OR (:P510_SECTION_STATUS <= 4 AND V_CNT > 0)',
'                                                 OR (:P510_SECTION_STATUS = 2 AND V_CNT = 0 AND V_CNT2 != 0) OR :P510_CRF_TABLE_PK_VAL = 0) */',
'                                                 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    end if;',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5233583552499407148)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_button_name=>'ADD_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Query'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP,124:P124_PATIENT_DIARY_ID,P124_PAGE_ID,P124_CRF_ID,P124_TBL_PK_ID:&APP_EDC_PATIENT_DIARY_ID.,&APP_PAGE_ID.,&P510_CRF_ID.,&P510_CRF_TABLE_PK_VAL.'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'    ',
'    select count(1) into v_cnt',
'    from edc_crf_queries',
'    where qry_status in (''Open'',''Responded'')',
'    and auto_flag = ''U''',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and crf_id = :P510_CRF_ID',
'    and role_id in (27,17);',
'    ',
'    if v_cnt > 0 and :APP_EDC_ROLE_ID IN (13,27,17) then',
'        return true;',
'    elsif :APP_EDC_ROLE_ID IN (13,27,17) AND :P510_SECTION_STATUS IN (4.5) then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'    ',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_comment=>'EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID,:P510_CRF_ID,:P510_CRF_TABLE_PK_VAL) = 1'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5233583944911407149)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:509:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5233584414544407149)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P510_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_DIARY_ID,P6_PAGE_ID,P6_CRF_ID,P6_TBL_PK_ID:&APP_EDC_PATIENT_DIARY_ID.,510,&P510_CRF_ID.,&P510_CRF_TABLE_PK_VAL.'');'
,p_button_condition=>':P510_COUNT > 0'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5233584751997407150)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5233585180260407150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5233585564814407151)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_diary_type  varchar2(30);',
'    v_cnt number;',
'    v_cnt1 number;',
'begin',
'    ',
'    select diary_type into v_diary_type',
'    from edc_patient_diary',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    select count(1) into v_cnt',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = :P510_CRF_TABLE_NAME',
'    and table_pk_value = :P510_CRF_TABLE_PK_VAL',
'    and username not in (select scrno from edc_patient_profile where study_id = 661);',
'    ',
'    select count(1) into v_cnt1        --audit trail for data submitted by subject present',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = ''EDC_PATIENT_DIARY''',
'    and table_pk_value = :P510_CRF_TABLE_PK_VAL',
'    and new_value = ''4'';',
'    ',
'    if :P510_CRF_ID = 22 then',
'        if :APP_EDC_ROLE_ID IN (13,16,26) AND :P510_SECTION_STATUS = 3 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Paper'' then',
'        if :APP_EDC_ROLE_ID IN (13,16,26) AND :P510_SECTION_STATUS = 3 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Electronic'' then',
'        if :APP_EDC_ROLE_ID IN (13,16,26) AND v_cnt1 > 0 and :P510_SECTION_STATUS IN (2,3,4) then --AND (:P510_SECTION_STATUS = 4 or (:P510_SECTION_STATUS = 3 and v_cnt > 0)) then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    end if;',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_comment=>'edc_workflow.is_ready_for_submit_dedc_pk(:P510_CRF_TABLE_PK_VAL,:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,4,:P510_CRF_ID) = 1'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5233585939936407151)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_button_name=>'CRA_REVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CRA Review'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':APP_EDC_ROLE_ID IN (13,27,17) AND :P510_SECTION_STATUS = 4.5'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--edc_workflow.is_ready_for_submit_dedc(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,6,:P510_CRF_ID) = 1',
'edc_workflow.is_ready_for_submit_dedc_pk(:P510_CRF_TABLE_PK_VAL,:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,6,:P510_CRF_ID) = 1'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5233626688857407245)
,p_branch_name=>'Go To Page 100'
,p_branch_action=>'f?p=&APP_ID.:510:&SESSION.::&DEBUG.::P510_CRF_ID:&P510_CRF_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(5233583253303407146)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797209113582082468)
,p_name=>'P510_OCOMPDET_STDT'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P510_CRF_ID = 19'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797209207541082469)
,p_name=>'P510_OCOMPDET_ENDT'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P510_CRF_ID = 19'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797209667889082473)
,p_name=>'P510_OCOMP_FLAG'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P510_CRF_ID = 19'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797210025350082477)
,p_name=>'P510_ONSD_STDT'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P510_CRF_ID = 10'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797210174861082478)
,p_name=>'P510_ONSD_ENDT'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P510_CRF_ID = 10'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797210228807082479)
,p_name=>'P510_ONSD_FLAG'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P510_CRF_ID = 10'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233587557259407152)
,p_name=>'P510_NO_OF_QUERIES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM edc_crf_queries',
' where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
'   AND CRF_ID = :P510_CRF_ID',
' AND QRY_STATUS in (''Open'',''Reopened'')',
' AND TBL_PK_ID = :P510_CRF_TABLE_PK_VAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233587990998407159)
,p_name=>'P510_PATIENT_VISIT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_PATIENT_VISIT_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233588397914407160)
,p_name=>'P510_CRF_SHORT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233588762178407160)
,p_name=>'P510_CRF_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233589196628407161)
,p_name=>'P510_CRF_PAGE_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233589549544407161)
,p_name=>'P510_CRF_TABLE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233589975006407162)
,p_name=>'P510_CRF_TABLE_PK_COL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233590370946407162)
,p_name=>'P510_CRF_TABLE_PK_VAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233590763745407162)
,p_name=>'P510_ACTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233591137123407163)
,p_name=>'P510_DOB_ITEM_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P510_CRF_SHORT_NAME',
'              and column_name in (''DOBDAY'',''DOBMONTH'',''DOBYEAR'',''AGE'')',
'              and study_id = :APP_EDC_STUDY_ID)',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233591587696407163)
,p_name=>'P510_BMI_ITEM_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P510_CRF_SHORT_NAME',
'              and column_name in (''HEIGHT'',''WEIGHT'',''BMI'')',
'              and study_id = :APP_EDC_STUDY_ID)',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233592013423407163)
,p_name=>'P510_DOB_BMI_ITEM_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id, ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P510_CRF_SHORT_NAME',
'              and column_name in (''BMI'',''AGE'')',
'              and study_id = :APP_EDC_STUDY_ID)',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1',
'UNION',
'SELECT ''0'' FROM EDC_CRF_ITEMS',
'WHERE CRF_SHORT_NAME = :P510_CRF_SHORT_NAME',
'AND CRF_SHORT_NAME != ''DM'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233592333146407164)
,p_name=>'P510_ARRAY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_id = :P510_CRF_ID and item_type != ''LABEL'')',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233592772107407164)
,p_name=>'P510_ARRLBL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (REPLACE(item_label,'','','''') , '',''), 2) csv',
'      FROM (SELECT item_label , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_id = :P510_CRF_ID and item_type != ''LABEL'')',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233593174944407164)
,p_name=>'P510_COUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233594409945407165)
,p_name=>'P510_ENDIS_SCRIPT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233594792855407166)
,p_name=>'P510_FINDDISABLE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233595128337407166)
,p_name=>'P510_ITEM_DISABLE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233595518351407167)
,p_name=>'P510_MSG'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233595978596407167)
,p_name=>'P510_QRY_COUNT'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233596368839407167)
,p_name=>'P510_FIELD_VAL'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233596788961407168)
,p_name=>'P510_FIELD_NAME'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233597180783407168)
,p_name=>'P510_COLUMN_NAME'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233597583601407168)
,p_name=>'P510_SEQ_NO'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(7271550352571950199)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P510_CRF_ID in (8,10,19,22)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233598281944407169)
,p_name=>'P510_SV_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8335631111061200350)
,p_use_cache_before_default=>'NO'
,p_source=>'SV_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233598714304407170)
,p_name=>'P510_SECTION_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8335631111061200350)
,p_item_default=>'2'
,p_prompt=>'<b>Section Status :</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VAL d, RETURN_VAL r from EDC_CRF_STATUS',
'order by disp_seq'))
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233599083816407171)
,p_name=>'P510_IMG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8335631111061200350)
,p_prompt=>'<b>CRF Audit Trail :</b>'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img ',
' id="P4_AUDIT"',
' src="#WORKSPACE_IMAGES#audit.png" ',
'',
' style="cursor: pointer" ',
'         width="25px"',
' title="Audit"',
'>',
''))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233599741098407173)
,p_name=>'P510_CREATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8335637487546200355)
,p_prompt=>'<b>Created By</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233600168471407173)
,p_name=>'P510_CREATED_ON'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8335637487546200355)
,p_prompt=>'<b>Created Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233600557004407174)
,p_name=>'P510_UPDATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8335637487546200355)
,p_prompt=>'<b>Updated By</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233600959287407174)
,p_name=>'P510_UPDATED_ON'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8335637487546200355)
,p_prompt=>'<b>Updated Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5233601708176407176)
,p_name=>'P510_X'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(8338259558076955158)
,p_use_cache_before_default=>'NO'
,p_prompt=>'X'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233613065689407216)
,p_name=>'Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P4_AUDIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233613576576407228)
,p_event_id=>wwv_flow_imp.id(5233613065689407216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_DIARY_ID,P141_TABLE_NAME,P141_CRF_ID,P141_PK_ID:&APP_PAGE_ID.,&APP_EDC_PATIENT_DIARY_ID.,&P510_CRF_TABLE_NAME.,&P510_CRF_ID.,&P510_CRF_TABLE_PK_VAL.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233614013613407229)
,p_name=>'Calling validate INSERT function'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5233583253303407146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_COUNT = 0'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233614508416407230)
,p_event_id=>wwv_flow_imp.id(5233614013613407229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateInsert();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233614849018407230)
,p_name=>'Calling validate UPDATE function'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5233583253303407146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_COUNT > 0'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233615364050407230)
,p_event_id=>wwv_flow_imp.id(5233614849018407230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateUpdate();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233615754561407231)
,p_name=>'Function to know which items are disabled'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5233583253303407146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233616274816407231)
,p_event_id=>wwv_flow_imp.id(5233615754561407231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'findDisable();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233616703177407231)
,p_name=>'Readonly on Page Load'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233617122395407232)
,p_event_id=>wwv_flow_imp.id(5233616703177407231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$( window ).load(function() ',
'//{    ',
'        var x = $v("P510_DOB_BMI_ITEM_ID");',
'        var arr = JSON.parse("[" + x + "]");',
'',
'        document.getElementById(arr[0]).readOnly = true;',
'        document.getElementById(arr[1]).readOnly = true;',
'//});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233619358992407233)
,p_name=>'Refresh after closing of modal page'
,p_event_sequence=>1300
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233619836414407234)
,p_event_id=>wwv_flow_imp.id(5233619358992407233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233620296889407234)
,p_name=>'Submit click'
,p_event_sequence=>1340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5233585564814407151)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233620763277407234)
,p_event_id=>wwv_flow_imp.id(5233620296889407234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p = $v("P510_QRY_COUNT");',
'if (p > 0)',
'    {',
'        alert("Please respond to all open queries and then Submit.");',
'    }',
'else',
'    {',
'        apex.submit(''SUBMIT'');',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233621198406407235)
,p_name=>'CRA Review click'
,p_event_sequence=>1350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5233585939936407151)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233621661824407235)
,p_event_id=>wwv_flow_imp.id(5233621198406407235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p = $v("P510_QRY_COUNT");',
'if (p > 0)',
'    {',
'        alert("Please close all responded queries and then Review.");',
'    }',
'else',
'    {',
'        apex.submit(''CRA_REVIEW'');',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233622956670407236)
,p_name=>'Enable/Disable on Page Load'
,p_event_sequence=>1370
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233623481334407236)
,p_event_id=>wwv_flow_imp.id(5233622956670407236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var m = $v("P510_ENDIS_SCRIPT");',
'//alert(m);',
'eval(m);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233623857638407237)
,p_name=>'CLEAR IMG BUTTON FOR RADIO GROUP'
,p_event_sequence=>1380
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_da_event_comment=>':APP_PAGE_ID in (559,571,505,504,511,502,509,510,506,512,507,514,501,503,515,517,518,516,520,519,508,524,521,523,522,528,526,513,530,525,531,529,527,533,532,535,534,537,538,539,540,536,541,542,546,548,543,547,544,545,549,550,551,553,554,555,556,558,5'
||'63,552,562,564,565,566,567,568,570,557,561,581,582,580,581,582,583,585,586,588,587,589,590,591,592,593,594,595,596,599,601,598,602,603,604,605,703,705,707,709,711,713,715,717,610,712,606,608,719,720,606,714,716,718,559,100,818,819,820)'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233624346506407237)
,p_event_id=>wwv_flow_imp.id(5233623857638407237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'//for radio buttons in dynamic edc...developed by Pankti',
'$(''.ak03'').click(function(){',
'var c=$(this).prop(''id'');',
'var f = document.getElementById(c).name;',
'var b=$("input[type=''radio''][name=''" + f + "'']:checked").val();',
'$("input[type=radio][name=" + f + "]").prop(''checked'', false);',
'var a = $("input[type=''radio''][name=''" + f + "'']:checked").val();',
'$(''#''+c).trigger("change"); ',
'if (a==undefined)',
'    {',
'        var y = $v("P510_CRF_TABLE_PK_VAL");',
'        if (y!='''' && b!=undefined)',
'            {',
'                 var x = ''rsc''+c;',
'                 document.getElementById(x).style.visibility = "visible";   ',
'            }',
'        var m = $v("P510_ENDIS_SCRIPT");',
'        eval(m);',
'        ',
'        var g = "" + g;',
'        var pad = "00";',
'        var g = pad.substring(0, pad.length - g.length) + g;',
'        var h = $("input[type=''radio''][name=''" + g + "'']:checked").val();',
'        $x("P510_FIELD_VAL").value = h;',
'        var i = $v("P510_COLUMN_NAME");',
'        $x("P510_FIELD_NAME").value = i;',
'',
'        //ajax callback process to save data in table',
'        var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'        oDBGet.add(''P510_FIELD_VAL'', $v("P510_FIELD_VAL"));',
'        oDBGet.add(''P510_FIELD_NAME'', $v("P510_FIELD_NAME"));',
'        oDBGet.get();',
'    }',
'})',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5233624732596407237)
,p_name=>'On change of document'
,p_event_sequence=>1390
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5233625281919407238)
,p_event_id=>wwv_flow_imp.id(5233624732596407237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var m = $v("P510_ENDIS_SCRIPT");',
'//alert(m);',
'eval(m);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787541703476126876)
,p_name=>'Assign Value to Sr.No. OCOMP'
,p_event_sequence=>1400
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 19'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787541774923126877)
,p_event_id=>wwv_flow_imp.id(3787541703476126876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P510_CRF_TABLE_PK_VAL");',
'if (a == 0)',
'    {',
'        document.getElementById("47").value = $v("P510_SEQ_NO");',
'        document.getElementById("47").readOnly = true;',
'    }',
'else',
'    {',
'        document.getElementById("47").readOnly = true;',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787541896980126878)
,p_name=>'Assign Value to Sr.No. OM'
,p_event_sequence=>1410
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 8'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787541932390126879)
,p_event_id=>wwv_flow_imp.id(3787541896980126878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P510_CRF_TABLE_PK_VAL");',
'if (a == 0)',
'    {',
'        document.getElementById("61").value = $v("P510_SEQ_NO");',
'        document.getElementById("61").readOnly = true;',
'    }',
'else',
'    {',
'        document.getElementById("61").readOnly = true;',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787542057546126880)
,p_name=>'Assign Value to Sr.No. ONSD'
,p_event_sequence=>1420
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 10'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787542113013126881)
,p_event_id=>wwv_flow_imp.id(3787542057546126880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P510_CRF_TABLE_PK_VAL");',
'if (a == 0)',
'    {',
'        document.getElementById("62").value = $v("P510_SEQ_NO");',
'        document.getElementById("62").readOnly = true;',
'    }',
'else',
'    {',
'        document.getElementById("62").readOnly = true;',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787542237779126882)
,p_name=>'Assign Value to Sr.No. OCOM'
,p_event_sequence=>1430
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 22'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787542323806126883)
,p_event_id=>wwv_flow_imp.id(3787542237779126882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    var a = $v("P510_CRF_TABLE_PK_VAL");',
'if (a == 0)',
'    {',
'        document.getElementById("69").value = $v("P510_SEQ_NO");',
'        document.getElementById("69").readOnly = true;',
'    }',
'else',
'    {',
'        document.getElementById("69").readOnly = true;',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787542435867126884)
,p_name=>'Enable Disable OM on page load'
,p_event_sequence=>1440
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 8'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787542590686126885)
,p_event_id=>wwv_flow_imp.id(3787542435867126884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("39").value;',
'',
'if (a == ''Other'')',
'    {',
'        document.getElementById("63").readOnly = false;',
'        document.getElementById("63").style.removeProperty("background-color");   ',
'    }',
'else',
'    {',
'        document.getElementById("63").readOnly = true;',
'        document.getElementById("63").style.background = "gainsboro";',
'        document.getElementById("63").value = "";',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787542872108126888)
,p_name=>'Enable Disable ONSD on page load'
,p_event_sequence=>1450
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 10'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787542920009126889)
,p_event_id=>wwv_flow_imp.id(3787542872108126888)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("68").value;',
'',
'if (a == ''Resolved'')',
'    {',
'        document.getElementById("67").readOnly = true;',
'        document.getElementById("67").style.removeProperty("background-color");   ',
'        ',
'        document.getElementById("45").readOnly = true;',
'        document.getElementById("45").style.removeProperty("background-color");   ',
'    }',
'else',
'    {',
'        document.getElementById("67").readOnly = true;',
'        document.getElementById("67").style.background = "gainsboro";',
'        document.getElementById("67").value = "";',
'        ',
'        document.getElementById("45").readOnly = true;',
'        document.getElementById("45").style.background = "gainsboro";',
'        document.getElementById("45").value = "";',
'    }',
'',
'$x("P510_ONSD_STDT").value = document.getElementById("66").value;',
'$x("P510_ONSD_ENDT").value = document.getElementById("67").value;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787543014760126890)
,p_name=>'Enable Disable ONSD on change'
,p_event_sequence=>1460
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("68")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 10'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787543131107126891)
,p_event_id=>wwv_flow_imp.id(3787543014760126890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("68").value;',
'',
'if (a == ''Resolved'')',
'    {',
'        document.getElementById("67").readOnly = true;',
'        document.getElementById("67").style.removeProperty("background-color");   ',
'        ',
'        document.getElementById("45").readOnly = true;',
'        document.getElementById("45").style.removeProperty("background-color");   ',
'    }',
'else',
'    {',
'        document.getElementById("67").readOnly = true;',
'        document.getElementById("67").style.background = "gainsboro";',
'        document.getElementById("67").value = "";',
'        ',
'        document.getElementById("45").readOnly = true;',
'        document.getElementById("45").style.background = "gainsboro";',
'        document.getElementById("45").value = "";',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787542691384126886)
,p_name=>'Enable Disable OM on change'
,p_event_sequence=>1470
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("39")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 8'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787542769351126887)
,p_event_id=>wwv_flow_imp.id(3787542691384126886)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("39").value;',
'',
'if (a == ''Other'')',
'    {',
'        document.getElementById("63").readOnly = false;',
'        document.getElementById("63").style.removeProperty("background-color");   ',
'    }',
'else',
'    {',
'        document.getElementById("63").readOnly = true;',
'        document.getElementById("63").style.background = "gainsboro";',
'        document.getElementById("63").value = "";',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3795613136472845342)
,p_name=>'Assign Values to OCOMP Page load'
,p_event_sequence=>1480
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 19'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3795613276437845343)
,p_event_id=>wwv_flow_imp.id(3795613136472845342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P510_CRF_TABLE_PK_VAL");',
'',
'if (a == 0)',
'    {',
'        document.getElementById("49").value = "Yes";',
'        document.getElementById("50").value = "No";',
'    }',
'$x("P510_OCOMPDET_STDT").value = document.getElementById("64").value;',
'$x("P510_OCOMPDET_ENDT").value = document.getElementById("65").value;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3795613366927845344)
,p_name=>'On change_New Complaint'
,p_event_sequence=>1490
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("49")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 19'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3795613493573845345)
,p_event_id=>wwv_flow_imp.id(3795613366927845344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("49").value;',
'',
'if (a == "Yes")',
'    {',
'        document.getElementById("50").value = "No";',
'    }',
'else if (a == "No")',
'    {',
'        document.getElementById("50").value = "Yes";',
'    }',
'else if (a == "")',
'    {',
'        document.getElementById("50").value = "";',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3795613603077845346)
,p_name=>'On change_Worsening Complaint'
,p_event_sequence=>1500
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("50")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 19'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3795613688199845347)
,p_event_id=>wwv_flow_imp.id(3795613603077845346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("50").value;',
'',
'if (a == "Yes")',
'    {',
'        document.getElementById("49").value = "No";',
'    }',
'else if (a == "No")',
'    {',
'        document.getElementById("49").value = "Yes";',
'    }',
'else if (a == "")',
'    {',
'        document.getElementById("49").value = "";',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797209319255082470)
,p_name=>'On Change _Other Complaints_Start Date'
,p_event_sequence=>1510
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("64")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 19'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797209454076082471)
,p_event_id=>wwv_flow_imp.id(3797209319255082470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x("P510_OCOMPDET_STDT").value = document.getElementById("64").value;',
'$x("P510_OCOMPDET_ENDT").value = document.getElementById("65").value;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797209536535082472)
,p_event_id=>wwv_flow_imp.id(3797209319255082470)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P510_OCOMP_FLAG'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    if (TO_DATE(:P510_OCOMPDET_STDT,''DD-MM-YY'') > TO_DATE(:P510_OCOMPDET_ENDT,''DD-MM-YY'')) then',
'        ',
'        return 1;',
'    ',
'    else',
'        ',
'        return 0;',
'    ',
'    end if;',
'   ',
'end;'))
,p_attribute_07=>'P510_OCOMPDET_STDT,P510_OCOMPDET_ENDT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797209714168082474)
,p_name=>'On Change _Other Complaints_End Date'
,p_event_sequence=>1520
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("65")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 19'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797209833377082475)
,p_event_id=>wwv_flow_imp.id(3797209714168082474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x("P510_OCOMPDET_STDT").value = document.getElementById("64").value;',
'$x("P510_OCOMPDET_ENDT").value = document.getElementById("65").value;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797209956793082476)
,p_event_id=>wwv_flow_imp.id(3797209714168082474)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P510_OCOMP_FLAG'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    if (TO_DATE(:P510_OCOMPDET_STDT,''DD-MM-YY'') > TO_DATE(:P510_OCOMPDET_ENDT,''DD-MM-YY'')) then',
'        ',
'        return 1;',
'    ',
'    else',
'        ',
'        return 0;',
'    ',
'    end if;',
'   ',
'end;'))
,p_attribute_07=>'P510_OCOMPDET_STDT,P510_OCOMPDET_ENDT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797210350743082480)
,p_name=>'On Change _Other New Symptoms_Start Date'
,p_event_sequence=>1530
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("66")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 10'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797210426055082481)
,p_event_id=>wwv_flow_imp.id(3797210350743082480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x("P510_ONSD_STDT").value = document.getElementById("66").value;',
'$x("P510_ONSD_ENDT").value = document.getElementById("67").value;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797210585928082482)
,p_event_id=>wwv_flow_imp.id(3797210350743082480)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P510_ONSD_FLAG'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    if (TO_DATE(:P510_ONSD_STDT,''DD-MM-YY'') > TO_DATE(:P510_ONSD_ENDT,''DD-MM-YY'')) then',
'        ',
'        return 1;',
'    ',
'    else',
'        ',
'        return 0;',
'    ',
'    end if;',
'   ',
'end;'))
,p_attribute_07=>'P510_ONSD_STDT,P510_ONSD_ENDT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797210640176082483)
,p_name=>'On Change _Other New Symptoms_End Date'
,p_event_sequence=>1540
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("67")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P510_CRF_ID = 10'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797210772592082484)
,p_event_id=>wwv_flow_imp.id(3797210640176082483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x("P510_ONSD_STDT").value = document.getElementById("66").value;',
'$x("P510_ONSD_ENDT").value = document.getElementById("67").value;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797210829610082485)
,p_event_id=>wwv_flow_imp.id(3797210640176082483)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P510_ONSD_FLAG'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    if (TO_DATE(:P510_ONSD_STDT,''DD-MM-YY'') > TO_DATE(:P510_ONSD_ENDT,''DD-MM-YY'')) then',
'        ',
'        return 1;',
'    ',
'    else',
'        ',
'        return 0;',
'    ',
'    end if;',
'   ',
'end;'))
,p_attribute_07=>'P510_ONSD_STDT,P510_ONSD_ENDT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233612231566407208)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P510_FINDDISABLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_script varchar2(32767) := ''var value = null;var m = ''''''''; '';',
'begin    ',
'    ',
'    for i in (',
'        select *',
'        from V_EDC_CRF_ITEMS',
'        where CRF_ID = :P510_CRF_ID',
'    )',
'    LOOP',
'    ',
'        v_script := v_script||'' ''||''',
'              if ( apex.item( "''||i.item_id||''" ).isDisabled() ) ',
'              {   ',
'                value = ''||i.item_id||'';',
'                if (m == '''''''')',
'                {',
'                    m = value;',
'                }',
'                else',
'                {',
'                    m = m + '''','''' + value;',
'                }                    ',
'              }                  ',
'              $x("P510_ITEM_DISABLE").value = m;'';',
'    END LOOP;        ',
'    --htp.p(v_script);',
'                      ',
'    select v_script into :P510_FINDDISABLE from dual;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4132661463424903115
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789564211657567947)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Dynamic Informative Message_SPSI_SPMI_CP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_msg varchar2(32767) := ''''; v_item_id number; v_colnm varchar2(50); v_col2 varchar2(50);',
'    v_val varchar2(400); v_val1 varchar2(400); v_val2 varchar2(400); v_val3 varchar2(400); m number; n number;',
'    v_item_label varchar2(4000); v_cond1 varchar2(10000);  v_cond2 varchar2(10000);  v_cnt number; v_cnt1 number; v_cnt2 number; v_cnt3 number; v_qry_msg varchar2(500);',
'    v_item_seq number; v_item_seq1 number; v_itm_seq2 number; v_itmtyp varchar2(30);',
'    v_tblnm varchar2(100); v_study number; v_pdid number; v_crfid number; p number := 1;  v_itmtyp1 varchar2(200);',
'begin',
'',
'    v_study:=:APP_EDC_STUDY_ID; v_pdid:=:APP_EDC_PATIENT_DIARY_ID; v_crfid:=:P510_CRF_ID;',
'',
'    select count(1) into v_cnt1 from edc_crf_items where crf_id=v_crfid and study_id=v_study;',
'',
'    select item_id,item_seq into v_item_id,v_item_seq from edc_crf_items where crf_id=v_crfid and study_id=v_study',
'    and item_seq = (select min(item_seq) from edc_crf_items where crf_id=v_crfid and study_id=v_study);',
'',
'    for i in 1..v_cnt1 loop',
'',
'        select column_name,item_label,item_type,item_seq into v_colnm,v_item_label,v_itmtyp,v_itm_seq2 from edc_crf_items where item_id=v_item_id and crf_id=v_crfid AND study_id=v_study;',
'',
'        select count(1) into v_cnt from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'');',
'',
'        if v_cnt > 0 then',
'',
'          for j in (select query_id,value1,condition1,query_type,condition2, visit_title,col2,value2,crf_id1 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'')) loop',
'',
'             v_cond1 := '''';',
'',
'              if j.visit_title=''All'' or j.visit_title=:APP_EDC_VISIT_NAME then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                      SELECT COL1||'' ''||condition1,query_msg into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPSI'' THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''||col2||'')'',query_msg into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' then',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1,query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPSI'' then',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''in'',''IN (''||Col2||'')'',''not in'',''NOT IN (''||Col2||'')'',condition1) ||'' '',query_msg into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_'
||'actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.col2 is not null and j.value2 is null and j.value1 is null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg,col2',
'                      into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is not null and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||CON'
||'DITION2 query_condition,query_msg,col2',
'                      into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES',
'                      where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and '
||'qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||',
'                      DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                      into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||',
'                      DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                      into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 que'
||'ry_condition,query_msg,col2',
'                      into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_a'
||'ctin=''Yes'';',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1||'' and ''||COL2||'' ''||',
'                      DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2',
'                      into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||',
'                      DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2',
'                      into v_cond1,v_qry_msg, v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||'' and ''''''||COL2||'''''' ''||',
'                      DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2',
'                      into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||'' and ''||COL2||'' ''||CONDITION2 query_condition, query_msg, col2',
'                      into v_cond1,v_qry_msg, v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''''''''||v_val3||'''''' '' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''''''||v_val3||'''''')'' query_condition, query_msg into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid  and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' ',
'                  and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' ',
'                  and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''||value1||'')''||'' and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' ''||v_val3 query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''||v_val3||'')'' query_condition, query_msg into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') ',
'                      and j.query_type=''CP'' and j.value1 is null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 is not null and j.query_type=''CP'' ',
'                      and j.value1 is not null and j.condition2 in (''is null'',''is not null'') and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and ''''''||v_val3||'''''' ''||'
||'CONDITION2  query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pdid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||'''''' ''||CONDITION2  query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  end if;',
'',
'                  if v_itmtyp != ''RADIO BUTTON'' then',
'                    execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_crfid||',
'                    ''AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||v_colnm||'''''''' into p;',
'                    if j.condition1 not in (''in'',''not in'') then v_val:=upper(apex_application.g_f01(p)); else v_val:=apex_application.g_f01(p); end if;',
'                  elsif v_itmtyp = ''RADIO BUTTON'' then',
'                    execute immediate ''select upper(field_val) from save_radio where field_name = ''''''||v_colnm||'''''' and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'                    '''''' and crf_id = ''||v_crfid||'' and study_id = ''||v_study||'' and PATIENT_DIARY_ID = ''||v_pdid||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||'' and TBL_PK_ID = ''||:P510_CRF_TABLE_PK_VAL into v_val;',
'                  end if;',
'',
'                  if j.query_type=''SPMI'' then',
'                      select item_type into v_itmtyp1 from edc_crf_items where column_name = j.col2 and crf_id = v_crfid and study_id = v_study;',
'                      ',
'                      execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_crfid||',
'                      ''AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||j.col2||'''''''' into n;',
'',
'                      v_val2 := upper(apex_application.g_f01(n));',
'',
'                      if v_val2 is null then v_val2 := null; end if;',
'',
'                  end if;',
'',
'                  if j.query_type=''SPSI'' and j.col2 is null and j.condition1 in (''is null'',''is not null'') then',
'',
'                      v_val := ''''''''||v_val||'''''''';',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1;',
'',
'                      if v_cond1 = 1 and (length(v_msg) < 2500 or length(v_msg) is null) then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'',
'                  elsif v_val is not null  and j.query_type=''SPSI'' then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val := ''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'',
'                  elsif j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val := ''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_colnm,v_val),v_col2,v_val2) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'',
'                  elsif j.value1 is null and j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                      v_val := ''''''''||v_val||'''''''';',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'',
'                  elsif v_val is not null  and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val := ''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_colnm,v_val),v_col2,v_val2) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'',
'                  elsif v_val is not null  and j.query_type=''CP'' then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val := ''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'',
'                  elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                      v_val := ''''''''||v_val||'''''''';',
'                      v_val2 := ''''''''||v_val2||'''''''';',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_colnm,v_val),v_col2,v_val2) into v_cond1;',
'',
'                      if v_cond1 = 1 and (length(v_msg) < 2500 or length(v_msg) is null) then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'',
'                  elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                      v_val := ''''''''||v_val||'''''''';',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_colnm,v_val),v_col2,v_val2) into v_cond1;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'                      ',
'                  elsif v_val is not null  and j.query_type=''SPMI'' and j.condition1 not in (''in'',''not in'') and j.value1 is not null and j.value2 is null then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'                      if v_itmtyp1 in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'',''NUMBER'') THEN v_val2:=''''''''||v_val2||''''''''; end if;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''')'' query_condition',
'                      into v_cond1 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id;',
'',
'                      SELECT COL2||'' ''||CONDITION2 query_condition into v_cond2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id;',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond2,v_col2,v_val2) into v_cond2;',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1;',
'',
'                      if v_cond1=1 and v_cond2 = 1 then v_msg:=v_msg|| v_qry_msg||''<br>''; end if;',
'',
'                  elsif v_val is not null  and j.query_type=''SPMI'' then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val := ''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_col2,v_val2),v_colnm,v_val) into v_cond1;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg := v_msg|| v_qry_msg||''<br>'';',
'                      end if;',
'',
'                  end if;',
'',
'              end if;',
'',
'            end loop;',
'',
'        end if;',
'',
'        if i < v_cnt1 then',
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_item_seq1',
'            from edc_crf_items where crf_id=v_crfid and study_id=v_study',
'            and item_seq = (select nvl(min(item_seq),0) from edc_crf_items where crf_id=v_crfid and item_seq > v_item_seq);',
'            v_item_seq := v_item_seq1;',
'        end if;',
'',
'    end loop;',
'',
'    if v_msg is NULL then v_msg := ''Action Processed''; end if;',
'    :P510_MSG:=v_msg;',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style=color:red>''||v_msg||''<br></span>'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2688613443516063854
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233607432050407199)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(32767);',
'    v_diary_type varchar2(50);',
'    v_old_val number;',
'    v_qry_cnt number;',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_cnt2 number;',
'    v_cnt3 number;',
'    v_next_schedule_id number;',
'    v_next_patient_diary_id number;',
'    v_pk_id number;',
'    v_pk_id1 number;',
'    v_audit_id number;',
'    v_onsques varchar2(20);',
'begin',
'    ',
'    select count(1) into v_qry_cnt',
'    from edc_crf_queries',
'    where qry_status in (''Open'',''Reopened'')',
'    and crf_id = :P510_CRF_ID',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and tbl_pk_id = :P510_CRF_TABLE_PK_VAL;',
'    ',
'    if v_qry_cnt = 0 then',
'    ',
'        select diary_type into v_diary_type',
'        from edc_patient_diary',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'',
'        if :P510_CRF_ID = 22 then',
'            v_old_val := 3;',
'        elsif v_diary_type = ''Electronic'' then',
'            v_old_val := 4;',
'        elsif v_diary_type = ''Paper'' then',
'            v_old_val := 3;',
'        end if;',
'',
'    l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',510,''''SECTION_STATUS'''',''''''||v_old_val||'''''',''''4.5'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'',
'    /*edc_workflow.UPDATE_WORKFLOW_STATUS_DEDC(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_DIARY_ID,:APP_EDC_ROLE_ID,'''',:P510_CRF_ID,:P510_CRF_TABLE_PK_VAL);',
'    COMMIT;*/',
'',
'    l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' SET SECTION_STATUS = 4.5, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'            UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'            WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'            execute immediate l_sql;',
'            commit;',
'            ',
'    end if;',
'    ',
'    --To carry forward symptoms to next schedule',
'    if :APP_EDC_SCHEDULE_NAME LIKE ''%Morning'' and :APP_EDC_SCHEDULE_NAME != ''Day 10 Morning'' then',
'        select schedule_id+2 into v_next_schedule_id',
'        from edc_patient_schedule_params',
'        where upper(schedule_name) = upper(:APP_EDC_SCHEDULE_NAME);',
'    elsif :APP_EDC_SCHEDULE_NAME = ''Day 10 Morning'' then',
'        v_next_schedule_id := 26;        --schedule id of Day 14',
'    elsif :APP_EDC_SCHEDULE_NAME = ''Day 14'' then',
'        v_next_schedule_id := 33;        --schedule id of Day 21',
'    end if;',
'    ',
'    select count(1) into v_cnt    --is next schedule created or not',
'    from edc_patient_diary',
'    where schedule_id = v_next_schedule_id',
'    and patient_profile_id = :APP_PATIENT_PROFILE_ID',
'    and schedule_id in (5,7,9,11,13,15,17,19,21,26,33);',
'    ',
'    if v_cnt > 0 then',
'        ',
'        select patient_diary_id into v_next_patient_diary_id',
'        from edc_patient_diary',
'        where patient_profile_id = :APP_PATIENT_PROFILE_ID',
'        and schedule_id = v_next_schedule_id;',
'        ',
'        if :P510_CRF_ID = 10 then',
'            ',
'            select count(1) into v_cnt1        --are there ongoing records in the current schedule',
'            from edc_crf_onsd661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'            and upper(onsd_status) = ''ONGOING'';',
'            ',
'            if v_cnt1 > 0 then',
'            ',
'                select count(1) into v_cnt3',
'                from edc_crf_ons661',
'                where patient_diary_id = v_next_patient_diary_id;',
'                ',
'                if v_cnt3 = 0 then    --ons not saved in next schedule',
'                ',
'                    SELECT NVL(MAX(ONS661_ID),0) + 1 INTO V_PK_ID FROM EDC_CRF_ONS661;',
'                            ',
'                    INSERT INTO EDC_CRF_ONS661( ONS661_ID, STUDY_ID, PATIENT_DIARY_ID, SECTION_STATUS, ONSQUES, CREATED_BY, CREATED_ON) ',
'                    VALUES(V_PK_ID , 661, v_next_patient_diary_id, 2, ''Yes'', UPPER(:APP_USER_NAME),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''));',
'                    COMMIT;',
'',
'                    select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                    insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                    values(v_audit_id, ''EDC_CRF_ONS661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,509,''ONSQUES'',NULL,''Yes'',''INSERT'',',
'                    UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                    commit;',
'                    ',
'                elsif v_cnt3 > 0 then    --ons already saved in next schedule',
'                ',
'                    select onsques into v_onsques ',
'                    from edc_crf_ons661',
'                    where patient_diary_id = v_next_patient_diary_id;',
'                    ',
'                    if v_onsques = ''No'' then',
'                        ',
'                        update edc_crf_ons661 set onsques = ''Yes'',UPDATED_BY = UPPER(:APP_USER_NAME), UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS'')',
'                        where patient_diary_id = v_next_patient_diary_id;',
'                        ',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONS661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,509,''ONSQUES'',''No'',''Yes'',''UPDATE'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'                    ',
'                    end if;',
'                ',
'                end if;        --end of v_cnt3 = 0',
'                ',
'                for j in (select ONSD_SRNO, ONSDCOM, ONSD_STDT, ONSDSTTM, ONSD_STATUS, ONSD_ENDT, ONSDENDTM from edc_crf_onsd661 where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'                         and upper(onsd_status) = ''ONGOING'' AND ONSD661_ID = :P510_CRF_TABLE_PK_VAL) loop',
'                ',
'                    select count(1) into v_cnt2',
'                    from edc_crf_onsd661',
'                    where patient_diary_id = v_next_patient_diary_id',
'                    and upper(ONSDCOM) = upper(j.ONSDCOM)',
'                    and onsd_status = ''Ongoing'';',
'                    ',
'                    if v_cnt2 = 0 then    --symptom has to be carried forwarded',
'                        ',
'                        select count(1) + 1 into v_pk_id1 from edc_crf_onsd661 where patient_diary_id = v_next_patient_diary_id;',
'                        ',
'                        SELECT NVL(MAX(ONSD661_ID),0) + 1 INTO V_PK_ID FROM EDC_CRF_ONSD661;',
'',
'                        INSERT INTO EDC_CRF_ONSD661( ONSD661_ID, STUDY_ID, PATIENT_DIARY_ID, SECTION_STATUS, ONSD_SRNO, ONSDCOM ,ONSD_STDT, ONSDSTTM, ONSD_STATUS, ONSD_ENDT,ONSDENDTM, CREATED_BY, CREATED_ON)',
'                        VALUES(V_PK_ID , 661, v_next_patient_diary_id, 2, V_PK_ID1, J.ONSDCOM , J.ONSD_STDT, J.ONSDSTTM, J.ONSD_STATUS, J.ONSD_ENDT, J.ONSDENDTM,',
'                              UPPER(:APP_USER_NAME),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''));',
'',
'                        COMMIT;',
'                        ',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'            ',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONSD661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,510,''SECTION_STATUS'',NULL,2,''INSERT'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONSD661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,510,''ONSD_SRNO'',NULL,V_PK_ID1,''INSERT'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONSD661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,510,''ONSDCOM'',NULL,J.ONSDCOM,''INSERT'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONSD661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,510,''ONSD_STDT'',NULL,TO_CHAR(J.ONSD_STDT,''DD-MON-YYYY''),''INSERT'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONSD661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,510,''ONSDSTTM'',NULL,TO_CHAR(J.ONSDSTTM,''HH24:MI''),''INSERT'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONSD661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,510,''ONSD_STATUS'',NULL,J.ONSD_STATUS,''INSERT'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONSD661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,510,''ONSD_ENDT'',NULL,TO_CHAR(J.ONSD_ENDT,''DD-MON-YYYY''),''INSERT'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'',
'                        select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'                        insert into AUDIT_TRAIL(AUDIT_LOG_ID, TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(v_audit_id, ''EDC_CRF_ONSD661'',661,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,v_next_patient_diary_id,510,''ONSDENDTM'',NULL,TO_CHAR(J.ONSDENDTM,''HH24:MI''),''INSERT'',',
'                        UPPER(:APP_USER),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS''),NULL,V_PK_ID);',
'                        commit;',
'                        ',
'                    end if;        --end of v_cnt2 = 0 ',
'                    ',
'                end loop;        --end of for loop',
'                ',
'            end if;        --end of if v_cnt1 > 0 then',
'            ',
'        end if;        --end of :P510_CRF_ID = 10',
'        ',
'    end if;        --if v_cnt > 0 then',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error while Submitting for review.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5233585564814407151)
,p_process_success_message=>'Submitted for Review'
,p_internal_uid=>4132656663908903106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3787541110121126871)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRA_REVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(32767);',
'begin',
'',
'l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'        values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'        '',510,''''SECTION_STATUS'''',''''4'''',''''6'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'        execute immediate l_sql;',
'        commit;',
'',
'/*edc_workflow.UPDATE_WORKFLOW_STATUS_DEDC(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_DIARY_ID,:APP_EDC_ROLE_ID,'''',:P510_CRF_ID,:P510_CRF_TABLE_PK_VAL);',
'COMMIT;*/',
'',
'l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' SET SECTION_STATUS = 6, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'        UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'        WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error while Submitting for review.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5233585939936407151)
,p_process_success_message=>'Panel Submitted for review.'
,p_internal_uid=>2686590341979622778
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233608231706407200)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_REVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(32767);',
'begin',
'',
'l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_VISIT_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'        values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:P37_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_VISIT_ID||',
'        '',510,''''SECTION_STATUS'''',''||:P510_SECTION_STATUS||'',''''8'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'        execute immediate l_sql;',
'        commit;',
'        ',
'--edc_workflow.UPDATE_WORKFLOW_STATUS_DEDC(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''',:P510_CRF_ID,:P510_CRF_TABLE_PK_VAL);',
'--COMMIT;',
'',
'l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' SET SECTION_STATUS = 8, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'        UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'        WHERE PATIENT_VISIT_ID = ''||:APP_EDC_PATIENT_VISIT_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error while Submitting for monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DM Reviewed.',
''))
,p_internal_uid=>4132657463564903107
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233603483769407194)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Parent Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_par_crfid number;',
'    v_chld_sec_status number;',
'    v_par_table varchar2(100);',
'    v_par_sec_status number;',
'    v_qry_count number;',
'    v_pk_col varchar2(30);',
'    v_pk_val number;',
'    v_max_audit_log_id number;',
'    v_ex_new_value number;',
'    l_sql varchar2(2000);',
'begin',
'    ',
'    execute immediate ''select count(1) from ''||:P510_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;',
'    ',
'    if v_cnt > 0 then',
'        execute immediate ''select min(section_status) from ''||:P510_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_chld_sec_status;',
'    end if;',
'    ',
'    select crf_id,crf_table_name,crf_table_pk_col into v_par_crfid, v_par_table,v_pk_col',
'    from edc_crf_master',
'    where crf_id = (select parent_page from edc_crf_master where crf_id = :P510_CRF_ID and study_id = :APP_EDC_STUDY_ID and crf_table_name = :P510_CRF_TABLE_NAME)',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    execute immediate ''select section_status from ''||v_par_table||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_par_sec_status;',
'    ',
'    execute immediate ''select count(1) from edc_crf_queries where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND CRF_ID = ''||v_par_crfid||'' and UPPER(qry_status) in (''''OPEN'''',''''REOPENED'''')'' into v_qry_count;',
'    ',
'    if v_qry_count > 0 then        --query exists',
'        ',
'        execute immediate ''update ''||v_par_table||'' set section_status = 2, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'        UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'        commit;',
'        ',
'        execute immediate ''select ''||v_pk_col||'' from ''||v_par_table||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_pk_val;',
'        ',
'        execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||v_par_table||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||v_pk_val into v_max_audit_log_id;',
'        commit;',
'        ',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'        ',
'        IF v_ex_new_value != 2 THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||v_par_table||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''2'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_val||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF; ',
'        ',
'    elsif v_qry_count = 0 then',
'    ',
'        execute immediate ''update ''||v_par_table||'' set section_status = ''||v_chld_sec_status||'', UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'        UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')  where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'        commit;',
'        ',
'        execute immediate ''select ''||v_pk_col||'' from ''||v_par_table||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_pk_val;',
'        ',
'        execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||v_par_table||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||v_pk_val into v_max_audit_log_id;',
'        commit;',
'        ',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'        ',
'        IF v_ex_new_value != v_chld_sec_status THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||v_par_table||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''''||v_chld_sec_status||'''''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_val||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF; ',
'        ',
'    end if;',
'    ',
'    ',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132652715627903101
,p_process_comment=>'''SAVE'',''SUBMIT_FOR_CRA_REVIEW'',''CRA_REVIEW'',''DM_REVIEW'',''DM_LOCKED'',''DM_UNLOCKED'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233608663203407201)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_LOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(32767);',
'begin',
'',
'l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_VISIT_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'        values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:P37_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_VISIT_ID||',
'        '',510,''''SECTION_STATUS'''',''''9'''',''''10'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'        execute immediate l_sql;',
'        commit;',
'        ',
'--edc_workflow.UPDATE_WORKFLOW_STATUS_DEDC(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''',:P510_CRF_ID,:P510_CRF_TABLE_PK_VAL);',
'--COMMIT;',
'',
'l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' SET SECTION_STATUS = 10, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'        UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'        WHERE PATIENT_VISIT_ID = ''||:APP_EDC_PATIENT_VISIT_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error while Submitting for monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Panel Locked.',
''))
,p_internal_uid=>4132657895061903108
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233609019082407201)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_UNLOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(32767);',
'begin',
'',
'l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_VISIT_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'        values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:P37_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_VISIT_ID||',
'        '',510,''''SECTION_STATUS'''',''''10'''',''''11'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'        execute immediate l_sql;',
'        commit;',
'        ',
'--edc_workflow.UPDATE_WORKFLOW_STATUS_DEDC(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,''0'',:P510_CRF_ID,:P510_CRF_TABLE_PK_VAL);',
'--COMMIT;',
'',
'l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' SET SECTION_STATUS = 2, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'        UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'        WHERE PATIENT_VISIT_ID = ''||:APP_EDC_PATIENT_VISIT_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error while Submitting for monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Panel Unlocked.',
''))
,p_internal_uid=>4132658250940903108
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,''O'');',
'',
'',
'end;',
'',
'/',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233606644127407199)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Schedule Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'EDC_WORKFLOW.update_schedule_status_web(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132655875985903106
,p_process_comment=>'''SAVE'',''SUBMIT_FOR_CRA_REVIEW'',''CRA_REVIEW'',''DM_REVIEW'',''DM_LOCKED'',''DM_UNLOCKED'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233607037338407199)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4132656269196903106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233611047933407206)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set CRF Page Name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_pkid number;',
'begin',
'',
'    select crf_name,crf_short_name,crf_table_name, crf_Table_pk_col',
'    into :P510_CRF_PAGE_NAME, :P510_CRF_SHORT_NAME, :P510_CRF_TABLE_NAME, :P510_CRF_TABLE_PK_COL',
'    from edc_crf_master',
'    where crf_id = :P510_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID;        ',
'    ',
'    /*execute immediate ''select count(1) from ''||:P510_CRF_TABLE_NAME||'' where PATIENT_VISIT_ID = ''||:APP_EDC_PATIENT_VISIT_ID into v_cnt;',
'    ',
'    if v_cnt > 0 and :P510_CRF_TABLE_PK_VAL != 0 then',
'        execute immediate ''select ''||:P510_CRF_TABLE_PK_COL||'' from ''||:P510_CRF_TABLE_NAME||'' where patient_visit_id = ''||:APP_EDC_PATIENT_VISIT_ID',
'        into :P510_CRF_TABLE_PK_VAL;',
'    end if;*/',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132660279791903113
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233609443770407201)
,p_process_sequence=>120
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRF Audit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    IF :P510_CRF_TABLE_PK_VAL = 0 THEN',
'        ',
'        :P510_COUNT := 0;',
'        ',
'        execute immediate ''SELECT COUNT(1)+1 FROM EDC_CRF_''||:P510_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'        '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'        '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID INTO :P510_SEQ_NO;',
'    ',
'    ELSIF :P510_CRF_TABLE_PK_VAL != 0 THEN',
'    ',
'        execute immediate ''SELECT COUNT(1) FROM EDC_CRF_''||:P510_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'        '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'        '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID INTO :P510_COUNT;',
'        COMMIT;',
'        ',
'        /*execute immediate ''select SECTION_STATUS, CREATED_BY, TO_CHAR(CREATED_ON,''''DD-MON-YYYY HH24:MI:SS''''), UPDATED_BY, ',
'        TO_CHAR(UPDATED_ON,''''DD-MON-YYYY HH24:MI:SS'''') FROM EDC_CRF_''||:P510_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'        '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'        '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'        '' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL',
'        INTO :P510_SECTION_STATUS, :P510_CREATED_BY, :P510_CREATED_ON, :P510_UPDATED_BY, :P510_UPDATED_ON;*/',
'        ',
'        execute immediate ''select SECTION_STATUS, CREATED_BY, TO_CHAR(CREATED_ON,''''dd-mm-rrrr hh24:mi:ss''''), UPDATED_BY, ',
'        TO_CHAR(UPDATED_ON,''''dd-mm-rrrr hh24:mi:ss'''') FROM EDC_CRF_''||:P510_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'        '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'        '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID|| ',
'        '' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL',
'        INTO :P510_SECTION_STATUS, :P510_CREATED_BY, :P510_CREATED_ON, :P510_UPDATED_BY, :P510_UPDATED_ON;',
'    ',
'    END IF;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132658675628903108
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233611905281407208)
,p_process_sequence=>130
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set P510_ENDIS_SCRIPT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'v_cnt1 number;',
'v_cnt3 number;',
'v_script1 varchar2(32000) := '''';        --for enable disable items',
'v_item_id number;',
'v_item_value varchar2(100);',
'v_item_endis varchar2(20);',
'v_item_type varchar2(100);',
'v_item2_type varchar2(100);',
'v_idx number := 4;',
'v_col_name varchar2(100);',
'',
'begin',
'    ',
'    for i in (',
'        select *',
'        from V_EDC_CRF_ITEMS',
'        where CRF_ID = :P510_CRF_ID',
'    )',
'    LOOP',
'        ',
'            --v_script1 := '''';',
'            ',
'            select count(1) into v_cnt',
'            from EDC_CRF_ITEMS_ENDIS',
'            WHERE CRF_SHORT_NAME = :P510_CRF_SHORT_NAME',
'            AND CRF_ID = :P510_CRF_ID',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND ITEM_ID = i.item_id',
'            order by ITEM_TOBE_ENDIS;',
'            ',
'            select item_type into v_item_type',
'            from edc_crf_items',
'            where crf_id = :P510_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_id = i.item_id;',
'            ',
'            if v_cnt > 0 then ',
'',
'                for m in ( select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS',
'                from EDC_CRF_ITEMS_ENDIS',
'                WHERE CRF_SHORT_NAME = :P510_CRF_SHORT_NAME',
'                AND CRF_ID = :P510_CRF_ID',
'                AND STUDY_ID = :APP_EDC_STUDY_ID',
'                AND ITEM_ID = i.item_id',
'                order by ITEM_TOBE_ENDIS) loop',
'                ',
'                  v_cnt3 := regexp_count(m.item_tobe_endis,'','');',
'',
'                  for j in (select regexp_substr(m.item_tobe_endis,''[^,]+'', 1, level) value1 from dual',
'                  connect by regexp_substr(m.item_tobe_endis, ''[^,]+'', 1, level) is not null) loop',
'                      ',
'                    select item_type,column_name into v_item2_type,v_col_name',
'                    from edc_crf_items',
'                    where crf_id = :P510_CRF_ID',
'                    and study_id = :APP_EDC_STUDY_ID',
'                    and item_id = j.value1;',
'                      ',
'                    if v_item_type = ''RADIO BUTTON'' then',
'                        v_script1 := v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||v_idx||'''''',''''''||v_col_name||'''''');''; ',
'                    else',
'                        v_script1 := v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||0||'''''',''''''||v_col_name||'''''');''; ',
'                    end if;',
'                    ',
'                    --v_script1 := v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''');''; ',
'                      ',
'                  end loop;',
'                    ',
'                end loop;',
'                --v_idx := v_idx + 1;',
'',
'            end if;',
'            ',
'            if v_item_type =''RADIO BUTTON'' then',
'              v_idx := v_idx + 1;',
'            end if;',
'',
'    END LOOP;',
'',
'    select v_script1 into :P510_ENDIS_SCRIPT from dual;',
'   ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132661137139903115
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233612715374407209)
,p_process_sequence=>180
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set CRF_ID = null for common forms'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    :P818_CRF_ID := NULL;',
'    :P819_CRF_ID := NULL;',
'    :P820_CRF_ID := NULL;',
'    :P100_CRF_ID := NULL;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132661947232903116
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233605499514407196)
,p_process_sequence=>190
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Age'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'',
'    select count(1) into v_cnt from edc_crf_demog1',
'    where patient_visit_id = (select patient_visit_id from edc_patient_visit',
'                             where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'                             and param_id = 312)',
'    and age is not null;',
'    ',
'    if v_cnt = 1 then',
'    ',
'        select age into :P510_AGE from edc_crf_demog1',
'        where patient_visit_id = (select patient_visit_id from edc_patient_visit',
'                             where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'                             and param_id = 312);',
'    ',
'    end if;',
'    ',
'end;    ',
'                                 '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4132654731372903103
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233605059678407196)
,p_process_sequence=>200
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P510_QRY_COUNT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    if :APP_EDC_ROLE_ID = 16 THEN',
'    ',
'        SELECT COUNT(*) INTO :P510_QRY_COUNT',
'        FROM edc_crf_queries',
'        where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        AND PAGE_ID = :APP_PAGE_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID',
'        AND CRF_ID = :P510_CRF_ID',
'        AND QRY_STATUS in (''Open'',''Reopened'')',
'        --AND ROLE_ID = :APP_EDC_ROLE_ID',
'        AND TBL_PK_ID = :P510_CRF_TABLE_PK_VAL;',
'        ',
'    elsif :APP_EDC_ROLE_ID IN (27,17) THEN',
'        ',
'        SELECT COUNT(*) INTO :P510_QRY_COUNT',
'        FROM edc_crf_queries',
'        where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        AND PAGE_ID = :APP_PAGE_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID',
'        AND CRF_ID = :P510_CRF_ID',
'        AND QRY_STATUS in (''Responded'')',
'        AND (ROLE_ID = :APP_EDC_ROLE_ID OR ROLE_ID IS NULL)',
'        AND TBL_PK_ID = :P510_CRF_TABLE_PK_VAL;',
'        ',
'    end if;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132654291536903103
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233604268069407195)
,p_process_sequence=>210
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Values to SAVE_RADIO on page load'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_pk_val number;',
'    v_cnt1 number;',
'    v_srid number;',
'    v_user_id number;    ',
'    v_field_val varchar2(500);',
'begin',
'    select count(1) into v_cnt',
'    from edc_crf_items',
'    where crf_id = :P510_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID',
'    and item_type = ''RADIO BUTTON'';',
'    ',
'    if v_cnt > 0 AND :P510_CRF_TABLE_PK_VAL = 0 then',
'        ',
'        execute immediate ''select nvl(max(''||:P510_CRF_TABLE_PK_COL||''),0)+1 from ''||:P510_CRF_TABLE_NAME into v_pk_val;',
'        ',
'        for i in (select column_name from edc_crf_items',
'                 where crf_id = :P510_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                 ',
'            delete from SAVE_RADIO',
'            WHERE UPPER(FIELD_NAME) = UPPER(i.column_name)',
'            AND CRF_ID = :P510_CRF_ID',
'            AND USER_ID = :APP_EDC_USER_ID',
'            AND USER_NAME = :APP_USER_NAME',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND TBL_PK_ID = v_pk_val',
'            AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'            AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID;',
'',
'            commit;',
'                 ',
'            insert into save_radio(field_name, field_val,user_id, user_name, crf_id, study_id,PATIENT_DIARY_ID, patient_profile_id,tbl_pk_id) ',
'            values(UPPER(i.column_name), null, :APP_EDC_USER_ID, :APP_USER_NAME, :P510_CRF_ID, :APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID, :APP_PATIENT_PROFILE_ID,v_pk_val);',
'            commit;',
'',
'        end loop;',
'        ',
'    elsif v_cnt > 0 and :P510_CRF_TABLE_PK_VAL != 0 THEN',
'    ',
'        select count(1) into v_cnt1 from SAVE_RADIO',
'        where user_name = :APP_USER_NAME',
'        and user_id = :APP_EDC_USER_ID',
'        and crf_id = :P510_CRF_ID',
'        and study_id = :APP_EDC_STUDY_ID',
'        AND TBL_PK_ID = :P510_CRF_TABLE_PK_VAL',
'        and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        and patient_profile_id = :APP_PATIENT_PROFILE_ID;',
'        ',
'        if v_cnt1 = 0 then        --insert values from crf table in save_Radio table',
'            ',
'            for i in (select column_name from edc_crf_items',
'                 where crf_id = :P510_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                ',
'                execute immediate ''select ''||i.column_name||'' from ''||:P510_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_field_val;',
'                 ',
'                insert into save_radio(field_name, field_val,user_id, user_name, crf_id, study_id,PATIENT_DIARY_ID, patient_profile_id,tbl_pk_id) ',
'                values(UPPER(i.column_name), v_field_val, :APP_EDC_USER_ID, :APP_USER_NAME, :P510_CRF_ID, :APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID, :APP_PATIENT_PROFILE_ID,:P510_CRF_TABLE_PK_VAL);',
'                commit;',
'',
'            end loop;',
'            ',
'        elsif v_cnt1 > 0 then          --update values from crf table in save_Radio table',
'        ',
'            for i in (select column_name from edc_crf_items',
'                 where crf_id = :P510_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                 ',
'                execute immediate ''select ''||i.column_name||'' from ''||:P510_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL ',
'                into v_field_val;',
'                ',
'                update save_radio set field_val = v_field_val where UPPER(field_name) = UPPER(i.column_name)',
'                and user_name = :APP_USER_NAME',
'                and user_id = :APP_EDC_USER_ID',
'                and crf_id = :P510_CRF_ID',
'                and study_id = :APP_EDC_STUDY_ID',
'                AND TBL_PK_ID = :P510_CRF_TABLE_PK_VAL',
'                and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'                and patient_profile_id = :APP_PATIENT_PROFILE_ID;',
'                ',
'                commit;',
'',
'            end loop;',
'            ',
'        end if;',
'',
'    end if;',
'    ',
'end;    ',
'    ',
'    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132653499927903102
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233603831347407194)
,p_process_sequence=>190
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_RADIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    IF :P510_CRF_TABLE_PK_VAL = 0 THEN',
'        execute immediate ''select nvl(max(''||:P510_CRF_TABLE_PK_COL||''),0)+1 from ''||:P510_CRF_TABLE_NAME into :P510_CRF_TABLE_PK_VAL;',
'    END IF;',
'    ',
'    delete from SAVE_RADIO',
'    WHERE FIELD_NAME = :P510_FIELD_NAME',
'    AND CRF_ID = :P510_CRF_ID',
'    AND USER_ID = :APP_EDC_USER_ID',
'    AND USER_NAME = :APP_USER_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID',
'    AND TBL_PK_ID = :P510_CRF_TABLE_PK_VAL',
'    AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID;',
'    ',
'    commit;',
'    ',
'    insert into SAVE_RADIO(FIELD_NAME, FIELD_VAL, CRF_ID, USER_ID, USER_NAME, STUDY_ID, PATIENT_DIARY_ID, PATIENT_PROFILE_ID,TBL_PK_ID) ',
'    values (:P510_FIELD_NAME, :P510_FIELD_VAL, :P510_CRF_ID, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_STUDY_ID, :APP_EDC_PATIENT_DIARY_ID, :APP_PATIENT_PROFILE_ID,:P510_CRF_TABLE_PK_VAL);',
'    commit;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132653063205903101
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233604706927407195)
,p_process_sequence=>200
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_RADIO_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    IF :P510_CRF_TABLE_PK_VAL = 0 THEN',
'        execute immediate ''select nvl(max(''||:P510_CRF_TABLE_PK_COL||''),0)+1 from ''||:P510_CRF_TABLE_NAME into :P510_CRF_TABLE_PK_VAL;',
'    END IF;',
'    ',
'    delete from SAVE_RADIO',
'    WHERE FIELD_NAME = :P510_FIELD_NAME',
'    AND CRF_ID = :P510_CRF_ID',
'    AND USER_ID = :APP_EDC_USER_ID',
'    AND USER_NAME = :APP_USER_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID',
'    AND TBL_PK_ID = :P819_CRF_TABLE_PK_VAL',
'    AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID;',
'    ',
'    commit;',
'    ',
'    insert into SAVE_RADIO(FIELD_NAME, FIELD_VAL, CRF_ID, USER_ID, USER_NAME, STUDY_ID, PATIENT_DIARY_ID, PATIENT_PROFILE_ID,TBL_PK_ID) ',
'    values (:P510_FIELD_NAME, null, :P510_CRF_ID, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_STUDY_ID, :APP_EDC_PATIENT_DIARY_ID, :APP_PATIENT_PROFILE_ID,:P510_CRF_TABLE_PK_VAL);',
'    commit;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132653938785903102
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233610634745407205)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process to save values to table and audit trail_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(4000);',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_cnt2 number;',
'    v_pk_col varchar2(20);',
'    v_crf_table_name varchar2(30);',
'    v_sql varchar2(4000);',
'    v_item_id number;',
'    v_column_name varchar2(50);',
'    v_value varchar2(400);',
'    v_value1 varchar2(400);',
'    v_ex_new_value varchar2(400);',
'    v_item_type varchar2(30);',
'    v_max_audit_log_id number;',
'    v_db_value varchar2(400);',
'    v_item_seq number;',
'    v_item_seq1 number;',
'    v_item_seq2 number;',
'    v_idx number := 4;',
'    j number := 1;',
'',
'begin',
'',
'    /*execute immediate ''select count(1) from EDC_CRF_''||:P510_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'    '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;*/',
'    ',
'    select count(1) into v_cnt1',
'    from edc_crf_items',
'    where crf_id = :P510_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    --if v_cnt = 0 then     --insert data in the table',
'    if :P510_CRF_TABLE_PK_VAL = 0 then    --insert data in table',
'    ',
'      :P510_ACTION := ''INSERT'';',
'      ',
'      execute immediate ''select nvl(max(''||:P510_CRF_TABLE_PK_COL||''),0)+1 from ''||:P510_CRF_TABLE_NAME into :P510_CRF_TABLE_PK_VAL;',
'      commit;',
'    ',
'      select crf_table_pk_col,crf_table_name into v_pk_col, v_crf_table_name ',
'      from EDC_CRF_MASTER',
'      where crf_id = :P510_CRF_ID',
'      and crf_short_name = :P510_CRF_SHORT_NAME',
'      and study_id = :APP_EDC_STUDY_ID;',
'      ',
'      select item_id,item_seq into v_item_id,v_item_seq',
'      from edc_crf_items',
'      where crf_id = :P510_CRF_ID',
'      and study_id = :APP_EDC_STUDY_ID',
'      and item_seq = (select min(item_seq) from edc_crf_items where crf_id = :P510_CRF_ID',
'                      and study_id = :APP_EDC_STUDY_ID);',
'      ',
'      v_sql := ''insert into ''||v_crf_table_name||'' (''||v_pk_col||'',STUDY_ID,PATIENT_DIARY_ID,SECTION_STATUS, CREATED_BY, CREATED_ON)',
'      VALUES(''||:P510_CRF_TABLE_PK_VAL||'',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||'',''||:P510_SECTION_STATUS||'',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''))'';',
'      ',
'      execute immediate v_sql;',
'      commit;',
'                ',
'      --for i in 1..apex_application.g_f01.count loop',
'      for i in 1..v_cnt1 loop',
'                ',
'        select column_name,item_type,item_seq into v_column_name,v_item_type,v_item_seq2',
'        from edc_crf_items',
'        where item_id = v_item_id',
'        and crf_id = :P510_CRF_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'                   ',
'        if v_item_type != ''RADIO BUTTON'' then',
'            v_value := apex_application.g_f01(j);',
'            --v_value := apex_application.g_f01.count;',
'            j := j + 1;',
'        elsif v_item_type = ''RADIO BUTTON'' then',
'            execute immediate ''select field_val from save_radio where field_name = ''''''||v_column_name||'''''' and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'            '''''' and crf_id = ''||:P510_CRF_ID||'' and study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||'' and TBL_PK_ID = ''||:P510_CRF_TABLE_PK_VAL into v_valu'
||'e;',
'            ',
'            select count(1) into v_cnt2',
'            from edc_crf_items',
'            where crf_id = :P510_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and column_name = v_column_name',
'            and item_seq < v_item_seq2;',
'            ',
'            if v_cnt2 != 0 then',
'                j := i - 1;',
'            end if;',
'            ',
'        end if;            ',
'                    ',
'        if v_item_type = ''TIME'' and v_value is not null then                    ',
'            l_sql := ''update ''|| v_crf_table_name||'' set ''||v_column_name||'' = TO_DATE(SYSDATE||''''''||'' ''||v_value||'''''',''''DD-MM-YY HH24:MI'''') where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABL'
||'E_PK_VAL; ',
'            execute immediate l_sql;',
'            commit;',
'        elsif v_item_type != ''LABEL'' then            ',
'            l_sql := ''update ''|| v_crf_table_name||'' set ''||v_column_name||'' = ''''''||v_value||'''''' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL; ',
'            execute immediate l_sql;',
'            commit;',
'        end if;            ',
'        ',
'        if v_item_type != ''LABEL'' then',
'        ',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',510,''''''||v_column_name||'''''',NULL,''''''||v_value||'''''',''''''||:P510_ACTION||'''''',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''),NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'            ',
'        end if;',
'                    ',
'        if i < v_cnt1 then',
'        ',
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_item_seq1',
'            from edc_crf_items',
'            where crf_id = :P510_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_seq = (select nvl(min(item_seq),0) from edc_crf_items',
'                            where crf_id = :P510_CRF_ID',
'                            and study_id = :APP_EDC_STUDY_ID',
'                            and item_seq > v_item_seq);',
'',
'            v_item_seq := v_item_seq1;',
'            ',
'        end if;',
'                    ',
'      end loop;',
'    ',
'    --elsif v_cnt = 1 then            --update data in the table',
'    elsif :P510_CRF_TABLE_PK_VAL != 0 then    --update data in table',
'    ',
'      :P510_ACTION := ''UPDATE'';',
'        ',
'      /*execute immediate ''select ''||:P510_CRF_TABLE_PK_COL||'' from ''||:P510_CRF_TABLE_NAME||',
'      '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into :P510_CRF_TABLE_PK_VAL;',
'      commit;*/',
'    ',
'      select crf_table_pk_col,crf_table_name into v_pk_col, v_crf_table_name ',
'      from EDC_CRF_MASTER',
'      where crf_id = :P510_CRF_ID',
'      and crf_short_name = :P510_CRF_SHORT_NAME',
'      and study_id = :APP_EDC_STUDY_ID;',
'      ',
'      select item_id,item_seq into v_item_id,v_item_seq',
'      from edc_crf_items',
'      where crf_id = :P510_CRF_ID',
'      and study_id = :APP_EDC_STUDY_ID',
'      and item_seq = (select min(item_seq) from edc_crf_items where crf_id = :P510_CRF_ID',
'                      and study_id = :APP_EDC_STUDY_ID);',
'                ',
'      --for i in 1..apex_application.g_f01.count loop',
'      for i in 1..v_cnt1 loop',
'',
'        select column_name,item_type,item_seq into v_column_name,v_item_type,v_item_seq2',
'        from edc_crf_items',
'        where item_id = v_item_id',
'        and crf_id = :P510_CRF_ID',
'        and study_id = :APP_EDC_STUDY_ID;',
'               ',
'        /*if v_item_type != ''LABEL'' then           ',
'            execute immediate ''select ''||v_column_name||'' from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_db_value;',
'        ',
'            v_value := apex_application.g_f01(i);        ',
'            v_value1 := apex_application.g_f03(i);',
'        end if;            */',
'        ',
'        if v_item_type != ''RADIO BUTTON'' then',
'            if v_item_type != ''TIME'' then',
'                execute immediate ''select ''||v_column_name||'' from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL into v_db_value;',
'            else',
'                execute immediate ''select to_char(''||v_column_name||'',''''HH24:MI'''') from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL into v_db_value;',
'            end if;                ',
'        ',
'            v_value := apex_application.g_f01(j);',
'            v_value1 := apex_application.g_f03(i);',
'            j := j + 1;',
'        elsif v_item_type = ''RADIO BUTTON'' then',
'            ',
'            execute immediate ''select ''||v_column_name||'' from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL into v_db_value;',
'        ',
'             execute immediate ''select field_val from save_radio where field_name = ''''''||v_column_name||'''''' and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'            '''''' and crf_id = ''||:P510_CRF_ID||'' and study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||'' and TBL_PK_ID = ''||:P510_CRF_TABLE_PK_VAL into v_valu'
||'e;',
'            ',
'            v_value1 := apex_application.g_f03(i);',
'            ',
'            select count(1) into v_cnt2',
'            from edc_crf_items',
'            where crf_id = :P510_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and column_name = v_column_name',
'            and item_seq < v_item_seq2;',
'            ',
'            if v_cnt2 != 0 then',
'                j := i - 1;',
'            end if;                ',
'            ',
'        end if;            ',
'        ',
'        if v_item_type = ''TIME'' and v_value is not null then                    ',
'            l_sql := ''update ''|| v_crf_table_name||'' set ''||v_column_name||'' = TO_DATE(SYSDATE||''''''||'' ''||v_value||'''''',''''DD-MM-YY HH24:MI'''') where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABL'
||'E_PK_VAL; ',
'            execute immediate l_sql; ',
'            commit;',
'        elsif v_item_type != ''LABEL'' then     ',
'            l_sql := ''update ''|| v_crf_table_name||'' set ''||v_column_name||'' = ''''''||v_value||'''''' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL; ',
'            execute immediate l_sql; ',
'            commit;',
'        end if;   ',
'',
'        if v_item_type != ''LABEL'' then',
'        ',
'            if nvl(v_db_value,0) != nvl(v_value,0) then',
'',
'                execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                        where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                        ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                        ''and column_name = ''''''||v_column_name||''''''and table_name = ''''''||:P510_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                        ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                        ''and table_pk_value = ''||:P510_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'                commit;      ',
'',
'                if v_max_audit_log_id = 0 then',
'                    v_ex_new_value := null;',
'                else',
'                    execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'                    commit;  ',
'                end if;  ',
'',
'                l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                '',510,''''''||v_column_name||'''''',''''''||v_ex_new_value||'''''',''''''||v_value||'''''',''''''||:P510_ACTION||'''''',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''),''''''||v_value1||'''''','
||'''||:P510_CRF_TABLE_PK_VAL||'')'';',
'                execute immediate l_sql;',
'                commit;',
'',
'            end if;',
'',
'        end if;       ',
'        ',
'        if i < v_cnt1 then',
'        ',
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_item_seq1',
'            from edc_crf_items',
'            where crf_id = :P510_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_seq = (select nvl(min(item_seq),0) from edc_crf_items',
'                            where crf_id = :P510_CRF_ID',
'                            and study_id = :APP_EDC_STUDY_ID',
'                            and item_seq > v_item_seq);',
'',
'            v_item_seq := v_item_seq1;',
'            ',
'        end if;',
'                    ',
'      end loop; ',
'      ',
'      l_sql := ''update ''|| v_crf_table_name||'' set UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID|'
||'|'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL; ',
'                    ',
'      execute immediate l_sql;',
'      commit;',
'    ',
'    end if;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4132659866603903112
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789564196359567946)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process to save queries_SPSI_SPMI_CP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(10000); v_cnt number; v_cnt1 number; v_cnt2 number; v_cnt3 number; v_cnt4 number;',
'    v_pk_col varchar2(200); v_tblnm varchar2(300); v_item_id number; v_col varchar2(500);  v_itmtyp1 varchar2(20);  v_con2 varchar2(2000); v_ppid number;',
'    v_val varchar2(400); v_val1 varchar2(400); v_val2 varchar2(400); v_val3 varchar2(400);m number; n number; v_pkval number; v_con1 varchar2(2000); v_qmsg varchar2(20000);',
'    v_item_seq number; v_item_seq1 number; v_item_seq2 number; v_itmtyp varchar2(300); v_col2 varchar2(500);v_stdy number; v_csn varchar2(20); v_cid number; v_pdid number; p number:=1;',
'begin',
'',
'    v_stdy:=:APP_EDC_STUDY_ID;  v_csn:=:P510_CRF_SHORT_NAME;  v_cid:=:P510_CRF_ID;  v_pdid:=:APP_EDC_PATIENT_DIARY_ID;  v_ppid := :APP_PATIENT_PROFILE_ID;  v_pkval := :P510_CRF_TABLE_PK_VAL;',
'',
'    --execute immediate ''select count(1) from EDC_CRF_''||v_csn||v_stdy||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt;',
'',
'    select count(1) into v_cnt2 from edc_crf_items where crf_id=v_cid and study_id=v_stdy;',
'',
'    l_sql:=''update edc_crf_queries set qry_status=''''Closed'''' where study_id=''||v_stdy||''and PATIENT_DIARY_ID=''||v_pdid||''and patient_profile_id=''||v_ppid||',
'             ''and page_id=510 and qry_status=''''Open'''' and auto_flag=''''A'''' and crf_id=''||v_cid||'' and crf_short_name=''''''||v_csn||'''''' and tbl_pk_id = ''||v_pkval;',
'    execute immediate l_sql; commit;',
'',
'    select crf_table_pk_col,crf_table_name into v_pk_col,v_tblnm from EDC_CRF_MASTER where crf_id=v_cid and crf_short_name=v_csn and study_id=v_stdy;',
'',
'    select item_id,item_seq into v_item_id,v_item_seq from edc_crf_items where crf_id=v_cid and item_seq=(select min(item_seq) from edc_crf_items where crf_id=v_cid and study_id=v_stdy);',
'',
'    for i in 1..v_cnt2 loop',
'',
'        select column_name,item_type,item_seq into v_col,v_itmtyp,v_item_seq2 from edc_crf_items where item_id=v_item_id and crf_id=v_cid AND study_id=v_stdy;',
'',
'        select count(1) into v_cnt1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'');',
'',
'        if v_cnt1 > 0 then',
'',
'          for j in (select query_id,col1,value1,condition1,query_type,condition2, visit_title,col2,value2,crf_id1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'')) loop',
'          v_con1:='''';',
'',
'            if j.visit_title=''All'' or j.visit_title=:APP_EDC_VISIT_NAME then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                  SELECT COL1||'' ''||condition1,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPSI'' THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1||''(''||col2||'')'',query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' then',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPSI'' then',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''in'',''IN (''||Col2||'')'',''not in'',''NOT IN (''||Col2||'')'',condition1) ||'' '',query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.col2 is not null and j.value2 is null and j.value1 is null THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg,col2',
'                  into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is not null and j.value2 is null THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||CONDITI'
||'ON2 query_condition,query_msg,col2',
'                  into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                  into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                  into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 query_c'
||'ondition,query_msg,col2',
'                  into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1||'' and ''||COL2||'' ''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2',
'                  into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2',
'                  into v_con1,v_qmsg, v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is not null THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1 ||'' and ''''''||COL2||'''''' ''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2',
'                  into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is null THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1 ||'' and ''||COL2||'' ''||CONDITION2 query_condition,query_msg,col2 into v_con1,v_qmsg, v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''''''''||v_val3||'''''' '' query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||''(''''''||v_val3||'''''')'' query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid  and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not nu'
||'ll THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||''(''||value1||'')''||'' and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' ''||v_val3 query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||''(''||v_val3||'')'' query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'      ',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is not null and j.value2 is not null T'
||'HEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 is not null and j.query_type=''CP'' and j.value1 is not null and j.condition2 in (''is null'',''is not null'') and j.value2 is null T'
||'HEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and ''''''||v_val3||'''''' ''||COND'
||'ITION2  query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||'''''' ''||CONDITION2  query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                end if;',
'',
'                if v_itmtyp != ''RADIO BUTTON'' then',
'                    execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_cid||',
'                    ''AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||v_col||'''''''' into p;',
'                    if j.condition1 not in (''in'',''not in'') then v_val:=upper(apex_application.g_f01(p)); else v_val:=apex_application.g_f01(p); end if;',
'                elsif v_itmtyp=''RADIO BUTTON'' then',
'                    execute immediate ''select upper(field_val) from save_radio where field_name=''''''||v_col||'''''' and user_id=''||:APP_EDC_USER_ID||'' and user_name=''''''||:APP_USER_NAME||',
'                    '''''' and crf_id=''||v_cid||'' and study_id=''||v_stdy||'' and PATIENT_DIARY_ID=''||v_pdid||'' and patient_profile_id=''||v_ppid||'' and TBL_PK_ID = ''||:P510_CRF_TABLE_PK_VAL into v_val;',
'                end if;',
'',
'                v_val1:=v_val;',
'',
'                if j.query_type=''SPMI'' then',
'                    select item_type into v_itmtyp1 from edc_crf_items where column_name=j.col2 and crf_id=v_cid and study_id=v_stdy;',
'                    ',
'                    execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_cid||',
'                    ''AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||j.col2||'''''''' into n;',
'',
'                    v_val2:=upper(apex_application.g_f01(n));',
'',
'                    if v_val2 is null then v_val2:=null; end if;',
'',
'                end if;',
'',
'                if j.query_type=''SPSI'' and j.col2 is null and j.condition1 in (''is null'',''is not null'') then',
'',
'                  v_val:=''''''''||v_val||'''''''';',
'                  execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||v_col||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;',
'',
'                elsif v_val is not null  and j.query_type=''SPSI'' then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN    v_val:=''''''''||v_val||'''''''';    end if;',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||v_col||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;',
'',
'                elsif j.value1 is null and j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                  v_val:=''''''''||v_val||'''''''';',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;',
'',
'                elsif v_val is not null  and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;',
'',
'                elsif j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;',
'',
'                elsif v_val is not null  and j.query_type=''CP'' then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||j.col1||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;',
'',
'                elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                  v_val:=''''''''||v_val||'''''''';     v_val2:=''''''''||v_val2||'''''''';',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;  ',
'',
'                elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                  v_val:=''''''''||v_val||'''''''';',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;',
'                      ',
'                elsif v_val is not null and j.query_type=''SPMI'' and j.condition1 not in (''in'',''not in'') and j.value1 is not null and j.value2 is null then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'                  if v_itmtyp1 in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'',''NUMBER'') THEN v_val2:=''''''''||v_val2||''''''''; end if;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''')'' query_condition',
'                  into v_con1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  SELECT COL2||'' ''||CONDITION2 query_condition into v_con2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(v_con2,v_col2,v_val2) into v_con2; execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;',
'                      ',
'                  if v_con1=1 and v_con2=1 then v_val:=v_val1;',
'                  l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'',
'                elsif v_val is not null  and j.query_type=''SPMI'' then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col2,v_val2),v_col,v_val) into v_con1;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc_pc(''||v_stdy||'',''||v_pdid||'',510,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
'                  end if;',
'',
'                end if;',
'',
'            end if;',
'',
'          end loop;',
'',
'        end if;',
'',
'        if i < v_cnt2 then',
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_item_seq1 from edc_crf_items where crf_id=v_cid and item_seq=(select nvl(min(item_seq),0) from edc_crf_items where crf_id=v_cid and item_seq > v_item_seq);',
'            v_item_seq:=v_item_seq1;',
'        end if;',
'                    ',
'    end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2688613428218063853
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789563737034567942)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P510_SECTION_STATUS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    V_NUM1 NUMBER;',
'    V_NUM2 NUMBER;',
'    V_DT1 DATE;',
'    V_DT2 DATE;',
'    V_DT3 DATE;',
'    V_DT4 DATE;',
'    V_VAL1 VARCHAR2(500);',
'    V_VAL2 VARCHAR2(500);',
'    V_VAL3 VARCHAR2(500);',
'    V_VAL4 VARCHAR2(500);',
'    V_VAL5 VARCHAR2(500);',
'begin',
'    ',
'    if :P510_CRF_ID = 8 then        --Medications Details',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_OMD661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'        and omd661_id = :P510_CRF_TABLE_PK_VAL;',
'',
'        if v_cnt > 0 then',
'',
'            select OMDMDCN, OMDDOSE, OMDDSGFRM, OTH_SPEC, OMDSPEC, OMDRSN',
'            into V_VAL1, V_VAL2, V_VAL3, V_VAL4, V_NUM1, V_VAL5',
'            from edc_crf_OMD661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'            and omd661_id = :P510_CRF_TABLE_PK_VAL;',
'',
'            if V_VAL1 is not null and V_VAL2 is not null and V_VAL3 is not null and V_NUM1 is not null and V_VAL5 is not null then',
'',
'                IF V_VAL3 = ''Other'' then',
'                    IF V_VAL4 IS NOT NULL then',
'                        :P510_SECTION_STATUS := 3;',
'                    ELSE',
'                        :P510_SECTION_STATUS := 2;',
'                    END IF;',
'                ELSIF V_VAL3 != ''Other'' then',
'                    :P510_SECTION_STATUS := 3;',
'                END IF;',
'',
'            else',
'                :P510_SECTION_STATUS := 2;',
'            end if;',
'            ',
'        end if;',
'        ',
'    elsif :P510_CRF_ID = 19 then     --Complaints Details',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_OCOMPDET661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'        and ocompdet661_id = :P510_CRF_TABLE_PK_VAL;',
'        ',
'        if v_cnt > 0 then',
'            ',
'            select COMPDESC, COMPYN, COMPWORYN, OCOMPDET_STDT, COMPDT, OCOMPDET_ENDT, COMPTM',
'            into V_VAL1, V_VAL2, V_VAL3, V_DT1, V_DT2, V_DT3, V_DT4',
'            from edc_crf_OCOMPDET661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'            and ocompdet661_id = :P510_CRF_TABLE_PK_VAL;',
'            ',
'            if V_VAL1 IS NOT NULL AND V_VAL2 IS NOT NULL AND V_VAL3 is not null AND V_DT1 is not null AND V_DT2 is not null AND V_DT3 is not null AND V_DT4 is not null then',
'',
'                :P510_SECTION_STATUS := 3;',
'    ',
'            else',
'        ',
'                :P510_SECTION_STATUS := 2;',
'    ',
'            end if;',
'',
'        end if;',
'    ',
'    elsif :P510_CRF_ID = 10 then        --Other New Symptoms',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_onsd661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'        and onsd661_id = :P510_CRF_TABLE_PK_VAL;',
'        ',
'        if v_cnt > 0 then',
'        ',
'            select ONSDCOM, ONSD_STDT, ONSDSTTM, ONSD_STATUS, ONSD_ENDT, ONSDENDTM',
'            into V_VAL1, V_DT1, V_DT2, V_VAL2, V_DT3, V_DT4',
'            from edc_crf_ONSD661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'            and onsd661_id = :P510_CRF_TABLE_PK_VAL;',
'        ',
'            if V_VAL1 IS NOT NULL AND V_DT1 IS NOT NULL AND V_DT2 IS NOT NULL AND V_VAL2 IS NOT NULL then',
'',
'                if V_VAL2 = ''Resolved'' then',
'                    if V_DT3 IS NOT NULL AND V_DT4 IS NOT NULL then',
'                        :P510_SECTION_STATUS := 3;',
'                    elsif V_DT3 IS NULL or V_DT4 IS  NULL then',
'                        :P510_SECTION_STATUS := 2;',
'                    end if;',
'                elsif V_VAL2 = ''Ongoing'' then',
'                    :P510_SECTION_STATUS := 3;',
'                end if;',
'',
'            else',
'',
'                :P510_SECTION_STATUS := 2;',
'',
'            end if;',
'            ',
'        end if;',
'    ',
'    elsif :P510_CRF_ID = 22 then        --Other Comments',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_ocomdt661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'        and ocomdt661_id = :P510_CRF_TABLE_PK_VAL;',
'        ',
'        if v_cnt > 0 then',
'        ',
'            select OCOMDESC',
'            into V_VAL1',
'            from edc_crf_ocomdt661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'            and ocomdt661_id = :P510_CRF_TABLE_PK_VAL;',
'            ',
'            if V_VAL1 IS NOT NULL then',
'',
'                :P510_SECTION_STATUS := 3;',
'',
'            else',
'',
'                :P510_SECTION_STATUS := 2;',
'',
'            end if;',
'            ',
'        end if;',
'    ',
'    end if;        --end of main if',
'    ',
'end;',
'        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>2688612968893063849
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3790160857684114083)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P510_SECTION_STATUS_based on queries'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_qry_cnt number;',
'begin',
'    ',
'    select count(1) into v_qry_cnt',
'    from edc_crf_queries',
'    where qry_status in (''Open'',''Reopened'')',
'    and crf_id = :P510_CRF_ID',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and tbl_pk_id = :P510_CRF_TABLE_PK_VAL;',
'    ',
'    if v_qry_cnt = 0 then',
'        :P510_SECTION_STATUS := 3;',
'    else',
'        :P510_SECTION_STATUS := 2;',
'    end if;',
'    ',
'end;',
'        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2689210089542609990
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789563836847567943)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Section Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sql varchar2(1000);',
'v_cnt1 number;',
'v_cnt2 number;',
'v_max_audit_log_id number;',
'v_ex_new_value varchar2(10);',
'begin',
'',
'    select count(1) into v_cnt1 from edc_crf_queries        --queries exist or not',
'    --where crf_short_name = :P510_CRF_SHORT_NAME',
'    where crf_id = :P510_CRF_ID',
'    and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    and qry_status in (''Open'',''Reopened'')',
'    and tbl_pk_id = :P510_CRF_TABLE_PK_VAL',
'    and auto_flag = ''A'';',
'    ',
'    select count(1) into v_cnt2 from audit_trail            --section status audit exists or not',
'    where table_name = :P510_CRF_TABLE_NAME',
'    and PATIENT_DIARY_ID = :P510_PATIENT_DIARY_ID',
'    and column_name = ''SECTION_STATUS''',
'    and table_pk_value = :P510_CRF_TABLE_PK_VAL',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    --elsif v_cnt2 > 0 and v_cnt1 = 0 then    --audit exists but no queries',
'        ',
'        if v_cnt2 > 0 then',
'            execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||:P510_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||:P510_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'        else',
'            v_max_audit_log_id := 0;',
'        end if;',
'        ',
'        commit;      ',
'',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'        ',
'        IF v_ex_new_value != :P510_SECTION_STATUS or v_ex_new_value is null THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',510,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''3'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF;           --end of IF v_ex_new_value != 3 THEN',
'        ',
'        l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' set section_status = ''||:P510_SECTION_STATUS||'' where study_id = ''||:APP_EDC_STUDY_ID||',
'        '' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'    ',
'    --end if;       ',
'    ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2688613068706063850
,p_process_comment=>'Request is contained in value : ''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5233610254847407204)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Section Status from 2to3 and 3to2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sql varchar2(1000);',
'v_cnt1 number;',
'v_cnt2 number;',
'v_max_audit_log_id number;',
'v_ex_new_value varchar2(10);',
'begin',
'',
'    select count(1) into v_cnt1 from edc_crf_queries        --queries exist or not',
'    --where crf_short_name = :P510_CRF_SHORT_NAME',
'    where crf_id = :P510_CRF_ID',
'    and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    and qry_status in (''Open'',''Reopened'')',
'    and tbl_pk_id = :P510_CRF_TABLE_PK_VAL',
'    and auto_flag = ''A'';',
'    ',
'    select count(1) into v_cnt2 from audit_trail            --section status audit exists or not',
'    where table_name = :P510_CRF_TABLE_NAME',
'    and PATIENT_DIARY_ID = :P510_PATIENT_DIARY_ID',
'    and column_name = ''SECTION_STATUS''',
'    and table_pk_value = :P510_CRF_TABLE_PK_VAL',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    if v_cnt2 = 0 and v_cnt1 = 0 then        --no audit and no queries',
'    ',
'        l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' set section_status = 3 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'        ',
'        l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'        values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'        '',510,''''SECTION_STATUS'''',NULL,''''3'''',''''INSERT'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'        execute immediate l_sql;',
'        commit;',
'    ',
'    elsif v_cnt2 = 0 and v_cnt1 > 0 then     --no audit but queries exist',
'    ',
'        l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' set section_status = 2 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'        ',
'        l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'        values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'        '',510,''''SECTION_STATUS'''',NULL,''''2'''',''''INSERT'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'        execute immediate l_sql;',
'        commit;',
'    ',
'    elsif v_cnt2 > 0 and v_cnt1 = 0 then    --audit exists but no queries',
'    ',
'        l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' set section_status = 3 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'        ',
'        execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||:P510_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||:P510_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'        commit;      ',
'',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'        ',
'        IF v_ex_new_value != 3 THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',510,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''3'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF;           --end of IF v_ex_new_value != 3 THEN         ',
'    ',
'    elsif v_cnt2 > 0 and v_cnt1 > 0 then    --audit and queries both exists ',
'    ',
'        l_sql := ''update ''||:P510_CRF_TABLE_NAME||'' set section_status = 2 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P510_CRF_TABLE_PK_COL||'' = ''||:P510_CRF_TABLE_PK_VAL;',
'        execute immediate l_sql;',
'        commit;',
'        ',
'        execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||:P510_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||:P510_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'        commit;      ',
'',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'        ',
'        IF v_ex_new_value != 2 THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P510_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',510,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''2'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P510_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF;        --end of IF v_ex_new_value != 2 THEN            ',
'    ',
'    end if;       ',
'    ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4132659486705903111
,p_process_comment=>'Request is contained in value : ''SAVE'''
);
wwv_flow_imp.component_end;
end;
/
