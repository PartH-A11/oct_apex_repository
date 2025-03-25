prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_tab_set=>'TS1'
,p_name=>'Subject Details'
,p_step_title=>'Subject Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function withdraw_subject(){',
'    if(confirm("Are you sure you want to Withdraw this Subject?")){',
'        withdraw_reason = $.trim(prompt("Please enter reason for Withdrawing this Subject."));',
'',
'        if(withdraw_reason){',
'            $(''#P37_WITHDRAW_REASON_TEMP'').val(withdraw_reason);',
'            apex.submit(''WITHDRAW_SUBJECT'');',
'        }',
'        else{',
'            alert(''Withdrawal reason is not entered, Please try again'');',
'        }',
'    }',
'}',
'',
'function discontinue_subject(){',
'    if(confirm("Are you sure you want to Discontinue this Subject?")){',
'        discontinue_reason = $.trim(prompt("Please enter reason for Discontinuing this Subject."));',
'',
'        if(discontinue_reason){',
'            $(''#P37_DISCONTINUE_REASON_TEMP'').val(discontinue_reason);',
'            apex.submit(''DISCONTINUE_SUBJECT'');',
'        }',
'        else{',
'            alert(''Discontinue reason is not entered, Please try again'');',
'        }',
'    }',
'}',
'',
'function screen_fail_subject(){',
'    if(confirm("Are you sure you want to Reject unblinding request?")){',
'        screen_fail_reason = $.trim(prompt("Please enter reason for rejection"));',
'',
'        if(screen_fail_reason){',
'            $(''#P37_SCREEN_FAIL_REASON_TEMP'').val(screen_fail_reason);',
'            apex.submit(''REJECT'');',
'        }',
'        else{',
'            alert(''Rejection reason is not entered, Please try again'');',
'        }',
'    }',
'}',
'',
'function screen_fail_subjects(){',
'    if(confirm("Are you sure you want to Reject unblinding request?")){',
'        screen_fail_reason = $.trim(prompt("Please enter reason for rejection"));',
'',
'        if(screen_fail_reason){',
'            $(''#P37_SCREEN_FAIL_REASON_TEMP'').val(screen_fail_reason);',
'            apex.submit(''REJECT_PV'');',
'        }',
'        else{',
'            alert(''Rejection reason is not entered, Please try again'');',
'        }',
'    }',
'}',
'',
'function approve_unblinding(){',
'    if(confirm("The subject will be unblinded.")){',
'            apex.submit(''APPROVE'');',
'        }',
'        ',
'    }',
'',
'',
'function approve_unblindings(){',
'    if(confirm("The subject will be unblinded.")){',
'            apex.submit(''APPROVE_PV'');',
'        }',
'        ',
'    }'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P37_PATIENT_INITIAL").on(''keyup'', function(e) {',
'    var val = $(this).val();',
'   if (val.match(/[^a-zA-Z-]/g)) {',
'       $(this).val(val.replace(/[^a-zA-Z-]/g, ''''));',
'   }',
'});',
''))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1886521220566186106)
,p_plug_name=>'PV Unblinding Information'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PV_UNBLINDED_BY        VARCHAR2(100);',
'    V_PV_UNBLINDED_ON        VARCHAR2(100);',
'    V_PV_REASON    VARCHAR2(4000);',
'    v_PV_RQ_BY          VARCHAR2(4000);',
'    v_PV_RQ_DATE        VARCHAR2(4000);',
'BEGIN',
'   SELECT PV_UNBLINDED_BY',
'         , TO_CHAR(PV_UNBLINDED_ON, ''DD-MON-YYYY HH12:MI PM'')',
'         , PV_REASON',
'         , UPPER(PV_RQ_BY)',
'         , TO_CHAR(PV_RQ_DATE,''DD-MON-YYYY HH12:MI AM'')',
'      INTO V_PV_UNBLINDED_BY',
'         , V_PV_UNBLINDED_ON',
'         , V_PV_REASON',
'         , v_PV_RQ_BY',
'         , v_PV_RQ_DATE',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE PV_UNBLINDED_BY IS NOT NULL',
'       AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    HTP.P(''<table style ="border: 1px solid black;">'');',
'        HTP.P(''<tbody>'');',
'        HTP.P(''<th style ="border: 1px solid black;">'');',
'        HTP.P(''<tr style ="border: 1px solid black;">'');',
'            HTP.P(''<td style ="border: 1px solid black;">'');HTP.P(''<b>&nbsp;&nbsp;Assigned Kit&nbsp;&nbsp;</b>'');HTP.P(''</td>'');',
'            HTP.P(''<td style ="border: 1px solid black;">'');HTP.P(''<b>&nbsp;&nbsp;Study ARM&nbsp;&nbsp;</b>'');HTP.P(''</td>'');',
'        HTP.P(''</tr>'');',
'        HTP.P(''</th>'');',
'            HTP.P(''</th>'');',
'        HTP.P(''</tr>'');',
'FOR I IN(SELECT A.ARM_NAME V_KIT_ARM',
'         , IP.BOTTLE_NO V_KIT_NUMBER',
'      FROM IWRS_CRF_DM_IP DP',
'         , EDC_PATIENT_VISIT V',
'         , EDC_IP_DETAIL IP',
'         , EDC_STUDY_ARM A',
'     WHERE DP.PATIENT_VISIT_ID = V.PATIENT_VISIT_ID',
'       AND DP.IP_ID = IP.IP_ID',
'       AND IP.STUDY_ARM_ID = A.STUDY_ARM_ID',
'       AND VISIT_NUMBER IS NOT NULL',
'       AND V.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) LOOP',
'        HTP.P(''<tr style ="border: 1px solid black;">'');',
'            HTP.P(''<td style ="border: 1px solid black;">'');HTP.P(''<b>&nbsp;&nbsp;''||i.V_KIT_NUMBER||''</b>'');HTP.P(''</td>'');',
'            HTP.P(''<td style ="border: 1px solid black;">'');HTP.P(''<b>&nbsp;&nbsp;''||i.V_KIT_ARM||''</b>'');HTP.P(''</td>'');',
'        HTP.P(''</tr>'');',
'END LOOP;',
'        HTP.P(''</tbody>'');',
'    HTP.P(''</table>'');',
'    HTP.P(''<hr/>'');',
'    HTP.P(''<b>Unblinding By</b> : ''                  || V_PV_UNBLINDED_BY);',
'    HTP.P(''<br/><b>Unblinding On</b> : ''             || V_PV_UNBLINDED_ON );',
'    HTP.P(''<br/><b>Unblinding Request By</b> : ''     || v_PV_RQ_BY );',
'    HTP.P(''<br/><b>Unblinding Request Date</b> : ''   || v_PV_RQ_DATE );',
'    HTP.P(''<br/><b>Reason for Unblinding</b> : ''    || V_PV_REASON);',
'EXCEPTION WHEN OTHERS THEN HTP.P(''GPV GHSDBNKFG'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND STATUS >= 3',
'--   AND status <> 9',
'   AND PV_NOTIFY= 1',
'   AND PV_UNBLINDED_BY IS NOT NULL',
'   AND :APP_EDC_ROLE_ID IN (34,13)',
'   AND PV_APP_FLG = 1;'))
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_UNBLINDED_BY        VARCHAR2(100);',
'    V_UNBLINDED_ON        VARCHAR2(100);',
'    V_UNBLINDED_REASON    VARCHAR2(4000);',
'    ',
'    V_KIT_NUMBER          VARCHAR2(100);',
'    V_KIT_ARM             VARCHAR2(100);',
'    V_MED_EMERGENCY       VARCHAR2(10);',
'BEGIN',
'    SELECT UNBLINDED_BY',
'         , TO_CHAR(UNBLINDED_ON, ''DD-MON-YYYY HH12:MI PM'')',
'         , UNBLINDED_REASON',
'         , MED_EMERGENCY',
'      INTO V_UNBLINDED_BY',
'         , V_UNBLINDED_ON',
'         , V_UNBLINDED_REASON',
'         , V_MED_EMERGENCY',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE UNBLINDED_BY IS NOT NULL',
'       AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    SELECT A.ARM_NAME',
'         , IP.BOTTLE_NO',
'      INTO V_KIT_ARM',
'         , V_KIT_NUMBER',
'      FROM IWRS_CRF_DM_IP DP',
'         , EDC_PATIENT_VISIT V',
'         , EDC_IP_DETAIL IP',
'         , EDC_STUDY_ARM A',
'     WHERE DP.PATIENT_VISIT_ID = V.PATIENT_VISIT_ID',
'       AND DP.IP_ID = IP.IP_ID',
'       AND IP.STUDY_ARM_ID = A.STUDY_ARM_ID',
'       AND V.VISIT_NUMBER = 2',
'       AND V.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND ROWNUM = 1;',
'',
'    HTP.P(''<b>Assigned Kit</b> : ''                 || V_KIT_NUMBER       );',
'    HTP.P(''<br/><b>Study ARM</b> : ''                 || V_KIT_ARM          );',
'    HTP.P(''<hr/>'');',
'    HTP.P(''<b>Unblinded By</b> : ''                 || V_UNBLINDED_BY     );',
'    HTP.P(''<br/><b>Unblinded On</b> : ''            || V_UNBLINDED_ON     );',
'    HTP.P(''<br/><b>Reason for Unblinding</b> : ''   || V_UNBLINDED_REASON );',
'    HTP.P(''<br/><b>Medical Emergency</b> : ''   || V_MED_EMERGENCY );',
'END;'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5238767025927115039)
,p_plug_name=>'ePRO'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height:300px;"'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_status number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'        select status into v_status',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 > 0 AND V_STATUS IN (3,7) THEN',
'        RETURN TRUE;',
'    ELSIF :P37_PATIENT_PROFILE_ID IS NOT NULL AND V_STATUS IN (3,7) THEN',
'       RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10641776538997306028)
,p_plug_name=>'Unblinding Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_UNBLINDED_BY        VARCHAR2(100);',
'    V_UNBLINDED_ON        VARCHAR2(100);',
'    V_UNBLINDED_REASON    VARCHAR2(4000);',
'    ',
'    V_KIT_NUMBER          VARCHAR2(100);',
'    V_KIT_ARM             VARCHAR2(100);',
'    V_MED_EMERGENCY       VARCHAR2(10);',
'    v_UNBLN_RQ_BY          VARCHAR2(4000);',
'    v_UNBLN_RQ_DATE        VARCHAR2(4000);',
'BEGIN',
'   SELECT UNBLINDED_BY',
'         , TO_CHAR(UNBLINDED_ON, ''DD-MON-YYYY HH12:MI PM'')',
'         , UNBLINDED_REASON',
'         , MED_EMERGENCY',
'         , UPPER(UNBLINDED_RQ_BY)',
'         , TO_CHAR(UNBLINDED_RQ_DATE,''DD-MON-YYYY HH12:MI AM'')',
'      INTO V_UNBLINDED_BY',
'         , V_UNBLINDED_ON',
'         , V_UNBLINDED_REASON',
'         , V_MED_EMERGENCY',
'         , v_UNBLN_RQ_BY',
'         , v_UNBLN_RQ_DATE',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE UNBLINDED_BY IS NOT NULL',
'       AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    HTP.P(''<table style ="border: 1px solid black;">'');',
'        HTP.P(''<tbody>'');',
'        HTP.P(''<th style ="border: 1px solid black;">'');',
'        HTP.P(''<tr style ="border: 1px solid black;">'');',
'            HTP.P(''<td style ="border: 1px solid black;">'');HTP.P(''<b>&nbsp;&nbsp;Assigned Kit&nbsp;&nbsp;</b>'');HTP.P(''</td>'');',
'            HTP.P(''<td style ="border: 1px solid black;">'');HTP.P(''<b>&nbsp;&nbsp;Study ARM&nbsp;&nbsp;</b>'');HTP.P(''</td>'');',
'        HTP.P(''</tr>'');',
'        HTP.P(''</th>'');',
'            HTP.P(''</th>'');',
'        HTP.P(''</tr>'');',
'FOR I IN(SELECT A.ARM_NAME V_KIT_ARM',
'         , IP.BOTTLE_NO V_KIT_NUMBER',
'      FROM IWRS_CRF_DM_IP DP',
'         , EDC_PATIENT_VISIT V',
'         , EDC_IP_DETAIL IP',
'         , EDC_STUDY_ARM A',
'     WHERE DP.PATIENT_VISIT_ID = V.PATIENT_VISIT_ID',
'       AND DP.IP_ID = IP.IP_ID',
'       AND IP.STUDY_ARM_ID = A.STUDY_ARM_ID',
'       AND VISIT_NUMBER IS NOT NULL',
'       AND V.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) LOOP',
'        HTP.P(''<tr style ="border: 1px solid black;">'');',
'            HTP.P(''<td style ="border: 1px solid black;">'');HTP.P(''<b>&nbsp;&nbsp;''||i.V_KIT_NUMBER||''</b>'');HTP.P(''</td>'');',
'            HTP.P(''<td style ="border: 1px solid black;">'');HTP.P(''<b>&nbsp;&nbsp;''||i.V_KIT_ARM||''</b>'');HTP.P(''</td>'');',
'        HTP.P(''</tr>'');',
'END LOOP;',
'        HTP.P(''</tbody>'');',
'    HTP.P(''</table>'');',
'    HTP.P(''<hr/>'');',
'    HTP.P(''<b>Unblinding By</b> : ''                  || V_UNBLINDED_BY);',
'    HTP.P(''<br/><b>Unblinding On</b> : ''             || V_UNBLINDED_ON );',
'    HTP.P(''<br/><b>Unblinding Request By</b> : ''     || v_UNBLN_RQ_BY );',
'    HTP.P(''<br/><b>Unblinding Request Date</b> : ''   || v_UNBLN_RQ_DATE );',
'    HTP.P(''<br/><b>Reason for Unblinding</b> : ''    || V_UNBLINDED_REASON);',
'    --HTP.P(''<br/><b>Medical Emergency</b> : ''   || V_MED_EMERGENCY );',
'EXCEPTION WHEN OTHERS THEN HTP.P(''GG'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE UNBLINDED_BY IS NOT NULL',
'   AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   and status = 9',
'   AND :APP_EDC_ROLE_ID IN (13, 15 /* Admin, PI */)'))
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_UNBLINDED_BY        VARCHAR2(100);',
'    V_UNBLINDED_ON        VARCHAR2(100);',
'    V_UNBLINDED_REASON    VARCHAR2(4000);',
'    ',
'    V_KIT_NUMBER          VARCHAR2(100);',
'    V_KIT_ARM             VARCHAR2(100);',
'    V_MED_EMERGENCY       VARCHAR2(10);',
'BEGIN',
'    SELECT UNBLINDED_BY',
'         , TO_CHAR(UNBLINDED_ON, ''DD-MON-YYYY HH12:MI PM'')',
'         , UNBLINDED_REASON',
'         , MED_EMERGENCY',
'      INTO V_UNBLINDED_BY',
'         , V_UNBLINDED_ON',
'         , V_UNBLINDED_REASON',
'         , V_MED_EMERGENCY',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE UNBLINDED_BY IS NOT NULL',
'       AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    SELECT A.ARM_NAME',
'         , IP.BOTTLE_NO',
'      INTO V_KIT_ARM',
'         , V_KIT_NUMBER',
'      FROM IWRS_CRF_DM_IP DP',
'         , EDC_PATIENT_VISIT V',
'         , EDC_IP_DETAIL IP',
'         , EDC_STUDY_ARM A',
'     WHERE DP.PATIENT_VISIT_ID = V.PATIENT_VISIT_ID',
'       AND DP.IP_ID = IP.IP_ID',
'       AND IP.STUDY_ARM_ID = A.STUDY_ARM_ID',
'       AND V.VISIT_NUMBER = 2',
'       AND V.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND ROWNUM = 1;',
'',
'    HTP.P(''<b>Assigned Kit</b> : ''                 || V_KIT_NUMBER       );',
'    HTP.P(''<br/><b>Study ARM</b> : ''                 || V_KIT_ARM          );',
'    HTP.P(''<hr/>'');',
'    HTP.P(''<b>Unblinded By</b> : ''                 || V_UNBLINDED_BY     );',
'    HTP.P(''<br/><b>Unblinded On</b> : ''            || V_UNBLINDED_ON     );',
'    HTP.P(''<br/><b>Reason for Unblinding</b> : ''   || V_UNBLINDED_REASON );',
'    HTP.P(''<br/><b>Medical Emergency</b> : ''   || V_MED_EMERGENCY );',
'END;'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147502127420630222)
,p_plug_name=>'Subject Profile'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:720px;margin-right:5px";'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147506136388630230)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132727102911981)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147507135569630232)
,p_plug_name=>'Subject Visit'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130935592911980)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PV.PATIENT_VISIT_ID, ',
'PV.PATIENT_PROFILE_ID,',
'PV.VISIT_NUMBER,',
'PV.VISIT_TITLE,',
'PV.DESCRIPTION,',
'PV.VISIT_TYPE,',
'PV.SCHEDULE_DATE,',
'PV.ACTUAL_DATE,',
'PV.CRF_STATUS,',
'PV.TOTAL_CRF_PAGES,',
'PV.WINDOW_PERIOD_P,',
'PV.COLLECTED_CRF,',
'PV.DURATION,',
'PV.WINDOW_PERIOD_M,',
'REPLACE (REPLACE (REPLACE (REPLACE (PVP.CRF_LINK,''&SESSION'',:APP_SESSION),''&APP_ID'',:APP_ID),''&DEBUG'',''NO''),CHR(46)) CRF_LINK,',
'''<a href=''||replace (replace (replace (REPLACE (PVP.CRF_LINK,''&SESSION'',:APP_SESSION),''&APP_ID'',:APP_ID),''&DEBUG'',''NO''),chr(46))||trim(PV.PATIENT_VISIT_ID)||'',''||trim(PV.PATIENT_PROFILE_ID)|| ''> ''|| PV.VISIT_TITLE ||'' </a>'' as "link"',
'FROM EDC_PATIENT_VISIT PV ,EDC_PATIENT_VISIT_PARAMS PVP',
' WHERE PV.PATIENT_PROFILE_ID=:P37_PATIENT_PROFILE_ID  AND PV.VISIT_NUMBER = PVP.PARAM_ID',
'order by PV.VISIT_NUMBER',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12147507352243630233)
,p_name=>'Patient Detail'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::P44_PATIENT_VISIT_ID:#PATIENT_VISIT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'KARTIK.PATEL'
,p_internal_uid=>150883627759064453
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147507450622630233)
,p_db_column_name=>'PATIENT_VISIT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Subject Visit Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'PATIENT_VISIT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147507551162630234)
,p_db_column_name=>'PATIENT_PROFILE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Subject Profile Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'PATIENT_PROFILE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147507625606630234)
,p_db_column_name=>'VISIT_TITLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Visit Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VISIT_TITLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147507744730630234)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147507848910630234)
,p_db_column_name=>'VISIT_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'VISIT_TYPE'
,p_rpt_named_lov=>wwv_flow_imp.id(12059524149007645204)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147507935090630234)
,p_db_column_name=>'SCHEDULE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Schedule Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'SCHEDULE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508027417630234)
,p_db_column_name=>'ACTUAL_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Actual Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTUAL_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508151001630234)
,p_db_column_name=>'CRF_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'CRF Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CRF_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(12060104154086270565)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508244953630235)
,p_db_column_name=>'TOTAL_CRF_PAGES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Total CRF<br/>Pages'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_CRF_PAGES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508331093630235)
,p_db_column_name=>'WINDOW_PERIOD_P'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Window Period P'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'WINDOW_PERIOD_P'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508447359630235)
,p_db_column_name=>'COLLECTED_CRF'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Collected<br/>CRF'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'COLLECTED_CRF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508536652630235)
,p_db_column_name=>'DURATION'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Duration'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'DURATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508646513630235)
,p_db_column_name=>'WINDOW_PERIOD_M'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Window Period M'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'WINDOW_PERIOD_M'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508735518630235)
,p_db_column_name=>'VISIT_NUMBER'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Visit<br/>Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'VISIT_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508838903630235)
,p_db_column_name=>'CRF_LINK'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Crf Link'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CRF_LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12147508929628630235)
,p_db_column_name=>'link'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Link'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'link'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12147509053255630235)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1508854'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'VISIT_NUMBER:VISIT_TITLE:VISIT_TYPE:CRF_STATUS:SCHEDULE_DATE:ACTUAL_DATE:DESCRIPTION:CRF_LINK:link'
,p_sort_column_1=>'VISIT_NUMBER'
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
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12147509428721630238)
,p_name=>'Subject Visit'
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>11
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT PV.PATIENT_VISIT_ID, ',
'PV.PATIENT_PROFILE_ID,',
'PV.VISIT_NUMBER,',
'PV.VISIT_TITLE,',
'PV.DESCRIPTION,',
'DECODE(PV.VISIT_TITLE,',
'                      ''Visit - 1'',''Randomization/Catheter Insertion'',',
'                      ''Visit - 2'',''Catheter Removal'',',
'                      ''Visit - 3'',''Followup'') as "VISIT_TYPE", ',
'--PV.VISIT_TYPE,',
'PV.SCHEDULE_DATE,',
'PV.ACTUAL_DATE,',
'PV.CRF_STATUS,',
'PV.TOTAL_CRF_PAGES,',
'PV.WINDOW_PERIOD_P,',
'PV.COLLECTED_CRF,',
'PV.DURATION,',
'PV.WINDOW_PERIOD_M,',
'''<a href=''||replace (replace (replace (REPLACE (PVP.CRF_LINK,''&SESSION'',:APP_SESSION),''&APP_ID'',:APP_ID),''&DEBUG'',''NO''),chr(46))||trim(PV.PATIENT_VISIT_ID)||'',''||trim(PV.PATIENT_PROFILE_ID)|| ''> ''|| PV.VISIT_TITLE ||'' </a>'' as "link"',
'FROM EDC_PATIENT_VISIT PV ,EDC_PATIENT_VISIT_PARAMS PVP',
' WHERE PV.PATIENT_PROFILE_ID=:P37_PATIENT_PROFILE_ID  AND PV.PARAM_ID = PVP.PARAM_ID',
'order by TO_NUMBER(PV.VISIT_NUMBER)'))
,p_display_when_condition=>':P37_PATIENT_PROFILE_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146134054662911984)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECODE(PV.VISIT_TITLE,''Screening Visit'',''Screening Visit'',',
'                      ''Visit - 1'',''Randomization/Catheter Insertion'',',
'                      ''Visit - 2'',''Catheter Removal'',',
'                      ''Visit - 3'',''Followup'') as "VISIT_TYPE", '))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147509633068630238)
,p_query_column_id=>1
,p_column_alias=>'PATIENT_VISIT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Patient Visit Id'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147509735889630238)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_PROFILE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Patient Profile Id'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147509835512630238)
,p_query_column_id=>3
,p_column_alias=>'VISIT_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Visit<br/>Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147509957127630238)
,p_query_column_id=>4
,p_column_alias=>'VISIT_TITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Visit Title'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510037570630238)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>10
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510142656630238)
,p_query_column_id=>6
,p_column_alias=>'VISIT_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510240821630239)
,p_query_column_id=>7
,p_column_alias=>'SCHEDULE_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Schedule Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510341536630239)
,p_query_column_id=>8
,p_column_alias=>'ACTUAL_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Visit Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510436664630239)
,p_query_column_id=>9
,p_column_alias=>'CRF_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'CRF Status'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12147516948121630253)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510538513630239)
,p_query_column_id=>10
,p_column_alias=>'TOTAL_CRF_PAGES'
,p_column_display_sequence=>11
,p_column_heading=>'Total Crf Pages'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510642444630239)
,p_query_column_id=>11
,p_column_alias=>'WINDOW_PERIOD_P'
,p_column_display_sequence=>12
,p_column_heading=>'Window Period P'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510751309630239)
,p_query_column_id=>12
,p_column_alias=>'COLLECTED_CRF'
,p_column_display_sequence=>13
,p_column_heading=>'Collected Crf'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510856458630239)
,p_query_column_id=>13
,p_column_alias=>'DURATION'
,p_column_display_sequence=>14
,p_column_heading=>'Duration'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147510931868630239)
,p_query_column_id=>14
,p_column_alias=>'WINDOW_PERIOD_M'
,p_column_display_sequence=>15
,p_column_heading=>'Window Period M'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12147511056300630239)
,p_query_column_id=>15
,p_column_alias=>'link'
,p_column_display_sequence=>6
,p_column_heading=>'Visit Title'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12151905234648350314)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11268403439795746814)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'DISCONTINUE_SUBJECT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Discontinue Subject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:discontinue_subject();'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:discontinue_subject();',
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND STATUS IN ( 3 /* ENrolled */)',
'   AND (SELECT COUNT(*) FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) > 1'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11005617733543198020)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'WITHDRAW_SUBJECT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Withdraw Subject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:withdraw_subject();'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
' /*AND 0 = (SELECT COUNT(*)  -- Button should be visible for Dosing 1 to 6 only',
'              FROM EDC_PATIENT_VISIT',
'             WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'               AND VISIT_NUMBER IN (8, 9)',
'           ) */',
'   AND STATUS IN (3 /* Enrolled */ )',
'   AND (SELECT COUNT(*) FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) > 1'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11012177314823415397)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'SCREEN_FAIL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Screen Fail Subject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:screen_fail_subject();'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Row Returned',
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND STATUS IN (1/* Screened */)'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9050842558142724453)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'APPROVE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Approve Unblinding'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:approve_unblinding();'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND STATUS >= 3',
'   AND status <> 9',
'   AND UNBLND_NOTIFY = 1',
'   AND :APP_EDC_ROLE_ID NOT IN(34)'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9050842697938724454)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'REJECT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Reject Unblinding'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:screen_fail_subject();'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND STATUS >= 3 ',
'   AND status <> 9',
'   AND UNBLND_NOTIFY = 1',
'   AND :APP_EDC_ROLE_ID NOT IN(34)'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10641776224504306025)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'UNBLIND_SUBJECT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Unblind Subject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE TRIM(UNBLINDED_BY) IS NULL',
'   AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_ROLE_ID IN (13, 15 /* Admin, PI*/ )',
'   AND STATUS IN (3 /* ENrolled */)',
'   ',
'   -------',
'   ',
'   with DATA_TAB AS (select MAX(PATIENT_VISIT_ID) from EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID IN (:P37_PATIENT_PROFILE_ID)),',
'tab_data as (SELECT count(1) as cnt',
'                      FROM IWRS_CRF_DM_IP',
'                     WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM DATA_TAB)',
'                       AND IS_IP_DISPENSED = ''Yes''',
'                       AND APP_FLG IS NULL',
'                       AND (:APP_EDC_USER_TYPE IN (2,3) OR :APP_EDC_ROLE_ID = 13)',
'                       AND (SELECT STATUS FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) IN (3,8, 7)',
'                       AND (SELECT PATIENT_VISIT_ID FROM DATA_TAB) >= ',
'                        (SELECT MAX(PATIENT_VISIT_ID) FROM EDC_PATIENT_VISIT ',
'                            WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID)),',
'PARAM_TAB AS (SELECT MAX(TO_NUMBER(VISIT_NUMBER)) AS PARAM_ID FROM EDC_PATIENT_VISIT ',
'                  WHERE PATIENT_PROFILE_ID IN (:P37_PATIENT_PROFILE_ID))   ',
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_ROLE_ID IN (13, 15) /* Admin, PI*/',
'   AND STATUS >=3 ',
'   AND unblnd_notify is null',
'   AND :APP_EDC_ROLE_ID NOT IN(34)',
'   AND (CASE WHEN(SELECT PARAM_ID FROM PARAM_TAB) IN(3,6,9) THEN 1 ELSE (SELECT CNT FROM TAB_DATA) END) > 0;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1874522752160870634)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'APPROVE_PV'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve Unblinding'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:approve_unblindings();'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND STATUS >= 3',
'   AND status <> 9',
'   AND PV_NOTIFY= 1',
'   AND :APP_EDC_ROLE_ID IN (25,13)',
'   AND PV_REG_FLG = 1'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1874522875031870635)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'REJECT_PV'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject Unblinding'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:screen_fail_subjects();'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12163032826120523183)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Row Returned',
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND STATUS IN (1/* Screened */)',
'   ',
'   ',
'   rows returned---',
'   SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND STATUS >= 3 ',
'   AND status <> 9',
'   AND PV_NOTIFY = 1',
'   AND :APP_EDC_ROLE_ID IN (25,13)',
'   AND PV_REG_FLG = 1;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1877887176698103752)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'UNBLIND_SUBJECT_PV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Unblind Subject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_ROLE_ID IN (13, 15) /* Admin, PI*/',
'   AND STATUS >=3 ',
'   AND unblnd_notify is null',
'   AND :APP_EDC_ROLE_ID IN(34,13)',
'   ',
'   ',
'   -----rows returned-----',
'   with DATA_TAB AS (select MAX(PATIENT_VISIT_ID) from EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID IN (:P37_PATIENT_PROFILE_ID)),',
'tab_data as (SELECT count(1) as cnt',
'                      FROM IWRS_CRF_DM_IP',
'                     WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM DATA_TAB)',
'                       AND IS_IP_DISPENSED IS NOT NULL',
'                       AND APP_FLG IS NULL',
'                       AND (:APP_EDC_USER_TYPE IN (1) OR :APP_EDC_ROLE_ID IN (13,34))',
'                       AND (SELECT STATUS FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID) IN (3, 7,8)',
'                       AND (SELECT PATIENT_VISIT_ID FROM DATA_TAB) >= ',
'                        (SELECT MAX(PATIENT_VISIT_ID) FROM EDC_PATIENT_VISIT ',
'                            WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID)),',
'PARAM_TAB AS (SELECT MAX(TO_NUMBER(VISIT_NUMBER)) AS PARAM_ID FROM EDC_PATIENT_VISIT WHERE PATIENT_PROFILE_ID IN (:P37_PATIENT_PROFILE_ID))',
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :APP_EDC_ROLE_ID IN (13,34) /* Admin, PV*/',
'   AND STATUS >=3 ',
'   AND (pv_notify is null or pv_notify = 0)',
'   --AND (select cnt from tab_data) > 0 ;',
'   AND (CASE WHEN(SELECT PARAM_ID FROM PARAM_TAB) IN(3,6,9) THEN 1 ELSE (SELECT CNT FROM TAB_DATA) END) > 0;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147502953076630224)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_PATIENT_PROFILE',
' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'   AND :P37_PATIENT_PROFILE_ID IS NOT NULL',
'   AND :APP_EDC_ROLE_ID IN(13,15,16)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
,p_database_action=>'UPDATE'
,p_button_comment=>' AND (STATUS NOT IN (4, 5, 6 /*Discontinued, Completed, Withdrawn */))'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147503351438630224)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8288338891135184627)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P37_PATIENT_PROFILE_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147509235706630236)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12147507135569630232)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Create Visit'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:81:P81_PATIENT_PROFILE_ID:&P37_PATIENT_PROFILE_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147502732403630224)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enroll Subject'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P37_PATIENT_PROFILE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(12146158755186328484)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11642955960781515218)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146137556138911991)
,p_button_image_alt=>'PI Signed Off'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12162821126680345234)
,p_button_comment=>'EDC_WORKFLOW.is_ready_for_authorize(:APP_EDC_PATIENT_VISIT_ID,''PI'') = 1'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12147503125777630224)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(12146175855924637885)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Condition',
'->>Value of Item/Column in Expression 1 is not null',
'P37_PATIENT_PROFILE_ID'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5173774003843500304)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_button_name=>'EPRO_CRED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Subject Diary'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_status number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'        select status into v_status',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 > 0 AND V_STATUS IN (3,5,7) AND :APP_EDC_ROLE_ID IN (13,15,16) THEN --,19,27,30) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 > 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789568391590567988)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_button_name=>'UPDATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_status number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'        select status into v_status',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 = 0 AND V_STATUS IN (3,5,7) AND :APP_EDC_ROLE_ID IN (13,15,16) THEN --,19,27,30) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4272707699384419179)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_button_name=>'RESEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Resend Credentials'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_status number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'        select status into v_status',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 = 0 AND V_STATUS IN (3,5,7) AND :P37_EPRO_DIARY_TYPE = ''Electronic''',
'    AND :APP_EDC_ROLE_ID IN (13,15,16,27,30) THEN --,19,27,30) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'plsql function body :',
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_status number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'        select status into v_status',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 = 0 AND V_STATUS IN (3,7) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3790157494848114049)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_button_name=>'AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_status number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'        select status into v_status',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 = 0 AND V_STATUS IN (3,5,7) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12147516835316630252)
,p_branch_name=>'Go To Page 45'
,p_branch_action=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:1001:APP_EDC_PATIENT_VISIT_ID,P37_PATIENT_PROFILE_ID:&P37_PATIENT_VISIT_ID.,&P37_PATIENT_PROFILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':REQUEST IN (''CREATE'')'
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1886119558620453841)
,p_name=>'P37_PV_UNBLINDED_REASON'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>PV - Reason For Unblinding</b>'
,p_source=>'PV_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>2000
,p_cHeight=>3
,p_tag_attributes=>'readonly = "readonly;"'
,p_colspan=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P37_PV_UNBLINDED_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3108466012426748688)
,p_name=>'P37_LOST_TO_FOLLOWUP_REASON'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Lost to Follow up Reason</b>'
,p_source=>'LOST_TO_FOLLOWUP_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P37_LOST_TO_FOLLOWUP_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3544241934792906314)
,p_name=>'P37_NEW'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_prompt=>'<b>Important Note: Please click on ''GENERATE SUBJECT DIARY'' to create the subject diary<br> in the web application and generate the ePRO credentials.</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
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
 p_id=>wwv_flow_imp.id(3790156765265114042)
,p_name=>'P37_EPRO_DIARY_TYPE_CHANGE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason for Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5238766947640115038)
,p_name=>'P37_EPRO_STDT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Select Date of Treatment Day 1 </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'EPRO_STDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>500
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_rowspan=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'    ',
'    select count(1) into v_cnt',
'    from edc_patient_profile',
'    where epro_stdt is null',
'    and patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'    ',
'    if v_cnt = 0 then        --there is data in epro_stdt column',
'        return true;',
'    else',
'        return false;',
'    end if;',
'',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1950:2021'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5238767146905115040)
,p_name=>'P37_EPRO_STTM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Select Time of Treatment Day 1 </b>'
,p_source=>'EPRO_STTM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Morning;Morning,Evening;Evening'
,p_tag_attributes=>'readonl'
,p_colspan=>5
,p_rowspan=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'    ',
'    select count(1) into v_cnt',
'    from edc_patient_profile',
'    where epro_sttm is null',
'    and patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'    ',
'    if v_cnt = 0 then        --there is data in epro_sttm column',
'        return true;',
'    else',
'        return false;',
'    end if;',
'',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5238767267866115041)
,p_name=>'P37_EPRO_DIARY_TYPE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(5238767025927115039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Select the Diary Type </b>'
,p_source=>'EPRO_DIARY_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Electronic;Electronic,Paper;Paper'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8288312541991084686)
,p_name=>'P37_SCREENING_DATE_CHANGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_prompt=>'<b>Reason For Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9050756999028010356)
,p_name=>'P37_MAX_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_item_default=>'to_Date(to_char(localtimestamp,''DD-MON-YYYY''),''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9050842876435724456)
,p_name=>'P37_UNBLINDED_REASON'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Reason For Unblinding</b>'
,p_source=>'UNBLINDED_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>3
,p_tag_attributes=>'readonly = "readonly;"'
,p_colspan=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P37_UNBLINDED_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10641773802884306000)
,p_name=>'P37_DISCONTINUE_REASON_TEMP'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10641773869747306001)
,p_name=>'P37_DISCONTINUE_REASON'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Withdrawn/Discontinued/Lost To Follow up  Reason</b>'
,p_source=>'DISCONTINUE_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P37_DISCONTINUE_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11005617794676198021)
,p_name=>'P37_WITHDRAW_REASON_TEMP'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11005618008292198023)
,p_name=>'P37_WITHDRAW_REASON'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Withdraw Reason</b>'
,p_source=>'WITHDRAW_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P37_WITHDRAW_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11012177734164415401)
,p_name=>'P37_SCREEN_FAIL_REASON_TEMP'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11012177795004415402)
,p_name=>'P37_SCREEN_FAIL_REASON'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Screen Fail Reason</b>'
,p_source=>'SCREEN_FAIL_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cHeight=>3
,p_colspan=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P37_SCREEN_FAIL_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when=>':P37_SCREEN_FAIL_REASON IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11646259906806484036)
,p_name=>'P37_PATIENT_INITIAL_CHANGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_prompt=>'<b>Reason For Change</b>'
,p_placeholder=>'Reason for Change'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136432739911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11646290846803554138)
,p_name=>'P37_SCREENING_NUMBER_FINAL_CHANGE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_prompt=>'<b>Reason For Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11997056920812994436)
,p_name=>'P37_PATIENT_VISIT_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147503539591630226)
,p_name=>'P37_RANDOMIZATION_NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Randomization Number'
,p_source=>'RANDOMNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>9
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'readonly="readonly"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_cnt number;',
'begin',
'if :P37_PATIENT_PROFILE_ID IS NULL THEN ',
'RETURN FALSE;',
'ELSE',
'',
'select count(*) ',
'  INTO V_CNT',
'  from edc_patient_profile',
' where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'   and randomno is not null;',
'',
'IF V_CNT > 0 THEN',
' RETURN TRUE;',
'ELSE',
' RETURN FALSE;',
'END IF;',
'',
'END IF;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_cnt number;',
'begin',
'if :P37_PATIENT_PROFILE_ID IS NULL THEN ',
'RETURN FALSE;',
'ELSE',
'',
'select count(*) ',
'  INTO V_CNT',
'  from edc_patient_profile',
' where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'   and randomno is not null;',
'',
'IF V_CNT > 0 THEN',
' RETURN TRUE;',
'ELSE',
' RETURN FALSE;',
'END IF;',
'',
'END IF;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147503743465630227)
,p_name=>'P37_RANDOMIZATION_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Randomization Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'RANDOMIZATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_cnt number;',
'begin',
'if :P37_PATIENT_PROFILE_ID IS NULL THEN ',
'RETURN FALSE;',
'ELSE',
'',
'select count(*) ',
'  INTO V_CNT',
'  from edc_patient_profile',
' where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'   and randomno is not null;',
'',
'IF V_CNT > 0 THEN',
' RETURN TRUE;',
'ELSE',
' RETURN FALSE;',
'END IF;',
'',
'END IF;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_cnt number;',
'begin',
'if :P37_PATIENT_PROFILE_ID IS NULL THEN ',
'RETURN FALSE;',
'ELSE',
'',
'select count(*) ',
'  INTO V_CNT',
'  from edc_patient_profile',
' where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'   and randomno is not null;',
'',
'IF V_CNT > 0 THEN',
' RETURN TRUE;',
'ELSE',
' RETURN FALSE;',
'END IF;',
'',
'END IF;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147503937615630227)
,p_name=>'P37_STUDY_SITE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site'
,p_source=>'STUDY_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.site_number || '' ('' || FIRST_NAME || '' '' || LAST_NAME || '' - '' || b.invname || '')'' D',
'     , A.STUDY_SITE_ID R',
'  FROM EDC_STUDY_SITES A,',
'       EDC_SITES B',
' WHERE A.SITE_ID = B.SITE_ID',
'   AND A.STUDY_ID = :APP_EDC_STUDY_ID',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_colspan=>5
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>':P37_PATIENT_PROFILE_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SITE_NUMBER||'' - ''||EDC_SITE_PKG.get_site_name(SITE_ID)||'' (''||EDC_SITE_PKG.get_investigator_name(SITE_ID)||'')'' d',
'     , STUDY_SITE_ID r ',
'  from edc_study_sites a',
' where status IN (1,2,3)',
'   AND EDC_AUTH_PKG.CHECK_STUDY_SITE_ACCESS(A.STUDY_SITE_ID) <> 0',
' order by d'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147504138118630228)
,p_name=>'P37_SCREENING_NUMBER_FLAG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147504526958630228)
,p_name=>'P37_SCREENING_NUMBER_FINAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subject Number'
,p_source=>'SCRNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>6
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>'P37_PATIENT_PROFILE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147504745760630228)
,p_name=>'P37_SCR_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147504931719630228)
,p_name=>'P37_COMMENTS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Comments </b>'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>43
,p_cMaxlength=>500
,p_cHeight=>2
,p_colspan=>5
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147505139779630228)
,p_name=>'P37_PATIENT_INITIAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subject Initials'
,p_source=>'PTINTL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>3
,p_tag_attributes=>'style="text-transform: uppercase;"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147505336729630229)
,p_name=>'P37_PATIENT_PROFILE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Patient Profile Id'
,p_source=>'PATIENT_PROFILE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147505554181630229)
,p_name=>'P37_SCREENING_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_item_default=>'to_char(localtimestamp,''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Screening Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'SCREENING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>'P37_PATIENT_PROFILE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(12146136829962911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'&P37_MAX_DATE.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147505941840630229)
,p_name=>'P37_STATUS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(12147502127420630222)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'<b> Status </b>'
,p_pre_element_text=>'<font color="red" size="5" > <b>'
,p_post_element_text=>'</b> </font>'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_PATIENT_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''PATIENT_STATUS'' and lv.status=1 --and stored_value<> ''9''',
'order by lv.sequence'))
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136625482911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147506336679630232)
,p_name=>'P37_UPDATED_ON'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(12147506136388630230)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated On:'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147506529744630232)
,p_name=>'P37_CREATED_BY'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(12147506136388630230)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147506737044630232)
,p_name=>'P37_CREATED_ON'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(12147506136388630230)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created On:'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12147506946318630232)
,p_name=>'P37_UPDATED_BY'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(12147506136388630230)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By:'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(12147511634805630244)
,p_computation_sequence=>10
,p_computation_item=>'P37_SCREENING_NUMBER_FINAL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT SCRNO FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID'
,p_compute_when=>'P37_PATIENT_PROFILE_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11276610314667835766)
,p_validation_name=>'P37_STUDY_SITE_ID must be Active'
,p_validation_sequence=>5
,p_validation=>'EDC_UTIL.GET_SITE_STATUS(:P37_STUDY_SITE_ID) = 3'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Patient enrollment is disable because site is not Active'
,p_validation_condition=>':REQUEST IN (''CREATE'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(12147503937615630227)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11270506829562640895)
,p_validation_name=>'SIte Cap'
,p_validation_sequence=>7
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_STUDY_SITES',
' WHERE EDC_SITE_PKG.GET_SITE_CURRENT_CAP(STUDY_SITE_ID) < CAP_SIZE',
'   AND STUDY_SITE_ID = :P37_STUDY_SITE_ID'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Subject enrollment is disabled, because this site has reached the maximum Cap size'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12147512843961630246)
,p_validation_name=>'UNIQUE_SCREENING_NUMBER'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM edc_patient_profile pp',
'WHERE study_site_id    =:P37_STUDY_SITE_ID',
'AND scrno             = :P37_SCREENING_NUMBER_FINAL',
'AND PATIENT_PROFILE_ID<>NVL(:P37_PATIENT_PROFILE_ID,',
'  (SELECT NVL(MAX(PATIENT_PROFILE_ID),0)+1 FROM EDC_PATIENT_PROFILE',
'  ))'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Screening Number must be unique.'
,p_validation_condition=>'''SAVE'',''CREATE'''
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12147504526958630228)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from edc_patient_profile pp',
'where study_site_id=:P37_STUDY_SITE_ID and ptintl = :P37_PATIENT_INITIAL and PATIENT_PROFILE_ID<>nvl(:P37_PATIENT_PROFILE_ID,(select NVL(MAX(PATIENT_PROFILE_ID),0)+1 FROM EDC_PATIENT_PROFILE))',
'',
'request is contained within expression 1',
'CREATE,SAVE',
'',
'select 1 from edc_patient_profile pp',
'where scrno = :P37_SCREENING_NUMBER_FINAL and ptintl = :P37_PATIENT_INITIAL'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12147511841805630245)
,p_validation_name=>'P37_PATIENT_INITIAL_NN'
,p_validation_sequence=>30
,p_validation=>'P37_PATIENT_INITIAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Subject Initial is missing. Please provide.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12147505139779630228)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12147512225173630245)
,p_validation_name=>'P37_RANDOMIZATION_NUMBER_NN'
,p_validation_sequence=>60
,p_validation=>'P37_RANDOMIZATION_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Randomization Number is missing. Please provide.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(12147503539591630226)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12147512444935630246)
,p_validation_name=>'P37_SCREENING_DATE'
,p_validation_sequence=>70
,p_validation=>'P37_SCREENING_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Screening Date is missing, Please provide.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(12147505554181630229)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12164296039393521509)
,p_validation_name=>'P37_PATIENT_INITIAL'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt number;',
'  v_cnt_len number;',
'begin',
'SELECT count(*) into v_cnt ',
'  FROM DUAL WHERE not regexp_like (:P37_PATIENT_INITIAL, ''^[a-zA-Z .''''-]+$'');',
'  ',
'select length(:P37_PATIENT_INITIAL) into  v_cnt_len from dual;',
'',
' If v_cnt > 0 then ',
'   return ''Please insert alphabetic value'';',
' elsif v_cnt_len < 2 then',
'     return ''Patient Initials should not be less than two'';',
' else',
'   return null; ',
' End If;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(12147505139779630228)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11646303041549594936)
,p_validation_name=>'P37_PATIENT_INITIAL_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P37_PATIENT_INITIAL_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Subject Initials" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(30);',
'BEGIN',
'',
'    SELECT PTINTL INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P37_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND LENGTH(:P37_PATIENT_INITIAL)>0 THEN',
'      RETURN TRUE;',
'    elsif a IS NULL AND LENGTH(:P37_PATIENT_INITIAL) IS NULL THEN',
'      RETURN FALSE;',
'    elsif a IS NOT NULL AND a = :P37_PATIENT_INITIAL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(12147502953076630224)
,p_associated_item=>wwv_flow_imp.id(11646259906806484036)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11646303472821597573)
,p_validation_name=>'P37_SCREENING_NUMBER_FINAL_CHANGE'
,p_validation_sequence=>110
,p_validation=>'P37_SCREENING_NUMBER_FINAL_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Screening Number" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(30);',
'BEGIN',
'',
'    SELECT scrno INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P37_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND LENGTH(:P37_SCREENING_NUMBER_FINAL)>0 THEN',
'      RETURN TRUE;',
'    elsif a IS NULL AND LENGTH(:P37_SCREENING_NUMBER_FINAL) IS NULL THEN',
'      RETURN FALSE;',
'    elsif a IS NOT NULL AND a = :P37_SCREENING_NUMBER_FINAL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(12147502953076630224)
,p_associated_item=>wwv_flow_imp.id(11646290846803554138)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5238767694089115045)
,p_validation_name=>'EPRO_STDT'
,p_validation_sequence=>120
,p_validation=>'P37_EPRO_STDT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Date of Treatment Day 1 is missing. Please complete.'
,p_validation_condition=>':P37_PATIENT_PROFILE_ID IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_imp.id(5173774003843500304)
,p_associated_item=>wwv_flow_imp.id(5238766947640115038)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5238767793496115046)
,p_validation_name=>'EPRO_STTM'
,p_validation_sequence=>130
,p_validation=>'P37_EPRO_STTM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Time of Treatment Day 1 is missing. Please complete.'
,p_validation_condition=>':P37_PATIENT_PROFILE_ID IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_imp.id(5173774003843500304)
,p_associated_item=>wwv_flow_imp.id(5238767146905115040)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5238767863169115047)
,p_validation_name=>'EPRO_DIARY_TYPE'
,p_validation_sequence=>140
,p_validation=>'P37_EPRO_DIARY_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select the Diary Type is missing. Please complete.'
,p_validation_condition=>':P37_PATIENT_PROFILE_ID IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_imp.id(5173774003843500304)
,p_associated_item=>wwv_flow_imp.id(5238767267866115041)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3790156837810114043)
,p_validation_name=>'P37_EPRO_DIARY_TYPE_CHANGE'
,p_validation_sequence=>150
,p_validation=>'P37_EPRO_DIARY_TYPE_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Diary Type" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(30);',
'BEGIN',
'',
'    SELECT EPRO_DIARY_TYPE INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P37_PATIENT_PROFILE_ID;',
'    ',
'    IF a IS NULL AND LENGTH(:P37_EPRO_DIARY_TYPE)>0 THEN',
'      RETURN TRUE;',
'    elsif a IS NULL AND LENGTH(:P37_EPRO_DIARY_TYPE) IS NULL THEN',
'      RETURN FALSE;',
'    elsif a IS NOT NULL AND a = :P37_EPRO_DIARY_TYPE THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(3789568391590567988)
,p_associated_item=>wwv_flow_imp.id(3790156765265114042)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147515151289630249)
,p_name=>'SET_SCREENING_NO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_STUDY_SITE_ID'
,p_condition_element=>'P37_STUDY_SITE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P37_SCREENING_NUMBER_FINAL'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'condition :: 1 is null :',
'P37_SCREENING_NUMBER',
'',
'--Condition Not null',
'P37_SCREENING_NUMBER'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147515450271630250)
,p_event_id=>wwv_flow_imp.id(12147515151289630249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_SCREENING_NUMBER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>' SELECT SITE_NUMBER||''-S-'' FROM EDC_STUDY_SITES WHERE STUDY_SITE_ID = :P37_STUDY_SITE_ID'
,p_attribute_07=>'P37_STUDY_SITE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147515627761630251)
,p_event_id=>wwv_flow_imp.id(12147515151289630249)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_SCREENING_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12161477840156896796)
,p_event_id=>wwv_flow_imp.id(12147515151289630249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_SCREENING_NUMBER_FINAL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_SCRNO  varchar2(50);',
'    V_length varchar2(30); ',
'BEGIN',
'/*   select a.site_number||''-''||lpad(to_char(count(b.patient_profile_id)+1),3,''0'')',
'   into v_scrno',
' from edc_study_sites a left outer join edc_patient_profile b',
' on (a.study_site_id = b.study_site_id)',
' where a.study_site_id = :P37_STUDY_SITE_ID',
' group by a.site_number;',
'*/',
'',
'/*',
'    with max_id as (select lpad(to_char(nvl(max(to_number(REGEXP_REPLACE(SUBSTR(b.scrno, INSTR(b.scrno, ''-'')+1), ''[^[:digit:]]+'', ''''))), 0) + 1), 3, ''0'') id',
'                      from edc_patient_profile b',
'                     where b.study_site_id = :P37_STUDY_SITE_ID',
'                   )',
'            select site_number||''-13-443-''|| (select id from max_id)',
'              into v_scrno',
'              from edc_study_sites',
'             where study_site_id = :P37_STUDY_SITE_ID;',
'*/',
'',
' --   with max_id as (select lpad(NVL(max(to_number(substr(b.scrno, length(b.scrno) - 2))), 0) + 1, 3, ''0'') id',
'    with max_id as (select lpad(count(1) + 1, 3, ''0'') id',
'                      from edc_patient_profile b',
'                     where b.study_site_id = :P37_STUDY_SITE_ID',
'                   )',
'            select --lpad(site_number,3,0) ||''-''|| (select id from max_id)',
'            lpad(site_number,2,0) || (select id from max_id)',
'              into v_scrno',
'              from edc_study_sites',
'             where study_site_id = :P37_STUDY_SITE_ID;',
'',
'    return v_scrno;',
'END;'))
,p_attribute_07=>'P37_STUDY_SITE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147516042052630251)
,p_event_id=>wwv_flow_imp.id(12147515151289630249)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_SCREENING_DIGIT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12147516129726630251)
,p_name=>'SET P37_SCREENING_NUMBER_FLAG TO CHECK WHETHER SCRNO ALREADY EXIST'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_SCREENING_DIGIT'
,p_condition_element=>'P37_SCREENING_DIGIT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147516442565630252)
,p_event_id=>wwv_flow_imp.id(12147516129726630251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'BEGIN',
'  /*insert into temp_trace values(:P37_SCREENING_NUMBER||''''||:P37_SCREENING_DIGIT);',
'  commit;*/',
'  SELECT COUNT(*) ',
'    INTO V_COUNT ',
'    FROM EDC_PATIENT_PROFILE ',
'   WHERE TRIM(UPPER(SCRNO))=TRIM(UPPER(:P37_SCREENING_DIGIT))',
'   and STUDY_SITE_ID = :P37_STUDY_SITE_ID;',
'',
' IF V_COUNT > 0 THEN',
'    :P37_SCREENING_NUMBER_FLAG := 1;',
' ELSE',
'  :P37_SCREENING_NUMBER_FLAG := 0;',
' END IF;',
'END;'))
,p_attribute_02=>'P37_SCREENING_DIGIT'
,p_attribute_03=>'P37_SCREENING_NUMBER_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12147516649927630252)
,p_event_id=>wwv_flow_imp.id(12147516129726630251)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert($v(''P37_SCREENING_NUMBER_FLAG''));',
'if ($v(''P37_SCREENING_NUMBER_FLAG'')==1)',
'{',
' alert(''Screening Number Already Exists.'');',
'// $x(''P37_SCREENING_NUMBER_FLAG'').value='''';',
' $x(''P37_SCREENING_DIGIT'').value='''';',
' document.getElementById(''P37_SCREENING_NUMBER_FLAG'').focus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12164281433679207414)
,p_name=>'Set Alert for Subject Init'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_PATIENT_INITIAL'
,p_condition_element=>'P37_PATIENT_INITIAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt number;',
'begin',
'SELECT count(*) into v_cnt ',
'  FROM DUAL WHERE not regexp_like (:P37_PATIENT_INITIAL, ''^[a-zA-Z .''''-]+$''); ',
'',
'If v_cnt > 0 then',
'  return true;',
'else',
'  return false;',
'end if;',
'end;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12164281754687207415)
,p_event_id=>wwv_flow_imp.id(12164281433679207414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please insert only Alphabetic Value.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11646298607293575113)
,p_name=>'P37_PATIENT_INITIAL CHANGE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_PATIENT_INITIAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P37_PATIENT_PROFILE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11646298973589575113)
,p_event_id=>wwv_flow_imp.id(11646298607293575113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_PATIENT_INITIAL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790157124902114046)
,p_name=>'P37_EPRO_DIARY_TYPE CHANGE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_EPRO_DIARY_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_status number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'        select status into v_status',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 = 0 AND V_STATUS IN (3,5,7) AND :APP_EDC_ROLE_ID IN (13,16) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_display_when_cond2=>'PLSQL'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'    v_cnt1 number;',
'    v_status number;',
'begin',
'    ',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        select count(1) into v_cnt',
'        from iwrs_crf_dm',
'        where randomization_number is not null',
'        and patient_visit_id in (select patient_visit_id from edc_patient_visit where patient_profile_id = :P37_PATIENT_PROFILE_ID);',
'        ',
'        select count(1) into v_cnt1',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'        and epro_password is null',
'        and epro_status is null;',
'        ',
'        select status into v_status',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'    END IF;',
'    ',
'    /*IF :APP_EDC_ROLE_ID = 13 THEN        --ADMIN WILL ALWAYS BE ABLE TO SEE THE GENERATE CREDENTIALS BUTTON',
'        RETURN TRUE;',
'    ELS*/IF V_CNT > 0 AND V_CNT1 = 0 AND V_STATUS IN (3,7) AND :APP_EDC_ROLE_ID IN (13,16) THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790157252852114047)
,p_event_id=>wwv_flow_imp.id(3790157124902114046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_EPRO_DIARY_TYPE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8288312710222084687)
,p_name=>'P37_SCREENING_DATE CHANGE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_SCREENING_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P37_PATIENT_PROFILE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8288312798138084688)
,p_event_id=>wwv_flow_imp.id(8288312710222084687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_SCREENING_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11646299397510579752)
,p_name=>'P37_SCREENING_NUMBER_FINAL CHANGE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_SCREENING_NUMBER_FINAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P37_PATIENT_PROFILE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11646299818222579753)
,p_event_id=>wwv_flow_imp.id(11646299397510579752)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_SCREENING_NUMBER_FINAL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11646300281513583183)
,p_name=>'P37_PATIENT_INITIAL_CHANGE HIDE'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'  IF :P37_PATIENT_PROFILE_ID IS NULL THEN',
'    RETURN true;',
'  ELSE',
'     SELECT PTINTL INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P37_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND LENGTH(:P37_PATIENT_INITIAL)>0 THEN',
'      RETURN false;',
'    elsif a IS NULL AND LENGTH(:P37_PATIENT_INITIAL) IS NULL THEN',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P37_PATIENT_INITIAL THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11646300730550583183)
,p_event_id=>wwv_flow_imp.id(11646300281513583183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_PATIENT_INITIAL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790156912147114044)
,p_name=>'P37_EPRO_DIARY_TYPE_CHANGE HIDE'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'  IF :P37_PATIENT_PROFILE_ID IS NULL THEN',
'    RETURN true;',
'  ELSE',
'    SELECT EPRO_DIARY_TYPE INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P37_PATIENT_PROFILE_ID;',
'     ',
'    IF a IS NULL AND LENGTH(:P37_EPRO_DIARY_TYPE)>0 THEN',
'      RETURN false;',
'    elsif a IS NULL AND LENGTH(:P37_EPRO_DIARY_TYPE) IS NULL THEN',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P37_EPRO_DIARY_TYPE THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'  IF :P37_PATIENT_PROFILE_ID IS NULL THEN',
'    RETURN true;',
'  ELSE',
'    SELECT EPRO_DIARY_TYPE INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P37_PATIENT_PROFILE_ID;',
'     ',
'    IF a IS NULL AND LENGTH(:P37_EPRO_DIARY_TYPE)>0 THEN',
'      RETURN false;',
'    elsif a IS NULL AND LENGTH(:P37_EPRO_DIARY_TYPE) IS NULL THEN',
'      insert into temp(v_tmp) values(''2''); commit;',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P37_EPRO_DIARY_TYPE THEN',
'      insert into temp(v_tmp) values(''3''); commit;',
'      RETURN true;',
'    ELSE',
'      insert into temp(v_tmp) values(''4''); commit;',
'      RETURN false;',
'    END IF;',
'  END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790157070487114045)
,p_event_id=>wwv_flow_imp.id(3790156912147114044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_EPRO_DIARY_TYPE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790768328341724943)
,p_event_id=>wwv_flow_imp.id(3790156912147114044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_EPRO_DIARY_TYPE_CHANGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8288312866574084689)
,p_name=>'P37_SCREENING_dATE_CHANGE_HIDE'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'  IF :P37_PATIENT_PROFILE_ID IS NULL THEN',
'    RETURN true;',
'  ELSE',
'     SELECT SCREENING_DATE INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P37_PATIENT_PROFILE_ID;',
'     ',
'    IF a IS NULL AND :P37_SCREENING_DATE IS NOT NULL THEN',
'      RETURN false;',
'    elsif a IS NULL AND :P37_SCREENING_DATE IS NULL THEN',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P37_SCREENING_DATE THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8288312945460084690)
,p_event_id=>wwv_flow_imp.id(8288312866574084689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_PATIENT_INITIAL_CHANGE,P37_SCREENING_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11646301278868585970)
,p_name=>'P37_SCREENING_NUMBER_FINAL_CHANGE HIDE'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'  IF :P37_PATIENT_PROFILE_ID IS NULL THEN',
'    RETURN true;',
'  ELSE',
'     SELECT scrno INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P37_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND LENGTH(:P37_SCREENING_NUMBER_FINAL)>0 THEN',
'      RETURN false;',
'    elsif a IS NULL AND LENGTH(:P37_SCREENING_NUMBER_FINAL) IS NULL THEN',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P37_SCREENING_NUMBER_FINAL THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11646301712038585970)
,p_event_id=>wwv_flow_imp.id(11646301278868585970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_SCREENING_NUMBER_FINAL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11642956748107523005)
,p_name=>'PI_SIGNOFF_MODAL_OPEN'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11642955960781515218)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_da_event_comment=>'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM,P91_PAGE_ID:&APP_USER_NAME.,&APP_PAGE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642957109630523010)
,p_event_id=>wwv_flow_imp.id(11642956748107523005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM,P91_PAGE_ID:&APP_USER_NAME.,37'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'60'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'uMessageText',
'uSuccessMessage',
'',
'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM:&APP_USER_NAME.'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11642957765019526446)
,p_name=>'Refresh page on Modal auto_close'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642958163311526447)
,p_event_id=>wwv_flow_imp.id(11642957765019526446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10641776311234306026)
,p_name=>'Unblind Subject - Modal (Page 58)'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10641776224504306025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10641776415429306027)
,p_event_id=>wwv_flow_imp.id(10641776311234306026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:58:&APP_SESSION.:::58:::'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8288340199140190115)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8288338891135184627)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8288340570579190129)
,p_event_id=>wwv_flow_imp.id(8288340199140190115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_PK_ID,P41_TABLE_NAME:&APP_PAGE_ID.,&P37_PATIENT_PROFILE_ID.,EDC_PATIENT_PROFILE'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789568586795567990)
,p_name=>'On click of Update'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3789568391590567988)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789568686827567991)
,p_event_id=>wwv_flow_imp.id(3789568586795567990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (confirm("This change will be reflected in the upcoming schedules only."))',
'    {',
'        apex.submit("UPDATE");',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3790177396983297086)
,p_name=>'Audit'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3790157494848114049)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3790177719663297246)
,p_event_id=>wwv_flow_imp.id(3790177396983297086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_PROFILE_ID,P141_PK_ID:&APP_PAGE_ID.,&P37_PATIENT_PROFILE_ID.,&P37_PATIENT_PROFILE_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1874522284124870630)
,p_name=>'Unblind Subject - Modal (Page 106) PV'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1877887176698103752)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874522430814870631)
,p_event_id=>wwv_flow_imp.id(1874522284124870630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:106:&APP_SESSION.:::106:::'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147512933232630246)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_PATIENT_PROFILE'
,p_attribute_02=>'EDC_PATIENT_PROFILE'
,p_attribute_03=>'P37_PATIENT_PROFILE_ID'
,p_attribute_04=>'PATIENT_PROFILE_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>11046562165091126153
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147513144824630247)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare function get_pk return varchar2 ',
'is',
'    V_PK NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(PATIENT_PROFILE_ID), 0) + 1',
'     INTO V_PK FROM EDC_PATIENT_PROFILE;',
'',
'    RETURN V_PK;',
'END;',
'begin ',
'    :P37_PATIENT_PROFILE_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(12147502732403630224)
,p_internal_uid=>11046562376683126154
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147513331179630247)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Patient'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P37_STATUS:=1;',
'  --:P37_CREATED_ON:=sysdate;',
'  --:P37_CREATED_BY:=:APP_EDC_USER_ID;',
'',
'  WITH',
'    MAX_ID AS (SELECT LPAD(COUNT(1) + 1, 3, ''0'') ID',
'                 FROM EDC_PATIENT_PROFILE B',
'                WHERE B.STUDY_SITE_ID = :P37_STUDY_SITE_ID',
'              )',
'    SELECT --lpad(site_number,3,0) ||''-''|| (SELECT ID FROM MAX_ID)',
'    lpad(site_number,2,0) || (SELECT ID FROM MAX_ID)',
'      INTO :P37_SCREENING_NUMBER_FINAL',
'      FROM EDC_STUDY_SITES',
'     WHERE STUDY_SITE_ID = :P37_STUDY_SITE_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(12147502732403630224)
,p_internal_uid=>11046562563038126154
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147513732871630248)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_PATIENT_PROFILE'
,p_attribute_02=>'EDC_PATIENT_PROFILE'
,p_attribute_03=>'P37_PATIENT_PROFILE_ID'
,p_attribute_04=>'PATIENT_PROFILE_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_when=>':REQUEST IN (''CREATE'',''SAVE'',''EPRO_CRED'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>11046562964730126155
,p_process_comment=>'Unable to process row of table EDC_PATIENT_PROFILE.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147513924718630248)
,p_process_sequence=>38
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Screening Date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'begin',
'select count(*)',
'  into v_cnt',
'  from edc_patient_visit',
'   where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'     AND VISIT_NUMBER = 1',
'     AND SCHEDULE_DATE IS NULL;',
'',
'IF V_CNT > 0 THEN',
'update edc_patient_visit set schedule_date=to_date(:P37_SCREENING_DATE,''DD-MON-YYYY'') ,',
'actual_date=to_date(:P37_SCREENING_DATE,''DD-MON-YYYY'')  ',
'where patient_profile_id=:P37_PATIENT_PROFILE_ID ',
'AND visit_number=1;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in Update Screening Date'
,p_process_when_button_id=>wwv_flow_imp.id(12147502953076630224)
,p_process_success_message=>'Action Processed'
,p_internal_uid=>11046563156577126155
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147514144165630248)
,p_process_sequence=>39
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Subject screening visit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    for i in ( select EDC_PATIENT_VISIT_SEQ.nextval PATIENT_VISIT_ID,',
'                     :P37_PATIENT_PROFILE_ID PATIENT_PROFILE_ID,',
'                     param_id,',
'                     DISP_SEQ VISIT_NUMBER, ',
'                     VISIT_NAME VISIT_TITLE, ',
'                     VISIT_TYPE,',
'                     to_date(:P37_SCREENING_DATE,''DD-MON-YYYY'') SCHEDULE_DATE,',
'                     to_date(:P37_SCREENING_DATE,''DD-MON-YYYY'') ACTUAL_DATE,2 CRF_STATUS,',
'                     TOTAL_CRF_PAGES',
'                    ,DURATION,WINDOW_PERIOD_p,WINDOW_PERIOD_m',
'                    ,PARAM_ID_FK, CALCULATED_ON',
'                from edc_PATIENT_VISIT_PARAMS',
'               where study_id=:APP_EDC_STUDY_ID',
'                 and param_id = 1',
'                 --and visit_type = ''Screening Visit''',
'            )',
'',
'    loop',
'',
'            insert into edc_PATIENT_VISIT(PATIENT_VISIT_ID,PATIENT_PROFILE_ID,param_id,VISIT_NUMBER,VISIT_TITLE,VISIT_TYPE,',
'                 SCHEDULE_DATE, ACTUAL_DATE, CRF_STATUS,TOTAL_CRF_PAGES,DURATION,WINDOW_PERIOD_p,WINDOW_PERIOD_m,study_id,PARAM_ID_FK,CALCULATED_ON)',
'             values(i.PATIENT_VISIT_ID,i.PATIENT_PROFILE_ID,i.param_id,i.VISIT_NUMBER,i.VISIT_TITLE,i.VISIT_TYPE,',
'                 i.SCHEDULE_DATE, i.ACTUAL_DATE, i.CRF_STATUS,i.TOTAL_CRF_PAGES,i.DURATION,i.WINDOW_PERIOD_p,i.WINDOW_PERIOD_m,:APP_EDC_STUDY_ID,I.PARAM_ID_FK,I.CALCULATED_ON);',
'',
'            :P37_PATIENT_VISIT_ID := i.PATIENT_VISIT_ID;',
'',
'            INSERT INTO AUDIT_TRAIL(TABLE_NAME, APP_ID, STUDY_ID, STUDY_SITE_ID, PATIENT_PROFILE_ID, PATIENT_VISIT_ID, PAGE_NO,',
'                                        COLUMN_NAME, OLD_VALUE, NEW_VALUE, ACTION,TABLE_PK_VALUE)',
'                                 VALUES(''EDC_PATIENT_VISIT'',:APP_ID,:APP_EDC_STUDY_ID,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,:P37_PATIENT_VISIT_ID, 530,',
'                                        ''SECTION_STATUS'',null,3,''INSERT'',',
'                                        :P37_PATIENT_VISIT_ID);',
'',
'            INSERT INTO AUDIT_TRAIL(TABLE_NAME, APP_ID, STUDY_ID, STUDY_SITE_ID, PATIENT_PROFILE_ID, PATIENT_VISIT_ID, PAGE_NO,',
'                                        COLUMN_NAME, OLD_VALUE, NEW_VALUE, ACTION,TABLE_PK_VALUE)',
'                                 VALUES(''EDC_PATIENT_VISIT'',:APP_ID,:APP_EDC_STUDY_ID,:APP_EDC_STUDY_SITE_ID,:APP_PATIENT_PROFILE_ID,:P37_PATIENT_VISIT_ID, 530,',
'                                        ''ACTUAL_DATE'',null,i.ACTUAL_DATE,''INSERT'',',
'                                        :P37_PATIENT_VISIT_ID);                            ',
'    end loop;',
'',
'    commit;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error in Generate Subject screening visit'
,p_process_when_button_id=>wwv_flow_imp.id(12147502732403630224)
,p_process_success_message=>'Subject is entered successfully. Please enter Visit Detail below.'
,p_internal_uid=>11046563376024126155
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into edc_PATIENT_VISIT',
'',
'(PATIENT_VISIT_ID,PATIENT_PROFILE_ID,VISIT_NUMBER,VISIT_TITLE,VISIT_TYPE,',
' SCHEDULE_DATE, ACTUAL_DATE, CRF_STATUS,TOTAL_CRF_PAGES,DURATION,WINDOW_PERIOD_p,WINDOW_PERIOD_m)',
'',
'select EDC_PATIENT_VISIT_SEQ.NEXTVAL PATIENT_VISIT_ID,:P37_PATIENT_PROFILE_ID PATIENT_PROFILE_ID,DISP_SEQ VISIT_NUMBER, VISIT_NAME VISIT_TITLE,1 VISIT_TYPE,:P37_SCREENING_DATE SCHEDULE_DATE,:P37_SCREENING_DATE ACTUAL_DATE,2 CRF_STATUS,TOTAL_CRF_PAGES',
',DURATION,WINDOW_PERIOD_p,WINDOW_PERIOD_m from edc_PATIENT_VISIT_PARAMS where study_id=:APP_EDC_STUDY_ID and visit_type=1;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147514335843630248)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE ENROLL SITE STATUS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'UPDATE EDC_STUDY_SITES',
'SET STATUS = 3',
'WHERE STUDY_SITE_ID = :P37_STUDY_SITE_ID',
'AND STUDY_ID = :APP_EDC_STUDY_ID;',
'COMMIT;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12147502732403630224)
,p_internal_uid=>11046563567702126155
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147514552518630249)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Subject (Hide Subject rather than Delete) '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update edc_patient_profile set delete_status=1 where PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'COMMIT;',
'exception when others then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12147503125777630224)
,p_process_success_message=>'Subject is deleted Successfully.'
,p_internal_uid=>11046563784377126156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147514737338630249)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Mail - Of Screened Subject'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Screened'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12147502732403630224)
,p_internal_uid=>11046563969197126156
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P37_STUDY_SITE_ID IS NOT NULL THEN',
'',
'/* SELECT STUDY_SITE_ID into v_EDC_STUDY_SITE_ID FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID; */',
'',
'EDC_MAIL.SEND_PATIENT_ENROLLMENT_INFO(:P37_STUDY_SITE_ID, :APP_EDC_STUDY_ID, :P37_PATIENT_PROFILE_ID, V_RET);',
'',
'END IF;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12147514932964630249)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'45'
,p_process_when_button_id=>wwv_flow_imp.id(12147503125777630224)
,p_internal_uid=>11046564164823126156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12155193636934571421)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_PATIENT_PROFILE_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :APP_PATIENT_PROFILE_ID := :P37_PATIENT_PROFILE_ID;',
'  select max(patient_visit_id) into :P37_PATIENT_VISIT_ID from edc_patient_visit where patient_profile_id = :APP_PATIENT_PROFILE_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P37_PATIENT_PROFILE_ID is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>11054242868793067328
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11268405758085789708)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discontinue Subject'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_VISIT_TYPE       EDC_PATIENT_VISIT_PARAMS.VISIT_TYPE%TYPE;',
'    V_PARAM_ID         EDC_PATIENT_VISIT_PARAMS.PARAM_ID%TYPE;',
'    V_VISIT_NAME       EDC_PATIENT_VISIT_PARAMS.VISIT_NAME%TYPE;',
'    v_patient_visit_id NUMBER;',
'    V_RAND_DATE        EDC_PATIENT_PROFILE.RANDOMIZATION_DATE%TYPE;',
'    V_DURATION         NUMBER;',
'    ',
'    V_LAST_VISIT_CHECK NUMBER;',
'BEGIN',
'    -- Update Subject Status',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 4 -- Discontinue',
'         , DISCONTINUE_REASON = :P37_DISCONTINUE_REASON_TEMP',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    COMMIT;',
'    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Discontinue'');',
'',
'/*  -- Generate Last visit (Followup Visit)',
'    SELECT RANDOMIZATION_DATE',
'      INTO V_RAND_DATE',
'      FROM EDC_PATIENT_PROFILE',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    select PARAM_ID',
'         , VISIT_NAME',
'         , VISIT_TYPE',
'         , DURATION',
'      INTO V_PARAM_ID',
'         , V_VISIT_NAME',
'         , V_VISIT_TYPE',
'         , V_DURATION',
'      from edc_patient_Visit_PARAMS',
'     WHERE VISIT_NAME = ''Safety Followup'';',
'',
'    SELECT COUNT(*)',
'      INTO V_LAST_VISIT_CHECK',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'       AND TO_NUMBER(VISIT_NUMBER) = 10;',
'',
'    IF V_LAST_VISIT_CHECK = 0 THEN',
'        select EDC_PATIENT_VISIT_SEQ.nextval',
'          into v_patient_visit_id',
'          from dual;',
'',
'        insert into edc_patient_visit( PATIENT_VISIT_ID',
'                                      ,PATIENT_PROFILE_ID',
'                                      ,VISIT_NUMBER',
'                                      ,VISIT_TITLE',
'                                      ,VISIT_TYPE',
'                                      ,CRF_STATUS',
'                                      ,PARAM_ID',
'                                      ,SCHEDULE_DATE',
'                                     )',
'                               values( v_patient_visit_id',
'                                      ,:P37_PATIENT_PROFILE_ID',
'                                      ,V_PARAM_ID',
'                                      ,V_VISIT_NAME',
'                                      ,V_VISIT_TYPE',
'                                      ,2',
'                                      ,V_PARAM_ID',
'                                      ,V_RAND_DATE + V_DURATION',
'                                     );',
'    END IF;',
'',
'    COMMIT;',
'*/',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''DISCONTINUE_SUBJECT'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Subject Discontinued...'
,p_internal_uid=>10167454989944285615
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9050842826303724455)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Unblinding'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER;',
'BEGIN',
'    -- Update Subject Status',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 9 -- Unblinded',
'         , unblnd_notify= 1',
'         , UNBLINDED_BY = :APP_USER',
'         , UNBLINDED_ON = LOCALTIMESTAMP',
'         , UNBLINDED_REASON = :P37_UNBLINDED_REASON',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    COMMIT;',
'',
'  BEGIN',
'    SELECT MAX(PATIENT_VISIT_ID)',
'      INTO V_PV_ID',
'      FROM EDC_PATIENT_VISIT',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    UPDATE IWRS_CRF_DM',
'       SET STATUS = 7',
'     WHERE PATIENT_VISIT_ID = V_PV_ID;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      NULL;',
'  END;',
'    EDC_MAIL.UNBLINDING_STATUS(:P37_PATIENT_PROFILE_ID,''Approved'');',
'    EDC_MAIL.UNBLINDED_SUBJECT(:P37_PATIENT_PROFILE_ID,''Approved'');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''APPROVE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Subject Unblinded...'
,p_internal_uid=>7949892058162220362
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9050842971626724457)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Unblinding'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Update Subject Status',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET UNBLND_NOTIFY = NULL',
'         , UNBLIND_REJ_REASON = :P37_SCREEN_FAIL_REASON_TEMP',
'         , UNBLINDED_BY = :APP_USER',
'         , UNBLINDED_ON = LOCALTIMESTAMP',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    COMMIT;',
'   EDC_MAIL.UNBLINDING_STATUS(:P37_PATIENT_PROFILE_ID,''Rejected'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''REJECT'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Unblinding Request Rejected...'
,p_internal_uid=>7949892203485220364
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1874522924893870636)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Unblinding Pv'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PV_ID NUMBER;',
'BEGIN',
'    -- Update Subject Status',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET pv_notify= 1',
'         , PV_UNBLINDED_BY = :APP_USER',
'         , PV_UNBLINDED_ON = LOCALTIMESTAMP',
'         , PV_UNBLINDED_REASON = :P37_UNBLINDED_REASON',
'         , PV_REG_FLG = 0',
'         , PV_APP_FLG = 1',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    COMMIT;',
'',
'    EDC_MAIL.PV_UNBLINDING_STATUS(:P37_PATIENT_PROFILE_ID,''Approved'');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''APPROVE_PV'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>773572156752366543
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1874522998492870637)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Rejecting Unblinding Pv'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Update Subject Status',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET PV_NOTIFY = 0',
'         , PV_UNBLIND_REJ_REASON = :P37_SCREEN_FAIL_REASON_TEMP',
'         , PV_REASON = NULL',
'         , PV_RQ_BY = NULL',
'         , PV_RQ_DATE = NULL',
'         , PV_UNBLINDED_BY = :APP_USER',
'         , PV_UNBLINDED_ON = LOCALTIMESTAMP',
'         , PV_REG_FLG = 0',
'         , PV_APP_FLG = 0',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    COMMIT;',
'   EDC_MAIL.PV_UNBLINDING_STATUS(:P37_PATIENT_PROFILE_ID,''Rejected'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''REJECT_PV'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>773572230351366544
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11005617878156198022)
,p_process_sequence=>190
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Withdraw Subject'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Update Subject Status to Withdrawn',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 6 -- Withdrawn',
'         , WITHDRAW_REASON = :P37_WITHDRAW_REASON_TEMP',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    COMMIT;',
'    EDC_MAIL.SUBJECT_STATUS_CHANGE(:P37_PATIENT_PROFILE_ID, ''Withdrawn'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''WITHDRAW_SUBJECT'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Subject Withdrawn...'
,p_internal_uid=>9904667110014693929
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11012177360112415398)
,p_process_sequence=>200
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Screen Fail Subject'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Update Subject Status to Screen Failure',
'    UPDATE EDC_PATIENT_PROFILE',
'       SET STATUS = 2 -- Screen Failed',
'         , SCREEN_FAIL_REASON = :P37_SCREEN_FAIL_REASON_TEMP',
'     WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'    COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SCREEN_FAIL_SUBJECT'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Subject Screen Failed...'
,p_internal_uid=>9911226591970911305
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11012176485562415389)
,p_process_sequence=>210
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update all CRF Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_FLAG            NUMBER;',
'    V_SUBJECT_STATUS  NUMBER;',
'BEGIN',
'  FOR I IN (SELECT V.VISIT_TITLE',
'                 , DM.PATIENT_VISIT_ID',
'                 , V.PATIENT_PROFILE_ID',
'              FROM IWRS_CRF_DM DM',
'                 , EDC_PATIENT_VISIT V',
'             WHERE DM.PATIENT_VISIT_ID = V.PATIENT_VISIT_ID',
'               AND CRF_STATUS = 2',
'               AND V.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID',
'  ) LOOP',
'    BEGIN',
'    IF I.VISIT_TITLE IN (''Screening Visit'') THEN',
'        SELECT 1',
'          INTO V_FLAG',
'          FROM EDC_PATIENT_PROFILE',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'    ELSIF I.VISIT_TITLE IN (''Start of Placebo Runin'', ''Randomization'') THEN',
'        SELECT STATUS',
'          INTO V_SUBJECT_STATUS',
'          FROM EDC_PATIENT_PROFILE',
'         WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'        IF V_SUBJECT_STATUS NOT IN (4, 6) /* Discontinue, Withdrawn */ THEN',
'            SELECT 1',
'              INTO V_FLAG',
'              FROM IWRS_CRF_DM_IP',
'             WHERE PATIENT_VISIT_ID = I.PATIENT_VISIT_ID',
'               AND IS_IP_DISPENSED = ''Yes''',
'               AND ROWNUM = 1;',
'        END IF;',
'    END IF;',
'',
'    UPDATE EDC_PATIENT_VISIT',
'       SET CRF_STATUS = 3',
'     WHERE PATIENT_VISIT_ID = I.PATIENT_VISIT_ID',
'       AND CRF_STATUS <> 3;',
'',
'    COMMIT;',
'',
'    EXCEPTION WHEN OTHERS THEN',
'        UPDATE EDC_PATIENT_VISIT',
'           SET CRF_STATUS = 2',
'         WHERE PATIENT_VISIT_ID = I.PATIENT_VISIT_ID',
'           AND CRF_STATUS <> 2;',
'',
'        COMMIT;',
'    END;',
'  END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''DISCONTINUE_SUBJECT'', ''WITHDRAW_SUBJECT'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>9911225717420911296
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5173774098410500305)
,p_process_sequence=>220
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ePRO_CRED_MAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  P_RESULT varchar2(500);',
'  V_CNT NUMBER;',
'  V_DISP_SEQ NUMBER;',
'  V_SCHEDULE_NAME VARCHAR2(100);',
'  v_schedule_tm varchar2(20);',
'  v_current_tm varchar2(20);',
'  v_no_of_days number;',
'  v_no_of_days1 number;',
'  v_tot_schedules number;',
'  v_pending_days number;',
'  v_stdt date;',
'  v_sttm date;',
'  v_duration number := 0;',
'  v_user_region varchar2(100);',
'  v_ssid number;',
'  V_DT_TZ date;',
'  v_audit_id number;',
'BEGIN',
'',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        SELECT STUDY_SITE_ID into v_ssid',
'        from edc_patient_profile',
'        where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'        ',
'        select decode(country,''USA'',''US'',''Brazil'',''BZ'',''Mexico'',''MX'',''Canada'',''CA'',''Columbia'',''CO'',''US'') ',
'        into v_user_region',
'        from edc_sites',
'        where site_id = (select site_id from edc_study_sites',
'                        where study_site_id = v_ssid);',
'    ',
'        SELECT COUNT(1) INTO V_CNT FROM EDC_PATIENT_DIARY',
'        WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'        ',
'        IF V_CNT = 0 THEN',
'        ',
'            SELECT MIN(DISP_SEQ) INTO V_DISP_SEQ',
'            FROM EDC_PATIENT_SCHEDULE_PARAMS;',
'            ',
'            IF :P37_EPRO_STTM = ''Morning'' then',
'                v_schedule_tm := ''08:00'';',
'                v_current_tm := ''08:00'';',
'            ELSIF :P37_EPRO_STTM = ''Evening'' then',
'                v_schedule_tm := ''20:00'';',
'                v_current_tm := ''20:00'';',
'            END IF;',
'            ',
'            if v_user_region=''IN'' THEN',
'              V_DT_TZ:=to_date(to_char(to_date(get_current_local_time (''Asia/Kolkata''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MM-YY HH24:MI''),''DD-MM-YY HH24:MI'');',
'            ELSIF v_user_region=''US'' THEN',
'              V_DT_TZ:=to_date(to_char(to_date(get_current_local_time (''America/New_York''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MM-YY HH24:MI''),''DD-MM-YY HH24:MI'');',
'            ELSIF v_user_region=''BZ'' THEN',
'              V_DT_TZ:=to_date(to_char(to_date(get_current_local_time (''Brazil/East''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MM-YY HH24:MI''),''DD-MM-YY HH24:MI'');',
'            ELSIF v_user_region=''MX'' THEN',
'              V_DT_TZ:=to_date(to_char(to_date(get_current_local_time (''America/Mexico_City''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MM-YY HH24:MI''),''DD-MM-YY HH24:MI'');',
'            ELSE',
'              V_DT_TZ:=to_date(to_char(to_date(get_current_local_time (''Asia/Kolkata''),''dd-mon-yyyy hh:mi:ss PM''),''DD-MM-YY HH24:MI''),''DD-MM-YY HH24:MI'');',
'            END IF;',
'            ',
'            --select round(sysdate - to_date(:P37_EPRO_STDT,''DD-MM-YY HH24:MI'')) into v_no_of_days from dual;',
'            --select round(V_DT_TZ - to_date(:P37_EPRO_STDT,''DD-MM-YY HH24:MI'')) into v_no_of_days from dual;',
'            ',
'            select V_DT_TZ - to_date(:P37_EPRO_STDT,''DD-MM-YY HH24:MI'') into v_no_of_days1 from dual;',
'            if v_no_of_days1 < 10 then',
'                select substr(to_char(v_no_of_days1,''0.99999''),0,instr(to_char(v_no_of_days1,''0.99999''),''.'')-1) into v_no_of_days from dual;',
'            else',
'                select substr(to_char(v_no_of_days1,''00.99999''),0,instr(to_char(v_no_of_days1,''00.99999''),''.'')-1) into v_no_of_days from dual;',
'            end if;',
'            ',
'            if v_no_of_days > 10 then',
'              v_tot_schedules := (v_no_of_days - 10) + 21;',
'            elsif v_no_of_days = 0 and :P37_EPRO_STTM = ''Morning'' then',
'              v_tot_schedules := 2;',
'            elsif v_no_of_days = 0 and :P37_EPRO_STTM = ''Evening'' then',
'              v_tot_schedules := 1;',
'            elsif v_no_of_days < 10 and :P37_EPRO_STTM = ''Morning'' then',
'              v_tot_schedules := (v_no_of_days+1) * 2;',
'            elsif v_no_of_days < 10 and :P37_EPRO_STTM = ''Evening'' then',
'              v_tot_schedules := v_no_of_days * 2;',
'            end if;',
'            ',
'            v_stdt := to_date(:P37_EPRO_STDT,''DD-MM-YY'');',
'            v_sttm := to_date((:P37_EPRO_STDT||'' ''||v_current_tm),''DD-MM-YY HH24:MI'');',
'            ',
'            v_stdt := to_date(to_char((to_date(v_stdt||'' ''||v_current_tm,''DD-MM-YY HH24:MI'') + v_duration/24),''DD-MM-YY HH24:MI''),''DD-MM-YY HH24:MI'');',
'            ',
'            for i in (select * from',
'            (select   *',
'            from     EDC_PATIENT_SCHEDULE_PARAMS',
'            where schedule_name not in (''Early Termination'')',
'            order by SCHEDULE_ID )',
'            where rownum <= v_tot_schedules) loop',
'              ',
'              v_sttm := to_date(to_char((to_date(v_stdt||'' ''||v_current_tm,''DD-MM-YY HH24:MI'') + 0/24),''DD-MM-YY HH24:MI''),''DD-MM-YY HH24:MI'');',
'              ',
'              INSERT INTO EDC_PATIENT_DIARY(PATIENT_PROFILE_ID, SCHEDULE_TITLE, SCHEDULE_STATUS, SCHEDULE_ID, STUDY_ID, SECTION_STATUS, IS_SKIP, SCHEDULE_DT, SCHEDULE_TM, DIARY_TYPE)',
'              VALUES(:P37_PATIENT_PROFILE_ID, i.schedule_name, 2, i.schedule_id, 661, 2, ''No'',v_stdt, v_sttm,:P37_EPRO_DIARY_TYPE );',
'              COMMIT;',
'              ',
'              if i.schedule_id < 23 then',
'                v_duration := 12;',
'              else',
'                v_duration := 24;',
'              end if;',
'              ',
'              v_stdt := to_date(to_char((to_date(v_stdt||'' ''||v_current_tm,''DD-MM-YY HH24:MI'') + v_duration/24),''DD-MM-YY HH24:MI''),''DD-MM-YY HH24:MI'');',
'              ',
'              SELECT TO_CHAR(TO_DATE(v_current_tm,''HH24:MI'') + v_duration/24,''HH24:MI'') INTO v_current_tm FROM DUAL;',
'            ',
'            end loop;',
'            ',
'            UPDATE EDC_PATIENT_PROFILE SET EPRO_STATUS = ''Active'', USER_REGION = v_user_region WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'            ',
'            select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'            insert into AUDIT_TRAIL(audit_log_id,TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,TABLE_PK_VALUE) ',
'            values(v_audit_id,''EDC_PATIENT_PROFILE'',661,v_ssid ,:P37_PATIENT_PROFILE_ID,37,''EPRO_STDT'','''',:P37_EPRO_STDT,''UPDATE'',UPPER(:APP_USER_NAME),:P37_PATIENT_PROFILE_ID);',
'            ',
'            select nvl(max(audit_log_id),0)+1 into v_audit_id from audit_trail;',
'',
'            insert into AUDIT_TRAIL(audit_log_id,TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,USERNAME,TABLE_PK_VALUE) ',
'            values(v_audit_id,''EDC_PATIENT_PROFILE'',661,v_ssid ,:P37_PATIENT_PROFILE_ID,37,''EPRO_STTM'','''',:P37_EPRO_STTM,''UPDATE'',UPPER(:APP_USER_NAME),:P37_PATIENT_PROFILE_ID);',
'            ',
'            COMMIT;',
'        ',
'        END IF;',
'',
'        IF :P37_EPRO_DIARY_TYPE = ''Electronic'' THEN',
'        ',
'            EDC_MAIL.LOGIN_CREDENTIALS_MAIL_EPRO(',
'            P_PATIENT_PROFILE_ID => :P37_PATIENT_PROFILE_ID,',
'            P_STUDY_ID => :APP_EDC_STUDY_ID,',
'            P_STUDY_CONTACT_ID => :APP_EDC_USER_ID,',
'            P_STUDY_SITE_ID => :P37_STUDY_SITE_ID,',
'            P_RESULT => P_RESULT',
'            );',
'',
'            apex_application.g_print_success_message := ''<span style=color:red>Email alert for Mobile Application download and ePRO Login Credentials has been sent.Please share the same with the subject and facilitate the app download and login proce'
||'ss. This subjects profile has also been created in the "Subject Diary" module of the web application. </span>'';  ',
'       ',
'        ELSIF :P37_EPRO_DIARY_TYPE = ''Paper'' THEN',
'        ',
'            apex_application.g_print_success_message := ''<span style=color:red>ePRO is successfully enabled and the subject profile is created in the "Subject Diary" module.Please navigate to the "Subject Diary" module for entering the paper diary da'
||'ta in the application. </span>'';  ',
'        ',
'        END IF;',
'',
'    END IF;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5173774003843500304)
,p_internal_uid=>4072823330268996212
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  P_RESULT varchar2(500);',
'  V_CNT NUMBER;',
'  V_DISP_SEQ NUMBER;',
'  V_SCHEDULE_ID NUMBER;',
'  V_SCHEDULE_NAME VARCHAR2(100);',
'  V_NEXT_SCHEDULE_ID NUMBER;',
'  V_NEXT_SCHEDULE_NAME VARCHAR2(100);',
'  v_schedule_tm varchar2(20);',
'BEGIN',
'',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'    ',
'        SELECT COUNT(1) INTO V_CNT FROM EDC_PATIENT_DIARY',
'        WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'        ',
'        IF V_CNT = 0 THEN',
'        ',
'            SELECT MIN(DISP_SEQ) INTO V_DISP_SEQ',
'            FROM EDC_PATIENT_SCHEDULE_PARAMS;',
'            ',
'            SELECT SCHEDULE_ID, SCHEDULE_NAME',
'            INTO V_SCHEDULE_ID, V_SCHEDULE_NAME',
'            FROM EDC_PATIENT_SCHEDULE_PARAMS',
'            WHERE DISP_SEQ = V_DISP_SEQ',
'            AND STUDY_ID = :APP_EDC_STUDY_ID;',
'            ',
'            SELECT SCHEDULE_ID, SCHEDULE_NAME',
'            INTO V_NEXT_SCHEDULE_ID, V_NEXT_SCHEDULE_NAME',
'            FROM EDC_PATIENT_SCHEDULE_PARAMS',
'            WHERE DISP_SEQ = V_DISP_SEQ + 1',
'            AND STUDY_ID = :APP_EDC_STUDY_ID;',
'            ',
'            IF :P37_EPRO_STTM = ''Morning'' then',
'                v_schedule_tm := ''08:00'';',
'            ELSIF :P37_EPRO_STTM = ''Evening'' then',
'                v_schedule_tm := ''20:00'';',
'            END IF;',
'',
'            INSERT INTO EDC_PATIENT_DIARY(PATIENT_PROFILE_ID, SCHEDULE_TITLE, SCHEDULE_STATUS, SCHEDULE_ID, STUDY_ID, SECTION_STATUS, IS_SKIP, SCHEDULE_DT, SCHEDULE_TM, DIARY_TYPE)',
'            VALUES(:P37_PATIENT_PROFILE_ID, V_SCHEDULE_NAME, 2, V_SCHEDULE_ID, 661, 2, ''No'',:P37_EPRO_STDT, TO_DATE(:P37_EPRO_STDT||'' ''||v_schedule_tm,''DD-MM-YY HH24:MI''),:P37_EPRO_DIARY_TYPE );',
'            COMMIT;',
'            ',
'            /*INSERT INTO EDC_PATIENT_DIARY(PATIENT_PROFILE_ID, SCHEDULE_TITLE, SCHEDULE_STATUS, SCHEDULE_ID, STUDY_ID, SECTION_STATUS, IS_SKIP, SCHEDULE_DT)',
'            VALUES(:P37_PATIENT_PROFILE_ID, V_NEXT_SCHEDULE_NAME, 2, V_NEXT_SCHEDULE_ID, 661, 2, ''No'',:P37_EPRO_STDT);',
'            COMMIT;*/',
'            ',
'            UPDATE EDC_PATIENT_PROFILE SET EPRO_STATUS = ''Active'' WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'            ',
'            COMMIT;',
'        ',
'        END IF;',
'',
'        IF :P37_EPRO_DIARY_TYPE = ''Electronic'' THEN',
'        ',
'            EDC_MAIL.LOGIN_CREDENTIALS_MAIL_EPRO(',
'            P_PATIENT_PROFILE_ID => :P37_PATIENT_PROFILE_ID,',
'            P_STUDY_ID => :APP_EDC_STUDY_ID,',
'            P_STUDY_CONTACT_ID => :APP_EDC_USER_ID,',
'            P_RESULT => P_RESULT',
'            );',
'',
'            apex_application.g_print_success_message := ''<span style=color:red>Email alert for Mobile Application download and ePRO Login Credentials has been sent.Please share the same with the subject and facilitate the app download and login proce'
||'ss. This subjects profile has also been created in the "Subject Diary" module of the web application. </span>'';  ',
'       ',
'        ELSIF :P37_EPRO_DIARY_TYPE = ''Paper'' THEN',
'        ',
'            apex_application.g_print_success_message := ''<span style=color:red>ePRO is successfully enabled and the subject profile is created in the "Subject Diary" module.Please navigate to the "Subject Diary" module for entering the paper diary da'
||'ta in the application. </span>'';  ',
'        ',
'        END IF;',
'',
'    END IF;',
'    ',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4272707743570419180)
,p_process_sequence=>230
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Resend ePRO login credentials mail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  P_RESULT varchar2(500);',
'BEGIN',
'',
'    IF :P37_PATIENT_PROFILE_ID IS NOT NULL THEN',
'',
'        EDC_MAIL.LOGIN_CREDENTIALS_MAIL_EPRO(',
'        P_PATIENT_PROFILE_ID => :P37_PATIENT_PROFILE_ID,',
'        P_STUDY_ID => :APP_EDC_STUDY_ID,',
'        P_STUDY_CONTACT_ID => :APP_EDC_USER_ID,',
'        P_STUDY_SITE_ID => :P37_STUDY_SITE_ID,',
'        P_RESULT => P_RESULT',
'        );',
'  ',
'        apex_application.g_print_success_message := ''<span style=color:red>ePRO login credentials mail has been sent. </span>'';  ',
'',
'    END IF;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4272707699384419179)
,p_internal_uid=>3171756975428915087
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789568505230567989)
,p_process_sequence=>240
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Diary Type'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    ',
'    update edc_patient_profile',
'    set epro_diary_type = :P37_EPRO_DIARY_TYPE',
'    where patient_profile_id = :P37_PATIENT_PROFILE_ID;',
'    ',
'    commit;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3789568391590567988)
,p_internal_uid=>2688617737089063896
);
wwv_flow_imp.component_end;
end;
/
