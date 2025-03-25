prompt --application/pages/page_00085
begin
--   Manifest
--     PAGE: 00085
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
 p_id=>85
,p_tab_set=>'TS1'
,p_name=>'Refresh IP'
,p_step_title=>'Refresh IP'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(11045178358769407882)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7950273488215778093)
,p_plug_name=>'Refresh IP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_num_rows=>15
,p_plug_header=>'<b> This action will replace the Kit with new available one. </b>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5608934471788749580)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7950273488215778093)
,p_button_name=>'Request'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Request Replacement'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from iwrs_crf_dm_ip',
'where NVL(APP_FLG,''C'') <> ''R''',
'and dip_id = :P85_DIP_ID'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7950306139988002861)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7950273488215778093)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from iwrs_crf_dm_ip',
'where app_flg = ''R''',
'and rplc_rsn is NOT null',
'and dip_id = :P85_DIP_ID'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5608934359451749579)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7950273488215778093)
,p_button_name=>'REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Refresh'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from iwrs_crf_dm_ip',
'where app_flg = ''R''',
'and rplc_rsn is NOT null',
'and dip_id = :P85_DIP_ID'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5608934664022749582)
,p_name=>'P85_REJ_RSN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7950273488215778093)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rejection Reason'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>6
,p_cHeight=>3
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from iwrs_crf_dm_ip',
'where app_flg = ''R''',
'and rplc_rsn is NOT null',
'and dip_id = :P85_DIP_ID'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7950273963107778093)
,p_name=>'P85_DIP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7950273488215778093)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7950284942156814460)
,p_name=>'P85_IP_STATUS'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7950273488215778093)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_status number;',
'begin',
'select rplc_rsn ',
'  into v_status',
'from iwrs_Crf_dm_ip ',
'where dip_id= :P85_DIP_ID',
'AND APP_FLG = ''R'';',
'',
'RETURN V_STATUS;',
'',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Select Reason'
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
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from iwrs_crf_dm_ip',
'where nvl(app_flg ,''C'') <> ''R''',
'and dip_id = :P85_DIP_ID'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7725924749537784645)
,p_validation_name=>'CHECK IF KIT AVAILABLE'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CURR_IP_ID NUMBER;',
'V_CURR_IP_ARM NUMBER;',
'V_CURR_IP_ID_NAME VARCHAR2(20);',
'V_MAX_IP_ID NUMBER;',
'V_CNT NUMBER;',
'',
'BEGIN',
'',
'SELECT IP_ID',
'      INTO V_CURR_IP_ID',
'      FROM IWRS_CRF_DM_IP',
'     WHERE DIP_ID = :P85_DIP_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'       ',
'    -- Get Current ARM and Bottle Name',
'    SELECT STUDY_ARM_ID',
'         , BOTTLE_NO',
'      INTO V_CURR_IP_ARM',
'         , V_CURR_IP_ID_NAME',
'      FROM EDC_IP_DETAIL',
'     WHERE IP_ID = V_CURR_IP_ID;',
'',
'        --Get MAX IP ID from the IPs assigned to Subject in this Visit, so that previously released IP can not be reassigned to same subject',
'        SELECT MAX(IP_ID)',
'          INTO V_MAX_IP_ID',
'          FROM IWRS_CRF_DM_IP',
'         WHERE PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'        -- Find next available IP of same ARM',
'        SELECT COUNT(*)',
'          INTO V_CNT           ',
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
'         ',
'   IF V_CNT = 0 THEN',
'     RETURN ''No valid Kit available at site for replacement. Kindly ask CRA to raise shipment request.'';',
'   end if;',
'         ',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'No valid Kit available at site for replacement. Kindly ask CRA to raise shipment request.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5608934549073749581)
,p_validation_name=>'rejection reason'
,p_validation_sequence=>20
,p_validation=>'P85_REJ_RSN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Rejection reason must have some value.'
,p_when_button_pressed=>wwv_flow_imp.id(5608934359451749579)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7950275096571778324)
,p_name=>'Refresh Audit IR - on Item change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_COLUMN_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5608934735368749583)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_IP_STATUS_DESC  VARCHAR2(200);',
'    V_CURR_IP_ID number;',
'    V_CURR_IP_ID_NAME varchar2(200);',
'    ',
'BEGIN',
'',
'SELECT IP_ID',
'      INTO V_CURR_IP_ID',
'      FROM IWRS_CRF_DM_IP',
'     WHERE DIP_ID = :P85_DIP_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'    -- Get Current ARM and Bottle Name',
'    SELECT BOTTLE_NO',
'      INTO V_CURR_IP_ID_NAME',
'      FROM EDC_IP_DETAIL',
'     WHERE IP_ID = V_CURR_IP_ID;',
'',
'   SELECT LV.DISPLAY_VALUE D',
'      INTO V_IP_STATUS_DESC',
'      FROM EDC_LOV L',
'     , EDC_LOV_VALUES LV',
' WHERE L.LOV_ID = LV.LOV_ID',
'   AND LOV_NAME = ''IP_STATUS''',
'   AND LV.STATUS = 1',
'   AND LV.STORED_VALUE = :P85_IP_STATUS;',
'',
'        UPDATE IWRS_CRF_DM_IP',
'           SET APP_FLG = ''R'', -- REQUESTED',
'               RPLC_RSN = :P85_IP_STATUS',
'        WHERE DIP_ID = :P85_DIP_ID;',
'',
'        insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P85_DIP_ID, V_IP_STATUS_DESC, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', null, ''Request'');',
'',
'insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''RPLC_RSN'', :P85_DIP_ID, V_IP_STATUS_DESC, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', null, V_IP_STATUS_DESC);',
'',
'',
'EDC_MAIL.IP_REFRESH_REQUEST( :P37_PATIENT_PROFILE_ID, ',
'                       :APP_EDC_PATIENT_VISIT_ID,',
'                            :APP_EDC_VISIT_NAME,',
'                       V_CURR_IP_ID_NAME,',
'                       V_IP_STATUS_DESC);',
'',
'',
'        -- Return Success Message',
'       -- HTP.P(''Current Kit '' || V_CURR_IP_ID_NAME || '' has been replaced with new one '' || V_NEW_IP_ID_NAME || '' (Please change status of old Kit from IP Management according to the status, So that it can not be dispnsed to other Subject)'');',
'',
'    EXCEPTION WHEN NO_DATA_FOUND THEN',
'    HTP.P(''Valid kit not available at site for replacement.Kindly ask CRA to raise shipment request.'');',
'    END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error, unable to get current Kit details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5608934471788749580)
,p_process_success_message=>'Kit request generated.'
,p_internal_uid=>5608934735368749583
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7950306458781002864)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Refresh IP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'    V_CURR_IP_ID_NAME VARCHAR2(200); -- Current Bottle No.',
'    V_CURR_IP_ID      NUMBER;',
'    V_CURR_IP_ARM     NUMBER;        -- To get ARM of the current IP',
'    V_NEW_IP_ID_NAME  VARCHAR2(200); -- New Bottle No.',
'    V_NEW_IP_ID       NUMBER;',
'    V_MAX_IP_ID       NUMBER;        -- MAX IP id assigned to current subject visit',
'    V_IP_STATUS_DESC  VARCHAR2(200);',
'    v_app_flg varchar2(1);',
'    v_app_by varchar2(50);',
'    v_app_dt date;',
'    v_rej_rsn varchar2(200);',
'    ',
'BEGIN',
'',
'-- Get current IP ID',
'    SELECT IP_ID,',
'           app_flg,',
'           app_by,',
'           app_dt,',
'           rej_rsn',
'      INTO V_CURR_IP_ID,',
'           v_app_flg,',
'           v_app_by,',
'           v_app_dt,',
'           v_rej_rsn',
'      FROM IWRS_CRF_DM_IP',
'     WHERE DIP_ID = :P85_DIP_ID',
'       AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'       ',
'          SELECT LV.DISPLAY_VALUE D',
'      INTO V_IP_STATUS_DESC',
'      FROM EDC_LOV L',
'     , EDC_LOV_VALUES LV',
' WHERE L.LOV_ID = LV.LOV_ID',
'   AND LOV_NAME = ''IP_STATUS''',
'   AND LV.STATUS = 1',
'   AND LV.STORED_VALUE = :P85_IP_STATUS;',
'',
'    -- Get Current ARM and Bottle Name',
'    SELECT STUDY_ARM_ID',
'         , BOTTLE_NO',
'      INTO V_CURR_IP_ARM',
'         , V_CURR_IP_ID_NAME',
'      FROM EDC_IP_DETAIL',
'     WHERE IP_ID = V_CURR_IP_ID;',
'',
'if :REQUEST = ''APPROVE'' THEN ',
'    ',
'       ',
'     BEGIN',
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
'             , IP_STATUS = :P85_IP_STATUS',
'         WHERE IP_ID = V_CURR_IP_ID;',
'',
'        -- Replace Assigned IP table with New IP ',
'        UPDATE IWRS_CRF_DM_IP',
'           SET IP_ID = V_NEW_IP_ID,',
'               APP_FLG = ''A'',',
'               APP_BY = :APP_USER,',
'               APP_DT = LOCALTIMESTAMP',
'         WHERE DIP_ID = :P85_DIP_ID;',
'',
'        insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''IP_ID'', :P85_DIP_ID, V_IP_STATUS_DESC, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', CRO_IWRS_PKG.GET_BOTTLE_NAME(V_CURR_IP_ID), CRO_IWRS_PKG.GET_BOTTLE_NAME(V_NEW_IP_ID));',
'',
' insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P85_DIP_ID, :P85_REJ_RSN, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', DECODE(v_app_flg,''R'',''Request'',''A'',''Approved'',''C'',''Rejected''), ''Approved'');',
'',
'insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''APP_BY'', :P85_DIP_ID, V_IP_STATUS_DESC, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', v_APP_BY, :APP_USER);',
'',
'insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_DATE, new_DATE',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''APP_DT'', :P85_DIP_ID, V_IP_STATUS_DESC, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''DATE'', v_APP_DT, LOCALTIMESTAMP);',
'',
'',
'EDC_MAIL.IP_REFRESHED( :P37_PATIENT_PROFILE_ID, ',
'                       :APP_EDC_PATIENT_VISIT_ID,',
'                       CRO_IWRS_PKG.GET_BOTTLE_NAME(V_CURR_IP_ID),',
'                       CRO_IWRS_PKG.GET_BOTTLE_NAME(V_NEW_IP_ID),',
'                       V_IP_STATUS_DESC);',
'',
'',
'        -- Return Success Message',
'       -- HTP.P(''Current Kit '' || V_CURR_IP_ID_NAME || '' has been replaced with new one '' || V_NEW_IP_ID_NAME || '' (Please change status of old Kit from IP Management according to the status, So that it can not be dispnsed to other Subject)'');',
'',
'    EXCEPTION WHEN NO_DATA_FOUND THEN',
'    HTP.P(''Valid kit not available at site for replacement.Kindly ask CRA to raise shipment request.'');',
'    END;',
'ELSIF :REQUEST = ''REJECT'' THEN',
'  UPDATE IWRS_CRF_DM_IP',
'           SET APP_FLG = ''C'',',
'               APP_BY = :APP_USER,',
'               APP_DT = LOCALTIMESTAMP,',
'               REJ_RSN = :P85_REJ_RSN',
'         WHERE DIP_ID = :P85_DIP_ID;',
'          insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P85_DIP_ID, :P85_REJ_RSN, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', DECODE(v_app_flg,''R'',''Request'',''A'',''Approved'',''C'',''Rejected''), ''Rejected'');',
'',
'insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_vc, new_vc',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''APP_BY'', :P85_DIP_ID, V_IP_STATUS_DESC, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''VARCHAR2'', v_APP_BY, :APP_USER);',
'',
'insert into EDC_REASON_FOR_CH_HIST (',
'            id, table_name, column_name, pk1,Reason_for_change, tab_row_version, action, action_date, action_by, data_type, old_DATE, new_DATE',
'        ) values (',
'            EDC_REASON_FOR_CH_HIST_seq.nextval, ''IWRS_CRF_DM_IP'', ''APP_DT'', :P85_DIP_ID, V_IP_STATUS_DESC, null, ''U'', LOCALTIMESTAMP, :APP_USER, ''DATE'', v_APP_DT, LOCALTIMESTAMP);',
'            ',
'/*EDC_MAIL.IP_REFRESH_REJECT( :P37_PATIENT_PROFILE_ID, ',
'                       :APP_EDC_PATIENT_VISIT_ID,',
'                            :APP_EDC_VISIT_NAME,',
'                       V_CURR_IP_ID_NAME,',
'                       :P85_REJ_RSN);',
'            */',
'',
'END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error, unable to get current Kit details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPROVE,REJECT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Kit no. refreshed.'
,p_internal_uid=>7950306458781002864
);
wwv_flow_imp.component_end;
end;
/
