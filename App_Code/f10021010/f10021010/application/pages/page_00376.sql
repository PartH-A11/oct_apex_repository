prompt --application/pages/page_00376
begin
--   Manifest
--     PAGE: 00376
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
 p_id=>376
,p_name=>'Batch Details'
,p_step_title=>'Batch Details'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
''))
,p_step_template=>wwv_flow_imp.id(9916884921573203154)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--- Function & Global Variable Declaration ---------------------------',
'function customDateParse(str) {',
'  var months = [''JAN'',''FEB'',''MAR'',''APR'',''MAY'',''JUN'',',
'                ''JUL'',''AUG'',''SEP'',''OCT'',''NOV'',''DEC''],',
'      n = months.length, re = /(\d{2})-([a-z]{3})-(\d{4})/i, matches;',
'',
'  while(n--) { months[months[n]]=n; } // map month names to their index :)',
'',
'  matches = str.match(re); // extract date parts from string',
'',
'  return new Date(matches[3], months[matches[2].toUpperCase()], matches[1]);',
'}',
'function revise_date_act(pThis)',
'{',
'            var dt1 = $(''#P376_MFG_DATE'').val();',
'            var dt2 = $(''#P376_EXP_DATE'').val();',
'',
'    	 // var dt1 = $(pThis).parent().parent().find(''input[name=p_t05]'').val();',
'         // var dt2 = $(pThis).parent().parent().find(''input[name=p_t06]'').val();',
'        if(dt1 != '''') ',
'        var cDt1 = customDateParse(dt1);',
'',
'    	if(dt2 != '''')',
'    	var cDt2 = customDateParse(dt2);',
'',
'        cDt1 = +new Date(cDt1);',
'        cDt2 = +new Date(cDt2);',
'',
'',
'       var dateType = $(pThis).attr(''id'');',
'    ',
'',
'       if (cDt2 < cDt1 && dateType == ''P376_EXP_DATE'')',
'       {',
'           alert(''Expiry Date should be greater than to Mfg. Date'');',
'           $(''#P376_EXP_DATE'').val('''');',
'       }',
'       else if (cDt1 > cDt2 && dateType == ''P376_MFG_DATE'')',
'       {',
'           alert(''Mfg. Date should be less than to Expiry Date.'');',
'           $(''#P376_MFG_DATE'').val('''');',
'       }',
'}',
'',
'',
'function checkMaxQty(){',
'    if(!parseInt($v(''P376_ARMD_ID''))){',
'        alert(''Please select ARM first.'');',
'        $(''#P376_TOT_BOX_BLIST'').val('''');    	    ',
'    }',
'    else if(parseInt($v(''P376_TOT_BOX_BLIST'')) <= 0){',
'        alert(''No. of Box/Blister must be greater than 0'');',
'        $(''#P376_TOT_BOX_BLIST'').val('''');    	    ',
'    }',
'    else if(parseInt($v(''P376_TOT_BOX_BLIST'')) > parseInt($v(''P376_MAX_QTY''))){',
'        //alert(''No. of Box/Blister must be less or equal to '' + $v(''P376_MAX_QTY''));',
'        //$(''#P376_TOT_BOX_BLIST'').val('''');',
'    }',
'}'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052140272583754133)
,p_plug_name=>'Batch Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:600px;"'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052140688370754134)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P376_BATCH_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052141079454754134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_button_name=>'CANCEL'
,p_button_static_id=>'cls'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:window.parent.$(window.parent.document).apex_modal_page(''close'','''');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052140481692754133)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P376_BATCH_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052140877494754134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P376_BATCH_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11052146384073754144)
,p_branch_action=>'f?p=&APP_ID.:600:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052141275950754136)
,p_name=>'P376_LOT_NUMBER'
,p_item_sequence=>49
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lot Number'
,p_source=>'LOT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_tag_attributes=>'style="margin-right:13px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052141457600754136)
,p_name=>'P376_STUDY_ARM_ID'
,p_is_required=>true
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Select Arm'
,p_source=>'STUDY_ARM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CRO_STUDY_ARM_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ARM_NAME D, STUDY_ARM_ID R FROM EDC_STUDY_ARM',
'WHERE  STUDY_ID = :APP_EDC_STUDY_ID ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--- Select Arm---'
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B.ARMD_SH_NM D, B.ARMD_SH_NM R',
'from  CRO_STUDY_ARM_DTLS B',
'where B.ARM_TYPE = 1',
'and B.STUDY_ID = :APP_STUDY_ID',
'AND B.ARMD_ID = :P376_ARMD_ID;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052141656958754136)
,p_name=>'P376_ARMD_DOSE'
,p_item_sequence=>18.7
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_source=>'ARMD_DOSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Name rename ''Size'' instead of ''Dose Level''',
'select B.ARMD_SH_NM D, B.ARMD_SH_NM R',
'from  CRO_STUDY_ARM_DTLS B',
'where B.ARM_TYPE = 1',
'and B.STUDY_ID = :APP_STUDY_ID',
'AND B.ARMD_ID = :P376_ARMD_ID;',
'---------------------------------------------------',
'select B.ARMD_SH_NM D, B.ARMD_ID R',
'from  EDC_STUDY_ARM_DTLS B',
'where B.ARM_TYPE = 1',
'and B.STUDY_ID = :APP_EDC_STUDY_ID',
'AND B.STUDY_ARM_ID = :P376_ARMD_ID ORDER BY 1;',
'------------------------------------------------------',
'declare',
'   v_armd_sh_nm varchar2(500);',
'   v_armd_id number;',
'begin',
'   select B.ARMD_SH_NM D, B.ARMD_ID R',
'     into v_armd_sh_nm,v_armd_id',
'     from  EDC_STUDY_ARM_DTLS B',
'    where B.STUDY_ID = :APP_EDC_STUDY_ID',
'      AND B.STUDY_ARM_ID = :P376_ARMD_ID ORDER BY 1;',
'',
'    return v_armd_id;',
'',
'exception when others then ',
'    v_armd_id := 0;',
'   ',
'end;',
''))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052141866644754137)
,p_name=>'P376_STUDY_ID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_STUDY_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052142083587754137)
,p_name=>'P376_MAX_QTY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052142285282754137)
,p_name=>'P376_PREFIX'
,p_item_sequence=>47
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prefix'
,p_source=>'PREFIX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(11052142486504754137)
,p_name=>'P376_START_WITH'
,p_is_required=>true
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Initial IP ID #'
,p_source=>'START_WITH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052142674835754137)
,p_name=>'P376_BTL_GEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052142859091754137)
,p_name=>'P376_BTL_GEN_FAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052143084917754138)
,p_name=>'P376_BATCH_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_source=>'BATCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052143260110754138)
,p_name=>'P376_BATCH_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batch Number'
,p_source=>'BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052143484235754138)
,p_name=>'P376_MFG_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mfg. Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'MFG_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2000:2100'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052143659767754138)
,p_name=>'P376_EXP_DATE'
,p_is_required=>true
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expiry/Retest Date '
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'EXP_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_tag_attributes=>'readonly="readonly"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'+10d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2100'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052143884825754138)
,p_name=>'P376_COMMENTS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b> Comment </b>'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>1000
,p_cHeight=>2
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(11052144074604754138)
,p_name=>'P376_ARMD_ID'
,p_is_required=>true
,p_item_sequence=>18.2
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Arm Detail'
,p_source=>'ARMD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B.ARMD_SH_NM D, B.ARMD_ID R',
'from  EDC_STUDY_ARM_DTLS B',
'where B.STUDY_ID = :APP_EDC_STUDY_ID',
'AND B.STUDY_ARM_ID = :P376_STUDY_ARM_ID ORDER BY 1;'))
,p_lov_cascade_parent_items=>'P376_STUDY_ARM_ID'
,p_ajax_items_to_submit=>'P376_STUDY_ARM_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 115px;"'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Lable remane : ''Size'' instead of Dose Level',
'-- Change Lov of ''CRO_STUDY_ARM'' instead of',
'lov ''CRO_ARM_DOSE_NAME''',
'Query :select a.arm_name || '' - '' || b.armd_sh_nm d,b.armd_id r ',
'from cro_study_arm a, CRO_STUDY_ARM_DTLS b',
'where a.study_arm_id = b.study_arm_id',
'and b.ARM_TYPE = 1 and b.study_id = :APP_STUDY_ID; -- bCoz ticket:101',
'------------------------------------',
'-- change lov cro_study_arm'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052144263086754139)
,p_name=>'P376_TOT_BOX_BLIST'
,p_is_required=>true
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Number of Kits'
,p_source=>'TOT_BOX_BLIST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_tag_attributes=>'onchange="checkMaxQty()"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_item_comment=>'Rename :Total Boxes/Blisters'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052144470001754139)
,p_name=>'P376_MED_PER_BOX'
,p_is_required=>true
,p_item_sequence=>19.1
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Units per Kit'
,p_source=>'MED_PER_BOX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_tag_attributes=>'readonly = "readonly;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185979045407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_item_comment=>'Name Rename : '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11052144682098754139)
,p_name=>'P376_DOSE_DESC'
,p_item_sequence=>18.5
,p_item_plug_id=>wwv_flow_imp.id(11052140272583754133)
,p_post_element_text=>'<script>$(''#P376_DOSE_DESC'').parent().css(''width'',''100px'');</script>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'style="display:none;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_label_alignment=>'LEFT-TOP'
,p_field_alignment=>'LEFT-TOP'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11052145862032754144)
,p_name=>'ARM Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P376_ARMD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052146159395754144)
,p_event_id=>wwv_flow_imp.id(11052145862032754144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'     ',
'     des VARCHAR2(200);',
'     max_qty number;',
'     qty_sent number;',
'     v_cnt number;',
'     max_qty_new number;',
'BEGIN',
'     SELECT ARMD_DOSE,ARMD_DESC,ARMD_MAX_SHP INTO :P376_ARMD_DOSE,des, max_qty FROM EDC_STUDY_ARM_DTLS WHERE ARMD_ID = :P376_ARMD_ID;',
'     :P376_DOSE_DESC := ''<b><u>Description:</b></u><br/>'' ||des;',
'     ',
'     select count(*) into v_cnt from edc_ip_batch where ARMD_ID = :P376_ARMD_ID;',
'     if v_cnt != 0 then',
'          select sum(tot_box_blist) into qty_sent from edc_ip_batch where ARMD_ID = :P376_ARMD_ID;',
'          max_qty_new := max_qty - qty_sent;',
'          :P376_MAX_QTY := max_qty_new;',
'     else',
'          :P376_MAX_QTY := max_qty;',
'     end if;',
'          ',
'EXCEPTION WHEN OTHERS THEN',
'     :P376_DOSE_DESC := '''';',
'     :P376_MAX_QTY := '''';',
'END;'))
,p_attribute_02=>'P376_ARMD_ID'
,p_attribute_03=>'P376_ARMD_DOSE,P376_DOSE_DESC,P376_MAX_QTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11052353878898542158)
,p_name=>'ARM DOSE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P376_ARMD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11052354164576542160)
,p_event_id=>wwv_flow_imp.id(11052353878898542158)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P376_ARMD_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_armd_sh_nm varchar2(500);',
'   v_armd_id number;',
'begin',
'',
' select B.ARMD_SH_NM D, B.ARMD_ID R',
'     into v_armd_sh_nm,v_armd_id',
'     from  EDC_STUDY_ARM_DTLS B',
'    where B.STUDY_ID = :APP_EDC_STUDY_ID',
'      AND B.STUDY_ARM_ID = :P376_ARMD_ID ORDER BY 1;',
'',
'    return v_armd_id;',
'',
'exception when others then ',
'    v_armd_id := 0;',
'  ',
'end;'))
,p_attribute_07=>'P376_ARMD_ID,APP_EDC_STUDY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052144875748754143)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CRO_IP_BATCH'
,p_attribute_02=>'EDC_IP_BATCH'
,p_attribute_03=>'P376_BATCH_ID'
,p_attribute_04=>'BATCH_ID'
,p_internal_uid=>11052144875748754143
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052145085809754143)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    FUNCTION GET_PK RETURN VARCHAR2',
'    IS',
'        BEGIN',
'        DECLARE',
'           L_PRIMARY_KEY NUMBER;',
'        BEGIN',
'           SELECT NVL(MAX(BATCH_ID), 0) + 1',
'             INTO L_PRIMARY_KEY',
'             FROM EDC_IP_BATCH;',
'',
'           RETURN L_PRIMARY_KEY;',
'        END;',
'    END;',
'BEGIN',
'    :P376_BATCH_ID := GET_PK;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error on PK process'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052140481692754133)
,p_internal_uid=>11052145085809754143
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052145258979754143)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CRO_IP_BATCH'
,p_attribute_02=>'EDC_IP_BATCH'
,p_attribute_03=>'P376_BATCH_ID'
,p_attribute_04=>'BATCH_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11052145258979754143
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052145464488754143)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert ip details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_num            NUMBER;',
'    btl_seq          NUMBER;',
'    btl_prefix       VARCHAR2(10);',
'    study_arm        NUMBER;',
'    ip_ds            NUMBER;',
'    IP_DS_1          NUMBER;',
'    IP_SD_LV         varchar2(25);',
'    V_CN_FLAG        NUMBER;',
'    V_TOT_CNT        NUMBER := 0;	',
'    V_TOT_CNT_FAIL   NUMBER := 0;',
'BEGIN',
'     -- Changed By VipulR on 03-NOV-2014 for Generate Dynamic Bottle No. 	',
'    SELECT STUDY_ARM_ID,  ',
'           to_number(decode(substr(regexp_replace(:ARMD_DOSE, ''[^[:digit:]^\.]''),-1), ''.'', substr(regexp_replace(:ARMD_DOSE, ''[^[:digit:]^\.]''), 0, length(regexp_replace(:ARMD_DOSE, ''[^[:digit:]^\.]''))-1),regexp_replace(:P376_ARMD_DOSE,''[^[:digit:]^\'
||'.]''))) as TEST,',
'           ARMD_SH_NM,',
'           ARMD_DOSE ',
'      INTO study_arm, ',
'           ip_ds,',
'           IP_SD_LV,',
'           IP_DS_1 ',
'      FROM EDC_STUDY_ARM_DTLS',
'     WHERE ARMD_ID = :P376_ARMD_ID;',
'',
'    btl_prefix := :P376_PREFIX;',
'',
'    SELECT NVL(MAX(IP_ID),0)',
'      INTO V_NUM',
'      FROM EDC_IP_DETAIL;',
'',
'    btl_seq := :P376_START_WITH - 1;',
'',
'    FOR I IN 1..:P376_TOT_BOX_BLIST LOOP',
'        SELECT COUNT(*)',
'          INTO V_CN_FLAG ',
'          FROM EDC_IP_DETAIL',
'         WHERE STUDY_ID = :APP_EDC_STUDY_ID',
'           AND UPPER(BOTTLE_NO) = UPPER(btl_prefix || ''-'' || (btl_seq + I));',
'',
'        IF V_CN_FLAG = 0 THEN',
'            SELECT NVL(MAX(IP_ID), 0)',
'              INTO v_num',
'              FROM EDC_IP_DETAIL;',
'',
'            INSERT INTO EDC_IP_DETAIL(IP_ID,',
'                        STUDY_ID,',
'                        BOTTLE_NO,',
'                        STUDY_ARM_ID,',
'                        IP_DOSE_LEVEL,',
'                        IP_DOSE,',
'                        IP_CONTENT,',
'                        IP_NO_TABLETS,',
'                        EXP_DATE_REAL,',
'                        MANUF_DATE,',
'                        EXP_DATE_LABEL,',
'                        ARMD_ID,',
'                        BATCH,LOT_NUMBER,IP_STATUS)',
'    			 values (TEMP_ID.nextval,',
'                        :APP_EDC_STUDY_ID,',
'                        btl_prefix  || (btl_seq + I),',
'                        study_arm,',
'                        IP_DS,',
'                        IP_DS_1,',
'                        ''DoseLevel'',',
'                        :P376_MED_PER_BOX,',
'                        to_date(:P376_EXP_DATE,''DD-MON-YYYY''),',
'                        TO_dATE(:P376_MFG_DATE,''DD-MON-YYYY''),',
'                        TO_dATE(:P376_EXP_DATE,''DD-MON-YYYY''),',
'                        :P376_ARMD_ID,',
'                        :P376_BATCH_NO,',
'                        :P376_LOT_NUMBER,',
'                        1',
'                        );',
'',
'            V_TOT_CNT := V_TOT_CNT + 1;',
'            COMMIT;',
'        ELSE 	',
'            V_TOT_CNT_FAIL := V_TOT_CNT_FAIL + 1;',
'            INSERT INTO edc_TEMP_IP_CSV (BOTTLE_NO,',
'                                         BATCH,',
'                                         ERR_MSG',
'                                        )',
'                                 VALUES (btl_prefix || (btl_seq + I),',
'                                         :P376_BATCH_NO,',
'                                         ''Duplicate Row Found..''',
'                                        );',
'        END IF;',
'    END LOOP;	',
'   :P376_BTL_GEN := V_TOT_CNT;',
'   :P376_BTL_GEN_FAIL := V_TOT_CNT_FAIL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'IP already exist'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052140481692754133)
,p_process_success_message=>'New Batch Added...'
,p_internal_uid=>11052145464488754143
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ERROR IN ADDING TO INVENTORY',
'------------',
'	SELECT STUDY_ARM_ID, ARMD_SH_NM, to_number(regexp_replace(ARMD_DOSE,''[^[:digit:]^\.]'')) INTO study_arm, btl_prefix, ip_ds FROM CRO_STUDY_ARM_DTLS WHERE ARMD_ID = :P376_ARMD_ID;',
'--------------------------------------------------------------------------------',
'--Change on 17th september (Thursday)',
'SELECT STUDY_ARM_ID,  to_number(decode(substr(regexp_replace(:ARMD_DOSE,''[^[:digit:]^\.]''),-1),''.'',substr(regexp_replace(:ARMD_DOSE,''[^[:digit:]^\.]''),0,length(regexp_replace(:ARMD_DOSE,''[^[:digit:]^\.]''))-1),regexp_replace(:ARMD_DOSE,''[^[:digit:]^\.'
||']''))) as TEST,',
'ARMD_SH_NM,',
'ARMD_DOSE ',
'INTO study_arm, ',
'     ip_ds,',
'     IP_SD_LV,',
'     IP_DS_1 ',
'FROM EDC_STUDY_ARM_DTLS WHERE ARMD_ID = :P376_ARMD_ID;',
'------------------------ End ------------------------------------------'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052145665467754144)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052140877494754134)
,p_internal_uid=>11052145665467754144
);
wwv_flow_imp.component_end;
end;
/
