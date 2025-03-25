prompt --application/pages/page_00129
begin
--   Manifest
--     PAGE: 00129
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
 p_id=>129
,p_name=>'Refresh Kit'
,p_step_title=>'Refresh Kit'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'.a-TreeView-label{color : red}'
,p_step_template=>wwv_flow_imp.id(12146129126910911975)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3310828021380464339)
,p_plug_name=>'Refresh Kit'
,p_region_name=>'ref_ip'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3110031095743457136)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3310828021380464339)
,p_button_name=>'REQUEST_REF_IP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Request Replacement'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE DIP_ID = :P129_DIP_ID'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(12147534833599676932)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NVL(APP_FLG,''C'') <> ''R''',
'   AND '))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3110031453528457135)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3310828021380464339)
,p_button_name=>'APPROVE_REF_IP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(5173502673211917190)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE APP_FLG = ''R''',
'   AND RPLC_RSN IS NOT NULL',
'   AND DIP_ID = :P129_DIP_ID'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3110031896591457135)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3310828021380464339)
,p_button_name=>'REJECT_REF_IP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(5173502673211917190)
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE APP_FLG = ''R''',
'   AND RPLC_RSN IS NOT NULL',
'   AND DIP_ID = :P129_DIP_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2909532140510602668)
,p_branch_name=>'129'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:RP:P129_CLOLSE_FLG:1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2909532018629602667)
,p_name=>'P129_CLOLSE_FLG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3310828021380464339)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3110032237355457134)
,p_name=>'P129_DIP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3310828021380464339)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3110032653475457132)
,p_name=>'P129_IP_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3310828021380464339)
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
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS NUMBER;',
'BEGIN',
'  SELECT RPLC_RSN ',
'    INTO V_STATUS',
'    FROM IWRS_CRF_DM_IP ',
'   WHERE DIP_ID = :P129_DIP_ID',
'     AND APP_FLG = ''R'';',
'',
'  RETURN V_STATUS;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;',
'--------------------------------',
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE APP_FLG IN (''R'', ''C'')',
'   AND DIP_ID = :P129_DIP_ID'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3110033078573457132)
,p_name=>'P129_REJ_RSN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3310828021380464339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rejection Reason'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>15
,p_cHeight=>2
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM IWRS_CRF_DM_IP',
' WHERE APP_FLG = ''R''',
'   AND RPLC_RSN IS NOT NULL',
'   AND DIP_ID = :P129_DIP_ID'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3110041153634162163)
,p_validation_name=>'Check IF kit Available'
,p_validation_sequence=>10
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
'   WHERE DIP_ID = :P129_DIP_ID',
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
'    RETURN ''The kits are not available at site for replacement. Kindly ask CRA to raise shipment request.'';',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'REQUEST_REF_IP'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3110533865621994898)
,p_validation_name=>'P129_REJ_RSN IS NN'
,p_validation_sequence=>20
,p_validation=>'P129_REJ_RSN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Rejection Reason Must Be Enter'
,p_when_button_pressed=>wwv_flow_imp.id(3110031095743457136)
,p_associated_item=>wwv_flow_imp.id(3110033078573457132)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_security_scheme=>wwv_flow_imp.id(5173502673211917190)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2293077611969961816)
,p_validation_name=>'P129_IP_STATUS_NN'
,p_validation_sequence=>30
,p_validation=>'P129_IP_STATUS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason must have some value'
,p_validation_condition=>':REQUEST IN (''REQUEST_REF_IP'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(3110032653475457132)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2909532504729602672)
,p_name=>'Close popup refresh parent'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2909532613374602673)
,p_event_id=>wwv_flow_imp.id(2909532504729602672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $v("P129_CLOLSE_FLG") == 1 ){',
'    //window.opener.location.href=window.opener.location.href;',
'    //window.close();',
'    parent.$("#modalID", window.parent.document).dialog(''close'');',
'    parent.$(''#modalID'', window.parent.document).remove();',
'    location.reload();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3110034193042435013)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_IP_STATUS_DESC VARCHAR2(200);',
'  V_CURR_IP_ID NUMBER;',
'  V_CURR_IP_ID_NAME VARCHAR2(200);',
'BEGIN',
'  SELECT IP_ID',
'    INTO V_CURR_IP_ID',
'    FROM IWRS_CRF_DM_IP',
'   WHERE DIP_ID = :P129_DIP_ID',
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
'     AND LV.STORED_VALUE = :P129_IP_STATUS;',
'',
'  UPDATE IWRS_CRF_DM_IP',
'     SET APP_FLG = ''R'' -- REQUESTED',
'       , RPLC_RSN = :P129_IP_STATUS',
'   WHERE DIP_ID = :P129_DIP_ID;',
'',
'  INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                              VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P129_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                     , ''VARCHAR2'', NULL, ''Request'' );',
'',
'  INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                              VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''RPLC_RSN'', :P129_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                     , ''VARCHAR2'', NULL, V_IP_STATUS_DESC);',
'',
'  --EDC_MAIL.IP_REFRESH_REQUEST( :P37_PATIENT_PROFILE_ID, :APP_EDC_PATIENT_VISIT_ID, :APP_EDC_VISIT_NAME, V_CURR_IP_ID_NAME, V_IP_STATUS_DESC );',
'',
'  -- Return Success Message',
'  -- HTP.P(''Current Kit '' || V_CURR_IP_ID_NAME || '' has been replaced with new one '' || V_NEW_IP_ID_NAME || '' (Please change status of old Kit from IP Management according to the status, So that it can not be dispnsed to other Subject)'');',
'COMMIT;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    HTP.P(''Valid kit not available at site for replacement.Kindly ask CRA to raise shipment request.'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# Error, unable to get current Kit details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''REQUEST_REF_IP'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Kit request generated.'
,p_internal_uid=>2009083424900930920
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3110034501760433679)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Refresh IP'
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
'   WHERE DIP_ID = :P129_DIP_ID',
'     AND PATIENT_VISIT_ID = :APP_EDC_PATIENT_VISIT_ID;',
'',
'  SELECT LV.DISPLAY_VALUE D',
'    INTO V_IP_STATUS_DESC',
'    FROM EDC_LOV L',
'    JOIN EDC_LOV_VALUES LV',
'      ON L.LOV_ID = LV.LOV_ID',
'     AND L.LOV_NAME = ''IP_STATUS''',
'     AND LV.STATUS = 1',
'     AND LV.STORED_VALUE = :P129_IP_STATUS;',
'',
'  -- Get Current ARM and Bottle Name',
'  SELECT STUDY_ARM_ID',
'       , BOTTLE_NO',
'    INTO V_CURR_IP_ARM',
'       , V_CURR_IP_ID_NAME',
'    FROM EDC_IP_DETAIL',
'   WHERE IP_ID = V_CURR_IP_ID;',
'',
'  IF :REQUEST IN(''APPROVE_REF_IP'',''REQUEST_REF_IP'') THEN ',
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
'           , IP_STATUS = 24 -- Dispensed to Patient',
'       WHERE IP_ID = V_NEW_IP_ID;',
'',
'      -- Clear Subject Data from current IP, so that it can available to be despensed to other patient (Release Current IP)',
'      UPDATE EDC_IP_DETAIL',
'         SET PATIENT_PROFILE_ID = NULL',
'           , PATIENT_VISIT_ID = NULL',
'           , IP_STATUS = :P129_IP_STATUS',
'       WHERE IP_ID = V_CURR_IP_ID;',
'',
'      -- Replace Assigned IP table with New IP ',
'      UPDATE IWRS_CRF_DM_IP',
'         SET IP_ID = V_NEW_IP_ID',
'           , APP_FLG = NULL--''A''',
'           , APP_BY = :APP_USER',
'           , APP_DT = LOCALTIMESTAMP',
'           , RPLC_RSN = NULL',
'       WHERE DIP_ID = :P129_DIP_ID;',
'',
'      INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                  VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''IP_ID'', :P129_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                         , ''VARCHAR2'', CRO_IWRS_PKG.GET_BOTTLE_NAME(V_CURR_IP_ID), CRO_IWRS_PKG.GET_BOTTLE_NAME(V_NEW_IP_ID) );',
'',
'      INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                  VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P129_DIP_ID, :P129_REJ_RSN, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                         , ''VARCHAR2'', DECODE(V_APP_FLG,''R'',''Request'',''A'',''Approved'',''C'',''Rejected''), ''Approved'' );',
'',
'      INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                  VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_BY'', :P129_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                         , ''VARCHAR2'', V_APP_BY, :APP_USER );',
'',
'      INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_DATE, NEW_DATE )',
'                                  VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_DT'', :P129_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
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
' /* ELSIF :REQUEST IN(''REJECT_REF_IP'') THEN',
'',
'    UPDATE IWRS_CRF_DM_IP',
'       SET APP_FLG = NULL --''C''',
'         , APP_BY = :APP_USER',
'         , APP_DT = LOCALTIMESTAMP',
'         , REJ_RSN = NULL --:P129_REJ_RSN',
'         , RPLC_RSN = NULL',
'     WHERE DIP_ID = :P129_DIP_ID;',
'',
'    INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_FLG'', :P129_DIP_ID, :P129_REJ_RSN, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                       , ''VARCHAR2'', DECODE(V_APP_FLG,''R'',''Request'',''A'',''Approved'',''C'',''Rejected''), ''Rejected'' );',
'',
'    INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_BY'', :P129_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                       , ''VARCHAR2'', V_APP_BY, :APP_USER );',
'',
'    INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_DATE, NEW_DATE )',
'                                VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''APP_DT'', :P129_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                       , ''DATE'', V_APP_DT, LOCALTIMESTAMP );',
'',
'    INSERT INTO EDC_REASON_FOR_CH_HIST ( ID, TABLE_NAME, COLUMN_NAME, PK1,REASON_FOR_CHANGE, TAB_ROW_VERSION, ACTION, ACTION_DATE, ACTION_BY, DATA_TYPE, OLD_VC, NEW_VC )',
'                                VALUES ( EDC_REASON_FOR_CH_HIST_SEQ.NEXTVAL, ''IWRS_CRF_DM_IP'', ''REJ_RSN'', :P129_DIP_ID, V_IP_STATUS_DESC, NULL, ''U'', LOCALTIMESTAMP, :APP_USER',
'                                       , ''VARCHAR2'', V_REJ_RSN, :P129_REJ_RSN );',
'',
'    EDC_MAIL.IP_REFRESH_REJECT( :P37_PATIENT_PROFILE_ID, :APP_EDC_PATIENT_VISIT_ID, :APP_EDC_VISIT_NAME, V_CURR_IP_ID_NAME, :P129_REJ_RSN);',
'  */',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error, unable to get current Kit details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''APPROVE_REF_IP'',''REQUEST_REF_IP'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Kit no. refreshed.'
,p_internal_uid=>2009083733618929586
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2909532234788602669)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  HTP.P(''<script>',
'       ',
'    </script>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1808581466647098576
);
wwv_flow_imp.component_end;
end;
/
