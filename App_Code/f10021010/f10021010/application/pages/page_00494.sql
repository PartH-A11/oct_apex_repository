prompt --application/pages/page_00494
begin
--   Manifest
--     PAGE: 00494
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
 p_id=>494
,p_name=>'CRO IP Upload'
,p_step_title=>'CRO IP Upload'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''INPUT[type="file"]'').change(function () {',
'//var Extension = this.value.substring(this.value.lastIndexOf(''.'') + 1).toLowerCase();',
'//alert(Extension);',
'    var ext = this.value.match(/\.(.+)$/)[1];',
'    switch (ext) {',
'        case ''CSV'':',
'        case ''csv'':        ',
'            $(''#uploadButton'').attr(''disabled'', false);',
'            break;',
'        default:',
'            alert(''Only CSV file allowed to Import Data'');',
'            this.value = '''';',
'    }',
'});'))
,p_step_template=>wwv_flow_imp.id(9916884921573203154)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10087975496789765301)
,p_name=>'Error Report'
,p_template=>wwv_flow_imp.id(11045182074024407888)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_column=>false
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    BOTTLE_NO,',
'    BATCH,',
'    ERR_MSG ',
'FROM ',
'    edc_TEMP_IP_CSV'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
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
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10087975643998765303)
,p_query_column_id=>1
,p_column_alias=>'BOTTLE_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Bottle no'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10087975737597765304)
,p_query_column_id=>2
,p_column_alias=>'BATCH'
,p_column_display_sequence=>2
,p_column_heading=>'Batch'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10150520475511819860)
,p_query_column_id=>3
,p_column_alias=>'ERR_MSG'
,p_column_display_sequence=>3
,p_column_heading=>'Error Message'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052175367476114847)
,p_plug_name=>'Import Data from CSV'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 700px; "'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>CSV Format (Use only <span style="font-size:16px;">,</span> or <span style="font-size:16px;">;</span> delimiter) <b/><br/><span style="font-weight:bold;color:red;">',
'1. IP number<br/>',
'2. Study arm<br/>',
'3. Size <br/>',
'4. Dose<br/>',
'5. Number of unit<br/>',
'6. Batch number<br/>',
'7. Exp. Date real<br/>',
'8. Manufacture Date:<br/>',
'9.Exp. Date label<br/>',
'10.Lot number<br/>',
'</span>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'---- Start ---------------',
'-- Date 18th November ',
'<b>CSV Format (Use only <span style="font-size:16px;">,</span> or <span style="font-size:16px;">;</span> delimiter) <b/><br/><span style="font-weight:bold;color:red;">',
'1. IP number<br/>',
'2. Study arm<br/>',
'3. Dose level<br/>',
'4. Dose<br/>',
'5. Number of unit<br/>',
'6. Batch number<br/>',
'7. Exp. Date real<br/>',
'8. Manufacture Date:<br/>',
'9.Exp. Date label<br/>',
'10.Lot number<br/>',
'</span>',
'juse Dose level rename Size',
'---- End -----------------',
'',
'<b>CSV Format:<b/><span style="font-weight:bold;color:red;"> Bottle No, Study Arm, Content, Dose Level, Dose, No. of Tablets, Batch No., Exp Date. Real, Manufacture Date, Exp Date.Label</span><br>',
'<b>CSV Format:<b/><span style="font-weight:bold;color:red;"> Bottle_No, Study_Arm, Content, Dose_Level, Dose, No_of_Tablets, Batch_No, Exp_Date_Real, Manufacture_Date, Exp_Date_Label</span>',
'<br>',
'',
'',
'<b>CSV Format: <b/><span style="font-weight:bold;color:red;">BOTTLE_NO, STUDY_ARM, CONTENT, DOSE_LEVEL, DOSE, NO_OF_TABLETS, BATCH_NO, EXP_DATE_REAL, MANUFACTURE_DATE, EXP_DATE_LABEL</span>',
''))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052175787512114848)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
,p_button_comment=>'P494_IP_UPLOAD_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052176165250114848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:window.parent.$(window.parent.document).apex_modal_page(''close'','''');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052175588806114848)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import Data'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P494_IP_UPLOAD_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052175958191114848)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P494_IP_UPLOAD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11052180663290114857)
,p_branch_action=>'f?p=&APP_ID.:494:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052176375800114850)
,p_name=>'P494_IP_UPLOAD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_source=>'IP_UPLOAD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052176580121114850)
,p_name=>'P494_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
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
 p_id=>wwv_flow_imp.id(11052176764520114850)
,p_name=>'P494_FILE_BLOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Blob'
,p_source=>'FILE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'FILE_MIME_TYPE'
,p_attribute_03=>'FILE_NAME'
,p_attribute_05=>'FILE_LAST_UPLOADED'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052176983391114850)
,p_name=>'P494_FILE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name'
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>256
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052177180929114851)
,p_name=>'P494_FILE_MIME_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_source=>'FILE_MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052177360160114851)
,p_name=>'P494_FILE_LAST_UPLOADED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_source=>'FILE_LAST_UPLOADED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052177587562114851)
,p_name=>'P494_DESCRIPTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
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
 p_id=>wwv_flow_imp.id(11052177763930114852)
,p_name=>'P494_CREATED_ON'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052177976476114852)
,p_name=>'P494_CREATED_BY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052178169484114852)
,p_name=>'P494_UPDATED_ON'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052178372049114852)
,p_name=>'P494_UPDATED_BY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052178564932114852)
,p_name=>'P494_BTL_GENERATED'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052178781609114853)
,p_name=>'P494_BTL_GENERATED_FAIL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052178966499114853)
,p_name=>'P494_ERR_MSG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11052175367476114847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052179178911114855)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CRO_IP_UOLOAD'
,p_attribute_02=>'CRO_IP_UPLOAD'
,p_attribute_03=>'P494_IP_UPLOAD_ID'
,p_attribute_04=>'IP_UPLOAD_ID'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11052179178911114855
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052179383732114855)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return NUMBER',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(IP_UPLOAD_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   EDC_IP_UPLOAD;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P494_IP_UPLOAD_ID := get_pk;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error on PK process'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052175588806114848)
,p_internal_uid=>11052179383732114855
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052179589036114855)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_IP_UPLOAD'
,p_attribute_02=>'EDC_IP_UPLOAD'
,p_attribute_03=>'P494_IP_UPLOAD_ID'
,p_attribute_04=>'IP_UPLOAD_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11052179589036114855
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052179966521114856)
,p_process_sequence=>38
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE BOTTLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'         V_BLOB_DATA       BLOB;',
'         V_BLOB_LEN        NUMBER;',
'         V_POSITION        NUMBER;',
'         V_RAW_CHUNK       RAW(10000);',
'         V_CHAR            CHAR(1);',
'         C_CHUNK_LEN       NUMBER       := 1;',
'         V_LINE            VARCHAR2 (32767)        := NULL;',
'         V_DATA_ARRAY      WWV_FLOW_GLOBAL.VC_ARR2;',
'         V_ROWS            NUMBER;',
'         V_SR_NO           NUMBER := 1;',
'         V_STUDY_ID        NUMBER;',
'         V_IP_STATUS       NUMBER := 1;',
'         V_IP_UPLOAD       NUMBER;',
'         V_COUNT           NUMBER;',
'         V_ARM             NUMBER;',
'         V_ARMD_ID         NUMBER;',
'         V_IP_BATCH_ID     NUMBER;',
'         V_CNT             NUMBER;',
'         V_ERR             NUMBER := 0;',
'	     V_CN_FLAG         NUMBER;',
'         V_TOT_CNT         NUMBER := 0;',
'         V_TOT_CNT_FAIL    NUMBER := 0;',
'         V_R_MSG           varchar2(1000);',
'         V_LAST_MAX        NUMBER;',
'         V_FILE_NAME       VARCHAR2(1000) ;',
'BEGIN   ',
'',
'         DELETE FROM EDC_TEMP_IP_CSV;',
'         COMMIT;',
'         SELECT IP_UPLOAD_ID,FILE_BLOB,FILE_NAME INTO V_IP_UPLOAD,V_BLOB_DATA,V_FILE_NAME  FROM EDC_IP_UPLOAD WHERE IP_UPLOAD_ID = :P494_IP_UPLOAD_ID;  ',
'         SELECT NVL(MAX(IP_ID),0) INTO V_LAST_MAX FROM EDC_IP_DETAIL;',
'',
'         V_BLOB_LEN := DBMS_LOB.GETLENGTH(V_BLOB_DATA);',
'         V_POSITION := DBMS_LOB.INSTR(V_BLOB_DATA, ''0A'' ) + 1;',
'         V_POSITION := V_POSITION + C_CHUNK_LEN-1;',
'',
'         WHILE ( V_POSITION <= V_BLOB_LEN ) LOOP',
'                 V_STUDY_ID := :APP_EDC_STUDY_ID;',
'                 V_RAW_CHUNK := DBMS_LOB.SUBSTR(V_BLOB_DATA,C_CHUNK_LEN,V_POSITION);',
'                 V_CHAR :=  CHR(HEX_TO_DECIMAL(RAWTOHEX(V_RAW_CHUNK)));',
'                 V_LINE := V_LINE || V_CHAR;',
'                 V_POSITION := V_POSITION + C_CHUNK_LEN;',
'                ',
'    IF V_CHAR = CHR(10) THEN',
'                         ',
'                 V_LINE := REPLACE (V_LINE, '','', '':'');',
'                 V_LINE := REPLACE (V_LINE, '';'', '':'');',
'                 V_DATA_ARRAY := WWV_FLOW_UTILITIES.STRING_TO_TABLE (V_LINE);',
'        BEGIN    ',
'          SELECT STUDY_ARM_ID INTO V_ARM FROM EDC_STUDY_ARM WHERE TRIM(UPPER(ARM_NAME)) = TRIM(UPPER(V_DATA_ARRAY(2))) AND STUDY_ID = :APP_EDC_STUDY_ID;',
'          SELECT ARMD_ID INTO V_ARMD_ID  FROM EDC_STUDY_ARM_DTLS WHERE TRIM(ARMD_SH_NM) = TRIM(V_DATA_ARRAY(3)) AND STUDY_ARM_ID = V_ARM;-- AND ARM_TYPE = 1;    ',
'          SELECT COUNT(*) INTO V_CN_FLAG FROM EDC_IP_DETAIL WHERE STUDY_ID = :APP_EDC_STUDY_ID AND UPPER(BOTTLE_NO) = UPPER(V_DATA_ARRAY(1));',
'             EXCEPTION WHEN OTHERS THEN',
'                  V_ERR := 1;',
'                  V_R_MSG := SQLERRM;',
'                 INSERT INTO EDC_TEMP_IP_CSV(BOTTLE_NO,BATCH,UPLOAD_ID,ERR_MSG,SESSION_ID) VALUES(V_DATA_ARRAY(1),V_DATA_ARRAY(6),:P494_IP_UPLOAD_ID,V_DATA_ARRAY(2)||''-''||V_R_MSG,:SESSION);',
'        END;',
'       IF V_ERR = 0 THEN',
'          IF V_CN_FLAG = 0 THEN',
'                 EXECUTE IMMEDIATE ''insert into EDC_IP_DETAIL(STUDY_ID,BOTTLE_NO,STUDY_ARM_ID,IP_CONTENT,IP_DOSE_LEVEL,IP_DOSE,IP_STATUS,',
'                 IP_NO_TABLETS,BATCH,EXP_DATE_REAL,MANUF_DATE,EXP_DATE_LABEL,ARMD_ID,IP_UPLOAD_ID,LOT_NUMBER,FILE_NAME,UPLOADED_DATE,UPLOADED_BY)',
'                 values (:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18)''',
'                 USING',
'                     V_STUDY_ID,',
'                     V_DATA_ARRAY(1),',
'                     V_ARM,',
'                     '''',',
'                     V_ARMD_ID, --TO_NUMBER(V_DATA_ARRAY(3)),',
'                     TO_NUMBER(V_DATA_ARRAY(4)),',
'                     V_IP_STATUS,',
'                     TO_NUMBER(V_DATA_ARRAY(5)),',
'                     V_DATA_ARRAY(6),',
'                     TO_DATE(V_DATA_ARRAY(7)),',
'                     TO_DATE(V_DATA_ARRAY(8)),',
'                     TO_DATE(V_DATA_ARRAY(9)),',
'                     V_ARMD_ID,',
'                     V_IP_UPLOAD,',
'                     V_DATA_ARRAY(10),',
'                     V_FILE_NAME,',
'                     SYSDATE,',
'                     :APP_EDC_USER_ID',
'                     ;',
'                     COMMIT;',
'                      V_TOT_CNT := V_TOT_CNT + 1;',
'             ELSE ',
'                     V_TOT_CNT_FAIL := V_TOT_CNT_FAIL + 1;',
'                     V_R_MSG := ''This IP Number is already exists.'';',
'                     INSERT INTO EDC_TEMP_IP_CSV(BOTTLE_NO,BATCH,UPLOAD_ID,ERR_MSG,SESSION_ID) VALUES(V_DATA_ARRAY(1),V_DATA_ARRAY(6),:P494_IP_UPLOAD_ID,V_DATA_ARRAY(1) ||'' -> ''||V_R_MSG,:SESSION);',
'             END IF;',
'                 -- Clear out',
'                 V_LINE := NULL;',
'        ELSE',
'             V_TOT_CNT_FAIL := V_TOT_CNT_FAIL + 1;',
'',
'   END IF;              ',
'   -- Clear out',
'                 V_LINE := NULL;',
'                    V_ERR := 0;',
'',
'                  END IF;',
'         END LOOP;',
'         :P494_BTL_GENERATED := V_TOT_CNT;',
'         :P494_BTL_GENERATED_FAIL := V_TOT_CNT_FAIL;',
'        BEGIN            ',
'            FOR I IN ( SELECT DISTINCT BATCH,ARMD_ID FROM EDC_IP_DETAIL WHERE IP_UPLOAD_ID = :P494_IP_UPLOAD_ID)',
'            LOOP',
'                    FOR J IN ( SELECT BATCH,ARMD_ID,EXP_DATE_REAL,MANUF_DATE,IP_NO_TABLETS,LOT_NUMBER FROM EDC_IP_DETAIL WHERE IP_ID = ',
'                    (SELECT MAX(IP_ID) FROM EDC_IP_DETAIL WHERE ARMD_ID = I.ARMD_ID AND BATCH = I.BATCH))',
'                    LOOP',
'                            SELECT NVL(MAX(BATCH_ID),0) + 1   INTO   V_IP_BATCH_ID   FROM   EDC_IP_BATCH;',
'                            SELECT COUNT(*) INTO V_CNT FROM EDC_IP_DETAIL WHERE ARMD_ID = I.ARMD_ID AND BATCH = I.BATCH AND IP_ID > V_LAST_MAX;',
'                            INSERT INTO EDC_IP_BATCH(BATCH_ID, BATCH_NO,  EXP_DATE, MFG_DATE, ARMD_ID,TOT_BOX_BLIST,MED_PER_BOX,LOT_NUMBER)',
'                            VALUES(V_IP_BATCH_ID,J.BATCH,J.EXP_DATE_REAL,J.MANUF_DATE,J.ARMD_ID,V_CNT,J.IP_NO_TABLETS,J.LOT_NUMBER);',
'                            COMMIT;',
'                            --DBMS_OUTPUT.PUT_LINE(V_IP_BATCH_ID||'' - ''||J.BATCH||'' - ''||J.EXP_DATE_REAL||'' - ''||J.MANUF_DATE||'' - ''||V_CNT||'' - ''||J.IP_NO_TABLETS);',
'                    END LOOP;',
'            END LOOP;',
'        END;',
'--             EXCEPTION WHEN OTHERS THEN',
'--        V_R_MSG := ''Please upload valid CSV file..'';',
'--       :P494_ERR_MSG := V_R_MSG;',
'--:ERROR_MSG := V_R_MSG;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052175588806114848)
,p_internal_uid=>11052179966521114856
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052180180868114857)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052175958191114848)
,p_internal_uid=>11052180180868114857
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052180361291114857)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BACKUP OF GENERATE BOTTLE PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'         V_BLOB_DATA       BLOB;',
'         V_BLOB_LEN        NUMBER;',
'         V_POSITION        NUMBER;',
'         V_RAW_CHUNK       RAW(10000);',
'         V_CHAR      CHAR(1);',
'         C_CHUNK_LEN   NUMBER       := 1;',
'         V_LINE        VARCHAR2 (32767)        := NULL;',
'         V_DATA_ARRAY      WWV_FLOW_GLOBAL.VC_ARR2;',
'         V_ROWS NUMBER;',
'         V_SR_NO NUMBER := 1;',
'         V_STUDY_ID NUMBER;',
'         V_IP_STATUS NUMBER := 1;',
'         V_IP_UPLOAD NUMBER;',
'         V_COUNT NUMBER;',
'         V_ARM NUMBER;',
'         V_ARMD_ID NUMBER;',
'         V_IP_BATCH_ID NUMBER;',
'         V_CNT NUMBER;',
'         V_ERR NUMBER := 0;',
'	 V_CN_FLAG NUMBER;',
'         V_TOT_CNT NUMBER := 0;',
'         V_TOT_CNT_FAIL NUMBER := 0;',
'BEGIN',
'         SELECT IP_UPLOAD_ID,FILE_BLOB ',
'         INTO V_IP_UPLOAD,V_BLOB_DATA',
'         FROM CRO_IP_UPLOAD WHERE IP_UPLOAD_ID = :P494_IP_UPLOAD_ID;  ',
'         --WHERE FILE_LAST_UPLOADED = (SELECT MAX(FILE_LAST_UPLOADED) FROM EDC_IP_UPLOAD WHERE NVL(UPDATED_BY,CREATED_BY) = :APP_USER );',
'        -- and IP_UPLOAD_ID = (select max(IP_UPLOAD_ID) from EDC_IP_UPLOAD where updated_by = :APP_USER);',
'         ',
'         /*SELECT COUNT(*) INTO V_COUNT FROM CRO_IP_DETAIL WHERE IP_UPLOAD_ID = V_IP_UPLOAD;',
'         ',
'         IF V_COUNT > 0 THEN ',
'            DELETE FROM CRO_IP_DETAIL WHERE IP_UPLOAD_ID = V_IP_UPLOAD;',
'        --    commit;',
'         END IF;*/',
'         ',
'         V_BLOB_LEN := DBMS_LOB.GETLENGTH(V_BLOB_DATA);',
'         V_POSITION := DBMS_LOB.INSTR(V_BLOB_DATA, ''0A'' ) + 1;',
'         V_POSITION := V_POSITION + C_CHUNK_LEN-1;',
'         ',
'         --SELECT NVL(MAX(IP_ID),0) + 1 INTO V_SR_NO FROM CRO_IP_DETAIL;',
'         -- Read and convert binary to char</span>',
'         WHILE ( V_POSITION <= V_BLOB_LEN ) LOOP',
'                 V_STUDY_ID := :APP_STUDY_ID;',
'                 V_RAW_CHUNK := DBMS_LOB.SUBSTR(V_BLOB_DATA,C_CHUNK_LEN,V_POSITION);',
'                 V_CHAR :=  CHR(HEX_TO_DECIMAL(RAWTOHEX(V_RAW_CHUNK)));',
'                 V_LINE := V_LINE || V_CHAR;',
'                 V_POSITION := V_POSITION + C_CHUNK_LEN;',
'                ',
'                 -- When a whole line is retrieved </span>',
'                 IF V_CHAR = CHR(10) THEN',
'                ',
'                 -- Convert comma to : to use wwv_flow_utilities </span>',
'                 V_LINE := REPLACE (V_LINE, '','', '':'');',
'                ',
'                -- Convert each column separated by : into array of data </span>',
'                 V_DATA_ARRAY := WWV_FLOW_UTILITIES.STRING_TO_TABLE (V_LINE);',
'                ',
'                /* DBMS_OUTPUT.put_line(''position - ''||v_position);',
'                 DBMS_OUTPUT.put_line(''1 - ''||V_STUDY_ID);',
'                 DBMS_OUTPUT.put_line(''2 - ''||V_DATA_ARRAY(1));',
'                 DBMS_OUTPUT.put_line(''3 - ''||V_ARM);',
'                 DBMS_OUTPUT.put_line(''4 - ''||V_DATA_ARRAY(3));',
'                 DBMS_OUTPUT.put_line(''5 - ''||TO_NUMBER(V_DATA_ARRAY(4)));',
'                 DBMS_OUTPUT.put_line(''6 - ''||TO_NUMBER(V_DATA_ARRAY(5)));',
'                 DBMS_OUTPUT.put_line(''7 - ''||V_IP_STATUS);',
'                 DBMS_OUTPUT.put_line(''8 - ''||TO_NUMBER(V_DATA_ARRAY(6)));',
'                 DBMS_OUTPUT.put_line(''9 - ''||V_DATA_ARRAY(7));',
'                 DBMS_OUTPUT.put_line(''10 - ''||TO_DATE(V_DATA_ARRAY(8)));',
'                 DBMS_OUTPUT.put_line(''11 - ''||TO_DATE(V_DATA_ARRAY(9)));',
'                 DBMS_OUTPUT.put_line(''12 - ''||TO_DATE(V_DATA_ARRAY(10)));',
'                 DBMS_OUTPUT.put_line(''13 - ''||V_ARMD_ID);',
'                 DBMS_OUTPUT.put_line(''14 - ''||V_IP_UPLOAD);*/',
'                ',
'BEGIN    ',
'             --set arm id',
'                 SELECT STUDY_ARM_ID INTO V_ARM FROM EDC_STUDY_ARM WHERE TRIM(UPPER(ARM_NAME)) = TRIM(UPPER(V_DATA_ARRAY(2))) AND STUDY_ID = :APP_STUDY_ID;',
'   EXCEPTION WHEN OTHERS THEN',
'    V_TOT_CNT_FAIL := V_TOT_CNT_FAIL + 1;',
'    V_ERR := 1;',
'  END;',
'   IF V_ERR = 0 THEN',
'                 SELECT ARMD_ID INTO V_ARMD_ID  FROM EDC_STUDY_ARM_DTLS WHERE TRIM(ARMD_SH_NM) = TRIM(V_DATA_ARRAY(4)) AND STUDY_ARM_ID = V_ARM;    ',
'          SELECT COUNT(*) INTO V_CN_FLAG ',
'          FROM EDC_IP_DETAIL WHERE STUDY_ID = :APP_STUDY_ID AND BOTTLE_NO = V_DATA_ARRAY(1);',
'          IF V_CN_FLAG = 0 THEN',
'                 --  Insert data into target table </span>',
'                 EXECUTE IMMEDIATE ''insert into EDC_IP_DETAIL(STUDY_ID,BOTTLE_NO,STUDY_ARM_ID,IP_CONTENT,IP_DOSE_LEVEL,IP_DOSE,IP_STATUS,',
'                 IP_NO_TABLETS,BATCH,EXP_DATE_REAL,MANUF_DATE,EXP_DATE_LABEL,ARMD_ID,IP_UPLOAD_ID)',
'                 values (:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14)''',
'                 USING',
'                 V_STUDY_ID,',
'                 V_DATA_ARRAY(1),',
'                 V_ARM,',
'                 V_DATA_ARRAY(3),',
'                 TO_NUMBER(V_DATA_ARRAY(4)),',
'                 TO_NUMBER(V_DATA_ARRAY(5)),',
'                 V_IP_STATUS,',
'                 TO_NUMBER(V_DATA_ARRAY(6)),',
'                 V_DATA_ARRAY(7),',
'                 TO_DATE(V_DATA_ARRAY(8)),',
'                 TO_DATE(V_DATA_ARRAY(9)),',
'                 TO_DATE(V_DATA_ARRAY(10)),',
'                 V_ARMD_ID,',
'                 V_IP_UPLOAD',
'                 ;',
'         COMMIT;',
'              V_TOT_CNT := V_TOT_CNT + 1;',
'        ELSE ',
'              V_TOT_CNT_FAIL := V_TOT_CNT_FAIL + 1;',
'        END IF;',
'                 -- Clear out',
'                 V_LINE := NULL;',
'  END IF;',
'                 END IF;',
'    V_ERR := 0;',
'         END LOOP;',
'   :P494_BTL_GENERATED := V_TOT_CNT;',
'   :P494_BTL_GENERATED_FAIL := V_TOT_CNT_FAIL;',
'        BEGIN',
'            ',
'            FOR I IN ( SELECT DISTINCT BATCH,ARMD_ID FROM EDC_IP_DETAIL WHERE IP_UPLOAD_ID = :P494_IP_UPLOAD_ID)',
'            LOOP',
'                    FOR J IN ( SELECT BATCH,ARMD_ID,EXP_DATE_REAL,MANUF_DATE,IP_NO_TABLETS FROM EDC_IP_DETAIL WHERE IP_ID = ',
'                    (SELECT MAX(IP_ID) FROM EDC_IP_DETAIL WHERE ARMD_ID = I.ARMD_ID AND BATCH = I.BATCH))',
'                    LOOP',
'                            SELECT NVL(MAX(BATCH_ID),0) + 1   INTO   V_IP_BATCH_ID   FROM   EDC_IP_BATCH;',
'                            SELECT COUNT(*) INTO V_CNT FROM EDC_IP_DETAIL WHERE ARMD_ID = I.ARMD_ID AND BATCH = I.BATCH;',
'                            INSERT INTO EDC_IP_BATCH(BATCH_ID, BATCH_NO,  EXP_DATE, MFG_DATE, ARMD_ID,TOT_BOX_BLIST,MED_PER_BOX)',
'                            VALUES(V_IP_BATCH_ID,J.BATCH,J.EXP_DATE_REAL,J.MANUF_DATE,J.ARMD_ID,V_CNT,J.IP_NO_TABLETS);',
'                            COMMIT;',
'                            --DBMS_OUTPUT.PUT_LINE(V_IP_BATCH_ID||'' - ''||J.BATCH||'' - ''||J.EXP_DATE_REAL||'' - ''||J.MANUF_DATE||'' - ''||V_CNT||'' - ''||J.IP_NO_TABLETS);',
'                    END LOOP;',
'            END LOOP;',
'        END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error on csv process'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>11052180361291114857
);
wwv_flow_imp.component_end;
end;
/
