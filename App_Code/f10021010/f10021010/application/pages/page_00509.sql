prompt --application/pages/page_00509
begin
--   Manifest
--     PAGE: 00509
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
 p_id=>509
,p_tab_set=>'TS1'
,p_name=>'&P509_CRF_PAGE_NAME.'
,p_step_title=>'&P509_CRF_PAGE_NAME.'
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
'    $x("P509_COLUMN_NAME").value = column_name;',
'}',
'',
'function getValue(item_name,column_name) ',
'{',
'    var item_name = "" + item_name;',
'    var pad = "00";',
'    var item_name = pad.substring(0, pad.length - item_name.length) + item_name;',
'    var a = $("input[type=''radio''][name=''f" + item_name + "'']:checked").val();',
'    $x("P509_FIELD_VAL").value = a;',
'    var b = column_name;',
'    $x("P509_FIELD_NAME").value = b;',
'    ',
'    //ajax callback process to save data in table',
'    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO", $v(''pFlowStepId''));',
'    oDBGet.add(''P509_FIELD_VAL'', $v("P509_FIELD_VAL"));',
'    oDBGet.add(''P509_FIELD_NAME'', $v("P509_FIELD_NAME"));',
'',
'    oDBGet.get();',
'}',
'',
'function findDisable() ',
'{',
'    var z = $v("P509_FINDDISABLE");',
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
'                    $x("P509_FIELD_VAL").value = a;',
'                    var b = column_name;',
'                    $x("P509_FIELD_NAME").value = b;',
'',
'                    //ajax callback process to save data in table',
'                    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                    oDBGet.add(''P509_FIELD_VAL'', $v("P509_FIELD_VAL"));',
'                    oDBGet.add(''P509_FIELD_NAME'', $v("P509_FIELD_NAME"));',
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
'                    $x("P509_FIELD_VAL").value = a;',
'                    var b = column_name;',
'                    $x("P509_FIELD_NAME").value = b;',
'',
'                    //ajax callback process to save data in table',
'                    var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                    oDBGet.add(''P509_FIELD_VAL'', $v("P509_FIELD_VAL"));',
'                    oDBGet.add(''P509_FIELD_NAME'', $v("P509_FIELD_NAME"));',
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
'                            $x("P509_FIELD_VAL").value = a;',
'                            var b = column_name;',
'                            $x("P509_FIELD_NAME").value = b;',
'',
'                            //ajax callback process to save data in table',
'                            var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'                            oDBGet.add(''P509_FIELD_VAL'', $v("P509_FIELD_VAL"));',
'                            oDBGet.add(''P509_FIELD_NAME'', $v("P509_FIELD_NAME"));',
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
'    var m = $v("P509_CRF_SHORT_NAME");',
'    ',
'    if (m == ''DM'')',
'        {',
'            var x = $v("P509_DOB_ITEM_ID");',
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
'    var m = $v("P509_CRF_SHORT_NAME");',
'    ',
'    if (m == ''DM'')',
'        {',
'    ',
'            var x = $v("P509_BMI_ITEM_ID");',
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
'{ ',
'    var y = $v("P509_CRF_ID");',
'    var z = $v("P509_PARENT_QUES_TYPE");',
'    var x = $v("P509_CHILD_COUNT");',
'    ',
'    if (z == "RADIO BUTTON")',
'    {',
'        var a = $v("P509_ID");',
'        ',
'        var item_name = "" + a;',
'        var pad = "00";',
'        var a = pad.substring(0, pad.length - a.length) + a;',
'',
'        var b = $("input[type=''radio''][name=''f" + a + "'']:checked").val();',
'        $x("P509_PARENT_QUES_VAL").value = b; ',
'    }',
'    else if (z == "SELECT LIST")',
'        {',
'            var a = $v("P509_ID");',
'            var b = document.getElementById(a).value;',
'',
'            $x("P509_PARENT_QUES_VAL").value = b;',
'        }',
'    ',
'    var e = $v("P509_PARENT_ANS");',
'    ',
'    if (y == 34)',
'        {',
'             if (($("input[type=''radio''][name=''f05'']:checked").val()=="No" || ($("input[type=''radio''][name=''f06'']:checked").val()=="No" || $("input[type=''radio''][name=''f08'']:checked").val()=="No" || $("input[type=''radio''][name=''f10'']:checked").val()='
||'="No") ||',
'             ($("input[type=''radio''][name=''f07'']:checked").val()=="No" || $("input[type=''radio''][name=''f09'']:checked").val()=="No" || $("input[type=''radio''][name=''f11'']:checked").val()=="No")) && x > 0)',
'            ',
'            /*if ($("input[type=''radio''][name=''f06'']:checked").val()=="No" || $("input[type=''radio''][name=''f08'']:checked").val()=="No" || $("input[type=''radio''][name=''f10'']:checked").val()=="No")*/',
'                 {',
'                     var retVal = confirm("The child records(if any) for corresponding hospital would be deleted.");',
'                     if( retVal == true )     ',
'                        {',
'                            $x("P509_DELETE_CHILD").value = "Yes";',
'                            apex.submit(''SAVE'');',
'                        }',
'                 }',
'            else',
'               {',
'                   $x("P509_DELETE_CHILD").value = "No";',
'                   apex.submit(''SAVE'');',
'               }',
'        }',
'    ',
'    else if (e != b && x > 0)    // value != parent_ans and child records exist',
'        {',
'        //$x("P509_DELETE_CHILD").value = "Yes";',
'        var retVal = confirm("The child records would be deleted.");',
'        if( retVal == true )     ',
'            {',
'                $x("P509_DELETE_CHILD").value = "Yes";',
'                apex.submit(''SAVE'');',
'            }',
'        }',
'    else',
'        {',
'            apex.submit(''SAVE'');',
'        }',
'}',
'',
'',
'function validateUpdate()         ',
'{',
'    var m1 = $v("P509_CRF_ID");',
'    var n1 = $v("P509_PARENT_QUES_TYPE");',
'    var o1 = $v("P509_CHILD_COUNT");',
'    ',
'    if (n1 == "RADIO BUTTON")',
'    {',
'        var a1 = $v("P509_ID");',
'        ',
'        var item_name = "" + a1;',
'        var pad1 = "00";',
'        var a1 = pad1.substring(0, pad1.length - a1.length) + a1;',
'',
'        var b1 = $("input[type=''radio''][name=''f" + a1 + "'']:checked").val();',
'        $x("P509_PARENT_QUES_VAL").value = b1; ',
'    }',
'    else if (n1 == "SELECT LIST")',
'        {',
'            var a1 = $v("P509_ID");',
'            var b1 = document.getElementById(a1).value;',
'',
'            $x("P509_PARENT_QUES_VAL").value = b1;',
'        }',
'    ',
'    var e1 = $v("P509_PARENT_ANS");   ',
'    ',
'    //else',
'        //{',
'    ',
'        var x = $v("P509_ARRAY");',
'        var arr = JSON.parse("[" + x + "]");',
'        var y = arr.length;',
'',
'        var p = $v("P509_ARRLBL");',
'        var arr1 = p.split(",");',
'        var q = arr1.length;',
'',
'        var str = "";',
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
'        }',
'',
'       var m = str.length;        //reason for change ',
'',
'       if (m > 0)',
'           {alert(str);}',
'',
'       if (m > 0)',
'           {return false;}',
'    ',
'       else if (m1 == 34)',
'        {',
'            if (($("input[type=''radio''][name=''f05'']:checked").val()=="No" || ($("input[type=''radio''][name=''f06'']:checked").val()=="No" || $("input[type=''radio''][name=''f08'']:checked").val()=="No" || $("input[type=''radio''][name=''f10'']:checked").val()=='
||'"No") ||',
'             ($("input[type=''radio''][name=''f07'']:checked").val()=="No" || $("input[type=''radio''][name=''f09'']:checked").val()=="No" || $("input[type=''radio''][name=''f11'']:checked").val()=="No")) && o1 > 0)',
'            ',
'            /*if ($("input[type=''radio''][name=''f06'']:checked").val()=="No" || $("input[type=''radio''][name=''f08'']:checked").val()=="No" || $("input[type=''radio''][name=''f10'']:checked").val()=="No")*/',
'                 {',
'                     var retVal = confirm("The child records(if any) for corresponding hospital would be deleted.");',
'                     if( retVal == true )     ',
'                        {',
'                            $x("P509_DELETE_CHILD").value = "Yes";',
'                            apex.submit(''SAVE'');',
'                        }',
'                 }',
'            else',
'               {',
'                   $x("P509_DELETE_CHILD").value = "No";',
'                   apex.submit(''SAVE'');',
'               }',
'        }',
'       ',
'       else if (m1 !== 34 && e1 != b1 && o1 > 0)    // value != parent_ans and child records exist',
'        {',
'            //$x("P509_DELETE_CHILD").value = "Yes";',
'            var retVal = confirm("The child records would be deleted.");',
'            if( retVal == true )     ',
'                {',
'                    $x("P509_DELETE_CHILD").value = "Yes";',
'                    apex.submit(''SAVE'');',
'                }',
'        }',
'',
'       else',
'           {apex.submit(''SAVE'');}',
'',
'        //}            ',
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
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4307373453590178757)
,p_plug_name=>'Patient Diary List_vertical'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181058343407888)
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
 p_id=>wwv_flow_imp.id(7234373554761686545)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7234395340782759181)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left:10px;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>12
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5032822453443493515)
,p_plug_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(7234395340782759181)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:250px; height:130px;"'
,p_plug_template=>wwv_flow_imp.id(11045178973639407883)
,p_plug_display_sequence=>61
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
 p_id=>wwv_flow_imp.id(5474267956095638868)
,p_plug_name=>'List S4'
,p_parent_plug_id=>wwv_flow_imp.id(7234395340782759181)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(4072548943989413108)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5789995055730222907)
,p_plug_name=>'CRF LIST'
,p_parent_plug_id=>wwv_flow_imp.id(7234395340782759181)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6170314910246509030)
,p_plug_name=>'&P509_CRF_PAGE_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(7234395340782759181)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>60
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
'        where CRF_ID = :P509_CRF_ID',
'    )',
'    LOOP',
'                ',
'        execute immediate ''select count(1) from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt1;',
'        ',
'        --Code starts For Flag--',
'        v_script := '''';',
'        execute immediate ''select count(1) from  EDC_CRF_QUERIES where page_id=''||:APP_PAGE_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||''',
'                           and study_id = ''||:APP_EDC_STUDY_ID||''',
'                           and CRF_ID = ''||:P509_CRF_ID||''',
'                           and item_name = ''''''||i.column_name||'''''''' into v_cnt2;',
'                           ',
'                           ',
'        if v_cnt2 > 0 then                           ',
'        ',
'           for j in (select qry_status,4 from  EDC_CRF_QUERIES where qry_status = ''Closed'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID and study_id = :APP_EDC_STUDY_ID and CRF_ID = :P509_CRF_ID and item_name = i.column_n'
||'ame',
'            union',
'            select qry_status,3 from  EDC_CRF_QUERIES where qry_status = ''Responded'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID and study_id = :APP_EDC_STUDY_ID and CRF_ID = :P509_CRF_ID and item_name = i.column_name',
'            union',
'            select qry_status,2 from  EDC_CRF_QUERIES where qry_status = ''Reopened'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID and study_id = :APP_EDC_STUDY_ID and CRF_ID = :P509_CRF_ID and item_name = i.column_name',
'            union',
'            select qry_status,1 from  EDC_CRF_QUERIES where qry_status = ''Open'' and page_id=:APP_PAGE_ID and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID and study_id = :APP_EDC_STUDY_ID and CRF_ID = :P509_CRF_ID and item_name = i.column_name',
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
'        if v_cnt1 = 0 then        --insert',
'        ',
'            --code begins for enable/disable for insert',
'            v_script1 := '''';',
'            ',
'            select count(1) into v_cnt',
'            from EDC_CRF_ITEMS_ENDIS',
'            WHERE CRF_SHORT_NAME = :P509_CRF_SHORT_NAME',
'            AND CRF_ID = :P509_CRF_ID',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND ITEM_ID = i.item_id',
'            order by ITEM_TOBE_ENDIS;',
'            ',
'            select item_type into v_item_type',
'            from edc_crf_items',
'            where crf_id = :P509_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_id = i.item_id;',
'            ',
'            if v_cnt > 0 then ',
'',
'                for m in ( select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS',
'                from EDC_CRF_ITEMS_ENDIS',
'                WHERE CRF_SHORT_NAME = :P509_CRF_SHORT_NAME',
'                AND CRF_ID = :P509_CRF_ID',
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
'                  where crf_id = :P509_CRF_ID',
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
'                ',
'                --v_script1 := ''onchange=''||v_script1;',
'',
'                --htp.p(v_script1);',
'',
'            end if;',
'            --code ends for enable/disable',
'   ',
'            if i.item_type IN (''TEXT'')',
'            then',
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
'            elsif i.item_type IN (''LABEL'')',
'            then',
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
'            elsif i.item_type IN (''CHECKBOX'')',
'            then',
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
'            elsif i.item_type IN (''RADIO BUTTON'')',
'            then',
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
'                        )',
'                        );',
'                    end loop;',
'                htp.p(''<img id="''||i.item_id||''" src="#WORKSPACE_IMAGES#clear.png" class="ak03" style="cursor: pointer;vertical-align: middle;margin-top: -8px;" width="23px" title="Clear" onclick="getcolumnname(''||i.item_id||'',''''''||i.column_name||'''''''
||')" />'');',
'                htp.p(''</td>'');                    ',
'                htp.p(''</tr>'');',
'                ',
'                v_idx := v_idx + 1;           ',
'',
'            elsif i.item_type IN (''SELECT LIST'')',
'            then',
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
'            elsif i.item_type = ''DATE''',
'            then',
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
'            elsif i.item_type = ''TIME''',
'            then',
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
'            elsif i.item_type = ''NUMBER''',
'            then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                htp.p(''<td>''||',
'                    apex_item.text(',
'                        p_idx => 1,',
'                        p_Value => v_value,',
'                        p_attributes=> ''class="number_field" oninput=deci_restr(''||i.item_id||'',''||i.item_size||'',''||i.digits_aftr_deci||'') onchange="calcBMI();''||v_script1||''"'',',
'                        p_maxlength=>i.item_size,',
'                        p_item_id => i.item_id,',
'                        p_size => 5',
'                    )||''</td>''',
'                );',
'                htp.p(''<tr>'');',
'',
'            elsif i.item_type = ''TEXTAREA''',
'            then',
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
'        ',
'        elsif v_cnt1 = 1 then            --update',
'        ',
'            v_attributes1 := ''placeholder="Reason for Change" style="visibility:hidden"'';',
'            ',
'            --code begins for enable/disable',
'            v_script1 := '''';',
'            ',
'            select count(1) into v_cnt',
'            from EDC_CRF_ITEMS_ENDIS',
'            WHERE CRF_SHORT_NAME = :P509_CRF_SHORT_NAME',
'            AND CRF_ID = :P509_CRF_ID',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND ITEM_ID = i.item_id',
'            order by ITEM_TOBE_ENDIS;',
'            ',
'            select item_type into v_item_type',
'            from edc_crf_items',
'            where crf_id = :P509_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_id = i.item_id;',
'            ',
'            if v_cnt > 0 then ',
'',
'                for m in ( select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS',
'                from EDC_CRF_ITEMS_ENDIS',
'                WHERE CRF_SHORT_NAME = :P509_CRF_SHORT_NAME',
'                AND CRF_ID = :P509_CRF_ID',
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
'                  where crf_id = :P509_CRF_ID',
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
'                ',
'                --v_script1 := ''onchange=''||v_script1;',
'',
'                --htp.p(v_script1);',
'',
'            end if;',
'            --code ends for enable/disable',
'',
'            if i.item_type = ''TIME'' then',
'                execute immediate ''select ''||i.column_name|| '' from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_value3;',
'            else                ',
'                execute immediate ''select ''||i.column_name|| '' from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_value;',
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
'            if i.item_type IN (''TEXT'')',
'            then',
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
'            elsif i.item_type IN (''LABEL'')',
'            then',
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
'                        --p_idx => i.f_index,',
'                        p_idx => 3,',
'                        p_Value => '''',',
'                        p_item_id => ''rsc''||i.item_id,',
'                        p_attributes => v_attributes1,',
'                        p_size => 15',
'                    )||''</td>''',
'                );',
'                htp.p(''</tr>'');',
'',
'            elsif i.item_type IN (''CHECKBOX'')',
'            then',
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
'            elsif i.item_type IN (''RADIO BUTTON'')',
'            then',
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
'            elsif i.item_type IN (''SELECT LIST'')',
'            then',
'                htp.p(''<tr>'');',
'                htp.p(''<td><left><b>''||i.item_label|| '' :</b></left><br><br></td>'');',
'                        htp.p(''<td>''||',
'                        apex_item.select_list_from_query(',
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
'            elsif i.item_type = ''DATE''',
'            then',
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
'            elsif i.item_type = ''TIME''',
'            then',
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
'            elsif i.item_type = ''NUMBER''',
'            then',
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
'            elsif i.item_type = ''TEXTAREA''',
'            then',
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
 p_id=>wwv_flow_imp.id(7234395668735759181)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(7234395340782759181)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7234402045220759186)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(7234395340782759181)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180366321407887)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7303173959564281203)
,p_name=>'&P509_CHILD_CRF_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(7234395340782759181)
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BASE_URL VARCHAR2(255) := ''&EDC_IMAGE_PATH.'';',
'  V_PK VARCHAR2(30);',
'  V_SQL VARCHAR2(32767) := '''';',
'  V_SQL2 VARCHAR2(32767) := '''';',
'  V_TABLE_NAME VARCHAR2(100);',
'  V_CRF_ID NUMBER;',
'BEGIN',
'',
'    SELECT CRF_TABLE_NAME,CRF_TABLE_PK_COL,CRF_ID INTO V_TABLE_NAME,V_PK,V_CRF_ID ',
'    FROM EDC_CRF_MASTER WHERE PARENT_PAGE = :P509_CRF_ID AND STUDY_ID = :APP_EDC_STUDY_ID;',
'',
'    FOR I IN (SELECT COLUMN_NAME FROM EDC_CRF_ITEMS',
'             WHERE CRF_ID = (SELECT CRF_ID FROM EDC_CRF_MASTER',
'                            WHERE PARENT_PAGE = :P509_CRF_ID',
'                            AND STUDY_ID = :APP_EDC_STUDY_ID)',
'             AND STUDY_ID = :APP_EDC_STUDY_ID',
'             ORDER BY ITEM_SEQ) LOOP ',
'            ',
'      IF V_SQL IS NULL THEN',
'        V_SQL := V_SQL || I.COLUMN_NAME;',
'      ELSE    ',
'        V_SQL := V_SQL ||'',''|| I.COLUMN_NAME;',
'      END IF;    ',
'    ',
'    END LOOP;',
'    V_SQL := ''SELECT ''||V_PK||'',"ID #",(SELECT DISPLAY_VAL FROM EDC_CRF_STATUS WHERE RETURN_VAL = SECTION_STATUS) AS SECTION_STATUS,''||V_SQL||'' FROM('';',
'    ',
'    --DOPL(V_SQL);',
'',
'    FOR I IN (SELECT COLUMN_NAME,ITEM_TYPE,ITEM_LOV FROM EDC_CRF_ITEMS',
'             WHERE CRF_ID = (SELECT CRF_ID FROM EDC_CRF_MASTER',
'                            WHERE PARENT_PAGE = :P509_CRF_ID',
'                            AND STUDY_ID = :APP_EDC_STUDY_ID)',
'             AND STUDY_ID = :APP_EDC_STUDY_ID',
'             ORDER BY ITEM_SEQ) LOOP ',
'            ',
'      IF V_SQL2 IS NULL AND I.ITEM_TYPE = ''TIME'' THEN',
'        V_SQL2 := V_SQL2 ||''TO_CHAR(A.''|| I.COLUMN_NAME ||'',''''HH24:MI'''') AS ''||I.COLUMN_NAME;',
'      ELSIF V_SQL2 IS NULL AND I.ITEM_TYPE IN (''SELECT LIST'',''RADIO BUTTON'') THEN',
'        V_SQL2 := V_SQL2 ||''(SELECT DISPLAY_VALUE FROM EDC_LOV_VALUES WHERE LOV_ID = ''||I.ITEM_LOV||'' AND STORED_VALUE = A.''||I.COLUMN_NAME||'') AS ''||I.COLUMN_NAME;',
'      ELSIF V_SQL2 IS NULL THEN',
'        V_SQL2 := V_SQL2 ||''A.''|| I.COLUMN_NAME ||'' AS ''||I.COLUMN_NAME;',
'      ELSIF V_SQL2 IS NOT NULL AND I.ITEM_TYPE = ''TIME'' THEN',
'        V_SQL2 := V_SQL2 ||'',TO_CHAR(A.''|| I.COLUMN_NAME ||'',''''HH24:MI'''') AS ''||I.COLUMN_NAME;',
'      ELSIF I.ITEM_TYPE IN (''SELECT LIST'',''RADIO BUTTON'') THEN',
'        V_SQL2 := V_SQL2 ||'',(SELECT DISPLAY_VALUE FROM EDC_LOV_VALUES WHERE LOV_ID = ''||I.ITEM_LOV||'' AND STORED_VALUE = A.''||I.COLUMN_NAME||'') AS ''||I.COLUMN_NAME;',
'      ELSE    ',
'        V_SQL2 := V_SQL2 ||'',A.''|| I.COLUMN_NAME ||'' AS ''||I.COLUMN_NAME;',
'      END IF;    ',
'    ',
'    END LOOP;',
'    ',
'    V_SQL2 := ''SELECT A.''||V_PK||'',''''<a href="f?p=&APP_ID.:510:&SESSION.::&DEBUG.::P510_CRF_TABLE_PK_VAL,P510_CRF_ID:''''||A.''||V_PK||''||'''',''||V_CRF_ID||''"><img height="15" width="17" src="#IMAGE_PREFIX#e2.gif"/></a>'''' AS "ID #",SECTION_STATUS,''||V_SQL'
||'2||',
'    '' FROM ''||V_TABLE_NAME||'' A WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||'' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' ORDER BY ''||V_PK||'')'';',
'    V_SQL2 := V_SQL||V_SQL2;',
'    --DOPL(V_SQL2);',
'    RETURN V_SQL2;',
'END;'))
,p_display_when_condition=>':P509_FLAG = 1'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P509_CRF_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_plug_query_max_columns=>60
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_report_title varchar2(4000);',
'BEGIN',
' v_report_title := ''PK:ID:Section Status'';',
' for c1 in (select item_label from edc_crf_items where study_id=:APP_EDC_STUDY_ID and crf_id = (select crf_id from edc_crf_master where parent_page = :P509_CRF_ID',
'                                                                                               and study_id = :APP_EDC_STUDY_ID) order by item_seq)',
' loop',
'     v_report_title:=v_report_title || '':'' || c1.item_label;',
' end loop;',
'',
' return V_REPORT_TITLE;',
'END;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_sql varchar2(32760) := '''';',
'    v_crf_table_name varchar2(100);',
'    v_crf_table_pk_col varchar2(100);',
'begin',
'    ',
'    select crf_table_name,crf_table_pk_col',
'    into v_crf_table_name, v_crf_table_pk_col',
'    from edc_crf_master',
'    where parent_page = :P509_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    v_sql := v_sql || ''select ''''<a href="f?p=&APP_ID.:510:&SESSION.::&DEBUG.::P510_''||v_crf_table_pk_col||'':"><img height="15" width="17" src="#IMAGE_PREFIX#e2.gif"/></a>'''' AS "ID #"'';',
'    ',
'    for i in (select column_name from edc_crf_items',
'             where crf_id = (select crf_id from edc_crf_master where parent_page = :P509_CRF_ID and study_id = :APP_EDC_STUDY_ID)',
'             and study_id = :APP_EDC_STUDY_ID) loop',
'             ',
'        v_sql := v_sql||'',''||i.column_name;',
'        ',
'    end loop;',
'    ',
'    v_sql := v_sql||'' from ''||v_crf_table_name||',
'            '' where study_id = :APP_EDC_STUDY_ID',
'             and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'             order by ''||v_crf_table_pk_col;',
'            ',
'    return v_sql;',
'    ',
'end;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132557882995782122)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132558321722782122)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Col02'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132558716258782123)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132559092310782123)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132559452214782123)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Col05'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132559932099782124)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132560327747782124)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132560727653782125)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132561118145782125)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132561472209782125)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132561871961782126)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132562301751782126)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132562656552782127)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132563071318782127)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132563498819782127)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132563895391782128)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132564259269782128)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132564706567782129)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132565123268782129)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132565493266782129)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132565868065782130)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132566340940782130)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132566689393782131)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132567144282782131)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132567472499782131)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132567929616782132)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132568288130782132)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132568649146782133)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132569072837782133)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132569474290782134)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132569926055782134)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132570281795782134)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132570649536782135)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132571088693782135)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132571533912782136)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132571879771782136)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132572320146782136)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132572734877782137)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132573104251782137)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132573515659782138)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132573862854782138)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132574328262782138)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132574660522782139)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132575125689782139)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132575483062782140)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132575886787782140)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132576342095782140)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132576699241782141)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132577114800782141)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132553497277782116)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132553937274782118)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132554320676782118)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132554707095782118)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132555078232782119)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132555490892782119)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132555851374782120)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132556343235782120)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132556747646782121)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132557073037782121)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4132557455369782121)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7237024115751513989)
,p_plug_name=>'H'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>50
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4132532161181782086)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
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
'    and table_name = :P509_CRF_TABLE_NAME',
'    and username  in (select scrno from edc_patient_profile where study_id = 661);',
'    ',
'    select count(1) into v_cnt        --dat entry by user',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = :P509_CRF_TABLE_NAME',
'    and upper(username) = upper(:APP_USER_NAME);',
'    ',
'    select count(1) into v_cnt2        --data entry done or not',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = :P509_CRF_TABLE_NAME;',
'    ',
'    select count(1) into v_cnt3        --audit trail for data submitted by subject present',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = ''EDC_PATIENT_DIARY''',
'    and new_value = ''4'';',
'    ',
'    if :P509_CRF_ID = 21 then        --for other comments',
'        if :APP_EDC_ROLE_ID IN (13,15,16,26) and :P509_SECTION_STATUS < 4.5 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Paper'' then',
'        if :APP_EDC_ROLE_ID IN (13,15,16,26) AND :P509_SECTION_STATUS <= 4 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Electronic'' then',
'        if :APP_EDC_ROLE_ID IN (13,15,16,26) AND v_cnt3 > 0 AND :P509_SECTION_STATUS IN (2,3,4)',
'        /*((:P509_SECTION_STATUS = 4 AND v_cnt1 > 0 AND v_cnt = 0) OR (:P509_SECTION_STATUS <= 4 AND V_CNT > 0)',
'                                                 OR (:P509_SECTION_STATUS = 2 AND V_CNT = 0 AND V_CNT2 != 0)) */',
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
 p_id=>wwv_flow_imp.id(4132532576593782088)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_button_name=>'ADD_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Query'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP,124:P124_PATIENT_DIARY_ID,P124_PAGE_ID,P124_CRF_ID,P124_TBL_PK_ID:&APP_EDC_PATIENT_DIARY_ID.,&APP_PAGE_ID.,&P509_CRF_ID.,&P509_CRF_TABLE_PK_VAL.'');'
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
'    and crf_id = :P509_CRF_ID',
'    and role_id in (27,17);',
'    ',
'    if v_cnt > 0 and :APP_EDC_ROLE_ID IN (13,27,17) then',
'        return true;',
'    elsif :APP_EDC_ROLE_ID IN (13,27,17) AND :P509_SECTION_STATUS IN (4.5) then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'    ',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_comment=>'EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID,:P509_CRF_ID,:P509_CRF_TABLE_PK_VAL) = 1'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4132532993560782088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4132577484124782142)
,p_button_sequence=>11
,p_button_plug_id=>wwv_flow_imp.id(7303173959564281203)
,p_button_name=>'ADD_RECORD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Record'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:510:&SESSION.::&DEBUG.:RP,510:P510_CRF_ID,P510_CRF_TABLE_PK_VAL:&P509_CHILD_CRF_ID.,0'
,p_button_condition=>':P509_SECTION_STATUS < 9'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4132533363394782089)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P509_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_DIARY_ID,P6_PAGE_ID,P6_CRF_ID,P6_TBL_PK_ID:&APP_EDC_PATIENT_DIARY_ID.,509,&P509_CRF_ID.,&P509_CRF_TABLE_PK_VAL.'');'
,p_button_condition=>':P509_COUNT = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4132533813174782089)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4132534149887782090)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2686589443461622769)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
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
'    and table_name = :P509_CRF_TABLE_NAME',
'    and username not in (select scrno from edc_patient_profile where study_id = 661);',
'',
'    select count(1) into v_cnt1        --audit trail for data submitted by subject present',
'    from audit_trail',
'    where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'    and table_name = ''EDC_PATIENT_DIARY''',
'    and new_value = ''4'';',
'    ',
'    if :P509_CRF_ID = 21 then',
'        if :APP_EDC_ROLE_ID IN (13,16,26) AND :P509_SECTION_STATUS = 3 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Paper'' then',
'        if :APP_EDC_ROLE_ID IN (13,16,26) AND :P509_SECTION_STATUS = 3 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    elsif v_diary_type = ''Electronic'' then',
'        if :APP_EDC_ROLE_ID IN (13,16,26) AND v_cnt1 > 0 and :P509_SECTION_STATUS IN (2,3,4) then --AND (:P509_SECTION_STATUS = 4 or (:P509_SECTION_STATUS = 3 and v_cnt > 0))then',
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
 p_id=>wwv_flow_imp.id(2686590050173622775)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_button_name=>'CRA_REVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CRA Review'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':APP_EDC_ROLE_ID IN (13,27,17) AND :P509_SECTION_STATUS = 4.5'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4132602570194782194)
,p_branch_name=>'Go To Page 100'
,p_branch_action=>'f?p=&APP_ID.:509:&SESSION.::&DEBUG.::P509_CRF_ID:&P509_CRF_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(5237753892701358463)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132536561161782092)
,p_name=>'P509_NO_OF_QUERIES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM edc_crf_queries',
' where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
'   AND CRF_ID = :P509_CRF_ID',
' AND QRY_STATUS in (''Open'',''Reopened'')',
' AND TBL_PK_ID = :P509_CRF_TABLE_PK_VAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132536970569782096)
,p_name=>'P509_PATIENT_VISIT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
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
 p_id=>wwv_flow_imp.id(4132537413256782097)
,p_name=>'P509_CRF_SHORT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132537834745782097)
,p_name=>'P509_CRF_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132538207923782097)
,p_name=>'P509_CRF_PAGE_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132538593547782098)
,p_name=>'P509_CRF_TABLE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132539015477782098)
,p_name=>'P509_CRF_TABLE_PK_COL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132539438180782098)
,p_name=>'P509_CRF_TABLE_PK_VAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132539839206782099)
,p_name=>'P509_ACTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132540206983782099)
,p_name=>'P509_DOB_ITEM_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P509_CRF_SHORT_NAME',
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
 p_id=>wwv_flow_imp.id(4132540581675782100)
,p_name=>'P509_BMI_ITEM_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P509_CRF_SHORT_NAME',
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
 p_id=>wwv_flow_imp.id(4132541043342782100)
,p_name=>'P509_DOB_BMI_ITEM_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id, ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_short_name = ''DM''',
'              and crf_short_name = :P509_CRF_SHORT_NAME',
'              and column_name in (''BMI'',''AGE'')',
'              and study_id = :APP_EDC_STUDY_ID)',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1',
'UNION',
'SELECT ''0'' FROM EDC_CRF_ITEMS',
'WHERE CRF_SHORT_NAME = :P509_CRF_SHORT_NAME',
'AND CRF_SHORT_NAME != ''DM'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132541403724782100)
,p_name=>'P509_ARRAY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (item_id , '',''), 2) csv',
'      FROM (SELECT item_id , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_id = :P509_CRF_ID and item_type != ''LABEL'')',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132541833712782101)
,p_name=>'P509_ARRLBL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR (SYS_CONNECT_BY_PATH (REPLACE(item_label,'','','''') , '',''), 2) csv',
'      FROM (SELECT item_label , ROW_NUMBER () OVER (ORDER BY item_id ) rn,',
'                   COUNT (*) OVER () cnt',
'              FROM edc_crf_items where crf_id = :P509_CRF_ID and item_type != ''LABEL'')',
'     WHERE rn = cnt',
'START WITH rn = 1',
'CONNECT BY rn = PRIOR rn + 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132542194390782101)
,p_name=>'P509_COUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132542621010782101)
,p_name=>'P509_ENDIS_SCRIPT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132543035674782102)
,p_name=>'P509_FINDDISABLE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132543368109782102)
,p_name=>'P509_ITEM_DISABLE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132543817469782102)
,p_name=>'P509_MSG'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132544163515782103)
,p_name=>'P509_QRY_COUNT'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132544572985782104)
,p_name=>'P509_FIELD_VAL'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132545010129782104)
,p_name=>'P509_FIELD_NAME'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132545369966782104)
,p_name=>'P509_COLUMN_NAME'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132545755179782105)
,p_name=>'P509_FLAG'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132546246909782106)
,p_name=>'P509_CHILD_CRF_ID'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132546645368782106)
,p_name=>'P509_PARENT_QUES'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132547043320782106)
,p_name=>'P509_PARENT_QUES_VAL'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132547437170782107)
,p_name=>'P509_PARENT_QUES_TYPE'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132547792826782107)
,p_name=>'P509_PARENT_ANS'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132548217877782107)
,p_name=>'P509_ID'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132548612735782108)
,p_name=>'P509_DELETE_CHILD'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132548982864782108)
,p_name=>'P509_CHILD_COUNT'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132549379795782108)
,p_name=>'P509_CHILD_CRF_NAME'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(6170314910246509030)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132550127483782109)
,p_name=>'P509_SV_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7234395668735759181)
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
 p_id=>wwv_flow_imp.id(4132550515368782110)
,p_name=>'P509_SECTION_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7234395668735759181)
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
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132550872394782111)
,p_name=>'P509_IMG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7234395668735759181)
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
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132551567166782111)
,p_name=>'P509_CREATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(7234402045220759186)
,p_prompt=>'<b>Created By</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132551952335782112)
,p_name=>'P509_CREATED_ON'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7234402045220759186)
,p_prompt=>'<b>Created Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132552388990782112)
,p_name=>'P509_UPDATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(7234402045220759186)
,p_prompt=>'<b>Updated By</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132552784708782113)
,p_name=>'P509_UPDATED_ON'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(7234402045220759186)
,p_prompt=>'<b>Updated Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4132578235642782143)
,p_name=>'P509_X'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(7237024115751513989)
,p_use_cache_before_default=>'NO'
,p_prompt=>'X'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132589936328782175)
,p_name=>'Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P4_AUDIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132590430209782184)
,p_event_id=>wwv_flow_imp.id(4132589936328782175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_DIARY_ID,P141_TABLE_NAME,P141_CRF_ID:&APP_PAGE_ID.,&APP_EDC_PATIENT_DIARY_ID.,&P509_CRF_TABLE_NAME.,&P509_CRF_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132590791050782184)
,p_name=>'Calling validate INSERT function'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4132532161181782086)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P509_COUNT = 0'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132591304068782185)
,p_event_id=>wwv_flow_imp.id(4132590791050782184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateInsert();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132591654096782185)
,p_name=>'Calling validate UPDATE function'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4132532161181782086)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P509_COUNT = 1'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132592209405782185)
,p_event_id=>wwv_flow_imp.id(4132591654096782185)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateUpdate();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132592572127782186)
,p_name=>'Function to know which items are disabled'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5237753892701358463)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132593140639782186)
,p_event_id=>wwv_flow_imp.id(4132592572127782186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'findDisable();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132593507314782186)
,p_name=>'Readonly on Page Load'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132594022756782187)
,p_event_id=>wwv_flow_imp.id(4132593507314782186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$( window ).load(function() ',
'//{    ',
'        var x = $v("P509_DOB_BMI_ITEM_ID");',
'        var arr = JSON.parse("[" + x + "]");',
'',
'        document.getElementById(arr[0]).readOnly = true;',
'        document.getElementById(arr[1]).readOnly = true;',
'//});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132596200339782189)
,p_name=>'Refresh after closing of modal page'
,p_event_sequence=>1300
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132596709759782189)
,p_event_id=>wwv_flow_imp.id(4132596200339782189)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132599774728782192)
,p_name=>'Enable/Disable on Page Load'
,p_event_sequence=>1370
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132600290415782192)
,p_event_id=>wwv_flow_imp.id(4132599774728782192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var m = $v("P509_ENDIS_SCRIPT");',
'//alert(m);',
'eval(m);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132600663259782192)
,p_name=>'CLEAR IMG BUTTON FOR RADIO GROUP'
,p_event_sequence=>1380
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_da_event_comment=>':APP_PAGE_ID in (559,571,505,504,511,502,509,510,506,512,507,514,501,503,515,517,518,516,520,519,508,524,521,523,522,528,526,513,530,525,531,529,527,533,532,535,534,537,538,539,540,536,541,542,546,548,543,547,544,545,549,550,551,553,554,555,556,558,5'
||'63,552,562,564,565,566,567,568,570,557,561,581,582,580,581,582,583,585,586,588,587,589,590,591,592,593,594,595,596,599,601,598,602,603,604,605,703,705,707,709,711,713,715,717,610,712,606,608,719,720,606,714,716,718,559,100,818,819,820)'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132601216288782193)
,p_event_id=>wwv_flow_imp.id(4132600663259782192)
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
'        var y = $v("P509_CRF_TABLE_PK_VAL");',
'        if (y!='''' && b!=undefined)',
'            {',
'                 var x = ''rsc''+c;',
'                 document.getElementById(x).style.visibility = "visible";   ',
'            }',
'        var m = $v("P509_ENDIS_SCRIPT");',
'        eval(m);',
'        ',
'        var g = "" + g;',
'        var pad = "00";',
'        var g = pad.substring(0, pad.length - g.length) + g;',
'        var h = $("input[type=''radio''][name=''" + g + "'']:checked").val();',
'        $x("P509_FIELD_VAL").value = h;',
'        var i = $v("P509_COLUMN_NAME");',
'        $x("P509_FIELD_NAME").value = i;',
'',
'        //ajax callback process to save data in table',
'        var oDBGet = new htmldb_Get(null, $v(''pFlowId''), "APPLICATION_PROCESS=SAVE_RADIO_1", $v(''pFlowStepId''));',
'        oDBGet.add(''P509_FIELD_VAL'', $v("P509_FIELD_VAL"));',
'        oDBGet.add(''P509_FIELD_NAME'', $v("P509_FIELD_NAME"));',
'        oDBGet.get();',
'    }',
'})',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4132601596127782193)
,p_name=>'On change of document'
,p_event_sequence=>1390
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4132602083151782193)
,p_event_id=>wwv_flow_imp.id(4132601596127782193)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var m = $v("P509_ENDIS_SCRIPT");',
'//alert(m);',
'eval(m);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2689209395404609983)
,p_name=>'On click of Submit'
,p_event_sequence=>1400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2686589443461622769)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689209508101609984)
,p_event_id=>wwv_flow_imp.id(2689209395404609983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P509_ID");',
'if (a < 10)',
'    {',
'        var b = $("input[type=''radio''][name=''f0" + a + "'']:checked").val();',
'    }',
'else',
'    {',
'        var b = document.getElementById(a).value;',
'    }',
'var c = $v("P509_CHILD_COUNT");',
'var d = $v("P509_QRY_COUNT");',
'if (b == ''Yes'' && c == 0)',
'    {',
'        alert("Please enter a child record and then Submit");',
'    }',
'else if (d > 0)',
'    {',
'        alert("Please respond to all queries and then Submit.");',
'    }',
'else',
'    {',
'        apex.submit(''SUBMIT'');',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2689210402972609993)
,p_name=>'On click of CRA Review'
,p_event_sequence=>1410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2686590050173622775)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689210453874609994)
,p_event_id=>wwv_flow_imp.id(2689210402972609993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P509_QRY_COUNT");',
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
 p_id=>wwv_flow_imp.id(4132587995354782171)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P509_FINDDISABLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_script varchar2(32767) := ''var value = null;var m = ''''''''; '';',
'begin    ',
'    ',
'    for i in (',
'        select *',
'        from V_EDC_CRF_ITEMS',
'        where CRF_ID = :P509_CRF_ID',
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
'              $x("P509_ITEM_DISABLE").value = m;'';',
'    END LOOP;        ',
'    --htp.p(v_script);',
'                      ',
'    select v_script into :P509_FINDDISABLE from dual;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4132587995354782171
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132587165031782169)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Dynamic Informative Message_SPSI_SPMI_CP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_msg varchar2(32767) := ''''; v_item_id number; v_colnm varchar2(50); v_col2 varchar2(50);',
'    v_val varchar2(400); v_val1 varchar2(400); v_val2 varchar2(400); v_val3 varchar2(400); m number; n number;',
'    v_item_label varchar2(4000); v_cond1 varchar2(10000);  v_cond2 varchar2(10000);  v_cnt number; v_cnt1 number; v_cnt2 number; v_cnt3 number; v_qry_msg varchar2(500);',
'    v_item_seq number; v_item_seq1 number; v_itm_seq2 number; v_itmtyp varchar2(30); v_ppid number;',
'    v_tblnm varchar2(100); v_study number; v_pvid number; v_crfid number; p number := 1;  v_itmtyp1 varchar2(200);',
'begin',
'',
'    v_study:=:APP_EDC_STUDY_ID; v_pvid:=:APP_EDC_PATIENT_DIARY_ID; v_crfid:=:P509_CRF_ID;  v_ppid:=:APP_PATIENT_PROFILE_ID;',
'',
'    select count(1) into v_cnt1 from edc_crf_items where crf_id=v_crfid and study_id=v_study;',
'',
'    select item_id,item_seq into v_item_id,v_item_seq from edc_crf_items where crf_id=v_crfid and study_id=v_study and item_seq = (select min(item_seq) from edc_crf_items where crf_id=v_crfid and study_id=v_study);',
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
'                      SELECT COL1||'' ''||CONDITION1||''(''||col2||'')'',query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
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
'                      into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||''(''||value1||'')''||'' and ''''''||COL2||'''''' ''||CONDITION2 ',
'                      query_condition,query_msg,col2 into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
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
||'ry_condition,query_msg,col2 into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is null THEN',
'',
'                      SELECT COL1||'' ''||CONDITION1 ||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||CONDITION2 query_condition,query_msg,col2 into v_cond1,v_qry_msg,v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_a'
||'ctin=''Yes'';',
'                  ',
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
'                      SELECT COL1||'' ''||CONDITION1 ||'' and ''||COL2||'' ''||CONDITION2 query_condition, query_msg, col2 into v_cond1,v_qry_msg, v_col2 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''''''''||v_val3||'''''' '' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''''''||v_val3||'''''')'' query_condition, query_msg into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid  and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' ',
'                  and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
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
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
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
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' ''||v_val3 query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||''(''||v_val3||'')'' query_condition, query_msg into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
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
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
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
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||''''''''||DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less tha'
||'n or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 is not null and j.query_type=''CP'' ',
'                      and j.value1 is not null and j.condition2 in (''is null'',''is not null'') and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
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
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_cnt2;',
'                      if v_cnt2 > 0 then',
'                      execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where patient_diary_id = ''||v_pvid into v_val3;',
'',
'                      SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||'''''' ''||CONDITION2  query_condition, query_msg into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
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
'                    '''''' and crf_id = ''||v_crfid||'' and study_id = ''||v_study||'' and patient_diary_id = ''||v_pvid||'' and patient_profile_id = ''||v_ppid into v_val;',
'                  end if;',
'',
'                  if j.query_type=''SPMI'' then',
'                      select item_type into v_itmtyp1 from edc_crf_items where column_name = j.col2 and crf_id = v_crfid and study_id = v_study;',
'                      ',
'                      if v_itmtyp1 != ''RADIO BUTTON'' then',
'                      execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_crfid||',
'                      ''AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||j.col2||'''''''' into n;',
'',
'                      v_val2 := upper(apex_application.g_f01(n));',
'',
'                      if v_val2 is null then v_val2 := null; end if;',
'                      ',
'                      elsif v_itmtyp1 = ''RADIO BUTTON'' then',
'                      execute immediate ''select upper(field_val) from save_radio where field_name = upper(''''''||j.col2||'''''') and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'                      '''''' and crf_id = ''||v_crfid||'' and study_id = ''||v_study||'' and patient_diary_id = ''||v_pvid||'' and patient_profile_id = ''||v_ppid into v_val2;',
'                      if v_val2 is null then v_val2 := null; end if;',
'',
'                      end if;',
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
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val := ''''''''||v_val||''''''''; end if;',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1;',
'',
'                      if v_cond1 = 1 then v_msg := v_msg|| v_qry_msg||''<br>''; end if;',
'',
'                  elsif j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val := ''''''''||v_val||''''''''; end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_colnm,v_val),v_col2,v_val2) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then v_msg := v_msg|| v_qry_msg||''<br>''; end if;',
'',
'                  elsif j.value1 is null and j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                      v_val := ''''''''||v_val||'''''''';',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then v_msg := v_msg|| v_qry_msg||''<br>''; end if;',
'',
'                  elsif v_val is not null  and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val := ''''''''||v_val||''''''''; end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_colnm,v_val),v_col2,v_val2) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then v_msg := v_msg|| v_qry_msg||''<br>''; end if;',
'',
'                  elsif v_val is not null  and j.query_type=''CP'' then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val := ''''''''||v_val||''''''''; end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then v_msg := v_msg|| v_qry_msg||''<br>''; end if;',
'',
'                  elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                      v_val := ''''''''||v_val||'''''''';',
'                      v_val2 := ''''''''||v_val2||'''''''';',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_colnm,v_val),v_col2,v_val2) into v_cond1;',
'',
'                      if v_cond1 = 1 and (length(v_msg) < 2500 or length(v_msg) is null) then v_msg := v_msg|| v_qry_msg||''<br>''; end if;',
'',
'                  elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                      v_val := ''''''''||v_val||'''''''';',
'',
'                      execute immediate ''select count(1) from dual where ''||replace(replace(v_cond1,v_colnm,v_val),v_col2,v_val2) into v_cond1;',
'',
'                      if v_cond1 = 1 then v_msg := v_msg|| v_qry_msg||''<br>''; end if;',
'                      ',
'                  elsif v_val is not null  and j.query_type=''SPMI'' and j.condition1 not in (''in'',''not in'') and j.value2 is null then',
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
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val := ''''''''||v_val||''''''''; end if;',
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
'    :P509_MSG:=v_msg;',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style=color:red>''||v_msg||''<br></span>'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4132587165031782169
,p_process_comment=>'Request is contained in value : ''SAVE'',''CREATE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132579618697782153)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Dynamic Informative Message_CV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_msg varchar2(32767) := ''''; v_item_id number; v_colnm varchar2(50); v_col2 varchar2(50);',
'    v_val varchar2(400); v_val1 varchar2(400); v_val2 varchar2(400); v_val3 varchar2(400); m number; n number;',
'    v_item_label varchar2(4000); v_cond1 varchar2(10000);  v_cond2 varchar2(10000);  v_cnt number; v_cnt1 number; v_cnt2 number; v_cnt3 number; v_qry_msg varchar2(500);',
'    v_item_seq number; v_item_seq1 number; v_itm_seq2 number; v_itmtyp varchar2(30); v_ppid number;',
'    v_tblnm varchar2(100); v_study number; v_pvid number; v_crfid number; p number := 1;  v_itmtyp1 varchar2(200); v_msg1 varchar2(32767);  v_pvid1 number;',
'begin',
'',
'    v_study:=:APP_EDC_STUDY_ID; v_pvid:=:APP_EDC_PATIENT_VISIT_ID; v_crfid:=:P509_CRF_ID;  v_ppid:=:P37_PATIENT_PROFILE_ID;  v_msg1 := :P509_MSG;',
'',
'    select count(1) into v_cnt1 from edc_crf_items where crf_id=v_crfid and study_id=v_study;',
'',
'    select item_id,item_seq into v_item_id,v_item_seq from edc_crf_items where crf_id=v_crfid and study_id=v_study and item_seq = (select min(item_seq) from edc_crf_items where crf_id=v_crfid and study_id=v_study);',
'',
'    for i in 1..v_cnt1 loop',
'',
'        select column_name,item_label,item_type,item_seq into v_colnm,v_item_label,v_itmtyp,v_itm_seq2 from edc_crf_items where item_id=v_item_id and crf_id=v_crfid AND study_id=v_study;',
'',
'        select count(1) into v_cnt from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and qry_actin=''Yes'' and query_type in (''CV'');',
'',
'        if v_cnt > 0 then',
'',
'          for j in (select query_id,value1,condition1,query_type,condition2, visit_title,col2,value2,crf_id1,visit_title1 from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and qry_actin=''Yes'' and query_type in (''CV'')) loop',
'',
'             v_cond1 := '''';',
'',
'              if j.visit_title=''All'' or j.visit_title=:APP_EDC_VISIT_NAME then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CV'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      if upper(j.visit_title1) != ''COMMON FORMS'' then',
'                          select count(1) into v_cnt3 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                          if v_cnt3 > 0 then select patient_visit_id into v_pvid1 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                          execute immediate ''select count(1) from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_cnt2;',
'                          if v_cnt2>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_val3; end if; end if;',
'                      elsif upper(j.visit_title1) = ''COMMON FORMS'' then',
'                          execute immediate ''select count(1) from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_cnt3;',
'                          if v_cnt2>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_val3; end if;',
'                      end if;',
'',
'                      if v_itmtyp != ''DATE'' and v_cnt2 > 0 and v_cnt3 > 0 then',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''''''''||v_val3||'''''' '' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      elsif v_cnt2 > 0 and v_cnt3 > 0 then',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''to_date(''''''||v_val3||'''''',''''DD-MM-YY'''') '' query_cond'
||'ition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CV'' ',
'                  and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      if upper(j.visit_title1) != ''COMMON FORMS'' then',
'                          select count(1) into v_cnt3 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                          if v_cnt3 > 0 then select patient_visit_id into v_pvid1 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                          execute immediate ''select count(1) from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_cnt2;',
'                          if v_cnt2>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_val3; end if; end if;',
'                      elsif upper(j.visit_title1) = ''COMMON FORMS'' then',
'                          execute immediate ''select count(1) from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_cnt3;',
'                          if v_cnt2>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_val3; end if;',
'                      end if;',
'',
'                      if v_cnt2 > 0 and v_cnt3 > 0 then',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CV'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      if upper(j.visit_title1) != ''COMMON FORMS'' then',
'                          select count(1) into v_cnt3 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                          if v_cnt3 > 0 then select patient_visit_id into v_pvid1 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                          execute immediate ''select count(1) from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_cnt2;',
'                          if v_cnt2>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_val3; end if; end if;',
'                      elsif upper(j.visit_title1) = ''COMMON FORMS'' then',
'                          execute immediate ''select count(1) from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_cnt3;',
'                          if v_cnt2>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_val3; end if;',
'                      end if;',
'',
'                      if v_cnt2 > 0 and v_cnt3 > 0 then',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' ''||v_val3 query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CV'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                      execute immediate ''select crf_table_name from edc_crf_master where crf_id = ''||j.crf_id1||'' and study_id = ''||v_study into v_tblnm;',
'',
'                      if upper(j.visit_title1) != ''COMMON FORMS'' then',
'                          select count(1) into v_cnt3 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                          if v_cnt3 > 0 then select patient_visit_id into v_pvid1 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                          execute immediate ''select count(1) from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_cnt2;',
'                          if v_cnt2>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_val3; end if; end if;',
'                      elsif upper(j.visit_title1) = ''COMMON FORMS'' then',
'                          execute immediate ''select count(1) from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_cnt3;',
'                          if v_cnt2>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_val3; end if;',
'                      end if;',
'',
'                      if v_cnt2 > 0 and v_cnt3 > 0 then',
'                      SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                      DECODE(CONDITION2,''is null'',''is null'',''is not null'',''is not null'',''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2|'
||'|'''''')'' query_condition, query_msg',
'                      into v_cond1,v_qry_msg from EDC_QUERIES where crf_id=v_crfid and col1=v_colnm and query_id=j.query_id and qry_actin=''Yes'';',
'                      end if;',
'',
'                  end if;',
'',
'                  if v_itmtyp != ''RADIO BUTTON'' then',
'                    execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID =''||v_crfid||',
'                    ''AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||v_colnm||'''''''' into p;',
'                    v_val := upper(apex_application.g_f01(p));',
'                  elsif v_itmtyp = ''RADIO BUTTON'' then',
'                    execute immediate ''select upper(field_val) from save_radio where upper(field_name) = upper(''''''||v_colnm||'''''') and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'                    '''''' and crf_id = ''||v_crfid||'' and study_id = ''||v_study||'' and patient_visit_id = ''||v_pvid||'' and patient_profile_id = ''||v_ppid into v_val;',
'                  end if;',
'',
'                  if v_val is not null  and j.query_type=''CV'' then',
'',
'                      if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val := ''''''''||v_val||''''''''; end if;',
'',
'                      if v_cond1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_cond1,v_colnm,v_val) into v_cond1; end if;',
'',
'                      if v_cond1 = 1 then v_msg := v_msg|| v_qry_msg||''<br>''; end if;',
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
'    v_msg := v_msg||v_msg1;',
'    :P509_MSG := v_msg;',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style=color:red>''||v_msg||''<br></span>'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4132579618697782153
,p_process_comment=>'Request is contained in value : ''SAVE'',''CREATE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2686589605922622770)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(32767);',
'    v_child_tbl varchar2(100);',
'    v_crf_tbl_pk_col varchar2(100);',
'    v_tbl_pk_col number;',
'    v_cnt number;',
'    TYPE EmpCurTyp IS REF CURSOR;',
'    emp_cv   EmpCurTyp;',
'    v_cur_txt1 varchar2(2000);',
'    v_max_audit_log_id number;',
'    v_ex_new_value varchar2(10);',
'    v_sec_status number;',
'    v_old_val number;',
'    v_diary_type varchar2(100);',
'    v_qry_cnt number;',
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
'',
'    select count(1) into v_qry_cnt',
'    from edc_crf_queries',
'    where crf_id = :P509_CRF_ID',
'    and qry_status in (''Open'',''Reopened'')',
'    and patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'    ',
'    if v_qry_cnt = 0 then',
'',
'        select diary_type into v_diary_type',
'        from edc_patient_diary',
'        where patient_diary_id = :APP_EDC_PATIENT_DIARY_ID;',
'',
'        if :P509_CRF_ID = 21 then',
'            v_old_val := 3;',
'        elsif v_diary_type = ''Electronic'' then',
'            v_old_val := 4;',
'        elsif v_diary_type = ''Paper'' then',
'            v_old_val := 3;',
'        end if;',
'',
'        l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                '',509,''''SECTION_STATUS'''',''''''||v_old_val||'''''',''''4.5'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'                execute immediate l_sql;',
'                commit;',
'',
'        edc_workflow.UPDATE_SCHEDULE_STATUS_WEB(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID);',
'        COMMIT;',
'',
'        l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' SET UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'                UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') , SECTION_STATUS = 4.5',
'                WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P509_CRF_TABLE_PK_COL||'' = ''||:P509_CRF_TABLE_PK_VAL;',
'                execute immediate l_sql;',
'                commit;',
'',
'        select crf_table_name,crf_table_pk_col into v_child_tbl,v_crf_tbl_pk_col',
'        from edc_crf_master',
'        where study_id = :APP_EDC_STUDY_ID',
'        and parent_page = :P509_CRF_ID;',
'',
'        execute immediate ''select count(1) from ''||v_child_tbl||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;',
'',
'        if v_cnt > 0 then',
'',
'            /*l_sql := ''update ''||v_child_tbl||'' SET SECTION_STATUS = 4, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'                UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'                WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'                execute immediate l_sql;',
'                commit;*/',
'',
'            v_cur_txt1 := ''select ''||v_crf_tbl_pk_col||'' from ''||v_child_tbl||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'',
'            open emp_cv for v_cur_txt1;',
'            loop',
'            fetch emp_cv into v_tbl_pk_col;',
'                exit when emp_cv%NOTFOUND;',
'',
'                execute immediate ''select section_status from ''||v_child_tbl||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and ''||v_crf_tbl_pk_col||'' = ''||v_tbl_pk_col',
'                into v_sec_status;',
'',
'                if v_sec_status = v_old_val then',
'',
'                    l_sql := ''update ''||v_child_tbl||'' SET SECTION_STATUS = 4.5, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'                    UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'                    WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||v_crf_tbl_pk_col||'' = ''||v_tbl_pk_col;',
'                    execute immediate l_sql;',
'                    commit;',
'',
'                    execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                                  where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                                  ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                                  ''and column_name = ''''SECTION_STATUS'''' ',
'                                   and table_name = ''''''||v_child_tbl||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                                  ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                                  ''and table_pk_value = ''||v_tbl_pk_col into v_max_audit_log_id;',
'                    commit;      ',
'',
'                    if v_max_audit_log_id = 0 then',
'                       v_ex_new_value := null;',
'                    else',
'                       execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'                       commit;  ',
'                    end if;',
'',
'                    IF v_ex_new_value != 4.5 THEN',
'                        l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                        values(''''''||v_child_tbl||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                        '',510,''''SECTION_STATUS'''',''''''||v_old_val||'''''',''''4.5'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_tbl_pk_col||'')'';',
'                        execute immediate l_sql;',
'                        commit;',
'                    END IF;           --end of IF v_ex_new_value != 4 THEN',
'',
'                end if;',
'',
'            end loop;',
'',
'        end if;',
'        ',
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
'        if :P509_CRF_ID = 9 then',
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
'                    INSERT INTO EDC_CRF_ONS661( ONS661_ID, STUDY_ID, PATIENT_DIARY_ID, SECTION_STATUS, ONSQUES, CREATED_BY,CREATED_ON) ',
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
'                        update edc_crf_ons661 set onsques = ''Yes'', UPDATED_BY = UPPER(:APP_USER_NAME),',
'                        UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''DD-MON-YYYY HH24:MI:SS''),''DD-MON-YYYY HH24:MI:SS'') where patient_diary_id = v_next_patient_diary_id;',
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
'                         and upper(onsd_status) = ''ONGOING'') loop',
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
'        end if;        --end of :P509_CRF_ID = 10',
'        ',
'    end if;        --if v_cnt > 0 then',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error while Submitting for review.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2686589443461622769)
,p_process_success_message=>'Submitted for Review'
,p_internal_uid=>2686589605922622770
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2686590208057622776)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRA Review'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(32767);',
'    v_child_tbl varchar2(100);',
'    v_crf_tbl_pk_col varchar2(100);',
'    v_tbl_pk_col number;',
'    v_cnt number;',
'    TYPE EmpCurTyp IS REF CURSOR;',
'    emp_cv   EmpCurTyp;',
'    v_cur_txt1 varchar2(2000);',
'    v_max_audit_log_id number;',
'    v_ex_new_value varchar2(10);',
'    v_sec_status number;',
'begin',
'',
'    l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''SECTION_STATUS'''',''''4'''',''''6'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'',
'    edc_workflow.UPDATE_SCHEDULE_STATUS_WEB(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID);',
'    COMMIT;',
'',
'    l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' SET UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'            UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') , SECTION_STATUS = 6',
'            WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||:P509_CRF_TABLE_PK_COL||'' = ''||:P509_CRF_TABLE_PK_VAL;',
'            execute immediate l_sql;',
'            commit;',
'',
'    select crf_table_name,crf_table_pk_col into v_child_tbl,v_crf_tbl_pk_col',
'    from edc_crf_master',
'    where study_id = :APP_EDC_STUDY_ID',
'    and parent_page = :P509_CRF_ID;',
'',
'    execute immediate ''select count(1) from ''||v_child_tbl||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;',
'',
'    if v_cnt > 0 then',
'',
'        /*l_sql := ''update ''||v_child_tbl||'' SET SECTION_STATUS = 4, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'            UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'            WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'            execute immediate l_sql;',
'            commit;*/',
'            ',
'        v_cur_txt1 := ''select ''||v_crf_tbl_pk_col||'' from ''||v_child_tbl||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'                ',
'        open emp_cv for v_cur_txt1;',
'        loop',
'        fetch emp_cv into v_tbl_pk_col;',
'            exit when emp_cv%NOTFOUND;',
'            ',
'            execute immediate ''select section_status from ''||v_child_tbl||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and ''||v_crf_tbl_pk_col||'' = ''||v_tbl_pk_col',
'            into v_sec_status;',
'            ',
'            if v_sec_status = 4 then',
'                ',
'                l_sql := ''update ''||v_child_tbl||'' SET SECTION_STATUS = 6, UPDATED_BY = upper(''''''||:APP_USER_NAME||''''''), ',
'                UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') ',
'                WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' AND ''||v_crf_tbl_pk_col||'' = ''||v_tbl_pk_col;',
'                execute immediate l_sql;',
'                commit;',
'            ',
'                execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                              where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                              ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                              ''and column_name = ''''SECTION_STATUS'''' ',
'                               and table_name = ''''''||v_child_tbl||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                              ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                              ''and table_pk_value = ''||v_tbl_pk_col into v_max_audit_log_id;',
'                commit;      ',
'',
'                if v_max_audit_log_id = 0 then',
'                   v_ex_new_value := null;',
'                else',
'                   execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'                   commit;  ',
'                end if;',
'',
'                IF v_ex_new_value != 6 THEN',
'                    l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                    USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                    values(''''''||v_child_tbl||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                    '',510,''''SECTION_STATUS'''',''''4'''',''''6'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_tbl_pk_col||'')'';',
'                    execute immediate l_sql;',
'                    commit;',
'                END IF;           --end of IF v_ex_new_value != 4 THEN',
'',
'            end if;',
'            ',
'        end loop;',
'',
'    end if;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error while CRA Review'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2686590050173622775)
,p_process_success_message=>'CRA Reviewed'
,p_internal_uid=>2686590208057622776
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132582427585782159)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Schedule Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'EDC_WORKFLOW.update_schedule_status_web(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132582427585782159
,p_process_comment=>'''SAVE'',''CREATE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132589090023782172)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Child Record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PARENT_QUES VARCHAR2(100);',
'    V_PARENT_ANS VARCHAR2(100);',
'    V_CNT NUMBER;',
'    V_CNT1 NUMBER;',
'    V_CHILD_TABLE VARCHAR2(50);',
'    V_CHILD_CRF NUMBER;',
'BEGIN',
'',
'    SELECT PARENT_QUES, PARENT_ANS',
'    INTO V_PARENT_QUES, V_PARENT_ANS',
'    FROM EDC_CRF_MASTER',
'    WHERE PARENT_PAGE = :P509_CRF_ID',
'    AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'    SELECT CRF_ID,CRF_TABLE_NAME INTO V_CHILD_CRF,V_CHILD_TABLE',
'    FROM EDC_CRF_MASTER',
'    WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'    AND PARENT_PAGE = :P509_CRF_ID',
'    AND CRF_TYPE = ''VCHL'';',
'    ',
'    execute immediate ''select count(1) from ''||V_CHILD_TABLE||',
'    '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into V_CNT;    --child records exist or not',
'    ',
'    execute immediate ''select count(1) from ''||:P509_CRF_TABLE_NAME||',
'    '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'    '' AND ''||V_PARENT_QUES||'' != ''''''||V_PARENT_ANS||'''''''' into V_CNT1;        --parent ques != parent ans',
'    ',
'    if v_cnt > 0 and v_cnt1 = 1 then',
'        ',
'        delete from edc_crf_queries_details where qry_id in (select qry_id from edc_crf_queries',
'        where page_id = 510',
'        and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        and patient_profile_id = :APP_PATIENT_PROFILE_ID',
'        and crf_id = V_CHILD_CRF);',
'        commit;',
'        ',
'        delete from edc_crf_queries',
'        where page_id = 510',
'        and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        and patient_profile_id = :APP_PATIENT_PROFILE_ID',
'        and crf_id = V_CHILD_CRF;',
'        commit;',
'        ',
'        delete from audit_trail',
'        where page_no = 510',
'        and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        and table_name = V_CHILD_TABLE;',
'        commit;',
'        ',
'        execute immediate ''delete from ''||V_CHILD_TABLE||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'        commit;',
'        ',
'    end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P509_DELETE_CHILD = ''Yes'' AND :P509_CRF_ID != 34'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>4132589090023782172
,p_process_comment=>'''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132589467368782172)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Child Record_34'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PARENT_QUES VARCHAR2(100);',
'    V_PARENT_ANS VARCHAR2(100);',
'    V_CNT NUMBER;',
'    V_CNT1 NUMBER;',
'    V_CNT2 NUMBER;',
'BEGIN',
'    ',
'    select count(1) into v_cnt',
'    from edc_crf_deb11',
'    where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID;     --child records exist or not',
'    ',
'    select count(1) into v_cnt2        --if the main question is selected as No',
'    from edc_crf_deb1',
'    where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'    and N_HOSP = ''No'';',
'        ',
'    --WHEN 4.1D is No',
'    select count(1) into V_CNT1',
'    from EDC_CRF_DEB1',
'    WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'    AND (N_ABIO = ''No'' OR N_ABIO IS NULL);',
'    ',
'    if (v_cnt > 0 and v_cnt1 = 1) or v_cnt2 > 0 then',
'        ',
'        delete from edc_crf_queries_details where qry_id in (select qry_id from edc_crf_queries',
'        where page_id = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and tbl_pk_id in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 1)',
'        and crf_id = 47);',
'        commit;',
'        ',
'        delete from edc_crf_queries',
'        where page_id = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and tbl_pk_id in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 1)',
'        and crf_id = 47;',
'        commit;',
'        ',
'        delete from audit_trail',
'        where page_no = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and table_pk_value in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 1)',
'        and table_name = ''EDC_CRF_DEB11'';',
'        commit;',
'        ',
'        delete from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 1;',
'        commit;',
'        ',
'    end if;',
'    ',
'    --WHEN 4.2D is No',
'    select count(1) into V_CNT1',
'    from EDC_CRF_DEB1',
'    WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'    AND (N_ABIO2 = ''No'' OR N_ABIO2 IS NULL);',
'    ',
'    --if v_cnt > 0 and v_cnt1 = 1 then',
'    if (v_cnt > 0 and v_cnt1 = 1) or v_cnt2 > 0 then',
'        ',
'        delete from edc_crf_queries_details where qry_id in (select qry_id from edc_crf_queries',
'        where page_id = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and tbl_pk_id in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 2)',
'        and crf_id = 47);',
'        commit;',
'        ',
'        delete from edc_crf_queries',
'        where page_id = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and tbl_pk_id in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 2)',
'        and crf_id = 47;',
'        commit;',
'        ',
'        delete from audit_trail',
'        where page_no = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and table_pk_value in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 2)',
'        and table_name = ''EDC_CRF_DEB11'';',
'        commit;',
'        ',
'        delete from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 2;',
'        commit;',
'        ',
'    end if;',
'    ',
'    --WHEN 4.3D is No',
'    select count(1) into V_CNT1',
'    from EDC_CRF_DEB1',
'    WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'    AND (N_ABIO3 = ''No'' OR N_ABIO3 IS NULL);',
'    ',
'    --if v_cnt > 0 and v_cnt1 = 1 then',
'    if (v_cnt > 0 and v_cnt1 = 1) or v_cnt2 > 0 then',
'        ',
'        delete from edc_crf_queries_details where qry_id in (select qry_id from edc_crf_queries',
'        where page_id = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and tbl_pk_id in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 3)',
'        and crf_id = 47);',
'        commit;',
'        ',
'        delete from edc_crf_queries',
'        where page_id = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and tbl_pk_id in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 3)',
'        and crf_id = 47;',
'        commit;',
'        ',
'        delete from audit_trail',
'        where page_no = 510',
'        and patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'        and table_pk_value in (select deb11_id from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 3)',
'        and table_name = ''EDC_CRF_DEB11'';',
'        commit;',
'        ',
'        delete from edc_crf_deb11 where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID and N_PHOSPCT = 3;',
'        commit;',
'        ',
'    end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P509_DELETE_CHILD = ''Yes'' AND :P509_CRF_ID = 34'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>4132589467368782172
,p_process_comment=>'''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132582789786782159)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4132582789786782159
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132586841277782168)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set CRF Page Name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_cnt2 number;',
'    V_CNT3 NUMBER;',
'    v_id number;',
'    v_child_crf_id number;',
'    v_child_table varchar2(100);',
'    v_parent_ques varchar2(100);',
'    v_parent_ans varchar2(100);',
'    v_parent_ques_type varchar2(100);',
'    v_child_crf_name varchar2(1000);',
'    V_SCHEDULE_ID NUMBER;',
'    V_CRF_ID NUMBER;',
'begin',
'',
'    SELECT COUNT(1) INTO V_CNT3',
'    FROM EDC_PATIENT_DIARY',
'    WHERE UPPER(SCHEDULE_TITLE) = UPPER(:APP_EDC_SCHEDULE_NAME)',
'    AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID',
'    AND STUDY_ID = :APP_EDC_STUDY_ID;',
'    ',
'    IF :P509_CRF_ID = 0 THEN',
'        SELECT MIN(CRF_ID) INTO V_CRF_ID',
'        FROM EDC_PATIENT_DIARY_PAGES',
'        WHERE UPPER(SCHEDULE_NAME) = UPPER(:APP_EDC_SCHEDULE_NAME)',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'        ',
'        :P509_CRF_ID := V_CRF_ID;',
'    ELSE',
'        V_CRF_ID := :P509_CRF_ID;',
'    END IF;',
'    ',
'    IF V_CNT3 > 0 THEN',
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
'    ',
'    select crf_name,crf_short_name,crf_table_name, crf_Table_pk_col',
'    into :P509_CRF_PAGE_NAME, :P509_CRF_SHORT_NAME, :P509_CRF_TABLE_NAME, :P509_CRF_TABLE_PK_COL',
'    from edc_crf_master',
'    where crf_id = V_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID',
'    and parent_page is null; ',
'    ',
'    select crf_id,crf_name,crf_table_name,parent_ques,parent_ans into v_child_crf_id, v_child_crf_name, v_child_table,v_parent_ques, v_parent_ans',
'    from edc_crf_master',
'    where study_id = :APP_EDC_STUDY_ID',
'    and parent_page = V_CRF_ID;',
'    ',
'    :P509_CHILD_CRF_ID := v_child_crf_id;',
'    :P509_CHILD_CRF_NAME := v_child_crf_name;',
'    :P509_PARENT_QUES := v_parent_ques;',
'    :P509_PARENT_ANS := v_parent_ans;',
'    ',
'    select item_type into v_parent_ques_type',
'    from edc_crf_items',
'    where crf_id = V_CRF_ID',
'    and column_name = v_parent_ques',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    :P509_PARENT_QUES_TYPE := v_parent_ques_type;',
'    ',
'    if v_parent_ques_type = ''RADIO BUTTON'' then',
'',
'        select count(1) into v_cnt1',
'        from edc_crf_items',
'        where crf_id = V_CRF_ID',
'        and item_type = ''RADIO BUTTON''',
'        and item_seq < (select item_seq from edc_crf_items where crf_id = :P509_CRF_ID and study_id = :APP_EDC_STUDY_ID and column_name = v_parent_ques);',
'        ',
'        v_id := 4 + v_cnt1;',
'        :P509_ID := v_id;',
'        ',
'    elsif v_parent_ques_type = ''SELECT LIST'' then',
'        ',
'        select item_id into v_id',
'        from edc_crf_items',
'        where crf_id = V_CRF_ID',
'        and column_name = v_parent_ques',
'        and study_id = :APP_EDC_STUDY_ID;',
'        ',
'        :P509_ID := v_id;',
'    ',
'    end if;',
'    ',
'    execute immediate ''select count(1) from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;',
'    ',
'    if v_cnt = 1 then',
'        execute immediate ''select ''||:P509_CRF_TABLE_PK_COL||'' from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID',
'        into :P509_CRF_TABLE_PK_VAL;',
'        ',
'        execute immediate ''select count(1) from ''||v_child_table||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt2;',
'        ',
'        :P509_CHILD_COUNT := v_cnt2;',
'    end if;        ',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132586841277782168
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132585211905782164)
,p_process_sequence=>120
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRF Audit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    execute immediate ''SELECT COUNT(1) FROM EDC_CRF_''||:P509_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'    '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'    '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID INTO :P509_COUNT;   ',
'    ',
'    IF :P509_COUNT > 0 THEN',
' ',
'    execute immediate ''select SECTION_STATUS, CREATED_BY, TO_CHAR(CREATED_ON,''''dd-mm-rrrr hh24:mi:ss''''), UPDATED_BY, ',
'    TO_CHAR(UPDATED_ON,''''dd-mm-rrrr hh24:mi:ss'''') FROM EDC_CRF_''||:P509_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'    '' WHERE STUDY_ID = ''||:APP_EDC_STUDY_ID||',
'    '' AND PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID ',
'    INTO :P509_SECTION_STATUS, :P509_CREATED_BY, :P509_CREATED_ON, :P509_UPDATED_BY, :P509_UPDATED_ON;',
'   ',
'  ',
'    END IF;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132585211905782164
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132587580569782171)
,p_process_sequence=>130
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set P509_ENDIS_SCRIPT'
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
'        where CRF_ID = :P509_CRF_ID',
'    )',
'    LOOP',
'        ',
'            --v_script1 := '''';',
'            ',
'            select count(1) into v_cnt',
'            from EDC_CRF_ITEMS_ENDIS',
'            WHERE CRF_SHORT_NAME = :P509_CRF_SHORT_NAME',
'            AND CRF_ID = :P509_CRF_ID',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND ITEM_ID = i.item_id',
'            order by ITEM_TOBE_ENDIS;',
'            ',
'            select item_type into v_item_type',
'            from edc_crf_items',
'            where crf_id = :P509_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_id = i.item_id;',
'            ',
'            if v_cnt > 0 then ',
'',
'                for m in ( select item_value, item_endis,REPLACE(ITEM_TOBE_ENDIS,'':'','','') ITEM_TOBE_ENDIS',
'                from EDC_CRF_ITEMS_ENDIS',
'                WHERE CRF_SHORT_NAME = :P509_CRF_SHORT_NAME',
'                AND CRF_ID = :P509_CRF_ID',
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
'                    where crf_id = :P509_CRF_ID',
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
'    select v_script1 into :P509_ENDIS_SCRIPT from dual;',
'   ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132587580569782171
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132588440799782171)
,p_process_sequence=>180
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set CRF_ID = null for common forms'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    :P100_CRF_ID := NULL;',
'    :P818_CRF_ID := NULL;',
'    :P819_CRF_ID := NULL;',
'    :P820_CRF_ID := NULL;',
'    :P518_CRF_ID := NULL;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132588440799782171
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132581235694782156)
,p_process_sequence=>200
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set P509_QRY_COUNT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    if :APP_EDC_ROLE_ID = 16 THEN',
'    ',
'        SELECT COUNT(*) INTO :P509_QRY_COUNT',
'        FROM edc_crf_queries',
'        where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        AND PAGE_ID IN (509,510)',
'        AND STUDY_ID = :APP_EDC_STUDY_ID',
'        AND (CRF_ID = :P509_CRF_ID OR CRF_ID = :P509_CHILD_CRF_ID)',
'        AND QRY_STATUS in (''Open'',''Reopened'');',
'        --AND ROLE_ID = :APP_EDC_ROLE_ID',
'        --AND TBL_PK_ID = :P509_CRF_TABLE_PK_VAL;',
'        ',
'    elsif :APP_EDC_ROLE_ID IN (27,17) THEN',
'        ',
'        SELECT COUNT(*) INTO :P509_QRY_COUNT',
'        FROM edc_crf_queries',
'        where PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        --AND PAGE_ID = :APP_PAGE_ID',
'        AND PAGE_ID IN (509,510)',
'        AND STUDY_ID = :APP_EDC_STUDY_ID',
'        AND (CRF_ID = :P509_CRF_ID OR CRF_ID = :P509_CHILD_CRF_ID)',
'        AND QRY_STATUS in (''Responded'')',
'        AND (ROLE_ID = :APP_EDC_ROLE_ID OR ROLE_ID IS NULL);',
'        --AND TBL_PK_ID = :P509_CRF_TABLE_PK_VAL;',
'        ',
'    end if;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132581235694782156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132580394341782154)
,p_process_sequence=>210
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Values to SAVE_RADIO on page load'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_srid number;',
'    v_user_id number;    ',
'    v_field_val varchar2(500);',
'begin',
'    select count(1) into v_cnt',
'    from edc_crf_items',
'    where crf_id = :P509_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID',
'    and item_type = ''RADIO BUTTON'';',
'    ',
'    if v_cnt > 0 AND :P509_CRF_TABLE_PK_VAL IS NULL then',
'        ',
'        for i in (select column_name from edc_crf_items',
'                 where crf_id = :P509_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                 ',
'            delete from SAVE_RADIO',
'            WHERE UPPER(FIELD_NAME) = UPPER(i.column_name)',
'            AND CRF_ID = :P509_CRF_ID',
'            AND USER_ID = :APP_EDC_USER_ID',
'            AND USER_NAME = :APP_USER_NAME',
'            AND STUDY_ID = :APP_EDC_STUDY_ID',
'            AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'            AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID;',
'',
'            commit;',
'                 ',
'            insert into save_radio(field_name, field_val,user_id, user_name, crf_id, study_id,PATIENT_DIARY_ID, patient_profile_id) ',
'            values(UPPER(i.column_name), null, :APP_EDC_USER_ID, :APP_USER_NAME, :P509_CRF_ID, :APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID, :APP_PATIENT_PROFILE_ID);',
'            commit;',
'',
'        end loop;',
'        ',
'    elsif v_cnt > 0 and :P509_CRF_TABLE_PK_VAL IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt1 from SAVE_RADIO',
'        where user_name = :APP_USER_NAME',
'        and user_id = :APP_EDC_USER_ID',
'        and crf_id = :P509_CRF_ID',
'        and study_id = :APP_EDC_STUDY_ID',
'        and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'        and patient_profile_id = :APP_PATIENT_PROFILE_ID;',
'        ',
'        if v_cnt1 = 0 then        --insert values from crf table in save_Radio table',
'            ',
'            for i in (select column_name from edc_crf_items',
'                 where crf_id = :P509_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                ',
'                execute immediate ''select ''||i.column_name||'' from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_field_val;',
'                 ',
'                insert into save_radio(field_name, field_val,user_id, user_name, crf_id, study_id,PATIENT_DIARY_ID, patient_profile_id) ',
'                values(UPPER(i.column_name), v_field_val, :APP_EDC_USER_ID, :APP_USER_NAME, :P509_CRF_ID, :APP_EDC_STUDY_ID,:APP_EDC_PATIENT_DIARY_ID, :APP_PATIENT_PROFILE_ID);',
'                commit;',
'',
'            end loop;',
'            ',
'        elsif v_cnt1 > 0 then          --update values from crf table in save_Radio table',
'        ',
'            for i in (select column_name from edc_crf_items',
'                 where crf_id = :P509_CRF_ID',
'                 and study_id = :APP_EDC_STUDY_ID',
'                 and item_type = ''RADIO BUTTON''',
'                 order by item_seq) loop',
'                 ',
'                execute immediate ''select ''||i.column_name||'' from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_field_val;',
'                ',
'                update save_radio set field_val = v_field_val where UPPER(field_name) = UPPER(i.column_name)',
'                and user_name = :APP_USER_NAME',
'                and user_id = :APP_EDC_USER_ID',
'                and crf_id = :P509_CRF_ID',
'                and study_id = :APP_EDC_STUDY_ID',
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
,p_internal_uid=>4132580394341782154
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132588722310782172)
,p_process_sequence=>340
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Assigning value to flag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PARENT_QUES VARCHAR2(100);',
'    V_PARENT_ANS VARCHAR2(100);',
'BEGIN',
'    ',
'        SELECT PARENT_QUES, PARENT_ANS',
'        INTO V_PARENT_QUES, V_PARENT_ANS',
'        FROM EDC_CRF_MASTER',
'        WHERE PARENT_PAGE = :P509_CRF_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'',
'        execute immediate ''select count(1) from ''||:P509_CRF_TABLE_NAME||',
'        '' WHERE PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'        '' AND ''||V_PARENT_QUES||'' = ''''''||V_PARENT_ANS||'''''''' into :P509_FLAG;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132588722310782172
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132579979216782154)
,p_process_sequence=>190
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_RADIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    delete from SAVE_RADIO',
'    WHERE FIELD_NAME = :P509_FIELD_NAME',
'    AND CRF_ID = :P509_CRF_ID',
'    AND USER_ID = :APP_EDC_USER_ID',
'    AND USER_NAME = :APP_USER_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID',
'    AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID;',
'    ',
'    commit;',
'    ',
'    insert into SAVE_RADIO(FIELD_NAME, FIELD_VAL, CRF_ID, USER_ID, USER_NAME, STUDY_ID, PATIENT_DIARY_ID, PATIENT_PROFILE_ID) ',
'    values (:P509_FIELD_NAME, :P509_FIELD_VAL, :P509_CRF_ID, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_STUDY_ID, :APP_EDC_PATIENT_DIARY_ID, :APP_PATIENT_PROFILE_ID);',
'    commit;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132579979216782154
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132580803019782155)
,p_process_sequence=>200
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_RADIO_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    delete from SAVE_RADIO',
'    WHERE FIELD_NAME = :P509_FIELD_NAME',
'    AND CRF_ID = :P509_CRF_ID',
'    AND USER_ID = :APP_EDC_USER_ID',
'    AND USER_NAME = :APP_USER_NAME',
'    AND STUDY_ID = :APP_EDC_STUDY_ID',
'    AND PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    AND PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID;',
'    ',
'    commit;',
'    ',
'    insert into SAVE_RADIO(FIELD_NAME, FIELD_VAL, CRF_ID, USER_ID, USER_NAME, STUDY_ID, PATIENT_DIARY_ID, PATIENT_PROFILE_ID) ',
'    values (:P509_FIELD_NAME, null, :P509_CRF_ID, :APP_EDC_USER_ID, :APP_USER_NAME, :APP_EDC_STUDY_ID, :APP_EDC_PATIENT_DIARY_ID, :APP_PATIENT_PROFILE_ID);',
'    commit;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4132580803019782155
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132586398344782168)
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
'    execute immediate ''select count(1) from EDC_CRF_''||:P509_CRF_SHORT_NAME||:APP_EDC_STUDY_ID||',
'    '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt;',
'    ',
'    select count(1) into v_cnt1',
'    from edc_crf_items',
'    where crf_id = :P509_CRF_ID',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    if v_cnt = 0 then     --insert data in the table',
'    ',
'      :P509_ACTION := ''INSERT'';',
'      ',
'      execute immediate ''select nvl(max(''||:P509_CRF_TABLE_PK_COL||''),0)+1 from ''||:P509_CRF_TABLE_NAME into :P509_CRF_TABLE_PK_VAL;',
'      commit;',
'    ',
'      select crf_table_pk_col,crf_table_name into v_pk_col, v_crf_table_name ',
'      from EDC_CRF_MASTER',
'      where crf_id = :P509_CRF_ID',
'      and crf_short_name = :P509_CRF_SHORT_NAME',
'      and study_id = :APP_EDC_STUDY_ID;',
'      ',
'      select item_id,item_seq into v_item_id,v_item_seq',
'      from edc_crf_items',
'      where crf_id = :P509_CRF_ID',
'      and study_id = :APP_EDC_STUDY_ID',
'      and item_seq = (select min(item_seq) from edc_crf_items where crf_id = :P509_CRF_ID',
'                      and study_id = :APP_EDC_STUDY_ID);',
'      ',
'      v_sql := ''insert into ''||v_crf_table_name||'' (''||v_pk_col||'',STUDY_ID,PATIENT_DIARY_ID,SECTION_STATUS, CREATED_BY, CREATED_ON)',
'      VALUES(''||:P509_CRF_TABLE_PK_VAL||'',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||'',''||:P509_SECTION_STATUS||'',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''))'';',
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
'        and crf_id = :P509_CRF_ID',
'        AND STUDY_ID = :APP_EDC_STUDY_ID;',
'                   ',
'        if v_item_type != ''RADIO BUTTON'' then',
'            v_value := apex_application.g_f01(j);',
'            --v_value := apex_application.g_f01.count;',
'            j := j + 1;',
'        elsif v_item_type = ''RADIO BUTTON'' then',
'            execute immediate ''select field_val from save_radio where field_name = ''''''||v_column_name||'''''' and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'            '''''' and crf_id = ''||:P509_CRF_ID||'' and study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID into v_value;',
'            ',
'            select count(1) into v_cnt2',
'            from edc_crf_items',
'            where crf_id = :P509_CRF_ID',
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
'            values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''''||v_column_name||'''''',NULL,''''''||v_value||'''''',''''''||:P509_ACTION||'''''',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''),NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'            ',
'        end if;',
'                    ',
'        if i < v_cnt1 then',
'        ',
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_item_seq1',
'            from edc_crf_items',
'            where crf_id = :P509_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_seq = (select nvl(min(item_seq),0) from edc_crf_items',
'                            where crf_id = :P509_CRF_ID',
'                            and study_id = :APP_EDC_STUDY_ID',
'                            and item_seq > v_item_seq);',
'',
'            v_item_seq := v_item_seq1;',
'            ',
'        end if;',
'                    ',
'      end loop;',
'    ',
'    elsif v_cnt = 1 then            --update data in the table P509_CRF_TABLE_PK_VAL',
'    ',
'      :P509_ACTION := ''UPDATE'';',
'        ',
'      execute immediate ''select ''||:P509_CRF_TABLE_PK_COL||'' from ''||:P509_CRF_TABLE_NAME||',
'      '' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into :P509_CRF_TABLE_PK_VAL;',
'      commit;',
'    ',
'      select crf_table_pk_col,crf_table_name into v_pk_col, v_crf_table_name ',
'      from EDC_CRF_MASTER',
'      where crf_id = :P509_CRF_ID',
'      and crf_short_name = :P509_CRF_SHORT_NAME',
'      and study_id = :APP_EDC_STUDY_ID;',
'      ',
'      select item_id,item_seq into v_item_id,v_item_seq',
'      from edc_crf_items',
'      where crf_id = :P509_CRF_ID',
'      and study_id = :APP_EDC_STUDY_ID',
'      and item_seq = (select min(item_seq) from edc_crf_items where crf_id = :P509_CRF_ID',
'                      and study_id = :APP_EDC_STUDY_ID);',
'                ',
'      --for i in 1..apex_application.g_f01.count loop',
'      for i in 1..v_cnt1 loop',
'',
'        select column_name,item_type,item_seq into v_column_name,v_item_type,v_item_seq2',
'        from edc_crf_items',
'        where item_id = v_item_id',
'        and crf_id = :P509_CRF_ID',
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
'                execute immediate ''select ''||v_column_name||'' from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_db_value;',
'            else',
'                execute immediate ''select to_char(''||v_column_name||'',''''HH24:MI'''') from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_db_value;',
'            end if;                ',
'        ',
'            v_value := apex_application.g_f01(j);',
'            v_value1 := apex_application.g_f03(i);',
'            j := j + 1;',
'        elsif v_item_type = ''RADIO BUTTON'' then',
'            ',
'            execute immediate ''select ''||v_column_name||'' from ''||v_crf_table_name||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_db_value;',
'        ',
'             execute immediate ''select field_val from save_radio where field_name = ''''''||v_column_name||'''''' and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'            '''''' and crf_id = ''||:P509_CRF_ID||'' and study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID into v_value;',
'            ',
'            v_value1 := apex_application.g_f03(i);',
'            ',
'            select count(1) into v_cnt2',
'            from edc_crf_items',
'            where crf_id = :P509_CRF_ID',
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
'                        ''and column_name = ''''''||v_column_name||''''''and table_name = ''''''||:P509_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                        ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                        ''and table_pk_value = ''||:P509_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
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
'                values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                '',509,''''''||v_column_name||'''''',''''''||v_ex_new_value||'''''',''''''||v_value||'''''',''''''||:P509_ACTION||'''''',UPPER(''''''||:APP_USER_NAME||''''''),TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS''''),''''''||v_value1||'''''','
||'''||:P509_CRF_TABLE_PK_VAL||'')'';',
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
'            where crf_id = :P509_CRF_ID',
'            and study_id = :APP_EDC_STUDY_ID',
'            and item_seq = (select nvl(min(item_seq),0) from edc_crf_items',
'                            where crf_id = :P509_CRF_ID',
'                            and study_id = :APP_EDC_STUDY_ID',
'                            and item_seq > v_item_seq);',
'',
'            v_item_seq := v_item_seq1;',
'            ',
'        end if;',
'                    ',
'      end loop; ',
'      ',
'      l_sql := ''update ''|| v_crf_table_name||'' set UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''') where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;'
||' ',
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
,p_internal_uid=>4132586398344782168
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132585557706782165)
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
'    v_stdy:=:APP_EDC_STUDY_ID;  v_csn:=:P509_CRF_SHORT_NAME;  v_cid:=:P509_CRF_ID;  v_pdid:=:APP_EDC_PATIENT_DIARY_ID;  v_ppid := :APP_PATIENT_PROFILE_ID;',
'',
'    execute immediate ''select count(1) from EDC_CRF_''||v_csn||v_stdy||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt;',
'',
'    select count(1) into v_cnt2 from edc_crf_items where crf_id=v_cid and study_id=v_stdy;',
'    ',
'    if v_cnt=0 then execute immediate ''select nvl(max(''||:P509_CRF_TABLE_PK_COL||''),0)+1 from ''||:P509_CRF_TABLE_NAME into :P509_CRF_TABLE_PK_VAL;',
'    elsif v_cnt=1 then execute immediate ''select ''||:P509_CRF_TABLE_PK_COL||'' from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID=''||v_pdid||'' and study_id=''||v_stdy into v_pkval;',
'    end if; commit;',
'',
'    l_sql:=''update edc_crf_queries set qry_status=''''Closed'''' where study_id=''||v_stdy||''and PATIENT_DIARY_ID=''||v_pdid||''and patient_profile_id=''||v_ppid||'' and page_id=509 and qry_status=''''Open'''' and auto_flag=''''A'''' and crf_id=''||v_cid||'' and crf_sh'
||'ort_name=''''''||v_csn||'''''''';',
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
'        if v_cnt1>0 then',
'',
'          for j in (select query_id,col1,value1,condition1,query_type,condition2, visit_title,col2,value2,crf_id1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''SPSI'',''SPMI'',''CP'')) loop',
'          v_con1:='''';',
'',
'            if j.visit_title=''All'' or j.visit_title=:APP_EDC_VISIT_NAME then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPSI'' THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg into v_con1,v_qmsg f'
||'rom EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
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
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' ''||VALUE1,query_msg into v_con1,v_qmsg from EDC_QUERI'
||'ES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPSI'' then',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''in'',''IN (''||Col2||'')'',''not in'',''NOT IN (''||Col2||'')'',condition1) ||'' '',query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.col2 is not null and j.value2 is null and j.value1 is null THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||COL2||'''''')'',query_msg,col2 into v_con1,v_q'
||'msg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is not null and j.value2 is null THEN',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1) ||'' upper(''''''||VALUE1||'''''') and ''''''||COL2||'''''' ''||CONDITI'
||'ON2 query_condition,query_msg,col2 into v_con1,v_qmsg,v_col2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
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
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2 into v_con1,v_qmsg,v_co'
||'l2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''SPMI'' and j.value2 is not null THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' ''||VALUE1||'' and ''''''||COL2||'''''' ''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2 into v_con1,v_qmsg, v_c'
||'ol2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''SPMI'' and j.value1 is null and j.value2 is not null THEN',
'',
'                  SELECT COL1||'' ''||CONDITION1 ||'' and ''''''||COL2||'''''' ''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' ''''''||VALUE2||'''''''' query_condition,query_msg,col2 into v_con1,v_qmsg,v_co'
||'l2 from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
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
'                  if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''''''''||v_val3||'''''' '' query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||''(''''''||v_val3||'''''')'' query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid  and col1=v_col and query_id=j.query_id; end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not nu'
||'ll THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg '
||'from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||''(''||value1||'')''||'' and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg '
||'from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' ''||v_val3 query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||''(''||v_val3||'')'' query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg '
||'from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'      ',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1=''in'' and j.query_type=''CP'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg '
||'from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''CP'' and j.value1 is null and j.condition2 is not null and j.value2 is not null T'
||'HEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg '
||'from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 is not null and j.query_type=''CP'' and j.value1 is not null and j.condition2 in (''is null'',''is not null'') and j.value2 is null T'
||'HEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and ''''''||v_val3||'''''' ''||COND'
||'ITION2  query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 in (''is null'',''is not null'') and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  execute immediate ''select count(1) from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_cnt3;',
'                  if v_cnt3>0 then execute immediate ''select upper(''||j.col2||'') from ''||v_tblnm||'' where PATIENT_DIARY_ID=''||v_pdid into v_val3;',
'',
'                  SELECT COL1||'' ''||CONDITION1||'' and ''''''||v_val3||'''''' ''||CONDITION2  query_condition,query_msg into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id; end if;',
'',
'                end if;',
'',
'                if v_itmtyp != ''RADIO BUTTON'' then',
'                    execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID = ''||v_cid||'' AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||v_col||'''''''' into'
||' p;',
'                    if j.condition1 not in (''in'',''not in'') then v_val:=upper(apex_application.g_f01(p)); else v_val:=apex_application.g_f01(p); end if;',
'                elsif v_itmtyp=''RADIO BUTTON'' then',
'                    execute immediate ''select upper(field_val) from save_radio where field_name=''''''||v_col||'''''' and user_id=''||:APP_EDC_USER_ID||'' and user_name=''''''||:APP_USER_NAME||'''''' and crf_id=''||v_cid||'' and study_id=''||v_stdy||'' and PATIENT_DIA'
||'RY_ID=''||v_pdid||'' and patient_profile_id=''||v_ppid into v_val;',
'                end if;',
'',
'                v_val1:=v_val;',
'',
'                if j.query_type=''SPMI'' then',
'                    select item_type into v_itmtyp1 from edc_crf_items where column_name=j.col2 and crf_id=v_cid and study_id=v_stdy;',
'                    ',
'                    if v_itmtyp1 != ''RADIO BUTTON'' then',
'                    execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID = ''||v_cid||'' AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||j.col2||'''''''' int'
||'o n;',
'',
'                    v_val2:=upper(apex_application.g_f01(n));',
'',
'                    if v_val2 is null then v_val2:=null; end if;',
'',
'                    elsif v_itmtyp1 = ''RADIO BUTTON'' then',
'                    execute immediate ''select upper(field_val) from save_radio where field_name = upper(''''''||j.col2||'''''') and user_id = ''||:APP_EDC_USER_ID||'' and user_name = ''''''||:APP_USER_NAME||',
'                    '''''' and crf_id = ''||v_cid||'' and study_id = ''||v_stdy||'' and PATIENT_DIARY_ID = ''||v_pdid||'' and patient_profile_id = ''||v_ppid into v_val2;',
'                    if v_val2 is null then v_val2 := null; end if;',
'',
'                    end if;',
'',
'                end if;',
'',
'                if j.query_type=''SPSI'' and j.col2 is null and j.condition1 in (''is null'',''is not null'') then',
'',
'                  v_val:=''''''''||v_val||'''''''';',
'                  execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||v_col||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'',
'                elsif v_val is not null  and j.query_type=''SPSI'' then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN    v_val:=''''''''||v_val||'''''''';    end if;',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||v_col||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'',
'                elsif j.value1 is null and j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                  v_val:=''''''''||v_val||'''''''';',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'',
'                elsif v_val is not null  and j.query_type=''CP'' and j.condition2 in (''is null'',''is not null'') then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'',
'                elsif j.query_type=''CP'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'',
'                elsif v_val is not null  and j.query_type=''CP'' then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||j.col1||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'',
'                elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') and j.condition2 in (''is null'',''is not null'') then',
'',
'                  v_val:=''''''''||v_val||'''''''';     v_val2:=''''''''||v_val2||'''''''';',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if; '
||' ',
'',
'                elsif j.value1 is null and j.query_type=''SPMI'' and j.condition1 in (''is null'',''is not null'') then',
'',
'                  v_val:=''''''''||v_val||'''''''';',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col,v_val),v_col2,v_val2) into v_con1;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'                      ',
'                elsif v_val is not null and j.query_type=''SPMI'' and j.condition1 not in (''in'',''not in'') and j.value2 is null then',
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
'                  l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
'',
'                elsif v_val is not null  and j.query_type=''SPMI'' then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''NUMBER'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  execute immediate ''select count(1) from dual where ''||replace(replace(v_con1,v_col2,v_val2),v_col,v_val) into v_con1;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pdid||'',509,''''''||j.col2||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT;',
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
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_item_seq1 from edc_crf_items where crf_id=v_cid and item_seq=(select nvl(min(item_seq),0) from edc_crf_items where crf_id=v_cid and item_seq>v_item_seq);',
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
,p_internal_uid=>4132585557706782165
,p_process_comment=>'Request is contained in value : ''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132579242316782151)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process to save queries_CV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql varchar2(10000); v_cnt number; v_cnt1 number; v_cnt2 number; v_cnt3 number; v_cnt4 number;',
'    v_pk_col varchar2(200); v_tblnm varchar2(300); v_item_id number; v_col varchar2(500);  v_itmtyp1 varchar2(20);  v_con2 varchar2(2000); v_ppid number;',
'    v_val varchar2(400); v_val1 varchar2(400); v_val2 varchar2(400); v_val3 varchar2(400);m number; n number; v_pkval number; v_con1 varchar2(2000); v_qmsg varchar2(20000);',
'    v_item_seq number; v_item_seq1 number; v_item_seq2 number; v_itmtyp varchar2(300); v_col2 varchar2(500);v_stdy number; v_csn varchar2(20); v_cid number; v_pvid number; p number:=1; v_pvid1 number;',
'begin',
'',
'    v_stdy:=:APP_EDC_STUDY_ID;  v_csn:=:P509_CRF_SHORT_NAME;  v_cid:=:P509_CRF_ID;  v_pvid:=:APP_EDC_PATIENT_VISIT_ID;  v_ppid := :P37_PATIENT_PROFILE_ID;',
'',
'    execute immediate ''select count(1) from EDC_CRF_''||v_csn||v_stdy||'' where patient_visit_id=''||v_pvid into v_cnt;',
'',
'    select count(1) into v_cnt2 from edc_crf_items where crf_id=v_cid and study_id=v_stdy;',
'    ',
'    if v_cnt=0 then execute immediate ''select nvl(max(''||:P509_CRF_TABLE_PK_COL||''),0)+1 from ''||:P509_CRF_TABLE_NAME into :P509_CRF_TABLE_PK_VAL;',
'    elsif v_cnt=1 then execute immediate ''select ''||:P509_CRF_TABLE_PK_COL||'' from ''||:P509_CRF_TABLE_NAME||'' where patient_visit_id=''||v_pvid||'' and study_id=''||v_stdy into v_pkval;',
'    end if; commit;',
'',
'    select crf_table_pk_col,crf_table_name into v_pk_col,v_tblnm from EDC_CRF_MASTER where crf_id=v_cid and crf_short_name=v_csn and study_id=v_stdy;',
'',
'    select item_id,item_seq into v_item_id,v_item_seq from edc_crf_items where crf_id=v_cid and item_seq=(select min(item_seq) from edc_crf_items where crf_id=v_cid and study_id=v_stdy);',
'',
'    for i in 1..v_cnt2 loop',
'',
'        select column_name,item_type,item_seq into v_col,v_itmtyp,v_item_seq2 from edc_crf_items where item_id=v_item_id and crf_id=v_cid AND study_id=v_stdy;',
'',
'        select count(1) into v_cnt1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''CV'');',
'',
'        if v_cnt1>0 then',
'',
'          for j in (select query_id,col1,value1,condition1,query_type,condition2, visit_title,col2,value2,crf_id1,visit_title1 from EDC_QUERIES where crf_id=v_cid and col1=v_col and qry_actin=''Yes'' and query_type in (''CV'')) loop',
'          v_con1:='''';',
'',
'            if j.visit_title=''All'' or j.visit_title=:APP_EDC_VISIT_NAME then',
'',
'                if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CV'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  if upper(j.visit_title1) != ''COMMON FORMS'' then',
'                      select count(1) into v_cnt4 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                      if v_cnt4 > 0 then select patient_visit_id into v_pvid1 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_cnt3;',
'                      if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_val3; end if; end if;',
'                  elsif upper(j.visit_title1) = ''COMMON FORMS'' then',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_cnt3;',
'                      if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_val3; end if;',
'                  end if;',
'',
'                  if v_itmtyp != ''DATE'' and v_cnt3 > 0 and v_cnt4 > 0 then',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''''''''||v_val3||'''''' '' query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  elsif v_cnt3 > 0 and v_cnt4 > 0 then',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||''to_date(''''''||v_val3||'''''',''''DD-MM-YY'''') '' query_conditio'
||'n,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CV'' and j.value1 is not null and j.condition2 is not null and j.value2 is not nu'
||'ll THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  if upper(j.visit_title1) != ''COMMON FORMS'' then',
'                      select count(1) into v_cnt4 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                      if v_cnt4 > 0 then select patient_visit_id into v_pvid1 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_cnt3;',
'                      if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_val3; end if; end if;',
'                  elsif upper(j.visit_title1) = ''COMMON FORMS'' then',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_cnt3;',
'                      if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_val3; end if;',
'                  end if;',
'',
'                  if v_cnt3 > 0 and v_cnt4 > 0 then',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' upper(''''''||j.value1||'''''') and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg '
||'from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CV'' and j.value1 is null and j.condition2 is null and j.value2 is null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  if upper(j.visit_title1) != ''COMMON FORMS'' then',
'                      select count(1) into v_cnt4 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                      if v_cnt4 > 0 then select patient_visit_id into v_pvid1 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_cnt3;',
'                      if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_val3; end if; end if;',
'                  elsif upper(j.visit_title1) = ''COMMON FORMS'' then',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_cnt3;',
'                      if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_val3; end if;',
'                  end if;',
'',
'                  if v_cnt3 > 0 and v_cnt4 > 0 then',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' ''||v_val3 query_condition,query_msg',
'                  into v_con1,v_qmsg from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                elsif v_itmtyp in (''NUMBER'') and j.condition1 not in (''in'',''is null'',''is not null'') and j.query_type=''CV'' and j.value1 is not null and j.condition2 is not null and j.value2 is not null THEN',
'',
'                  execute immediate ''select crf_table_name from edc_crf_master where crf_id=''||j.crf_id1||'' and study_id=''||v_stdy into v_tblnm;',
'',
'                  if upper(j.visit_title1) != ''COMMON FORMS'' then',
'                      select count(1) into v_cnt4 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                      if v_cnt4 > 0 then select patient_visit_id into v_pvid1 from edc_patient_visit where patient_profile_id = v_ppid and upper(visit_title) = upper(j.visit_title1);',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_cnt3;',
'                      if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_visit_id=''||v_pvid1 into v_val3; end if; end if;',
'                  elsif upper(j.visit_title1) = ''COMMON FORMS'' then',
'                      execute immediate ''select count(1) from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_cnt3;',
'                      if v_cnt3>0 then execute immediate ''select ''||j.col2||'' from ''||v_tblnm||'' where patient_profile_id=''||v_ppid into v_val3; end if;',
'                  end if;',
'',
'                  if v_cnt3 > 0 and v_cnt4 > 0 then',
'                  SELECT COL1||'' ''||DECODE(CONDITION1,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition1)||'' (''||j.value1||'') and''''''||v_val3||''''''''||',
'                  DECODE(CONDITION2,''equals'',''='',''not equals'',''!='',''greater than'',''>'',''greater than or equal to'',''>='',''less than'',''<'',''less than or equal to'',''<='',condition2)||'' upper(''''''||j.value2||'''''')'' query_condition,query_msg into v_con1,v_qmsg '
||'from EDC_QUERIES where crf_id=v_cid and col1=v_col and query_id=j.query_id;',
'                  end if;',
'',
'                end if;',
'',
'                if v_itmtyp != ''RADIO BUTTON'' then',
'                    execute immediate ''SELECT A.SRNO FROM (SELECT ROW_NUMBER() OVER (ORDER BY ITEM_SEQ) AS SRNO, COLUMN_NAME FROM EDC_CRF_ITEMS WHERE CRF_ID = ''||v_cid||'' AND ITEM_TYPE != ''''RADIO BUTTON'''') A WHERE A.COLUMN_NAME =''''''||v_col||'''''''' into'
||' p;',
'                    v_val:=upper(apex_application.g_f01(p));',
'                elsif v_itmtyp=''RADIO BUTTON'' then',
'                    execute immediate ''select upper(field_val) from save_radio where upper(field_name)=upper(''''''||v_col||'''''') and user_id=''||:APP_EDC_USER_ID||'' and user_name=''''''||:APP_USER_NAME||'''''' and crf_id=''||v_cid||'' and study_id=''||v_stdy||'' a'
||'nd patient_visit_id=''||v_pvid||'' and patient_profile_id=''||v_ppid into v_val;',
'                end if;',
'',
'                v_val1:=v_val;',
'',
'                if v_val is not null  and j.query_type=''CV'' then',
'',
'                  if v_itmtyp in (''TEXT'',''DATE'',''TIME'',''SELECT LIST'',''TEXTAREA'',''RADIO BUTTON'') THEN v_val:=''''''''||v_val||''''''''; end if;',
'',
'                  if v_con1 is not null then execute immediate ''select count(1) from dual where ''||replace(v_con1,v_col,v_val) into v_con1; end if;',
'',
'                  if v_con1=1 then v_val:=v_val1;',
'                    l_sql:=''begin edc_util.insert_auto_query_dedc(''||v_stdy||'',''||v_pvid||'',509,''''''||j.col1||'''''',''''''||v_qmsg||'''''',''||v_cid||'',''''''||v_csn||'''''',''''''||v_val||'''''',''||v_pkval||'',''||v_ppid||'');end;''; execute immediate l_sql; COMMIT; end if;',
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
'            select nvl(item_id,0),nvl(item_seq,0) into v_item_id, v_item_seq1 from edc_crf_items where crf_id=v_cid and item_seq=(select nvl(min(item_seq),0) from edc_crf_items where crf_id=v_cid and item_seq>v_item_seq);',
'            v_item_seq:=v_item_seq1;',
'        end if;',
'                    ',
'    end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>4132579242316782151
,p_process_comment=>'Request is contained in value : ''SAVE'''
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4132586042761782167)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Section Status from 2to3 and 3to2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sql varchar2(1000);',
'v_cnt1 number;',
'v_cnt2 number;',
'v_cnt number;',
'v_cnt3 number;',
'v_max_audit_log_id number;',
'v_ex_new_value varchar2(10);',
'v_parent_ques varchar2(50);',
'v_parent_ans varchar2(200);',
'v_child_tbl varchar2(50);',
'v_chld_qrs number;',
'v_chld_crf_id number;',
'begin',
'',
'    select count(1) into v_cnt1 from edc_crf_queries        --queries exist or not',
'    --where crf_short_name = :P509_CRF_SHORT_NAME',
'    where crf_id = :P509_CRF_ID',
'    and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    and qry_status in (''Open'',''Reopened'')',
'    and auto_flag = ''A'';',
'    ',
'    select count(1) into v_cnt2 from audit_trail            --section status audit exists or not',
'    where table_name = :P509_CRF_TABLE_NAME',
'    and PATIENT_DIARY_ID = :APP_EDC_PATIENT_DIARY_ID',
'    and column_name = ''SECTION_STATUS''',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    select crf_id,crf_table_name,parent_ques,parent_ans into v_chld_crf_id,v_child_tbl, v_parent_ques, v_parent_ans',
'    from edc_crf_master',
'    where crf_id = (select crf_id from edc_crf_master where study_id = :APP_EDC_STUDY_ID and parent_page = :P509_CRF_ID)',
'    and study_id = :APP_EDC_STUDY_ID;',
'    ',
'    execute immediate ''select count(1) from ''||:P509_CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and ''||v_parent_ques||'' = ''''''||v_parent_ans||'''''''' into v_cnt;',
'    ',
'    if v_cnt = 1 then    ',
'        execute immediate ''select count(1) from ''||v_child_tbl||'' where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID into v_cnt3;',
'    end if;',
'    ',
'    if v_cnt3 > 0 then',
'        execute immediate ''select count(1) from edc_crf_queries where page_id = 510 and crf_id = ''||v_chld_crf_id||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||'' and upper(qry_status) in (''''OPEN'''',''''REOPENED'''')'' into v_chld_qrs;',
'    end if;',
'    ',
'    if v_cnt2 = 0 and v_cnt1 = 0 then        --no audit and no queries',
'    ',
'        if v_cnt = 0 then    --the parent ques is not equal to parent ans',
'        ',
'            l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' set section_status = 3 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'            execute immediate l_sql;',
'            commit;',
'',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''SECTION_STATUS'''',NULL,''''3'''',''''INSERT'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'            ',
'        elsif v_cnt = 1 and v_cnt3 = 0 then    --parent ques is equal to parent ans but no child record',
'        ',
'            l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' set section_status = 2 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'            execute immediate l_sql;',
'            commit;',
'',
'            l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'            USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'            values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''SECTION_STATUS'''',NULL,''''2'''',''''INSERT'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'            ',
'        end if;',
'    ',
'    elsif v_cnt2 = 0 and v_cnt1 > 0 then     --no audit but queries exist',
'    ',
'        l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' set section_status = 2 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'        execute immediate l_sql;',
'        commit;',
'        ',
'        l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'        USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'        values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'        '',509,''''SECTION_STATUS'''',NULL,''''2'''',''''INSERT'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'        execute immediate l_sql;',
'        commit;',
'    ',
'    elsif v_cnt2 > 0 and v_cnt1 = 0 then    --audit exists but no queries',
'    ',
'        if v_cnt = 0 then    --the parent ques is not equal to parent ans',
'        ',
'            l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' set section_status = 3 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'            execute immediate l_sql;',
'            commit;',
'',
'            execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                          where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                          ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                          ''and column_name = ''''SECTION_STATUS'''' ',
'                           and table_name = ''''''||:P509_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                          ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                          ''and table_pk_value = ''||:P509_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'            commit;      ',
'',
'            if v_max_audit_log_id = 0 then',
'               v_ex_new_value := null;',
'            else',
'               execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'               commit;  ',
'            end if;',
'',
'            IF v_ex_new_value != 3 THEN',
'                l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''3'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'                execute immediate l_sql;',
'                commit;',
'            END IF;           --end of IF v_ex_new_value != 3 THEN',
'        ',
'        elsif v_cnt = 1 and v_cnt3 = 0 then    --parent ques is equal to parent ans but no child record',
'        ',
'            l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' set section_status = 2 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'            execute immediate l_sql;',
'            commit;',
'',
'            execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                          where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                          ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                          ''and column_name = ''''SECTION_STATUS'''' ',
'                           and table_name = ''''''||:P509_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                          ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                          ''and table_pk_value = ''||:P509_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'            commit;      ',
'',
'            if v_max_audit_log_id = 0 then',
'               v_ex_new_value := null;',
'            else',
'               execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'               commit;  ',
'            end if;',
'',
'            IF v_ex_new_value != 2 THEN',
'                l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''2'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'                execute immediate l_sql;',
'                commit;',
'            END IF;           --end of IF v_ex_new_value != 3 THEN',
'            ',
'        elsif v_cnt = 1 and v_cnt3 > 0 and v_chld_qrs > 0 then    --parent ques is equal to parent ans , child record exists but with queries',
'        ',
'            l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' set section_status = 2 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'            execute immediate l_sql;',
'            commit;',
'',
'            execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                          where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                          ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                          ''and column_name = ''''SECTION_STATUS'''' ',
'                           and table_name = ''''''||:P509_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                          ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                          ''and table_pk_value = ''||:P509_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'            commit;      ',
'',
'            if v_max_audit_log_id = 0 then',
'               v_ex_new_value := null;',
'            else',
'               execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'               commit;  ',
'            end if;',
'',
'            IF v_ex_new_value != 2 THEN',
'                l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''2'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'                execute immediate l_sql;',
'                commit;',
'            END IF;           ',
'        ',
'        else',
'        ',
'            l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' set section_status = 3 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'            execute immediate l_sql;',
'            commit;',
'',
'            execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                          where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                          ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                          ''and column_name = ''''SECTION_STATUS'''' ',
'                           and table_name = ''''''||:P509_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                          ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                          ''and table_pk_value = ''||:P509_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
'            commit;      ',
'',
'            if v_max_audit_log_id = 0 then',
'               v_ex_new_value := null;',
'            else',
'               execute immediate ''select new_value from audit_trail where audit_log_id = ''||v_max_audit_log_id into v_ex_new_value;',
'               commit;  ',
'            end if;',
'',
'            IF v_ex_new_value != 3 THEN',
'                l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'                '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''3'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'                execute immediate l_sql;',
'                commit;',
'            END IF;           --end of IF v_ex_new_value != 3 THEN',
'        ',
'        end if;',
'    ',
'    elsif v_cnt2 > 0 and v_cnt1 > 0 then    --audit and queries both exists',
'    ',
'        l_sql := ''update ''||:P509_CRF_TABLE_NAME||'' set section_status = 2 where study_id = ''||:APP_EDC_STUDY_ID||'' and PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID;',
'        execute immediate l_sql;',
'        commit;',
'        ',
'        execute immediate ''select nvl(max(audit_log_id),0) from audit_trail ',
'                      where PATIENT_DIARY_ID = ''||:APP_EDC_PATIENT_DIARY_ID||',
'                      ''and patient_profile_id = ''||:APP_PATIENT_PROFILE_ID||',
'                      ''and column_name = ''''SECTION_STATUS'''' ',
'                       and table_name = ''''''||:P509_CRF_TABLE_NAME||''''''and study_id = ''||:APP_EDC_STUDY_ID||',
'                      ''and study_site_id = ''||:APP_EDC_STUDY_SITE_ID||',
'                      ''and table_pk_value = ''||:P509_CRF_TABLE_PK_VAL into v_max_audit_log_id;',
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
'            values(''''''||:P509_CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||:APP_EDC_PATIENT_DIARY_ID||',
'            '',509,''''SECTION_STATUS'''',''''''||v_ex_new_value||'''''',''''2'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||:P509_CRF_TABLE_PK_VAL||'')'';',
'            execute immediate l_sql;',
'            commit;',
'        END IF;        --end of IF v_ex_new_value != 2 THEN            ',
'    ',
'    end if;       ',
'    ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''SAVE'',''SUBMIT'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4132586042761782167
,p_process_comment=>'Request is contained in value : ''SAVE'''
);
wwv_flow_imp.component_end;
end;
/
