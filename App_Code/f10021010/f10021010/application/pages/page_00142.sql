prompt --application/pages/page_00142
begin
--   Manifest
--     PAGE: 00142
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
 p_id=>142
,p_name=>'API TEST'
,p_alias=>'API-TEST'
,p_step_title=>'API TEST'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1864499333438193240)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1864499462580193242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1864499333438193240)
,p_button_name=>'GENERATE_TOKEN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Generate Token'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1864499381394193241)
,p_name=>'P142_TOKEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1864499333438193240)
,p_prompt=>'Token'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1864499748596193244)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE_TOKEN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_TOKEN CLOB;',
'BEGIN',
'V_TOKEN := APEX_WEB_SERVICE.MAKE_REST_REQUEST(',
'    p_url            => ''https://secure.clinicaldevelopment.ibm.com/ws/session/login'',',
'    p_http_method       => ''POST'',',
'     p_body          =>    ''{',
'                                "login":"006IRT",',
'                                 "password":"QPTORE006!"',
'                            }'',',
'    p_parm_name => apex_util.string_to_table(''mode''),',
'    p_parm_value =>  apex_util.string_to_table(''token'')',
'   );',
'   ',
'   INSERT INTO TEMP_TRACE VALUES(V_TOKEN);',
'   ',
'   END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>763548980454689151
);
wwv_flow_imp.component_end;
end;
/
