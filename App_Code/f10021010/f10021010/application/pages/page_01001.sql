prompt --application/pages/page_01001
begin
--   Manifest
--     PAGE: 01001
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
 p_id=>1001
,p_tab_set=>'TS1'
,p_name=>'&APP_EDC_VISIT_NAME.'
,p_step_title=>'&APP_EDC_VISIT_NAME.'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_error_handling_function=>'APEX_ERROR_HANDLING'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function Create(){',
'    var v_param_id = parseInt($(''#P1001_PARAM_ID'').val());',
'    var v_comm5_arr = $v(''P1001_COMM5_EXST'').split('','');',
'    var v_comm5;',
'    var arr_param = 0;',
'    var i = 0;',
'    var v_comm5_exst = 0;',
'',
'',
'    if(v_param_id == 1){',
'        var age = parseFloat($v(''P1001_AGE''));',
'        var eg_status = parseFloat($v(''P1001_RADIO5''));',
'        var min_age = parseInt($(''#P1001_MIN_AGE'').val());',
'        var max_age = parseInt($(''#P1001_MAX_AGE'').val());',
'        ',
'                if(age < 18){',
'            if(confirm("This subject will be screen failed as age of this subject is not >= 18, Are you sure you want to continue?")){',
'                apex.submit("CREATE");',
'            }',
'        }',
'        ',
'        if(eg_status > 1)',
'         {',
'             if(confirm(''The subject will be screen failed because the ECOG score selected for this subject is more than 1''))',
'                {',
'                    apex.submit("CREATE");',
'                    /*reason = $.trim(prompt("Please enter the Screen Fail reason of this Subject."));',
'                    if(reason)',
'                       {$(''#P1001_PM_ACTION_MSG'').val(reason);',
'                        apex.submit(''CREATE'');}   */',
'                }',
'               // else{alert(''Reason of the Screen Fail is not entered, Please try again'');}',
'           }',
'        else{',
'            apex.submit("CREATE");',
'        }',
'    }',
'    else if(v_param_id > 1){',
'        for (i = 0; i < v_comm5_arr.length; i++){',
'            arr_param = parseInt(v_comm5_arr[i]);',
'',
'            if(arr_param == v_param_id){',
'                v_comm5_exst = 1;',
'            }',
'        }',
'        if (v_comm5_exst == 1){',
'            v_comm5 = $v(''P1001_COMM5'');',
'            if(v_comm5 == ''Progressive Disease (PD)''){',
'                if(confirm("This subject will be Discontinued as Tumor Assessment Response Value Required Progressive Disease (PD), Are you sure you want to continue?")){',
'                    apex.submit("CREATE");',
'                }',
'            }',
'            else{',
'                apex.submit("CREATE");',
'            }',
'        }',
'        else{',
'            apex.submit("CREATE");',
'        }',
'    }',
'    else{',
'        apex.submit("CREATE");',
'    }',
'//find_test();',
'}',
'',
'',
'function Save(){',
'    var v_param_id = parseInt($(''#P1001_PARAM_ID'').val());',
'    var v_comm5_arr = $v(''P1001_COMM5_EXST'').split('','');',
'    var v_comm5;',
'    var arr_param = 0;',
'    var i = 0;',
'    var v_comm5_exst = 0;',
'',
'    if(v_param_id == 2){',
'        var ie_met = ($v(''P1001_IE_MET''));',
'        if (ie_met == ''No''){',
'            alert("The subject will be Screen Failed.");',
'            apex.submit("SAVE");',
'        }',
'        else{',
'            apex.submit("SAVE");',
'        }',
'    }',
'    else if(v_param_id > 2){',
'        for (i = 0; i < v_comm5_arr.length; i++){',
'            arr_param = parseInt(v_comm5_arr[i]);',
'',
'            if(arr_param == v_param_id){',
'                v_comm5_exst = 1;',
'            }',
'        }',
'        if (v_comm5_exst == 1){',
'            v_comm5 = $v(''P1001_COMM5'');',
'            if(v_comm5 == ''Progressive Disease (PD)''){',
'                if(confirm("This subject will be Discontinued as Tumor Assessment Response Value Required Progressive Disease (PD), Are you sure you want to continue?")){',
'                    apex.submit("SAVE");',
'                }',
'            }',
'            else{',
'                apex.submit("SAVE");',
'            }',
'        }',
'        else{',
'            apex.submit("SAVE");',
'        }',
'    }',
'    else{',
'        apex.submit("SAVE");',
'    }',
'}',
'',
'function reset_ip(){',
'    if(confirm("Are you sure you want to Delete assigned IPs?")){',
'        reason = $.trim(prompt("Please enter reason for Reseting IP."));',
'',
'        if(reason){',
'            $(''#P1001_PM_ACTION_MSG'').val(reason);',
'            apex.submit(''RESET_IP'');',
'        }',
'    }',
'}',
'',
'function de_random(){',
'    $(''.uHotButton'').addClass(''apex_disabled'');',
'    if(confirm("This action will reset current data and subject will be set as Screened. Are you sure you want to De-Randomize this Subject?")){',
'        apex.submit("DE_RANDOM");',
'    }',
'    else{',
'        $(''.uHotButton'').removeClass(''apex_disabled'');',
'    }',
'}',
'',
'function drop_term(){',
'    $(''.uHotButton'').addClass(''apex_disabled'');',
'    if(confirm("This action will Delete Early Termination Visit. Are you sure you want to perform this action?")){',
'        apex.submit("DROP_TERM");',
'    }',
'    else{',
'        $(''.uHotButton'').removeClass(''apex_disabled'');',
'    }',
'}',
'',
'//window period alert',
'function window_period_alert(p_pp_id, p_param_id, p_visit_date){',
'    apex.server.process(',
'        ''CHECK_WINDOW_PERIOD'',                             // Process or AJAX Callback name',
'        {',
'            x01: p_pp_id,',
'            x02: p_param_id,',
'            x03: p_visit_date.toUpperCase(),',
'        },  // Parameter "x01, x02, x03"',
'        {',
'            success: function (pData) {             // Success Javascript',
'                eval(pData);',
'            },',
'            dataType: "text"                        // Response type (here: plain text)',
'        }',
'    );',
'}',
'',
'function refresh_ip(dip_id){',
'    if(confirm(''This action will replace the Kit with new available one, Are you sure you want to refresh Kit for this subject?'')){',
'        reason = $.trim(prompt("Please enter reason for refreshing this Kit "));',
'        ',
'        if(reason){',
'            var ajaxRequest = new htmldb_Get(null,  ',
'                                             $x(''pFlowId'').value,',
'                                             ''APPLICATION_PROCESS=REFRESH_IP'',',
'                                             $x(''pFlowStepId'').value',
'                                            );',
'',
'            ajaxRequest.addParam(''x01'', dip_id);',
'            ajaxRequest.addParam(''x02'', reason);',
'            var ajaxResult = ajaxRequest.get();',
'',
'            alert(ajaxResult);',
'',
'            $(''#Assigned_IPs'').trigger(''apexrefresh'');',
'        }',
'        else{',
'            alert("Reason for refreshing Kit is entered, Please try again");',
'        }',
'    }',
'}',
'',
'function dispense_ips(){',
'    if(confirm(''This action will Dispense Kit to subject, You will be unable to refresh Kit thereafter. Are you sure you want to continue?'')){',
'        apex.submit(''DISPENSE_IP'');',
'    }    ',
'}',
'',
'function pm_action(action){',
'    if(action == ''APPROVE_FOR_RANDOMIZATION''){',
'        if(confirm(''Are you sure you want to Approve and Randomize this Subject?'')){',
'            apex.submit(''APPROVE_FOR_RANDOMIZATION'');',
'        }',
'    }',
'    else if(action == ''REJECT_FOR_RANDOMIZATION''){',
'        if(confirm(''Are you sure you want to Reject Randomization for this Subject?'')){',
'            reason = $.trim(prompt("Please enter reason for Rejecting Randomization of this Subject."));',
'',
'            if(reason){',
'                $(''#P1001_PM_ACTION_MSG'').val(reason);',
'                apex.submit(''REJECT_FOR_RANDOMIZATION'');',
'            }',
'            else{',
'                alert(''Reason for Rejecting Randomization is not entered, Please try again'');',
'            }',
'        }',
'    }',
'    else if(action == ''SEND_BACK_TO_CRC''){',
'        if(confirm(''Are you sure you want to send this Subject back to CRC?'')){',
'            reason = $.trim(prompt("Please enter reason for sending back this Subject."));',
'',
'            if(reason){',
'                $(''#P1001_PM_ACTION_MSG'').val(reason);',
'                apex.submit(''SEND_BACK_TO_CRC'');',
'            }',
'            else{',
'                alert(''Reason for sending back this Sujbect is not entered, Please try again'');',
'            }',
'        }',
'    }',
'    ',
'}',
'',
'function disp(p_flag){',
'    if(p_flag == 1){',
'        if(confirm(''Are you sure you want to submit kit dispensation request to PM?'')){',
'            apex.submit(''REQUEST_DISPENSING'');',
'        }',
'    }',
'    else if(p_flag == 2){',
'        if(confirm(''Are you sure you want to Approve Dispensing?'')){',
'            apex.submit(''APPROVE_DISPENSING'');',
'        }',
'    }',
'    else if(p_flag == 3){',
'        if(confirm(''Are you sure you want to Reject Dispensing?'')){',
'            reason = $.trim(prompt("Please enter reason."));',
'',
'            if(reason){',
'                $(''#P1001_PM_ACTION_MSG'').val(reason);',
'                apex.submit(''REJECT_DISPENSING'');',
'            }',
'        }',
'    }',
'    else if(p_flag == 4){',
'        if(confirm(''Are you sure you want to Send Back to CRC?'')){',
'            reason = $.trim(prompt("Please enter reason."));',
'',
'            if(reason){',
'                $(''#P1001_PM_ACTION_MSG'').val(reason);',
'                apex.submit(''SEND_BACK_DISPENSING'');',
'            }',
'        }',
'    }',
'}',
'',
'function set_star_n_other(){',
'    v_param_id = parseInt($(''#P1001_PARAM_ID'').val());',
'   /* if(v_param_id == 4){',
'        $(''#P1001_COMM1_LABEL'').removeClass("uOptional");',
'        $(''#P1001_COMM1_LABEL'').addClass("uRequired");',
'        $(''#P1001_COMM1_LABEL'').append(''<img src="/i/f_spacer.gif" alt="Value Required" class="uAsterisk">'');',
'    }',
'    else*/',
'    if(v_param_id == 3){',
'        $(''#P1001_COMM2_LABEL'').removeClass("uOptional");',
'        $(''#P1001_COMM2_LABEL'').addClass("uRequired");',
'        $(''#P1001_COMM2_LABEL'').append(''<img src="/i/f_spacer.gif" alt="Value Required" class="uAsterisk">'');',
'    }',
'    else if(v_param_id == 2){',
'        $(''#P1001_DATE3'').parent().parent().hide();',
'    }',
'',
'}',
'function open_region(p_id)',
'{',
'    $(''#P1001_DIP_ID'').val(p_id);',
'    openModal(''ref_ip'');',
'    $(''#ref_ip'').draggable();',
'    //$(''#ref_ip'').resizable();',
'    $(''#ref_ip'').trigger(''apexrefresh'');',
'}',
'',
'// to open a model page',
'function showJQueryDialog(width, height, url, title) {',
'    rateDialog = $(''<iframe id="modalID" name="modalName" src="''+ url +''"  width ="+ width + "px" height = " + height + "px" frameborder="no" style ="overflow: hidden;"></iframe>'');',
'    $(rateDialog).dialog({',
'        open: function(event, ui){},',
'        modal: true ,',
'        dialogClass: ''noTitle'',',
'        title: title,',
'        width : width,',
'        height: height,',
'        close: windowReload,',
'        closeOnEscape: true }).width(width).height(height);',
'}',
'',
'function showModalDialog(p_page,p_id) {',
'    var url;',
'    var title;',
'',
'    url = ''f?p=&APP_ID.:''+p_page+'':&SESSION.::NO::::'';',
'',
'    if(p_page == 129) {',
'        title = ''Refresh Kit'';',
'        url = ''f?p=&APP_ID.:''+p_page+'':&SESSION.::NO::P129_DIP_ID:''+p_id+'':'';',
'    }',
'    else {',
'        title = ''Title'';',
'    }',
'    showJQueryDialog(950, 330, url, title);',
'}',
'',
'function windowReload() {',
'    $.event.trigger("REFRESH_REGION");',
'        window.location.reload();',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(',
'    ''SET_FLAG'',',
'    null,',
'    {',
'        success: function(pData){',
'            eval(pData);',
'        },',
'        dataType:"text"',
'    }',
')',
'',
'set_star_n_other();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.reason4change{',
'     display:none;',
'     border-color:red !important;',
'}',
'',
'',
'.uHorizontalTabs{',
'    display: none;',
'}',
'',
'#ref_ip',
'{',
'    display : none;',
'    height: 50%;',
'    width : 70%;',
'    overflow: auto;',
'}',
'#B213719947134703739',
'{',
'    background-color :red !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       // if(age < min_age){',
'          //  if(confirm("This subject will be screen failed as age of this subject is not >= "+min_age+", Are you sure you want to continue?")){',
'          //      apex.submit("CREATE");',
'         //   }',
'      //  }'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3109956675448465277)
,p_plug_name=>'Refresh IP'
,p_region_name=>'ref_ip'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>46
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7753597499775562759)
,p_plug_name=>'&nbsp;'
,p_plug_display_sequence=>56
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PATIENT_VISIT_ID',
'     , IP_ID',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID IN (SELECT PATIENT_VISIT_ID',
'                              FROM EDC_PATIENT_VISIT',
'                             WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'                           )',
' ORDER BY 1, 2'))
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1765320929128102403)
,p_name=>'Assigned Arm Detail'
,p_parent_plug_id=>wwv_flow_imp.id(7753597499775562759)
,p_display_sequence=>102
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ASK AS (',
'                SELECT PP.RANDOMNO RANDOMIZATION_NUMBER, ARM.ARM_NAME FROM EDC_STUDY_ARM ARM, EDC_PATIENT_PROFILE PP',
'                    WHERE PP.STUDY_ARM_ID = ARM.STUDY_ARM_ID',
'                        AND PP.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'            )',
'SELECT * FROM ASK;'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from edc_patient_visit_params',
' where param_id  = :APP_EDC_PARAM_ID',
'  AND (RND_FLG = 1 OR DISPNS_FLG = 1)',
'  AND (SELECT STATUS FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) >= 3'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1765321597747102410)
,p_query_column_id=>1
,p_column_alias=>'RANDOMIZATION_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Randomization Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1765321368568102408)
,p_query_column_id=>2
,p_column_alias=>'ARM_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Assigned Arm Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7754971720361578858)
,p_plug_name=>'Unschedule'
,p_parent_plug_id=>wwv_flow_imp.id(7753597499775562759)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146131826484911981)
,p_plug_display_sequence=>92
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(12152636829957145880)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12150755637925523032)
,p_plug_display_condition_type=>'NEVER'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from edc_patient_profile',
' where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'   AND STATUS = 3',
'   AND (SELECT COUNT(DIP_ID) FROM IWRS_CRF_DM_IP A JOIN EDC_IP_DETAIL B ON A.IP_ID = B.IP_ID',
'           AND B.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'           AND A.IS_IP_DISPENSED IS NOT NULL) > 0',
'   AND :APP_EDC_PARAM_ID != 4'))
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11260784810267328884)
,p_name=>'Assigned Kit'
,p_region_name=>'Assigned_IPs'
,p_parent_plug_id=>wwv_flow_imp.id(7753597499775562759)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>56
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PATIENT_VISIT_ID',
'     , SUN_21010_DEV.CRO_IWRS_PKG.GET_BOTTLE_NAME(IP_ID) IP_ID',
'     , DECODE(IS_IP_DISPENSED,''Yes'',''-'',''<a href="javascript:refresh_ip('' || DIP_ID || '')"><img src="#APP_IMAGES#ip_refresh.png" style="height:18px;"></a>'') REFRESH_IP',
'--     , case when (nvl(app_flg,''C'') <> ''R'' AND :APP_EDC_ROLE_ID IN (15,16,13) )THEN ''<a href="f?p=&APP_ID.:85:&APP_SESSION.:::85:P85_DIP_ID:'' || DIP_ID ||''" class="ip_audit_trail" onclick="return false;"><img src="#APP_IMAGES#ip_refresh.png" style="'
||'height:18px;"></a>'' ',
'--       when (nvl(app_flg,''C'') = ''R'' AND :APP_EDC_ROLE_ID IN (19,13) )THEN''<a href="f?p=&APP_ID.:85:&APP_SESSION.:::85:P85_DIP_ID:'' || DIP_ID ||''" class="ip_audit_trail" onclick="return false;"><img src="#APP_IMAGES#ar.png" style="height:18px;"></a>'
||''' ',
'--       ELSE ''-'' END REFRESH_IP',
'     , ''<a href="f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_PK_ID,P41_TABLE_NAME:&APP_PAGE_ID.,'' || DIP_ID || '',IWRS_CRF_DM_IP" class="ip_audit_trail" onclick="return false;">Audit Trail</a>'' AUDIT_TRAIL',
'     , TO_CHAR(DISPENSE_TIME,''DD-MON-YYYY HH:MI PM'') DISPENSE_TIME',
'       , DECODE(IS_IP_DISPENSED,''Yes'',''-'',''<img src="#APP_IMAGES#''||''ip_refresh.png''||''" style="height:18px;">'') as new_refresh_ip',
'   --  , DECODE(IS_IP_DISPENSED,''Yes'',''-'',''<img src="#APP_IMAGES#''||CASE APP_FLG WHEN ''R'' THEN ''ar.png'' ELSE ''ip_refresh.png'' END||''" style="height:18px;">'') as new_refresh_ip',
'--     , DECODE(IS_IP_DISPENSED,''Yes'',''-'',''<a href="javascript:showModalDialog(129,''||DIP_ID||'');"><img src="#APP_IMAGES#''||CASE APP_FLG WHEN ''R'' THEN ''ar.png'' ELSE ''ip_refresh.png'' END||''" style="height:18px;"></a>'') as new_refresh_ip',
'     , DECODE(IS_IP_DISPENSED,''Yes'',''-'',''<a href="javascript:open_region(''||DIP_ID||'');"><img src="#APP_IMAGES#ip_refresh.png" style="height:18px;"></a>'') as refresh_ip_new',
'     , IP_ID IP_ID_NUMBER',
'     , DIP_ID',
'     , DENSE_RANK()OVER (ORDER BY DIP_ID) SR_NO',
'     , TO_CHAR(CREATED_DT,''DD-MON-YYYY HH:MI PM'') AS ASSIGNED_KIT_TIME',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'/* WHERE PATIENT_VISIT_ID IN (SELECT PATIENT_VISIT_ID',
'                              FROM EDC_PATIENT_VISIT',
'                             WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'                           )',
'*/',
' ORDER BY DIP_ID '))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
' AND :APP_EDC_ROLE_ID IN(13,26,19,15,34,25,33,20)',
'   AND (select count(1) ',
' from edc_patient_visit_params',
' where param_id  = :APP_EDC_PARAM_ID',
'   and (rnd_flg = 1 or dispns_flg = 1)) = 1'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'style="margin-left:10px;"',
'SELECT PATIENT_VISIT_ID',
'     , IP_ID',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID IN (SELECT PATIENT_VISIT_ID',
'                              FROM EDC_PATIENT_VISIT',
'                             WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'                           )',
' ORDER BY 1, 2'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11260784896239328885)
,p_query_column_id=>1
,p_column_alias=>'PATIENT_VISIT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Visit Name'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12154139330621563324)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11260784980978328886)
,p_query_column_id=>2
,p_column_alias=>'IP_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Kit #'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11270504334548640870)
,p_query_column_id=>3
,p_column_alias=>'REFRESH_IP'
,p_column_display_sequence=>4
,p_column_heading=>'Refresh Kit'
,p_use_as_row_header=>'N'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_report_column_required_role=>wwv_flow_imp.id(12147535227386676937)
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND IS_IP_DISPENSED IS NULL',
'   AND SUN_21010_DEV.EDC_UTIL.GET_PATIENT_STATUS(:P37_PATIENT_PROFILE_ID) IN (3)',
'   and (:APP_EDC_USER_TYPE = 3 OR :APP_EDC_ROLE_ID = 13)',
'-----------------------------------------------------------',
':APP_EDC_USER_TYPE = 3 OR :APP_EDC_ROLE_ID = 13'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11272621242448101985)
,p_query_column_id=>4
,p_column_alias=>'AUDIT_TRAIL'
,p_column_display_sequence=>10
,p_column_heading=>'Audit Trail'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9745663348714450931)
,p_query_column_id=>5
,p_column_alias=>'DISPENSE_TIME'
,p_column_display_sequence=>9
,p_column_heading=>'Dispensed Kit Date/Time Stamp'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from iwrs_crf_dm_ip',
'where patient_Visit_id= :APP_EDC_PATIENT_VISIT_ID',
'and IS_IP_DISPENSED = ''Yes'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5238076937049716804)
,p_query_column_id=>6
,p_column_alias=>'NEW_REFRESH_IP'
,p_column_display_sequence=>6
,p_column_heading=>'Refresh Kit'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:showModalDialog(129,#DIP_ID#);'
,p_column_linktext=>'#NEW_REFRESH_IP#'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND IS_IP_DISPENSED IS NULL',
'   AND SUN_21010_DEV.EDC_UTIL.GET_PATIENT_STATUS(:P37_PATIENT_PROFILE_ID) IN (3)',
'   and (:APP_EDC_USER_TYPE IN (2,3) OR :APP_EDC_ROLE_ID in(13,19))'))
,p_report_column_required_role=>wwv_flow_imp.id(12147535227386676937)
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'onclick="return false;" class="edit-link"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3110015084808822677)
,p_query_column_id=>7
,p_column_alias=>'REFRESH_IP_NEW'
,p_column_display_sequence=>11
,p_column_heading=>'Refresh Kit'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5238077485507716809)
,p_query_column_id=>8
,p_column_alias=>'IP_ID_NUMBER'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5238077622099716811)
,p_query_column_id=>9
,p_column_alias=>'DIP_ID'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5239038392213839900)
,p_query_column_id=>10
,p_column_alias=>'SR_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Sr. No'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3306576580316131892)
,p_query_column_id=>11
,p_column_alias=>'ASSIGNED_KIT_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Assigned Kit Date/Time Stamp'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8288442033212916487)
,p_name=>'Replacement Approval Flow'
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>36
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ACTION,ACTION_BY,ACTION_DATE,REASON',
'  FROM(',
'  SELECT ID,''Replacement Request'' ACTION,action_by,to_char(action_date,''dd-MON-yyyy hh:mi pm'') ACTION_DATE,(SELECT RPLC_RESN FROM IWRS_CRF_DM',
'  WHERE DM_ID = :P1001_DM_ID) REASON',
'  FROM EDC_REASON_FOR_CH_HIST',
'  where TABLE_NAME = ''IWRS_CRF_DM''',
'  AND COLUMN_NAME = ''RPLC_FLG''',
'  and new_vc = ''R''',
'  AND PK1 = :P1001_DM_ID',
'  UNION ',
'    SELECT ID,DECODE(NEW_VC,''A'',''Approved'',''C'',''Cancelled'') ACTION,action_by,to_char(action_date,''dd-MON-yyyy  hh:mi pm'') ACTION_DATE,'''' REASON',
'  FROM EDC_REASON_FOR_CH_HIST',
'  where TABLE_NAME = ''IWRS_CRF_DM''',
'  AND COLUMN_NAME = ''RPLC_FLG''',
'  and new_vc IN (''A'',''C'')',
'  AND PK1 = :P1001_DM_ID)',
'  ORDER BY ID; '))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  FROM EDC_REASON_FOR_CH_HIST',
'  where TABLE_NAME = ''IWRS_CRF_DM''',
'  AND COLUMN_NAME = ''RPLC_FLG''',
'  and new_vc = ''R''',
'  AND PK1 = :P1001_DM_ID',
'  AND :P1001_DM_ID IS NOT NULL'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8288442088127916488)
,p_query_column_id=>1
,p_column_alias=>'ACTION'
,p_column_display_sequence=>1
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8288442439475916492)
,p_query_column_id=>2
,p_column_alias=>'ACTION_BY'
,p_column_display_sequence=>2
,p_column_heading=>'Action by'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8288442577397916493)
,p_query_column_id=>3
,p_column_alias=>'ACTION_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Action date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6709548143572546072)
,p_query_column_id=>4
,p_column_alias=>'REASON'
,p_column_display_sequence=>4
,p_column_heading=>'Reason'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9945939046010793060)
,p_name=>'&P1001_FLOW_REPORT_HEADER.'
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>26
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REPLACE(ACTION,''Approved for Dispensation'',''Approved for kit dispensing'') AS ACTION',
'     , ACTION_TAKEN_BY',
'     , to_char(ACTION_TAKEN_ON,''DD-MON-YYYY HH:MI PM'') ACTION_TAKEN_ON',
'     , MESSAGE',
'  FROM IWRS_CRF_DM_SUBMISSION',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
' ORDER BY ID'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_SUBMISSION',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9945939653954793079)
,p_query_column_id=>1
,p_column_alias=>'ACTION'
,p_column_display_sequence=>1
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9945940042127793080)
,p_query_column_id=>2
,p_column_alias=>'ACTION_TAKEN_BY'
,p_column_display_sequence=>2
,p_column_heading=>'Action Taken By'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9945940503725793081)
,p_query_column_id=>3
,p_column_alias=>'ACTION_TAKEN_ON'
,p_column_display_sequence=>3
,p_column_heading=>'Action Taken On'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9745493122032341331)
,p_query_column_id=>4
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>4
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'Message '
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11258812208827633308)
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
 p_id=>wwv_flow_imp.id(11258920725136335819)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_region_name=>'pg_reg_width'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>16
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(12151861941237361088)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135533614911987)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11258801669182633243)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(11258920725136335819)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9940953782746508772)
,p_plug_name=>'1'
,p_parent_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9940953859331508773)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9940953955860508774)
,p_plug_name=>'3'
,p_parent_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_GENDER'') >= 1'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9940954118984508775)
,p_plug_name=>'4'
,p_parent_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9940954229761508776)
,p_plug_name=>'5'
,p_parent_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9940954301611508777)
,p_plug_name=>'6'
,p_parent_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11260784391962328880)
,p_plug_name=>'Warning'
,p_parent_plug_id=>wwv_flow_imp.id(11258920725136335819)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''Non-PK CAP REACHED'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               This region has reached maximum Non-PK cap.',
'           </div>''',
'         );',
'ELSIF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''STUDY CAP REACHED'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               This study has reached maximum randomization cap.',
'           </div>''',
'         );         ',
'ELSIF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''RANDOMIZATION SEQUENCE UNAVAILABLE'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               Randomization Sequence is unavailable.',
'               <br/>Please contact your Project Manager.',
'           </div>''',
'         );',
'ELSIF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''IP Unavailable'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               You will not be able to save data for this Subject, because required Kit(s) is/are not available at this site.',
'               <br/>Please contact your CRA for kit replenishment.',
'           </div>''',
'         );',
'ELSIF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''KITS UNAVAILABLE'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               You will not be able to save data for this Subject, because required arm cap is full',
'           </div>''',
'         );',
'ELSIF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''REGION CAP REACHED'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               This region has reached maximum randomization cap.',
'           </div>''',
'         );',
'ELSIF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''PK CAP REACHED'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               This region has reached maximum PK cap.',
'           </div>''',
'         );',
'ELSIF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''CAP Except Light IRIS Color is REACHED'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               This region has reached maximum cap Except Light IRIS Color.',
'           </div>''',
'         );',
'ELSIF UPPER(:P1001_IP_AVAILABILITY) = UPPER(''CAP of Light IRIS Color is REACHED'') THEN',
'    HTP.P(''<div style="color:red; font-weight:bold;">',
'               This region has reached maximum cap with Light IRIS Color.',
'           </div>''',
'         );',
'END IF;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RND_FLG NUMBER;',
'  V_DISPNS_FLG NUMBER;',
'  V_ROLE_ID NUMBER := :APP_EDC_ROLE_ID;',
'  V_PM_NOTIFIED NUMBER;',
'  V_PM_APPROVED NUMBER;',
'  V_STATUS NUMBER;',
'BEGIN',
'  SELECT RND_FLG, DISPNS_FLG',
'    INTO V_RND_FLG, V_DISPNS_FLG',
'    FROM EDC_PATIENT_VISIT_PARAMS',
'   WHERE PARAM_ID = :APP_EDC_PARAM_ID;',
'',
'  SELECT NVL(PM_NOTIFIED, 0), NVL(PM_APPROVED, 0), STATUS',
'    INTO V_PM_NOTIFIED, V_PM_APPROVED, V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_RND_FLG IS NOT NULL AND V_ROLE_ID IN (13, 19, 28, 26) THEN',
'--    IF V_PM_NOTIFIED = 1 AND V_PM_APPROVED = 0 THEN',
'    IF V_PM_APPROVED = 0 OR :P1001_DM_ID IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  ELSIF V_DISPNS_FLG IS NOT NULL AND V_STATUS IN (3, 7) THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RND_FLG NUMBER;',
'  V_DISPNS_FLG NUMBER;',
'  V_ROLE_ID NUMBER := :APP_EDC_ROLE_ID;',
'  V_PM_NOTIFIED NUMBER;',
'  V_PM_APPROVED NUMBER;',
'  V_STATUS NUMBER;',
'BEGIN',
'  SELECT RND_FLG, DISPNS_FLG',
'    INTO V_RND_FLG, V_DISPNS_FLG',
'    FROM EDC_PATIENT_VISIT_PARAMS',
'   WHERE PARAM_ID = :APP_EDC_PARAM_ID;',
'',
'  SELECT NVL(PM_NOTIFIED, 0), NVL(PM_APPROVED, 0), STATUS',
'    INTO V_PM_NOTIFIED, V_PM_APPROVED, V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_RND_FLG IS NOT NULL AND V_ROLE_ID IN (13, 19, 28, 16) THEN',
'--    IF V_PM_NOTIFIED = 1 AND V_PM_APPROVED = 0 THEN',
'    IF V_PM_APPROVED = 0 OR :P1001_DM_ID IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  ELSIF V_DISPNS_FLG IS NOT NULL AND V_STATUS IN (3, 7) THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11286435913059428332)
,p_plug_name=>'PCR DATE EXCEEDED Warning'
,p_parent_plug_id=>wwv_flow_imp.id(11258920725136335819)
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1001_IP_AVAILABILITY = ''PCR DATE EXCEEDED'' AND :P1001_DM_ID IS NOT NULL'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3109957051973465281)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3109956675448465277)
,p_button_name=>'REQUEST_REF_IP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Request Replacement'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE NVL(APP_FLG,''C'') <> ''R''',
'   AND DIP_ID = :P1001_DIP_ID'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3109957190739465282)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3109956675448465277)
,p_button_name=>'APPROVE_REF_IP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Approve Ref Ip'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE APP_FLG = ''R''',
'   AND RPLC_RSN IS NOT NULL',
'   AND DIP_ID = :P1001_DIP_ID'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3109957278687465283)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3109956675448465277)
,p_button_name=>'REJECT_REF_IP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Reject Ref Ip'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE APP_FLG = ''R''',
'   AND RPLC_RSN IS NOT NULL',
'   AND DIP_ID = :P1001_DIP_ID'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3110015538413822682)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'REJECT_DISPENSING'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject Dispensing'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:disp(3);'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'---not needed at the moment(21-09-2021)',
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND RPLC_FLG = ''R''',
'   AND :P1001_DISPNS_FLG = 1',
'   AND :P1001_DM_ID IS NOT NULL',
'   AND :APP_EDC_PATIENT_VISIT_ID = :P1001_MAX_PV_ID'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11258802105529633244)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'SAVE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'javascript:Save();'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CNT NUMBER;',
'  V_QRY_CNT NUMBER;',
'  V_DISPANCE NUMBER;',
'  V_STATUS NUMBER;',
'  V_PM_NOTIFIED NUMBER;',
'  V_PM_APPROVED NUMBER;',
'  V_SCR_FL_RSN VARCHAR2(500);',
'  V_COMM1 VARCHAR2(2000);',
'  V_RPLC_FLG IWRS_CRF_DM.RPLC_FLG%TYPE;',
'  V_PARAM_ID NUMBER := :APP_EDC_PARAM_ID;',
'BEGIN',
'   ',
'  IF :P1001_DM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    IF :APP_EDC_PATIENT_VISIT_ID = 0 THEN',
'      RETURN TRUE;',
'    END IF;',
'',
'    SELECT STATUS, PM_NOTIFIED, NVL(PM_APPROVED,0), SCREEN_FAIL_REASON',
'      INTO V_STATUS, V_PM_NOTIFIED, V_PM_APPROVED, V_SCR_FL_RSN',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    BEGIN',
'      SELECT RPLC_FLG',
'        INTO V_RPLC_FLG',
'        FROM IWRS_CRF_DM',
'       WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        V_RPLC_FLG := NULL;',
'    END;',
'',
'    SELECT COUNT(1)',
'      INTO V_DISPANCE',
'      FROM IWRS_CRF_DM_IP',
'     WHERE /*IS_IP_DISPENSED = ''Yes''',
'       AND */PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'    SELECT COUNT(*) ',
'      INTO V_QRY_CNT',
'      FROM EDC_CRF_QUERIES',
'     WHERE PAGE_ID = :APP_PAGE_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND QRY_STATUS IN (''Open'',''Reopened'');',
'',
'    IF V_QRY_CNT > 0 THEN',
'      RETURN TRUE;',
'    ELSE',
'',
'      SELECT COUNT(1)',
'        INTO V_CNT',
'        FROM EDC_PATIENT_VISIT',
'       WHERE PARAM_ID != 22',
'         AND PATIENT_VISIT_ID > :APP_EDC_PATIENT_VISIT_ID',
'         AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'/*',
'      IF V_STATUS IN (4,5,6,8) THEN',
'        RETURN FALSE;',
'      ELS*/IF V_STATUS = 2 AND V_PARAM_ID IN (1, 2) THEN',
'        RETURN TRUE;',
'      ELSIF V_STATUS = 2 AND V_PM_APPROVED = -1 THEN',
'        RETURN FALSE;',
'      ELSIF V_STATUS >= 3 AND V_PARAM_ID IN (2) THEN',
'        RETURN FALSE;',
'      ELSIF V_RPLC_FLG = ''R'' THEN --IS NOT NULL THEN',
'        RETURN FALSE; /*',
'      ELSIF V_STATUS = 2 AND V_SCR_FL_RSN IS NOT NULL THEN',
'        IF V_PARAM_ID = 1 AND V_SCR_FL_RSN = ''Subject is screen failed because SARS-CoV-2 by RT-PCR assay has not been performed within 72 hours of randomization.'' THEN',
'          RETURN TRUE;',
'        ELSE',
'          RETURN FALSE;',
'        END IF;*/',
'  /*  ELSIF V_STATUS IN (1, 2) AND V_PARAM_ID IN (1, 2) THEN',
'        RETURN TRUE;*/',
'      ELSIF V_PARAM_ID = 1 AND V_PM_APPROVED = 1 AND V_COMM1 IS NOT NULL AND V_DISPANCE > 0 THEN',
'        RETURN FALSE;',
'      ELSIF V_PARAM_ID = 1 AND V_PM_APPROVED = 1 AND V_COMM1 IS NOT NULL AND V_DISPANCE = 0 THEN',
'        RETURN TRUE; ',
'      ELSIF V_PARAM_ID = 1 AND V_PM_APPROVED = 1 AND V_COMM1 IS  NULL THEN',
'        RETURN TRUE;',
'      ELSIF V_PARAM_ID = 2 AND V_PM_APPROVED IN (0,-1) AND V_PM_NOTIFIED = 1 THEN',
'        RETURN FALSE;',
'--      ELSIF V_DISPANCE > 0 THEN',
'--        RETURN FALSE;',
'      ELSIF V_PARAM_ID IN (1,3) AND V_PM_APPROVED = 0 AND V_PM_NOTIFIED = 0 AND :APP_EDC_ROLE_ID IN (13,16) THEN',
'        RETURN TRUE;',
'--      ELSIF V_CNT > 0 THEN',
'--        IF V_PARAM_ID = 22 THEN',
'--          RETURN TRUE;',
'--        ELSE',
'--          RETURN FALSE;',
'--        END IF;',
'      ELSE',
'        IF V_PARAM_ID IN (1,2) AND :APP_EDC_ROLE_ID NOT IN (13,26,15) THEN',
'          RETURN FALSE;',
'        ELSE',
'          RETURN TRUE;',
'        END IF;',
'      END IF;',
'    END IF;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CNT NUMBER;',
'  V_QRY_CNT NUMBER;',
'  V_DISPANCE NUMBER;',
'  V_STATUS NUMBER;',
'  V_PM_NOTIFIED NUMBER;',
'  V_PM_APPROVED NUMBER;',
'  V_SCR_FL_RSN VARCHAR2(500);',
'  V_COMM1 VARCHAR2(2000);',
'',
'  V_DATE1 VARCHAR2(30);',
'  V_DATE2 VARCHAR2(30);',
'  V_DATE3 VARCHAR2(30);',
'',
'  V_VISIT_DATE VARCHAR2(30);',
'  V_PV_ID1 NUMBER;',
'  V_HOURS NUMBER := 3;',
'BEGIN',
'  IF :P1001_DM_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    IF :APP_EDC_PATIENT_VISIT_ID = 0 THEN',
'      RETURN TRUE;',
'    END IF;',
'    SELECT STATUS, PM_NOTIFIED, NVL(PM_APPROVED,0), SCREEN_FAIL_REASON',
'      INTO V_STATUS, V_PM_NOTIFIED, V_PM_APPROVED, V_SCR_FL_RSN',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    SELECT COUNT(1)',
'      INTO V_DISPANCE',
'      FROM IWRS_CRF_DM_IP',
'     WHERE IS_IP_DISPENSED = ''Yes''',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'    SELECT COUNT(*) ',
'      INTO V_QRY_CNT',
'      FROM EDC_CRF_QUERIES',
'     WHERE PAGE_ID = :APP_PAGE_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND QRY_STATUS IN (''Open'',''Reopened'');',
'',
'    SELECT COMM1',
'      INTO V_COMM1',
'      FROM IWRS_CRF_DM',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  IF :APP_EDC_PARAM_ID = 2 AND V_STATUS <= 2 THEN',
'    SELECT PATIENT_VISIT_ID',
'      INTO V_PV_ID1',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PARAM_ID = 1',
'       AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    SELECT TO_CHAR(DATE1,''DD-MON-YYYY''), TO_CHAR(DATE2,''HH24:MI'')',
'      INTO V_DATE1, V_DATE2',
'      FROM IWRS_CRF_DM',
'     WHERE PATIENT_VISIT_ID = V_PV_ID1;',
'',
'    SELECT TO_CHAR(VISIT_DATE,''DD-MON-YYYY''), TO_CHAR(DATE3,''HH24:MI'')',
'      INTO V_VISIT_DATE, V_DATE3',
'      FROM IWRS_CRF_DM',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'/*',
'    IF TO_DATE(V_DATE1||'' ''||V_DATE2,''DD-MON-YYYY HH24:MI'') + V_HOURS < TO_DATE(V_VISIT_DATE||'' ''||V_DATE3,''DD-MON-YYYY HH24:MI'') THEN',
'      RETURN FALSE;',
'    END IF;*/',
'  END IF;',
'',
'    IF V_QRY_CNT > 0 THEN',
'      RETURN TRUE;',
'    ELSE',
'',
'      SELECT COUNT(1)',
'        INTO V_CNT',
'        FROM EDC_PATIENT_VISIT',
'       WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'         AND PATIENT_VISIT_ID > :APP_EDC_PATIENT_VISIT_ID;',
'',
'      IF V_STATUS IN (4,5,6,7) THEN',
'        RETURN FALSE;',
'      ELSIF V_STATUS = 3 AND :APP_EDC_PARAM_ID IN (1,2) THEN',
'        RETURN FALSE;/*',
'      ELSIF V_STATUS = 2 AND V_SCR_FL_RSN IS NOT NULL THEN',
'        IF :APP_EDC_PARAM_ID = 1 AND V_SCR_FL_RSN = ''Subject is screen failed because SARS-CoV-2 by RT-PCR assay has not been performed within 72 hours of randomization.'' THEN',
'          RETURN TRUE;',
'        ELSE',
'          RETURN FALSE;',
'        END IF;*/',
'      ELSIF V_STATUS IN (1, 2) AND :APP_EDC_PARAM_ID IN (1, 2) THEN',
'        RETURN TRUE;',
'      ELSIF :APP_EDC_PARAM_ID = 1 AND V_PM_APPROVED = 1 AND V_COMM1 IS NOT NULL AND V_DISPANCE > 0 THEN',
'        RETURN FALSE;',
'      ELSIF :APP_EDC_PARAM_ID = 1 AND V_PM_APPROVED = 1 AND V_COMM1 IS NOT NULL AND V_DISPANCE = 0 THEN',
'        RETURN TRUE; ',
'      ELSIF :APP_EDC_PARAM_ID = 1 AND V_PM_APPROVED = 1 AND V_COMM1 IS  NULL THEN',
'        RETURN TRUE;',
'      ELSIF :APP_EDC_PARAM_ID = 1 AND V_PM_APPROVED IN (0,-1) AND V_PM_NOTIFIED = 1 THEN',
'        RETURN FALSE;',
'      ELSIF V_STATUS IN (3,4,5,6,7) THEN',
'        RETURN FALSE;',
'      ELSIF V_DISPANCE > 0 THEN',
'        RETURN FALSE;',
'      ELSIF :APP_EDC_PARAM_ID IN (1,3) AND V_PM_APPROVED = 0 AND V_PM_NOTIFIED = 0 AND :APP_EDC_ROLE_ID IN (13,16) THEN',
'        RETURN TRUE;',
'      ELSIF V_CNT > 0 THEN',
'        RETURN FALSE;',
'      ELSE',
'        IF :APP_EDC_PARAM_ID IN (1,3) AND :APP_EDC_ROLE_ID NOT IN (13,16) THEN',
'          RETURN FALSE;',
'        ELSE',
'          RETURN TRUE;',
'        END IF;',
'      END IF;',
'    END IF;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11270503524814640862)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P1001_DM_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3294640379632532192)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'DE_RANDOM'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'De Randomize'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:de_random();'
,p_button_condition_type=>'NEVER'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE STATUS = 3',
'   AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_PATIENT_VISIT_ID = (SELECT MAX(PATIENT_VISIT_ID) FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID)',
'   AND :APP_EDC_PARAM_ID = 2',
'   AND :P1001_IP_DSPNS = 0',
'   AND :APP_EDC_ROLE_ID = 13'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11270504419933640871)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11260784810267328884)
,p_button_name=>'DISPENSE_IP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispense Kit'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:dispense_ips();'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND IS_IP_DISPENSED IS NULL',
'   AND (:APP_EDC_USER_TYPE IN (2,3) OR :APP_EDC_ROLE_ID = 13)',
'   AND (SELECT STATUS FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) IN (3, 7)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12147535227386676937)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3294640615852532195)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'DROP_TERM'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Drop Termination'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:drop_term();'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER := :APP_EDC_PATIENT_VISIT_ID;',
'  V_COUNT NUMBER;',
'  V_MAX_PV NUMBER;',
'BEGIN',
'  SELECT MAX(PATIENT_VISIT_ID)',
'    INTO V_MAX_PV',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PARAM_ID < 21',
'     AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  SELECT COUNT(*)',
'    INTO V_COUNT',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PARAM_ID = 22',
'     AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_COUNT = 1 AND V_MAX_PV = V_PV_ID AND :P1001_SUB_STATUS IN (3,7) THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5239038988496839906)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11260784810267328884)
,p_button_name=>'RESET_IP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset IP'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:reset_ip();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CNT NUMBER;',
'  V_CNT2 NUMBER;',
'BEGIN',
'  SELECT COUNT(DIP_ID), COUNT(IS_IP_DISPENSED)',
'    INTO V_CNT, V_CNT2',
'    FROM IWRS_CRF_DM_IP',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  IF V_CNT > 0 AND V_CNT2 = 0 AND TO_NUMBER(:APP_EDC_PARAM_ID) > 2 THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10641777558796306038)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P1001_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_comment=>':APP_USER IN (''NIKHIL.BUTANI'')'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11269387396087891251)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11260784810267328884)
,p_button_name=>'PRINT_JAPSER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP A',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND (IS_IP_DISPENSED IS NOT NULL)',
'   AND (SELECT COUNT(*) FROM EDC_STUDY_DOC WHERE PATIENT_VISIT_ID = A.PATIENT_VISIT_ID) = 0'))
,p_button_condition_type=>'EXISTS'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND IS_IP_DISPENSED IS NULL',
'   ',
'//',
'changes - Rows Return',
'----------------------',
'SELECT 1',
'  FROM IWRS_CRF_DM_IP A',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND (IS_IP_DISPENSED IS NOT NULL',
'        OR',
'        SUN_21010_DEV.EDC_UTIL.GET_PATIENT_STATUS(:P37_PATIENT_PROFILE_ID) NOT IN (1, 3)',
'       )',
'   AND (SELECT COUNT(*) FROM EDC_STUDY_DOC WHERE PATIENT_VISIT_ID = A.PATIENT_VISIT_ID) = 0'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10641773989362306002)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'ADD_QUERY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Add Query'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_comment=>':APP_USER IN (''NIKHIL.BUTANI'')'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789434465544187471)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11260784810267328884)
,p_button_name=>'DOWNLOAD_DOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=GET_DOCUMENT:&DEBUG.:RP,0:APP_DOC_GROUP_ID,APP_EDC_PATIENT_VISIT_ID:1,&APP_EDC_PATIENT_VISIT_ID.'
,p_button_condition=>'SELECT 1 FROM EDC_STUDY_DOC WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID'
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11258802283921633244)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2291650112425166036)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'DELETE_BTN_EOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ID NUMBER;',
'BEGIN',
'SELECT COUNT(*) AS CT INTO V_ID FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'    IF :APP_EDC_PARAM_ID = 133 THEN',
'        IF V_ID = 1 THEN',
'            RETURN FALSE;',
'        ELSE',
'            RETURN TRUE;',
'        END IF;',
'    END IF;',
'EXCEPTION WHEN OTHERS THEN',
'    RETURN FALSE;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1813526279258783217)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'DELETE_BTN_EOT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ID NUMBER;',
'V_IP_COUNT NUMBER;',
'BEGIN',
'SELECT COUNT(0) INTO V_IP_COUNT ',
'    FROM IWRS_CRF_DM_IP',
'    WHERE PATIENT_VISIT_ID=:APP_EDC_PATIENT_VISIT_ID ',
'            AND IS_IP_DISPENSED IS NOT NULL',
'            AND DISPENSE_TIME IS NOT NULL;',
'            ',
'    IF :APP_EDC_PARAM_ID = 132 THEN',
'        IF V_IP_COUNT = 1 THEN',
'            RETURN FALSE;',
'        ELSE',
'            RETURN TRUE;',
'        END IF;',
'     END IF;',
'EXCEPTION WHEN OTHERS THEN',
'    RETURN FALSE;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3793951600486099942)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'NEXT_VISIT'
,p_button_static_id=>'NEXT_VISIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next Visit'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PARAM_ID NUMBER;',
'  V_VISIT_NAME EDC_PATIENT_VISIT_PARAMS.VISIT_NAME%TYPE;',
'  V_RET NUMBER;',
'  V_STATUS NUMBER;',
'  V_CNT_CHK NUMBER;',
'  V_CURR_PARAM_ID NUMBER;',
'  V_IP_DISP NUMBER;',
'  V_DISP_SUB NUMBER;',
'  COMP_V NUMBER;',
'BEGIN',
'IF :APP_EDC_ROLE_ID NOT IN (19,34,25,33,20,17,27) THEN',
'  SELECT PARAM_ID, VISIT_NAME',
'    INTO V_PARAM_ID, V_VISIT_NAME',
'    FROM (SELECT PARAM_ID, VISIT_NAME',
'            FROM EDC_PATIENT_VISIT_PARAMS',
'           --WHERE PARAM_ID < 15',
'           MINUS',
'          SELECT PARAM_ID, VISIT_TITLE',
'            FROM EDC_PATIENT_VISIT',
'           WHERE /*PARAM_ID < 15',
'             AND */PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'           ORDER BY 1)',
'   WHERE ROWNUM = 1;',
'   ',
'    SELECT COUNT(1) INTO V_IP_DISP FROM IWRS_CRF_DM_IP ',
'        WHERE PATIENT_VISIT_ID=:APP_EDC_PATIENT_VISIT_ID AND IS_IP_DISPENSED IS NULL AND DISPENSE_TIME is null AND ROWNUM=1;',
'',
'          ',
'    SELECT COUNT(*) INTO V_CNT_CHK FROM EDC_PATIENT_VISIT_PARAMS WHERE DISPNS_FLG = 1 AND  PARAM_ID = :APP_EDC_PARAM_ID;',
'',
'  V_CURR_PARAM_ID := V_PARAM_ID - 1;',
'',
'  SELECT STATUS',
'    INTO V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    SELECT COUNT(0) INTO V_DISP_SUB',
'    FROM IWRS_CRF_DM_IP ',
'    WHERE PATIENT_VISIT_ID=:APP_EDC_PATIENT_VISIT_ID AND IS_IP_DISPENSED IS not NULL AND DISPENSE_TIME is not null AND ROWNUM=1;',
'    ',
'    BEGIN',
'    SELECT STUDY_ARM_ID INTO COMP_V ',
'           FROM EDC_PATIENT_PROFILE ',
'           WHERE PATIENT_PROFILE_ID=:P37_PATIENT_PROFILE_ID ;',
'           EXCEPTION WHEN NO_DATA_FOUND THEN ',
'           COMP_V:=0;',
'           END ;',
'           ',
'  V_RET := EDC_CRF_SUBMIT_BPL_RT_01_PKG.IS_NEXT_VISIT(:P37_PATIENT_PROFILE_ID, :APP_EDC_STUDY_ID, V_VISIT_NAME, V_PARAM_ID);',
'',
'    ',
'  IF  V_IP_DISP=0 AND V_RET = 1 AND :P1001_DM_ID IS NOT NULL  AND V_STATUS IN (1,3,7,8) AND V_CURR_PARAM_ID = :APP_EDC_PARAM_ID AND :APP_EDC_ROLE_ID <> 25  THEN',
'    IF :APP_EDC_PARAM_ID NOT IN (1,2,132) AND COMP_V=2 THEN ',
'    RETURN TRUE;',
'    END IF;',
'    ',
'    IF V_DISP_SUB=0 AND :APP_EDC_PARAM_ID NOT In (1,2,133) THEN ',
'    RETURN FALSE;',
'    END IF;',
'    ',
'    IF :APP_EDC_PARAM_ID IN (133)/*(2,4,5,7,8)*/ AND V_CNT_CHK = 0  THEN',
'            RETURN FALSE;',
'    ELSE',
'            RETURN TRUE;',
'    END IF;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END IF;  ',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN FALSE;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11258802004444633244)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:Create();'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PP_ID NUMBER := :P37_PATIENT_PROFILE_ID;',
'  V_PARAM_ID NUMBER := :APP_EDC_PARAM_ID;',
'  V_COUNT NUMBER;',
'  V_STATUS NUMBER;',
'  V_RND_FLG NUMBER;',
'  V_DISPNS_FLG NUMBER;',
'BEGIN',
'  SELECT NVL(RND_FLG,0), NVL(DISPNS_FLG,0)',
'    INTO V_RND_FLG, V_DISPNS_FLG',
'    FROM EDC_PATIENT_VISIT_PARAMS',
'   WHERE PARAM_ID = :APP_EDC_PARAM_ID;',
'',
'  SELECT STATUS',
'    INTO V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = V_PP_ID;',
'',
'  IF :P1001_DM_ID IS NULL AND (((V_RND_FLG = 1 OR V_DISPNS_FLG = 1) AND UPPER(:P1001_IP_AVAILABILITY) = ''AVAILABLE'') OR (V_RND_FLG = 0 AND V_DISPNS_FLG = 0))',
'  THEN',
'    IF V_PARAM_ID > 3 THEN',
'      IF V_STATUS IN (3, 7,8 ) THEN',
'        RETURN TRUE;',
'      ELSE',
'        RETURN FALSE;',
'      END IF;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :P1001_DM_ID IS NULL',
'   AND ((:APP_EDC_PARAM_ID in (2,4) AND :P1001_IP_AVAILABILITY = ''AVAILABLE'') OR',
'        :APP_EDC_PARAM_ID not in (2,4))',
'   AND STATUS NOT IN (2,4,5,6)',
'   ',
'   ---------',
'   ',
'   DECLARE',
'  V_PP_ID NUMBER := :P37_PATIENT_PROFILE_ID;',
'  V_PARAM_ID NUMBER := :APP_EDC_PARAM_ID;',
'  V_COUNT NUMBER;',
'  V_STATUS NUMBER;',
'  V_RND_FLG NUMBER;',
'  V_DISPNS_FLG NUMBER;',
'BEGIN',
'  SELECT NVL(RND_FLG,0), NVL(DISPNS_FLG,0)',
'    INTO V_RND_FLG, V_DISPNS_FLG',
'    FROM EDC_PATIENT_VISIT_PARAMS',
'   WHERE PARAM_ID = :APP_EDC_PARAM_ID;',
'',
'  SELECT STATUS',
'    INTO V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = V_PP_ID;',
'',
'  IF :P1001_DM_ID IS NULL AND (((V_RND_FLG = 1 OR V_DISPNS_FLG = 1) AND UPPER(:P1001_IP_AVAILABILITY) = ''AVAILABLE'') OR (V_RND_FLG = 0 AND V_DISPNS_FLG = 0))',
'  THEN',
'    IF V_PARAM_ID > 2 THEN',
'      IF V_STATUS IN (3, 7) THEN',
'        RETURN TRUE;',
'      ELSE',
'        RETURN FALSE;',
'      END IF;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9941702679811323173)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'SEND_TO_PM'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send for Approval'
,p_button_position=>'CREATE2'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure you want to send this subject for Approval?'',''SEND_TO_PM'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_ROLE_ID IN (13, 26,15 /* Admin, CRC, PI */)',
'   AND STATUS = 1 -- Screened',
'   AND NVL(PM_NOTIFIED, 0) = 0',
'   AND NVL(PM_APPROVED, 0) = 0',
'   AND :APP_EDC_PARAM_ID = (select param_id From edc_patient_visit_params',
' where nvl(rnd_flg,0) = 1)',
'   AND :P1001_DM_ID IS NOT NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9051433543192477253)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'REQUEST_DISPENSING'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Dispensing'
,p_button_position=>'CREATE2'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:disp(1);'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND RPLC_FLG IS NULL',
'   AND :P1001_SUB_STATUS IN (1, 3, 7)',
'   AND :P1001_DISPNS_FLG = 1',
'   AND :P1001_DM_ID IS NOT NULL',
'   AND :APP_EDC_PATIENT_VISIT_ID = :P1001_MAX_PV_ID'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11258802187510633244)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
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
 p_id=>wwv_flow_imp.id(9941702824145323174)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'APPROVE_FOR_RANDOMIZATION'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve Randomization'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:pm_action(''APPROVE_FOR_RANDOMIZATION'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_ROLE_ID IN (13, 19, 28 /* Admin, PM, Medical Monitor */)',
'   AND STATUS = 1 -- Screened',
'   AND NVL(PM_NOTIFIED, 0) = 1',
'   AND NVL(PM_APPROVED, 0) = 0',
'   AND :APP_EDC_PARAM_ID = (select param_id From edc_patient_visit_params where nvl(rnd_flg,0) = 1)',
'   AND UPPER(:P1001_IP_AVAILABILITY) = ''AVAILABLE''',
'   AND :P1001_DM_ID IS NOT NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3110015442828822681)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'APPROVE_DISPENSING'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve Dispensing'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:disp(2);'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND RPLC_FLG = ''R''',
'   AND :P1001_DISPNS_FLG = 1',
'   AND :P1001_DM_ID IS NOT NULL',
'   AND :APP_EDC_PATIENT_VISIT_ID = :P1001_MAX_PV_ID',
'   AND UPPER(:P1001_IP_AVAILABILITY) = ''AVAILABLE''',
'   AND :APP_EDC_ROLE_ID IN(19,13)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9941702891783323175)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'REJECT_FOR_RANDOMIZATION'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject Randomization'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:pm_action(''REJECT_FOR_RANDOMIZATION'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_ROLE_ID IN (13, 19, 28/* Admin, PM, Medical Monitor */)',
'   AND STATUS = 1 -- Screened',
'   AND NVL(PM_NOTIFIED, 0) = 1',
'   AND NVL(PM_APPROVED, 0) = 0',
'   AND :APP_EDC_PARAM_ID  = (select param_id From edc_patient_visit_params',
' where nvl(rnd_flg,0) = 1)',
'   AND UPPER(:P1001_IP_AVAILABILITY) = ''AVAILABLE''',
'   AND :P1001_DM_ID IS NOT NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3110015702047822683)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'SEND_BACK_DISPENSING'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Back to CRC Dispensing'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:disp(4);'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND RPLC_FLG = ''R''',
'   AND :P1001_DISPNS_FLG = 1',
'   AND :P1001_DM_ID IS NOT NULL',
'   AND :APP_EDC_PATIENT_VISIT_ID = :P1001_MAX_PV_ID',
'   AND :APP_EDC_ROLE_ID IN(19,13)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9941702985623323176)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_button_name=>'SEND_BACK_TO_CRC'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Back to CRC'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:pm_action(''SEND_BACK_TO_CRC'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_ROLE_ID IN (13, 19, 28 /* Admin, PM, Medical Monitor */)',
'   AND STATUS = 1 -- Screened',
'   AND NVL(PM_NOTIFIED, 0) = 1',
'   AND NVL(PM_APPROVED, 0) = 0',
'   AND :APP_EDC_PARAM_ID = (select param_id From edc_patient_visit_params',
' where nvl(rnd_flg,0) = 1)',
'   AND UPPER(:P1001_IP_AVAILABILITY) = ''AVAILABLE''',
'   --AND TRUNC(TO_DATE(:P1001_VISIT_DATE,''DD-MON-YYYY'')) BETWEEN EDC_UTIL.GET_DURATION_LIMIT(:P37_PATIENT_PROFILE_ID,''M'') AND EDC_UTIL.GET_DURATION_LIMIT(:P37_PATIENT_PROFILE_ID,''P'')',
'   AND :P1001_DM_ID IS NOT NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11258803962394633246)
,p_branch_action=>'f?p=&APP_ID.:1001:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1794134824736684499)
,p_name=>'P1001_HEMOFLAG'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1851166467921152177)
,p_name=>'P1001_DT_VALUE'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_DT DATE;',
'BEGIN',
'    SELECT ACTUAL_DATE - 7 +30 INTO V_DT',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'     AND TO_NUMBER(VISIT_NUMBER) = 8;',
'     RETURN V_DT;',
'EXCEPTION WHEN OTHERS THEN RETURN NULL;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1851166631762152178)
,p_name=>'P1001_DT_DATE_VAL'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_DT DATE;',
'BEGIN',
'    SELECT ACTUAL_DATE + 7 + 30 INTO V_DT',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'     AND TO_NUMBER(VISIT_NUMBER) = 8;',
'     RETURN V_DT;',
'EXCEPTION WHEN OTHERS THEN RETURN NULL;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1862635979898120444)
,p_name=>'P1001_NEW_ALERT'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2293257178682524598)
,p_name=>'P1001_COMM4'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'COMM4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM4'') >= 1 '
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS NUMBER;',
'BEGIN',
'  SELECT STATUS',
'    INTO V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF :APP_EDC_PATIENT_VISIT_ID IN (0) THEN',
'    RETURN FALSE;',
'  ELSIF :APP_EDC_PARAM_ID = 1 AND V_STATUS >= 3 THEN',
'    RETURN TRUE;',
'  /*ELSIF :P1001_IE_MET = ''Yes'' AND :APP_EDC_PARAM_ID = 2 THEN',
'    RETURN TRUE;*/',
'  ELSE',
'    RETURN SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM4'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'  END IF;',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2504361186200603916)
,p_name=>'P1001_COMM7'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'COMM7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>200
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM7'') >= 1 '
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_COMM7'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2504361405139603918)
,p_name=>'P1001_COMM7_CHANGE'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm7 change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM7'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2505347030307846807)
,p_name=>'P1001_MIN_AGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>'50'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2505347152636846808)
,p_name=>'P1001_MAX_AGE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>'150'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3109956791490465278)
,p_name=>'P1001_DIP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3109956675448465277)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3109956838402465279)
,p_name=>'P1001_IP_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3109956675448465277)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reason'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REFRESH_IP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LV.DISPLAY_VALUE D',
'     , LV.STORED_VALUE R',
'  FROM EDC_LOV L',
'     , EDC_LOV_VALUES LV',
' WHERE L.LOV_ID = LV.LOV_ID',
'   AND LOV_NAME = ''IP_STATUS''',
'   AND LV.STATUS = 1',
'   AND LV.STORED_VALUE IN ( ''9'' ,''10'', ''21'') /* Damaged at Site, Lost at Site, Temperature Excursion at Site*/',
' ORDER BY LV.SEQUENCE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3109956971937465280)
,p_name=>'P1001_REJ_RSN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3109956675448465277)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rejection Reason'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>15
,p_cHeight=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE APP_FLG = ''R''',
'   AND RPLC_RSN IS NOT NULL',
'   AND DIP_ID = :P1001_DIP_ID'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3110015312709822679)
,p_name=>'P1001_MAX_PV_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_PATIENT_VISIT_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(PATIENT_VISIT_ID)',
'  FROM EDC_PATIENT_VISIT',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sourceregion-sql returning single value',
'----------------------',
'SELECT MAX(PATIENT_VISIT_ID)',
'  FROM EDC_PATIENT_VISIT',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3110015422928822680)
,p_name=>'P1001_DISPNS_FLG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>'SELECT DISPNS_FLG FROM EDC_PATIENT_VISIT_PARAMS WHERE PARAM_ID = :APP_EDC_PARAM_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3110200186714360384)
,p_name=>'P1001_RPLC_FLG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>'RPLC_FLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3110364058612863778)
,p_name=>'P1001_FLOW_REPORT_HEADER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_RET_MESSAGE VARCHAR2(200);',
'BEGIN',
'      IF :APP_EDC_PARAM_ID = 3 THEN',
'         V_RET_MESSAGE := ''Randomization Approval Flow'';',
'      ELSE',
'         V_RET_MESSAGE := ''Kit dispensation/replacement approval flow'';',
'      END IF;   ',
'      ',
'      RETURN V_RET_MESSAGE;',
'EXCEPTION WHEN OTHERS THEN',
'    RETURN NULL;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293688363635402491)
,p_name=>'P1001_COMM3'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'COMM3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>200
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM3'') >= 1 '
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_COMM3'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293688473061402492)
,p_name=>'P1001_COMM3_CHANGE'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm3 change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM3'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293688537905402493)
,p_name=>'P1001_KIT_ASSIGN'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_placeholder=>'Autogenerated'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LISTAGG(B.BOTTLE_NO,'','') WITHIN GROUP(ORDER BY B.IP_ID) IP',
'FROM IWRS_CRF_DM_IP A, EDC_IP_DETAIL B',
'WHERE A.IP_ID = B.IP_ID ',
'AND A.PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'AND A.IS_IP_DISPENSED = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>70
,p_cMaxlength=>3000
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_KIT_ASSIGN'') >= 1 '
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293688680666402494)
,p_name=>'P1001_COMM4_CHANGE'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm3 change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM4'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293688960443402497)
,p_name=>'P1001_NUM2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'NUM2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'IWRS_EARLY_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''EARLY_TERMINATION'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM2'') >= 1 ',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_NUM2'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689098187402498)
,p_name=>'P1001_NUM2_CHANGE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit date ch'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM2'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689288416402500)
,p_name=>'P1001_COMM5'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'COMM5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value,stored_value',
'from edc_lov_values',
'where lov_id = 86',
'and (:APP_EDC_PARAM_ID <> 21 or (:APP_EDC_PARAM_ID = 21 and lov_value_id <> 405))'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM5'') >= 1 '
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_COMM5'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689408478402501)
,p_name=>'P1001_COMM5_CHANGE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm5 change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM5'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689483768402502)
,p_name=>'P1001_END_OF_INDUCTION_PHASE_NOTE'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_pre_element_text=>unistr('The subject\2019s status who completes End of Induction Phase will be updated from \201CRandomized\201D to \201CInduction phase Completed')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_colspan=>2
,p_label_alignment=>'LEFT-BOTTOM'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>':P1001_PARAM_ID=8'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689561524402503)
,p_name=>'P1001_END_OF_STUDY'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('The subject\2019s status who completes Cycle 18 at end of study visit will be updated from \201CInduction phase Completed\201D to \201CMaintenance phase '),
unistr(' Completed\201D')))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-BOTTOM'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>':P1001_PARAM_ID=21'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689667171402504)
,p_name=>'P1001_NUM3'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'NUM3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM3'') >= 1 ',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689743300402505)
,p_name=>'P1001_NUM3_CHANGE'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit date ch'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM3'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689823601402506)
,p_name=>'P1001_COMM6'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'COMM6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'IWRS_EARLY_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''EARLY_TERMINATION'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM6'') >= 1 '
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_COMM5'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293689943740402507)
,p_name=>'P1001_COMM6_CHANGE'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm6 change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM6'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3293690064714402508)
,p_name=>'P1001_EARLY_TERMINATION'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_pre_element_text=>unistr('The subject\2019s status will be updated to Discontinued/Withdrawn/Lost to Follow up, as applicable.')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_colspan=>2
,p_label_alignment=>'LEFT-BOTTOM'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>':P1001_PARAM_ID=22'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3294697026274213292)
,p_name=>'P1001_PATIENT_PROFILE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P37_PATIENT_PROFILE_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3306912186263518591)
,p_name=>'P1001_COMM5_EXST'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LISTAGG(PARAM_ID,'','') WITHIN GROUP(ORDER BY PARAM_ID) PARAM_ID',
'  FROM IWRS_FIELD_DET',
' WHERE FM_ID = 46'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3549072142893701665)
,p_name=>'P1001_SUB_STATUS'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STATUS',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3549072195489701666)
,p_name=>'P1001_SUB_SF_REASON'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCREEN_FAIL_REASON',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3566215802279715378)
,p_name=>'P1001_RADIO7'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'RADIO7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO7'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS NUMBER;',
'BEGIN',
'  SELECT STATUS',
'    INTO V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF :APP_EDC_PATIENT_VISIT_ID IN (0) THEN',
'    RETURN FALSE;',
'  ELSIF :APP_EDC_PARAM_ID = 1 AND V_STATUS >= 3 THEN',
'    RETURN TRUE;',
'  /*ELSIF :P1001_IE_MET = ''Yes'' AND :APP_EDC_PARAM_ID = 2 THEN',
'    RETURN TRUE;*/',
'  ELSE',
'    RETURN SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO7'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'  END IF;',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3566215906275715379)
,p_name=>'P1001_RADIO7_CHANGE'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO7'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3791922644483411342)
,p_name=>'P1001_DATE3'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'DATE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_tag_attributes=>'readonly="readonly;"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE3'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:app_page_id,''P1001_DATE3'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3791922904370411344)
,p_name=>'P1001_DATE3_SHOW'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_prompt=>'<B>Visit Time</B>'
,p_placeholder=>'Auto Filled'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_MAX_ID NUMBER;',
'  V_NEW_VC VARCHAR2(30);',
'BEGIN',
'  SELECT MAX(ID)',
'    INTO V_MAX_ID',
'    FROM EDC_REASON_FOR_CH_HIST',
'   WHERE COLUMN_NAME = ''DATE3''',
'     AND PK1 = :P1001_DM_ID',
'     AND TABLE_NAME = ''IWRS_CRF_DM'';',
'',
'  SELECT NEW_VC',
'    INTO V_NEW_VC',
'    FROM EDC_REASON_FOR_CH_HIST',
'   WHERE ID = V_MAX_ID;',
'',
'  RETURN V_NEW_VC;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN NULL;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE3'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:app_page_id,''P1001_DATE3'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234588452991700398)
,p_name=>'P1001_PARAM_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_PARAM_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234588644502700400)
,p_name=>'P1001_IP_ASSIGN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(DIP_ID)',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5234588771373700401)
,p_name=>'P1001_IP_DSPNS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(DIP_ID)',
'  FROM IWRS_CRF_DM_IP',
' WHERE IS_IP_DISPENSED = ''Yes''',
'   AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9050756924482010355)
,p_name=>'P1001_MAX_VISIT_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_item_default=>'to_Date(to_char(localtimestamp,''DD-MON-YYYY''),''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PREV_VISIT_ID   NUMBER;',
'    V_VISIT_DATE      DATE;',
'    V_PREV_VISIT_DATE DATE;',
'BEGIN',
'    IF :APP_EDC_PARAM_ID = 1 THEN',
'        -- For Screening Visit, Minimum date should be Screening Date only...',
'        SELECT SCREENING_DATE - 28',
'          INTO V_VISIT_DATE',
'          FROM EDC_PATIENT_PROFILE',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'        RETURN TO_CHAR(V_VISIT_DATE, ''YYYYMMDD'');',
'    ELSE',
'        -- For other Visits, Get the Previous Visit Date...',
'        SELECT MAX(PATIENT_VISIT_ID)',
'          INTO V_PREV_VISIT_ID',
'          FROM EDC_PATIENT_VISIT',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'           AND PATIENT_VISIT_ID < :APP_EDC_PATIENT_VISIT_ID;',
'',
'        SELECT VISIT_DATE',
'          INTO V_PREV_VISIT_DATE',
'          FROM IWRS_CRF_DM',
'         WHERE PATIENT_VISIT_ID = V_PREV_VISIT_ID;',
'         ',
'         RETURN V_PREV_VISIT_DATE;',
'         /*',
'        BEGIN',
'            -- Check if Current Visit is already generated on not...',
'            SELECT VISIT_DATE',
'              INTO V_VISIT_DATE',
'              FROM IWRS_CRF_DM',
'             WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'            IF V_VISIT_DATE <= TRUNC(SYSDATE) - 2 THEN',
'                RETURN TO_CHAR(TRUNC(V_VISIT_DATE), ''YYYYMMDD'');',
'            ELSE',
'                RETURN TO_CHAR(TRUNC(V_PREV_VISIT_DATE), ''YYYYMMDD'');',
'            END IF;',
'',
'        EXCEPTION WHEN OTHERS THEN',
'            IF V_PREV_VISIT_DATE <= TRUNC(SYSDATE) - 2 THEN',
'                RETURN TO_CHAR(TRUNC(SYSDATE) - 2, ''YYYYMMDD'');',
'            ELSE',
'                RETURN TO_CHAR(TRUNC(V_PREV_VISIT_DATE), ''YYYYMMDD'');',
'            END IF;',
'        END;',
'       */',
'    END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9051185307377573953)
,p_name=>'P1001_COMM2'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'COMM2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>200
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM2'') >= 1 '
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_COMM2'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9051185412602573954)
,p_name=>'P1001_COMM2_CHANGE'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm2 change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM2'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9551146009219014885)
,p_name=>'P1001_ICF_STOP'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_format_mask=>'HH24:MI'
,p_source=>'ICF_STOP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>7
,p_tag_attributes=>'readonly'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICF_STOP'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF (',
'      (SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICF_STOP'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = FALSE) ',
'     OR ',
'      (SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE1'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = FALSE) ',
'     ) THEN',
'    RETURN FALSE;',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9551146229783014887)
,p_name=>'P1001_ICF_STOP_CHANGE'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit date ch'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICF_STOP'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940549984886271871)
,p_name=>'P1001_DOB'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DOB'') >= 1 AND :APP_EDC_ROLE_ID IN(15,26,13,17)'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'  V_ST NUMBER;',
'BEGIN',
'  SELECT COUNT(PATIENT_VISIT_ID) ',
'    INTO V_COUNT',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'   ',
'   SELECT STATUS INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'   ',
'    IF :APP_EDC_PARAM_ID = 1 AND V_COUNT > 1 AND :P1001_DM_ID IS NOT NULL AND V_ST >=3 THEN',
'             RETURN TRUE;',
'    ELSIF  ((SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DOB'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false )',
'         OR ',
'         (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_ICDDT'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)',
'         OR',
'         (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_AGE'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)) THEN',
'             RETURN false;',
'    ELSE ',
'             RETURN true;',
'    END IF;',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'-90:+0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940550052842271872)
,p_name=>'P1001_DOB_CHANGE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit date change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DOB'') >=1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940550510996271876)
,p_name=>'P1001_ICDDT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SCHEDULE_DATE DATE;',
'BEGIN',
'    SELECT SCHEDULE_DATE',
'      INTO V_SCHEDULE_DATE',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND :APP_EDC_PARAM_ID = 1;',
'',
'    RETURN V_SCHEDULE_DATE;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'"CRF_LABEL"'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'ICDDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICDDT'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'  V_ST NUMBER;',
'BEGIN',
'  SELECT COUNT(PATIENT_VISIT_ID) ',
'    INTO V_COUNT',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'   ',
'   SELECT STATUS INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'   ',
'    IF :APP_EDC_PARAM_ID = 1 AND V_COUNT > 1 AND :P1001_DM_ID IS NOT NULL AND V_ST >=3 THEN',
'          RETURN TRUE;',
'    ELSIF  ((SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DOB'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false )',
'         OR ',
'         (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_ICDDT'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)',
'         OR',
'         (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_AGE'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)) THEN',
'         RETURN FALSE;',
'     ELSE ',
'         RETURN TRUE;',
'     END IF;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940550546443271877)
,p_name=>'P1001_ICDDT_CHANGE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Informed Consent'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICDDT'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940550759069271879)
,p_name=>'P1001_AGE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_AGE'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'  V_ST NUMBER;',
'BEGIN',
'  SELECT COUNT(PATIENT_VISIT_ID) ',
'    INTO V_COUNT',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'   ',
'   SELECT STATUS INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'   ',
'    IF :APP_EDC_PARAM_ID = 1 AND V_COUNT > 1 AND :P1001_DM_ID IS NOT NULL AND V_ST >=3 THEN',
'          RETURN TRUE;',
'    ELSIF  ((SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DOB'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false )',
'             OR ',
'             (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_ICDDT'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)',
'             OR',
'             (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_AGE'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)) THEN',
'          RETURN FALSE;',
'     ELSE ',
'          RETURN TRUE;',
'     END IF;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940550885397271880)
,p_name=>'P1001_AGE_CHANGE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit date ch'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_AGE'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940551069920271882)
,p_name=>'P1001_RADIO1'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'RADIO1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO1'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if (',
'    (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_RADIO1'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false) ',
'   OR ',
'    (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_DATE1'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false) ',
'   ) THEN',
'   RETURN false;',
'ELSE',
'   RETURN true;',
'END IF;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940551215617271883)
,p_name=>'P1001_RADIO1_CHANGE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO1'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940551437677271885)
,p_name=>'P1001_DATE1'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE1'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P1001_SUB_STATUS = 2 AND :P1001_SUB_SF_REASON LIKE ''%72 hours%'' THEN',
'    RETURN FALSE;',
'ELSif (',
'    (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_RADIO1'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false) ',
'   OR ',
'    (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_DATE1'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false) ',
'   ) THEN',
'   RETURN false;',
'ELSE',
'   RETURN true;',
'END IF;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P1001_MIN_VISIT_DATE.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940551523069271886)
,p_name=>'P1001_DATE1_CHANGE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Informed Consent'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE1'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940551899852271890)
,p_name=>'P1001_RADIO2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'RADIO2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO2'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if ((SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_RADIO2'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)',
'    OR',
'    (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_DATE2'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)) THEN',
'    RETURN false;',
'ELSE',
'   RETURN true;',
'END IF;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940552032424271891)
,p_name=>'P1001_RADIO2_CHANGE'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO2'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940552228982271893)
,p_name=>'P1001_DATE2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE2'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P1001_SUB_STATUS = 2 AND :P1001_SUB_SF_REASON LIKE ''%72 hours%'' THEN',
'    RETURN FALSE;',
'ELSif ((SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_RADIO2'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)',
'    OR',
'    (SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_DATE2'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID) = false)) THEN',
'    RETURN false;',
'ELSE',
'   RETURN true;',
'END IF;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P1001_MIN_VISIT_DATE.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940552297667271894)
,p_name=>'P1001_DATE2_CHANGE'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Informed Consent'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE2'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940552364552271895)
,p_name=>'P1001_RADIO3'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'RADIO3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO3'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_RADIO3'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940552470375271896)
,p_name=>'P1001_RADIO3_CHANGE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO3'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940552755421271899)
,p_name=>'P1001_IE_MET'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'IE_MET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_IE_MET'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'  V_ST NUMBER;',
'BEGIN',
'  SELECT COUNT(PATIENT_VISIT_ID) ',
'    INTO V_COUNT',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'   ',
'   SELECT STATUS INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF :APP_EDC_PATIENT_VISIT_ID IN (922) THEN',
'    RETURN FALSE;',
'  ELSIF :APP_EDC_PARAM_ID = 1 AND V_COUNT > 1 AND :P1001_DM_ID IS NOT NULL AND V_ST >=3 THEN',
'    RETURN TRUE;',
'  ELSIF :P1001_IE_MET = ''Yes'' AND :APP_EDC_PARAM_ID in (1) THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_IE_MET'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'  END IF;',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940552883883271900)
,p_name=>'P1001_IE_MET_CHANGE'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_IE_MET'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940553165353271903)
,p_name=>'P1001_COMM1_CHANGE'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm1 change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM1'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940553255139271904)
,p_name=>'P1001_RADIO4'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'RADIO4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_attributes=>'readonly = "readonly();"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO4'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_LIMIT NUMBER;',
'  V_ARM_COUNT NUMBER;',
'BEGIN',
' /* IF :P1001_RANDOMIZATION_NUMBER IS NULL THEN',
'    SELECT VAL_NUM',
'      INTO V_LIMIT',
'      FROM EDC_PARAMS',
'     WHERE PARAM_ID = 8;',
'',
'    SELECT COUNT(C.PATIENT_PROFILE_ID) CNT',
'      INTO V_ARM_COUNT',
'      FROM IWRS_CRF_DM A',
'      JOIN EDC_PATIENT_VISIT B',
'        ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'      JOIN EDC_PATIENT_PROFILE C',
'        ON B.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID',
'       AND A.RADIO4 = ''Yes''',
'       AND C.RANDOMNO IS NOT NULL;',
'',
'    IF V_ARM_COUNT >= V_LIMIT THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  ELSIF :P1001_RANDOMIZATION_NUMBER IS NOT NULL THEN',
'    RETURN TRUE;',
'  ELSE */',
'    RETURN SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:app_page_id,''P1001_RADIO4'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'  --END IF;',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PL/SQL FUNCTION BODY-- default value    ',
'',
'DECLARE',
'  V_LIMIT NUMBER;',
'  V_ARM_COUNT NUMBER;',
'BEGIN',
'  SELECT VAL_NUM',
'    INTO V_LIMIT',
'    FROM EDC_PARAMS',
'   WHERE PARAM_ID = 8;',
'',
'  SELECT COUNT(C.PATIENT_PROFILE_ID) CNT',
'    INTO V_ARM_COUNT',
'    FROM IWRS_CRF_DM A',
'    JOIN EDC_PATIENT_VISIT B',
'      ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'    JOIN EDC_PATIENT_PROFILE C',
'      ON B.PATIENT_PROFILE_ID = C.PATIENT_PROFILE_ID',
'     AND A.RADIO4 = ''Yes''',
'     AND C.RANDOMNO IS NOT NULL;',
'',
'  IF V_ARM_COUNT >= V_LIMIT THEN',
'    RETURN ''No'';',
'  ELSE',
'    RETURN NULL;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9940553413182271905)
,p_name=>'P1001_RADIO4_CHANGE'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO4'') >= 1',
'AND 1 = 2'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9941572964435126771)
,p_name=>'P1001_RADIO5'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'RADIO5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:0;0,1;1,2;2,3;3,4;4'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO5'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :APP_EDC_ROLE_ID in (13,16,26, 15) then',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_RADIO5'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9941573106723126772)
,p_name=>'P1001_RADIO5_CHANGE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO5'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9941573205086126773)
,p_name=>'P1001_RADIO6'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'RADIO6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence'))
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO6'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_RADIO6'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9941573285929126774)
,p_name=>'P1001_RADIO6_CHANGE'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO6'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9941703104786323177)
,p_name=>'P1001_PM_ACTION_MSG'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10641777892792306041)
,p_name=>'P1001_NO_OF_QUERIES'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*)',
'  FROM edc_crf_queries',
' where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
'   AND QRY_STATUS in (''Open'',''Reopened'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11206076227104427388)
,p_name=>'P1001_VISIT_DATE_CHANGE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit date change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_VISIT_DATE'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11206076304417427389)
,p_name=>'P1001_RANDOMIZATION_NUMBER_CHANGE'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit date ch'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RANDOMIZATION_NUMBER'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11206076409880427390)
,p_name=>'P1001_STATUS_CHANGE'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status change'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_STATUS'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11206076567546427391)
,p_name=>'P1001_GENDER_CHANGE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit date ch'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_GENDER'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11206076582472427392)
,p_name=>'P1001_NUM1_CHANGE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_placeholder=>'Reason for change'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_css_classes=>'reason4change'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM1'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258804369851633291)
,p_name=>'P1001_DM_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>'DM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258804642280633299)
,p_name=>'P1001_STUDY_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258804999701633300)
,p_name=>'P1001_PATIENT_VISIT_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
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
 p_id=>wwv_flow_imp.id(11258805423062633300)
,p_name=>'P1001_SECTION_STATUS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_source=>'SECTION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258805835904633300)
,p_name=>'P1001_VISIT_DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SCHEDULE_DATE DATE;',
'BEGIN',
'  IF :APP_EDC_PARAM_ID = 1 THEN',
'    SELECT SCHEDULE_DATE',
'      INTO V_SCHEDULE_DATE',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND PARAM_ID = 1;',
'',
'  ELSIF :APP_EDC_PARAM_ID = 5 THEN',
'    SELECT ACTUAL_DATE',
'      INTO V_SCHEDULE_DATE',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  END IF;',
'  RETURN V_SCHEDULE_DATE;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'"CRF_LABEL"'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'VISIT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly;"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_VISIT_DATE'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_VISIT_DATE'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P1001_MIN_VISIT_DATE.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P1001_MIN_VISIT_DATE.',
'&P1001_MAX_VISIT_DATE.'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258806179784633301)
,p_name=>'P1001_RANDOMIZATION_NUMBER'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_placeholder=>'Autogenerated'
,p_source=>'RANDOMIZATION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RANDOMIZATION_NUMBER'') >= 1 ',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258806626209633301)
,p_name=>'P1001_STATUS'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISPLAY_VALUE D, TO_NUMBER(STORED_VALUE) R',
'  FROM EDC_LOV_VALUES',
'WHERE STORED_VALUE IN (10)',
'   AND LOV_ID = 36',
'   AND :P1001_RADIO3 = ''Yes''',
' UNION',
'SELECT DISPLAY_VALUE D, TO_NUMBER(STORED_VALUE) R',
'  FROM EDC_LOV_VALUES',
'WHERE STORED_VALUE IN (4,6,5)',
'   AND LOV_ID = 36',
'   AND :P1001_RADIO3 = ''No''',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P1001_RADIO3'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_STATUS'') >= 1',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_STATUS'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'  V_ADD_SQL CLOB;',
'  V_SQL CLOB;',
'BEGIN',
'  SELECT COUNT(DISTINCT PARAM_ID) CNT',
'    INTO V_COUNT',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_COUNT = 9 THEN',
'    V_ADD_SQL := '' WHERE STORED_VALUE IN (4,6,5,8)'';',
'  ELSE',
'    V_ADD_SQL := '' WHERE STORED_VALUE IN (4,6,5)'';',
'  END IF;',
'',
'  V_SQL := ''SELECT DISPLAY_VALUE D, TO_NUMBER(STORED_VALUE) R',
'  FROM EDC_LOV_VALUES',
'''||V_ADD_SQL||''',
'   AND LOV_ID = 36',
' UNION',
'SELECT ''''Unblinded'''' D, TO_NUMBER(STATUS) R',
'  FROM EDC_PATIENT_PROFILE',
' WHERE STATUS = 9',
'   AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
' ORDER BY 2;'';',
' ',
'  RETURN (V_SQL);',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258807066657633301)
,p_name=>'P1001_GENDER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PATIENT_GENDER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT A.DISPLAY_VALUE D, A.STORED_VALUE R',
'  FROM EDC_LOV_VALUES A',
'  JOIN EDC_LOV B',
'    ON A.LOV_ID   = B.LOV_ID',
'   AND B.LOV_NAME = ''PATIENT_GENDER'' AND STORED_VALUE NOT IN (''Not Reported'')',
' ORDER BY A.SEQUENCE',
' '))
,p_tag_attributes=>'READONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_GENDER'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_GENDER'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_GENDER'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258807451781633302)
,p_name=>'P1001_NUM1'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'NUM1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM1'') >= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ID NUMBER;',
'BEGIN',
'    SELECT STATUS INTO V_ID FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'    IF V_ID >= 3 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN SUN_21010_DEV.EDC_UTIL.ITEM_READONLY(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM1'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'    END IF;',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11258807874351633302)
,p_name=>'P1001_COMM1'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'"CRF_LABEL"'
,p_source=>'COMM1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cHeight=>2
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM1'') >= 1 '
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return SUN_21010_DEV.edc_util.item_readonly(:APP_EDC_PARAM_ID,:app_page_id,''P1001_COMM1'',:APP_EDC_PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID);',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11260785704283328893)
,p_name=>'P1001_SUBJECT_INITIAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Patient Initial</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PTINTL VARCHAR2(100);',
'BEGIN  ',
'    SELECT PTINTL',
'      INTO V_PTINTL',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    RETURN V_PTINTL;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        RETURN '''';',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11260785846058328894)
,p_name=>'P1001_SCREENING_NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Screening Number</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SCRNO VARCHAR2(100);',
'BEGIN  ',
'    SELECT SCRNO',
'      INTO V_SCRNO',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    RETURN V_SCRNO;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        RETURN '''';',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11260786327171328899)
,p_name=>'P1001_VISIT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>'UPPER(:APP_EDC_VISIT_NAME)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11266206905422457402)
,p_name=>'P1001_IP_AVAILABILITY'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(11258920725136335819)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN NVL(CRO_IWRS_PKG.IP_UNAVAILABLE(:APP_EDC_STUDY_ID, :APP_EDC_STUDY_SITE_ID, :P37_PATIENT_PROFILE_ID, :APP_EDC_PATIENT_VISIT_ID),''AVAILABLE'');',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RND_FLG NUMBER;',
'  V_DISPS_FLG NUMBER;',
'  V_COUNT NUMBER;',
'  V_STATUS NUMBER;',
'  V_RPLC_FLG IWRS_CRF_DM.RPLC_FLG%TYPE;',
'  V_PM_NOTIFIED NUMBER;',
'  V_PM_APPROVED NUMBER;',
'BEGIN',
'  SELECT STATUS, PM_NOTIFIED, NVL(PM_APPROVED,0)',
'    INTO V_STATUS, V_PM_NOTIFIED, V_PM_APPROVED',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_STATUS IN (1, 3, 7) THEN',
'    SELECT RND_FLG, DISPNS_FLG',
'      INTO V_RND_FLG, V_DISPS_FLG',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE PARAM_ID = :APP_EDC_PARAM_ID;',
'',
'    IF NVL(V_RND_FLG, V_DISPS_FLG) = 1 THEN',
'      SELECT COUNT(DIP_ID)',
'        INTO V_COUNT',
'        FROM IWRS_CRF_DM_IP',
'       WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'      BEGIN',
'        SELECT RPLC_FLG',
'          INTO V_RPLC_FLG',
'          FROM IWRS_CRF_DM',
'         WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'      EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'          V_RPLC_FLG := NULL;',
'      END;',
'',
'      IF V_COUNT = 0 AND V_DISPS_FLG = 1 AND V_RPLC_FLG = ''R'' THEN',
'        RETURN TRUE;',
'--      ELSIF V_COUNT = 0 AND V_RND_FLG = 1 AND V_PM_NOTIFIED = 1 AND V_PM_APPROVED = 0 THEN',
'      ELSIF V_COUNT = 0 AND (V_PM_APPROVED = 0 OR :P1001_DM_ID IS NULL) THEN',
'        RETURN TRUE;',
'      ELSE',
'        RETURN FALSE;',
'      END IF;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11275488699818600258)
,p_name=>'P1001_MIN_VISIT_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_date date;',
'v_rnd_date date;',
'V_SC_DT DATE;',
'v_days number;',
'C_CTN NUMBER;',
'V_CNT NUMBER;',
'V_PV_ID NUMBER;',
'begin',
'',
'IF :APP_EDC_PARAM_ID IN(1) THEN',
'    SELECT SCREENING_DATE INTO V_SC_DT FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID AND :APP_EDC_PARAM_ID IN(1);',
'    RETURN V_SC_DT ;',
'ELSE',
'        ',
'    SELECT MAX(ACTUAL_DATE),MAX(PATIENT_VISIT_ID)',
'      INTO v_date , V_PV_ID',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND PARAM_ID = (SELECT MAX(PARAM_ID) FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID AND PARAM_ID < :APP_EDC_PARAM_ID);',
'       RETURN V_DATE;',
'       ',
'END IF;    ',
'--END IF;',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'RETURN CAST(LOCALTIMESTAMP AS DATE);',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PREV_VISIT_ID   NUMBER;',
'    V_VISIT_DATE      DATE;',
'    V_PREV_VISIT_DATE DATE;',
'BEGIN',
'    IF :APP_EDC_PARAM_ID = 1 THEN',
'        -- For Screening Visit, Minimum date should be Screening Date only...',
'        SELECT SCREENING_DATE - 28',
'          INTO V_VISIT_DATE',
'          FROM EDC_PATIENT_PROFILE',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'        RETURN TO_CHAR(V_VISIT_DATE, ''YYYYMMDD'');',
'    ELSE',
'        -- For other Visits, Get the Previous Visit Date...',
'        SELECT MAX(PATIENT_VISIT_ID)',
'          INTO V_PREV_VISIT_ID',
'          FROM EDC_PATIENT_VISIT',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'           AND PATIENT_VISIT_ID < :APP_EDC_PATIENT_VISIT_ID;',
'',
'        SELECT VISIT_DATE',
'          INTO V_PREV_VISIT_DATE',
'          FROM IWRS_CRF_DM',
'         WHERE PATIENT_VISIT_ID = V_PREV_VISIT_ID;',
'         ',
'         RETURN V_PREV_VISIT_DATE;',
'         /*',
'        BEGIN',
'            -- Check if Current Visit is already generated on not...',
'            SELECT VISIT_DATE',
'              INTO V_VISIT_DATE',
'              FROM IWRS_CRF_DM',
'             WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'            IF V_VISIT_DATE <= TRUNC(SYSDATE) - 2 THEN',
'                RETURN TO_CHAR(TRUNC(V_VISIT_DATE), ''YYYYMMDD'');',
'            ELSE',
'                RETURN TO_CHAR(TRUNC(V_PREV_VISIT_DATE), ''YYYYMMDD'');',
'            END IF;',
'',
'        EXCEPTION WHEN OTHERS THEN',
'            IF V_PREV_VISIT_DATE <= TRUNC(SYSDATE) - 2 THEN',
'                RETURN TO_CHAR(TRUNC(SYSDATE) - 2, ''YYYYMMDD'');',
'            ELSE',
'                RETURN TO_CHAR(TRUNC(V_PREV_VISIT_DATE), ''YYYYMMDD'');',
'            END IF;',
'        END;',
'       */',
'    END IF;',
'END;',
'',
'///',
'',
'DECLARE',
'  V_DATE DATE;',
'  V_DAYS NUMBER;',
'  V_PARAM_FK_ID NUMBER;',
'  V_DURATION NUMBER;',
'BEGIN',
'  IF :P1001_DM_ID IS NOT NULL THEN',
'    RETURN TO_DATE(:P1001_VISIT_DATE,''DD-MON-YYYY'');',
'  ELSE',
'',
'    IF :APP_EDC_PARAM_ID IN (1, 22) THEN',
'/*',
'      SELECT SCREENING_DATE ',
'        INTO V_DATE',
'        FROM EDC_PATIENT_PROFILE',
'       WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;*/',
'',
'       V_DATE := NULL;--ADD_MONTHS(SYSDATE,-1);',
'       RETURN V_DATE;',
'',
'    ELSE',
'      SELECT PARAM_ID_FK, CASE PARAM_ID WHEN 1 THEN 0 WHEN 2 THEN 21 ELSE DURATION END - WINDOW_PERIOD_M DUR',
'        INTO V_PARAM_FK_ID, V_DURATION',
'        FROM EDC_PATIENT_VISIT_PARAMS',
'       WHERE PARAM_ID = :APP_EDC_PARAM_ID;',
'',
'      IF V_PARAM_FK_ID IS NULL THEN',
'        RETURN NULL;',
'      ELSE',
'        SELECT ACTUAL_DATE + V_DURATION',
'          INTO V_DATE',
'          FROM EDC_PATIENT_VISIT',
'         WHERE PARAM_ID = V_PARAM_FK_ID',
'           AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'      END IF;',
'      RETURN V_DATE;',
'    END IF;',
'  END IF;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN SYSDATE;',
'END;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11275488780052600259)
,p_name=>'P1001_NEXT_VISIT_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11258801669182633243)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_date date;',
'v_rnd_date date;',
'v_days number;',
'begin',
' select actual_date ',
'   into v_rnd_date',
'   from edc_patient_Visit',
'    where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'      and param_id = 2;',
'      ',
'select duration + window_period_P',
'  INTO V_DAYS',
'  from edc_patient_visit_params',
' where param_id = :APP_EDC_PARAM_ID; ',
' ',
'return V_RND_DATE + V_DAYS;',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'RETURN SYSDATE;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11286449301416453226)
,p_name=>'P1001_DISCONTINUATION_REASON'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(11286435913059428332)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_VISIT_2_BSA NUMBER;',
'   V_VISIT_7_BSA NUMBER;',
'   V_PERC_CHANGE NUMBER;',
'BEGIN/*',
'	SELECT BSA',
'	  INTO V_VISIT_2_BSA',
'	  FROM IWRS_CRF_DM',
'	 WHERE PATIENT_VISIT_ID = (SELECT MIN(PATIENT_VISIT_ID)',
'								 FROM EDC_PATIENT_VISIT',
'								WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'								  AND VISIT_NUMBER = 2',
'							  );',
'',
'	SELECT BSA',
'	  INTO V_VISIT_7_BSA',
'	  FROM IWRS_CRF_DM',
'	 WHERE PATIENT_VISIT_ID = (SELECT MIN(PATIENT_VISIT_ID)',
'								 FROM EDC_PATIENT_VISIT',
'								WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'								  AND VISIT_NUMBER = 7',
'							  );',
'',
'',
'    V_PERC_CHANGE := ROUND((((V_VISIT_7_BSA - V_VISIT_2_BSA) / V_VISIT_2_BSA) * 100), 2);',
'',
'    IF V_PERC_CHANGE <= -5 OR V_PERC_CHANGE >= 5 THEN',
'        RETURN ''Subject is Discontinued due to unacceptable variance in BSA, '' || V_PERC_CHANGE || ''% change compared to Visit 2 BSA('' || V_VISIT_2_BSA || '')'';',
'    ELSE',
'        RETURN NULL;',
'    END IF;*/',
'RETURN(''PCR Date and Time exceeded 72 hours. Hence the Subject will be Screen Failed.'');',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;font-weight:bold;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11276041794205821111)
,p_computation_sequence=>20
,p_computation_item=>'APP_EDC_PATIENT_VISIT_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P45_PATIENT_VISIT_ID'
,p_compute_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3791922768368411343)
,p_computation_sequence=>10
,p_computation_item=>'P1001_DATE3'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'LOCALTIMESTAMP'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11272901243551622902)
,p_computation_sequence=>20
,p_computation_item=>'APP_EDC_VISIT_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VISIT_TITLE from edc_patient_visit',
' where patient_Visit_id = :APP_EDC_PATIENT_VISIT_ID'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(10137882890927225681)
,p_computation_sequence=>30
,p_computation_item=>'APP_EDC_PARAM_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PARAM_ID from edc_patient_visit',
' where patient_Visit_id = :APP_EDC_PATIENT_VISIT_ID'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11276042329777830676)
,p_computation_sequence=>40
,p_computation_item=>'APP_EDC_STUDY_SITE_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT STUDY_SITE_ID FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID'
,p_compute_when=>'P37_PATIENT_PROFILE_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11272901523973623871)
,p_computation_sequence=>50
,p_computation_item=>'MINIMUM_DATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :APP_EDC_VISIT_NAME = ''Screening Visit'' THEN',
'    RETURN :APP_ICF_DATE;',
'  ELSE',
'    RETURN :APP_EDC_VISIT_DATE;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11272901808247624793)
,p_computation_sequence=>60
,p_computation_item=>'MAXIMUM_DATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_VISIT_DATE VARCHAR2(15);',
'BEGIN',
'  if :APP_EDC_VISIT_NAME <> ''Visit 8'' then',
'',
'     SELECT TO_CHAR(ACTUAL_DATE - 1,''DD-MON-YYYY'') ',
'       INTO V_VISIT_DATE',
'       FROM EDC_PATIENT_VISIT',
'      WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'        AND VISIT_NUMBER = (SELECT VISIT_NUMBER + 1 FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID);',
'',
'  ELSE',
'',
'    RETURN TO_CHAR(SYSDATE,''DD-MON-YYYY'');',
'',
'  END IF;',
'  RETURN V_VISIT_DATE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN TO_CHAR(SYSDATE,''DD-MON-YYYY'');',
'END;'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11272902079368625587)
,p_computation_sequence=>70
,p_computation_item=>'APP_EDC_VISIT_DATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT TO_DATE(ACTUAL_DATE,''DD-MON-YYYY'') dt FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;'
,p_compute_when=>'APP_EDC_PATIENT_VISIT_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11272902414939626548)
,p_computation_sequence=>80
,p_computation_item=>'APP_EDC_SCREENING_DATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'Select Screening_Date From Edc_Patient_Profile Where Patient_Profile_Id = :P37_Patient_Profile_Id'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(11206076137939427387)
,p_computation_sequence=>90
,p_computation_item=>'P1001_DM_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DM_ID',
'  FROM IWRS_CRF_DM',
' WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'   AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2294733068140827901)
,p_validation_name=>'HARDLOCK'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF to_date(:P1001_VISIT_DATE) <> to_date(:P1001_ICDDT) THEN',
'   IF :APP_EDC_PARAM_ID	 = 1 THEN',
'       RETURN ''Please make sure that the Visit Date and Informed Consent Date must be same.'';',
'   END IF;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1851163570515152148)
,p_validation_name=>'HARDLOCK_FOR_EOT'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ID NUMBER;',
'V_PV_ID NUMBER;',
'V_CNT NUMBER;',
'V_PARAM_ID NUMBER;',
'V_PCK NUMBER;',
'BEGIN',
'    BEGIN',
'        SELECT MAX(PATIENT_VISIT_ID), MAX(TO_NUMBER(VISIT_NUMBER)) INTO V_PV_ID, V_PARAM_ID FROM EDC_PATIENT_VISIT ',
'            WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID AND TO_NUMBER(VISIT_NUMBER) <> 9;',
'    EXCEPTION WHEN OTHERS THEN',
'        V_PV_ID := 0;',
'    END;',
'    ',
'    SELECT COUNT(*) INTO V_CNT FROM EDC_IP_DETAIL WHERE PATIENT_VISIT_ID = V_PV_ID AND IP_STATUS = 4 AND V_PARAM_ID = 8;',
'',
'    SELECT (SELECT COUNT(*) FROM EDC_PATIENT_VISIT F',
'                    WHERE F.PATIENT_PROFILE_ID = A.PATIENT_PROFILE_ID ',
'                    AND TO_NUMBER(VISIT_NUMBER) < = 8 AND CRF_STATUS = 3) AS CNT ',
'        INTO V_ID',
'      FROM EDC_PATIENT_PROFILE A WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'        IF :APP_EDC_PARAM_ID = 9 AND :P1001_RADIO3 = ''Yes'' AND :P1001_RADIO3 IS NOT NULL AND V_PARAM_ID IN(2,3,4,5,6,7) THEN',
'                    RETURN ''Please select "No" in Did the subject complete end of treatment study participation?'';',
'        ELSIF V_CNT = 0 AND :APP_EDC_PARAM_ID = 9 AND :P1001_RADIO3 = ''Yes'' AND :P1001_RADIO3 IS NOT NULL AND V_PARAM_ID IN(8) THEN',
'                    RETURN ''Please select "No" in Did the subject complete end of treatment study participation?'';',
'        END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>':REQUEST IN (''CREATE'',''SAVE'') AND :APP_EDC_PARAM_ID =9'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11260076680095265130)
,p_validation_name=>'P1001_VISIT_DATE_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P1001_VISIT_DATE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE NVL(VISIT_DATE, TRUNC(SYSDATE)) <> NVL(:P1001_VISIT_DATE, TRUNC(SYSDATE))',
'   AND TRIM(:P1001_VISIT_DATE_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_VISIT_DATE'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(11206076227104427388)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9940550190499271873)
,p_validation_name=>'P1001_DOB_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P1001_DOB_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE NVL(DOB, TRUNC(SYSDATE)) <> NVL(:P1001_DOB, TRUNC(SYSDATE))',
'   AND TRIM(:P1001_DOB_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DOB'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940550052842271872)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3791782176043213942)
,p_validation_name=>'P1001_DATE1_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P1001_DATE1_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE ((TO_CHAR(DATE1,''DD-MON-YYYY'') <> UPPER(:P1001_DATE1)) OR',
'        (DATE1 IS NULL AND :P1001_DATE1 IS NOT NULL) OR',
'        (DATE1 IS NOT NULL AND :P1001_DATE1 IS NULL))',
'   AND TRIM(:P1001_DATE1_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE1'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940551523069271886)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1851165468762152167)
,p_validation_name=>'P1001_DATE2_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P1001_DATE2_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE ((TO_CHAR(DATE2,''DD-MON-YYYY'') <> UPPER(:P1001_DATE2)) OR',
'        (DATE2 IS NULL AND :P1001_DATE2 IS NOT NULL) OR',
'        (DATE2 IS NOT NULL AND :P1001_DATE2 IS NULL))',
'   AND TRIM(:P1001_DATE2_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE2'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940552297667271894)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9940550694229271878)
,p_validation_name=>'P1001_ICDDT_CHANGE'
,p_validation_sequence=>70
,p_validation=>'P1001_ICDDT_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE NVL(ICDDT, TRUNC(SYSDATE)) <> NVL(:P1001_ICDDT, TRUNC(SYSDATE))',
'   AND TRIM(:P1001_ICDDT_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICDDT'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940550546443271877)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9940551019959271881)
,p_validation_name=>'P1001_AGE_CHANGE'
,p_validation_sequence=>80
,p_validation=>'P1001_AGE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE NVL(AGE,0) <> NVL(:P1001_AGE,0)',
'   AND TRIM(:P1001_AGE_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_AGE'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940550885397271880)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11251473135218323972)
,p_validation_name=>'P1001_RANDOMI_NUMBER_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P1001_RANDOMIZATION_NUMBER_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(11206076304417427389)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Row Returned',
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE NVL(RANDOMIZATION_NUMBER, ''R'') <> NVL(:P1001_RANDOMIZATION_NUMBER, ''R'')',
'   AND TRIM(:P1001_RANDOMIZATION_NUMBER_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11251473263780323973)
,p_validation_name=>'P1001_STATUS_CHANGE'
,p_validation_sequence=>100
,p_validation=>'P1001_STATUS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE NVL(STATUS,''1'') <> NVL(:P1001_STATUS,''1'')',
'   AND TRIM(:P1001_STATUS_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_STATUS'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(11206076409880427390)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11251473335410323974)
,p_validation_name=>'P1001_GENDER_CHANGE'
,p_validation_sequence=>110
,p_validation=>'P1001_GENDER_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(GENDER,''T'') <> NVL(:P1001_GENDER,''T'')',
'   AND TRIM(:P1001_GENDER_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_GENDER'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(11206076567546427391)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9940552941152271901)
,p_validation_name=>'P1001_IE_MET_CHANGE'
,p_validation_sequence=>120
,p_validation=>'P1001_IE_MET_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(IE_MET,''0'') <> nvl(:P1001_IE_MET,''0'')',
'   AND TRIM(:P1001_IE_MET_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_IE_MET'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940552883883271900)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1877887385340103755)
,p_validation_name=>'P1001_COMM2_CHANGE'
,p_validation_sequence=>130
,p_validation=>'P1001_COMM2_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(COMM2,''0'') <> nvl(:P1001_COMM2,''0'')',
'   AND TRIM(:P1001_COMM2_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM2'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9051185412602573954)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4757697442806350895)
,p_validation_name=>'P1001_RADIO5_CHANGE'
,p_validation_sequence=>140
,p_validation=>'P1001_RADIO5_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(RADIO5,''0'') <> nvl(:P1001_RADIO5,''0'')',
'   AND TRIM(:P1001_RADIO5_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO5'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9941573106723126772)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1851165846745152170)
,p_validation_name=>'P1001_RADIO3_CHANGE'
,p_validation_sequence=>150
,p_validation=>'P1001_RADIO3_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(RADIO3,''0'') <> nvl(:P1001_RADIO3,''0'')',
'   AND TRIM(:P1001_RADIO3_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO3'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940552470375271896)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4757697530391350896)
,p_validation_name=>'P1001_COMM1_CHANGE'
,p_validation_sequence=>160
,p_validation=>'P1001_COMM1_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(COMM1,''0'') <> nvl(:P1001_COMM1,''0'')',
'   AND TRIM(:P1001_COMM1_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM1'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940553165353271903)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3293993866401747897)
,p_validation_name=>'P1001_COMM4_CHANGE'
,p_validation_sequence=>170
,p_validation=>'P1001_COMM4_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE ((COMM4 <> :P1001_COMM4) OR',
'        (COMM4 IS NULL AND :P1001_COMM4 IS NOT NULL) OR',
'        (COMM4 IS NOT NULL AND :P1001_COMM4 IS NULL)',
'       )',
'   AND TRIM(:P1001_COMM4_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM4'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(3293688680666402494)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5234588600206700399)
,p_validation_name=>'Dynamic Error'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  TYPE NT_TYPE IS TABLE OF VARCHAR2(300);',
'  NT_ITEM NT_TYPE := NT_TYPE();',
'',
'  V_EXIST NUMBER := 0;',
'  V_VAL VARCHAR2(4000);',
'  V_MSG VARCHAR2(4000);',
'  V_COUNTRY_ID NUMBER;',
'  V_FLG_MSG NUMBER := 0;',
'BEGIN',
'  SELECT COUNTRY_ID',
'    INTO V_COUNTRY_ID',
'    FROM EDC_STUDY_SITES',
'   WHERE STUDY_SITE_ID = :APP_EDC_STUDY_SITE_ID;',
'',
'  SELECT ITEM_NAME',
'    BULK COLLECT INTO NT_ITEM',
'    FROM APEX_APPLICATION_PAGE_ITEMS',
'   WHERE ITEM_NAME NOT IN (''P1001_RANDOMIZATION_NUMBER''/*,''P1001_DATE1'',''P1001_COMM2'',''P1001_DATE2'',''P1001_NUM2'',''P1001_COMM3'',''P1001_COMM7'',''P1001_STATUS''*/)',
'     AND ITEM_LABEL_TEMPLATE = ''Required''',
'     AND NVL(CONDITION_TYPE_CODE,''Y'') != ''NEVER''',
'     AND ITEM_SOURCE_TYPE = ''Database Column''',
'     AND PAGE_ID = :APP_PAGE_ID',
'     AND APPLICATION_ID = :APP_ID',
'   ORDER BY DISPLAY_SEQUENCE;',
'',
'  IF NT_ITEM.COUNT > 0 THEN',
'    FOR I IN NT_ITEM.FIRST..NT_ITEM.LAST LOOP',
'',
'      V_EXIST := SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID, :APP_PAGE_ID, NT_ITEM(I));',
'',
'--      DOPL(NT_ITEM(I)||'', ''||V_EXIST);',
'',
'        IF NT_ITEM(I) = ''P1001_COMM2'' THEN',
'          IF :APP_EDC_PARAM_ID IN(1,2,3) AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_IE_MET = ''No'' THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF;',
'     IF NT_ITEM(I) = ''P1001_DATE1'' THEN',
'          IF :APP_EDC_PARAM_ID IN(133) AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_RADIO3 = ''Yes'' THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF;',
'         IF NT_ITEM(I) = ''P1001_DATE2'' THEN',
'          IF :APP_EDC_PARAM_ID IN(133) AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_RADIO3 = ''No'' THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF;',
'   IF NT_ITEM(I) = ''P1001_NUM2'' THEN',
'          IF :APP_EDC_PARAM_ID IN(133) AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_RADIO3 = ''No'' THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF;',
'       IF NT_ITEM(I) = ''P1001_COMM7'' THEN',
'          IF :APP_EDC_PARAM_ID IN(133) AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_NUM2 = 2 THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF;',
'       IF NT_ITEM(I) = ''P1001_COMM3'' THEN',
'          IF :APP_EDC_PARAM_ID IN(133) AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_NUM2 = 12 THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF;',
'      ',
'      IF V_EXIST = 1 THEN',
'        V_VAL := V(NT_ITEM(I));',
'',
'        IF V_VAL IS NULL THEN',
'          V_MSG := EDC_UTIL.GET_ITEM_LABEL(:APP_EDC_PARAM_ID, :APP_PAGE_ID, NT_ITEM(I))||'' must have some value.'';',
'',
'          APEX_ERROR.ADD_ERROR (',
'              P_MESSAGE          => V_MSG,',
'              P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION,',
'              P_PAGE_ITEM_NAME   => NT_ITEM(I));',
'        END IF;',
'      END IF;',
'      ',
'    END LOOP;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1851163867905152151)
,p_validation_name=>'Dynamic Error 2'
,p_validation_sequence=>190
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  TYPE NT_TYPE IS TABLE OF VARCHAR2(300);',
'  NT_ITEM NT_TYPE := NT_TYPE();',
'',
'  V_EXIST NUMBER := 0;',
'  V_VAL VARCHAR2(4000);',
'  V_MSG VARCHAR2(4000);',
'  V_COUNTRY_ID NUMBER;',
'BEGIN',
'  SELECT COUNTRY_ID',
'    INTO V_COUNTRY_ID',
'    FROM EDC_STUDY_SITES',
'   WHERE STUDY_SITE_ID = :APP_EDC_STUDY_SITE_ID;',
'',
'  SELECT ITEM_NAME',
'    BULK COLLECT INTO NT_ITEM',
'    FROM APEX_APPLICATION_PAGE_ITEMS',
'   WHERE ITEM_NAME IN (''P1001_DATE1'',''P1001_DATE2'',''P1001_NUM2'',''P1001_COMM3'',''P1001_COMM7'',''P1001_STATUS'') --,''P1001_COMM3''',
'     AND ITEM_LABEL_TEMPLATE = ''Required''',
'     AND NVL(CONDITION_TYPE_CODE,''Y'') != ''NEVER''',
'     AND ITEM_SOURCE_TYPE = ''Database Column''',
'     AND PAGE_ID = :APP_PAGE_ID',
'     AND APPLICATION_ID = :APP_ID',
'   ORDER BY DISPLAY_SEQUENCE;',
'',
'  IF NT_ITEM.COUNT > 0 THEN',
'    FOR I IN NT_ITEM.FIRST..NT_ITEM.LAST LOOP',
'',
'      V_EXIST := SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID, :APP_PAGE_ID, NT_ITEM(I));',
'',
'      IF NT_ITEM(I) = ''P1001_DATE1'' THEN',
'          IF :APP_EDC_PARAM_ID = 9 AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_RADIO3 =''Yes'' THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF;',
'      ',
'      IF NT_ITEM(I) IN(''P1001_DATE2'',''P1001_NUM2'') THEN',
'          IF :APP_EDC_PARAM_ID = 9 AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_RADIO3 =''No'' THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF;     ',
'      ',
'      IF NT_ITEM(I) IN(''P1001_COMM3'') THEN',
'          IF :APP_EDC_PARAM_ID = 9 AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_RADIO3 =''No'' AND :P1001_NUM2 = 12 THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF; ',
'',
'      IF NT_ITEM(I) IN(''P1001_COMM7'') THEN',
'          IF :APP_EDC_PARAM_ID = 9 AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_RADIO3 =''No'' AND :P1001_NUM2 = 2 THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF; ',
'      ',
'      IF NT_ITEM(I) IN(''P1001_STATUS'') THEN',
'          IF :APP_EDC_PARAM_ID = 9 AND :REQUEST IN (''SAVE'',''CREATE'') AND :P1001_RADIO3 IS NOT NULL THEN',
'              V_EXIST := V_EXIST;',
'          ELSE',
'              V_EXIST := 0;',
'          END IF;',
'      ELSE',
'        V_EXIST := V_EXIST;',
'      END IF; ',
'',
'--      DOPL(NT_ITEM(I)||'', ''||V_EXIST);',
'',
'      IF V_EXIST = 1 THEN',
'        V_VAL := V(NT_ITEM(I));',
'',
'        IF V_VAL IS NULL THEN',
'          V_MSG := EDC_UTIL.GET_ITEM_LABEL(:APP_EDC_PARAM_ID, :APP_PAGE_ID, NT_ITEM(I))||'' must have some value.'';',
'',
'          APEX_ERROR.ADD_ERROR (',
'              P_MESSAGE          => V_MSG,',
'              P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION,',
'              P_PAGE_ITEM_NAME   => NT_ITEM(I));',
'        END IF;',
'      END IF;',
'    END LOOP;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11272679279350562726)
,p_validation_name=>'IP Availability'
,p_validation_sequence=>200
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN CRO_IWRS_PKG.IP_UNAVAILABLE(:APP_EDC_STUDY_ID, :APP_EDC_STUDY_SITE_ID, :P37_PATIENT_PROFILE_ID, :APP_EDC_PATIENT_VISIT_ID);',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_RND_FLG NUMBER;',
'  V_DISPS_FLG NUMBER;',
'  V_COUNT NUMBER;',
'  V_STATUS NUMBER;',
'BEGIN',
'  SELECT STATUS',
'    INTO V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_STATUS IN (1, 3, 7) THEN',
'    SELECT RND_FLG, DISPNS_FLG',
'      INTO V_RND_FLG, V_DISPS_FLG',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE PARAM_ID = :APP_EDC_PARAM_ID;',
'',
'    IF NVL(V_RND_FLG, V_DISPS_FLG) = 1 THEN',
'      SELECT COUNT(DIP_ID)',
'        INTO V_COUNT',
'        FROM IWRS_CRF_DM_IP',
'       WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'      IF V_COUNT = 0 AND :REQUEST IN (''APPROVE_FOR_RANDOMIZATION'', ''APPROVE_DISPENSING'') THEN',
'        RETURN TRUE;',
'      ELSE',
'        RETURN FALSE;',
'      END IF;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9051146008086220453)
,p_validation_name=>'Dispensed kit must have some value'
,p_validation_sequence=>210
,p_validation=>'P1001_NUM1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Dispensed kit must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(11258807451781633302)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'begin',
'select count(*) ',
'into v_cnt',
'from iwrs_crf_dm_ip',
'where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID;',
'',
'IF V_CNT > 0 AND SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM1'') >= 1 THEN',
' RETURN TRUE;',
' ELSE',
' RETURN FALSE;',
' END IF;',
' END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9051146094324220454)
,p_validation_name=>'verify Dispensed kit'
,p_validation_sequence=>220
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_assigned_kit varchar2(20);',
'v_cnt number;',
'V_COMM1 VARCHAR2(20);',
'begin',
'',
'select count(*) ',
' into v_cnt',
' from iwrs_crf_dm_ip',
' where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID;',
'',
'if v_Cnt > 0 AND SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM1'') >= 1 then',
'',
'select b.bottle_no ',
' into v_assigned_kit',
' from iwrs_crf_dm_ip a, edc_ip_detail b,IWRS_CRF_DM C',
' where a.ip_id = b.ip_id',
' AND A.PATIENT_VISIT_ID = C.PATIENT_VISIT_ID',
' and a.patient_visit_id = :APP_EDC_PATIENT_VISIT_ID;',
' ',
'',
' ',
' if trim(v_assigned_kit) <> trim(:P1001_NUM1) THEN',
'    RETURN ''Dispensed kit and assigned kit are not same. Please verify!'';',
' END IF;',
' END IF;',
'',
' exception when no_data_found then',
' NULL;',
' END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(11258807451781633302)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>'SAVE,DISPENSE_IP'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8826876983557288752)
,p_validation_name=>'REASON_FOR_SF'
,p_validation_sequence=>230
,p_validation=>'P1001_COMM2'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'<b>If No, Specify</b> reason must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(9051185307377573953)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM2'') >= 1',
'AND :APP_EDC_PARAM_ID IN(1,2,3) and :P1001_IE_MET = ''No'''))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5239038166881839898)
,p_validation_name=>'P1001_RADIO4'
,p_validation_sequence=>240
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'BEGIN',
'  SELECT COUNT(PATIENT_PROFILE_ID)',
'    INTO V_COUNT',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE RANDOMNO IS NOT NULL;',
'',
'  IF V_COUNT < 136 THEN',
'    IF :P1001_RADIO4 = ''No'' THEN',
'      RETURN ''Viral Shedding cap is not reached yet.'';',
'    END IF;',
'  ELSE',
'    IF :P1001_RADIO4 = ''Yes'' THEN',
'      RETURN ''Viral Shedding cap is reached.'';',
'    END IF;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(9940553255139271904)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5239299948110733498)
,p_validation_name=>'P1001_COMM1'
,p_validation_sequence=>250
,p_validation=>'P1001_COMM1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(11258807874351633302)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>':P1001_PARAM_ID = 4'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5238078314649716817)
,p_validation_name=>'ICD date can not greater then scr date'
,p_validation_sequence=>270
,p_validation=>'to_date(:P1001_ICDDT,''DD-MON-YYYY'') <= TO_DATE(:P1001_VISIT_DATE,''DD-MON-YYYY'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Informed Consent Date should be prior to Screening Visit Date. Please Verify.'
,p_always_execute=>'Y'
,p_validation_condition=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICDDT'') >= 1'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(9940550510996271876)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'10-Aug_2021',
'================',
'TO_DATE(:P1001_ICDDT,''DD-MON-YYYY'') <= TO_DATE(:P1001_VISIT_DATE,''DD-MON-YYYY'')--pl/sql expression'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5238078379955716818)
,p_validation_name=>'RANDOMIZATION visit date can not prior of screening visit date'
,p_validation_sequence=>280
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_VISIT_DATE DATE;',
'BEGIN',
'    SELECT TO_DATE(ACTUAL_DATE,''DD-MON-YYYY'') INTO V_VISIT_DATE',
'    FROM EDC_PATIENT_VISIT',
'    WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'    AND VISIT_NUMBER =1;',
'    ',
'    IF TO_DATE(:P1001_VISIT_DATE,''DD-MON-YYYY'') >= V_VISIT_DATE THEN',
'       RETURN TRUE;',
'    ELSE',
'       RETURN FALSE;',
'    END IF;   ',
'    ',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Visit Date should not be prior to Screening Visit Date. Please Verify.'
,p_validation_condition=>':APP_EDC_PARAM_ID = 2 AND :P1001_VISIT_DATE IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(11258805835904633300)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3566216072877715380)
,p_validation_name=>'P1001_RADIO7_CHANGE'
,p_validation_sequence=>290
,p_validation=>'P1001_RADIO7_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(RADIO7,''0'') <> nvl(:P1001_RADIO7,''0'')',
'   AND TRIM(:P1001_RADIO7_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO7'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(3566215906275715379)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3294538521207941292)
,p_validation_name=>'P1001_COMM5_CHANGE'
,p_validation_sequence=>300
,p_validation=>'P1001_COMM5_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(COMM5,''0'') <> nvl(:P1001_COMM5,''0'')',
'   AND TRIM(:P1001_COMM5_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM5'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(3293689408478402501)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3294538691901941293)
,p_validation_name=>'P1001_NUM2_CHANGE'
,p_validation_sequence=>310
,p_validation=>'P1001_NUM2_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(NUM2,''0'') <> nvl(:P1001_NUM2,''0'')',
'   AND TRIM(:P1001_NUM2_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM2'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(3293689098187402498)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3294852780908478691)
,p_validation_name=>'WEIGHT_VALIDATION'
,p_validation_sequence=>320
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_NUMBER(:P1001_NUM2) >= 40 AND TO_NUMBER(:P1001_NUM2) <= 100 THEN',
'    RETURN TRUE;',
'ELSE',
'    RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Weight must be between 40kg to 100kg'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(3293688960443402497)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>'SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM2'') >= 1'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3109957598431465286)
,p_validation_name=>'Check IF kit Available'
,p_validation_sequence=>330
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CURR_IP_ID NUMBER;',
'  V_CURR_IP_ARM NUMBER;',
'  V_CURR_IP_ID_NAME VARCHAR2(20);',
'  V_MAX_IP_ID NUMBER;',
'  V_CNT NUMBER;',
'BEGIN',
'  SELECT IP_ID',
'    INTO V_CURR_IP_ID',
'    FROM IWRS_CRF_DM_IP',
'   WHERE DIP_ID = :P1001_DIP_ID',
'     AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  -- Get Current ARM and Bottle Name',
'  SELECT STUDY_ARM_ID',
'       , BOTTLE_NO',
'    INTO V_CURR_IP_ARM',
'       , V_CURR_IP_ID_NAME',
'    FROM EDC_IP_DETAIL',
'   WHERE IP_ID = V_CURR_IP_ID;',
'',
'  --Get MAX IP ID from the IPs assigned to Subject in this Visit, so that previously released IP can not be reassigned to same subject',
'  SELECT MAX(IP_ID)',
'    INTO V_MAX_IP_ID',
'    FROM IWRS_CRF_DM_IP',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  -- Find next available IP of same ARM',
'  SELECT COUNT(*)',
'    INTO V_CNT           ',
'    FROM (SELECT IP_ID',
'               , BOTTLE_NO',
'            FROM EDC_IP_DETAIL',
'           WHERE STUDY_ARM_ID = V_CURR_IP_ARM',
'             AND STUDY_ID = :APP_EDC_STUDY_ID',
'             AND STUDY_SITE_ID = :APP_EDC_STUDY_SITE_ID',
'             AND IP_STATUS = 3',
'             AND PATIENT_PROFILE_ID IS NULL',
'             AND PATIENT_VISIT_ID IS NULL',
'             AND IP_ID > V_MAX_IP_ID       -- New IP must be after the MAX ID assigned to Subject in current Visit',
'           ORDER BY 1',
'         )',
'   WHERE ROWNUM = 1;',
'',
'  IF V_CNT = 0 THEN',
'    RETURN ''No valid Kit available at site for replacement. Kindly ask CRA to raise shipment request.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'APPROVE_REF_IP'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3109957674101465287)
,p_validation_name=>'P1001_REJ_RSN NN'
,p_validation_sequence=>340
,p_validation=>'P1001_REJ_RSN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason must have some value.'
,p_validation_condition=>'REJECT_REF_IP'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3109956971937465280)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2504361487805603919)
,p_validation_name=>'P1001_COMM7_CHANGE_NN'
,p_validation_sequence=>350
,p_validation=>'P1001_COMM7_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be enter'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(COMM7,''0'') <> nvl(:P1001_COMM7,''0'')',
'   AND TRIM(:P1001_COMM7_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM7'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(2504361405139603918)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1813251304574508654)
,p_validation_name=>'P1001_COMM3_CHANGE_NN'
,p_validation_sequence=>360
,p_validation=>'P1001_COMM3_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be enter'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(COMM3,''0'') <> nvl(:P1001_COMM3,''0'')',
'   AND TRIM(:P1001_COMM3_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM3'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(3293688473061402492)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1886119224232453838)
,p_validation_name=>'P1001_NUM1_CHANGE'
,p_validation_sequence=>370
,p_validation=>'P1001_NUM1_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must be entered'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(NUM1,''0'') <> nvl(:P1001_NUM1,''0'')',
'   AND TRIM(:P1001_NUM1_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM1'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(11206076582472427392)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1859844371342037244)
,p_validation_name=>'VALIDATION'
,p_validation_sequence=>380
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_NUMBER(:P1001_NUM1) <= 16 AND :P1001_IE_MET  = ''Yes'' THEN',
'        RETURN ''<b>As the FIGO Stage is selected as IIB or less</b>, subject does not comply with Inclusion/ Exclusion Criteria, Please <b>select "No" option</b> in Does the subject comply with all the inclusion and exclusion criteria?'';',
'    /*ELSIF TO_NUMBER(:P1001_NUM1) > 16 AND :P1001_IE_MET  = ''No'' THEN',
'        RETURN ''After values FIGO Stage IIB need to select "Yes" option in Does the subject comply with all the inclusion and exclusion criteria?'';*/',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>':P1001_NUM1 IS NOT NULL AND :P1001_IE_MET IS NOT NULL AND :APP_EDC_PARAM_ID IN(1)'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(9940552755421271899)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1794134889489684500)
,p_validation_name=>'P1001_RADIO1_CHANGE NN'
,p_validation_sequence=>390
,p_validation=>'P1001_RADIO1_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason For Change Must Have Some Value'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(RADIO1,''0'') <> nvl(:P1001_RADIO1,''0'')',
'   AND TRIM(:P1001_RADIO1_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO1'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940551215617271883)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1794135011866684501)
,p_validation_name=>'P1001_RADIO2_CHANGE NN'
,p_validation_sequence=>400
,p_validation=>'P1001_RADIO2_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must have some value'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(RADIO2,''0'') <> nvl(:P1001_RADIO2,''0'')',
'   AND TRIM(:P1001_RADIO2_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO2'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9940552032424271891)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1794135108916684502)
,p_validation_name=>'P1001_RADIO4_CHANGE NN'
,p_validation_sequence=>410
,p_validation=>'P1001_RADIO4_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must have some value'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(9940553413182271905)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(RADIO4,''0'') <> nvl(:P1001_RADIO4,''0'')',
'   AND TRIM(:P1001_RADIO4_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO4'') >= 1'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1794135210635684503)
,p_validation_name=>'P1001_RADIO6_CHANGE NN'
,p_validation_sequence=>420
,p_validation=>'P1001_RADIO6_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must have some value'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(RADIO6,''0'') <> nvl(:P1001_RADIO6,''0'')',
'   AND TRIM(:P1001_RADIO6_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO6'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(9941573285929126774)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1794135339375684504)
,p_validation_name=>'P1001_COMM6_CHANGE NN'
,p_validation_sequence=>430
,p_validation=>'P1001_COMM6_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must have some value'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(COMM6,''0'') <> nvl(:P1001_COMM6,''0'')',
'   AND TRIM(:P1001_COMM6_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM6'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(3293689943740402507)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1794135372502684505)
,p_validation_name=>'P1001_NUM3_CHANGE NN'
,p_validation_sequence=>440
,p_validation=>'P1001_NUM3_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for change must have some value'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE nvl(NUM3,''0'') <> nvl(:P1001_NUM3,''0'')',
'   AND TRIM(:P1001_NUM3_CHANGE) IS NULL',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM3'') >= 1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(3293689743300402505)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11206075790602427384)
,p_name=>'Calculate Age - On DOB Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_DOB,P1001_ICDDT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P1001_DOB'') != '''' && $v(''P1001_ICDDT'') != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11206075972852427385)
,p_event_id=>wwv_flow_imp.id(11206075790602427384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_AGE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'floor(MONTHS_BETWEEN(:P1001_ICDDT, :P1001_DOB) / 12)'
,p_attribute_07=>'P1001_ICDDT,P1001_DOB'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11259942728126900953)
,p_name=>'Show/Hide ''Reason for change'' fields'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P1001_DM_ID IS NOT NULL'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11259943134260900954)
,p_event_id=>wwv_flow_imp.id(11259942728126900953)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var ajaxRequest = new htmldb_Get( ',
'                                  null,  ',
'                                  $x(''pFlowId'').value,',
'                                  ''APPLICATION_PROCESS=SHOW_REASON_FOR_CHANGE'',',
'                                  $x(''pFlowStepId'').value',
'                                  );',
'',
'  var ajaxResult = ajaxRequest.get()',
'',
'  /* Load dynamic JQuery generated by PL/SQL Process*/',
'  //console.log(ajaxResult);',
'  eval(ajaxResult);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11251474001299323981)
,p_name=>'Show P1001_VISIT_DATE_CHANGE'
,p_event_sequence=>30
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (VISIT_DATE <> :P1001_VISIT_DATE) OR ',
'         (VISIT_DATE IS NULL AND :P1001_VISIT_DATE IS NOT NULL) OR',
'         (VISIT_DATE IS NOT NULL AND :P1001_VISIT_DATE IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_VISIT_DATE'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11251474079245323982)
,p_event_id=>wwv_flow_imp.id(11251474001299323981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_VISIT_DATE_CHANGE'
,p_attribute_01=>'$(''#P1001_VISIT_DATE_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11206077277776427398)
,p_name=>'Show P1001_RANDOMI_NUMBER_CHANGE'
,p_event_sequence=>130
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE NVL(RANDOMIZATION_NUMBER, ''A.A'') <> :P1001_RANDOMIZATION_NUMBER',
'   AND DM_ID = :P1001_DM_ID'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11206077338258427399)
,p_event_id=>wwv_flow_imp.id(11206077277776427398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_RANDOMIZATION_NUMBER_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11260781408971328850)
,p_name=>'Show P1001_ICDDT_CHANGE'
,p_event_sequence=>140
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (ICDDT <> :P1001_ICDDT) OR ',
'         (ICDDT IS NULL AND :P1001_ICDDT IS NOT NULL) OR',
'         (ICDDT IS NOT NULL AND :P1001_ICDDT IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICDDT'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11260781509664328851)
,p_event_id=>wwv_flow_imp.id(11260781408971328850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_ICDDT_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11260781671406328852)
,p_name=>'Show P1001_GENDER_CHANGE'
,p_event_sequence=>150
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (GENDER <> :P1001_GENDER) OR ',
'         (GENDER IS NULL AND :P1001_GENDER IS NOT NULL) OR',
'         (GENDER IS NOT NULL AND :P1001_GENDER IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_GENDER'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11260781724445328853)
,p_event_id=>wwv_flow_imp.id(11260781671406328852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_GENDER_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9940954349048508778)
,p_name=>'Show P1001_DOB_CHANGE'
,p_event_sequence=>160
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (DOB <> :P1001_DOB) OR ',
'         (DOB IS NULL AND :P1001_DOB IS NOT NULL) OR',
'         (DOB IS NOT NULL AND :P1001_DOB IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DOB'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9940954502470508779)
,p_event_id=>wwv_flow_imp.id(9940954349048508778)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_DOB_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9940954557892508780)
,p_name=>'Show P1001_AGE_CHANGE'
,p_event_sequence=>170
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (AGE <> :P1001_AGE) OR ',
'         (AGE IS NULL AND :P1001_AGE IS NOT NULL) OR',
'         (AGE IS NOT NULL AND :P1001_AGE IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_AGE'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9940954712703508781)
,p_event_id=>wwv_flow_imp.id(9940954557892508780)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_AGE_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9940954741957508782)
,p_name=>'Show P1001_RADIO1_CHANGE'
,p_event_sequence=>180
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (RADIO1 <> :P1001_RADIO1) OR ',
'         (RADIO1 IS NULL AND :P1001_RADIO1 IS NOT NULL) OR',
'         (RADIO1 IS NOT NULL AND :P1001_RADIO1 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO1'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9940954938746508783)
,p_event_id=>wwv_flow_imp.id(9940954741957508782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_RADIO1_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9940954977982508784)
,p_name=>'Show P1001_DATE1_CHANGE'
,p_event_sequence=>190
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ((TO_CHAR(DATE1,''DD-MON-YYYY'') <> UPPER(:P1001_DATE1)) OR',
'        (DATE1 IS NULL AND :P1001_DATE1 IS NOT NULL) OR',
'        (DATE1 IS NOT NULL AND :P1001_DATE1 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE1'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9940955114066508785)
,p_event_id=>wwv_flow_imp.id(9940954977982508784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_DATE1_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1851165339051152165)
,p_name=>'Show P1001_DATE2_CHANGE'
,p_event_sequence=>200
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ((TO_CHAR(DATE2,''DD-MON-YYYY'') <> UPPER(:P1001_DATE2)) OR',
'        (DATE2 IS NULL AND :P1001_DATE2 IS NOT NULL) OR',
'        (DATE2 IS NOT NULL AND :P1001_DATE2 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_DATE2'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1851165428032152166)
,p_event_id=>wwv_flow_imp.id(1851165339051152165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_DATE2_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9940955157939508786)
,p_name=>'Show P1001_RADIO2_CHANGE'
,p_event_sequence=>210
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (RADIO2 <> :P1001_RADIO2) OR ',
'         (RADIO2 IS NULL AND :P1001_RADIO2 IS NOT NULL) OR',
'         (RADIO2 IS NOT NULL AND :P1001_RADIO2 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO2'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9940955264705508787)
,p_event_id=>wwv_flow_imp.id(9940955157939508786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_RADIO2_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9941068831238792671)
,p_name=>'Show P1001_RADIO3_CHANGE'
,p_event_sequence=>220
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (RADIO3 <> :P1001_RADIO3) OR ',
'         (RADIO3 IS NULL AND :P1001_RADIO3 IS NOT NULL) OR',
'         (RADIO3 IS NOT NULL AND :P1001_RADIO3 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO3'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9941068859535792672)
,p_event_id=>wwv_flow_imp.id(9941068831238792671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_RADIO3_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9941573522557126776)
,p_name=>'Show P1001_RADIO5_CHANGE'
,p_event_sequence=>230
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (RADIO5 <> :P1001_RADIO5) OR ',
'         (RADIO5 IS NULL AND :P1001_RADIO5 IS NOT NULL) OR',
'         (RADIO5 IS NOT NULL AND :P1001_RADIO5 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO5'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9941573565270126777)
,p_event_id=>wwv_flow_imp.id(9941573522557126776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_RADIO5_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9941573782585126779)
,p_name=>'Show P1001_RADIO6_CHANGE'
,p_event_sequence=>240
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (RADIO6 <> :P1001_RADIO6) OR ',
'         (RADIO6 IS NULL AND :P1001_RADIO6 IS NOT NULL) OR',
'         (RADIO6 IS NOT NULL AND :P1001_RADIO6 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO6'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9941573858514126780)
,p_event_id=>wwv_flow_imp.id(9941573782585126779)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_RADIO6_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9940955589330508790)
,p_name=>'Show P1001_NUM1_CHANGE'
,p_event_sequence=>250
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (NUM1 <> :P1001_NUM1) OR ',
'         (NUM1 IS NULL AND :P1001_NUM1 IS NOT NULL) OR',
'         (NUM1 IS NOT NULL AND :P1001_NUM1 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM1'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9940955675742508791)
,p_event_id=>wwv_flow_imp.id(9940955589330508790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_NUM1_CHANGE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P1001_NUM1_CHANGE'').show();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3294579354443251792)
,p_name=>'Show P1001_NUM2_CHANGE'
,p_event_sequence=>260
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (NUM2 <> :P1001_NUM2) OR ',
'         (NUM2 IS NULL AND :P1001_NUM2 IS NOT NULL) OR',
'         (NUM2 IS NOT NULL AND :P1001_NUM2 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_NUM2'') >= 1',
'   '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3294579437242251793)
,p_event_id=>wwv_flow_imp.id(3294579354443251792)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_NUM2_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1851165630822152168)
,p_name=>'Show P1001_STATUS_CHANGE'
,p_event_sequence=>270
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (STATUS <> :P1001_STATUS) OR ',
'         (STATUS IS NULL AND :P1001_STATUS IS NOT NULL) OR',
'         (STATUS IS NOT NULL AND :P1001_STATUS IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_STATUS'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1851165725835152169)
,p_event_id=>wwv_flow_imp.id(1851165630822152168)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_STATUS_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9940955822841508792)
,p_name=>'Show P1001_IE_MET_CHANGE'
,p_event_sequence=>280
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (IE_MET <> :P1001_IE_MET) OR ',
'         (IE_MET IS NULL AND :P1001_IE_MET IS NOT NULL) OR',
'         (IE_MET IS NOT NULL AND :P1001_IE_MET IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_IE_MET'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9940955851270508793)
,p_event_id=>wwv_flow_imp.id(9940955822841508792)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_IE_MET_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9940956005944508794)
,p_name=>'Show P1001_COMM1_CHANGE'
,p_event_sequence=>290
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (COMM1 <> :P1001_COMM1) OR ',
'         (COMM1 IS NULL AND :P1001_COMM1 IS NOT NULL) OR',
'         (COMM1 IS NOT NULL AND :P1001_COMM1 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM1'') >= 1',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9940956075131508795)
,p_event_id=>wwv_flow_imp.id(9940956005944508794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_COMM1_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9051185521403573955)
,p_name=>'Show P1001_COMM2_CHANGE'
,p_event_sequence=>300
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (COMM2 <> :P1001_COMM2) OR ',
'         (COMM2 IS NULL AND :P1001_COMM2 IS NOT NULL) OR',
'         (COMM2 IS NOT NULL AND :P1001_COMM2 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM2'') >= 1',
'  '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9051185606104573956)
,p_event_id=>wwv_flow_imp.id(9051185521403573955)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_COMM2_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2504361606528603920)
,p_name=>'Show P1001_COMM7_CHANGE'
,p_event_sequence=>310
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (COMM7 <> :P1001_COMM7) OR ',
'         (COMM7 IS NULL AND :P1001_COMM7 IS NOT NULL) OR',
'         (COMM7 IS NOT NULL AND :P1001_COMM7 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM7'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2504361661162603921)
,p_event_id=>wwv_flow_imp.id(2504361606528603920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_COMM7_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1813251463393508655)
,p_name=>'Show P1001_COMM3_CHANGE'
,p_event_sequence=>320
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (COMM3 <> :P1001_COMM3) OR ',
'         (COMM3 IS NULL AND :P1001_COMM3 IS NOT NULL) OR',
'         (COMM3 IS NOT NULL AND :P1001_COMM3 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM3'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1813251528056508656)
,p_event_id=>wwv_flow_imp.id(1813251463393508655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_COMM3_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3293993432306747893)
,p_name=>'Show P1001_COMM4_CHANGE'
,p_event_sequence=>330
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (COMM4 <> :P1001_COMM4) OR ',
'         (COMM4 IS NULL AND :P1001_COMM4 IS NOT NULL) OR',
'         (COMM4 IS NOT NULL AND :P1001_COMM4 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_COMM4'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3293993596162747894)
,p_event_id=>wwv_flow_imp.id(3293993432306747893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_COMM4_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9551146770710014893)
,p_name=>'Show P1001_ICF_STOP_CHANGE'
,p_event_sequence=>340
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (TO_CHAR(ICF_STOP,''HH24:MI'') <> :P1001_ICF_STOP) OR ',
'         (ICF_STOP IS NULL AND :P1001_ICF_STOP IS NOT NULL) OR',
'         (ICF_STOP IS NOT NULL AND :P1001_ICF_STOP IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ICF_STOP'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9551146911901014894)
,p_event_id=>wwv_flow_imp.id(9551146770710014893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_ICF_STOP_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9551146961194014895)
,p_name=>'Show P1001_ASSENT_STOP_CHANGE'
,p_event_sequence=>350
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (TO_CHAR(ASSENT_STOP,''HH24:MI'') <> :P1001_ASSENT_STOP) OR ',
'         (ASSENT_STOP IS NULL AND :P1001_ASSENT_STOP IS NOT NULL) OR',
'         (ASSENT_STOP IS NOT NULL AND :P1001_ASSENT_STOP IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.EDC_UTIL.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_ASSENT_STOP'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9551147105359014896)
,p_event_id=>wwv_flow_imp.id(9551146961194014895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_ASSENT_STOP_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11270503594213640863)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11270503524814640862)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11270503713208640864)
,p_event_id=>wwv_flow_imp.id(11270503594213640863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_PK_ID,P41_TABLE_NAME:&APP_PAGE_ID.,&P1001_DM_ID.,IWRS_CRF_DM'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11270506357661640890)
,p_name=>'Open Audit Trail for IP Popup (Page 41)'
,p_event_sequence=>370
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.ip_audit_trail'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#Assigned_IPs'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11270506404648640891)
,p_event_id=>wwv_flow_imp.id(11270506357661640890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'&nbsp;'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'50'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11276015895548461406)
,p_name=>'Print Jasper Report for Assigned IP'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11269387396087891251)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11276016324596461410)
,p_event_id=>wwv_flow_imp.id(11276015895548461406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IP_ASSIGNED&_repFormat=pdf&_dataSource=default&_outFilename=Assigned_IP.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_PATIENT_VISIT_ID=''+$v("P1001_PATIENT_VISIT_ID")+''&P_APP_USER='
||'&APP_USER.''+'''',''_blank''); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797323480291228645)
,p_event_id=>wwv_flow_imp.id(11276015895548461406)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SaveJasper_IPAssign(:APP_EDC_PATIENT_VISIT_ID,1);',
'  COMMIT;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797323595417228646)
,p_event_id=>wwv_flow_imp.id(11276015895548461406)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10641774044822306003)
,p_name=>'Open Popup - Add Query (Page 124)'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10641773989362306002)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10641774146639306004)
,p_event_id=>wwv_flow_imp.id(10641774044822306003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11258801669182633243)
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:124:&APP_SESSION.:::124:P124_PATIENT_VISIT_ID,P124_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'80'
,p_da_action_comment=>'div#success-message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10641989641355585054)
,p_name=>'Refresh page on Modal Auto Close'
,p_event_sequence=>400
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10641990056534585055)
,p_event_id=>wwv_flow_imp.id(10641989641355585054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10641777649784306039)
,p_name=>'Open Popup - Show Query (Page 6)'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10641777558796306038)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10641777781441306040)
,p_event_id=>wwv_flow_imp.id(10641777649784306039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_VISIT_ID,P6_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10577888049660516116)
,p_name=>'Remark Show/Hide'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_IE_MET'
,p_condition_element=>'P1001_IE_MET'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'No'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_PARAM_ID IN (1,2,3)'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10577888088703516117)
,p_event_id=>wwv_flow_imp.id(10577888049660516116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10577888197929516118)
,p_event_id=>wwv_flow_imp.id(10577888049660516116)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2505555901072711707)
,p_event_id=>wwv_flow_imp.id(10577888049660516116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The Subject will be screen failed as &quot;Does the subject comply with all the inclusion and exclusion criteria?&quot; Criteria does not match.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10577888328327516119)
,p_event_id=>wwv_flow_imp.id(10577888049660516116)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9782110755176022711)
,p_name=>'ENABLE_DISABLE_LESION_COUNT_DATE'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_RADIO2'
,p_condition_element=>'P1001_RADIO2'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Yes'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9782110863877022712)
,p_event_id=>wwv_flow_imp.id(9782110755176022711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9782111118693022714)
,p_event_id=>wwv_flow_imp.id(9782110755176022711)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9782110991099022713)
,p_event_id=>wwv_flow_imp.id(9782110755176022711)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7753362628083348458)
,p_name=>'screenfail alert'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_AGE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P1001_AGE") < 18'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7753362713813348459)
,p_event_id=>wwv_flow_imp.id(7753362628083348458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'This subject will be screen failed as age of this subject is not &gt;= 18.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3293993958333747898)
,p_name=>'Tumor assesment alert'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_COMM5'
,p_condition_element=>'P1001_COMM5'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'Progressive Disease (PD)'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'    OR :APP_EDC_PARAM_ID = 22'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3293994035135747899)
,p_event_id=>wwv_flow_imp.id(3293993958333747898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'''You have selected tumor assessment score as ''Progressive Disease. Please note that upon saving this information you will be navigated to early termination page to withdraw the subject from the study and no IP will be dispensed further.'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5238077273607716807)
,p_name=>'open popup page ip refresh (102)'
,p_event_sequence=>470
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.edit-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5238077331707716808)
,p_event_id=>wwv_flow_imp.id(5238077273607716807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_05=>'href'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'75'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5239038548799839902)
,p_name=>'Premenopausal enable/disable'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_GENDER'
,p_condition_element=>'P1001_GENDER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Female'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5239038691808839903)
,p_event_id=>wwv_flow_imp.id(5239038548799839902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_RADIO3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5239038722699839904)
,p_event_id=>wwv_flow_imp.id(5239038548799839902)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_RADIO3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5239038893191839905)
,p_event_id=>wwv_flow_imp.id(5239038548799839902)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_RADIO3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5239300086605733499)
,p_name=>'P1001_COMM2 Enable/Disable'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_STATUS'
,p_condition_element=>'P1001_STATUS'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'4,5,6'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3104775664971252314)
,p_event_id=>wwv_flow_imp.id(5239300086605733499)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3104775605054252313)
,p_event_id=>wwv_flow_imp.id(5239300086605733499)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5239300185574733500)
,p_event_id=>wwv_flow_imp.id(5239300086605733499)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5239300271627733501)
,p_event_id=>wwv_flow_imp.id(5239300086605733499)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3793951716725099944)
,p_name=>'NEXT_VISIT'
,p_event_sequence=>500
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3793951600486099942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3793951864153099945)
,p_event_id=>wwv_flow_imp.id(3793951716725099944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'r = confirm("Are you sure you want to create next visit?");',
'if(r){',
'    doSubmit(''NEXT_VISIT'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3566216326330715383)
,p_name=>'Show P1001_RADIO7_CHANGE'
,p_event_sequence=>510
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'.uMessageRegion'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM ',
' WHERE ( (RADIO7 <> :P1001_RADIO7) OR ',
'         (RADIO7 IS NULL AND :P1001_RADIO7 IS NOT NULL) OR',
'         (RADIO7 IS NOT NULL AND :P1001_RADIO7 IS NULL))',
'   AND DM_ID = :P1001_DM_ID',
'   AND SUN_21010_DEV.edc_util.DISPLAY_ITEM_IN_VISIT(:APP_EDC_PARAM_ID,:APP_PAGE_ID,''P1001_RADIO7'') >= 1'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3566216428015715384)
,p_event_id=>wwv_flow_imp.id(3566216326330715383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P1001_RADIO7_CHANGE'').show();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3294697131453213293)
,p_name=>'Window Period Alert'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_VISIT_DATE'
,p_condition_element=>'P1001_VISIT_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3294697252756213294)
,p_event_id=>wwv_flow_imp.id(3294697131453213293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $(''#P1001_PATIENT_PROFILE_ID'').val();',
'var b = $(''#P1001_PARAM_ID'').val();',
'var c = $(''#P1001_VISIT_DATE'').val();',
'window_period_alert(a,b,c);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3294962803404621893)
,p_name=>'Set Visit Date,  Status, Tumor Assessment'
,p_event_sequence=>530
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>':APP_EDC_PARAM_ID = 22 AND :P1001_DM_ID IS NULL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3294962823798621894)
,p_event_id=>wwv_flow_imp.id(3294962803404621893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT TO_CHAR(SCHEDULE_DATE,''DD-MON-YYYY''), 4 STATUS, ''Progressive Disease (PD)'' TA, ''Early Termination'' ET',
'    INTO :P1001_VISIT_DATE, :P1001_STATUS, :P1001_COMM5, :P1001_COMM2',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PARAM_ID = :APP_EDC_PARAM_ID',
'     AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'END;'))
,p_attribute_02=>'APP_EDC_PARAM_ID,P37_PATIENT_PROFILE_ID'
,p_attribute_03=>'P1001_VISIT_DATE,P1001_STATUS,P1001_COMM5,P1001_COMM2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3104774368867252301)
,p_name=>'Jasper'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11269387396087891251)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3104774499126252302)
,p_event_id=>wwv_flow_imp.id(3104774368867252301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''../JasperReportsIntegration/report?_repName=SUN_21010_DEV/IP_ASSIGNED/IP_ASSIGNED&_repFormat=pdf&_dataSource=default&_outFilename=Assigned_IP.pdf&_repLocale=en_US&_repEncoding=UTF-8&P_EDC_PATIENT_VISIT_ID=''+$v("P1001_PATIENT_VISIT_ID")+'''
||'&P_APP_USER=&APP_USER.'',''_blank''); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3110534383102994903)
,p_name=>'screenfail alert ECOG Status > 1'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_RADIO5'
,p_condition_element=>'P1001_RADIO5'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_PARAM_ID = 1'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3110534478921994904)
,p_event_id=>wwv_flow_imp.id(3110534383102994903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The subject will be screen failed because the ECOG score selected for this subject is more than 1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2291650275081166038)
,p_name=>'DELETE DATA'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2291650112425166036)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2291650378817166039)
,p_event_id=>wwv_flow_imp.id(2291650275081166038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'DELETE FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'commit;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2291650543835166040)
,p_event_id=>wwv_flow_imp.id(2291650275081166038)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Data is deleted'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2291650665126166041)
,p_event_id=>wwv_flow_imp.id(2291650275081166038)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:apex.navigation.redirect(''f?p=&APP_ID.:36:&APP_SESSION.::NO:RP,36::'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2293257310534524599)
,p_name=>'E/D P1001_COMM4'
,p_event_sequence=>570
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_STUDY_SITES',
' WHERE COUNTRY_ID = 1',
'   AND STUDY_SITE_ID = :APP_EDC_STUDY_SITE_ID'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2293257389422524600)
,p_event_id=>wwv_flow_imp.id(2293257310534524599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM4'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1874520393120870611)
,p_name=>'Remarks Show/Hide'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_RADIO3'
,p_condition_element=>'P1001_RADIO3'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'No'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874521498931870622)
,p_event_id=>wwv_flow_imp.id(1874520393120870611)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874521665301870623)
,p_event_id=>wwv_flow_imp.id(1874520393120870611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874520575667870612)
,p_event_id=>wwv_flow_imp.id(1874520393120870611)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874521730222870624)
,p_event_id=>wwv_flow_imp.id(1874520393120870611)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1874520980335870616)
,p_name=>'if others show/hide'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_NUM2'
,p_condition_element=>'P1001_NUM2'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'12'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_PARAM_ID=133'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874521030150870617)
,p_event_id=>wwv_flow_imp.id(1874520980335870616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874521180575870618)
,p_event_id=>wwv_flow_imp.id(1874520980335870616)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1859846251557037263)
,p_name=>'Discontinued by Physicia SHOW_HIDE'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_NUM2'
,p_condition_element=>'P1001_NUM2'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_PARAM_ID=133'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859846445220037264)
,p_event_id=>wwv_flow_imp.id(1859846251557037263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM7'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859846498456037265)
,p_event_id=>wwv_flow_imp.id(1859846251557037263)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM7'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1810888706384060794)
,p_event_id=>wwv_flow_imp.id(1859846251557037263)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_COMM7'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1886116589864453812)
,p_name=>'FIGO ALERT BELOW STAGE -111'
,p_event_sequence=>610
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_NUM1'
,p_condition_element=>'P1001_NUM1'
,p_triggering_condition_type=>'LESS_THAN_OR_EQUAL'
,p_triggering_expression=>'16'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1886116732215453813)
,p_event_id=>wwv_flow_imp.id(1886116589864453812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Subject will screen failed because the Initial Clinical FIGO Staging is selected below Stage-III.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1886116930221453815)
,p_event_id=>wwv_flow_imp.id(1886116589864453812)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_IE_MET'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(''#P1001_IE_MET_0'').val();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1886116822658453814)
,p_event_id=>wwv_flow_imp.id(1886116589864453812)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_IE_MET'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(''#P1001_IE_MET_1'').val();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1857311604528799041)
,p_name=>'FIGO ALERT BELOW STAGE -111_ED'
,p_event_sequence=>620
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_NUM1'
,p_condition_element=>'P1001_NUM1'
,p_triggering_condition_type=>'LESS_THAN_OR_EQUAL'
,p_triggering_expression=>'16'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>':APP_EDC_PARAM_ID=1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857311747730799042)
,p_event_id=>wwv_flow_imp.id(1857311604528799041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_IE_MET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857311773744799043)
,p_event_id=>wwv_flow_imp.id(1857311604528799041)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_IE_MET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1851162896198152141)
,p_name=>'YES CLICKING  DYNAMIC'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_RADIO3'
,p_condition_element=>'P1001_RADIO3'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Yes'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_PARAM_ID = 133'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1851162976508152142)
,p_event_id=>wwv_flow_imp.id(1851162896198152141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1851163770783152150)
,p_event_id=>wwv_flow_imp.id(1851162896198152141)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1851163081989152143)
,p_event_id=>wwv_flow_imp.id(1851162896198152141)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1851163176961152144)
,p_name=>'NO CLICKING  DYNAMIC'
,p_event_sequence=>640
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_RADIO3'
,p_condition_element=>'P1001_RADIO3'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'No'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_PARAM_ID = 133'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1851163266860152145)
,p_event_id=>wwv_flow_imp.id(1851163176961152144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE2,P1001_NUM2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1851163720910152149)
,p_event_id=>wwv_flow_imp.id(1851163176961152144)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE2,P1001_NUM2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1851163398496152146)
,p_event_id=>wwv_flow_imp.id(1851163176961152144)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_DATE2,P1001_NUM2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1859844069573037241)
,p_name=>'ENABLE_DISABLE'
,p_event_sequence=>650
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_NUM1'
,p_condition_element=>'P1001_NUM1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>':APP_EDC_PARAM_ID = 1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859844258865037243)
,p_event_id=>wwv_flow_imp.id(1859844069573037241)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_IE_MET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859844168746037242)
,p_event_id=>wwv_flow_imp.id(1859844069573037241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_IE_MET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1859846643234037266)
,p_name=>'on load disable status field'
,p_event_sequence=>660
,p_condition_element=>'P1001_RADIO3'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1859846671389037267)
,p_event_id=>wwv_flow_imp.id(1859846643234037266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_STATUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1862636148647120445)
,p_name=>'Alert Visit 9'
,p_event_sequence=>670
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_DATE1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_EDC_PARAM_ID = 9'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1862636172294120446)
,p_event_id=>wwv_flow_imp.id(1862636148647120445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_NEW_ALERT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'p_min date:=:P1001_DT_VALUE;',
'p_max date:=:P1001_DT_DATE_VAL;',
'begin',
'    if  :P1001_RADIO3 = ''Yes'' then',
'        if (p_min = '''' or p_max = '''') then',
'            return ''until visit 8 you can not be save the date'';',
'        elsif (:P1001_DATE1 < p_min)  then',
'            return ''The visit date entered is not within the visit window period of ''||p_min||'' to ''||p_max||'' days from the "EOT/ Safety Visit". Please verify and correct, if required.'';',
'        elsif (:P1001_DATE1 > p_max) then',
'            return ''The visit date entered is not within the visit window period of ''||p_min||'' to ''||p_max||'' days from the "EOT/ Safety Visit". Please verify and correct, if required.'';    ',
'        else',
'        return null;',
'        end if;',
'    end if;',
'end;'))
,p_attribute_07=>'P1001_RADIO3,P1001_DATE1,P1001_DT_VALUE,P1001_DT_DATE_VAL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1862636327284120447)
,p_name=>'show alert'
,p_event_sequence=>680
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_NEW_ALERT'
,p_condition_element=>'P1001_NEW_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1862636402937120448)
,p_event_id=>wwv_flow_imp.id(1862636327284120447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'x = $(''#P1001_NEW_ALERT'').val();',
'alert(x);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1765320576796102400)
,p_name=>'MEAN_VALUE_CAL'
,p_event_sequence=>700
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_RADIO1,P1001_RADIO2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1765320749021102401)
,p_event_id=>wwv_flow_imp.id(1765320576796102400)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1001_RADIO4,P1001_HEMOFLAG'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2)',
'    ,CASE WHEN ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2)>=9.5 AND ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2)<=11.5 THEN 1 ELSE',
'    0 END AS HFLAG',
'    FROM DUAL WHERE :APP_EDC_PARAM_ID = 3',
'        AND :P1001_RADIO1 IS NOT NULL AND :P1001_RADIO2 IS NOT NULL;'))
,p_attribute_07=>'P1001_RADIO1,P1001_RADIO2'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_RET NUMBER;',
'VREET NUMBER;',
'BEGIN',
'    SELECT ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2)/*,CASE WHEN TO_NUMBER((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2) NOT BETWEEN 9.5 AND 11.5 THEN 1',
'    ELSE 0 END AS FLAG */',
'    INTO V_RET--,VREET',
'    FROM DUAL WHERE :APP_EDC_PARAM_ID = 3',
'        AND :P1001_RADIO1 IS NOT NULL AND :P1001_RADIO2 IS NOT NULL;',
'    RETURN V_RET;',
'    ',
'EXCEPTION WHEN OTHERS THEN RETURN 0;',
'END;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1813526926494783223)
,p_name=>'Delete data'
,p_event_sequence=>710
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1813526279258783217)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1813527057117783224)
,p_event_id=>wwv_flow_imp.id(1813526926494783223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IP_ID NUMBER;',
'S_ARM NUMBER;',
'BEGIN',
'IF :APP_EDC_PARAM_ID=132 AND :APP_EDC_ROLE_ID IN (26,13) THEN ',
'BEGIN',
'SELECT STUDY_ARM_ID into S_ARM FROM EDC_PATIENT_PROFILE ',
'    WHERE PATIENT_PROFILE_ID IN (SELECT PATIENT_PROFILE_ID FROM EDC_PATIENT_VISIT ',
'                                                                          WHERE PATIENT_VISIT_ID=:APP_EDC_PATIENT_VISIT_ID);',
'EXCEPTION WHEN NO_DATA_FOUND THEN ',
'S_ARM:=NULL;',
'END ;',
'',
'IF S_ARM=2 THEN',
'UPDATE EDC_PATIENT_PROFILE',
'    SET STATUS=3',
'    WHERE PATIENT_PROFILE_ID IN (SELECT PATIENT_PROFILE_ID FROM EDC_PATIENT_VISIT ',
'                                                                          WHERE PATIENT_VISIT_ID=:APP_EDC_PATIENT_VISIT_ID);',
'DELETE FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'DELETE FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'                                                                          ',
'END IF;',
'END IF;',
'IF S_ARM=1 THEN',
'IF :APP_EDC_PARAM_ID=132 AND :APP_EDC_ROLE_ID IN (26,13) THEN ',
'',
'BEGIN',
'SELECT IP_ID INTO V_IP_ID ',
'    FROM IWRS_CRF_DM_IP',
'    WHERE IS_IP_DISPENSED IS NULL ',
'          AND DISPENSE_TIME IS NULL ',
'          AND PATIENT_VISIT_ID=:APP_EDC_PATIENT_VISIT_ID;',
'EXCEPTION WHEN NO_DATA_FOUND THEN ',
'V_IP_ID:=NULL;',
'END ;',
'',
'IF V_IP_ID IS NULL AND :P1001_DM_ID IS NULL THEN ',
'    DELETE FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'    END IF;',
'',
'IF :P1001_DM_ID IS NOT NULL AND V_IP_ID IS NULL THEN',
' DELETE FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
' DELETE FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'END IF;',
'',
'IF V_IP_ID IS NOT NULL THEN ',
'',
'UPDATE EDC_IP_DETAIL',
'    SET IP_STATUS=3,',
'        PATIENT_PROFILE_ID=NULL,',
'        PATIENT_VISIT_ID=NULL',
'    WHERE IP_ID=V_IP_ID;',
'',
'DELETE FROM IWRS_CRF_DM_IP WHERE PATIENT_VISIT_ID=:APP_EDC_PATIENT_VISIT_ID;',
'DELETE FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=:APP_EDC_PATIENT_VISIT_ID;',
'DELETE FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'END IF;',
'    ',
'END IF;',
'END IF;',
'COMMIT;',
'END;'))
,p_attribute_02=>'APP_EDC_ROLE_ID,APP_EDC_PATIENT_VISIT_ID,APP_EDC_PARAM_ID,P1001_DM_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1813527241599783226)
,p_event_id=>wwv_flow_imp.id(1813526926494783223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Visit Deleted.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1813527089609783225)
,p_event_id=>wwv_flow_imp.id(1813526926494783223)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:apex.navigation.redirect(''f?p=&APP_ID.:36:&APP_SESSION.::NO:RP,36::'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11258810990060633305)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from IWRS_CRF_DM'
,p_attribute_02=>'IWRS_CRF_DM'
,p_attribute_03=>'P1001_DM_ID'
,p_attribute_04=>'DM_ID'
,p_internal_uid=>10157860221919129212
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2089911120671866235)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'send mail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  EDC_MAIL.SUBJECT_STATUS_CHANGE(50, ''Screened'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>988960352530362142
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2291650214946166037)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_EOS_VISIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ID NUMBER := :APP_EDC_PATIENT_VISIT_ID;',
'BEGIN',
'DELETE FROM EDC_PATIENT_VISIT WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2291650112425166036)
,p_process_when_type=>'NEVER'
,p_internal_uid=>1190699446804661944
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3793951956114099946)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Next Visit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PARAM_ID NUMBER;',
'  V_VISIT_NAME EDC_PATIENT_VISIT_PARAMS.VISIT_NAME%TYPE;',
'BEGIN',
'  SELECT PARAM_ID, VISIT_NAME',
'    INTO V_PARAM_ID, V_VISIT_NAME',
'    FROM (SELECT PARAM_ID, VISIT_NAME',
'            FROM EDC_PATIENT_VISIT_PARAMS',
'           WHERE PARAM_ID < 134',
'           MINUS',
'          SELECT PARAM_ID, VISIT_TITLE',
'            FROM EDC_PATIENT_VISIT',
'           WHERE PARAM_ID < 134',
'             AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'           ORDER BY 1)',
'   WHERE ROWNUM = 1;',
'',
'  APEX_UTIL.REDIRECT_URL(P_URL => ''f?p=&APP_ID.:44:&SESSION.:::44:P44_PATIENT_PROFILE_ID,P44_VISIT_TITLE:''||:P37_PATIENT_PROFILE_ID||'',''||V_VISIT_NAME);',
'--  APEX_UTIL.REDIRECT_URL(P_URL => ''f?p=&APP_ID.:1:&SESSION.:::1'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''NEXT_VISIT'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>2693001187972595853
,p_process_comment=>'NEXT_VISIT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11258811409641633306)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of IWRS_CRF_DM'
,p_attribute_02=>'IWRS_CRF_DM'
,p_attribute_03=>'P1001_DM_ID'
,p_attribute_04=>'DM_ID'
,p_attribute_09=>'P1001_DM_ID'
,p_attribute_11=>'U:I'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''CREATE'', ''SAVE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>10157860641500129213
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11275491424499600285)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Screen Failure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_MESSAGE VARCHAR2(400);',
'  V_ST NUMBER;',
'  v_flg NUMBER;',
'BEGIN',
'  IF :APP_EDC_PARAM_ID = 1 THEN',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET SCREENING_DATE = :P1001_VISIT_DATE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'  END IF;',
'  ',
'  IF :P1001_IE_MET = ''No'' OR /*(NVL(:P1001_AGE, 0) NOT BETWEEN TO_NUMBER(:P1001_MIN_AGE) ',
'                              AND TO_NUMBER(:P1001_MAX_AGE) AND :APP_EDC_PARAM_ID = 1) */ :P1001_AGE<18 ',
'                          /*OR ',
'                              (:P1001_NUM1 IN (10,11,12,13,14,15,16,17) AND :APP_EDC_PARAM_ID=1) */',
'                          THEN',
'',
'    IF :P1001_IE_MET = ''No'' THEN',
'      V_MESSAGE := ''Subject is screen failed because the Inclusion Criterias are not matched.'';',
'   -- ELSIF NVL(:P1001_AGE, 0) NOT BETWEEN TO_NUMBER(:P1001_MIN_AGE) AND TO_NUMBER(:P1001_MAX_AGE) AND :APP_EDC_PARAM_ID = 1 THEN',
'     -- V_MESSAGE := ''The subject is screen failed because the calculated age is not >= ''||:P1001_MIN_AGE||'' years.'';',
'      ELSIF NVL(:P1001_AGE, 0) < 18 AND :APP_EDC_PARAM_ID = 1 THEN',
'      V_MESSAGE := ''The subject is screen failed because the calculated age is not > 18 years.'';',
'   /*   ELSIF ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2) NOT BETWEEN 9.5 AND 11.5 AND :APP_EDC_PARAM_ID=3 THEN ',
'      V_MESSAGE := ''Subject will screen failed because the Mean Screening Pre-HD Hemoglobin(%) is not between 9.5 and 11.5.'';',
'      ELSIF :P1001_RADIO6 = ''No'' AND :APP_EDC_PARAM_ID=3 THEN',
'      V_MESSAGE:=''Subject will screen failed because the Can the patient be Randomized? is selected No''; */',
'     END IF;',
'',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 2 -- Screen Failure',
'         , SCREEN_FAIL_REASON = NVL(:P1001_COMM2, V_MESSAGE)',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND STATUS = 1;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 3 -- DE Complete',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Subject is Screen Failed'';',
'    IF :P1001_SUB_STATUS = 1 THEN',
'        EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screen Failure'');',
'    END IF;',
'  ELSIF :P1001_IE_MET = ''No'' AND :APP_EDC_PARAM_ID in (2,3) THEN',
'    V_MESSAGE := ''Subject is screen failed because the Inclusion Criterias are not matched.'';',
'',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 2 -- Screen Failure',
'         , SCREEN_FAIL_REASON = NVL(:P1001_COMM2, V_MESSAGE)',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND STATUS = 1;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 3 -- DE Complete',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Subject is Screen Failed'';',
'    IF :P1001_SUB_STATUS = 1 THEN',
'        EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screen Failure'');',
'    END IF;',
'  ELSE',
'  ',
'  SELECT 1 INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID AND STATUS = 2;',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 1 -- Screened',
'         , SCREEN_FAIL_REASON = NULL',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND STATUS = 2;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 2 -- DE InComplete',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND :P1001_SUB_STATUS = 1;',
'',
'  --  APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Subject Status is "Screened".'';',
'      SELECT STATUS INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'      IF V_ST IN (1) THEN',
'        EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screened'');',
'      END IF;',
'  END IF;',
'',
'    if :P1001_RADIO5 >1 and :APP_EDC_PARAM_ID =1 then',
'        UPDATE EDC_PATIENT_PROFILE',
'           SET STATUS = 2 -- Screen Failure',
'             , SCREEN_FAIL_REASON = ''The subject is screen failed because the ECOG score selected for this subject is more than 1''--:P1001_PM_ACTION_MSG',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'           AND STATUS = 1;',
'',
'      COMMIT;',
'      IF :P1001_SUB_STATUS = 1 THEN',
'          EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screen Failure'');',
'      END IF;',
'    end if; ',
'    ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM EDC_PATIENT_VISIT_PARAMS',
' WHERE PARAM_ID = :APP_EDC_PARAM_ID',
'   AND SFL_FLG = 1',
'   AND :P1001_SUB_STATUS IN (1,2)',
'   AND :APP_EDC_PARAM_ID IN (1,2)',
''))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>10174540656358096192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1794134659637684497)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Screen Failure1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'    V_MESSAGE VARCHAR2(2000);',
'    V_FLG NUMBER;',
'    V_ST NUMBER;',
'    BEGIN   ----hemoglobin--------',
'IF  ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2) NOT BETWEEN 9.5 AND 11.5  THEN ',
'',
'    IF ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2)>=9.5 AND ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2)<=11.5  THEN ',
'',
'    v_flg:=0;',
'    else ',
'    ',
'    V_MESSAGE := ''Subject will screen failed because the Mean Screening Pre-HD Hemoglobin(%) is not between 9.5 and 11.5.'';',
'',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 2 -- Screen Failure',
'         , SCREEN_FAIL_REASON = V_MESSAGE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'      AND STATUS = 1;',
'      ',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 3 -- DE Complete',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'               AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID ;',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Subject is Screen Failed'';',
'    IF :P1001_SUB_STATUS = 1 THEN',
'        EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screen Failure'');',
'    END IF;',
'    END IF;',
'ELSE',
'    SELECT 1 INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID AND STATUS = 2;',
'',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 1 -- Screened',
'         , SCREEN_FAIL_REASON = NULL',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND STATUS = 2;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 2 -- DE InComplete',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND :P1001_SUB_STATUS = 1;',
'    ',
'      SELECT STATUS INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'      IF V_ST IN (1) THEN',
'        EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screened'');',
' END IF;',
' END IF;',
' commit;',
' EXCEPTION WHEN NO_DATA_FOUND THEN',
' NULL;',
' END ;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM EDC_PATIENT_VISIT_PARAMS',
' WHERE PARAM_ID = :APP_EDC_PARAM_ID',
'   AND SFL_FLG = 1',
'   AND :P1001_SUB_STATUS IN (1,2)',
'   AND :APP_EDC_PARAM_ID IN (3)',
''))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>693183891496180404
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_PARAM_ID=3',
'',
'',
unistr('\00BF'),
'$v(''P1001_RADIO1'')+$v(''P1001_RADIO2'')/2>=9.5&&$v(''P1001_RADIO1'')+$v(''P1001_RADIO2'')/2<=11.5',
'',
'----',
'',
'    DECLARE',
'    V_MESSAGE VARCHAR2(2000);',
'    V_FLG NUMBER;',
'    V_ST NUMBER;',
'    BEGIN   ----hemoglobin--------',
'IF  ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2) NOT BETWEEN 9.5 AND 11.5 THEN ',
'',
'    IF ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2)>=9.5 AND ((NVL(:P1001_RADIO1,0)+NVL(:P1001_RADIO2,0))/2)<=11.5  THEN ',
'',
'    v_flg:=0;',
'    else    ',
'      V_MESSAGE := ''Subject will screen failed because the Mean Screening Pre-HD Hemoglobin(%) is not between 9.5 and 11.5.'';',
'',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 2 -- Screen Failure',
'         , SCREEN_FAIL_REASON = V_MESSAGE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'      AND STATUS = 1;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 3 -- DE Complete',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Subject is Screen Failed'';',
'    IF :P1001_SUB_STATUS = 1 THEN',
'        EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screen Failure'');',
'    END IF;',
'    END IF;',
'ELSE',
'    SELECT 1 INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID AND STATUS = 2;',
'',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 1 -- Screened',
'         , SCREEN_FAIL_REASON = NULL',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND STATUS = 2;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 2 -- DE InComplete',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND :P1001_SUB_STATUS = 1;',
'    ',
'      SELECT STATUS INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'      IF V_ST IN (1) THEN',
'        EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screened'');',
' END IF;',
' END IF;',
'',
' commit;',
' EXCEPTION WHEN NO_DATA_FOUND THEN',
' NULL;',
' END ;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1729314743756873739)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Screen Failure2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-----can pat randomize------',
'',
'declare',
'v_message varchar2(2000);',
'V_ST number;',
'begin',
'IF :P1001_RADIO6 = ''No'' THEN ',
'       V_MESSAGE:=''Subject will screen failed because the Can the patient be Randomized? is selected No'';',
'        ',
'        UPDATE EDC_PATIENT_PROFILE',
'           SET STATUS = 2 -- Screen Failure',
'             , SCREEN_FAIL_REASON = V_MESSAGE',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'           AND STATUS = 1;',
'',
'      COMMIT;',
'      IF :P1001_SUB_STATUS = 1 THEN',
'          EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screen Failure'');',
'      END IF;',
'    ',
' /*else',
'     SELECT 1 INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID AND STATUS = 2;',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 1 -- Screened',
'         , SCREEN_FAIL_REASON = NULL',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND STATUS = 2;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 2 -- DE InComplete',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND :P1001_SUB_STATUS = 1;',
'',
'  --  APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Subject Status is "Screened".'';',
'      SELECT STATUS INTO V_ST FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'      IF V_ST IN (1) THEN',
'        EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screened'');',
'      END IF; */',
'      end if ; ',
'      ',
'      IF :P1001_IE_MET = ''No''  THEN',
'        V_MESSAGE := ''Subject is screen failed because the Inclusion Criterias are not matched.'';',
'',
'                UPDATE EDC_PATIENT_PROFILE',
'                   SET STATUS = 2 -- Screen Failure',
'                     , SCREEN_FAIL_REASON = NVL(:P1001_COMM2, V_MESSAGE)',
'                 WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'                   AND STATUS = 1;',
'',
'                UPDATE EDC_PATIENT_VISIT',
'                   SET CRF_STATUS = 3 -- DE Complete',
'                 WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'                APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Subject is Screen Failed'';',
'                IF :P1001_SUB_STATUS = 1 THEN',
'                    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screen Failure'');',
'                END IF; ',
'       END IF;',
'                ',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
' NULL;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM EDC_PATIENT_VISIT_PARAMS',
' WHERE PARAM_ID = :APP_EDC_PARAM_ID',
'   AND SFL_FLG = 1',
'   AND :P1001_SUB_STATUS IN (1,2)',
'   AND :APP_EDC_PARAM_ID IN (3)',
''))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>628363975615369646
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM EDC_PATIENT_VISIT_PARAMS',
' WHERE PARAM_ID = :APP_EDC_PARAM_ID',
'   AND SFL_FLG = 1',
'   AND :P1001_SUB_STATUS IN (1,2)',
'   AND :APP_EDC_PARAM_ID IN (3)',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2908694574579029693)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SF DELETE VIIST 2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_CNT NUMBER;',
'V_PV_ID NUMBER;',
'V_PV_ID1 NUMBER;',
'V_PROFILE_ID NUMBER := 	:P37_PATIENT_PROFILE_ID;',
'V_STATUS NUMBER;',
'V_AGE NUMBER;',
'V_EOG NUMBER;',
'BEGIN',
'',
'SELECT STATUS INTO V_STATUS FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = V_PROFILE_ID ',
'        AND PATIENT_PROFILE_ID IN(SELECT UNIQUE PATIENT_PROFILE_ID FROM EDC_PATIENT_VISIT WHERE VISIT_NUMBER IN(1,2)) ;',
'',
'IF V_STATUS = 2 THEN',
'    SELECT COUNT(1) INTO V_CNT FROM EDC_PATIENT_VISIT',
'           WHERE PATIENT_PROFILE_ID = V_PROFILE_ID ;',
'           ',
'        IF V_CNT > 1 THEN',
'            SELECT PATIENT_VISIT_ID INTO V_PV_ID FROM EDC_PATIENT_VISIT',
'                WHERE PATIENT_PROFILE_ID = V_PROFILE_ID AND VISIT_NUMBER = 2 ;',
'                ',
'            SELECT PATIENT_VISIT_ID INTO V_PV_ID1 FROM EDC_PATIENT_VISIT',
'                WHERE PATIENT_PROFILE_ID = V_PROFILE_ID AND VISIT_NUMBER = 1;',
'                ',
'            SELECT TO_NUMBER(floor(MONTHS_BETWEEN(ICDDT,DOB) / 12)) AS AGE , RADIO5 ',
'                INTO V_AGE , V_EOG',
'                FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID =(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                                                          WHERE PATIENT_PROFILE_ID = V_PROFILE_ID AND VISIT_NUMBER = 1);',
'                ',
'            IF ((V_AGE < 18 OR V_AGE > 70) OR V_EOG > 1) THEN ',
'            ',
'                UPDATE EDC_PATIENT_PROFILE',
'                       SET PM_NOTIFIED = NULL',
'                         , PM_APPROVED = NULL',
'                     WHERE PATIENT_PROFILE_ID = V_PROFILE_ID;',
'                     COMMIT;',
'',
'                 DELETE FROM IWRS_CRF_DM_SUBMISSION',
'                    WHERE PATIENT_VISIT_ID = V_PV_ID;',
'                 COMMIT;',
'',
'                 DELETE FROM IWRS_CRF_DM',
'                    WHERE PATIENT_VISIT_ID = V_PV_ID;',
'                 COMMIT;',
'',
'                 DELETE FROM EDC_PATIENT_VISIT',
'                    WHERE PATIENT_VISIT_ID = V_PV_ID;',
'                 COMMIT;',
'',
'            END IF;',
'        END IF;',
'END IF;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Visit 2 Is Delete Because Of The Screen failure in The 1st Visit'
,p_internal_uid=>1807743806437525600
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_CNT NUMBER;',
'V_PROFILE_ID NUMBER := :P37_PATIENT_PROFILE_ID;',
'V_STATUS NUMBER;',
'BEGIN',
'',
'SELECT STATUS INTO V_STATUS FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = V_PROFILE_ID ',
'        AND PATIENT_PROFILE_ID IN(SELECT UNIQUE PATIENT_PROFILE_ID FROM EDC_PATIENT_VISIT WHERE VISIT_NUMBER IN(1,2)) ;',
'',
'IF V_STATUS = 2 THEN',
'    SELECT COUNT(1) INTO V_CNT FROM EDC_PATIENT_VISIT',
'           WHERE PATIENT_PROFILE_ID = V_PROFILE_ID ;',
'           ',
'        IF V_CNT > 1 AND :REQUEST IN (''SAVE'') THEN',
'            RETURN TRUE;',
'        ELSE',
'            RETURN FALSE;',
'        END IF;',
'END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN FALSE;',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3571724013526465265)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Randomization Upgraded'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DTLS_ID              NUMBER;',
'  V_STUDY_ARM            NUMBER;',
'  V_RANDOMIZATION_NUMBER VARCHAR2(100);',
'  V_STUDY_ID NUMBER := :APP_EDC_STUDY_ID;',
'  V_SS_ID    NUMBER := :APP_EDC_STUDY_SITE_ID;',
'  V_PP_ID    NUMBER := :P37_PATIENT_PROFILE_ID;',
'  V_PV_ID    NUMBER := :APP_EDC_PATIENT_VISIT_ID;',
'  V_CNT NUMBER;',
'  V_NO_OF_IPS NUMBER;',
'  V_EXP_CUT_OF_DAYS NUMBER := EDC_UTIL.GET_PARAMETER_INT_VAL(''IP_EXPIRY_CUT_OF_DAYS'');',
'  V_CAP NUMBER;',
'  V_SUB_CAP NUMBER;',
'  V_PARAM_ID NUMBER;',
'  V_ARM_ID NUMBER;',
'  V_ARM2_COUNT NUMBER;',
'',
'  CURSOR C1(P_STUDY_ARM NUMBER) IS',
'  SELECT IP_ID',
'    FROM EDC_IP_DETAIL',
'   WHERE STUDY_ARM_ID = P_STUDY_ARM',
'     AND PATIENT_VISIT_ID IS NULL',
'     AND PATIENT_PROFILE_ID IS NULL',
'     AND IP_STATUS = 3',
'     AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + V_EXP_CUT_OF_DAYS + 1)) - V_EXP_CUT_OF_DAYS)',
'     AND STUDY_SITE_ID = V_SS_ID',
'     AND STUDY_ID = V_STUDY_ID',
'   ORDER BY IP_ID',
'     FOR UPDATE OF IP_STATUS, PATIENT_PROFILE_ID, PATIENT_VISIT_ID;',
'   V_IP_COUNT NUMBER := 0;',
'   V_IP_AVLBL_COUNT NUMBER;',
'',
'  CURSOR C3 IS',
'  SELECT RANDOMIZATION_NUMBER, STUDY_ARM_ID, OBS, STRATA_NUMBER',
'    FROM EDC_RANDOM_MST A',
'   WHERE PATIENT_PROFILE_ID IS NULL',
'     AND U_FLAG IS NULL',
'     AND ',
'       (',
'        (SELECT COUNT(*) AS VAL FROM EDC_PATIENT_PROFILE P WHERE STUDY_ARM_ID = A.STUDY_ARM_ID) < ',
'        (SELECT ARM_CAP FROM EDC_STUDY_ARM WHERE STUDY_ARM_ID = A.STUDY_ARM_ID) ',
'        )',
'   ORDER BY OBS',
'     FOR UPDATE OF PATIENT_PROFILE_ID, STUDY_SITE_ID, U_FLAG;',
'  V_RANDOM_COUNT NUMBER := 0;',
'',
'  CURSOR C4 (P_PP_ID NUMBER) IS',
'  SELECT * FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = P_PP_ID',
'     FOR UPDATE OF STATUS, RANDOMNO, STUDY_ARM_ID, DTLS_ID, RANDOMIZATION_DATE;',
'     ',
'BEGIN',
'    BEGIN',
'    ',
'      IF :P1001_IE_MET = ''Yes'' AND :P1001_RADIO6 = ''Yes'' THEN',
'    ',
'        SELECT TOT_PATIENTS',
'          INTO V_CAP',
'          FROM EDC_STUDY',
'         WHERE STUDY_ID = V_STUDY_ID;',
'         ',
'        SELECT COUNT(*) AS VAL INTO V_SUB_CAP FROM EDC_PATIENT_PROFILE WHERE STUDY_ARM_ID IS NOT NULL;',
'    ',
'    ',
'        FOR J IN C3 LOOP',
'          IF V_RANDOM_COUNT = 0 THEN',
'            V_DTLS_ID := J.OBS;',
'            V_RANDOMIZATION_NUMBER := J.RANDOMIZATION_NUMBER;',
'            V_STUDY_ARM := J.STUDY_ARM_ID;',
'    ',
'            IF V_SUB_CAP <= V_CAP THEN        ',
'                      FOR K IN C4(V_PP_ID) LOOP',
'                        -- Update Patient Details',
'                        UPDATE EDC_PATIENT_PROFILE',
'                           SET STATUS = 3                             -- Set Status to ''Enrolled'',',
'                             , RANDOMNO = V_RANDOMIZATION_NUMBER',
'                             , STUDY_ARM_ID = V_STUDY_ARM',
'                             , DTLS_ID = V_DTLS_ID',
'                             , RANDOMIZATION_DATE = TO_DATE(:P1001_VISIT_DATE,''DD-MON-YYYY'')',
'                         WHERE PATIENT_PROFILE_ID = K.PATIENT_PROFILE_ID;',
'                      END LOOP;',
'            ',
'                      UPDATE IWRS_CRF_DM',
'                         SET RANDOMIZATION_NUMBER = V_RANDOMIZATION_NUMBER',
'                       WHERE PATIENT_VISIT_ID = V_PV_ID;',
'            ',
'                      UPDATE EDC_RANDOM_MST',
'                         SET PATIENT_PROFILE_ID = V_PP_ID',
'                           , U_FLAG = 1',
'                           , STUDY_SITE_ID = V_SS_ID',
'                       WHERE OBS = V_DTLS_ID;',
'                END IF;',
'                  V_RANDOM_COUNT := V_RANDOM_COUNT + 1;              ',
'            END IF;',
'        END LOOP;',
'    ',
'        IF V_SUB_CAP <= V_CAP THEN',
'          EDC_MAIL.SUBJECT_STATUS_CHANGE(V_PP_ID, ''Randomized'');',
'        END IF;',
'      END IF;',
'      COMMIT;',
'    END;    ',
'',
'    IF V_STUDY_ARM = 1 THEN    ',
'    ',
'        BEGIN',
'          SELECT COUNT(DIP_ID)',
'            INTO V_CNT',
'            FROM IWRS_CRF_DM_IP',
'           WHERE PATIENT_VISIT_ID = V_PV_ID;',
'           ',
'           IF V_CNT = 0 THEN',
'            SELECT COUNT(IP_ID)',
'              INTO V_IP_AVLBL_COUNT',
'              FROM EDC_IP_DETAIL',
'             WHERE STUDY_ARM_ID = V_STUDY_ARM',
'               AND PATIENT_VISIT_ID IS NULL',
'               AND PATIENT_PROFILE_ID IS NULL',
'               AND IP_STATUS = 3',
'               AND TRUNC(SYSDATE) < (TRUNC(NVL(EXP_DATE_REAL, SYSDATE + V_EXP_CUT_OF_DAYS + 1)) - V_EXP_CUT_OF_DAYS)',
'               AND STUDY_SITE_ID = V_SS_ID',
'               AND STUDY_ID = V_STUDY_ID;',
'               ',
'               V_NO_OF_IPS := 1;',
'               ',
'               IF V_NO_OF_IPS > V_IP_AVLBL_COUNT THEN',
'               ',
'                      APEX_ERROR.ADD_ERROR (',
'                        P_MESSAGE          => ''IPs Out of Stock.'',',
'                        P_DISPLAY_LOCATION =>  APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'                        ',
'               ELSIF V_IP_AVLBL_COUNT >= V_NO_OF_IPS THEN',
'                      FOR I IN C1(V_STUDY_ARM) LOOP',
'                        IF V_IP_COUNT < V_NO_OF_IPS THEN',
'                        ',
'                          --Insert Dispensed IP in tracking Table',
'                          INSERT INTO IWRS_CRF_DM_IP (DIP_ID,',
'                                                      PATIENT_VISIT_ID,',
'                                                      IP_ID,',
'                                                      TZ',
'                                                     )',
'                                              VALUES (IWRS_CRF_DM_IP_SEQ.NEXTVAL,',
'                                                      V_PV_ID,',
'                                                      I.IP_ID,',
'                                                      APEX_UTIL.GET_SESSION_TIME_ZONE',
'                                                     );',
'            ',
'                          --Mark that IP as Dispensed for current Patient',
'                          UPDATE EDC_IP_DETAIL',
'                             SET PATIENT_PROFILE_ID = V_PP_ID',
'                               , PATIENT_VISIT_ID = V_PV_ID',
'                               , IP_STATUS = 24',
'                           WHERE IP_ID = I.IP_ID;',
'            ',
'                        ELSE',
'                          EXIT;',
'                        END IF;',
'            ',
'                        V_IP_COUNT := V_IP_COUNT + 1;',
'                      END LOOP;',
'               END IF;',
'           END IF; ',
'        END;',
'    ELSIF V_STUDY_ARM = 2 THEN',
'    ',
'        SELECT ARM_CAP INTO V_ARM_ID',
'            FROM EDC_STUDY_ARM ',
'                WHERE STUDY_ARM_ID = 2;',
'                ',
'        SELECT COUNT(PATIENT_PROFILE_ID)',
'                  INTO V_ARM2_COUNT',
'                  FROM EDC_PATIENT_PROFILE',
'                 WHERE STUDY_ARM_ID = 2;',
'        IF V_ARM2_COUNT > V_ARM_ID THEN',
'        ',
'            APEX_ERROR.ADD_ERROR (',
'                        P_MESSAGE          => ''Arm Cap is reach for Comparator IP.'',',
'                        P_DISPLAY_LOCATION =>  APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'        END IF;',
'                 ',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from edc_patient_visit_params',
' where param_id  = :APP_EDC_PARAM_ID',
'  AND RND_FLG = 1',
'  and :REQUEST IN (''APPROVE_FOR_RANDOMIZATION'')',
'  AND (SELECT STATUS FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) = 1'))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>2470773245384961172
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3570428023559984166)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'De Randomize'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER := :APP_EDC_PATIENT_VISIT_ID;',
'  V_PP_ID NUMBER := :P37_PATIENT_PROFILE_ID;',
'BEGIN',
'  DELETE FROM IWRS_CRF_DM_IP',
'   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  DELETE FROM IWRS_CRF_DM',
'   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  UPDATE EDC_RANDOM_MST',
'     SET PATIENT_PROFILE_ID = NULL',
'       , STUDY_SITE_ID = NULL',
'       , U_FLAG = NULL',
'   WHERE PATIENT_PROFILE_ID = V_PP_ID;',
'',
'  UPDATE EDC_IP_DETAIL',
'     SET IP_STATUS = 3',
'       , PATIENT_VISIT_ID = NULL',
'       , PATIENT_PROFILE_ID = NULL',
'   WHERE PATIENT_VISIT_ID = V_PV_ID',
'     AND PATIENT_PROFILE_ID = V_PP_ID;',
'',
'--  DELETE FROM EDC_PATIENT_VISIT',
'--   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  UPDATE EDC_PATIENT_PROFILE',
'     SET STATUS = 1,                             -- Set Status to ''screened'',',
'         RANDOMNO = NULL,',
'         STUDY_ARM_ID = NULL,',
'         DTLS_ID = NULL,',
'         RANDOMIZATION_DATE = NULL,',
'         PM_NOTIFIED = NULL,',
'         PM_APPROVED = NULL',
'   WHERE PATIENT_PROFILE_ID = V_PP_ID;',
'   ',
'   --APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Action Processed. The subject is De Randomized'';',
'  COMMIT;',
'--  APEX_UTIL.REDIRECT_URL(P_URL => ''f?p=&APP_ID.:1001:&SESSION.:::1001:P37_PATIENT_PROFILE_ID,APP_EDC_PATIENT_VISIT_ID:''||V_PP_ID||'',''||V_PV_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DE_RANDOM'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>2469477255418480073
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9050593106307052853)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISPENSING'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_ARM NUMBER;',
'  V_PV_ID NUMBER := :APP_EDC_PATIENT_VISIT_ID;',
'  V_NO_OF_IPS NUMBER;',
'  V_IP_AVLBL_COUNT NUMBER;',
'  V_CNT NUMBER;',
'  V_ARM_ID NUMBER;',
'  V_ARM2_COUNT NUMBER;',
'',
'  CURSOR C1(P_STUDY_ARM NUMBER) IS',
'  SELECT IP_ID',
'    FROM EDC_IP_DETAIL',
'   WHERE STUDY_ARM_ID = P_STUDY_ARM',
'     AND STUDY_ID = :APP_EDC_STUDY_ID',
'     AND STUDY_SITE_ID = :APP_EDC_STUDY_SITE_ID',
'     AND IP_STATUS = 3',
'     AND PATIENT_PROFILE_ID IS NULL',
'     AND PATIENT_VISIT_ID IS NULL',
'   ORDER BY IP_ID',
'     FOR UPDATE OF IP_STATUS, PATIENT_PROFILE_ID, PATIENT_VISIT_ID;',
'  V_IP_COUNT NUMBER := 0;',
'BEGIN',
'  SELECT COUNT(DIP_ID)',
'    INTO V_CNT',
'    FROM IWRS_CRF_DM_IP',
'   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  IF V_CNT = 0 THEN',
'    SELECT STUDY_ARM_ID',
'      INTO V_STUDY_ARM',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    IF V_STUDY_ARM = 1 THEN',
'',
'      V_NO_OF_IPS := 1;--GET_VIALS(V_WEIGHT);',
'',
'      SELECT COUNT(IP_ID)',
'        INTO V_IP_AVLBL_COUNT',
'        FROM EDC_IP_DETAIL',
'       WHERE STUDY_ARM_ID = V_STUDY_ARM',
'         AND STUDY_ID = :APP_EDC_STUDY_ID',
'         AND STUDY_SITE_ID = :APP_EDC_STUDY_SITE_ID',
'         AND IP_STATUS = 3',
'         AND PATIENT_PROFILE_ID IS NULL',
'         AND PATIENT_VISIT_ID IS NULL;',
'',
'      IF V_NO_OF_IPS > V_IP_AVLBL_COUNT THEN',
'        IF :P1001_IE_MET <> ''No'' THEN',
'        APEX_ERROR.ADD_ERROR (',
'          P_MESSAGE          => ''IPs Out of Stock.'',',
'          P_DISPLAY_LOCATION =>  APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'         END IF;',
'         ',
'      ELSE',
'        FOR I IN C1(V_STUDY_ARM) LOOP',
'          IF V_IP_COUNT < V_NO_OF_IPS THEN',
'            -- Mark that IP as Dispensed for current Patient',
'            UPDATE EDC_IP_DETAIL',
'               SET PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'                 , PATIENT_VISIT_ID = V_PV_ID',
'                 , IP_STATUS = 24 -- Dispensed to Patient',
'             WHERE IP_ID = I.IP_ID;',
'',
'            -- Insert Dispensed IP in tracking Table',
'            INSERT INTO IWRS_CRF_DM_IP (DIP_ID,',
'                                        PATIENT_VISIT_ID,',
'                                        IP_ID,',
'                                        TZ',
'                                       )',
'                                VALUES (IWRS_CRF_DM_IP_SEQ.NEXTVAL,',
'                                        V_PV_ID,',
'                                        I.IP_ID,',
'                                        APEX_UTIL.GET_SESSION_TIME_ZONE',
'                                       );',
'',
'          END IF;',
'          V_IP_COUNT := V_IP_COUNT + 1;',
'        END LOOP;',
'      END IF;',
'    COMMIT;',
'    ELSIF V_STUDY_ARM = 2 THEN',
'    ',
'        SELECT ARM_CAP INTO V_ARM_ID',
'            FROM EDC_STUDY_ARM ',
'                WHERE STUDY_ARM_ID = 2;',
'                ',
'        SELECT COUNT(PATIENT_PROFILE_ID)',
'                  INTO V_ARM2_COUNT',
'                  FROM EDC_PATIENT_PROFILE',
'                 WHERE STUDY_ARM_ID = 2;',
'                 ',
'        IF V_ARM2_COUNT > V_ARM_ID THEN',
'        ',
'            APEX_ERROR.ADD_ERROR (',
'                        P_MESSAGE          => ''Arm Cap is reach for Comparator IP.'',',
'                        P_DISPLAY_LOCATION =>  APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'        END IF;',
'   END IF;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND RPLC_FLG IS NULL',
'   AND :P1001_SUB_STATUS IN (1, 3, 7)',
'   AND :P1001_DISPNS_FLG = 1',
'   AND :P1001_DM_ID IS NOT NULL',
'   OR :APP_EDC_PATIENT_VISIT_ID = :P1001_MAX_PV_ID',
'   '))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>7949642338165548760
,p_process_comment=>'APPROVE_DISPENSING'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11270167431258544054)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Actual Date for Patient Visit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE EDC_PATIENT_VISIT',
'     SET ACTUAL_DATE = :P1001_VISIT_DATE',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''CREATE'', ''SAVE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>10169216663117039961
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3294963074292621896)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Withdraw / Discontinue / L2F'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_DATE VARCHAR2(100) := CAST(LOCALTIMESTAMP AS DATE);',
'  V_REASION VARCHAR2(4000);',
'BEGIN',
'    BEGIN',
'        SELECT TRIM(DISPLAY_VALUE) INTO V_REASION ',
'            FROM EDC_LOV_VALUES ',
'            WHERE LOV_ID = 84',
'            AND TO_NUMBER(STORED_VALUE) = TO_NUMBER(:P1001_NUM2);',
'    EXCEPTION WHEN OTHERS THEN ',
'            V_REASION := NULL;',
'    END;',
'--Update Patient Status',
'  UPDATE EDC_PATIENT_PROFILE',
'     SET STATUS = :P1001_STATUS',
'       , DISCONTINUE_REASON = DECODE(V_REASION,''Investigator Decision'',(''Investigator Decision - ''||:P1001_COMM7),''Other'',(''Other - ''||:P1001_COMM3),V_REASION)',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'     AND :P1001_STATUS = 4;',
'',
'  UPDATE EDC_PATIENT_PROFILE',
'     SET STATUS = :P1001_STATUS',
'       , WITHDRAW_REASON = DECODE(V_REASION,''Investigator Decision'',(''Investigator Decision - ''||:P1001_COMM7),''Other'',(''Other - ''||:P1001_COMM3),V_REASION)',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'     AND :P1001_STATUS = 5;',
'     ',
'  UPDATE EDC_PATIENT_PROFILE',
'     SET STATUS = :P1001_STATUS',
'       , LOST_TO_FOLLOWUP_REASON = DECODE(V_REASION,''Investigator Decision'',(''Investigator Decision - ''||:P1001_COMM7),''Other'',(''Other - ''||:P1001_COMM3),V_REASION)',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'     AND :P1001_STATUS = 6;',
'',
'  UPDATE EDC_PATIENT_PROFILE',
'     SET STATUS = 10',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'     AND :P1001_STATUS = 10;',
'COMMIT;  ',
'',
'  UPDATE IWRS_CRF_DM',
'     SET VISIT_DATE = COALESCE(:P1001_DATE1,:P1001_DATE2,V_DATE)',
'   WHERE PATIENT_VISIT_ID = :P1001_PATIENT_VISIT_ID;',
'',
'  UPDATE EDC_PATIENT_VISIT',
'     SET ACTUAL_DATE = COALESCE(:P1001_DATE1,:P1001_DATE2,V_DATE)',
'   WHERE PATIENT_VISIT_ID = :P1001_PATIENT_VISIT_ID;',
'  COMMIT;',
'',
'  IF :P1001_STATUS = 4 THEN        --discontinued',
'    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Discontinued'');',
'  ELSIF :P1001_STATUS = 5 THEN     --withdrawn',
'    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Withdrawn'');',
'  ELSIF :P1001_STATUS = 6 THEN     --lost to follow up',
'    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''L2F'');',
'  ELSIF :P1001_STATUS = 10 THEN',
'    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Completed'');',
'  END IF;',
'  COMMIT;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_VISIT_PARAMS',
' WHERE CMPLT_FLG = 1',
'   AND PARAM_ID = :APP_EDC_PARAM_ID',
'   AND :REQUEST IN (''CREATE'',''SAVE'')'))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>2194012306151117803
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11270504487700640872)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Dispense IPs Clicked'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_IP_ID NUMBER;',
'BEGIN',
'',
'    SELECT IP_ID INTO V_IP_ID',
'      FROM IWRS_CRF_DM_IP',
'     WHERE PATIENT_VISIT_ID =  :APP_EDC_PATIENT_VISIT_ID;',
'',
'  UPDATE IWRS_CRF_DM_IP',
'     SET IS_IP_DISPENSED = ''Yes'',',
'         DISPENSE_TIME = LOCALTIMESTAMP',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'     AND IS_IP_DISPENSED IS NULL;',
'',
'    UPDATE EDC_IP_DETAIL',
'       SET IP_STATUS = 4 -- IP DISPENSED',
'     WHERE IP_ID = V_IP_ID;',
'',
'  UPDATE EDC_PATIENT_VISIT',
'     SET CRF_STATUS = 3',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'     AND CRF_STATUS <> 3;',
'     ---',
'  EDC_MAIL.IP_DISPENSED(:P37_PATIENT_PROFILE_ID, :APP_EDC_PATIENT_VISIT_ID);',
'  --SaveJasper_IPAssign(:APP_EDC_PATIENT_VISIT_ID, 1); -- TO ADD PDF DOCUMENT IN THE TABLE. (commented on 29122020 due to issue on live.)',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11270504419933640871)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND IS_IP_DISPENSED IS NULL',
'   AND :REQUEST IN (''DISPENSE_IP'')'))
,p_process_when_type=>'EXISTS'
,p_process_success_message=>'Dispensed to the Subject'
,p_internal_uid=>10169553719559136779
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1804681331394032722)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EOT COMPLETED PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :APP_EDC_PARAM_ID=132 THEN ',
'  UPDATE EDC_PATIENT_PROFILE',
'     SET STATUS = 8',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'     --AND :P1001_STATUS = 8;',
'     EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''EOT'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COMP NUMBER;',
'BEGIN',
'',
'BEGIN',
'SELECT STUDY_ARM_ID INTO V_COMP FROM EDC_PATIENT_PROFILE',
'WHERE PATIENT_PROFILE_iD=:P37_PATIENT_PROFILE_ID;',
'EXCEPTION WHEN NO_DATA_FOUND THEN ',
'V_COMP:=0;',
'END; ',
'',
'IF V_COMP=2 THEN ',
'RETURN TRUE;',
'ELSIF V_COMP=1 AND :REQUEST IN (''DISPENSE_IP'') THEN ',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END ;',
'',
''))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>703730563252528629
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM ',
'IWRS_CRF_DM_IP',
'WHERE :APP_EDC_PARAM_ID=127',
'AND IS_IP_DISPENSED=''Yes'' and DISPENSE_TIME is not null',
'and patient_visit_id=:APP_EDC_PATIENT_VISIT_ID;',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9941703204119323178)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Notify PM - for Randomization Approval'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TEMP NUMBER;',
'  V_ID NUMBER;',
'BEGIN',
'  SELECT COUNT(*)',
'    INTO V_TEMP',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'     AND :APP_EDC_ROLE_ID IN (13, 26 /* Admin, CRC */)',
'     AND STATUS = 1 -- Screened',
'     AND NVL(PM_NOTIFIED, 0) = 0',
'     AND NVL(PM_APPROVED, 0) = 0',
'     AND :P1001_DM_ID IS NOT NULL;',
'',
'  IF V_TEMP = 1 THEN',
'        --IF :P1001_BMI >= 18 AND :P1001_BMI <= 35 THEN',
'    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID,''SEND_RNDM_APPROVAL'');',
'              --  EDC_MAIL.NOTIFY_PM_FOR_APPROVAL(:P37_PATIENT_PROFILE_ID);',
'',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET PM_NOTIFIED = 1',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    SELECT NVL(MAX(ID),0) + 1',
'      INTO V_ID',
'      FROM IWRS_CRF_DM_SUBMISSION;',
'',
'    INSERT INTO IWRS_CRF_DM_SUBMISSION VALUES( V_ID',
'                                             , :APP_EDC_PATIENT_VISIT_ID',
'                                             , :APP_USER_NAME',
'                                             , LOCALTIMESTAMP',
'                                             , ''Send for Approval''',
'                                             , ''''',
'                                             );',
'',
'    apex_application.g_print_success_message := ''Subject has been send for Approval'';',
'        --END IF;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN(''SEND_TO_PM'') '
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>8840752435977819085
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9941703250114323179)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve/Reject/SendBack Randomization'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_TEMP NUMBER;',
'  V_ID   NUMBER;',
'BEGIN',
'  SELECT COUNT(*)',
'    INTO V_TEMP',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'     AND :APP_EDC_ROLE_ID IN (13, 19, 28 /* Admin, PM, Medical Monitor */)',
'     AND STATUS IN (1,3) -- Screened, Randomized',
'     AND NVL(PM_NOTIFIED, 0) = 1',
'     AND NVL(PM_APPROVED, 0) = 0',
'     AND :P1001_DM_ID IS NOT NULL;',
'',
'  IF V_TEMP = 1 THEN',
'    IF :REQUEST IN (''SEND_BACK_TO_CRC'') THEN',
'      UPDATE EDC_PATIENT_PROFILE',
'         SET PM_NOTIFIED = 0',
'       WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'    END IF;',
'',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET PM_APPROVED = DECODE(:REQUEST, ''APPROVE_FOR_RANDOMIZATION'', 1, ''REJECT_FOR_RANDOMIZATION'', -1, ''SEND_BACK_TO_CRC'', 0)',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 3',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND :REQUEST = ''REJECT_FOR_RANDOMIZATION'';',
'         ',
'   IF :REQUEST = ''REJECT_FOR_RANDOMIZATION'' THEN',
'       UPDATE EDC_PATIENT_PROFILE',
'          SET status = 2,',
'              SCREEN_FAIL_REASON = :P1001_PM_ACTION_MSG',
'        WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'   END IF;',
'',
'    SELECT NVL(MAX(ID),0) + 1',
'      INTO V_ID',
'      FROM IWRS_CRF_DM_SUBMISSION;',
'',
'    INSERT INTO IWRS_CRF_DM_SUBMISSION VALUES( V_ID',
'                                             , :APP_EDC_PATIENT_VISIT_ID',
'                                             , :APP_USER_NAME',
'                                             , LOCALTIMESTAMP',
'                                             , DECODE(:REQUEST, ''APPROVE_FOR_RANDOMIZATION'', ''Approved for Randomization'', ''REJECT_FOR_RANDOMIZATION'', ''Rejected for Randomization'', ''SEND_BACK_TO_CRC'', ''Sent back to CRC'')',
'                                             , :P1001_PM_ACTION_MSG',
'                                             );',
'',
'    EDC_MAIL.PM_RANDOMIZATION_RESPONSE(:P37_PATIENT_PROFILE_ID, :REQUEST);',
'',
'    APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''This Subject has been '' || CASE WHEN :REQUEST = ''APPROVE_FOR_RANDOMIZATION''',
'                                                                                 THEN ''Approved for Randomization''',
'                                                                                 WHEN :REQUEST = ''REJECT_FOR_RANDOMIZATION''',
'                                                                                 THEN ''Rejected for Randomization''',
'                                                                                 WHEN :REQUEST = ''SEND_BACK_TO_CRC''',
'                                                                                 THEN ''sent back to CRC''',
'                                                                            END;',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN ',
'    NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''APPROVE_FOR_RANDOMIZATION'', ''REJECT_FOR_RANDOMIZATION'', ''SEND_BACK_TO_CRC'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>8840752481972819086
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9051487782770743353)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REQUEST_KITS_FOR_SUBSEQUENT_VISITS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ID NUMBER;',
'BEGIN',
'  UPDATE EDC_PATIENT_vISIT',
'     SET CRF_STATUS = 2',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  UPDATE IWRS_CRF_DM',
'     SET RPLC_FLG = ''R''',
'       , RPLC_RESN = :P1001_PM_ACTION_MSG',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  SELECT NVL(MAX(ID),0) + 1',
'    INTO V_ID',
'    FROM IWRS_CRF_DM_SUBMISSION;',
'  INSERT INTO IWRS_CRF_DM_SUBMISSION VALUES( V_ID',
'                                           , :APP_EDC_PATIENT_VISIT_ID',
'                                           , :APP_USER_NAME',
'                                           , LOCALTIMESTAMP',
'                                           , ''Sent for Approval''',
'                                           , ''''',
'                                           );',
'',
'  EDC_MAIL.IP_REPLACEMENT(:P37_PATIENT_PROFILE_ID,:P1001_PM_ACTION_MSG);',
'',
'  APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Subject has been send for Approval'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'REQUEST_DISPENSING'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>7950537014629239260
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9051487921647743354)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APPROVE_REJECT_REPLACEMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STUDY_ARM NUMBER;',
'  V_STATUS VARCHAR2(20);',
'  V_ID NUMBER;',
'BEGIN',
'  UPDATE IWRS_CRF_DM',
'     SET RPLC_FLG = DECODE(:REQUEST,''APPROVE_DISPENSING'',''A'',''SEND_BACK_DISPENSING'','''',''C'')',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  V_STATUS := CASE :REQUEST WHEN ''APPROVE_DISPENSING'' THEN ''Approved'' WHEN ''SEND_BACK_DISPENSING'' THEN ''Send Back to CRC'' ELSE ''Rejected'' END;',
'',
'  SELECT NVL(MAX(ID),0) + 1',
'    INTO V_ID',
'    FROM IWRS_CRF_DM_SUBMISSION;',
'',
'  INSERT INTO IWRS_CRF_DM_SUBMISSION VALUES( V_ID',
'                                           , :APP_EDC_PATIENT_VISIT_ID',
'                                           , :APP_USER_NAME',
'                                           , LOCALTIMESTAMP',
'                                           , DECODE(:REQUEST, ''APPROVE_DISPENSING'', ''Approved for Kit Dispensing'', ''REJECT_DISPENSING'', ''Rejected for Kit Dispensing'', ''SEND_BACK_DISPENSING'', ''Sent back to CRC'')',
'                                           , :P1001_PM_ACTION_MSG',
'                                           );',
'  IF :REQUEST = ''REJECT_DISPENSING'' THEN',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 3',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'  END IF;',
'',
'  EDC_MAIL.IP_REPLACEMENT_STATUS(:P37_PATIENT_PROFILE_ID,V_STATUS);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''APPROVE_DISPENSING'',''REJECT_DISPENSING'',''SEND_BACK_DISPENSING'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>7950537153506239261
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3305493464114333597)
,p_process_sequence=>190
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update patient status Induction phase Completed'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P1001_COMM5 <> ''Progressive Disease (PD)'' THEN',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 7',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'  END IF;',
'COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':APP_EDC_PARAM_ID = 8'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>2204542695972829504
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9553073177358581585)
,p_process_sequence=>200
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'email notification for out of window period'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  EDC_MAIL.VISIT_OUT_OF_PERIOD(:APP_EDC_PATIENT_VISIT_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>8452122409217077492
,p_process_comment=>':APP_EDC_PARAM_ID > 2 AND :REQUEST IN (''CREATE'',''SAVE'')'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3294640253658532191)
,p_process_sequence=>210
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RESET IP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER := :APP_EDC_PATIENT_VISIT_ID;',
'  V_ID NUMBER;',
'BEGIN',
'  UPDATE EDC_IP_DETAIL',
'     SET IP_STATUS = 3',
'       , PATIENT_VISIT_ID = NULL',
'       , PATIENT_PROFILE_ID = NULL',
'   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  UPDATE IWRS_CRF_DM',
'     SET RPLC_FLG = NULL',
'       , RPLC_RESN = NULL',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  DELETE FROM IWRS_CRF_DM_IP',
'   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  SELECT NVL(MAX(ID),0) + 1',
'    INTO V_ID',
'    FROM IWRS_CRF_DM_SUBMISSION;',
'',
'  INSERT INTO IWRS_CRF_DM_SUBMISSION VALUES( V_ID',
'                                           , :APP_EDC_PATIENT_VISIT_ID',
'                                           , :APP_USER_NAME',
'                                           , LOCALTIMESTAMP',
'                                           , ''IP Reset''',
'                                           , :P1001_PM_ACTION_MSG',
'                                           );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RESET_IP'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>2193689485517028098
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11275488926615600260)
,p_process_sequence=>220
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update CRF Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  UPDATE EDC_PATIENT_VISIT',
'     SET CRF_STATUS = 3',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'     AND CRF_STATUS <> 3;',
'',
' /* IF :APP_EDC_PARAM_ID not IN (1,3) THEN',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 3',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND CRF_STATUS <> 3;',
'      ',
'    ',
'  END IF;*/',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 2',
'     WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'       AND CRF_STATUS <> 2;',
'   COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_VISIT_PARAMS',
' WHERE RND_FLG IS NULL',
'   AND DISPNS_FLG IS NULL',
'   AND PARAM_ID = :APP_EDC_PARAM_ID',
'   AND :REQUEST IN (''CREATE'', ''SAVE'')'))
,p_process_when_type=>'EXISTS'
,p_internal_uid=>10174538158474096167
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3796603128492512142)
,p_process_sequence=>230
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update TimeZone'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE IWRS_CRF_DM_IP',
'   SET TZ = APEX_UTIL.GET_SESSION_TIME_ZONE',
' WHERE TZ IS NULL',
'   AND PATIENT_VISIT_ID IN (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID);',
'COMMIT;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2695652360351008049
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3797323642854228647)
,p_process_sequence=>240
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Report in DB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SaveJasper_IPAssign(:APP_EDC_PATIENT_VISIT_ID, 1); -- TO ADD PDF DOCUMENT IN THE TABLE.',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>2696372874712724554
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM IWRS_CRF_DM_IP',
' WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'   AND IS_IP_DISPENSED IS NULL',
'   AND :REQUEST IN (''DISPENSE_IP'')'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3294640490232532193)
,p_process_sequence=>250
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Early Termination'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CREATE_ID NUMBER := 22;',
'  V_VISIT_TYPE       EDC_PATIENT_VISIT_PARAMS.VISIT_TYPE%TYPE;',
'  V_PARAM_ID         EDC_PATIENT_VISIT_PARAMS.PARAM_ID%TYPE;',
'  V_VISIT_NAME       EDC_PATIENT_VISIT_PARAMS.VISIT_NAME%TYPE;',
'  V_PATIENT_VISIT_ID NUMBER;',
'  V_TMP              NUMBER;',
'  V_RAND_DATE        EDC_PATIENT_PROFILE.RANDOMIZATION_DATE%TYPE;',
'  V_DURATION         NUMBER;',
'  V_WINDOW_PERIOD_M  NUMBER;',
'  V_WINDOW_PERIOD_P  NUMBER;',
'  V_PARAM_ID_FK      NUMBER;',
'  V_CALCULATED_ON    VARCHAR2(1000);',
'',
'  V_NEW_DATE         DATE := LOCALTIMESTAMP;',
'BEGIN',
'  SELECT PARAM_ID',
'       , VISIT_NAME',
'       , VISIT_TYPE',
'       , DURATION',
'       , WINDOW_PERIOD_M',
'       , WINDOW_PERIOD_P',
'       , PARAM_ID_FK',
'       , CALCULATED_ON',
'    INTO V_PARAM_ID',
'       , V_VISIT_NAME',
'       , V_VISIT_TYPE',
'       , V_DURATION',
'       , V_WINDOW_PERIOD_M',
'       , V_WINDOW_PERIOD_P',
'       , V_PARAM_ID_FK',
'       , V_CALCULATED_ON',
'    FROM EDC_PATIENT_VISIT_PARAMS',
'   WHERE PARAM_ID = V_CREATE_ID;',
'',
'  SELECT COUNT(*)',
'    INTO V_TMP',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PARAM_ID = V_CREATE_ID',
'     AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_TMP = 0 THEN',
'    V_PATIENT_VISIT_ID :=  EDC_PATIENT_VISIT_SEQ.NEXTVAL;',
'',
'    INSERT INTO EDC_PATIENT_VISIT( PATIENT_VISIT_ID',
'                                  ,PATIENT_PROFILE_ID',
'                                  ,VISIT_NUMBER',
'                                  ,VISIT_TITLE',
'                                  ,VISIT_TYPE',
'                                  ,CRF_STATUS',
'                                  ,PARAM_ID',
'                                  ,SCHEDULE_DATE',
'                                  ,WINDOW_PERIOD_M --Minus (Negative)',
'                                  ,WINDOW_PERIOD_P --Plus  (Positive)',
'                                  ,PARAM_ID_FK',
'                                  ,CALCULATED_ON',
'                                  ,DURATION',
'                                 )',
'                           VALUES( V_PATIENT_VISIT_ID',
'                                  ,:P37_PATIENT_PROFILE_ID',
'                                  ,V_PARAM_ID',
'                                  ,V_VISIT_NAME',
'                                  ,V_VISIT_TYPE',
'                                  ,2',
'                                  ,V_PARAM_ID',
'                                  ,V_NEW_DATE',
'                                  ,V_WINDOW_PERIOD_M',
'                                  ,V_WINDOW_PERIOD_P',
'                                  ,V_PARAM_ID_FK',
'                                  ,V_CALCULATED_ON',
'                                  ,V_DURATION',
'                                 );',
'',
'    COMMIT;',
'    APEX_UTIL.REDIRECT_URL(''f?p='' || V(''APP_ID'') || '':1001:'' || V(''SESSION'')||''::NO:1001:P37_PATIENT_PROFILE_ID,APP_EDC_PATIENT_VISIT_ID:''||:P37_PATIENT_PROFILE_ID||'',''||V_PATIENT_VISIT_ID);',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>2193689722091028100
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER := :APP_EDC_PATIENT_VISIT_ID;',
'  V_COMM5 IWRS_CRF_DM.COMM5%TYPE;',
'  V_COUNT NUMBER;',
'BEGIN',
'  SELECT COMM5',
'    INTO V_COMM5',
'    FROM IWRS_CRF_DM',
'   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  SELECT COUNT(*)',
'    INTO V_COUNT',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PARAM_ID = 22',
'     AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_COMM5 = ''Progressive Disease (PD)'' AND V_COUNT = 0 THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3306898978038999091)
,p_process_sequence=>260
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discontinue On PD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE EDC_PATIENT_PROFILE',
'   SET STATUS = 4',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'UPDATE EDC_PATIENT_VISIT',
'   SET CRF_STATUS = 3',
' WHERE CRF_STATUS = 2',
'   AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER := :APP_EDC_PATIENT_VISIT_ID;',
'  V_COMM5 IWRS_CRF_DM.COMM5%TYPE;',
'  V_STATUS NUMBER;',
'BEGIN',
' IF :REQUEST IN (''CREATE'',''SAVE'') THEN',
'  SELECT COMM5',
'    INTO V_COMM5',
'    FROM IWRS_CRF_DM',
'   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  SELECT STATUS',
'    INTO V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  /*IF V_COMM5 = ''Progressive Disease (PD)'' AND V_STATUS IN (3,7) THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;*/',
' END IF;  ',
'END;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>2205948209897494998
);
end;
/
begin
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3294696951637213291)
,p_process_sequence=>270
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Drop Early Termination'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CREATE_ID NUMBER := 22;',
'  V_PV_ID NUMBER;',
'BEGIN',
'  SELECT PATIENT_VISIT_ID',
'    INTO V_PV_ID',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PARAM_ID = V_CREATE_ID',
'     AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  DELETE FROM EDC_PATIENT_VISIT',
'   WHERE PATIENT_VISIT_ID = V_PV_ID;',
'',
'  UPDATE EDC_PATIENT_VISIT',
'     SET CRF_STATUS = 2',
'   WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DROP_TERM'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>2193746183495709198
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3109957408195465284)
,p_process_sequence=>280
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Request - Refresh IP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_IP_STATUS_DESC VARCHAR2(200);',
'  V_CURR_IP_ID NUMBER;',
'  V_CURR_IP_ID_NAME VARCHAR2(200);',
'BEGIN',
'  SELECT IP_ID',
'    INTO V_CURR_IP_ID',
'    FROM IWRS_CRF_DM_IP',
'   WHERE DIP_ID = :P1001_DIP_ID',
'     AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  -- Get Current ARM and Bottle Name',
'  SELECT BOTTLE_NO',
'    INTO V_CURR_IP_ID_NAME',
'    FROM EDC_IP_DETAIL',
'   WHERE IP_ID = V_CURR_IP_ID;',
'',
'  SELECT LV.DISPLAY_VALUE D',
'    INTO V_IP_STATUS_DESC',
'    FROM EDC_LOV L',
'    JOIN EDC_LOV_VALUES LV',
'      ON L.LOV_ID = LV.LOV_ID',
'     AND LOV_NAME = ''IP_STATUS''',
'     AND LV.STATUS = 1',
'     AND LV.STORED_VALUE = :P1001_IP_STATUS;',
'',
'  UPDATE IWRS_CRF_DM_IP',
'     SET APP_FLG = ''R'' -- REQUESTED',
'       , RPLC_RSN = :P1001_IP_STATUS',
'   WHERE DIP_ID = :P1001_DIP_ID;',
'',
'  INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                              VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P1001_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                     , ''VARCHAR2'', NULL, ''Request'' );',
'',
'  INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                              VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''RPLC_RSN'', :P1001_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                     , ''VARCHAR2'', NULL, V_IP_STATUS_DESC);',
'',
'  EDC_MAIL.IP_REFRESH_REQUEST( :P37_PATIENT_PROFILE_ID, :APP_EDC_PATIENT_VISIT_ID, :APP_EDC_VISIT_NAME, V_CURR_IP_ID_NAME, V_IP_STATUS_DESC );',
'',
'  -- Return Success Message',
'  -- HTP.P(''Current Kit '' || V_CURR_IP_ID_NAME || '' has been replaced with new one '' || V_NEW_IP_ID_NAME || '' (Please change status of old Kit from IP Management according to the status, So that it can not be dispnsed to other Subject)'');',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    HTP.P(''Valid kit not available at site for replacement.Kindly ask CRA to raise shipment request.'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error, unable to get current Kit details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'REQUEST_REF_IP'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Kit request generated.'
,p_internal_uid=>2009006640053961191
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3109957488021465285)
,p_process_sequence=>290
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Refresh IP - Refresh IP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CURR_IP_ID_NAME VARCHAR2(200); -- Current Bottle No.',
'  V_CURR_IP_ID      NUMBER;',
'  V_CURR_IP_ARM     NUMBER;        -- To get ARM of the current IP',
'  V_NEW_IP_ID_NAME  VARCHAR2(200); -- New Bottle No.',
'  V_NEW_IP_ID       NUMBER;',
'  V_MAX_IP_ID       NUMBER;        -- MAX IP id assigned to current subject visit',
'  V_IP_STATUS_DESC  VARCHAR2(200);',
'  V_APP_FLG VARCHAR2(1);',
'  V_APP_BY VARCHAR2(50);',
'  V_APP_DT DATE;',
'  V_REJ_RSN VARCHAR2(200);',
'BEGIN',
'  -- Get current IP ID',
'  SELECT IP_ID',
'       , APP_FLG',
'       , APP_BY',
'       , APP_DT',
'       , REJ_RSN',
'    INTO V_CURR_IP_ID',
'       , V_APP_FLG',
'       , V_APP_BY',
'       , V_APP_DT',
'       , V_REJ_RSN',
'    FROM IWRS_CRF_DM_IP',
'   WHERE DIP_ID = :P1001_DIP_ID',
'     AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  SELECT LV.DISPLAY_VALUE D',
'    INTO V_IP_STATUS_DESC',
'    FROM EDC_LOV L',
'    JOIN EDC_LOV_VALUES LV',
'      ON L.LOV_ID = LV.LOV_ID',
'     AND L.LOV_NAME = ''IP_STATUS''',
'     AND LV.STATUS = 1',
'     AND LV.STORED_VALUE = :P1001_IP_STATUS;',
'',
'  -- Get Current ARM and Bottle Name',
'  SELECT STUDY_ARM_ID',
'       , BOTTLE_NO',
'    INTO V_CURR_IP_ARM',
'       , V_CURR_IP_ID_NAME',
'    FROM EDC_IP_DETAIL',
'   WHERE IP_ID = V_CURR_IP_ID;',
'',
'  IF :REQUEST = ''APPROVE_REF_IP'' THEN ',
'    BEGIN',
'      --Get MAX IP ID from the IPs assigned to Subject in this Visit, so that previously released IP can not be reassigned to same subject',
'      SELECT MAX(IP_ID)',
'        INTO V_MAX_IP_ID',
'        FROM IWRS_CRF_DM_IP',
'       WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'      -- Find next available IP of same ARM',
'      SELECT IP_ID',
'           , BOTTLE_NO',
'        INTO V_NEW_IP_ID',
'           , V_NEW_IP_ID_NAME',
'        FROM (SELECT IP_ID',
'                   , BOTTLE_NO',
'                FROM EDC_IP_DETAIL',
'               WHERE IP_ID > V_MAX_IP_ID       -- New IP must be after the MAX ID assigned to Subject in current Visit',
'                 AND IP_STATUS = 3',
'                 AND PATIENT_VISIT_ID IS NULL',
'                 AND PATIENT_PROFILE_ID IS NULL',
'                 AND STUDY_ARM_ID = V_CURR_IP_ARM',
'                 AND STUDY_SITE_ID = :APP_EDC_STUDY_SITE_ID',
'                 AND STUDY_ID = :APP_EDC_STUDY_ID',
'               ORDER BY 1',
'             )',
'       WHERE ROWNUM = 1;',
'',
'      -- Mark that New IP as Dispensed for current Patient',
'      UPDATE EDC_IP_DETAIL',
'         SET PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'           , PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'           , IP_STATUS = 4 -- Dispensed to Patient',
'       WHERE IP_ID = V_NEW_IP_ID;',
'',
'      -- Clear Subject Data from current IP, so that it can available to be despensed to other patient (Release Current IP)',
'      UPDATE EDC_IP_DETAIL',
'         SET PATIENT_PROFILE_ID = NULL',
'           , PATIENT_VISIT_ID = NULL',
'           , IP_STATUS = :P1001_IP_STATUS',
'       WHERE IP_ID = V_CURR_IP_ID;',
'',
'      -- Replace Assigned IP table with New IP ',
'      UPDATE IWRS_CRF_DM_IP',
'         SET IP_ID = V_NEW_IP_ID',
'           , APP_FLG = ''A''',
'           , APP_BY = :APP_USER',
'           , APP_DT = LOCALTIMESTAMP',
'       WHERE DIP_ID = :P1001_DIP_ID;',
'',
'      INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                  VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''IP_ID'', :P1001_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                         , ''VARCHAR2'', CRO_IWRS_PKG.GET_BOTTLE_NAME(V_CURR_IP_ID), CRO_IWRS_PKG.GET_BOTTLE_NAME(V_NEW_IP_ID) );',
'',
'      INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                  VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P1001_DIP_ID, :P1001_REJ_RSN, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                         , ''VARCHAR2'', DECODE(V_APP_FLG,''R'',''Request'',''A'',''Approved'',''C'',''Rejected''), ''Approved'' );',
'',
'      INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                  VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_BY'', :P1001_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                         , ''VARCHAR2'', V_APP_BY, :APP_USER );',
'',
'      INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_DATE, NEW_DATE )',
'                                  VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_DT'', :P1001_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                         , ''DATE'', V_APP_DT, LOCALTIMESTAMP );',
'',
'      EDC_MAIL.IP_REFRESHED( :P37_PATIENT_PROFILE_ID',
'                           , :APP_EDC_PATIENT_VISIT_ID',
'                           , CRO_IWRS_PKG.GET_BOTTLE_NAME(V_CURR_IP_ID)',
'                           , CRO_IWRS_PKG.GET_BOTTLE_NAME(V_NEW_IP_ID)',
'                           , V_IP_STATUS_DESC );',
'',
'      -- Return Success Message',
'      -- HTP.P(''Current Kit '' || V_CURR_IP_ID_NAME || '' has been replaced with new one '' || V_NEW_IP_ID_NAME || '' (Please change status of old Kit from IP Management according to the status, So that it can not be dispnsed to other Subject)'');',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        HTP.P(''Valid kit not available at site for replacement.Kindly ask CRA to raise shipment request.'');',
'    END;',
'',
'  ELSIF :REQUEST = ''REJECT_REF_IP'' THEN',
'',
'    UPDATE IWRS_CRF_DM_IP',
'       SET APP_FLG = ''C''',
'         , APP_BY = :APP_USER',
'         , APP_DT = LOCALTIMESTAMP',
'         , REJ_RSN = :P1001_REJ_RSN',
'     WHERE DIP_ID = :P1001_DIP_ID;',
'',
'    INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P1001_DIP_ID, :P1001_REJ_RSN, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                       , ''VARCHAR2'', DECODE(V_APP_FLG,''R'',''Request'',''A'',''Approved'',''C'',''Rejected''), ''Rejected'' );',
'',
'    INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_BY'', :P1001_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                       , ''VARCHAR2'', V_APP_BY, :APP_USER );',
'',
'    INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_DATE, NEW_DATE )',
'                                VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_DT'', :P1001_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                       , ''DATE'', V_APP_DT, LOCALTIMESTAMP );',
'',
'    EDC_MAIL.IP_REFRESH_REJECT( :P37_PATIENT_PROFILE_ID, :APP_EDC_PATIENT_VISIT_ID, :APP_EDC_VISIT_NAME, V_CURR_IP_ID_NAME, :P1001_REJ_RSN);',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error, unable to get current Kit details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''APPROVE_REF_IP'',''REJECT_REF_IP'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Kit no. refreshed.'
,p_internal_uid=>2009006719879961192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11259939347343894500)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SHOW_REASON_FOR_CHANGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SQL CLOB;',
'    CURSOR C1 IS (SELECT ITEM_NAME',
'                       , SUBSTR(ITEM_NAME,1,INSTR(ITEM_NAME,''_CHANGE'',-1,1)-1) ITEM',
'                    FROM APEX_APPLICATION_PAGE_ITEMS',
'                   WHERE ITEM_NAME LIKE ''%CHANGE%''',
'                     AND PAGE_ID = :APP_PAGE_ID',
'                     AND APPLICATION_ID = :APP_ID',
'                     --and ITEM_NAME <> ''P1001_NUM1_CHANGE''',
'                 );',
'BEGIN',
'    --HTP.P(''<script language="Javascript">'');',
'    FOR I IN C1 LOOP',
'        V_SQL := ''$(''''#''||I.ITEM||'''''').change(function(){',
'                      $(''''#''||I.ITEM_NAME||'''''').show();',
'                      $(''''#''||I.ITEM_NAME||''_LABEL'''').show();',
'                  });'';',
'',
'        HTP.P(V_SQL);',
'    END LOOP;',
'    -- HTP.P(''</script>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10158988579202390407
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11271985258118679580)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REFRESH_IP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'/*',
'    Nikhil.B 28-Nov-2017',
'*/',
'',
'    V_CURR_IP_ID_NAME VARCHAR2(200); -- Current Bottle No.',
'    V_CURR_IP_ID      NUMBER;',
'    V_CURR_IP_ARM     NUMBER;        -- To get ARM of the current IP',
'    V_NEW_IP_ID_NAME  VARCHAR2(200); -- New Bottle No.',
'    V_NEW_IP_ID       NUMBER;',
'    V_MAX_IP_ID       NUMBER;        -- MAX IP id assigned to current subject visit',
'    V_DIP_ID          NUMBER := TO_NUMBER(apex_application.g_x01);',
'    V_REASON          VARCHAR2(4000) := apex_application.g_x02;',
'BEGIN',
'    -- Get current IP ID',
'    SELECT IP_ID',
'      INTO V_CURR_IP_ID',
'      FROM IWRS_CRF_DM_IP',
'     WHERE DIP_ID = V_DIP_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'    -- Get Current ARM and Bottle Name',
'    SELECT STUDY_ARM_ID',
'         , BOTTLE_NO',
'      INTO V_CURR_IP_ARM',
'         , V_CURR_IP_ID_NAME',
'      FROM EDC_IP_DETAIL',
'     WHERE IP_ID = V_CURR_IP_ID;',
'',
'    BEGIN',
'        --Get MAX IP ID from the IPs assigned to Subject in this Visit, so that previously released IP can not be reassigned to same subject',
'        SELECT MAX(IP_ID)',
'          INTO V_MAX_IP_ID',
'          FROM IWRS_CRF_DM_IP',
'         WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'        -- Find next available IP of same ARM',
'        SELECT IP_ID',
'             , BOTTLE_NO',
'          INTO V_NEW_IP_ID',
'             , V_NEW_IP_ID_NAME',
'          FROM (SELECT IP_ID',
'                     , BOTTLE_NO',
'                  FROM EDC_IP_DETAIL',
'                 WHERE STUDY_ARM_ID = V_CURR_IP_ARM',
'                   AND STUDY_ID = :APP_EDC_STUDY_ID',
'                   AND STUDY_SITE_ID = :APP_EDC_STUDY_SITE_ID',
'                   AND IP_STATUS = 3',
'                   AND PATIENT_PROFILE_ID IS NULL',
'                   AND PATIENT_VISIT_ID IS NULL',
'                   AND IP_ID > V_MAX_IP_ID       -- New IP must be after the MAX ID assigned to Subject in current Visit',
'                 ORDER BY 1',
'               )',
'         WHERE ROWNUM = 1;',
'',
'        -- Mark that New IP as Dispensed for current Patient',
'        UPDATE EDC_IP_DETAIL',
'           SET PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'             , PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID',
'             , IP_STATUS = 4 -- Dispensed to Patient',
'         WHERE IP_ID = V_NEW_IP_ID;',
'',
'        -- Clear Subject Data from current IP, so that it can available to be despensed to other patient (Release Current IP)',
'        UPDATE EDC_IP_DETAIL',
'           SET PATIENT_PROFILE_ID = NULL',
'             , PATIENT_VISIT_ID = NULL',
'             , IP_STATUS = 3',
'         WHERE IP_ID = V_CURR_IP_ID;',
'',
'        -- Replace Assigned IP table with New IP ',
'        UPDATE IWRS_CRF_DM_IP',
'           SET IP_ID = V_NEW_IP_ID',
'         WHERE DIP_ID = V_DIP_ID;',
'',
'        insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''IP_ID'', V_DIP_ID, V_REASON, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', SUN_21010_DEV.CRO_IWRS_PKG.GET_BOTTLE_NAME(V_CURR_IP_ID), SUN_21010_DEV.CRO_IWRS_PKG.GET_BOTTLE_NAME(V_NE'
||'W_IP_ID));',
'',
'',
'        -- Return Success Message',
'        HTP.P(''Current Kit '' || V_CURR_IP_ID_NAME || '' has been replaced with new one '' || V_NEW_IP_ID_NAME || '' (Please change status of old Kit from IP Management according to the status, So that it can not be dispnsed to other Subject)'');',
'',
'        EXCEPTION WHEN OTHERS THEN',
'            -- Rerturn Error',
'            HTP.P(''Error, No Kit available at Site to refresh with existing one, Please ask CRA to raise Shipment Request'');',
'    END;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        -- Rerturn Error',
'        HTP.P(''Error, unable to get current Kit details'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_internal_uid=>10171034489977175487
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10651719085220798405)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_FLAG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  TYPE NT_TYPE IS TABLE OF VARCHAR2(4000);',
'  NT NT_TYPE := NT_TYPE();',
'',
'  V_PATH VARCHAR2(500) := ''#APP_IMAGES#'';--''clth_diclod/r/files/static/v10Y/'';',
'  V_IMAGE VARCHAR2(500);',
'  CURSOR C1 IS',
'  select item_name,qry_status,4 from  EDC_CRF_QUERIES where qry_status = ''Closed'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'   union',
'  select item_name,qry_status,3 from  EDC_CRF_QUERIES where qry_status = ''Responded'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'   union',
'  select item_name,qry_status,2 from  EDC_CRF_QUERIES where qry_status = ''Reopened'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'   union',
'  select item_name,qry_status,1 from  EDC_CRF_QUERIES where qry_status = ''Open'' and page_id=:APP_PAGE_ID and PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID and study_id = :APP_EDC_STUDY_ID',
'   order by 3 desc;',
'BEGIN',
'  NT.EXTEND;',
'  NT(NT.COUNT) := ''function set_flags(){',
'    var jq_id = [];',
'    var itm_id = [];',
'    var img_nm = [];',
'    var titl_nm = []'';',
'',
'  FOR I IN C1 LOOP',
'',
'    IF I.QRY_STATUS = ''Closed'' THEN',
'      V_IMAGE := ''Flag_blue.png'';',
'    ELSIF I.QRY_STATUS = ''Responded'' THEN',
'      V_IMAGE := ''Flag_Green.png'';',
'    ELSIF I.QRY_STATUS = ''Reopened'' THEN',
'      V_IMAGE := ''Flag_orange.png'';',
'    ELSIF I.QRY_STATUS = ''Open'' THEN',
'      V_IMAGE := ''Flag_Yellow.png'';',
'    END IF;',
'',
'    NT.EXTEND;',
'    NT(NT.COUNT) := ''    jq_id.push(''''#''||I.ITEM_NAME||'''''');',
'    itm_id.push(''''''||I.ITEM_NAME||'''''');',
'    img_nm.push(''''''||V_IMAGE||'''''');',
'    titl_nm.push(''''''||I.QRY_STATUS||'''''')'';',
'  END LOOP;',
'',
'  NT.EXTEND;',
'  NT(NT.COUNT) := ''   var i;',
'    for (i = 0; i<jq_id.length; i++){',
'        //console.log(jq_id[i]);',
'            $(jq_id[i]+''''_flag'''').remove();',
'        var a = $(jq_id[i]).parent().html();',
'        if( ~a.indexOf(''''_DISPLAY'''') != 0 ){',
'            $(jq_id[i]+''''_DISPLAY'''').after(''''<img id="''''+itm_id[i]+''''_flag" src="''||V_PATH||''''''+img_nm[i]+''''" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="''''+titl_nm[i]+''''" />'''');',
'        }',
'        else if( ~a.indexOf(''''_DISPLAY'''') == 0 ){',
'            $(jq_id[i]).after(''''<img id="''''+itm_id[i]+''''_flag" src="''||V_PATH||''''''+img_nm[i]+''''" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="''''+titl_nm[i]+''''" />'''');',
'        }',
'    }',
'}',
'set_flags();'';',
'  IF NT.COUNT > 0 THEN',
'    FOR I IN NT.FIRST..NT.LAST LOOP',
'      HTP.P(NT(I));',
'    END LOOP;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9550768317079294312
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_SQL CLOB;',
'BEGIN',
'  V_SQL := ''var arry = [];',
'arry.push(''''#P1001_RANDOMIZATION_NUMBER'''');',
'arry.push(''''#P1001_DISPENSED_RESCUE'''');',
'arry.push(''''#P1001_IE_MET'''');',
'var i;',
'for (i = 0; i<arry.length; i++){',
'  	console.log(arry[i]);',
'    var a = $(arry[i]).parent().html();',
'    if( ~a.indexOf(''''_DISPLAY'''')){',
'        $(arry[i]+''''_DISPLAY'''').after(''''<img id="P1001_DISPENSED_RESCUE_flag" src="CLTH_DICLOd/r/1001300/files/static/v24Y/Flag_Yellow.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="Responded" />'''');',
'    }',
'    else{',
'        $(arry[i]).after(''''<img id="P1001_DISPENSED_RESCUE_flag" src="CLTH_DICLOd/r/1001300/files/static/v24Y/Flag_Yellow.png" style="vertical-align: middle;margin-top: -8px;margin-left:5px;" width="20px" title="Responded" />'''');',
'    }',
'}'';',
'HTP.P(V_SQL);',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10576332468172742613)
,p_process_sequence=>90
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_WINDOW_PERIOD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PP_ID NUMBER := TO_NUMBER(APEX_APPLICATION.G_X01);',
'  V_PARAM_ID NUMBER := TO_NUMBER(APEX_APPLICATION.G_X02);',
'  V_DATE_M DATE;',
'  V_DATE_P DATE;',
'  V_DATE DATE := TO_DATE(APEX_APPLICATION.G_X03,''DD-MON-YYYY'');',
'  V_PARAM_FK_ID NUMBER;',
'  V_DURATION NUMBER;',
'  V_DUR_M NUMBER;',
'  V_DUR_P NUMBER;',
'  V_WIND_M NUMBER;',
'  V_WIND_P NUMBER;',
'  V_MSG CLOB;',
'  V_VISIT VARCHAR2(4000);',
'BEGIN',
'  IF V_PARAM_ID NOT IN (1, 22) THEN',
'',
'    --SELECT PARAM_ID_FK, CASE PARAM_ID WHEN 1 THEN 0 WHEN 2 THEN 21 ELSE DURATION END DUR, WINDOW_PERIOD_M, WINDOW_PERIOD_P',
'    SELECT PARAM_ID_FK, DURATION DUR, WINDOW_PERIOD_M, WINDOW_PERIOD_P',
'      INTO V_PARAM_FK_ID, V_DURATION, V_WIND_M, V_WIND_P',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE PARAM_ID = V_PARAM_ID;',
'',
'    V_DUR_M := V_DURATION - V_WIND_M - 1;',
'    V_DUR_P := V_DURATION + V_WIND_P - 1;',
'',
'    IF V_PARAM_FK_ID IS NOT NULL THEN',
'--      SELECT ACTUAL_DATE - V_WIND_M, ACTUAL_DATE + V_WIND_P, VISIT_TITLE',
'      SELECT ACTUAL_DATE + V_DUR_M, ACTUAL_DATE + V_DUR_P, VISIT_TITLE',
'        INTO V_DATE_M, V_DATE_P, V_VISIT',
'        FROM EDC_PATIENT_VISIT',
'       WHERE PARAM_ID = V_PARAM_FK_ID',
'         AND PATIENT_PROFILE_ID = V_PP_ID;',
'',
'      IF V_DATE NOT BETWEEN V_DATE_M AND V_DATE_P THEN',
'--        V_MSG := ''The visit date entered is not within the visit window period of ''||V_DUR_M||'' to ''||V_DUR_P||'' days from the "''||V_VISIT||''". Please verify and correct, if required.'';',
'        V_MSG := ''The visit date entered is not within the visit window period of ''||V_DATE_M||'' to ''||V_DATE_P||'' days from the "''||V_VISIT||''". Please verify and correct, if required.'';',
'      END IF;',
'    END IF;',
'  END IF;',
'',
'  IF V_MSG IS NOT NULL THEN',
'    HTP.P(''alert(''''''||V_MSG||'''''');'');',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>9475381700031238520
);
wwv_flow_imp.component_end;
end;
/
