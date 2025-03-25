prompt --application/pages/page_00110
begin
--   Manifest
--     PAGE: 00110
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
 p_id=>110
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
'            alert(''Screen failure reason is not entered, Please try again'');',
'        }',
'    }',
'}',
'',
'',
'function approve_unblinding(){',
'    if(confirm("The subject will be unblinded.")){',
'            apex.submit(''APPROVE'');',
'        }',
'        ',
'    }',
''))
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
 p_id=>wwv_flow_imp.id(2689820407863220878)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179465801407886)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_menu_id=>wwv_flow_imp.id(11045189164405407923)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(11045187162360407898)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2689820510746220879)
,p_name=>'Schedule Section'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PV.PATIENT_DIARY_ID, ',
'PV.PATIENT_PROFILE_ID,',
'PV.SCHEDULE_TITLE,',
'(SELECT DISPLAY_VAL FROM EDC_CRF_STATUS WHERE RETURN_VAL = PV.SECTION_STATUS) SECTION_STATUS,',
'''<a href=''||replace(replace(replace(REPLACE (''f?p=&APP_ID.:45:&SESSION.::&DEBUG.::APP_EDC_PATIENT_DIARY_ID,APP_PATIENT_PROFILE_ID,APP_EDC_STUDY_SITE_ID:'',''&SESSION'',:APP_SESSION),''&APP_ID'',:APP_ID),''&DEBUG'',''NO''),chr(46))||PV.PATIENT_DIARY_ID||'',''||P'
||'V.PATIENT_PROFILE_ID||'',''||ESS.STUDY_SITE_ID|| ''> ''|| PVP.DISP_SCHEDULE_NAME ||'' </a>'' as "link"',
'FROM EDC_PATIENT_DIARY PV ,EDC_PATIENT_SCHEDULE_PARAMS PVP, EDC_PATIENT_PROFILE EPP, EDC_STUDY_SITES ESS',
' WHERE PV.PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID  ',
' AND PV.SCHEDULE_ID = PVP.SCHEDULE_ID',
' AND PV.PATIENT_PROFILE_ID = EPP.PATIENT_PROFILE_ID',
' AND EPP.STUDY_SITE_ID = ESS.STUDY_SITE_ID',
'order by TO_NUMBER(PV.PATIENT_DIARY_ID)'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'APP_PATIENT_PROFILE_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689820540479220880)
,p_query_column_id=>1
,p_column_alias=>'PATIENT_DIARY_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689820716591220881)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_PROFILE_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689820802818220882)
,p_query_column_id=>3
,p_column_alias=>'SCHEDULE_TITLE'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689820862653220883)
,p_query_column_id=>4
,p_column_alias=>'SECTION_STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Section Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2689820998077220884)
,p_query_column_id=>5
,p_column_alias=>'link'
,p_column_display_sequence=>4
,p_column_heading=>'Schedule Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11289851134644901466)
,p_plug_name=>'Subject Profile'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:720px;margin-right:5px";'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
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
 p_id=>wwv_flow_imp.id(11289855143612901474)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045181958961407888)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2689818351318220858)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_button_name=>'CRA_REVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CRA Review'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CNT NUMBER;',
'  V_CNT1 NUMBER:=0;',
'  V_CNT2 NUMBER;',
'  V_CNT3 NUMBER:=0;',
'  v_Section_status number;',
'BEGIN',
'  ',
'  for j in (select patient_diary_id, section_status from edc_patient_diary where patient_profile_id=:APP_PATIENT_PROFILE_ID) loop',
'',
'      select count(1) into v_cnt from (select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id',
'      and b.crf_id=c.crf_id',
'      and c.parent_page is null',
'      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'      and b.app_type=''WEB''',
'      and c.crf_id not in (3,24)',
'      union all',
'      select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id',
'      and b.crf_id=c.crf_id',
'      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'      and b.app_type=''WEB''',
'      and c.crf_id=3',
'      and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'              WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Randomization'') and RADIO4=''Yes'')',
'      union all',
'      select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id',
'      and b.crf_id=c.crf_id',
'      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'      and b.app_type=''WEB''',
'      and c.crf_id=24',
'      and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'              WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Screening'') and GENDER=''Female'' and RADIO3=''Yes''));',
'',
'      for i in (select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id',
'      and b.crf_id=c.crf_id',
'      and c.parent_page is null',
'      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'      and b.app_type=''WEB''',
'      and c.crf_id not in (3,24)',
'      union all',
'      select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id',
'      and b.crf_id=c.crf_id',
'      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'      and b.app_type=''WEB''',
'      and c.crf_id=3',
'      and 1=(SELECT count(1) FROM IWRS_CRF_DM',
'              WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'              WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Randomization'') and RADIO4=''Yes'')',
'      union all',
'      select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id',
'      and b.crf_id=c.crf_id',
'      and a.patient_diary_id =J.PATIENT_DIARY_ID',
'      and b.app_type=''WEB''',
'      and c.crf_id=24',
'      and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'              WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Screening'') and GENDER=''Female'' and RADIO3=''Yes'')) loop',
'',
'            execute immediate ''select count(1) from ''||i.crf_table_name||'' where patient_diary_id=''||J.PATIENT_DIARY_ID',
'            into v_cnt2;',
'',
'            if v_cnt2 > 0 then',
'                execute immediate ''select section_status from ''||i.crf_table_name||'' where patient_diary_id=''||J.PATIENT_DIARY_ID into v_section_status;',
'',
'                if v_section_status=4.5 then        --data submitted by crc',
'                    v_cnt1:=v_cnt1 + 1;',
'                end if;',
'',
'            end if;',
'',
'      end loop;',
'',
'      if v_cnt=v_cnt1 and :APP_EDC_ROLE_ID IN (13,27) then',
'          V_CNT3:=V_CNT3 + 1;        --if there is any schedule that is crc submitted, this count will be incremented',
'      end if;',
'',
'  end loop;',
'',
'  if v_cnt3 > 0 then',
'      return true;',
'  else',
'      return false;',
'  end if;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2689820207374220876)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_button_name=>'PI_SIGNOFF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'PI SIgnoff'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CNT NUMBER;',
'  V_CNT1 NUMBER:=0;',
'  V_CNT2 NUMBER;',
'  V_CNT3 NUMBER:=0;',
'  v_Section_status number;',
'  v_diary_type varchar2(20);',
'BEGIN',
'  ',
'  for j in (select patient_diary_id, section_status from edc_patient_diary where patient_profile_id=:APP_PATIENT_PROFILE_ID) loop',
'',
'      select diary_type into v_diary_type from edc_patient_diary where patient_diary_id=J.PATIENT_DIARY_ID;',
'      ',
'      select count(1) into v_cnt from (select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'      and c.parent_page is null',
'      and a.patient_diary_id=J.PATIENT_DIARY_ID and b.app_type=''WEB''',
'      and c.crf_id not in (3,24)',
'      union all',
'      select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'      and a.patient_diary_id=J.PATIENT_DIARY_ID and b.app_type=''WEB''',
'      and c.crf_id=3',
'      and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'              WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Randomization'') and RADIO4=''Yes'')',
'      union all',
'      select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'      and a.patient_diary_id=J.PATIENT_DIARY_ID and b.app_type=''WEB'' and c.crf_id=24',
'      and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'              WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Screening'') and GENDER=''Female'' and RADIO3=''Yes''));',
'',
'      for i in (select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id',
'      and b.crf_id=c.crf_id and c.parent_page is null',
'      and a.patient_diary_id=J.PATIENT_DIARY_ID and b.app_type=''WEB''',
'      and c.crf_id not in (3,24)',
'      union all',
'      select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'      and a.patient_diary_id=J.PATIENT_DIARY_ID and b.app_type=''WEB''',
'      and c.crf_id=3',
'      and 1=(SELECT count(1) FROM IWRS_CRF_DM',
'              WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'              WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Randomization'') and RADIO4=''Yes'')',
'      union all',
'      select c.crf_table_name ',
'      from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'      where a.schedule_id=b.schedule_id and b.crf_id=c.crf_id',
'      and a.patient_diary_id=J.PATIENT_DIARY_ID and b.app_type=''WEB'' and c.crf_id=24',
'      and 1=(SELECT count(1) FROM IWRS_CRF_DM WHERE PATIENT_VISIT_ID=(SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'              WHERE PATIENT_PROFILE_ID=:APP_PATIENT_PROFILE_ID AND VISIT_TITLE=''Screening'') and GENDER=''Female'' and RADIO3=''Yes'')) loop',
'',
'            execute immediate ''select count(1) from ''||i.crf_table_name||'' where patient_diary_id=''||J.PATIENT_DIARY_ID',
'            into v_cnt2;',
'',
'            if v_cnt2 > 0 then',
'                execute immediate ''select section_status from ''||i.crf_table_name||'' where patient_diary_id=''||J.PATIENT_DIARY_ID into v_section_status;',
'',
'                if v_diary_type=''Electronic'' and v_section_status in (4.5,6) then        --data submitted by crc or cra reviewed',
'                    v_cnt1 := v_cnt1 + 1;',
'                elsif v_diary_type=''Paper'' and v_section_status=6 then',
'                    v_cnt1 := v_cnt1 + 1;',
'                end if;',
'',
'            end if;',
'',
'      end loop;',
'',
'      if v_cnt=v_cnt1 and :APP_EDC_ROLE_ID IN (13,15) then',
'          V_CNT3:=V_CNT3 + 1;',
'      end if;',
'',
'  end loop;',
'',
'  if v_cnt3 > 0 then',
'      return true;',
'  else',
'      return false;',
'  end if;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2688800324219594713)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2688800667219594714)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_button_name=>'AUDIT_TRAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Audit Trail'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P110_PATIENT_PROFILE_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2688856549974594890)
,p_branch_name=>'Go To Page 45'
,p_branch_action=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:1001:APP_EDC_PATIENT_VISIT_ID,P110_PATIENT_PROFILE_ID:&P110_PATIENT_VISIT_ID.,&P110_PATIENT_PROFILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':REQUEST IN (''CREATE'')'
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688796077173594680)
,p_name=>'P110_EPRO_STDT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Select Date of Treatment Day 1 </b>'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'EPRO_STDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>500
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'readonly'
,p_colspan=>5
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688796483807594692)
,p_name=>'P110_EPRO_STTM'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Select Time of Treatment Day 1 </b>'
,p_source=>'EPRO_STTM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Morning;Morning,Evening;Evening'
,p_tag_attributes=>'readonly'
,p_colspan=>5
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688796886271594694)
,p_name=>'P110_EPRO_DIARY_TYPE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Select the Diary Type </b>'
,p_source=>'EPRO_DIARY_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Electronic;Electronic,Paper;Paper'
,p_tag_attributes=>'readonly'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688802716747594716)
,p_name=>'P110_PATIENT_PROFILE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
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
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688803052944594716)
,p_name=>'P110_MAX_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_item_default=>'to_Date(to_char(localtimestamp,''DD-MON-YYYY''),''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688803492407594717)
,p_name=>'P110_STUDY_SITE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
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
,p_cHeight=>1
,p_colspan=>5
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>':P110_PATIENT_PROFILE_ID IS NOT NULL'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
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
 p_id=>wwv_flow_imp.id(2688803916740594718)
,p_name=>'P110_PATIENT_INITIAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subject Initials'
,p_source=>'PTINTL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>3
,p_tag_attributes=>'readonly'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688804262803594719)
,p_name=>'P110_PATIENT_INITIAL_CHANGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_prompt=>'<b>Reason For Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688804667592594719)
,p_name=>'P110_SCREENING_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_prompt=>'Screening Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>6
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'readonly="readonly"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--is null (Condition)',
'--P110_PATIENT_PROFILE_ID'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688805113662594720)
,p_name=>'P110_SCREENING_DIGIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Screening Number'
,p_source=>'SCRNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly="readonly"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688805477305594720)
,p_name=>'P110_SCR_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688805872187594721)
,p_name=>'P110_SCREENING_NUMBER_FINAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Screening Number'
,p_source=>'SCRNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>6
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>'P110_PATIENT_PROFILE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688806283762594721)
,p_name=>'P110_SCREENING_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
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
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'&P110_MAX_DATE.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688806645611594721)
,p_name=>'P110_SCREENING_DATE_CHANGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_prompt=>'<b>Reason For Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688807112768594722)
,p_name=>'P110_SCREENING_NUMBER_FINAL_CHANGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_prompt=>'<b>Reason For Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688807514910594723)
,p_name=>'P110_RANDOMIZATION_NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
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
'if :P110_PATIENT_PROFILE_ID IS NULL THEN ',
'RETURN FALSE;',
'ELSE',
'',
'select count(*) ',
'  INTO V_CNT',
'  from edc_patient_profile',
' where patient_profile_id = :P110_PATIENT_PROFILE_ID',
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
'if :P110_PATIENT_PROFILE_ID IS NULL THEN ',
'RETURN FALSE;',
'ELSE',
'',
'select count(*) ',
'  INTO V_CNT',
'  from edc_patient_profile',
' where patient_profile_id = :P110_PATIENT_PROFILE_ID',
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
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688807880558594724)
,p_name=>'P110_RANDOMIZATION_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
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
'if :P110_PATIENT_PROFILE_ID IS NULL THEN ',
'RETURN FALSE;',
'ELSE',
'',
'select count(*) ',
'  INTO V_CNT',
'  from edc_patient_profile',
' where patient_profile_id = :P110_PATIENT_PROFILE_ID',
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
'if :P110_PATIENT_PROFILE_ID IS NULL THEN ',
'RETURN FALSE;',
'ELSE',
'',
'select count(*) ',
'  INTO V_CNT',
'  from edc_patient_profile',
' where patient_profile_id = :P110_PATIENT_PROFILE_ID',
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
,p_field_template=>wwv_flow_imp.id(11045186061821407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688808274010594726)
,p_name=>'P110_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
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
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688808711330594727)
,p_name=>'P110_WITHDRAW_REASON'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Withdraw Reason</b>'
,p_source=>'WITHDRAW_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P110_WITHDRAW_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688809093847594727)
,p_name=>'P110_SCREEN_FAIL_REASON'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
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
,p_display_when=>':P110_SCREEN_FAIL_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688809445131594727)
,p_name=>'P110_UNBLINDED_REASON'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
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
,p_display_when=>':P110_UNBLINDED_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688809928189594728)
,p_name=>'P110_DISCONTINUE_REASON'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Withdrawn/Discontinued Reason</b>'
,p_source=>'DISCONTINUE_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':P110_DISCONTINUE_REASON IS NOT NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688812966437594731)
,p_name=>'P110_CREATED_BY'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(11289855143612901474)
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
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
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
 p_id=>wwv_flow_imp.id(2688813357766594731)
,p_name=>'P110_CREATED_ON'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(11289855143612901474)
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
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2688813780809594732)
,p_name=>'P110_UPDATED_BY'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(11289855143612901474)
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
 p_id=>wwv_flow_imp.id(2688814221411594732)
,p_name=>'P110_UPDATED_ON'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(11289855143612901474)
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
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2689818627292220860)
,p_name=>'P110_QRY_COUNT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(11289851134644901466)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number;',
'begin',
'',
'    select count(1) into v_cnt',
'    from edc_crf_queries',
'    where patient_diary_id in (select patient_diary_id from edc_patient_diary where patient_profile_id = :APP_PATIENT_PROFILE_ID)',
'    and qry_status in (''Open'',''Reopened'',''Responded'');',
'    ',
'    if v_cnt > 0 then',
'        return v_cnt;',
'    else',
'        return 0;',
'    end if;',
'    ',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2688828990631594840)
,p_computation_sequence=>10
,p_computation_item=>'P110_SCREENING_DIGIT'
,p_computation_type=>'QUERY'
,p_computation=>'select GET_CONCATE_SCREENING_NUMBER(:P110_SCREENING_NUMBER,:P110_SCREENING_DIGIT) from dual'
,p_computation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--condition: is null',
'P37_PATIENT_PROFILE_ID'))
,p_compute_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2688829275234594840)
,p_computation_sequence=>10
,p_computation_item=>'P110_SCREENING_NUMBER_FINAL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT SCRNO FROM EDC_PATIENT_PROFILE WHERE PATIENT_PROFILE_ID = :P110_PATIENT_PROFILE_ID'
,p_compute_when=>'P110_PATIENT_PROFILE_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688831318560594843)
,p_validation_name=>'P110_STUDY_SITE_ID must be Active'
,p_validation_sequence=>5
,p_validation=>'EDC_UTIL.GET_SITE_STATUS(:P110_STUDY_SITE_ID) = 3'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Patient enrollment is disable because site is not Active'
,p_validation_condition=>':REQUEST IN (''CREATE'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(2688803492407594717)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688830937700594842)
,p_validation_name=>'SIte Cap'
,p_validation_sequence=>7
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM EDC_STUDY_SITES',
' WHERE EDC_SITE_PKG.GET_SITE_CURRENT_CAP(STUDY_SITE_ID) < CAP_SIZE',
'   AND STUDY_SITE_ID = :P110_STUDY_SITE_ID'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Subject enrollment is disabled, because this site has reached the maximum Cap size'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688834538190594846)
,p_validation_name=>'UNIQUE_SCREENING_NUMBER'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM edc_patient_profile pp',
'WHERE study_site_id    =:P110_STUDY_SITE_ID',
'AND scrno             = :P110_SCREENING_NUMBER_FINAL',
'AND PATIENT_PROFILE_ID<>NVL(:P110_PATIENT_PROFILE_ID,',
'  (SELECT NVL(MAX(PATIENT_PROFILE_ID),0)+1 FROM EDC_PATIENT_PROFILE',
'  ))'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Screening Number must be unique.'
,p_validation_condition=>'''SAVE'',''CREATE'''
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(2688805872187594721)
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
 p_id=>wwv_flow_imp.id(2688834077387594845)
,p_validation_name=>'SCREENING_NUMBER 6  Digit'
,p_validation_sequence=>20
,p_validation=>'P110_SCREENING_NUMBER'
,p_validation2=>'^[[:digit:]]{6}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Screening Number must be of 6 Digit'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(2688804667592594719)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'request is contained within expression 1',
'CREATE,SAVE'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688832528750594844)
,p_validation_name=>'P110_PATIENT_INITIAL_NN'
,p_validation_sequence=>30
,p_validation=>'P110_PATIENT_INITIAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Subject Initial is missing. Please provide.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(2688803916740594718)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688832889050594844)
,p_validation_name=>'P110_SCREENING_NUMBER_NN'
,p_validation_sequence=>50
,p_validation=>'P110_SCREENING_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Screening Number is missing. Please provide.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(2688804667592594719)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688833262446594845)
,p_validation_name=>'P110_RANDOMIZATION_NUMBER_NN'
,p_validation_sequence=>60
,p_validation=>'P110_RANDOMIZATION_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Randomization Number is missing. Please provide.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(2688807514910594723)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688833679802594845)
,p_validation_name=>'P110_SCREENING_DATE'
,p_validation_sequence=>70
,p_validation=>'P110_SCREENING_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Screening Date is missing, Please provide.'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(2688806283762594721)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688834929326594846)
,p_validation_name=>'P110_PATIENT_INITIAL'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt number;',
'begin',
'SELECT count(*) into v_cnt ',
'  FROM DUAL WHERE not regexp_like (:P110_PATIENT_INITIAL, ''^[a-zA-Z .''''-]+$''); ',
'',
' If v_cnt > 0 then ',
'   return ''Please insert alphabetic value'';',
' else',
'   return null; ',
' End If;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(2688803916740594718)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688831642028594844)
,p_validation_name=>'P110_PATIENT_INITIAL_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P110_PATIENT_INITIAL_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Subject Initials" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(30);',
'BEGIN',
'',
'    SELECT PTINTL INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P110_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND LENGTH(:P110_PATIENT_INITIAL)>0 THEN',
'      RETURN TRUE;',
'    elsif a IS NULL AND LENGTH(:P110_PATIENT_INITIAL) IS NULL THEN',
'      RETURN FALSE;',
'    elsif a IS NOT NULL AND a = :P110_PATIENT_INITIAL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(2688804262803594719)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688832137464594844)
,p_validation_name=>'P110_SCREENING_NUMBER_FINAL_CHANGE'
,p_validation_sequence=>100
,p_validation=>'P110_SCREENING_NUMBER_FINAL_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Screening Number" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(30);',
'BEGIN',
'',
'    SELECT scrno INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P110_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND LENGTH(:P110_SCREENING_NUMBER_FINAL)>0 THEN',
'      RETURN TRUE;',
'    elsif a IS NULL AND LENGTH(:P110_SCREENING_NUMBER_FINAL) IS NULL THEN',
'      RETURN FALSE;',
'    elsif a IS NOT NULL AND a = :P110_SCREENING_NUMBER_FINAL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(2688807112768594722)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688829710297594841)
,p_validation_name=>'EPRO_STDT'
,p_validation_sequence=>110
,p_validation=>'P110_EPRO_STDT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Date of Treatment Day 1 is missing. Please complete.'
,p_validation_condition=>':P110_PATIENT_PROFILE_ID IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_imp.id(4072823235701996211)
,p_associated_item=>wwv_flow_imp.id(2688796077173594680)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688830134522594842)
,p_validation_name=>'EPRO_STTM'
,p_validation_sequence=>120
,p_validation=>'P110_EPRO_STTM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Time of Treatment Day 1 is missing. Please complete.'
,p_validation_condition=>':P110_PATIENT_PROFILE_ID IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_imp.id(4072823235701996211)
,p_associated_item=>wwv_flow_imp.id(2688796483807594692)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2688830525701594842)
,p_validation_name=>'EPRO_DIARY_TYPE'
,p_validation_sequence=>130
,p_validation=>'P110_EPRO_DIARY_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select the Diary Type is missing. Please complete.'
,p_validation_condition=>':P110_PATIENT_PROFILE_ID IS NOT NULL'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_imp.id(4072823235701996211)
,p_associated_item=>wwv_flow_imp.id(2688796886271594694)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688842749365594863)
,p_name=>'SET_SCREENING_NO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_STUDY_SITE_ID'
,p_condition_element=>'P110_STUDY_SITE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P110_SCREENING_NUMBER_FINAL'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'condition :: 1 is null :',
'P37_SCREENING_NUMBER',
'',
'--Condition Not null',
'P37_SCREENING_NUMBER'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688843333511594875)
,p_event_id=>wwv_flow_imp.id(2688842749365594863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_SCREENING_NUMBER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>' SELECT SITE_NUMBER||''-S-'' FROM EDC_STUDY_SITES WHERE STUDY_SITE_ID = :P110_STUDY_SITE_ID'
,p_attribute_07=>'P110_STUDY_SITE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688843822357594876)
,p_event_id=>wwv_flow_imp.id(2688842749365594863)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_SCREENING_NUMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688844327881594876)
,p_event_id=>wwv_flow_imp.id(2688842749365594863)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_SCREENING_DIGIT,P110_SCREENING_NUMBER_FINAL'
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
' where a.study_site_id = :P110_STUDY_SITE_ID',
' group by a.site_number;',
'*/',
'',
'/*',
'    with max_id as (select lpad(to_char(nvl(max(to_number(REGEXP_REPLACE(SUBSTR(b.scrno, INSTR(b.scrno, ''-'')+1), ''[^[:digit:]]+'', ''''))), 0) + 1), 3, ''0'') id',
'                      from edc_patient_profile b',
'                     where b.study_site_id = :P110_STUDY_SITE_ID',
'                   )',
'            select site_number||''-13-443-''|| (select id from max_id)',
'              into v_scrno',
'              from edc_study_sites',
'             where study_site_id = :P110_STUDY_SITE_ID;',
'*/',
'',
' --   with max_id as (select lpad(NVL(max(to_number(substr(b.scrno, length(b.scrno) - 2))), 0) + 1, 3, ''0'') id',
'    with max_id as (select lpad(count(1) + 1, 3, ''0'') id',
'                      from edc_patient_profile b',
'                     where b.study_site_id = :P110_STUDY_SITE_ID',
'                   )',
'            select site_number ||''-''|| (select id from max_id)',
'              into v_scrno',
'              from edc_study_sites',
'             where study_site_id = :P110_STUDY_SITE_ID;',
'',
'    return v_scrno;',
'END;'))
,p_attribute_07=>'P110_STUDY_SITE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688844813439594877)
,p_event_id=>wwv_flow_imp.id(2688842749365594863)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_SCREENING_DIGIT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688845191298594877)
,p_name=>'SET P110_SCREENING_NUMBER_FLAG TO CHECK WHETHER SCRNO ALREADY EXIST'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_SCREENING_DIGIT'
,p_condition_element=>'P110_SCREENING_DIGIT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688845727217594879)
,p_event_id=>wwv_flow_imp.id(2688845191298594877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'BEGIN',
'  /*insert into temp_trace values(:P110_SCREENING_NUMBER||''''||:P110_SCREENING_DIGIT);',
'  commit;*/',
'  SELECT COUNT(*) ',
'    INTO V_COUNT ',
'    FROM EDC_PATIENT_PROFILE ',
'   WHERE TRIM(UPPER(SCRNO))=TRIM(UPPER(:P110_SCREENING_DIGIT))',
'   and STUDY_SITE_ID = :P110_STUDY_SITE_ID;',
'',
' IF V_COUNT > 0 THEN',
'    :P110_SCREENING_NUMBER_FLAG := 1;',
' ELSE',
'  :P110_SCREENING_NUMBER_FLAG := 0;',
' END IF;',
'END;'))
,p_attribute_02=>'P110_SCREENING_DIGIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688846223085594879)
,p_event_id=>wwv_flow_imp.id(2688845191298594877)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert($v(''P110_SCREENING_NUMBER_FLAG''));',
'if ($v(''P110_SCREENING_NUMBER_FLAG'')==1)',
'{',
' alert(''Screening Number Already Exists.'');',
'// $x(''P110_SCREENING_NUMBER_FLAG'').value='''';',
' $x(''P110_SCREENING_DIGIT'').value='''';',
' document.getElementById(''P110_SCREENING_NUMBER_FLAG'').focus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688846636694594879)
,p_name=>'Set Alert for Subject Init'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_PATIENT_INITIAL'
,p_condition_element=>'P110_PATIENT_INITIAL'
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
 p_id=>wwv_flow_imp.id(2688847118808594880)
,p_event_id=>wwv_flow_imp.id(2688846636694594879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please insert only Alphabetic Value.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688847532884594880)
,p_name=>'P110_PATIENT_INITIAL CHANGE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_PATIENT_INITIAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P110_PATIENT_PROFILE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688847995254594881)
,p_event_id=>wwv_flow_imp.id(2688847532884594880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_PATIENT_INITIAL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688848415639594881)
,p_name=>'P110_SCREENING_DATE CHANGE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_SCREENING_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P110_PATIENT_PROFILE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688848904197594881)
,p_event_id=>wwv_flow_imp.id(2688848415639594881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_SCREENING_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688849309796594882)
,p_name=>'P110_SCREENING_NUMBER_FINAL CHANGE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_SCREENING_NUMBER_FINAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P110_PATIENT_PROFILE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688849809055594882)
,p_event_id=>wwv_flow_imp.id(2688849309796594882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_SCREENING_NUMBER_FINAL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688850154702594882)
,p_name=>'P110_PATIENT_INITIAL_CHANGE HIDE'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'  IF :P110_PATIENT_PROFILE_ID IS NULL THEN',
'    RETURN true;',
'  ELSE',
'     SELECT PTINTL INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P110_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND LENGTH(:P110_PATIENT_INITIAL)>0 THEN',
'      RETURN false;',
'    elsif a IS NULL AND LENGTH(:P110_PATIENT_INITIAL) IS NULL THEN',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P110_PATIENT_INITIAL THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688850723222594883)
,p_event_id=>wwv_flow_imp.id(2688850154702594882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_PATIENT_INITIAL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688851120102594883)
,p_name=>'P110_SCREENING_dATE_CHANGE_HIDE'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'  IF :P110_PATIENT_PROFILE_ID IS NULL THEN',
'    RETURN true;',
'  ELSE',
'     SELECT SCREENING_DATE INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P110_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND :P110_SCREENING_DATE IS NOT NULL THEN',
'      RETURN false;',
'    elsif a IS NULL AND :P110_SCREENING_DATE IS NULL THEN',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P110_SCREENING_DATE THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688851580163594884)
,p_event_id=>wwv_flow_imp.id(2688851120102594883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_PATIENT_INITIAL_CHANGE,P110_SCREENING_DATE_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688851966276594884)
,p_name=>'P110_SCREENING_NUMBER_FINAL_CHANGE HIDE'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  a VARCHAR2(20);',
'BEGIN',
'  IF :P110_PATIENT_PROFILE_ID IS NULL THEN',
'    RETURN true;',
'  ELSE',
'     SELECT scrno INTO a FROM EDC_PATIENT_PROFILE WHERE patient_profile_ID=:P110_PATIENT_PROFILE_ID;',
'    IF a IS NULL AND LENGTH(:P110_SCREENING_NUMBER_FINAL)>0 THEN',
'      RETURN false;',
'    elsif a IS NULL AND LENGTH(:P110_SCREENING_NUMBER_FINAL) IS NULL THEN',
'      RETURN true;',
'    elsif a IS NOT NULL AND a = :P110_SCREENING_NUMBER_FINAL THEN',
'      RETURN true;',
'    ELSE',
'      RETURN false;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688852500307594885)
,p_event_id=>wwv_flow_imp.id(2688851966276594884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_SCREENING_NUMBER_FINAL_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688853744988594887)
,p_name=>'Refresh page on Modal auto_close'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageautoclose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688854306052594887)
,p_event_id=>wwv_flow_imp.id(2688853744988594887)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2688855545245594888)
,p_name=>'Open Audit Trail Popup (Page 41)'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2688800667219594714)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2688856041816594889)
,p_event_id=>wwv_flow_imp.id(2688855545245594888)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Audit Trail'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:41:&APP_SESSION.:::41:P41_PAGE_ID,P41_PK_ID,P41_TABLE_NAME:&APP_PAGE_ID.,&P110_PATIENT_PROFILE_ID.,EDC_PATIENT_PROFILE'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'70'
,p_attribute_09=>'80'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2689818656190220861)
,p_name=>'On Click of CRA Review'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2689818351318220858)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2689818789435220862)
,p_event_id=>wwv_flow_imp.id(2689818656190220861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a = $v("P110_QRY_COUNT");',
'',
'if (a > 0)',
'    {',
'        alert("Please close all queries and then Review.");',
'    }',
'else',
'    {',
'        apex.submit(''CRA_REVIEW'');',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2690136733886582272)
,p_name=>'PI_SIGNOFF_MODAL_OPEN'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2689820207374220876)
,p_condition_element=>'P110_QRY_COUNT'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2690137072386582286)
,p_event_id=>wwv_flow_imp.id(2690136733886582272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert("Please get all queries closed by the CRA and then Sign off.");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2690137586907582288)
,p_event_id=>wwv_flow_imp.id(2690136733886582272)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:91:&APP_SESSION.:::1:P91_USERNM,P91_PAGE_ID:&APP_USER_NAME.,110'
,p_attribute_06=>'#uSuccessMessage'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'60'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2688838429119594850)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_PATIENT_PROFILE'
,p_attribute_02=>'EDC_PATIENT_PROFILE'
,p_attribute_03=>'P110_PATIENT_PROFILE_ID'
,p_attribute_04=>'PATIENT_PROFILE_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>2688838429119594850
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2688839607306594851)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_PATIENT_PROFILE'
,p_attribute_02=>'EDC_PATIENT_PROFILE'
,p_attribute_03=>'P110_PATIENT_PROFILE_ID'
,p_attribute_04=>'PATIENT_PROFILE_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_when=>':REQUEST IN (''CREATE'',''SAVE'',''EPRO_CRED'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>2688839607306594851
,p_process_comment=>'Unable to process row of table EDC_PATIENT_PROFILE.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2688842014823594854)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'45'
,p_internal_uid=>2688842014823594854
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2689818502119220859)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRA Review Subject Level'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_res boolean;',
' l_sql varchar2(32767);',
' v_pk_id varchar2(20);',
' v_pk_value number;',
' v_cnt number;',
' v_section_status number;',
' v_crf_status number;',
' TYPE EmpCurTyp IS REF CURSOR;',
' emp_cv   EmpCurTyp;',
' v_cur_txt1 varchar2(2000);',
'begin',
'    ',
'    for j in (select patient_diary_id from edc_patient_diary where patient_profile_id = :APP_PATIENT_PROFILE_ID) loop',
'    ',
'        :APP_EDC_PATIENT_DIARY_ID := J.PATIENT_DIARY_ID;',
'        ',
'        for i in (select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                  where a.schedule_id = b.schedule_id',
'                  and b.crf_id = c.crf_id',
'                  --and c.parent_page is null',
'                  and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                  and b.app_type = ''WEB''',
'                  and c.crf_id not in (3,24)',
'                  union all',
'                  select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                  where a.schedule_id = b.schedule_id',
'                  and b.crf_id = c.crf_id',
'                  and c.parent_page is null',
'                  and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                  and b.app_type = ''WEB''',
'                  and c.crf_id = 3',
'                  and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                          WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                          WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Randomization'') and RADIO4=''Yes'')',
'                  union all',
'                  select c.crf_table_name , a.patient_diary_id, c.crf_page_no',
'                  from edc_patient_diary a, edc_patient_diary_pages b, edc_crf_master c',
'                  where a.schedule_id = b.schedule_id',
'                  and b.crf_id = c.crf_id',
'                  and c.parent_page is null',
'                  and a.patient_diary_id =J.PATIENT_DIARY_ID',
'                  and b.app_type = ''WEB''',
'                  and c.crf_id = 24',
'                  and 1 = (SELECT count(1) FROM IWRS_CRF_DM',
'                          WHERE PATIENT_VISIT_ID = (SELECT PATIENT_VISIT_ID FROM EDC_PATIENT_VISIT',
'                          WHERE PATIENT_PROFILE_ID = :APP_PATIENT_PROFILE_ID AND VISIT_TITLE = ''Screening'')',
'                          and GENDER=''Female'' and RADIO3=''Yes'')',
'                  ) loop',
'',
'             :APP_EDC_PATIENT_DIARY_ID:= I.PATIENT_DIARY_ID;',
'',
'             --if i.crf_id not in (94,95,197,198,241,242) then        --static parent child pages',
'             if i.crf_page_no in (100,509) then        --dynamic page numbers',
'',
'                 EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                    WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                    AND cons.constraint_name = cols.constraint_name',
'                                    AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                 EXECUTE IMMEDIATE ''SELECT ''||V_PK_ID||'' FROM ''||I.CRF_TABLE_NAME||',
'                 '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_PK_VALUE;',
'',
'                 EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                 '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID INTO V_CRF_STATUS;',
'',
'                 if V_CRF_STATUS = 4.5 then',
'',
'                     l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                              USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                              values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                              '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''4.5'''',''''6'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                     execute immediate l_sql;',
'',
'                 end if;',
'',
'             elsif i.crf_page_no in (510) then        --dynamic visit child page number',
'',
'                 EXECUTE IMMEDIATE ''SELECT distinct(cols.column_name) FROM all_constraints cons, all_cons_columns cols',
'                                    WHERE cols.table_name = ''''''||I.CRF_TABLE_NAME||'''''' AND cons.constraint_type = ''''P''''',
'                                    AND cons.constraint_name = cols.constraint_name',
'                                    AND cons.owner = cols.owner'' INTO V_PK_ID;',
'',
'                 v_cur_txt1 := ''select ''||V_PK_ID||'' from ''||I.CRF_TABLE_NAME||'' where PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID;',
'',
'                 open emp_cv for v_cur_txt1;',
'                 loop',
'                 fetch emp_cv into V_PK_VALUE;',
'                 exit when emp_cv%NOTFOUND;',
'',
'                     EXECUTE IMMEDIATE ''SELECT SECTION_STATUS FROM ''||I.CRF_TABLE_NAME||',
'                     '' WHERE PATIENT_DIARY_ID = ''||J.PATIENT_DIARY_ID||'' AND ''||V_PK_ID||'' = ''||V_PK_VALUE INTO V_CRF_STATUS;',
'',
'                     if V_CRF_STATUS = 4.5 then',
'',
'                         l_sql := ''insert into AUDIT_TRAIL(TABLE_NAME,STUDY_ID,STUDY_SITE_ID,PATIENT_PROFILE_ID,PATIENT_DIARY_ID,PAGE_NO,COLUMN_NAME,OLD_VALUE,NEW_VALUE,ACTION,',
'                                  USERNAME,LOG_TIMESTAMP,REASON,TABLE_PK_VALUE) ',
'                                  values(''''''||I.CRF_TABLE_NAME||'''''',''||:APP_EDC_STUDY_ID||'',''||:APP_EDC_STUDY_SITE_ID||'',''||:APP_PATIENT_PROFILE_ID||'',''||J.PATIENT_DIARY_ID||',
'                                  '',''||i.crf_page_no||'',''''SECTION_STATUS'''',''''4.5'''',''''6'''',''''UPDATE'''',UPPER(''''''||:APP_USER_NAME||''''''),SYSTIMESTAMP,NULL,''||v_pk_value||'')'';',
'                         execute immediate l_sql;',
'',
'                     end if;',
'',
'                 end loop;',
'',
'                 close emp_cv;',
'',
'             end if;             ',
'             commit;',
'',
'             if i.crf_page_no in (100,509,510) then',
'                 EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                              '' SET SECTION_STATUS = 6,',
'                              UPDATED_BY = UPPER(''''''||:APP_USER_NAME||''''''),UPDATED_ON = TO_DATE(TO_CHAR(LOCALTIMESTAMP,''''DD-MON-YYYY HH24:MI:SS''''),''''DD-MON-YYYY HH24:MI:SS'''')',
'                              WHERE section_Status = 4.5 and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'             else',
'                 EXECUTE IMMEDIATE ''UPDATE ''||I.CRF_TABLE_NAME||',
'                              '' SET SECTION_STATUS = 6',
'                              WHERE section_Status = 4.5 and PATIENT_DIARY_ID = ''|| J.PATIENT_DIARY_ID;',
'             end if;',
'             commit;',
'',
'         end loop;',
'',
'         commit;',
'',
'         update edc_patient_diary',
'         set section_status = 6',
'         where PATIENT_DIARY_ID = J.PATIENT_DIARY_ID',
'         and section_status = 4.5;',
'',
'         COMMIT;',
'         ',
'    end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2689818351318220858)
,p_internal_uid=>2689818502119220859
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2465469729878890505)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set parameters'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_patient_profile_id number;',
'    v_study_site_id number;',
'begin',
'    ',
'    select patient_profile_id, study_site_id',
'    into v_patient_profile_id, v_study_site_id',
'    from edc_patient_profile',
'    where patient_profile_id = :P110_PATIENT_PROFILE_ID;',
'    ',
'    :APP_PATIENT_PROFILE_ID := v_patient_profile_id;',
'    :APP_EDC_STUDY_SITE_ID := v_study_site_id;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2465469729878890505
);
wwv_flow_imp.component_end;
end;
/
