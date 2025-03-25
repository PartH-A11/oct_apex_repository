prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_tab_set=>'TS1'
,p_name=>'Dynamic Page'
,p_step_title=>'&P100_CRF_PAGE_NAME.'
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
'    $x("P100_COLUMN_NAME").value = column_name;',
'}',
'',
'function getValue(item_name,column_name) ',
'{',
'    var item_name = "" + item_name;',
'    var pad = "00";',
'    var item_name = pad.substring(0, pad.length - item_name.length) + item_name;',
'    var a = $("input[type=''radio''][name=''f" + item_name + "'']:checked").val();',
'    $x("P100_FIELD_VAL").value = a;',
'    var b = column_name;',
'    $x("P100_FIELD_NAME").value = b;',
'    ',
'    //ajax callback process to save data in table',
'    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO", $v(''pFlowStepId''));',
'    oDBGet.add(''P100_FIELD_VAL'', $v("P100_FIELD_VAL"));',
'    oDBGet.add(''P100_FIELD_NAME'', $v("P100_FIELD_NAME"));',
'',
'    oDBGet.get();',
'}',
'',
'function findDisable() ',
'{',
'    var z = $v("P100_FINDDISABLE");',
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
'                    $x("P100_FIELD_VAL").value = a;',
'                    var b = column_name;',
'                    $x("P100_FIELD_NAME").value = b;',
'',
'                    //ajax callback process to save data in table',
'                    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                    oDBGet.add(''P100_FIELD_VAL'', $v("P100_FIELD_VAL"));',
'                    oDBGet.add(''P100_FIELD_NAME'', $v("P100_FIELD_NAME"));',
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
'                    $x("P100_FIELD_VAL").value = a;',
'                    var b = column_name;',
'                    $x("P100_FIELD_NAME").value = b;',
'',
'                    //ajax callback process to save data in table',
'                    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                    oDBGet.add(''P100_FIELD_VAL'', $v("P100_FIELD_VAL"));',
'                    oDBGet.add(''P100_FIELD_NAME'', $v("P100_FIELD_NAME"));',
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
'',
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
'                            $x("P100_FIELD_VAL").value = a;',
'                            var b = column_name;',
'                            $x("P100_FIELD_NAME").value = b;',
'',
'                            //ajax callback process to save data in table',
'                            var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                            oDBGet.add(''P100_FIELD_VAL'', $v("P100_FIELD_VAL"));',
'                            oDBGet.add(''P100_FIELD_NAME'', $v("P100_FIELD_NAME"));',
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
'    var m = $v("P100_CRF_SHORT_NAME");',
'',
'    if (m == ''DM'')',
'        {',
'            var x = $v("P100_DOB_ITEM_ID");',
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
'',
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
'                    document.getElementById(arr[3]).value = age;    ',
'                }',
'            else if(daydob == "" || monthdob == "" || yeardob == "")',
'                {',
'                    document.getElementById(arr[3]).value = '''';',
'                }',
'        }',
'}',
'',
'function calcBMI()',
'{',
'    var m = $v("P100_CRF_SHORT_NAME");',
'',
'    if (m == ''DM'')',
'        {',
'',
'            var x = $v("P100_BMI_ITEM_ID");',
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
'        }',
'}',
'',
'',
'',
'function validateInsert() {',
'var a = $v("P100_CRF_ID");',
'if (a == 4)',
'    {',
'        var b = $v("P100_SDMDT");',
'        var vday = b.substring(0,2);',
'        var vmonth = b.substring(3,6);',
'        var vmonth2 = vmonth.toUpperCase();',
'        var vmonth1;',
'        var vyear = b.substring(7,11);',
'        var c = $v("P100_SDMTIM");',
'        var vhour = c.substring(0,2);',
'        var vminute = c.substring(3,5);',
'',
'        if (vmonth2 == ''JAN'') {vmonth1 = vmonth.replace("JAN",0)};',
'        if (vmonth2 == ''FEB'') {vmonth1 = vmonth.replace("FEB",1)};',
'        if (vmonth2 == ''MAR'') {vmonth1 = vmonth.replace("MAR",2)};',
'        if (vmonth2 == ''APR'') {vmonth1 = vmonth.replace("APR",3)};',
'        if (vmonth2 == ''MAY'') {vmonth1 = vmonth.replace("MAY",4)};',
'        if (vmonth2 == ''JUN'') {vmonth1 = vmonth.replace("JUN",5)};',
'        if (vmonth2 == ''JUL'') {vmonth1 = vmonth.replace("JUL",6)};',
'        if (vmonth2 == ''AUG'') {vmonth1 = vmonth.replace("AUG",7)};',
'        if (vmonth2 == ''SEP'') {vmonth1 = vmonth.replace("SEP",8)};',
'        if (vmonth2 == ''OCT'') {vmonth1 = vmonth.replace("OCT",9)};',
'        if (vmonth2 == ''NOV'') {vmonth1 = vmonth.replace("NOV",10)};',
'        if (vmonth2 == ''DEC'') {vmonth1 = vmonth.replace("DEC",11)};',
'        var todayDate = new Date(); //Today Date    ',
'        var dateOne = new Date(vyear, vmonth1, vday, vhour, vminute, 00);',
'        if (dateOne > todayDate) {    ',
'            alert("Dose Taken Date and Time must be less or equal to the Current Timestamp.");    ',
'        }',
'        else',
'            {',
'                apex.submit(''SAVE''); ',
'            }',
'    }',
'else',
'    {',
'        apex.submit(''SAVE''); ',
'    }',
'}',
'',
'',
'function validateUpdate() {',
'var a = $v("P100_CRF_ID");',
'if (a == 4)',
'    {',
'        var b = $v("P100_SDMDT");',
'        var vday = b.substring(0,2);',
'        var vmonth = b.substring(3,6);',
'        var vmonth2 = vmonth.toUpperCase();',
'        var vmonth1;',
'        var vyear = b.substring(7,11);',
'        var c = $v("P100_SDMTIM");',
'        var vhour = c.substring(0,2);',
'        var vminute = c.substring(3,5);',
'',
'        if (vmonth2 == ''JAN'') {vmonth1 = vmonth2.replace("JAN",0)};',
'        if (vmonth2 == ''FEB'') {vmonth1 = vmonth2.replace("FEB",1)};',
'        if (vmonth2 == ''MAR'') {vmonth1 = vmonth2.replace("MAR",2)};',
'        if (vmonth2 == ''APR'') {vmonth1 = vmonth2.replace("APR",3)};',
'        if (vmonth2 == ''MAY'') {vmonth1 = vmonth2.replace("MAY",4)};',
'        if (vmonth2 == ''JUN'') {vmonth1 = vmonth2.replace("JUN",5)};',
'        if (vmonth2 == ''JUL'') {vmonth1 = vmonth2.replace("JUL",6)};',
'        if (vmonth2 == ''AUG'') {vmonth1 = vmonth2.replace("AUG",7)};',
'        if (vmonth2 == ''SEP'') {vmonth1 = vmonth2.replace("SEP",8)};',
'        if (vmonth2 == ''OCT'') {vmonth1 = vmonth2.replace("OCT",9)};',
'        if (vmonth2 == ''NOV'') {vmonth1 = vmonth2.replace("NOV",10)};',
'        if (vmonth2 == ''DEC'') {vmonth1 = vmonth2.replace("DEC",11)};',
'        var todayDate = new Date(); //Today Date    ',
'        var dateOne = new Date(vyear, vmonth1, vday, vhour, vminute, 00);',
'        //alert(''system date and time ''+todayDate);',
'        //alert(''selected date and time ''+dateOne);',
'        if (dateOne > todayDate) {    ',
'            alert("Dose Taken Date and Time must be less or equal to the Current Timestamp.");    ',
'        }',
'        else',
'            {',
'                var x = $v("P100_ARRAY");',
'                var arr = JSON.parse("[" + x + "]");',
'                var y = arr.length;',
'',
'                var p = $v("P100_ARRLBL");',
'                var arr1 = p.split(",");',
'                var q = arr1.length;',
'',
'                var str = "";',
'                var str1 = "";',
'',
'                for(count= 0; count < y; count++)',
'                {',
'                    var a = ''rsc''+arr[count]; ',
'',
'                    if ((document.getElementById(a).value == "") && (document.getElementById(a).style.visibility == "visible"))',
'                    {',
'                        b = arr1[count];',
'                        str = str+" Reason for changing ''"+b+"'' must have some value."+''\n'';',
'                    }  ',
'',
'                    var c = arr[count]; ',
'',
'                   /* if (document.getElementById(c).value == "")',
'                    {',
'                        d = arr1[count];',
'                        str1 = str1+" ''"+d+"'' is null.Please provide"+''\n'';',
'                    }*/',
'               }',
'',
'               var m = str.length;        //reason for change ',
'               var n = str1.length;       //auto query',
'',
'               if (m > 0)',
'                   {alert(str);}',
'',
'               if (m == 0 && n > 0)',
'                   {alert(str1);}',
'',
'               if (m > 0)',
'                   {return false;}',
'',
'               else',
'                   {apex.submit(''SAVE'');}',
'            }',
'    }',
'else',
'    {',
'            var x = $v("P100_ARRAY");',
'            var arr = JSON.parse("[" + x + "]");',
'            var y = arr.length;',
'',
'            var p = $v("P100_ARRLBL");',
'            var arr1 = p.split(",");',
'            var q = arr1.length;',
'',
'            var str = "";',
'            var str1 = "";',
'',
'            for(count= 0; count < y; count++)',
'            {',
'                var a = ''rsc''+arr[count]; ',
'',
'                if ((document.getElementById(a).value == "") && (document.getElementById(a).style.visibility == "visible"))',
'                {',
'                    b = arr1[count];',
'                    str = str+" Reason for changing ''"+b+"'' must have some value."+''\n'';',
'                }  ',
'',
'                var c = arr[count]; ',
'',
'               /* if (document.getElementById(c).value == "")',
'                {',
'                    d = arr1[count];',
'                    str1 = str1+" ''"+d+"'' is null.Please provide"+''\n'';',
'                }*/',
'           }',
'',
'           var m = str.length;        //reason for change ',
'           var n = str1.length;       //auto query',
'',
'           if (m > 0)',
'               {alert(str);}',
'',
'           if (m == 0 && n > 0)',
'               {alert(str1);}',
'',
'           if (m > 0)',
'               {return false;}',
'',
'           else',
'               {apex.submit(''SAVE'');}',
'}',
'}',
'',
'',
'function valBetween(v, min, max) {',
'    return (Math.min(max, Math.max(min, v)));',
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
'}',
'',
'function setvalue4116(p_in,p_out){',
'    $(''#''+p_in).change(function(){',
'        $(''#''+p_out).val($(this).val());',
'    })',
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
'});',
'',
'setvalue4116(4116,''P100_AV_IP_CNT'');',
'/*$( window ).load(function() ',
'{    ',
'        var x = $v("P100_DOB_BMI_ITEM_ID");',
'        var arr = JSON.parse("[" + x + "]");',
'',
'        document.getElementById(arr[0]).readOnly = true;',
'        document.getElementById(arr[1]).readOnly = true;',
'});*/',
'',
''))
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
 p_id=>wwv_flow_imp.id(5173773767159500302)
,p_plug_name=>'Patient Diary List_vertical'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(5173774593037500310)
,p_plug_name=>'New'
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5173774453038500309)
,p_plug_name=>'Patient Diary List_horizontal'
,p_parent_plug_id=>wwv_flow_imp.id(5173774593037500310)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    --htp.p(''<ul id="mainMenu">'');',
'    htp.p(''<div class="horizontal-menu">'');',
'    --htp.p(''<div class="topnav">'');',
'   ',
'    for i in (SELECT',
'        --''<b style="float:left">''|| DISP_SECTION_NAME ||''</b> '' label, ',
'        ''<b style="text-align:left-center; font-size:120%;">''|| SCHEDULE_NAME ||''</b> '' label, ',
'        --A.CRF_LINK||:APP_EDC_SCHEDULE_NAME||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_STUDY_SITE_ID target,',
'        ''f?p=&APP_ID.:100:&SESSION.::NO::APP_EDC_SCHEDULE_NAME,APP_PATIENT_PROFILE_ID,APP_EDC_STUDY_SITE_ID,P100_CRF_ID:''||A.SCHEDULE_NAME||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',0'' target, ',
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
'            htp.p(''<li><a href="''||i.target||''" class="active">''||i.label||''</a></li>'');',
'        else',
'            htp.p(''<li><a href="''||i.target||''">''||i.label||''</a></li>'');',
'        end if;',
'    ',
'    end loop;',
'    ',
'    --htp.p(''</ul>'');',
'    htp.p(''</div>'');',
'    ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7871514392178260082)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(5173774593037500310)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>'style="width:1400px;"'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6053555882357880872)
,p_plug_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(7871514392178260082)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:250px; height:130px;"'
,p_plug_template=>wwv_flow_imp.id(12146129741780911976)
,p_plug_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(6514886467786775244)
,p_plug_name=>'List S4'
,p_parent_plug_id=>wwv_flow_imp.id(7871514392178260082)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(5173499712130917201)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6807433961642009931)
,p_plug_name=>'&P100_CRF_PAGE_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(7871514392178260082)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'v_cnt1 number;',
'v_cnt2 number;',
'v_cnt3 number;',
'v_cnt4 number;',
'v_cnt5 number;',
'v_cnt6 number;',
'v_cnt7 number;',
'v_cnt8 number;',
'v_cnt9 number;',
'v_cnt10 number;',
'v_value varchar2(400):='''';',
'v_value1 varchar2(400):='''';',
'v_value2 varchar2(400):='''';',
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
'v_idx number:=4;',
'v_col_name varchar2(100);',
'v_lab_range varchar2(1000);',
'v_lab_units varchar2(1000);',
'v_gender varchar2(10);',
'v_ssid number := :APP_EDC_STUDY_SITE_ID;',
'',
'begin',
'',
'    htp.p(''<table>'');',
'    for i in (select * from V_EDC_CRF_ITEMS where CRF_ID=:P100_CRF_ID) LOOP',
'',
'        execute immediate ''select count(1) from ''||:P100_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID=''||:APP_EDC_PATIENT_DIARY_ID into v_cnt1;',
'        ',
'        --Code starts For Flag--',
'        v_script:='''';',
'        execute immediate ''select count(1) from  EDC_CRF_QUERIES where page_id=''||:APP_PAGE_ID||'' and PATIENT_DIARY_ID=''||:APP_EDC_PATIENT_DIARY_ID||''',
'                           and study_id=''||:APP_EDC_STUDY_ID||'' and CRF_ID=''||:P100_CRF_ID||'' and item_name=''''''||i.column_name||'''''''' into v_cnt2;',
'',
'        if v_cnt2 > 0 then',
'',
'           for j in (select qry_status,4 from  EDC_CRF_QUERIES where qry_status=''Closed'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID=:APP_EDC_PATIENT_DIARY_ID and study_id=:APP_EDC_STUDY_ID and CRF_ID=:P100_CRF_ID and item_name=i.column_name',
'            union',
'            select qry_status,3 from  EDC_CRF_QUERIES where qry_status=''Responded'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID=:APP_EDC_PATIENT_DIARY_ID and study_id=:APP_EDC_STUDY_ID and CRF_ID=:P100_CRF_ID and item_name=i.column_name',
'            union',
'            select qry_status,2 from  EDC_CRF_QUERIES where qry_status=''Reopened'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID=:APP_EDC_PATIENT_DIARY_ID and study_id=:APP_EDC_STUDY_ID and CRF_ID=:P100_CRF_ID and item_name=i.column_name',
'            union',
'            select qry_status,1 from  EDC_CRF_QUERIES where qry_status=''Open'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID=:APP_EDC_PATIENT_DIARY_ID and study_id=:APP_EDC_STUDY_ID and CRF_ID=:P100_CRF_ID and item_name=i.column_name',
'            order by 2 desc',
'           ) loop',
'',
'            --v_script:='''';',
'            if j.qry_status in (''Open'') then',
'                v_script:=''<img id="''||i.item_id||''_flag" src="#APP_IMAGES#Flag_Yellow.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px"  title="Open" />'';',
'            elsif j.qry_status in (''Reopened'') then',
'                v_script:=''<img id="''||i.item_id||''_flag" src="#APP_IMAGES#Flag_orange.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px"  title="Reopened" />'';',
'            elsif j.qry_status=''Responded'' then',
'                v_script:=''<img id="''||i.item_id||''_flag" src="#APP_IMAGES#Flag_Green.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px"  title="Responded" />'';',
'            elsif j.qry_status=''Closed'' then',
'                v_script:=''<img id="''||i.item_id||''_flag" src="#APP_IMAGES#Flag_blue.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="Closed" />'';',
'            end if;',
'',
'            end loop;',
'',
'        end if;',
'        --Code ends For Flag--',
'',
'        if v_cnt1=0 then        --insert',
'',
'            --code begins for enable/disable for insert',
'            v_script1:='''';',
'',
'            select count(1) into v_cnt from EDC_CRF_ITEMS_ENDIS WHERE CRF_SHORT_NAME=:P100_CRF_SHORT_NAME AND CRF_ID=:P100_CRF_ID',
'            AND STUDY_ID=:APP_EDC_STUDY_ID AND ITEM_ID=i.item_id order by ITEM_TOBE_ENDIS;',
'',
'            select item_type into v_item_type from edc_crf_items where crf_id=:P100_CRF_ID and study_id=:APP_EDC_STUDY_ID and item_id=i.item_id;',
'',
'            if v_cnt > 0 then',
'',
'                for m in (select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS',
'                from EDC_CRF_ITEMS_ENDIS WHERE CRF_SHORT_NAME=:P100_CRF_SHORT_NAME AND CRF_ID=:P100_CRF_ID AND STUDY_ID=:APP_EDC_STUDY_ID AND ITEM_ID=i.item_id order by ITEM_TOBE_ENDIS) loop',
'',
'                  v_cnt3:=regexp_count(m.item_tobe_endis,'','');',
'',
'                  for j in (select regexp_substr(m.item_tobe_endis,''[^,]+'', 1, level) value1 from dual connect by regexp_substr(m.item_tobe_endis, ''[^,]+'', 1, level) is not null) loop',
'',
'                  select item_type,column_name into v_item2_type, v_col_name from edc_crf_items where crf_id=:P100_CRF_ID and study_id=:APP_EDC_STUDY_ID and item_id=j.value1;',
'',
'                    if v_item_type=''RADIO BUTTON'' then',
'                        v_script1:=v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||v_idx||'''''',''''''||v_col_name||'''''');''; ',
'                    else',
'                        v_script1:=v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||0||'''''',''''''||v_col_name||'''''');''; ',
'                    end if;',
'',
'                  end loop;',
'',
'                end loop;',
'',
'            end if;',
'            --code ends for enable/disable',
'',
'            v_value := '''';',
'            ',
'            if i.item_type IN (''TEXT'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>20,p_maxlength=>i.item_size,p_attributes=>v_script1)||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type IN (''LABEL'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' </b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.display_and_save(p_idx=>1,p_Value=>'''',p_item_id=>i.item_id,p_item_label=>i.item_label)||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type IN (''HEADING'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b><u>''||i.item_label|| '' </u></b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.display_and_save(p_idx=>1,p_Value=>'''',p_item_id=>i.item_id,p_item_label=>i.item_label)||''</td>'');',
'                htp.p(''</tr>'');',
'            ',
'            elsif i.item_type IN (''RADIO BUTTON'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>'');',
'                for j in (select sequence,display_value,stored_value from edc_lov_values where lov_id=i.item_lov order by sequence) loop',
'                htp.p(apex_item.radiogroup(p_idx=>v_idx,p_Value=>j.stored_value,p_display=>j.display_value,p_selected_value=>v_value,p_item_id=>i.item_id,',
'                p_attributes=>''onchange="getValue(''||lpad(v_idx,2,''0'')||'',''''''||trim(upper(i.column_name))||'''''');''||v_script1||''"''));',
'                end loop;',
'                htp.p(''</td>'');    ',
'                htp.p(''</tr>'');',
'',
'                v_idx:=v_idx + 1;',
'',
'            elsif i.item_type IN (''SELECT LIST'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.select_list_from_query(p_idx=>1,p_value=>v_value,',
'                p_query=>''select display_value,stored_value from edc_lov_values where lov_id=''||i.item_lov||'' and status=1 order by sequence'',p_show_null=>''YES'',',
'                p_null_text=>''--Select--'',p_null_value=>NULL,p_item_id=>i.item_id,p_attributes=>''onchange="''||v_script1||''"'')||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''DATE'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.date_popup2(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>12,',
'                p_attributes=>''readonly="readonly"''||v_script1,p_navigation_list_for=>''MONTH_AND_YEAR'',p_year_range=>''1940:2029'',p_max_value=>''+0d'')||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''UNKNOWN DATE'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>12,',
'                p_attributes=>''readonly="readonly"''||v_script1)||''<img id="''||i.item_id||''" src="#WORKSPACE_IMAGES#clear.png" class="ak04" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" />',
'                <span class="u-Button a-Icon icon-calendar" style="height:12px; border:none;" onClick="javascript:setId(''||i.item_id||'');openModal(''''datePick'''');getPosition(event);"></span></td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''TIME'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.date_popup2(p_idx=>1,p_Value=>v_value,p_date_format=>''HH24:MI'',p_item_id=>i.item_id,p_size=>5,p_number_of_months=>0,',
'                p_attributes=>''readonly="readonly"''||v_script1)||''</td>'');',
'                htp.p(''<tr>'');',
'',
'            elsif i.item_type=''NUMBER'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>1,p_Value=>v_value,p_maxlength=>i.item_size,',
'                p_attributes=> ''class="number_field" oninput=deci_restr(''||i.item_id||'',''||i.item_size||'',''||i.digits_aftr_deci||'') onchange="''||v_script1||''"'',p_item_id=>i.item_id,p_size=>5)||''</td>'');',
'                htp.p(''<tr>'');',
'',
'            elsif i.item_type=''TEXTAREA'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td valign="middle"><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.textarea(p_idx=>1,p_Value=>v_value,p_rows=>1,p_item_id=>i.item_id,p_attributes=>v_script1)||''</td>'');',
'                htp.p(''<tr>'');',
'',
'            end if;',
'',
'        elsif v_cnt1=1 then            --update',
'',
'            v_attributes1:=''placeholder="Reason for Change" style="visibility:hidden"'';',
'',
'            --code begins for enable/disable',
'            v_script1:='''';',
'',
'            select count(1) into v_cnt from EDC_CRF_ITEMS_ENDIS',
'            WHERE CRF_SHORT_NAME=:P100_CRF_SHORT_NAME AND CRF_ID=:P100_CRF_ID AND STUDY_ID=:APP_EDC_STUDY_ID AND ITEM_ID=i.item_id order by ITEM_TOBE_ENDIS;',
'',
'            select item_type into v_item_type from edc_crf_items where crf_id=:P100_CRF_ID and study_id=:APP_EDC_STUDY_ID and item_id=i.item_id;',
'',
'            if v_cnt > 0 then',
'',
'                for m in ( select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS from EDC_CRF_ITEMS_ENDIS WHERE CRF_SHORT_NAME=:P100_CRF_SHORT_NAME AND CRF_ID=:P100_CRF_ID ',
'                AND STUDY_ID=:APP_EDC_STUDY_ID AND ITEM_ID=i.item_id order by ITEM_TOBE_ENDIS) loop',
'',
'                  v_cnt3:=regexp_count(m.item_tobe_endis,'','');',
'',
'                  for j in (select regexp_substr(m.item_tobe_endis,''[^,]+'', 1, level) value1 from dual connect by regexp_substr(m.item_tobe_endis, ''[^,]+'', 1, level) is not null) loop',
'',
'                  select item_type,column_name into v_item2_type,v_col_name from edc_crf_items',
'                  where crf_id=:P100_CRF_ID and study_id=:APP_EDC_STUDY_ID and item_id=j.value1;',
'',
'                    if v_item_type=''RADIO BUTTON'' then',
'                        v_script1:=v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||v_idx||'''''',''''''||v_col_name||'''''');''; ',
'                    else',
'                        v_script1:=v_script1||''enDis(''||i.item_id||'',''''''||m.item_value||'''''',''||j.value1||'',''''''||m.item_endis||'''''',''''''||v_item_type||'''''',''''''||v_item2_type||'''''',''''''||0||'''''',''''''||v_col_name||'''''');''; ',
'                    end if;',
'',
'                  end loop;',
'',
'                end loop;',
'',
'            end if;',
'            --code ends for enable/disable',
'',
'            if i.item_type=''TIME'' then',
'                execute immediate ''select ''||i.column_name|| '' from ''||:P100_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID=''||:APP_EDC_PATIENT_DIARY_ID into v_value3;',
'            elsif i.item_type=''NUMBER'' then',
'                select count(1) into v_cnt10 from audit_trail where column_name=i.column_name and PATIENT_DIARY_ID=:APP_EDC_PATIENT_DIARY_ID',
'                and table_pk_value=:P100_CRF_TABLE_PK_VAL and new_value like ''%.0'' and audit_log_id=(select max(audit_log_id) from audit_trail',
'                where column_name=i.column_name and PATIENT_DIARY_ID=:APP_EDC_PATIENT_DIARY_ID and table_pk_value=:P100_CRF_TABLE_PK_VAL);',
'',
'                if v_cnt10 > 0 then',
'                    execute immediate ''select ''||i.column_name|| ''||''''.0'''' from ''||:P100_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID=''||:APP_EDC_PATIENT_DIARY_ID into v_value;',
'                else',
'                    execute immediate ''select decode(substr(to_char(''||i.column_name|| ''),1,1),''''.'''',''''0''''||to_char(''||i.column_name||''),to_char(''||i.column_name||'')) from ''||:P100_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID=''||:APP_EDC_PATIENT_DIARY_ID'
||' into v_value;',
'                end if;',
'            else                ',
'                execute immediate ''select ''||i.column_name|| '' from ''||:P100_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID=''||:APP_EDC_PATIENT_DIARY_ID into v_value;',
'            end if;',
'',
'            if i.item_type IN (''TEXT'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>20,p_maxlength=>i.item_size,p_attributes=>''onchange="myFunction(''||i.item_id||'');''||v_script1||''"'')||v_script||''</td>'');',
'',
'                if v_cnt6=1 and v_cnt4=1 then',
'                  htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                  htp.p(''<td>''||apex_item.text(p_idx=>49,p_Value=>v_lab_range,p_size=>15,p_attributes =>''readonly="readonly"'')||''</td>'');',
'',
'                  htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                  htp.p(''<td>''||apex_item.text(p_idx=>49,p_Value=>v_lab_units,p_size=>15,p_attributes =>''readonly="readonly"'')||''</td>'');',
'',
'                elsif v_cnt6=1 and v_cnt4 != 1 then',
'                  htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                  htp.p(''<td>''||apex_item.display_and_save(p_idx=>49,p_Value=>'''',p_item_label=>'''')||''</td>'');',
'',
'                  htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                  htp.p(''<td>''||apex_item.display_and_save(p_idx=>49,p_Value=>'''',p_item_label=>'''')||''</td>'');',
'                end if;',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type IN (''LABEL'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' </b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.display_and_save(p_idx=>1,p_Value=>'''',p_item_id=>i.item_id,p_item_label=>i.item_label)||''</td>'');',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type IN (''HEADING'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b><u>''||i.item_label|| '' </u></b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.display_and_save(p_idx=>1,p_Value=>'''',p_item_id=>i.item_id,p_item_label=>i.item_label)||''</td>'');',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>'');',
'            ',
'            elsif i.item_type IN (''RADIO BUTTON'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>'');',
'                for j in (select display_value,stored_value from edc_lov_values where lov_id=i.item_lov order by sequence)loop',
'                htp.p(apex_item.radiogroup(p_idx=>v_idx,p_Value=>j.stored_value,p_display=>j.display_value,p_selected_value=>v_value,p_item_id=>i.item_id,',
'                p_attributes=>''class="hasRadioButton" onchange="myFunction(''||i.item_id||'');getValue(''||lpad(v_idx,2,''0'')||'',''''''||trim(upper(i.column_name))||'''''');''||v_script1||''"''));',
'                end loop;',
'                if i.item_id not in (5224,4117,4221) then',
'                htp.p(''<img id="''||i.item_id||''" src="#WORKSPACE_IMAGES#clear.png" class="ak03" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" onclick="getcolumnname(''||i.item_id||'',''''''||i.column_name||'''''''
||')" />'');',
'                end if;',
'                htp.p(v_script);                    ',
'                htp.p(''</td>'');    ',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'',
'                v_idx:=v_idx + 1;',
'',
'            elsif i.item_type IN (''SELECT LIST'') then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.select_list_from_query(p_idx=>1,p_value=>v_value,',
'                p_query=>''select display_value,stored_value from edc_lov_values where lov_id=''||i.item_lov||'' and status=1 order by sequence'',',
'                p_show_null=>''YES'',p_null_value=>NULL,p_null_text=>''--Select--'',p_item_id=>i.item_id,p_attributes=>''onchange="myFunction(''||i.item_id||'');''||v_script1||''"'')||v_script||''</td>'');',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''DATE'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.date_popup2(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>12,',
'                p_navigation_list_for=>''MONTH_AND_YEAR'',p_year_range=>''1940:2029'',p_attributes=>''readonly="readonly" onchange="myFunction(''||i.item_id||'')''||v_script1||''"'',p_max_value=>''+0d'')||v_script||''</td>'');',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''UNKNOWN DATE'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>12,',
'                p_attributes=>''readonly="readonly" onchange="myFunction(''||i.item_id||'')''||v_script1||''"'')||v_script||''<img id="''||i.item_id||',
'                ''" src="#WORKSPACE_IMAGES#clear.png" class="ak04" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" />',
'                <span class="u-Button a-Icon icon-calendar" style="height:12px; border:none;" onClick="javascript:setId(''||i.item_id||'');openModal(''''datePick'''');getPosition(event);"></span></td>'');',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''TIME'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.date_popup2(p_idx=>1,p_Value=>v_value3,p_date_format=>''HH24:MI'',p_item_id=>i.item_id,p_size=>5,p_number_of_months=>0,',
'                p_attributes=>''readonly="readonly" onchange="myFunction(''||i.item_id||'')''||v_script1||''"'')||v_script||''</td>'');',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type=''NUMBER'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>1,p_Value=>v_value,p_item_id=>i.item_id,p_size=>5,p_maxlength=>i.item_size,',
'                p_attributes=>''class="number_field" oninput=deci_restr(''||i.item_id||'',''||i.item_size||'',''||i.digits_aftr_deci||'') onchange="myFunction(''||i.item_id||'');''||v_script1||''"'')||v_script||''</td>'');',
'',
'                if v_cnt6=1 and v_cnt4=1 then',
'                    htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                    htp.p(''<td>''||apex_item.text(p_idx=>49,p_Value=>v_lab_range,p_size=>15,p_attributes=>''readonly="readonly"'')||''</td>'');',
'',
'                    htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                    htp.p(''<td>''||apex_item.text(p_idx=>49,p_Value=>v_lab_units,p_size=>15,p_attributes=>''readonly="readonly"'')||''</td>'');',
'',
'                elsif v_cnt6=1 and v_cnt4 != 1 then',
'                    htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                    htp.p(''<td>''||apex_item.display_and_save(p_idx=>49,p_Value=>'''',p_item_label=>'''')||''</td>'');',
'',
'                    htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                    htp.p(''<td>''||apex_item.display_and_save(p_idx=>49,p_Value=>'''',p_item_label=>'''')||''</td>'');',
'                end if;',
'',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''', p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>''); ',
'',
'            elsif i.item_type=''TEXTAREA'' then',
'                htp.p(''<tr>'');',
'                htp.p(''<td valign="middle"><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.textarea(p_idx=>1,p_Value=>v_value,p_rows=>1,p_item_id=>i.item_id,p_attributes=>''onchange="myFunction(''||i.item_id||'')''||v_script1||''"'')||v_script||''</td>'');',
'                htp.p(''<td>&emsp;&emsp;<left></left><br><br></td>'');',
'                htp.p(''<td>''||apex_item.text(p_idx=>3,p_Value=>'''',p_item_id=>''rsc''||i.item_id,p_attributes=>v_attributes1,p_size=>15)||''</td>'');',
'                htp.p(''</tr>'');            ',
'            end if;',
'',
'        end if;                --end of v_cnt1 if statement',
'',
'    htp.p(''</form>'');',
'    END LOOP;',
'    htp.p(''</table>'');',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6063079075935389581)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>unistr('<b>*Before application of cream, trained personnel will assess acne severity based on Investigator\2019s Global Assessment (IGA) scale.</b>')
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P100_CRF_ID = 946'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7871514720131260082)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(7871514392178260082)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7871521096616260087)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(7871514392178260082)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131134462911980)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7871492606157187446)
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
 p_id=>wwv_flow_imp.id(7874143167147014890)
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
 p_id=>wwv_flow_imp.id(5238766341431115032)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_button_name=>'ADD_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Query'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP,124:P124_PATIENT_DIARY_ID,P124_PAGE_ID,P124_CRF_ID,P124_TBL_PK_ID:&APP_EDC_PATIENT_DIARY_ID.,&APP_PAGE_ID.,&P100_CRF_ID.,&P100_CRF_TABLE_PK_VAL.'');'
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
'    and crf_id = :P100_CRF_ID',
'    and role_id in (27,17);',
'    ',
'    if v_cnt > 0 and :APP_EDC_ROLE_ID IN (13,27,17) then',
'        return true;',
'    elsif :APP_EDC_ROLE_ID IN (13,27,17) AND :P100_SECTION_STATUS IN (4.5) then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'    ',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_comment=>':APP_EDC_ROLE_ID IN (13,27) AND :P100_SECTION_STATUS IN (4.5)'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789565111713567956)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P100_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_DIARY_ID,P6_PAGE_ID,P6_CRF_ID,P6_TBL_PK_ID:&APP_EDC_PATIENT_DIARY_ID.,100,&P100_CRF_ID.,&P100_CRF_TABLE_PK_VAL.'');'
,p_button_condition=>':P100_COUNT = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5173152370954917345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5173153149177917345)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6807433961642009931)
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
 p_id=>wwv_flow_imp.id(5173154006327917344)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
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
'    and table_name = :P100_CRF_TABLE_NAME',
'    and username in (select scrno from edc_patient_profile where study_id = 661);',
'    ',
'    select count(1) into v_cnt        --data entry by user',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = :P100_CRF_TABLE_NAME',
'    and upper(username) = upper(:APP_USER_NAME);',
'    ',
'    select count(1) into v_cnt2        --audit trail present or not',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = :P100_CRF_TABLE_NAME;',
'    ',
'    select count(1) into v_cnt3        --audit trail for data submitted by subject present',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = ''EDC_PATIENT_DIARY''',
'    and new_value = ''4'';',
'    ',
'    if v_diary_type = ''Paper'' then',
'        if :APP_EDC_ROLE_ID IN (13,15,16,26) AND :P100_SECTION_STATUS <= 4 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Electronic'' then',
'        if :APP_EDC_ROLE_ID IN (13,15,16,26) AND v_cnt3 > 0 AND :P100_SECTION_STATUS IN (2,3,4)',
'        /*((:P100_SECTION_STATUS = 4 AND v_cnt1 > 0 AND v_cnt = 0) OR ',
'                                                  (:P100_SECTION_STATUS <= 4 AND V_CNT > 0) OR ',
'                                                  (:P100_SECTION_STATUS = 2 AND V_CNT = 0 AND V_CNT2 != 0)) */',
'                                                  then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    end if;',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_comment=>':APP_EDC_ROLE_ID IN (13,15,16,26) AND :P100_SECTION_STATUS <= 4'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5238766441318115033)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(6807433961642009931)
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
'    and table_name = :P100_CRF_TABLE_NAME',
'    and username not in (select scrno from edc_patient_profile where study_id = 661);',
'    ',
'    select count(1) into v_cnt1        --audit trail for data submitted by subject present',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = ''EDC_PATIENT_DIARY''',
'    and new_value = ''4'';',
'    ',
'    if v_diary_type = ''Paper'' then',
'        if :APP_EDC_ROLE_ID IN (13,16,26) AND :P100_SECTION_STATUS = 3 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Electronic'' then',
'        if :APP_EDC_ROLE_ID IN (13,16,26) AND v_cnt1 > 0 and :P100_SECTION_STATUS IN (2,3,4) then--(:P100_SECTION_STATUS = 4 or (:P100_SECTION_STATUS = 3 and v_cnt > 0))then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    end if;',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_comment=>':APP_EDC_ROLE_ID IN (13,16,26) AND :P100_SECTION_STATUS in (3,4)'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3787540683876126866)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_button_name=>'CRA_REVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CRA Review'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':APP_EDC_ROLE_ID IN (13,27,17) AND :P100_SECTION_STATUS = 4.5'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5173498723882917208)
,p_branch_name=>'Go To Page 100'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::P100_CRF_ID:&P100_CRF_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(5173154006327917344)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3559469266827288875)
,p_name=>'P100_SDMTIM'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P100_CRF_ID = 4'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3559469361530288876)
,p_name=>'P100_SDMDT'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>':P100_CRF_ID = 4'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173157976770917343)
,p_name=>'P100_NO_OF_QUERIES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM edc_crf_queries',
' where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
'   AND CRF_ID = :P100_CRF_ID',
' AND QRY_STATUS in (''Open'',''Reopened'')',
' AND TBL_PK_ID = :P100_CRF_TABLE_PK_VAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173158348560917341)
,p_name=>'P100_PATIENT_VISIT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
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
 p_id=>wwv_flow_imp.id(5173158746492917341)
,p_name=>'P100_CRF_SHORT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173159195097917341)
,p_name=>'P100_CRF_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173159549125917341)
,p_name=>'P100_CRF_PAGE_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173159968206917341)
,p_name=>'P100_CRF_TABLE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173160394373917340)
,p_name=>'P100_CRF_TABLE_PK_COL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173160815430917340)
,p_name=>'P100_CRF_TABLE_PK_VAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173161172522917340)
,p_name=>'P100_ACTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173161612466917340)
,p_name=>'P100_DOB_ITEM_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P100_CRF_SHORT_NAME',
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
 p_id=>wwv_flow_imp.id(5173161955394917340)
,p_name=>'P100_BMI_ITEM_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P100_CRF_SHORT_NAME',
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
 p_id=>wwv_flow_imp.id(5173162397108917340)
,p_name=>'P100_DOB_BMI_ITEM_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id, ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P100_CRF_SHORT_NAME',
'              and column_name in (''BMI'',''AGE'')',
'              and study_id = :APP_EDC_STUDY_ID)',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1',
'UNION',
'SELECT ''0'' FROM EDC_CRF_ITEMS',
'WHERE CRF_SHORT_NAME = :P100_CRF_SHORT_NAME',
'AND CRF_SHORT_NAME != ''DM'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173162740117917340)
,p_name=>'P100_ARRAY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_id = :P100_CRF_ID and item_type != ''LABEL'')',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173163180872917339)
,p_name=>'P100_ARRLBL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (REPLACE(item_label,'','','''') , '',''), 2) csv',
'      FROM (SELECT item_label , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_id = :P100_CRF_ID and item_type != ''LABEL'')',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173163534901917339)
,p_name=>'P100_COUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173163948395917339)
,p_name=>'P100_COUNT2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173164414417917339)
,p_name=>'P100_COUNT3'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173164815318917338)
,p_name=>'P100_ENDIS_SCRIPT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173165130405917338)
,p_name=>'P100_FINDDISABLE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173165581986917338)
,p_name=>'P100_ITEM_DISABLE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173166005565917338)
,p_name=>'P100_MSG'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173166389508917338)
,p_name=>'P100_QRY_COUNT'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173166763380917338)
,p_name=>'P100_FIELD_VAL'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173167191317917337)
,p_name=>'P100_FIELD_NAME'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173167547122917337)
,p_name=>'P100_COLUMN_NAME'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(6807433961642009931)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173200911651917322)
,p_name=>'P100_SV_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7871514720131260082)
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
 p_id=>wwv_flow_imp.id(5173201309818917322)
,p_name=>'P100_SECTION_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7871514720131260082)
,p_item_default=>'2'
,p_prompt=>'<b>Section Status :</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VAL d, RETURN_VAL r from EDC_CRF_STATUS',
' order by disp_seq'))
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
 p_id=>wwv_flow_imp.id(5173201698626917321)
,p_name=>'P100_IMG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7871514720131260082)
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
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173203482283917320)
,p_name=>'P100_CREATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(7871521096616260087)
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
 p_id=>wwv_flow_imp.id(5173203862600917320)
,p_name=>'P100_CREATED_ON'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7871521096616260087)
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
 p_id=>wwv_flow_imp.id(5173204217533917320)
,p_name=>'P100_UPDATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(7871521096616260087)
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
 p_id=>wwv_flow_imp.id(5173204643474917320)
,p_name=>'P100_UPDATED_ON'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(7871521096616260087)
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
 p_id=>wwv_flow_imp.id(5173205398366917320)
,p_name=>'P100_X'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(7874143167147014890)
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
 p_id=>wwv_flow_imp.id(5173340879995917259)
,p_name=>'Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P4_AUDIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173341334447917258)
,p_event_id=>wwv_flow_imp.id(5173340879995917259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_DIARY_ID,P141_TABLE_NAME,P141_CRF_ID:&APP_PAGE_ID.,&APP_EDC_PATIENT_DIARY_ID.,&P100_CRF_TABLE_NAME.,&P100_CRF_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173341748426917258)
,p_name=>'Calling validate INSERT function'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5173154006327917344)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_COUNT = 0'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173342312282917258)
,p_event_id=>wwv_flow_imp.id(5173341748426917258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateInsert();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173342631072917258)
,p_name=>'Calling validate UPDATE function'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5173154006327917344)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_COUNT = 1'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173343202390917258)
,p_event_id=>wwv_flow_imp.id(5173342631072917258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateUpdate();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173391555037917242)
,p_name=>'Function to know which items are disabled'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5173154006327917344)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173392018886917242)
,p_event_id=>wwv_flow_imp.id(5173391555037917242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'findDisable();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173344457112917257)
,p_name=>'Refresh after closing of modal page'
,p_event_sequence=>1440
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173344957430917257)
,p_event_id=>wwv_flow_imp.id(5173344457112917257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173348033858917256)
,p_name=>'On change of document'
,p_event_sequence=>1490
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173348598341917256)
,p_event_id=>wwv_flow_imp.id(5173348033858917256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var m = $v("P100_ENDIS_SCRIPT");',
'//alert(m);',
'eval(m);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173348956423917256)
,p_name=>'Enable/Disable on Page Load'
,p_event_sequence=>1500
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173349464581917256)
,p_event_id=>wwv_flow_imp.id(5173348956423917256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var m = $v("P100_ENDIS_SCRIPT");',
'//alert(m);',
'eval(m);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173349885741917256)
,p_name=>'CLEAR IMG BUTTON FOR RADIO GROUP'
,p_event_sequence=>1510
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_da_event_comment=>':APP_PAGE_ID in (559,571,505,504,511,502,509,510,506,512,507,514,501,503,515,517,518,516,520,519,508,524,521,523,522,528,526,513,530,525,531,529,527,533,532,535,534,537,538,539,540,536,541,542,546,548,543,547,544,545,549,550,551,553,554,555,556,558,5'
||'63,552,562,564,565,566,567,568,570,557,561,581,582,580,581,582,583,585,586,588,587,589,590,591,592,593,594,595,596,599,601,598,602,603,604,605,703,705,707,709,711,713,715,717,610,712,606,608,719,720,606,714,716,718,559,100,818,819,820)'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173350355504917255)
,p_event_id=>wwv_flow_imp.id(5173349885741917256)
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
'        var y = $v("P100_CRF_TABLE_PK_VAL");',
'        if (y!='''' && b!=undefined)',
'            {',
'                 var x = ''rsc''+c;',
'                 document.getElementById(x).style.visibility = "visible";   ',
'            }',
'        var m = $v("P100_ENDIS_SCRIPT");',
'        eval(m);',
'        ',
'        var g = "" + g;',
'        var pad = "00";',
'        var g = pad.substring(0, pad.length - g.length) + g;',
'        var h = $("input[type=''radio''][name=''" + g + "'']:checked").val();',
'        $x("P100_FIELD_VAL").value = h;',
'        var i = $v("P100_COLUMN_NAME");',
'        $x("P100_FIELD_NAME").value = i;',
'',
'        //ajax callback process to save data in table',
'        var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'        oDBGet.add(''P100_FIELD_VAL'', $v("P100_FIELD_VAL"));',
'        oDBGet.add(''P100_FIELD_NAME'', $v("P100_FIELD_NAME"));',
'        oDBGet.get();',
'    }',
'})',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173352688602917255)
,p_name=>'CLEAR IMG BUTTON FOR UNKNOWN DATE'
,p_event_sequence=>1530
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173353117100917254)
,p_event_id=>wwv_flow_imp.id(5173352688602917255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'//for unknown date in dynamic edc...developed by Pankti',
'$(''.ak04'').click(function(){',
'var c=$(this).prop(''id'');',
'var a = document.getElementById(c).value;',
'document.getElementById(c).value = '''';',
'$(''#''+c).trigger("change"); ',
'/*if (a==undefined)',
'    {*/',
'        var y = $v("P100_CRF_TABLE_PK_VAL");',
'        if (y!='''' && a!='''')',
'            {',
'                 var x = ''rsc''+c;',
'                 document.getElementById(x).style.visibility = "visible";   ',
'            }',
'        var m = $v("P100_ENDIS_SCRIPT");',
'        eval(m);',
'        ',
'        /*var g = "" + g;',
'        var pad = "00";',
'        var g = pad.substring(0, pad.length - g.length) + g;',
'        var h = $("input[type=''radio''][name=''" + g + "'']:checked").val();',
'        $x("P100_FIELD_VAL").value = h;',
'        var i = $v("P100_COLUMN_NAME");',
'        $x("P100_FIELD_NAME").value = i;',
'',
'        //ajax callback process to save data in table',
'        var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'        oDBGet.add(''P100_FIELD_VAL'', $v("P100_FIELD_VAL"));',
'        oDBGet.add(''P100_FIELD_NAME'', $v("P100_FIELD_NAME"));',
'        oDBGet.get();*/',
'    //}',
'})',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173335507048917261)
,p_name=>'Show Source Document'
,p_event_sequence=>4170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5863145102998135806)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173335988657917260)
,p_event_id=>wwv_flow_imp.id(5173335507048917261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''inlineGlbl'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4272706285127419165)
,p_name=>'Enable Disable O2 Reading 2'
,p_event_sequence=>4180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 2'
,p_display_when_cond2=>'PLSQL'
,p_da_event_comment=>':P100_CRF_ID = 2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4272706329329419166)
,p_event_id=>wwv_flow_imp.id(4272706285127419165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("6").value;',
'',
'if (a == '''')',
'    {',
'        document.getElementById("54").readOnly = true;',
'        document.getElementById("54").style.background = "gainsboro";',
'        document.getElementById("54").value = "";',
'',
'        document.getElementById("7").readOnly = true;',
'        document.getElementById("7").style.background = "gainsboro";',
'        document.getElementById("7").value = "";',
'    }',
'else if (a < 94)',
'    {',
'        document.getElementById("54").readOnly = true;',
'        document.getElementById("54").style.removeProperty("background-color");',
'        ',
'        document.getElementById("7").readOnly = false;',
'        document.getElementById("7").style.removeProperty("background-color");',
'    }',
'else if (a >= 94)',
'    {',
'        document.getElementById("54").readOnly = true;',
'        document.getElementById("54").style.background = "gainsboro";',
'        document.getElementById("54").value = "";',
'',
'        document.getElementById("7").readOnly = true;',
'        document.getElementById("7").style.background = "gainsboro";',
'        document.getElementById("7").value = "";',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4272706884140419171)
,p_name=>'Enable Disable SSC'
,p_event_sequence=>4190
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 3'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4272707012190419172)
,p_event_id=>wwv_flow_imp.id(4272706884140419171)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("11").value;',
'',
'if (a == ''No'')',
'    {',
'        document.getElementById("12").readOnly = false;',
'        document.getElementById("12").style.removeProperty("background-color");   ',
'    }',
'else',
'    {',
'        document.getElementById("12").readOnly = true;',
'        document.getElementById("12").style.background = "gainsboro";',
'        document.getElementById("12").value = "";',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4272707229952419175)
,p_name=>'Enable Disable SMA'
,p_event_sequence=>4200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 4'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4272707396678419176)
,p_event_id=>wwv_flow_imp.id(4272707229952419175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("13").value;',
'',
'if (a == ''No'')',
'    {',
'        document.getElementById("14").readOnly = false;',
'        document.getElementById("14").style.removeProperty("background-color");   ',
'        ',
'        document.getElementById("15").readOnly = true;',
'        document.getElementById("15").style.background = "gainsboro";',
'        document.getElementById("15").value = "";',
'        ',
'        document.getElementById("16").readOnly = true;',
'        document.getElementById("16").style.background = "gainsboro";',
'        document.getElementById("16").value = "";',
'        ',
'        document.getElementById("70").readOnly = true;',
'        document.getElementById("70").style.background = "gainsboro";',
'        document.getElementById("70").value = "";',
'    }',
'else if ( a == ''Yes'')',
'    {',
'        document.getElementById("14").readOnly = true;',
'        document.getElementById("14").style.background = "gainsboro";',
'        document.getElementById("14").value = "";',
'        ',
'        document.getElementById("15").readOnly = false;',
'        document.getElementById("15").style.removeProperty("background-color");   ',
'        ',
'        //document.getElementById("16").readOnly = false;',
'        document.getElementById("16").style.removeProperty("background-color");  ',
'        ',
'        //document.getElementById("70").readOnly = false;',
'        document.getElementById("70").style.removeProperty("background-color");  ',
'    }',
'else if (a == '''')',
'    {',
'         document.getElementById("14").readOnly = true;',
'        document.getElementById("14").style.background = "gainsboro";',
'        document.getElementById("14").value = "";',
'        ',
'        document.getElementById("15").readOnly = true;',
'        document.getElementById("15").style.background = "gainsboro";',
'        document.getElementById("15").value = "";',
'        ',
'        document.getElementById("16").readOnly = true;',
'        document.getElementById("16").style.background = "gainsboro";',
'        document.getElementById("16").value = "";',
'        ',
'        document.getElementById("70").readOnly = true;',
'        document.getElementById("70").style.background = "gainsboro";',
'        document.getElementById("70").value = "";',
'    }',
'',
'$x("P100_SDMTIM").value = document.getElementById("16").value;',
'$x("P100_SDMDT").value = document.getElementById("70").value;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4272707481324419177)
,p_name=>'Enable Disable SMA_page load'
,p_event_sequence=>4210
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 4'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4272707544832419178)
,p_event_id=>wwv_flow_imp.id(4272707481324419177)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("13").value;',
'',
'if (a == ''No'')',
'    {',
'        document.getElementById("14").readOnly = false;',
'        document.getElementById("14").style.removeProperty("background-color");   ',
'        ',
'        document.getElementById("15").readOnly = true;',
'        document.getElementById("15").style.background = "gainsboro";',
'        document.getElementById("15").value = "";',
'        ',
'        document.getElementById("16").readOnly = true;',
'        document.getElementById("16").style.background = "gainsboro";',
'        document.getElementById("16").value = "";',
'        ',
'        document.getElementById("70").readOnly = true;',
'        document.getElementById("70").style.background = "gainsboro";',
'        document.getElementById("70").value = "";',
'    }',
'else if ( a == ''Yes'')',
'    {',
'        document.getElementById("14").readOnly = true;',
'        document.getElementById("14").style.background = "gainsboro";',
'        document.getElementById("14").value = "";',
'        ',
'        document.getElementById("15").readOnly = false;',
'        document.getElementById("15").style.removeProperty("background-color");   ',
'        ',
'        //document.getElementById("16").readOnly = false;',
'        document.getElementById("16").style.removeProperty("background-color");  ',
'        ',
'        //document.getElementById("70").readOnly = false;',
'        document.getElementById("70").style.removeProperty("background-color");  ',
'    }',
'else if (a == '''')',
'    {',
'         document.getElementById("14").readOnly = true;',
'        document.getElementById("14").style.background = "gainsboro";',
'        document.getElementById("14").value = "";',
'        ',
'        document.getElementById("15").readOnly = true;',
'        document.getElementById("15").style.background = "gainsboro";',
'        document.getElementById("15").value = "";',
'        ',
'        document.getElementById("16").readOnly = true;',
'        document.getElementById("16").style.background = "gainsboro";',
'        document.getElementById("16").value = "";',
'        ',
'        document.getElementById("70").readOnly = true;',
'        document.getElementById("70").style.background = "gainsboro";',
'        document.getElementById("70").value = "";',
'    }',
'',
'$x("P100_SDMTIM").value = document.getElementById("16").value;',
'$x("P100_SDMDT").value = document.getElementById("70").value;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787541242414126872)
,p_name=>'Enable Disable UPT_page load'
,p_event_sequence=>4220
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 24'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787541345009126873)
,p_event_id=>wwv_flow_imp.id(3787541242414126872)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("58").value;',
'',
'if (a == ''No'')',
'    {',
'        document.getElementById("59").readOnly = false;',
'        document.getElementById("59").style.removeProperty("background-color");   ',
'        ',
'        document.getElementById("60").style.pointerEvents = "none";',
'        document.getElementById("60").style.background = "gainsboro";',
'        document.getElementById("60").value = "";',
'        ',
'    }',
'else if ( a == ''Yes'')',
'    {',
'        document.getElementById("59").readOnly = true;',
'        document.getElementById("59").style.background = "gainsboro";',
'        document.getElementById("59").value = "";',
'        ',
'        document.getElementById("60").style.pointerEvents = "auto";',
'        document.getElementById("60").style.removeProperty("background-color");',
'         ',
'    }',
'else if (a == '''')',
'    {',
'        document.getElementById("59").readOnly = true;',
'        document.getElementById("59").style.background = "gainsboro";',
'        document.getElementById("59").value = "";',
'        ',
'        document.getElementById("60").style.pointerEvents = "none";',
'        document.getElementById("60").style.background = "gainsboro";',
'        document.getElementById("60").value = "";',
'        ',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3787541418016126874)
,p_name=>'Enable Disable UPT_CHANGE'
,p_event_sequence=>4230
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 24'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3787541507233126875)
,p_event_id=>wwv_flow_imp.id(3787541418016126874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("58").value;',
'',
'if (a == ''No'')',
'    {',
'        document.getElementById("59").readOnly = false;',
'        document.getElementById("59").style.removeProperty("background-color");   ',
'        ',
'        document.getElementById("60").style.pointerEvents = "none";',
'        document.getElementById("60").style.background = "gainsboro";',
'        document.getElementById("60").value = "";',
'        ',
'    }',
'else if ( a == ''Yes'')',
'    {',
'        document.getElementById("59").readOnly = true;',
'        document.getElementById("59").style.background = "gainsboro";',
'        document.getElementById("59").value = "";',
'        ',
'        document.getElementById("60").style.pointerEvents = "auto";',
'        document.getElementById("60").style.removeProperty("background-color");',
'         ',
'    }',
'else if (a == '''')',
'    {',
'        document.getElementById("59").readOnly = true;',
'        document.getElementById("59").style.background = "gainsboro";',
'        document.getElementById("59").value = "";',
'        ',
'        document.getElementById("60").style.pointerEvents = "none";',
'        document.getElementById("60").style.background = "gainsboro";',
'        document.getElementById("60").value = "";',
'        ',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4272707044795419173)
,p_name=>'Enable Disable SSC_page load'
,p_event_sequence=>4240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 3'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4272707212272419174)
,p_event_id=>wwv_flow_imp.id(4272707044795419173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("11").value;',
'',
'if (a == ''No'')',
'    {',
'        document.getElementById("12").readOnly = false;',
'        document.getElementById("12").style.removeProperty("background-color");   ',
'    }',
'else',
'    {',
'        document.getElementById("12").readOnly = true;',
'        document.getElementById("12").style.background = "gainsboro";',
'        document.getElementById("12").value = "";',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4272706477600419167)
,p_name=>'Enable Disable O2 Reading 2_page load'
,p_event_sequence=>4250
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 2'
,p_display_when_cond2=>'PLSQL'
,p_da_event_comment=>':P100_CRF_ID = 2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4272706582402419168)
,p_event_id=>wwv_flow_imp.id(4272706477600419167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("6").value;',
'',
'if (a == '''')',
'    {',
'        document.getElementById("54").readOnly = true;',
'        document.getElementById("54").style.background = "gainsboro";',
'        document.getElementById("54").value = "";',
'',
'        document.getElementById("7").readOnly = true;',
'        document.getElementById("7").style.background = "gainsboro";',
'        document.getElementById("7").value = "";',
'    }',
'else if (a < 94)',
'    {',
'        document.getElementById("54").readOnly = true;',
'        document.getElementById("54").style.removeProperty("background-color");',
'        ',
'        document.getElementById("7").readOnly = false;',
'        document.getElementById("7").style.removeProperty("background-color");',
'    }',
'else if (a >= 94)',
'    {',
'        document.getElementById("54").readOnly = true;',
'        document.getElementById("54").style.background = "gainsboro";',
'        document.getElementById("54").value = "";',
'',
'        document.getElementById("7").readOnly = true;',
'        document.getElementById("7").style.background = "gainsboro";',
'        document.getElementById("7").value = "";',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4272706668975419169)
,p_name=>'Alert on Temperature'
,p_event_sequence=>4260
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("2")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 2'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4272706757914419170)
,p_event_id=>wwv_flow_imp.id(4272706668975419169)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("2").value;',
'',
'if (a < 36 || a > 38)',
'    {',
'        alert("The temperature mentioned is out of the normal range(36C to 38C). Please verify.");',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790772104718724980)
,p_name=>'Alert on Oxygen Reading 1'
,p_event_sequence=>4270
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("6")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 2'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790772128362724981)
,p_event_id=>wwv_flow_imp.id(3790772104718724980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("6").value;',
'',
'if (a < 90)',
'    {',
'        alert("The Oxygen Saturation Reading 1 is <90%. Please verify.")',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790772255305724982)
,p_name=>'Alert on Oxygen Reading 2'
,p_event_sequence=>4280
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("7")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 2'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790772398136724983)
,p_event_id=>wwv_flow_imp.id(3790772255305724982)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("7").value;',
'',
'if (a < 90)',
'    {',
'        alert("The Oxygen Saturation Reading 2 is <90%. Please verify.")',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790772645119724986)
,p_name=>'Alert on Heart Rate'
,p_event_sequence=>4290
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document.getElementById("10")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 2'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790772764178724987)
,p_event_id=>wwv_flow_imp.id(3790772645119724986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = document.getElementById("10").value;',
'',
'if (a < 50 || a > 100)',
'    {',
'        alert("The Heart Rate Value entered is out of range. Please verify.")',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3786030878713979868)
,p_name=>'number field  vs'
,p_event_sequence=>4300
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID = 2'
,p_display_when_cond2=>'PLSQL'
,p_da_event_comment=>':P100_CRF_ID=2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786030960917979869)
,p_event_id=>wwv_flow_imp.id(3786030878713979868)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("10").onkeypress = function isNumber(evt) ',
'        {',
'            evt = (evt) ? evt : window.event;',
'            var charCode = (evt.which) ? evt.which : evt.keyCode;',
'            if (charCode > 31 && (charCode < 48 || charCode > 57)) {',
'                return false;',
'            }',
'            return true;',
'        }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3786031007763979870)
,p_name=>'number field _sma'
,p_event_sequence=>4310
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P100_CRF_ID=4'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786031182268979871)
,p_event_id=>wwv_flow_imp.id(3786031007763979870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("15").onkeypress = function isNumber(evt) ',
'        {',
'            evt = (evt) ? evt : window.event;',
'            var charCode = (evt.which) ? evt.which : evt.keyCode;',
'            if (charCode > 31 && (charCode < 48 || charCode > 57)) {',
'                return false;',
'            }',
'            return true;',
'        }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790160487680114079)
,p_name=>'On click of Submit'
,p_event_sequence=>4320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5238766441318115033)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790160537111114080)
,p_event_id=>wwv_flow_imp.id(3790160487680114079)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P100_QRY_COUNT");',
'',
'if ( a > 0)',
'    {',
'        alert("Please respond to all queries and then Submit.")',
'    }',
'else',
'    {',
'        apex.submit(''SUBMIT'');',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790160959424114084)
,p_name=>'On Click of CRA Review'
,p_event_sequence=>4330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3787540683876126866)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790161073880114085)
,p_event_id=>wwv_flow_imp.id(3790160959424114084)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P100_QRY_COUNT");',
'',
'if ( a > 0)',
'    {',
'        alert("Please close all queries and then Review.")',
'    }',
'else',
'    {',
'        apex.submit(''CRA_REVIEW'');',
'    }'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173225200996917298)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P100_FINDDISABLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_script varchar2(32767) := ''var value = null;var m = ''''''''; '';',
'begin    ',
'    ',
'    for i in (',
'        select *',
'        from V_EDC_CRF_ITEMS',
'        where CRF_ID = :P100_CRF_ID',
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
'              $x("P100_ITEM_DISABLE").value = m;'';',
'    END LOOP;        ',
'    --htp.p(v_script);',
'                      ',
'    select v_script into :P100_FINDDISABLE from dual;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4072274432855413205
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789564045158567945)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Dynamic Informative Message_SPSI_SPMI_CP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_msg varchar2(32767):=''''; v_item_id number; v_col varchar2(50); v_col2 varchar2(50);',
'    v_val varchar2(400); v_val1 varchar2(400); v_val2 varchar2(400); v_val3 varchar2(400); m number; n number;',
'    v_itmlbl varchar2(4000); v_cond1 varchar2(10000);  v_cond2 varchar2(10000);  v_cond3 varchar2(10000); v_cnt number; v_cnt1 number; v_cnt2 number; v_cnt3 number; v_cnt4 number; v_qmsg varchar2(500); v_qmsg1 varchar2(500);',
'    v_itmseq number; v_itmseq1 number; v_itm_seq2 number; v_itmtyp varchar2(30);',
'    v_tblnm varchar2(100); v_stdy number; v_pvid number; v_cid number; p number:=1;  v_itmtyp1 varchar2(200);',
'begin',
'',
'    v_stdy:=:APP_EDC_STUDY_ID; v_pvid:=:APP_EDC_PATIENT_DIARY_ID; v_cid:=:P100_CRF_ID;',
'',
'    select count(1) into v_cnt1 from edc_crf_items where crf_id=v_cid and study_id=v_stdy;',
'',
'    select item_id,item_seq into v_item_id,v_itmseq from edc_crf_items where crf_id=v_cid and study_id=v_stdy and item_seq = (select min(item_seq) from edc_crf_items where crf_id=v_cid and study_id=v_stdy);',
'',
'    for i in 1..v_cnt1 loop',
'',
'        select column_name,item_label,item_type,item_seq into v_col,v_itmlbl,v_itmtyp,v_itm_seq2 from edc_crf_items where item_id=v_item_id and crf_id=v_cid AND study_id=v_stdy;',
'',
'        select count(1) into v_cnt from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'');',
'',
'        if v_cnt > 0 then',
'',
'          for j in (select query_id,value1,condition1,query_type,condition2, visit_title,col2,value2,crf_id1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'')) loop',
'',
'             v_cond1:='''';',
'',
'              if j.visit_title=''All'' or j.visit_title=:APP_EDC_VISIT_NAME then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'',''UNKNOWN DATE'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                      SELECT COL1||'' ''||condition1,query_msg into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPSI'' THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''||col2||'')'',query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' then',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||COL2,query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPSI'' then',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''in'',''IN (''||Col2||'')'',''not in'',''NOT IN (''||Col2||'')'',condition1) ||'' '',query_msg into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id and qry_actin='''
||'Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.col2 is not null and j.value2 is null and j.value1 is null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg,col2',
'                      into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is not null and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||CON'
||'DITION2 query_condition,query_msg,col2',
'                      into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||',
'                      DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                      into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||',
'                      DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                      into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is not null and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 que'
||'ry_condition,query_msg,col2',
'                      into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''''''||COL2||'''''' '' query_condition,query_msg,col2 ',
'                      into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1||'' and ''||COL2||'' ''||',
'                      DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                      into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' '
||'''''''||VALUE2||'''''''' query_condition,query_msg,col2',
'                      into v_cond1,v_qmsg, v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is not null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||'' and ''''''||COL2||'''''' ''||DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'
||''''''''' query_condition,query_msg,col2',
'                      into v_cond1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||'' and ''||COL2||'' ''||CONDITION2 query_condition, query_msg, col2 into v_cond1,v_qmsg, v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      if v_itmtyp != ''DATE'' then',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''''''''||v_val3||'''''' '' query_condition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; else',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''to_date(''''''||v_val3||'''''',''''DD-MM-YY'''') '' query_cond'
||'ition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''''''||v_val3||'''''')'' query_condition, query_msg into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid  and col1=v_col and query_id=j.query_id; end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not '
||'null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''||value1||'')''||'' and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' ''||v_val3 query_condition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''||v_val3||'')'' query_condition, query_msg into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') ',
'                      and j.query_type=''CP'' and j.value1 is null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 is not null and j.query_type=''CP'' ',
'                      and j.value1 is not null and j.condition2 in (''is null'',''is not null'') and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and ''''''||v_val3||'''''' ''||'
||'CONDITION2  query_condition, query_msg',
'                      into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1 into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||'''''' ''||CONDITION2  query_condition, query_msg into v_cond1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                      end if;',
'',
'                  end if;',
'',
'                  if v_itmtyp != ''RADIO BUTTON'' then',
'                    execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_cid||',
'                    ''AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||v_col||'''''''' into p;',
'                    if j.condition1 not in (''in'',''not in'') then v_val:=upper(apex_application.g_f01(p)); else v_val:=apex_application.g_f01(p); end if;',
'                  elsif v_itmtyp = ''RADIO BUTTON'' then',
'                    execute immediate ''select upper(field_val) from save_radio where field_name = ''''''||v_col||'''''' and user_id = ''||:APP_EDC_USER||'' and user_name = ''''''||:APP_USER_NAME||',
'                    '''''' and crf_id = ''||v_cid||'' and PATIENT_DIARY_ID = ''||v_pvid||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID into v_val;',
'                  end if;',
'',
'                  if j.query_type=''SPMI'' then',
'',
'                      select item_type into v_itmtyp1 from edc_crf_items where column_name=j.col2 and crf_id=v_cid and study_id=v_stdy;',
'',
'                      if v_itmtyp1 != ''RADIO BUTTON'' then',
'                      execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_cid||',
'                      ''AND STUDY_ID=''||v_stdy||'' AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||j.col2||'''''''' into n;',
'',
'                      v_val2:=upper(apex_application.g_f01(n));',
'',
'                      if v_val2 is null then v_val2:=null; end if;',
'',
'                      elsif v_itmtyp1=''RADIO BUTTON'' then',
'                      execute immediate ''select upper(field_val) from save_radio where upper(field_name) = upper(''''''||j.col2||'''''') and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'                      '''''' and crf_id = ''||v_cid||'' and PATIENT_DIARY_ID = ''||v_pvid||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID into v_val2;',
'',
'                      if v_val2 is null then v_val2:=null; end if;',
'',
'                      end if;',
'',
'                  end if;',
'',
'                  if j.query_type=''SPSI'' and j.col2 is null and j.condition1 in (''is null'',''is not null'') then',
'',
'                      v_val:=''''''''||v_val||'''''''';',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_col,v_val) into v_cond1;',
'',
'                      if v_cond1 = 1 and (length(v_msg) < 2500 or length(v_msg) is null) then v_msg:=v_msg||v_qmsg||''<br>''; end if;',
'',
'                  elsif v_val is not null  and j.query_type=''SPSI'' then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val:=''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_col,v_val) into v_cond1;',
'',
'                      if v_cond1 = 1 then v_msg:=v_msg||v_qmsg||''<br>''; end if;',
'',
'                  elsif j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val:=''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_col,v_val),v_col2,v_val2) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg:=v_msg||v_qmsg||''<br>'';',
'                      end if;',
'',
'                  elsif j.value1 is null and j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                      v_val:=''''''''||v_val||'''''''';',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_col,v_val) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg:=v_msg||v_qmsg||''<br>'';',
'                      end if;',
'',
'                  elsif v_val is not null  and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val:=''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_col,v_val),v_col2,v_val2) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then',
'                          v_msg:=v_msg||v_qmsg||''<br>'';',
'                      end if;',
'',
'                  elsif v_val is not null  and j.query_type=''CP'' then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN',
'                          v_val:=''''''''||v_val||'''''''';',
'                      end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_col,v_val) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then v_msg:=v_msg||v_qmsg||''<br>''; end if;',
'',
'                  elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                      v_val:=''''''''||v_val||'''''''';',
'                      v_val2:=''''''''||v_val2||'''''''';',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_col,v_val),v_col2,v_val2) into v_cond1;',
'',
'                      if v_cond1 = 1 and (length(v_msg) < 2500 or length(v_msg) is null) then v_msg:=v_msg||v_qmsg||''<br>''; end if;',
'',
'                  elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                      v_val:=''''''''||v_val||'''''''';',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_col,v_val),v_col2,v_val2) into v_cond1;',
'',
'                      if v_cond1 = 1 then v_msg:=v_msg||v_qmsg||''<br>''; end if;',
'                      ',
'                  elsif v_val is not null  and j.query_type=''SPMI'' and j.condition1 not in (''in'',''not in'') and j.value1 is not null and j.value2 is null then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'                      if v_itmtyp1 in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'',''NUMBER'') THEN v_val2:=''''''''||v_val2||''''''''; end if;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''')'' query_condition',
'                      into v_cond1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                      SELECT COL2||'' ''||CONDITION2 query_condition into v_cond2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond2,v_col2,v_val2) into v_cond2;',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_col,v_val) into v_cond1;',
'',
'                      if v_cond1=1 and v_cond2 = 1 then v_msg:=v_msg||v_qmsg||''<br>''; end if;',
'',
'                  elsif v_val is not null  and j.query_type=''SPMI'' then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if; if v_itmtyp1 in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val2:=''''''''||v_val2||'''''''';'
||' end if;',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_col2,v_val2),v_col,v_val) into v_cond1;',
'',
'                      if v_cond1 = 1 then v_msg:=v_msg||v_qmsg||''<br>''; end if;',
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
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_itmseq1 from edc_crf_items where crf_id=v_cid and study_id=v_stdy',
'            and item_seq = (select nvl(min(item_seq),0) from edc_crf_items where crf_id=v_cid and item_seq > v_itmseq);',
'            v_itmseq:=v_itmseq1;',
'        end if;',
'',
'    end loop;',
'',
'    if v_msg is NULL then v_msg:=''Action Processed''; end if;',
'    :P100_MSG:=v_msg;',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE:=''<span style=color:red>''||v_msg||''<br></span>'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2688613277017063852
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3790161672816114091)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sql varchar2(1000);',
'v_cnt1 number;',
'v_qry_cnt number;',
'v_max_audit_log_id number;',
'v_ex_new_value varchar2(10);',
'v_pk_col VARCHAR2(100);',
'V_CRF_TABLE_NAME VARCHAR2(100);',
'begin',
'    ',
'    select count(1) into v_qry_cnt',
'    from edc_crf_queries',
'    where crf_id = :P100_CRF_ID',
'    and qry_status in (''Open'',''Reopened'')',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    select crf_table_pk_col,crf_table_name',
'    into v_pk_col, v_crf_table_name ',
'    from EDC_CRF_MASTER',
'    where crf_id = :P100_CRF_ID',
'    and crf_short_name = :P100_CRF_SHORT_NAME',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    select count(1) into v_cnt1 from audit_trail            --section status audit exists or not',
'    where table_name = :P100_CRF_TABLE_NAME',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and column_name = ''SECTION_STATUS''',
'    and study_id = :APP_EDC_STUDY_ID;',
'      ',
'    if v_qry_cnt = 0 then',
'    ',
'        if v_cnt1 > 0 then',
'            execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                              where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                              ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                              ''and column_name = ''''SECTION_STATUS'''' ',
'                               and table_name = ''''''||:P100_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                              ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                              ''and table_pk_value = ''||:P100_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'            commit;',
'        else',
'            v_max_audit_log_id := 0;',
'        end if;',
'',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'',
'        IF v_ex_new_value != 4.5 or v_ex_new_value is null THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P100_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',100,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',4.5,''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P100_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF;',
'    ',
'        l_sql := ''update ''|| v_crf_table_name||'' set SECTION_STATUS = 4.5,UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'        where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
'',
'        execute immediate l_sql;',
'        commit;',
'    ',
'    end if;',
'    ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2689210904674609998
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3790161543539114090)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRA Review'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sql varchar2(1000);',
'v_cnt1 number;',
'v_max_audit_log_id number;',
'v_ex_new_value varchar2(10);',
'v_pk_col VARCHAR2(100);',
'V_CRF_TABLE_NAME VARCHAR2(100);',
'begin',
'    ',
'    select crf_table_pk_col,crf_table_name',
'    into v_pk_col, v_crf_table_name ',
'    from EDC_CRF_MASTER',
'    where crf_id = :P100_CRF_ID',
'    and crf_short_name = :P100_CRF_SHORT_NAME',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    select count(1) into v_cnt1 from audit_trail            --section status audit exists or not',
'    where table_name = :P100_CRF_TABLE_NAME',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and column_name = ''SECTION_STATUS''',
'    and study_id = :APP_EDC_STUDY_ID;',
'      ',
'    --if v_cnt1 > 0 then',
'    ',
'        if v_cnt1 > 0 then',
'            execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                              where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                              ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                              ''and column_name = ''''SECTION_STATUS'''' ',
'                               and table_name = ''''''||:P100_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                              ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                              ''and table_pk_value = ''||:P100_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'            commit;',
'        else',
'            v_max_audit_log_id := 0;',
'        end if;',
'',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'',
'        IF v_ex_new_value != 6 or v_ex_new_value is null THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P100_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',100,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',6,''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P100_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF;',
'        ',
'    --end if;',
'        ',
'    l_sql := ''update ''|| v_crf_table_name||'' set SECTION_STATUS = 6, UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'    where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
'                    ',
'    execute immediate l_sql;',
'    commit;',
'    ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''CRA_REVIEW'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2689210775397609997
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173219598903917303)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Schedule Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'EDC_WORKFLOW.update_schedule_status_web(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4072268830762413210
,p_process_comment=>'Request is contained in value :''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5174278464655460993)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Schedule and Redirect'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_SCHEDULE_ID EDC_PATIENT_SCHEDULE_PARAMS.SCHEDULE_ID%TYPE;',
'V_TMP NUMBER;',
'v_patient_diary number;',
'V_CRF_ID NUMBER;',
'V_STUDY_SITE_ID NUMBER;',
'v_next_schedule_disp_seq NUMBER;',
'V_NEXT_SCHEDULE_NAME VARCHAR2(100);',
'V_SCHEDULE_NAME VARCHAR2(100);',
'',
'begin',
'    ',
'    SELECT STUDY_SITE_ID INTO V_STUDY_SITE_ID',
'    FROM EDC_PATIENT_PROFILE',
'    WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID;',
'',
'    select disp_seq+1 into v_next_schedule_disp_seq',
'    from edc_patient_schedule_params',
'    where SCHEDULE_NAME = :APP_EDC_SCHEDULE_NAME',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    select SCHEDULE_NAME into V_NEXT_SCHEDULE_NAME',
'    from edc_patient_schedule_params',
'    where SCHEDULE_ID = (select SCHEDULE_ID from edc_patient_schedule_params where disp_seq = v_next_schedule_disp_seq and study_id = :APP_EDC_STUDY_ID);',
'   ',
'    select SCHEDULE_ID,SCHEDULE_NAME',
'    INTO V_SCHEDULE_ID,V_SCHEDULE_NAME',
'    from edc_patient_schedule_params',
'    WHERE SCHEDULE_NAME = V_NEXT_SCHEDULE_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'    select count(*) INTO V_TMP ',
'    from edc_patient_diary',
'    where UPPER(schedule_title)=UPPER(V_SCHEDULE_NAME) ',
'    and patient_profile_id=:APP_PATIENT_PROFILE_ID',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    IF V_TMP=0 THEN',
'    ',
'         INSERT INTO EDC_PATIENT_DIARY(PATIENT_PROFILE_ID, SCHEDULE_TITLE, SCHEDULE_STATUS, SCHEDULE_ID, STUDY_ID)',
'         VALUES(:APP_PATIENT_PROFILE_ID, V_SCHEDULE_NAME, 2,V_SCHEDULE_ID, :APP_EDC_STUDY_ID );',
'         COMMIT;',
'        ',
'         SELECT PATIENT_DIARY_ID INTO :APP_EDC_PATIENT_DIARY_ID',
'         FROM EDC_PATIENT_DIARY',
'         WHERE UPPER(SCHEDULE_TITLE) = UPPER(V_SCHEDULE_NAME)',
'         AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID',
'         AND STUDY_ID = :APP_EDC_STUDY_ID;',
'         ',
'         SELECT MIN(CRF_ID) INTO V_CRF_ID',
'         FROM EDC_PATIENT_DIARY_PAGES',
'         WHERE SCHEDULE_ID = V_SCHEDULE_ID',
'         AND STUDY_ID = :APP_EDC_STUDY_ID;',
'         ',
'    ELSE',
'         ',
'         SELECT MAX(PATIENT_DIARY_ID) INTO v_patient_diary FROM EDC_PATIENT_DIARY WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID;',
'    ',
'    END IF;',
'    ',
'    APEX_UTIL.REDIRECT_URL(''f?p='' || v(''APP_ID'') || '':100:'' || v(''SESSION'')||''::NO:100:APP_EDC_SCHEDULE_NAME,APP_PATIENT_PROFILE_ID,APP_EDC_STUDY_SITE_ID:''||V_SCHEDULE_NAME||'',''||:APP_PATIENT_PROFILE_ID||'',''||V_STUDY_SITE_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4073327696513956900
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173223921671917300)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set CRF Page Name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_pkid number;',
'    V_CNT1 NUMBER;',
'    V_SCHEDULE_ID NUMBER;',
'    V_CRF_ID NUMBER;',
'begin',
'',
'    SELECT COUNT(1) INTO V_CNT1',
'    FROM EDC_PATIENT_DIARY',
'    WHERE UPPER(SCHEDULE_TITLE) = UPPER(:APP_EDC_SCHEDULE_NAME)',
'    AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID',
'    AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'    IF :P100_CRF_ID = 0 THEN',
'        SELECT MIN(CRF_ID) INTO V_CRF_ID',
'        FROM EDC_PATIENT_DIARY_PAGES',
'        WHERE UPPER(SCHEDULE_NAME) = UPPER(:APP_EDC_SCHEDULE_NAME)',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'        ',
'        :P100_CRF_ID := V_CRF_ID;',
'    ELSE',
'        V_CRF_ID := :P100_CRF_ID;',
'    END IF;',
'    ',
'    IF V_CNT1 > 0 THEN',
'    ',
'        SELECT PATIENT_DIARY_ID INTO :APP_EDC_PATIENT_DIARY_ID',
'        FROM EDC_PATIENT_DIARY',
'        WHERE UPPER(SCHEDULE_TITLE) = UPPER(:APP_EDC_SCHEDULE_NAME)',
'        AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'        ',
'    ELSE',
'    ',
'        SELECT SCHEDULE_ID INTO V_SCHEDULE_ID',
'        FROM EDC_PATIENT_SCHEDULE_PARAMS',
'        WHERE UPPER(SCHEDULE_NAME) = UPPER(:APP_EDC_SCHEDULE_NAME)',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'        INSERT INTO EDC_PATIENT_DIARY(PATIENT_PROFILE_ID, SCHEDULE_TITLE, SCHEDULE_STATUS, SCHEDULE_ID, STUDY_ID)',
'        VALUES(:APP_PATIENT_PROFILE_ID, :APP_EDC_SCHEDULE_NAME, 2,V_SCHEDULE_ID, :APP_EDC_STUDY_ID );',
'        COMMIT;',
'        ',
'        SELECT PATIENT_DIARY_ID INTO :APP_EDC_PATIENT_DIARY_ID',
'        FROM EDC_PATIENT_DIARY',
'        WHERE UPPER(SCHEDULE_TITLE) = UPPER(:APP_EDC_SCHEDULE_NAME)',
'        AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'    END IF;',
'',
'    select crf_name,crf_short_name,crf_table_name, crf_Table_pk_col',
'    into :P100_CRF_PAGE_NAME, :P100_CRF_SHORT_NAME, :P100_CRF_TABLE_NAME, :P100_CRF_TABLE_PK_COL',
'    from edc_crf_master',
'    where crf_id = V_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID',
'    and parent_page is null;        ',
'    ',
'    execute immediate ''select count(1) from ''||:P100_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;',
'    ',
'    if v_cnt = 1 then',
'        execute immediate ''select ''||:P100_CRF_TABLE_PK_COL||'' from ''||:P100_CRF_TABLE_NAME||'' where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID',
'        into :P100_CRF_TABLE_PK_VAL;',
'    else',
'        :P100_CRF_TABLE_PK_VAL := NULL;',
'    end if;        ',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4072273153530413207
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173222395566917302)
,p_process_sequence=>120
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRF Audit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    execute immediate ''SELECT COUNT(1) FROM EDC_CRF_''||:P100_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'    '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'    '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID INTO :P100_COUNT;   ',
'    ',
'    IF :P100_COUNT > 0 THEN',
'    ',
'    /*execute immediate ''select SECTION_STATUS, CREATED_BY, TO_CHAR(CREATED_ON,''''DD-MON-YYYY HH24:MI:SS''''), UPDATED_BY, ',
'    TO_CHAR(UPDATED_ON,''''DD-MON-YYYY HH24:MI:SS'''') FROM EDC_CRF_''||:P100_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'    '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'    '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID ',
'    INTO :P100_SECTION_STATUS, :P100_CREATED_BY, :P100_CREATED_ON, :P100_UPDATED_BY, :P100_UPDATED_ON;*/',
'    ',
'    execute immediate ''select SECTION_STATUS, CREATED_BY, TO_CHAR(CREATED_ON,''''dd-mm-rrrr hh24:mi:ss''''), UPDATED_BY, ',
'    TO_CHAR(UPDATED_ON,''''dd-mm-rrrr hh24:mi:ss'''') FROM EDC_CRF_''||:P100_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'    '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'    '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID',
'    INTO :P100_SECTION_STATUS, :P100_CREATED_BY, :P100_CREATED_ON, :P100_UPDATED_BY, :P100_UPDATED_ON;',
'    ',
'    END IF;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4072271627425413209
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173224737159917298)
,p_process_sequence=>130
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set P100_ENDIS_SCRIPT'
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
'        where CRF_ID = :P100_CRF_ID',
'    )',
'    LOOP',
'        ',
'            --v_script1 := '''';',
'            ',
'            select count(1) into v_cnt',
'            from EDC_CRF_ITEMS_ENDIS',
'            WHERE CRF_SHORT_NAME = :P100_CRF_SHORT_NAME',
'            AND CRF_ID = :P100_CRF_ID',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND ITEM_ID = i.item_id',
'            order by ITEM_TOBE_ENDIS;',
'            ',
'            select item_type into v_item_type',
'            from edc_crf_items',
'            where crf_id = :P100_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_id = i.item_id;',
'            ',
'            if v_cnt > 0 then ',
'',
'                for m in ( select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS',
'                from EDC_CRF_ITEMS_ENDIS',
'                WHERE CRF_SHORT_NAME = :P100_CRF_SHORT_NAME',
'                AND CRF_ID = :P100_CRF_ID',
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
'                    where crf_id = :P100_CRF_ID',
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
'    select v_script1 into :P100_ENDIS_SCRIPT from dual;',
'   ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4072273969018413205
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173225593063917298)
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
'    :P509_CRF_ID := NULL;',
'    :P510_CRF_ID := NULL;',
'    :P518_CRF_ID := NULL;',
'    :P519_CRF_ID := NULL;',
'',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4072274824922413205
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173217957264917304)
,p_process_sequence=>210
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Values to SAVE_RADIO on page load'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_cnt2 number;',
'    v_srid number;',
'    v_user_id number;    ',
'    v_field_val varchar2(500);',
'    v_gender varchar2(100);',
'begin',
'    select count(1) into v_cnt',
'    from edc_crf_items',
'    where crf_id = :P100_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID',
'    and item_type = ''RADIO BUTTON'';',
'    ',
'    if v_cnt > 0 AND :P100_CRF_TABLE_PK_VAL IS NULL then',
'        ',
'        for i in (select item_id, column_name from edc_crf_items',
'                 where crf_id = :P100_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                 ',
'            delete from SAVE_RADIO',
'            WHERE UPPER(FIELD_NAME) = UPPER(i.column_name)',
'            AND CRF_ID = :P100_CRF_ID',
'            AND USER_ID = :APP_EDC_USER',
'            AND USER_NAME = :APP_USER_NAME',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'            AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'            commit;',
'                 ',
'            insert into save_radio(field_name, field_val,user_id, user_name, crf_id, study_id,PATIENT_DIARY_ID, patient_profile_id) ',
'            values(UPPER(i.column_name), null, :APP_EDC_USER, :APP_USER_NAME, :P100_CRF_ID, :APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID, :P37_PATIENT_PROFILE_ID);',
'            commit;',
'',
'        end loop;',
'        ',
'    elsif v_cnt > 0 and :P100_CRF_TABLE_PK_VAL IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt1 from SAVE_RADIO',
'        where user_name = :APP_USER_NAME',
'        and user_id = :APP_EDC_USER',
'        and crf_id = :P100_CRF_ID',
'        and study_id = :APP_EDC_STUDY_ID',
'        and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        and patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'        if v_cnt1 = 0 then        --insert values from crf table in save_Radio table',
'            ',
'            for i in (select column_name, item_id from edc_crf_items',
'                 where crf_id = :P100_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                ',
'                execute immediate ''select ''||i.column_name||'' from ''||:P100_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_field_val;',
'                 ',
'                insert into save_radio(field_name, field_val,user_id, user_name, crf_id, study_id,PATIENT_DIARY_ID, patient_profile_id) ',
'                values(UPPER(i.column_name), v_field_val, :APP_EDC_USER, :APP_USER_NAME, :P100_CRF_ID, :APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID, :P37_PATIENT_PROFILE_ID);',
'                commit;',
'',
'            end loop;',
'            ',
'        elsif v_cnt1 > 0 then          --update values from crf table in save_Radio table',
'        ',
'            for i in (select column_name, item_id from edc_crf_items',
'                 where crf_id = :P100_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                 ',
'                execute immediate ''select ''||i.column_name||'' from ''||:P100_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_field_val;',
'                ',
'                update save_radio set field_val = v_field_val where UPPER(field_name) = UPPER(i.column_name)',
'                and user_name = :APP_USER_NAME',
'                and user_id = :APP_EDC_USER',
'                and crf_id = :P100_CRF_ID',
'                and study_id = :APP_EDC_STUDY_ID',
'                and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'                and patient_profile_id = :P37_PATIENT_PROFILE_ID;',
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
,p_internal_uid=>4072267189123413211
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3790160694849114081)
,p_process_sequence=>220
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P100_QRY_COUNT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    if :APP_EDC_ROLE_ID = 16 THEN',
'    ',
'        SELECT COUNT(*) INTO :P100_QRY_COUNT',
'        FROM edc_crf_queries',
'        where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        AND PAGE_ID = :APP_PAGE_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID',
'        AND CRF_ID = :P100_CRF_ID',
'        AND QRY_STATUS in (''Open'',''Reopened'')',
'        --AND ROLE_ID = :APP_EDC_ROLE_ID',
'        AND TBL_PK_ID = :P100_CRF_TABLE_PK_VAL;',
'        ',
'    elsif :APP_EDC_ROLE_ID in (27,17) THEN',
'        ',
'        SELECT COUNT(*) INTO :P100_QRY_COUNT',
'        FROM edc_crf_queries',
'        where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        AND PAGE_ID = :APP_PAGE_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID',
'        AND CRF_ID = :P100_CRF_ID',
'        AND QRY_STATUS in (''Open'',''Responded'',''Reopened'')',
'        AND (ROLE_ID = :APP_EDC_ROLE_ID OR ROLE_ID IS NULL)',
'        AND TBL_PK_ID = :P100_CRF_TABLE_PK_VAL;',
'    ',
'    end if;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2689209926707609988
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173217595181917304)
,p_process_sequence=>190
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_RADIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    delete from SAVE_RADIO',
'    WHERE FIELD_NAME = :P100_FIELD_NAME',
'    AND CRF_ID = :P100_CRF_ID',
'    AND USER_ID = :APP_EDC_USER',
'    AND USER_NAME = :APP_USER_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID',
'    AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'    ',
'    commit;',
'    ',
'    insert into SAVE_RADIO(FIELD_NAME, FIELD_VAL, CRF_ID, USER_ID, USER_NAME, STUDY_ID, PATIENT_DIARY_ID, PATIENT_PROFILE_ID) ',
'    values (:P100_FIELD_NAME, :P100_FIELD_VAL, :P100_CRF_ID, :APP_EDC_USER, :APP_USER_NAME, :APP_EDC_STUDY_ID, :APP_EDC_PATIENT_DIARY_ID, :P37_PATIENT_PROFILE_ID);',
'    commit;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4072266827040413211
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173218354777917303)
,p_process_sequence=>200
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_RADIO_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    delete from SAVE_RADIO',
'    WHERE FIELD_NAME = :P100_FIELD_NAME',
'    AND CRF_ID = :P100_CRF_ID',
'    AND USER_ID = :APP_EDC_USER',
'    AND USER_NAME = :APP_USER_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID',
'    AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'    ',
'    commit;',
'    ',
'    insert into SAVE_RADIO(FIELD_NAME, FIELD_VAL, CRF_ID, USER_ID, USER_NAME, STUDY_ID, PATIENT_DIARY_ID, PATIENT_PROFILE_ID) ',
'    values (:P100_FIELD_NAME, null, :P100_CRF_ID, :APP_EDC_USER, :APP_USER_NAME, :APP_EDC_STUDY_ID, :APP_EDC_PATIENT_DIARY_ID, :P37_PATIENT_PROFILE_ID);',
'    commit;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4072267586636413210
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173223522816917300)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process to save values to table and audit trail'
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
'    execute immediate ''select count(1) from EDC_CRF_''||:P100_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'    '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;',
'    ',
'    select count(1) into v_cnt1',
'    from edc_crf_items',
'    where crf_id = :P100_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    if v_cnt = 0 then     --insert data in the table',
'    ',
'      :P100_ACTION := ''INSERT'';',
'      ',
'      execute immediate ''select nvl(max(''||:P100_CRF_TABLE_PK_COL||''),0)+1 from ''||:P100_CRF_TABLE_NAME into :P100_CRF_TABLE_PK_VAL;',
'      commit;',
'    ',
'      select crf_table_pk_col,crf_table_name into v_pk_col, v_crf_table_name ',
'      from EDC_CRF_MASTER',
'      where crf_id = :P100_CRF_ID',
'      and crf_short_name = :P100_CRF_SHORT_NAME',
'      and study_id = :APP_EDC_STUDY_ID;',
'      ',
'      select item_id,item_seq into v_item_id,v_item_seq',
'      from edc_crf_items',
'      where crf_id = :P100_CRF_ID',
'      and study_id = :APP_EDC_STUDY_ID',
'      and item_seq = (select min(item_seq) from edc_crf_items where crf_id = :P100_CRF_ID',
'                      and study_id = :APP_EDC_STUDY_ID);',
'      ',
'      v_sql := ''insert into ''||v_crf_table_name||'' (''||v_pk_col||'',STUDY_ID,PATIENT_DIARY_ID,SECTION_STATUS, CREATED_BY, CREATED_ON)',
'      VALUES(''||:P100_CRF_TABLE_PK_VAL||'',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||'',''||:P100_SECTION_STATUS||'',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''))'';',
'',
'      execute immediate v_sql;',
'      commit;',
'                ',
'      --for i in 1..apex_application.g_f01.count loop',
'      for i in 1..v_cnt1 loop',
'                ',
'        select column_name,item_type,item_seq into v_column_name,v_item_type,v_item_seq2',
'        from edc_crf_items',
'        where item_id = v_item_id',
'        and crf_id = :P100_CRF_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'                   ',
'        if v_item_type != ''RADIO BUTTON'' then',
'            v_value := apex_application.g_f01(j);',
'            --v_value := apex_application.g_f01.count;',
'            j := j + 1;',
'        elsif v_item_type = ''RADIO BUTTON'' then',
'            execute immediate ''select field_val from save_radio where field_name = ''''''||v_column_name||'''''' and user_id = ''||:APP_EDC_USER||'' and user_name = ''''''||:APP_USER_NAME||',
'            '''''' and crf_id = ''||:P100_CRF_ID||'' and study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID into v_value;',
'            ',
'            select count(1) into v_cnt2',
'            from edc_crf_items',
'            where crf_id = :P100_CRF_ID',
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
'            l_sql := ''update ''|| v_crf_table_name||'' set ''||v_column_name||'' = TO_DATE(SYSDATE||''''''||'' ''||v_value||'''''',''''DD-MM-YY HH24:MI'''') where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
'            execute immediate l_sql;',
'            commit;',
'        elsif v_item_type != ''LABEL'' then            ',
'            l_sql := ''update ''|| v_crf_table_name||'' set ''||v_column_name||'' = ''''''||v_value||'''''' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
'            execute immediate l_sql;',
'            commit;',
'        end if;            ',
'        ',
'        if v_item_type != ''LABEL'' then',
'        ',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P100_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',100,''''''||v_column_name||'''''',NULL,''''''||v_value||'''''',''''''||:P100_ACTION||'''''',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''),NULL,''||:P100_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'            ',
'        end if;',
'                    ',
'        if i < v_cnt1 then',
'        ',
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_item_seq1',
'            from edc_crf_items',
'            where crf_id = :P100_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_seq = (select nvl(min(item_seq),0) from edc_crf_items',
'                            where crf_id = :P100_CRF_ID',
'                            and study_id = :APP_EDC_STUDY_ID',
'                            and item_seq > v_item_seq);',
'',
'            v_item_seq := v_item_seq1;',
'            ',
'        end if;',
'                    ',
'      end loop;',
'      ',
'      /*l_sql := ''update ''|| v_crf_table_name||'' set section_status = ''||:P100_SECTION_STATUS||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
'      execute immediate l_sql;',
'      commit;',
'      ',
'      l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'      USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'      values(''''''||:P100_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'      '',100,''''SECTION_STATUS'''',NULL,''''''||:P100_SECTION_STATUS||'''''',''''''||:P100_ACTION||'''''',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''),NULL,''||:P100_CRF_TABLE_PK_VAL||'')'';',
'      execute immediate l_sql;',
'      commit;*/',
'    ',
'    elsif v_cnt = 1 then            --update data in the table P100_CRF_TABLE_PK_VAL',
'    ',
'      :P100_ACTION := ''UPDATE'';',
'        ',
'      execute immediate ''select ''||:P100_CRF_TABLE_PK_COL||'' from ''||:P100_CRF_TABLE_NAME||',
'      '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into :P100_CRF_TABLE_PK_VAL;',
'      commit;',
'    ',
'      select crf_table_pk_col,crf_table_name into v_pk_col, v_crf_table_name ',
'      from EDC_CRF_MASTER',
'      where crf_id = :P100_CRF_ID',
'      and crf_short_name = :P100_CRF_SHORT_NAME',
'      and study_id = :APP_EDC_STUDY_ID;',
'      ',
'      select item_id,item_seq into v_item_id,v_item_seq',
'      from edc_crf_items',
'      where crf_id = :P100_CRF_ID',
'      and study_id = :APP_EDC_STUDY_ID',
'      and item_seq = (select min(item_seq) from edc_crf_items where crf_id = :P100_CRF_ID',
'                      and study_id = :APP_EDC_STUDY_ID);',
'                ',
'      --for i in 1..apex_application.g_f01.count loop',
'      for i in 1..v_cnt1 loop',
'',
'        select column_name,item_type,item_seq into v_column_name,v_item_type,v_item_seq2',
'        from edc_crf_items',
'        where item_id = v_item_id',
'        and crf_id = :P100_CRF_ID',
'        and study_id = :APP_EDC_STUDY_ID;',
'               ',
'        /*if v_item_type != ''LABEL'' then           ',
'            execute immediate ''select ''||v_column_name||'' from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_db_value;',
'        ',
'            v_value := apex_application.g_f01(i);        ',
'            v_value1 := apex_application.g_f03(i);',
'        end if;            */',
'        ',
'        if v_item_type not in (''RADIO BUTTON'') then',
'            if v_item_type not in (''TIME'',''LABEL'') then',
'                execute immediate ''select ''||v_column_name||'' from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_db_value;',
'            elsif v_item_type != ''LABEL'' then',
'                execute immediate ''select to_char(''||v_column_name||'',''''HH24:MI'''') from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_db_value;',
'            end if;                ',
'        ',
'            v_value := apex_application.g_f01(j);',
'            v_value1 := apex_application.g_f03(i);',
'            j := j + 1;',
'        elsif v_item_type = ''RADIO BUTTON'' then',
'            ',
'            execute immediate ''select ''||v_column_name||'' from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_db_value;',
'',
'             execute immediate ''select field_val from save_radio where field_name = ''''''||v_column_name||'''''' and user_id = ''||:APP_EDC_USER||'' and user_name = ''''''||:APP_USER_NAME||',
'            '''''' and crf_id = ''||:P100_CRF_ID||'' and study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID into v_value;',
'            ',
'            v_value1 := apex_application.g_f03(i);',
'            ',
'            select count(1) into v_cnt2',
'            from edc_crf_items',
'            where crf_id = :P100_CRF_ID',
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
'            l_sql := ''update ''|| v_crf_table_name||'' set ''||v_column_name||'' = TO_DATE(SYSDATE||''''''||'' ''||v_value||'''''',''''DD-MM-YY HH24:MI'''') where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
'            execute immediate l_sql; ',
'            commit;',
'        elsif v_item_type != ''LABEL'' then     ',
'            l_sql := ''update ''|| v_crf_table_name||'' set ''||v_column_name||'' = ''''''||v_value||'''''' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
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
'                        ''and column_name = ''''''||v_column_name||''''''and table_name = ''''''||:P100_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                        ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                        ''and table_pk_value = ''||:P100_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
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
'                values(''''''||:P100_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                '',100,''''''||v_column_name||'''''',''''''||v_ex_new_value||'''''',''''''||v_value||'''''',''''''||:P100_ACTION||'''''',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''),''''''||v_value1||'''''','
||'''||:P100_CRF_TABLE_PK_VAL||'')'';',
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
'            where crf_id = :P100_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_seq = (select nvl(min(item_seq),0) from edc_crf_items',
'                            where crf_id = :P100_CRF_ID',
'                            and study_id = :APP_EDC_STUDY_ID',
'                            and item_seq > v_item_seq);',
'',
'            v_item_seq := v_item_seq1;',
'            ',
'        end if;',
'                    ',
'      end loop; ',
'      ',
'      l_sql := ''update ''|| v_crf_table_name||'' set UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'      where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
'                    ',
'      execute immediate l_sql;',
'      commit;',
'      ',
'      /*execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where patient_visit_id = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||:P100_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||:P100_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'        commit;      ',
'',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'        ',
'        IF v_ex_new_value != :P100_SECTION_STATUS THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_VISIT_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P100_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',100,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''||:P100_SECTION_STATUS||'',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P100_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF;*/',
'    ',
'    end if;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed'
,p_internal_uid=>4072272754675413207
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789563913153567944)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process to save queries_SPSI_SPMI_CP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(10000); v_cnt number; v_cnt1 number; v_cnt2 number; v_cnt3 number; v_cnt4 number; v_cnt5 number; v_tblnm varchar2(300); v_itmid number; v_col varchar2(20); v_itmtyp1 varchar2(500); v_ppid number:=:APP_PATIENT_PROFILE_ID; v_itmlbl v'
||'archar2(2000);',
'    v_val varchar2(400); v_val1 varchar2(400); v_val2 varchar2(400); v_val3 varchar2(400);m number; n number; v_pkval number; v_con1 varchar2(2000); v_con2 varchar2(2000); v_qmsg varchar2(20000); v_qmsg1 varchar2(20000);',
'    v_itmseq number; v_itmseq1 number; v_itmseq2 number; v_itmtyp varchar2(300); v_col2 varchar2(500);v_stdy number:=:APP_EDC_STUDY_ID; v_csn varchar2(20):=:P100_CRF_SHORT_NAME; v_cid number:=:P100_CRF_ID; v_pdid number:=:APP_EDC_PATIENT_DIARY_ID; p '
||'number:=1;',
'begin',
'',
'    execute immediate ''select count(1) from EDC_CRF_''||v_csn||v_stdy||'' where patient_diary_id=''||v_pdid into v_cnt;',
'',
'    select count(1) into v_cnt2 from edc_crf_items where crf_id=v_cid and study_id=v_stdy;',
'    ',
'    if v_cnt=0 then execute immediate ''select nvl(max(''||:P100_CRF_TABLE_PK_COL||''),0)+1 from ''||:P100_CRF_TABLE_NAME into :P100_CRF_TABLE_PK_VAL;',
'    elsif v_cnt=1 then execute immediate ''select ''||:P100_CRF_TABLE_PK_COL||'' from ''||:P100_CRF_TABLE_NAME||'' where patient_diary_id=''||v_pdid||'' and study_id=''||v_stdy into v_pkval;',
'    end if; commit;',
'',
'    l_sql:=''update edc_crf_queries set qry_status=''''Closed'''' where study_id=''||v_stdy||''and patient_diary_id=''||v_pdid||''and patient_profile_id=''||v_ppid||'' and page_id=100 and qry_status=''''Open'''' and auto_flag=''''A'''' and crf_id=''||v_cid||'' and crf_sh'
||'ort_name=''''''||v_csn||'''''''';',
'    execute immediate l_sql; commit;',
'',
'    select item_id,item_seq into v_itmid,v_itmseq from edc_crf_items where crf_id=v_cid and item_seq=(select min(item_seq) from edc_crf_items where crf_id=v_cid and study_id=v_stdy);',
'',
'    for i in 1..v_cnt2 loop',
'',
'      select column_name,item_type,item_seq,item_label into v_col,v_itmtyp,v_itmseq2,v_itmlbl from edc_crf_items where item_id=v_itmid and crf_id=v_cid AND study_id=v_stdy;',
'',
'      select count(1) into v_cnt1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'');',
'',
'      if v_cnt1 > 0 then',
'',
'        for j in (select query_id,col1,value1,condition1,query_type,condition2,visit_title,col2,value2,crf_id1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'')) loop',
'        v_con1:='''';',
'',
'          if j.visit_title=''All'' or j.visit_title=:APP_EDC_VISIT_NAME then',
'',
'              if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg into v_con1,v_qmsg fro'
||'m EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'',''UNKNOWN DATE'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                SELECT COL1||'' ''||condition1,query_msg into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPSI'' THEN',
'',
'                SELECT COL1||'' ''||CONDITION1||'' (''||col2||'')'',query_msg into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' then',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||COL2,query_msg into v_con1,v_qmsg from EDC_QUERIES w'
||'here col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPSI'' then',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''in'',''IN (''||Col2||'')'',''not in'',''NOT IN (''||Col2||'')'',condition1) ||'' '',query_msg into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.col2 is not null and j.value2 is null and j.value1 is null THEN',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg,col2',
'                into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is not null and j.value2 is null THEN',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||CONDITION'
||'2 query_condition,query_msg,col2',
'                into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''in'',''not in'') and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||',
'                DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' u'
||'pper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is not null and j.value2 is null THEN',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 query_con'
||'dition,query_msg,col2',
'                into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'                  ',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is null THEN',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''''''||COL2||'''''' '' query_condition,query_msg,col2 into v_'
||'con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                SELECT COL1||'' ''||CONDITION1||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1||'' and ''||COL2||'' ''||',
'                DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||VALUE2||'''''')'' query_condition,query_msg,col2',
'                into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                SELECT COL1||'' ''||CONDITION1||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VA'
||'LUE2||'''''''' query_condition,query_msg,col2',
'                into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is not null THEN',
'',
'                SELECT COL1||'' ''||CONDITION1 ||'' and ''''''||COL2||'''''' ''||DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' q'
||'uery_condition,query_msg,col2',
'                into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is null THEN',
'',
'                SELECT COL1||'' ''||CONDITION1 ||'' and ''||COL2||'' ''||CONDITION2 query_condition,query_msg,col2 into v_con1,v_qmsg,v_col2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                if v_itmtyp!=''DATE'' then',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''''''''||v_val3||'''''' '' query_condition,query_msg into v_con1,'
||'v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; else',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''to_date(''''''||v_val3||'''''',''''DD-MM-YY'''') '' query_condition,'
||' query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if; end if;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||CONDITION1||''(''''''||v_val3||'''''')'' query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid  and col1=v_col and query_id=j.query_id;end if;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null'
||' THEN',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and''''''||v_val3||''''''''||',
'                DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg',
'                into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||CONDITION1||''(''||value1||'')''||'' and''''''||v_val3||''''''''||DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' up'
||'per(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' ''||v_val3 query_condition,query_msg into v_con1,v_qmsg f'
||'rom EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||CONDITION1||''(''||v_val3||'')'' query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg fr'
||'om EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'      ',
'              elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||CONDITION1||'' (''||j.value1||'') and''''''||v_val3||''''''''||DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upp'
||'er(''''''||j.value2||'''''')'' query_condition,query_msg',
'                into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is not null and j.value2 is not null THE'
||'N',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||''''''''||DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2'
||'||'''''')'' query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 is not null and j.query_type=''CP'' and j.value1 is not null and j.condition2 in (''is null'',''is not null'') and j.value2 is null THE'
||'N',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and ''''''||v_val3||'''''' ''||CONDIT'
||'ION2  query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'',
'              elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') THEN',
'',
'                execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1 into v_tblnm;',
'',
'                execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_cnt3; if v_cnt3 > 0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id=''||v_pdid into v_val3;',
'',
'                SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||'''''' ''||CONDITION2  query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where col1=v_col and query_id=j.query_id;end if;',
'',
'              end if;',
'',
'              if v_itmtyp != ''RADIO BUTTON'' then',
'                execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO,COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_cid||'' AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||v_col||'''''''' into p;',
'                if j.condition1 not in (''in'',''not in'') then v_val:=upper(apex_application.g_f01(p)); else v_val:=apex_application.g_f01(p); end if;',
'              elsif v_itmtyp=''RADIO BUTTON'' then',
'                execute immediate ''select upper(field_val) from save_radio where field_name=''''''||v_col||'''''' and user_id=''||:APP_EDC_USER||'' and user_name=''''''||:APP_USER_NAME||'''''' and crf_id=''||v_cid||'' and study_id=''||v_stdy||'' and patient_diary_id='''
||'||v_pdid||'' and patient_profile_id=''||v_ppid into v_val;',
'              end if;',
'',
'              v_val1:=v_val;',
'',
'              if j.query_type=''SPMI'' then',
'',
'                select item_type into v_itmtyp1 from edc_crf_items where column_name=j.col2 and crf_id=v_cid;',
'',
'                if v_itmtyp1!=''RADIO BUTTON'' then',
'                execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO,COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_cid||'' AND STUDY_ID=''||v_stdy||'' AND ITEM_TYPE!=''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME ='''''''
||'||j.col2||'''''''' into n;',
'',
'                v_val2:=upper(apex_application.g_f01(n));',
'',
'                if v_val2 is null then v_val2:=null; end if;',
'',
'                elsif v_itmtyp1=''RADIO BUTTON'' then',
'                execute immediate ''select upper(field_val) from save_radio where field_name=''''''||j.col2||'''''' and user_id=''||:APP_EDC_USER_ID||'' and user_name=''''''||:APP_USER_NAME||'''''' and crf_id=''||v_cid||'' and study_id=''||v_stdy||'' and patient_diary_'
||'id=''||v_pdid||'' and patient_profile_id=''||v_ppid into v_val2;',
'                if v_val2 is null then v_val2:=null; end if;',
'',
'                end if;',
'',
'              end if;',
'',
'              if j.query_type=''SPSI'' and j.col2 is null and j.condition1 in (''is null'',''is not null'') then',
'',
'                v_val:=''''''''||v_val||'''''''';',
'                execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;',
'                INSERT INTO TEMP(V_TMP,VALUE1) VALUES(''j.query_id'',j.query_id);',
'                INSERT INTO TEMP(V_TMP,VALUE1) VALUES(''v_con1'',v_con1);',
'                commit;',
'                if v_con1=1 then v_val:=v_val1; l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||v_col||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; ',
'                execute immediate l_sql; COMMIT;end if;',
'',
'              elsif v_val is not null  and j.query_type=''SPSI'' then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN  v_val:=''''''''||v_val||'''''''';end if;',
'',
'                execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;',
'',
'                if v_con1=1 then v_val:=v_val1;l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||v_col||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;'';',
'                execute immediate l_sql; COMMIT;end if;',
'',
'              elsif j.value1 is null and j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                v_val:=''''''''||v_val||'''''''';',
'',
'                if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;end if;',
'',
'                if v_con1=1 then v_val:=v_val1; l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;'';',
'                execute immediate l_sql; COMMIT;end if;',
'',
'              elsif v_val is not null  and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||'''''''';end if;',
'',
'                if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1;end if;',
'',
'                if v_con1=1 then v_val:=v_val1; l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;'';',
'                execute immediate l_sql; COMMIT;end if;',
'',
'              elsif j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||'''''''';end if;',
'',
'                if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1;end if;',
'',
'                if v_con1=1 then v_val:=v_val1; l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;'';',
'                execute immediate l_sql; COMMIT;end if;',
'',
'              elsif v_val is not null  and j.query_type=''CP'' then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||'''''''';end if;',
'',
'                if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;end if;',
'',
'                if v_con1=1 then v_val:=v_val1; l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||j.col1||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; ',
'                execute immediate l_sql; COMMIT;end if;',
'',
'              elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                v_val:=''''''''||v_val||''''''''; v_val2:=''''''''||v_val2||'''''''';',
'',
'                execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1;',
'',
'                if v_con1=1 then v_val:=v_val1; l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;'';',
'                execute immediate l_sql; COMMIT;end if;  ',
'',
'              elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                v_val:=''''''''||v_val||'''''''';',
'',
'                execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1;',
'',
'                if v_con1=1 then v_val:=v_val1; l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;'';',
'                execute immediate l_sql; COMMIT;end if;',
'',
'              elsif v_val is not null and j.query_type=''SPMI'' and j.condition1 not in (''in'',''not in'') and j.value1 is not null and j.value2 is null then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||'''''''';end if; if v_itmtyp1 in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'',''NUMBER'') THEN v_val2:=''''''''||v_val2||'''''''
||''';end if;',
'',
'                SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''')'' query_condition into v_con1 fr'
||'om EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'                SELECT COL2||'' ''||CONDITION2 query_condition into v_con2 from EDC_QUERIES where col1=v_col and query_id=j.query_id;',
'',
'                execute immediate ''select count(1) from dual where ''||replace(v_con2,v_col2,v_val2) into v_con2; execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;',
'',
'                if v_con1=1 and v_con2=1 then v_val:=v_val1;',
'                l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;end if;',
'',
'              elsif v_val is not null  and j.query_type=''SPMI'' then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||'''''''';end if; if v_itmtyp1 in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val2:=''''''''||v_val2||'''''''';end if;',
'',
'                execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col2,v_val2),v_col,v_val) into v_con1;',
'',
'                if v_con1=1 then v_val:=v_val1; l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',100,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;'';',
'                execute immediate l_sql; COMMIT;end if;',
'',
'              end if;',
'',
'            end if;',
'',
'          end loop;',
'',
'        end if;',
'',
'        if i < v_cnt2 then select nvl(item_id,0),nvl(item_seq,0) into v_itmid,v_itmseq1 from edc_crf_items where crf_id=v_cid and item_seq=(select nvl(min(item_seq),0) from edc_crf_items where crf_id=v_cid and item_seq > v_itmseq); v_itmseq:=v_itmseq'
||'1; end if;',
'    end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2688613145012063851
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5238766589714115034)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P100_SECTION_STATUS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    V_NUM1 NUMBER;',
'    V_NUM2 NUMBER;',
'    V_NUM3 NUMBER;',
'    V_NUM4 NUMBER;',
'    V_NUM5 NUMBER;',
'    V_NUM6 NUMBER;',
'    V_DT1 DATE;',
'    V_DT2 DATE;',
'    V_DT3 DATE;',
'    V_DT4 DATE;',
'    V_VAL1 VARCHAR2(500);',
'    V_VAL2 VARCHAR2(500);',
'    V_VAL3 VARCHAR2(500);',
'    V_VAL4 VARCHAR2(500);',
'    V_VAL5 VARCHAR2(500);',
'    V_VAL6 VARCHAR2(500);',
'    V_VAL7 VARCHAR2(500);',
'    V_VAL8 VARCHAR2(500);',
'    V_VAL9 VARCHAR2(500);',
'    V_VAL10 VARCHAR2(500);',
'    V_VAL11 VARCHAR2(500);',
'    V_VAL12 VARCHAR2(500);',
'    V_VAL13 VARCHAR2(500);',
'    V_VAL14 VARCHAR2(500);',
'begin',
'    ',
'    if :P100_CRF_ID = 2 then        --Vital Signs',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_vs661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'',
'        if v_cnt > 0 then',
'',
'            select OTMO2RES1, OTMORTM, OTMMORRES, OTMO2R1TM, OTMHRTM, OTMHRRES, OTMO2RES2, OTMO2R2TM',
'            into V_NUM1, V_DT1, V_NUM2, V_DT2, V_DT3, V_NUM3, V_NUM4, V_DT4',
'            from edc_crf_vs661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'',
'            if V_NUM1 >= 94 then',
'',
'                if V_DT1 is not null and V_NUM2 is not null and V_NUM3 is not null and V_DT2 is not null and V_DT3 is not null then',
'',
'                    :P100_SECTION_STATUS := 3;',
'',
'                end if;',
'',
'            elsif V_NUM1 < 94 and V_NUM4 is not null then',
'',
'                if V_DT1 is not null and V_NUM2 is not null and V_NUM3 is not null and V_DT3 is not null and V_DT4 is not null and V_DT3 is not null then',
'',
'                    :P100_SECTION_STATUS := 3;',
'',
'                end if;',
'',
'            else',
'',
'                :P100_SECTION_STATUS := 2;',
'',
'            end if;',
'            ',
'        end if;',
'        ',
'    elsif :P100_CRF_ID = 4 then     --study medication administration',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_sma661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'        ',
'        if v_cnt > 0 then',
'            ',
'            select SDMDOSTKN, SDMTAB, SDMTIM, SDMSPEC',
'            into V_VAL1, V_NUM1, V_DT1, V_VAL2',
'            from edc_crf_sma661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'            ',
'            if (V_VAL1 = ''Yes'' AND V_NUM1 IS NOT NULL AND V_DT1 IS NOT NULL) or (V_VAL1 = ''No'' AND V_VAL2 is not null) then',
'',
'                :P100_SECTION_STATUS := 3;',
'    ',
'            else',
'        ',
'                :P100_SECTION_STATUS := 2;',
'    ',
'            end if;',
'',
'        end if;',
'    ',
'    elsif :P100_CRF_ID = 3 then        --Saliva Sample Collection',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_ssc661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'        ',
'        if v_cnt > 0 then',
'            ',
'            select SSCSAMP, SSCSPEC',
'            into V_VAL1, V_VAL2',
'            from edc_crf_ssc661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'            ',
'            if (V_VAL1 = ''Yes'') or (V_VAL1 = ''No'' AND V_VAL2 is not null) then',
'',
'                :P100_SECTION_STATUS := 3;',
'',
'            else',
'',
'                :P100_SECTION_STATUS := 2;',
'',
'            end if;',
'',
'        end if;',
'    ',
'    elsif :P100_CRF_ID = 6 then        --Global Daily Impression Assessment',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_gda661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'        ',
'        if v_cnt > 0 then',
'        ',
'            select GDAQUES1, GDAQUES2, GDAQUES3',
'            into V_VAL1, V_VAL2, V_VAL3',
'            from edc_crf_gda661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'        ',
'            if (V_VAL1 IS NOT NULL AND V_VAL2 IS NOT NULL AND V_VAL3 IS NOT NULL) then',
'',
'                :P100_SECTION_STATUS := 3;',
'',
'            else',
'',
'                :P100_SECTION_STATUS := 2;',
'',
'            end if;',
'            ',
'        end if;',
'    ',
'    elsif :P100_CRF_ID = 24 then        --Urine Pregnancy Test',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_upt661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'        ',
'        if v_cnt > 0 then',
'        ',
'            select UPTPERF, UPTRESLT, UPTRSN',
'            into V_VAL1, V_VAL2, V_VAL3',
'            from edc_crf_upt661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'            ',
'            if (V_VAL1 = ''Yes'' AND V_VAL2 IS NOT NULL) or (V_VAL1 = ''No'' AND V_VAL3 is not null) then',
'',
'                :P100_SECTION_STATUS := 3;',
'',
'            else',
'',
'                :P100_SECTION_STATUS := 2;',
'',
'            end if;',
'            ',
'        end if;',
'    ',
'    elsif :P100_CRF_ID = 5 then        --Covid 19 symptoms evaluation',
'    ',
'        select count(1) into v_cnt',
'        from edc_crf_cse661',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'        ',
'        if v_cnt > 0 then',
'        ',
'            select CSESYMP1, CSESYMP2, CSESYMP3, CSESYMP4, CSESYMP5, CSESYMP6, CSESYMP7, CSESYMP8, CSESYMP9, CSESYMP10, CSESYMP11, CSESYMP12, CSESYMP13, CSESYMP14',
'            into V_VAL1, V_VAL2, V_VAL3, V_VAL4, V_VAL5, V_VAL6, V_VAL7, V_VAL8, V_VAL9, V_VAL10, V_VAL11, V_VAL12, V_VAL13, V_VAL14',
'            from edc_crf_cse661',
'            where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'            ',
'            if (V_VAL1 IS NOT NULL AND V_VAL2 IS NOT NULL AND V_VAL3 IS NOT NULL AND V_VAL4 IS NOT NULL AND V_VAL5 IS NOT NULL AND V_VAL6 IS NOT NULL AND V_VAL7 IS NOT NULL ',
'                AND V_VAL8 IS NOT NULL AND V_VAL9 IS NOT NULL AND V_VAL10 IS NOT NULL AND V_VAL11 IS NOT NULL AND V_VAL12 IS NOT NULL AND V_VAL13 IS NOT NULL AND V_VAL14 IS NOT NULL) then',
'',
'                :P100_SECTION_STATUS := 3;',
'',
'            else',
'',
'                :P100_SECTION_STATUS := 2;',
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
,p_internal_uid=>4137815821572610941
,p_process_comment=>'''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3790160771540114082)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P100_SECTION_STATUS_BASED ON QUERIES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_qry_cnt NUMBER;',
'begin',
'    ',
'    select count(1) into v_qry_cnt',
'    from edc_crf_queries',
'    where crf_id = :P100_CRF_ID',
'    and qry_status in (''Open'',''Reopened'')',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    if v_qry_cnt = 0 then',
'        :P100_SECTION_STATUS := 3;',
'    else',
'        :P100_SECTION_STATUS := 2;',
'    end if;',
'',
'end;',
'        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2689210003398609989
,p_process_comment=>'''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173223192993917300)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Section Status '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sql varchar2(1000);',
'v_cnt1 number;',
'v_max_audit_log_id number;',
'v_ex_new_value varchar2(10);',
'v_pk_col VARCHAR2(100);',
'V_CRF_TABLE_NAME VARCHAR2(100);',
'begin',
'    ',
'    select crf_table_pk_col,crf_table_name',
'    into v_pk_col, v_crf_table_name ',
'    from EDC_CRF_MASTER',
'    where crf_id = :P100_CRF_ID',
'    and crf_short_name = :P100_CRF_SHORT_NAME',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    select count(1) into v_cnt1 from audit_trail            --section status audit exists or not',
'    where table_name = :P100_CRF_TABLE_NAME',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and column_name = ''SECTION_STATUS''',
'    and study_id = :APP_EDC_STUDY_ID;',
'      ',
'    --if v_cnt1 > 0 then',
'    ',
'        if v_cnt1 > 0 then',
'            execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                              where patient_diary_id = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                              ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                              ''and column_name = ''''SECTION_STATUS'''' ',
'                               and table_name = ''''''||:P100_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                              ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                              ''and table_pk_value = ''||:P100_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'            commit;',
'        else',
'            v_max_audit_log_id := 0;',
'        end if;',
'',
'        if v_max_audit_log_id = 0 then',
'           v_ex_new_value := null;',
'        else',
'           execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'           commit;  ',
'        end if;',
'',
'        IF v_ex_new_value != :P100_SECTION_STATUS or v_ex_new_value is null THEN',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P100_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',100,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''||:P100_SECTION_STATUS||'',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P100_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF;',
'        ',
'    --end if;',
'        ',
'    l_sql := ''update ''|| v_crf_table_name||'' set SECTION_STATUS = ''||:P100_SECTION_STATUS||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID; ',
'                    ',
'    execute immediate l_sql;',
'    commit;',
'    ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4072272424852413207
,p_process_comment=>'Request is contained in value : ''SAVE'''
);
wwv_flow_imp.component_end;
end;
/
