prompt --application/pages/page_00702
begin
--   Manifest
--     PAGE: 00702
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
 p_id=>702
,p_tab_set=>'TS1'
,p_name=>' &APP_PAGE_NAME.'
,p_step_title=>' &APP_PAGE_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function get_pk(){',
'    ',
'    var c =$(''#P702_INC_ID'').val();',
'    if (c != '''') {',
'        return 1;',
'    }',
'    else',
'        {',
'            return 0;',
'        }',
'}',
'    ',
'',
'',
'function show_res_chng(){',
'    var pk = get_pk();',
'    ',
'    if(pk == 1){',
'    ',
'        $(''.radio_group'').change(function(){',
'            var a=$(this).prop(''id'');',
'            $(''#''+a+''_CHANGE'').show();',
'             $(''#''+a+''_CHANGE_LABEL'').show();',
'           ',
'        })',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'show_res_chng();',
'',
'$(''#P702_INC1_LABEL'').parent().css({"width":"628px"});',
'',
'$(''input[type="radio"]'').each(function(){',
'  var a=$(this).prop(''id'');',
'',
'',
'  if (~a.indexOf("INC")){',
'  ',
'    if (~a.indexOf("_0")){',
'      $(''#''+a).css({''margin-right'':''25px''});',
'    }',
'  /*  if(~a.indexOf("_1")){',
'      //console.log(a);',
'     $(''#''+a).css({''margin-right'':''25px''});',
'    }*/',
'  }',
'});',
'',
'',
' $(''.text_field'').each(function(){',
'    var a=$(this).prop(''id'');',
'    if (~a.indexOf("_CHANGE")){',
'        $(''#''+a).appendTo($(''#''+a+''_LABEL'').parent());',
'    }',
'})'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10323131829552500706)
,p_plug_name=>' &APP_EDC_VISIT_NAME.'
,p_region_name=>'pg_reg_width'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11050911173095856995)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10323132202346500710)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(10323131829552500706)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045179264140407886)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('General Inclusion Criteria (All inclusion criteria must be answered \201CYES\201D for the subject to be eligible for'),
'',
unistr('participation, If answered \201CNO\201D , please complete Protocol Deviation CRF)')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10344835308238045647)
,p_plug_name=>' &APP_PAGE_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(10323131829552500706)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10323132155196500709)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180366321407887)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10344883628047481956)
,p_plug_name=>'temp'
,p_parent_plug_id=>wwv_flow_imp.id(10323131829552500706)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10344846303908045704)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344887081231488775)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'SUBMIT_FOR_MONITORING'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,4) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344887434256491517)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'MONITOR_SECTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SDV'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,6) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11046584459245172844)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344887708475493077)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'REVIEW_SECTION_DM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Review'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,8) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344888036994494535)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'LOCK_SECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lock'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,10) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344888559054496125)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'UNLOCK_SECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Unlock'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'edc_workflow.is_ready_for_submit(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,11) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11062082057979019090)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344835778310045648)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P702_INC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344886434144484717)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'ADD_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Query'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP,124:P124_PATIENT_VISIT_ID,P124_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_button_condition=>'EDC_WORKFLOW.ALLOW_QUERY(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_USER_TYPE,:APP_PAGE_ID) = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(11046831180814448268)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344886768259487510)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P702_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_VISIT_ID,P6_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_button_condition=>'P702_INC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344835959882045648)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
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
 p_id=>wwv_flow_imp.id(10344835745750045648)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P702_INC_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10344835877201045648)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P702_INC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045225087783133792)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10344837562664045649)
,p_branch_action=>'f?p=&APP_ID.:702:&SESSION.::&DEBUG.:702::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10323132390489500712)
,p_name=>'P702_NEW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'PLSQL'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  HTP.P(''<label style="font-weight: bold;">Yes</label><label style="font-weight: bold;margin-left:15px">No</label>'');',
'END;'))
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10323132496344500713)
,p_name=>'P702_NEW_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<b>3.&nbsp;&nbsp;&nbsp; Hemodynamically stable patients coming to the site for cardiac catheterization and angiography who  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fulfill all the following criteria:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10323132579359500714)
,p_name=>'P702_INC1_CHANGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10323132725494500715)
,p_name=>'P702_INC2_CHANGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10323132815835500716)
,p_name=>'P702_INC3A_CHANGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10323132878205500717)
,p_name=>'P702_INC3B_CHANGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10323132990690500718)
,p_name=>'P702_INC3C_CHANGE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10323133152996500719)
,p_name=>'P702_INC4_CHANGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10323133198173500720)
,p_name=>'P702_INC5_CHANGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10323133289107500721)
,p_name=>'P702_INC6_CHANGE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10323133418781500722)
,p_name=>'P702_INC7_CHANGE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_prompt=>'<B>Reason for Change</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_imp.id(10344837987383045690)
,p_name=>'P702_INC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_source=>'INC_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344838350485045697)
,p_name=>'P702_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_EDC_STUDY_ID',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344838737481045698)
,p_name=>'P702_PATIENT_VISIT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
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
 p_id=>wwv_flow_imp.id(10344839074559045698)
,p_name=>'P702_SECTION_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10344883628047481956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'<b>Section Status:</b>'
,p_source=>'SECTION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_CRF_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VAL d, RETURN_VAL r from EDC_CRF_STATUS',
'where status=1 order by disp_seq'))
,p_cHeight=>1
,p_label_alignment=>'CENTER'
,p_field_alignment=>'CENTER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344839540659045698)
,p_name=>'P702_INC1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>1.&nbsp;&nbsp;&nbsp;Patient 18 years to 75 years, both inclusive</b>'
,p_source=>'INC1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344839916789045698)
,p_name=>'P702_INC2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>2.&nbsp;&nbsp;&nbsp;Have at least one severe stenotic lesion (greater than or equal to 80% diameter stenosis as assessed by &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;visual estimation)</b>'
,p_source=>'INC2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344840285351045699)
,p_name=>'P702_INC3A'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>&nbsp &nbsp;&nbsp;&nbsp &nbsp;&nbsp;o&nbsp;Have no clinically significant cardiac arrhythmias, based on ECG results</b>'
,p_source=>'INC3A'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344840737937045699)
,p_name=>'P702_INC3B'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>&nbsp &nbsp;&nbsp;&nbsp &nbsp;&nbsp;o&nbsp;Have no evidence of valvular pathology, based on echocardiogram results</b>'
,p_source=>'INC3B'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344841132045045699)
,p_name=>'P702_INC3C'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>&nbsp &nbsp;&nbsp;&nbsp &nbsp;&nbsp;o&nbsp;Have =30% left ventricular ejection fraction (LVEF), based on echocardiogram results</b>'
,p_source=>'INC3C'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344841517748045699)
,p_name=>'P702_INC4'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>4.&nbsp;&nbsp;&nbsp;Angiographic evidence of calcification or a chronic total occlusion</b>'
,p_source=>'INC4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344841878483045700)
,p_name=>'P702_INC5'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>5.&nbsp;&nbsp;&nbsp;Vessel reference diameter greater than or equal to 2.0 mm</b>'
,p_source=>'INC5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344842270488045700)
,p_name=>'P702_INC6'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>6.&nbsp;&nbsp;&nbsp;Patient is willing and able to comply with study requirements</b>'
,p_source=>'INC6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344842732551045700)
,p_name=>'P702_INC7'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(10344835308238045647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>7.&nbsp;&nbsp;&nbsp;Women of child bearing potential , willing to use at least two methods of contraception</b>'
,p_source=>'INC7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344843106582045701)
,p_name=>'P702_CREATED_BY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(10323132155196500709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created By</b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly=''readonly'''
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
 p_id=>wwv_flow_imp.id(10344843492001045701)
,p_name=>'P702_CREATED_DT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(10323132155196500709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly=''readonly'''
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344843903776045701)
,p_name=>'P702_UPDATED_BY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(10323132155196500709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated By</b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly=''readonly'''
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
 p_id=>wwv_flow_imp.id(10344844299459045701)
,p_name=>'P702_UPDATED_DT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(10323132155196500709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'readonly=''readonly'''
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185857341407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344885497057481960)
,p_name=>'P702_NO_OF_QUERIES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10344883628047481956)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM edc_crf_queries',
' where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
' AND QRY_STATUS in (''Open'',''Reopened'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10344885924280481960)
,p_name=>'P702_IMG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10344883628047481956)
,p_prompt=>'<b>CRF Audit Trail :</b>'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img ',
' id="P702_AUDIT"',
' src="#WORKSPACE_IMAGES#audit.png" ',
'',
' style="cursor: pointer" ',
'         width="25px"',
' title="Audit"',
'>',
''))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(10344919208281616015)
,p_computation_sequence=>20
,p_computation_item=>'P702_INC_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN EDC_UTIL.GET_PK_VALUE_COMPUTATION(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID);',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345326681521891288)
,p_validation_name=>'P702_INC1_CHANGE'
,p_validation_sequence=>10
,p_validation=>'P702_INC1_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Patient 18 years to 75 years, both inclusive" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC1 VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC1',
'      INTO V_INC1',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC1 = :P702_INC1 THEN',
'      return FALSE;',
'    elsif V_INC1 is null and length(:P702_INC1) is null then',
'      return FALSE;',
'    elsif V_INC1 is null and length(:P702_INC1) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323132579359500714)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345313539945857093)
,p_validation_name=>'P702_INC2_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P702_INC2_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Have at least one severe stenotic lesion (greater than or equal to 80% diameter stenosis as assessed by visual estimation)" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC2 VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC2',
'      INTO V_INC2',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC2 = :P702_INC2 THEN',
'      return FALSE;',
'    elsif V_INC2 is null and length(:P702_INC2) is null then',
'      return FALSE;',
'    elsif V_INC2 is null and length(:P702_INC2) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323132725494500715)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345313621815857094)
,p_validation_name=>'P702_INC3A_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P702_INC3A_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Have no clinically significant cardiac arrhythmias, based on ECG results" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC3A VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC3A',
'      INTO V_INC3A',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC3A = :P702_INC3A THEN',
'      return FALSE;',
'    elsif V_INC3A is null and length(:P702_INC3A) is null then',
'      return FALSE;',
'    elsif V_INC3A is null and length(:P702_INC3A) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323132815835500716)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345313675653857095)
,p_validation_name=>'P702_INC3B_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P702_INC3B_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Have no evidence of valvular pathology, based on echocardiogram results" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC3B VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC3B',
'      INTO V_INC3B',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC3B = :P702_INC3B THEN',
'      return FALSE;',
'    elsif V_INC3B is null and length(:P702_INC3B) is null then',
'      return FALSE;',
'    elsif V_INC3B is null and length(:P702_INC3B) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323132878205500717)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345313767441857096)
,p_validation_name=>'P702_INC3C_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P702_INC3C_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Have =30% left ventricular ejection fraction (LVEF), based on echocardiogram results" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC3C VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC3C',
'      INTO V_INC3C',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC3C = :P702_INC3C THEN',
'      return FALSE;',
'    elsif V_INC3C is null and length(:P702_INC3C) is null then',
'      return FALSE;',
'    elsif V_INC3C is null and length(:P702_INC3C) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323132990690500718)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345313909919857097)
,p_validation_name=>'P702_INC4_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P702_INC4_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Angiographic evidence of calcification or a chronic total occlusion" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC4 VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC4',
'      INTO V_INC4',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC4 = :P702_INC4 THEN',
'      return FALSE;',
'    elsif V_INC4 is null and length(:P702_INC4) is null then',
'      return FALSE;',
'    elsif V_INC4 is null and length(:P702_INC4) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323133152996500719)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345314048123857098)
,p_validation_name=>'P702_INC5_CHANGE'
,p_validation_sequence=>70
,p_validation=>'P702_INC5_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Angiographic evidence of calcification or a chronic total occlusion" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC5 VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC5',
'      INTO V_INC5',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC5 = :P702_INC5 THEN',
'      return FALSE;',
'    elsif V_INC5 is null and length(:P702_INC5) is null then',
'      return FALSE;',
'    elsif V_INC5 is null and length(:P702_INC5) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323133198173500720)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345314089766857099)
,p_validation_name=>'P702_INC6_CHANGE'
,p_validation_sequence=>80
,p_validation=>'P702_INC6_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Patient is willing and able to comply with study requirements" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC6 VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC6',
'      INTO V_INC6',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC6 = :P702_INC6 THEN',
'      return FALSE;',
'    elsif V_INC6 is null and length(:P702_INC6) is null then',
'      return FALSE;',
'    elsif V_INC6 is null and length(:P702_INC6) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323133289107500721)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345314210057857100)
,p_validation_name=>'P702_INC7_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P702_INC7_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Women of child bearing potential , willing to use at least two methods of contraception" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC7 VARCHAR2(20);',
'BEGIN',
'',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'      SELECT INC7',
'      INTO V_INC7',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    if V_INC7 = :P702_INC7 THEN',
'      return FALSE;',
'    elsif V_INC7 is null and length(:P702_INC7) is null then',
'      return FALSE;',
'    elsif V_INC7 is null and length(:P702_INC7) > 0 then',
'      return TRUE;',
'    else',
'      return TRUE;',
'    end if;',
'  END IF;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_imp.id(10344835778310045648)
,p_associated_item=>wwv_flow_imp.id(10323133418781500722)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345236974453727308)
,p_name=>'P702_INC1_CHANGE hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC1 VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC1',
'      INTO V_INC1',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC1 != :P702_INC1 THEN',
'      RETURN FALSE;',
'    ELSIF V_INC1 IS NULL AND :P702_INC1 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC1 IS NOT NULL AND :P702_INC1 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345237408749727309)
,p_event_id=>wwv_flow_imp.id(10345236974453727308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC1_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10323133547347500723)
,p_name=>'P702_INC2_CHANGE hide'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_INC2 VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC2',
'      INTO V_INC2',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC2 != :P702_INC2 THEN',
'      RETURN FALSE;',
'    ELSIF V_INC2 IS NULL AND :P702_INC2 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC2 IS NOT NULL AND :P702_INC2 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10323133564081500724)
,p_event_id=>wwv_flow_imp.id(10323133547347500723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC2_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10323133727821500725)
,p_name=>'P702_INC3A_CHANGE HIDE'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_INC3A VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC3A',
'      INTO V_INC3A',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC3A != :P702_INC3A THEN',
'      RETURN FALSE;',
'    ELSIF V_INC3A IS NULL AND :P702_INC3A IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC3A IS NOT NULL AND :P702_INC3A IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10323133855319500726)
,p_event_id=>wwv_flow_imp.id(10323133727821500725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC3A_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10323133873552500727)
,p_name=>'P702_INC3B_CHANGE HIDE'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_INC3B VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC3B',
'      INTO V_INC3B',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC3B != :P702_INC3B THEN',
'      RETURN FALSE;',
'    ELSIF V_INC3B IS NULL AND :P702_INC3B IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC3B IS NOT NULL AND :P702_INC3B IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10323134053327500728)
,p_event_id=>wwv_flow_imp.id(10323133873552500727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC3B_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10323134142886500729)
,p_name=>'P702_INC3C_CHANGE HIDE'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_INC3C VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC3C',
'      INTO V_INC3C',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC3C != :P702_INC3C THEN',
'      RETURN FALSE;',
'    ELSIF V_INC3C IS NULL AND :P702_INC3C IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC3C IS NOT NULL AND :P702_INC3C IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10323134212660500730)
,p_event_id=>wwv_flow_imp.id(10323134142886500729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC3C_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10323134298650500731)
,p_name=>'P702_INC4_CHANGE HIDE'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_INC4 VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC4',
'      INTO V_INC4',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC4 != :P702_INC4 THEN',
'      RETURN FALSE;',
'    ELSIF V_INC4 IS NULL AND :P702_INC4 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC4 IS NOT NULL AND :P702_INC4 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10323134386940500732)
,p_event_id=>wwv_flow_imp.id(10323134298650500731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC4_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345312861934857087)
,p_name=>'P702_INC5_CHANGE HIDE'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_INC5 VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC5',
'      INTO V_INC5',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC5 != :P702_INC5 THEN',
'      RETURN FALSE;',
'    ELSIF V_INC5 IS NULL AND :P702_INC5 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC5 IS NOT NULL AND :P702_INC5 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345312994275857088)
,p_event_id=>wwv_flow_imp.id(10345312861934857087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC5_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345313079331857089)
,p_name=>'P702_INC6_CHANGE HIDE'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_INC6 VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC6',
'      INTO V_INC6',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC6 != :P702_INC6 THEN',
'      RETURN FALSE;',
'    ELSIF V_INC6 IS NULL AND :P702_INC6 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC6 IS NOT NULL AND :P702_INC6 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345313253959857090)
,p_event_id=>wwv_flow_imp.id(10345313079331857089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC6_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345313330028857091)
,p_name=>'P702_INC7_CHANGE HIDE'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_INC7 VARCHAR2(200);',
'BEGIN',
'  IF :P702_INC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT INC7',
'      INTO V_INC7',
'      FROM EDC_CRF_INC',
'     WHERE INC_ID = :P702_INC_ID;',
'',
'    IF V_INC7 != :P702_INC7 THEN',
'      RETURN FALSE;',
'    ELSIF V_INC7 IS NULL AND :P702_INC7 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_INC7 IS NOT NULL AND :P702_INC7 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345313412643857092)
,p_event_id=>wwv_flow_imp.id(10345313330028857091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P702_INC7_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345237802246730658)
,p_name=>'Audit'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P702_AUDIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345238231334730658)
,p_event_id=>wwv_flow_imp.id(10345237802246730658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_VISIT_ID:&APP_PAGE_ID.,&P702_PATIENT_VISIT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10344845085920045703)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_INC'
,p_attribute_02=>'EDC_CRF_INC'
,p_attribute_03=>'P702_INC_ID'
,p_attribute_04=>'INC_ID'
,p_internal_uid=>10344845085920045703
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10344845473466045703)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_INC'
,p_attribute_02=>'EDC_CRF_INC'
,p_attribute_03=>'P702_INC_ID'
,p_attribute_04=>'INC_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>10344845473466045703
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10344845943177045703)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10344835877201045648)
,p_internal_uid=>10344845943177045703
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345955820697516109)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_VISIT_STATUS'
,p_process_sql_clob=>'EDC_WORKFLOW.update_visit_status(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'',''CREATE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>10345955820697516109
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345956267103519158)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT_FOR_CRA_REVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while submitting for Monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10344887081231488775)
,p_process_success_message=>'Submitted for Monitoring.'
,p_internal_uid=>10345956267103519158
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345956850941521887)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SDV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while Monitoring.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10344887434256491517)
,p_process_success_message=>'Section Monitored.'
,p_internal_uid=>10345956850941521887
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345957279156524170)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_REVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# -While reviewing the section for site.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10344887708475493077)
,p_process_success_message=>'Section reviewed.'
,p_internal_uid=>10345957279156524170
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345981691989794156)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_LOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,'''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - While section Lock.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10344888036994494535)
,p_process_success_message=>'Section Locked.'
,p_internal_uid=>10345981691989794156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345982220986796072)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DM_UNLOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'edc_workflow.UPDATE_WORKFLOW_STATUS(:APP_EDC_STUDY_ID,:APP_PAGE_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_EDC_ROLE_ID,''O'');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# - Error while unlocking the section.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10344888559054496125)
,p_process_success_message=>'Section unlocked.'
,p_internal_uid=>10345982220986796072
);
wwv_flow_imp.component_end;
end;
/
