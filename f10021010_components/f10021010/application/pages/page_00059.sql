prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_tab_set=>'TS1'
,p_name=>'Shipment Quarantined'
,p_step_title=>'Shipment Quarantined'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function saveClick(){',
'    if($.trim($v(''P59_COMMENTS''))){',
'        if(confirm("This will Quarantine all the IPs in this Shipment, are you sure you want to continue? ")){',
'            apex.submit(''SAVE'');',
'        }',
'    }',
'    else{',
'        alert(''Reason must be specified.'');',
'    }        ',
'}'))
,p_step_template=>wwv_flow_imp.id(11017835689714707247)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11282337740266510697)
,p_plug_name=>'Shipment Quarantined'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>211
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11282337790637510698)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11282337740266510697)
,p_button_name=>'Save'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:saveClick();'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11282337941279510699)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11282337740266510697)
,p_button_name=>'CLOSE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:window.parent.$(window.parent.document).apex_modal_page(''close'','''');'
,p_security_scheme=>wwv_flow_imp.id(12146159132002328484)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287237396057418950)
,p_name=>'P59_SHIP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11282337740266510697)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11287237562456418951)
,p_name=>'P59_COMMENTS'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11282337740266510697)
,p_prompt=>'Specify Reason'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>5
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136747186911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11287237597220418952)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Quarantine Shipment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'	V_STUDY_ID NUMBER;',
'	V_STUDY_SITE_ID NUMBER;        ',
'BEGIN',
'	SELECT STUDY_SITE_ID',
'	  INTO V_STUDY_SITE_ID',
'	  FROM EDC_IP_SHIPMENT',
'	 WHERE SHIP_ID = :P59_SHIP_ID;',
'',
'	UPDATE EDC_IP_SHIPMENT ',
'	   SET SHIP_STATUS = ''Quarantined''',
'  		 , REASON_DQ = :P59_COMMENTS ',
'		 , DQ_STATUS = 3',
'		 , SHIP_REC_DT = to_date(sysdate, ''dd/mm/yyyy'')',
'	 WHERE SHIP_ID = :P59_SHIP_ID;',
'',
'	/*',
'	for j in (select ip_id',
'	            from cro_ip_shipment_dtls',
'			   where ship_id = :P551_SHIP_ID',
'			  -- and rownum <= v_rec_qty',
'			  )',
'	loop',
'		update cro_ip_detail',
'		   set ip_status = 3',
'		 where ip_id = j.ip_id;',
'',
'		commit;',
'	end loop; ',
'	*/',
'    ',
'    UPDATE EDC_IP_DETAIL',
'       SET IP_STATUS = 11',
'     WHERE IP_ID IN (SELECT IP_ID FROM EDC_IP_SHIPMENT_DTLS WHERE SHIP_ID = :P59_SHIP_ID);',
'',
'	UPDATE EDC_IP_SHIPMENT_DTLS',
'	   SET SHIPPED_STATUS = 3',
'	   --, ip_status = 3',
'     WHERE SHIP_ID = :P59_SHIP_ID;',
'',
'	COMMIT;',
'',
'    -- CRO_EMAIL_ALERT_PKG.SEND_SHIP_TO_SITE_DAMAGED(:APP_STUDY_ID,V_STUDY_SITE_ID,:P551_SHIP_ID,2);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Shipment Quarantined...'
,p_internal_uid=>10186286829078914859
);
wwv_flow_imp.component_end;
end;
/
