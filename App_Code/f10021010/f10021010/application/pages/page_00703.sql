prompt --application/pages/page_00703
begin
--   Manifest
--     PAGE: 00703
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
 p_id=>703
,p_tab_set=>'TS1'
,p_name=>'&APP_PAGE_NAME.'
,p_step_title=>'&APP_PAGE_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function add_td(){',
'    $(''#P703_NEW_LABEL'').parent().parent().prepend(''<td style="width:10px;">&nbsp;</td>'');',
'    var c= 1;',
'    $(''fieldset[class="radio_group"]'').each(function(){',
'        var a = $(this).prop(''id'');',
'        var b = ''<td style="text-align:center; vertical-align:middle;" class="uOptional"><b>''+c+''.</b></td>''',
'        $("#"+a+"_LABEL").parent().parent().prepend(b);',
'        $("#"+a+"_LABEL").parent().css({"width":"600px"});',
'        c=c+1;',
'    });',
'',
'    $(''.text_field'').each(function(){',
'        var a = $(this).prop(''id'');',
'',
'        if (~a.indexOf(''_CHANGE'')){',
'            $("#"+a+"_LABEL").parent().parent().prepend(''<td>&nbsp;</td>'');',
'            $(''#''+a).appendTo($(''#''+a+''_LABEL'').parent());',
'        }',
'    })',
'}',
'',
'function get_pk(){',
'    var pk = $(''#P703_EXC_ID'').val();',
'',
'    if ( pk != '''' ){',
'        return 1;',
'    }',
'    else{',
'        return 0;',
'    }',
'}',
'',
'function show_reason_for_change(){',
'    var pk = get_pk();',
'',
'    if( pk == 1 ){',
'        $(''fieldset[class="radio_group"]'').change(function(){',
'            var a = $(this).prop(''id'');',
'            $(''#''+a+''_CHANGE'').show();',
'            $(''#''+a+''_CHANGE_LABEL'').show();',
'        })',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'add_td();',
'show_reason_for_change();',
'$(''input[type="radio"]'').each(function(){',
'  var a = $(this).prop(''id'');',
'',
'  if (~a.indexOf("_1")){',
'    $(this).css({"margin-left":"21px"});',
'  }',
'})'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(11045207488966824379)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10345593047008039531)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10345639521131155029)
,p_plug_name=>'&APP_EDC_VISIT_NAME.'
,p_region_name=>'pg_reg_width'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(11050911173095856995)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11045184765473407894)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10345639770488155030)
,p_plug_name=>'&APP_PAGE_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(10345639521131155029)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180167451407887)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10345647842252155037)
,p_plug_name=>'temp'
,p_parent_plug_id=>wwv_flow_imp.id(10345639521131155029)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10345650584554155040)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(10345639521131155029)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(11045180366321407887)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345640213369155031)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
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
 p_id=>wwv_flow_imp.id(10345640609817155031)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
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
 p_id=>wwv_flow_imp.id(10345640963894155031)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
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
 p_id=>wwv_flow_imp.id(10345641388654155032)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
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
 p_id=>wwv_flow_imp.id(10345641811011155032)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
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
 p_id=>wwv_flow_imp.id(10345643040485155033)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P703_EXC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045208363860824391)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345643800872155033)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
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
 p_id=>wwv_flow_imp.id(10345644157779155033)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_button_name=>'SHOW_QUERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Show Query  <u style=''font-size: 9px ! important; text-decoration: none;''> ( &P703_NO_OF_QUERIES. ) </u>'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:popupURL(''f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6:P6_PATIENT_VISIT_ID,P6_PAGE_ID:&APP_EDC_PATIENT_VISIT_ID.,&APP_PAGE_ID.'');'
,p_button_condition=>'P501_XIC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345642176157155032)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
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
 p_id=>wwv_flow_imp.id(10345643412585155033)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P703_EXC_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(11045207987044824391)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10345642635531155032)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P703_EXC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10345581840577039470)
,p_branch_name=>'Go To Page 703'
,p_branch_action=>'f?p=&APP_ID.:703:&SESSION.::&DEBUG.:703::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345582208421039512)
,p_name=>'P703_EXC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10345647842252155037)
,p_use_cache_before_default=>'NO'
,p_source=>'EXC_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345583806390039522)
,p_name=>'P703_EXC1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Evidence of acute coronary syndrome within 3 months prior to index procedure</b>'
,p_source=>'EXC1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345584180550039523)
,p_name=>'P703_EXC2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Evidence of acute ischemic events</b>'
,p_source=>'EXC2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345584601302039523)
,p_name=>'P703_EXC3'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Cardiogenic and non-cardiogenic shock</b>'
,p_source=>'EXC3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345585005281039523)
,p_name=>'P703_EXC4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Active bleeding or coCLTH_EPI_DEVlopathy</b>'
,p_source=>'EXC4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345585416998039523)
,p_name=>'P703_EXC5'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Previous coronary angioplasty within 6 months of the index procedure</b>'
,p_source=>'EXC5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345585773032039524)
,p_name=>'P703_EXC6'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Patients participating in trial for another investigational device/medicine within 1  month prior to enrolment in this study</b>'
,p_source=>'EXC6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345586214129039524)
,p_name=>'P703_EXC7'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('<b>Acute or Chronic renal failure, Impaired renal function (serum creatinine > 2.5 mg/dl  or 221 \00BFmol/l) determined within 72 hours prior to index procedure</b>')
,p_source=>'EXC7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345586593239039524)
,p_name=>'P703_EXC8'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Known allergies to the following: Aspirin, Clopidogrel or Ticlopidine, Heparin,  Sirolimus or its derivatives, contrast agent (that cannot be adequately pre-medicated),  or any metal</b>'
,p_source=>'EXC8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345587052019039525)
,p_name=>'P703_EXC9'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Planned surgery within 6 months of enrollment in this study</b>'
,p_source=>'EXC9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345587369346039525)
,p_name=>'P703_EXC10'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Life expectancy less than 6 months</b>'
,p_source=>'EXC10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345587817049039525)
,p_name=>'P703_EXC11'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Patients known to be suffering from substance abuse (alcohol or drug)</b>'
,p_source=>'EXC11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345588184985039525)
,p_name=>'P703_EXC12'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Patients with any other significant co-morbid illness which in the opinion of the  investigator is not conducive of inclusion in the study.</b>'
,p_source=>'EXC12'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345588607215039526)
,p_name=>'P703_EXC13'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Known or suspected Pregnancy</b>'
,p_source=>'EXC13'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345588968325039526)
,p_name=>'P703_EXC14'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Patients not willing to provide written informed consent</b>'
,p_source=>'EXC14'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345589412906039526)
,p_name=>'P703_EXC15'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>In the investigators opinion subjects will not be able to comply with the follow-up  requirements</b>'
,p_source=>'EXC15'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EDC_YES_NO_NOLBL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NULL d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''YES_NO'' and lv.status=1',
'order by lv.sequence;'))
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345648633628155037)
,p_name=>'P703_STUDY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10345647842252155037)
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
 p_id=>wwv_flow_imp.id(10345648972100155038)
,p_name=>'P703_PATIENT_VISIT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10345647842252155037)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_EDC_PATIENT_VISIT_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'PATIENT_VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345649417277155038)
,p_name=>'P703_SECTION_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10345647842252155037)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'<b>Section Status :</b>'
,p_source=>'SECTION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_CRF_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VAL d, RETURN_VAL r from EDC_CRF_STATUS',
'where status=1 order by disp_seq'))
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345649791889155039)
,p_name=>'P703_NO_OF_QUERIES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10345647842252155037)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM edc_crf_queries',
' where patient_visit_id = :APP_EDC_PATIENT_VISIT_ID',
'   AND PAGE_ID = :APP_PAGE_ID',
'   AND STUDY_ID = :APP_EDC_STUDY_ID',
' AND QRY_STATUS in (''Open'',''Reopened'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345650244414155039)
,p_name=>'P703_IMG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10345647842252155037)
,p_prompt=>'<b>CRF Audit Trail :</b>'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img ',
' id="P703_AUDIT"',
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10345651006528155040)
,p_name=>'P703_CREATED_BY'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(10345650584554155040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created By</b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(10345651418779155041)
,p_name=>'P703_CREATED_DT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(10345650584554155040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(10345651835812155041)
,p_name=>'P703_UPDATED_BY'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(10345650584554155040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated By</b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(10345652187270155041)
,p_name=>'P703_UPDATED_DT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(10345650584554155040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated Date</b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(10345756002958400988)
,p_name=>'P703_NEW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'PLSQL'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  HTP.P(''<LABEL style="font-weight:bold;">Yes</LABEL><LABEL style="font-weight:bold;margin-left:12px;">No</LABEL>'');',
'END;'))
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346002734112970235)
,p_name=>'P703_EXC1_CHANGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346002971082970236)
,p_name=>'P703_EXC2_CHANGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346003995949992013)
,p_name=>'P703_EXC3_CHANGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346004305292992014)
,p_name=>'P703_EXC4_CHANGE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346004669016992014)
,p_name=>'P703_EXC5_CHANGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346005137036992014)
,p_name=>'P703_EXC6_CHANGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346005506966992014)
,p_name=>'P703_EXC7_CHANGE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346005942472992015)
,p_name=>'P703_EXC8_CHANGE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346006258978992015)
,p_name=>'P703_EXC9_CHANGE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346006717426992015)
,p_name=>'P703_EXC10_CHANGE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346007129586992015)
,p_name=>'P703_EXC11_CHANGE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346007513328992015)
,p_name=>'P703_EXC12_CHANGE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346007950899992016)
,p_name=>'P703_EXC13_CHANGE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346008303024992016)
,p_name=>'P703_EXC14_CHANGE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10346014027739028880)
,p_name=>'P703_EXC15_CHANGE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(10345639770488155030)
,p_prompt=>'<b>Reason for Change</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(11045185769059407896)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(10345755887095400987)
,p_computation_sequence=>10
,p_computation_item=>'P703_EXC_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN EDC_UTIL.GET_PK_VALUE_COMPUTATION(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID,:APP_PAGE_ID);',
'END;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345756119109400989)
,p_validation_name=>'P703_EXC1_CHANGE'
,p_validation_sequence=>10
,p_validation=>'P703_EXC1_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Evidence of acute coronary syndrome within 3 months prior to index procedure" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC1 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC1',
'      INTO V_EXC1',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC1 != :P703_EXC1 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC1 IS NULL AND :P703_EXC1 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC1 IS NOT NULL AND :P703_EXC1 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346002734112970235)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345756410117400992)
,p_validation_name=>'P703_EXC2_CHANGE'
,p_validation_sequence=>20
,p_validation=>'P703_EXC2_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Evidence of acute ischemic events" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC2 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC2',
'      INTO V_EXC2',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC2 != :P703_EXC2 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC2 IS NULL AND :P703_EXC2 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC2 IS NOT NULL AND :P703_EXC2 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346002971082970236)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345756459598400993)
,p_validation_name=>'P703_EXC3_CHANGE'
,p_validation_sequence=>30
,p_validation=>'P703_EXC3_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Cardiogenic and non-cardiogenic shock" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC3 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC3',
'      INTO V_EXC3',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC3 != :P703_EXC3 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC3 IS NULL AND :P703_EXC3 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC3 IS NOT NULL AND :P703_EXC3 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346003995949992013)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345756580546400994)
,p_validation_name=>'P703_EXC4_CHANGE'
,p_validation_sequence=>40
,p_validation=>'P703_EXC4_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Active bleeding or coCLTH_EPI_DEVlopathy" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC4 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC4',
'      INTO V_EXC4',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC4 != :P703_EXC4 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC4 IS NULL AND :P703_EXC4 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC4 IS NOT NULL AND :P703_EXC4 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346004305292992014)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345757316886401001)
,p_validation_name=>'P703_EXC5_CHANGE'
,p_validation_sequence=>50
,p_validation=>'P703_EXC5_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Previous coronary angioplasty within 6 months of the index procedure" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC5 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC5',
'      INTO V_EXC5',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC5 != :P703_EXC5 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC5 IS NULL AND :P703_EXC5 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC5 IS NOT NULL AND :P703_EXC5 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346004669016992014)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345757430664401002)
,p_validation_name=>'P703_EXC6_CHANGE'
,p_validation_sequence=>60
,p_validation=>'P703_EXC6_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Patients participating in trial for another investigational device/medicine within 1  month prior to enrolment in this study" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC6 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC6',
'      INTO V_EXC6',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC6 != :P703_EXC6 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC6 IS NULL AND :P703_EXC6 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC6 IS NOT NULL AND :P703_EXC6 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346005137036992014)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345757526058401003)
,p_validation_name=>'P703_EXC7_CHANGE'
,p_validation_sequence=>70
,p_validation=>'P703_EXC7_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Reason for changing "Acute or Chronic renal failure, Impaired renal function (serum creatinine > 2.5 mg/dl  or 221 \00BFmol/l) determined within 72 hours prior to index procedure" must have some value.')
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC7 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC7',
'      INTO V_EXC7',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC7 != :P703_EXC7 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC7 IS NULL AND :P703_EXC7 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC7 IS NOT NULL AND :P703_EXC7 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346005506966992014)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345757629733401004)
,p_validation_name=>'P703_EXC8_CHANGE'
,p_validation_sequence=>80
,p_validation=>'P703_EXC8_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Known allergies to the following: Aspirin, Clopidogrel or Ticlopidine, Heparin,  Sirolimus or its derivatives, contrast agent (that cannot be adequately pre-medicated),  or any metal" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC8 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC8',
'      INTO V_EXC8',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC8 != :P703_EXC8 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC8 IS NULL AND :P703_EXC8 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC8 IS NOT NULL AND :P703_EXC8 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346005942472992015)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345758552761401013)
,p_validation_name=>'P703_EXC9_CHANGE'
,p_validation_sequence=>90
,p_validation=>'P703_EXC9_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Planned surgery within 6 months of enrollment in this study" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC9 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC9',
'      INTO V_EXC9',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC9 != :P703_EXC9 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC9 IS NULL AND :P703_EXC9 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC9 IS NOT NULL AND :P703_EXC9 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346006258978992015)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345758604927401014)
,p_validation_name=>'P703_EXC10_CHANGE'
,p_validation_sequence=>100
,p_validation=>'P703_EXC10_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Life expectancy less than 6 months" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC10 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC10',
'      INTO V_EXC10',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC10 != :P703_EXC10 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC10 IS NULL AND :P703_EXC10 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC10 IS NOT NULL AND :P703_EXC10 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346006717426992015)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345758686641401015)
,p_validation_name=>'P703_EXC11_CHANGE'
,p_validation_sequence=>110
,p_validation=>'P703_EXC11_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Patients known to be suffering from substance abuse (alcohol or drug)" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC11 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC11',
'      INTO V_EXC11',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC11 != :P703_EXC11 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC11 IS NULL AND :P703_EXC11 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC11 IS NOT NULL AND :P703_EXC11 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346007129586992015)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345758776386401016)
,p_validation_name=>'P703_EXC12_CHANGE'
,p_validation_sequence=>120
,p_validation=>'P703_EXC12_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Patients with any other significant co-morbid illness which in the opinion of the  investigator is not conducive of inclusion in the study." must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC12 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC12',
'      INTO V_EXC12',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC12 != :P703_EXC12 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC12 IS NULL AND :P703_EXC12 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC12 IS NOT NULL AND :P703_EXC12 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346007513328992015)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345759706573401025)
,p_validation_name=>'P703_EXC13_CHANGE'
,p_validation_sequence=>130
,p_validation=>'P703_EXC13_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Known or suspected Pregnancy" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC13 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC13',
'      INTO V_EXC13',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC13 != :P703_EXC13 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC13 IS NULL AND :P703_EXC13 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC13 IS NOT NULL AND :P703_EXC13 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346007950899992016)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345760010451401028)
,p_validation_name=>'P703_EXC14_CHANGE'
,p_validation_sequence=>140
,p_validation=>'P703_EXC14_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "Patients not willing to provide written informed consent" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC14 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC14',
'      INTO V_EXC14',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC14 != :P703_EXC14 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC14 IS NULL AND :P703_EXC14 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC14 IS NOT NULL AND :P703_EXC14 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346008303024992016)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10345760309347401031)
,p_validation_name=>'P703_EXC15_CHANGE'
,p_validation_sequence=>150
,p_validation=>'P703_EXC15_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reason for changing "In the investigators opinion subjects will not be able to comply with the follow-up  requirements" must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC15 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    SELECT EXC15',
'      INTO V_EXC15',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC15 != :P703_EXC15 THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC15 IS NULL AND :P703_EXC15 IS NOT NULL THEN',
'      RETURN TRUE;',
'    ELSIF V_EXC15 IS NOT NULL AND :P703_EXC15 IS NULL THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10346014027739028880)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345761356068412216)
,p_name=>'Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P703_AUDIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345761837587412218)
,p_event_id=>wwv_flow_imp.id(10345761356068412216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:141:&APP_SESSION.:::141:P141_PAGE_ID,P141_PATIENT_VISIT_ID:&APP_PAGE_ID.,&P703_PATIENT_VISIT_ID.'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345762212696414610)
,p_name=>'Lock modal page'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10345641388654155032)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345762646830414610)
,p_event_id=>wwv_flow_imp.id(10345762212696414610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:551:&APP_SESSION.::RP,551::P551_PK_ID,P551_PAGE_ID,P551_STATUS:&P703_EXC_ID.,&APP_PAGE_ID.,10'
,p_attribute_06=>'.uMessageText'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345763208020416061)
,p_name=>'Unlock Modal Page'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10345641811011155032)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345763605145416061)
,p_event_id=>wwv_flow_imp.id(10345763208020416061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:551:&APP_SESSION.::RP,551::P551_PK_ID,P551_PAGE_ID,P551_STATUS:&P703_EXC_ID.,&APP_PAGE_ID.,11'
,p_attribute_06=>'.uMessageText'
,p_attribute_07=>'AUTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345756248205400990)
,p_name=>'P703_EXC1_CHANGE hide'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC1 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC1',
'      INTO V_EXC1',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC1 != :P703_EXC1 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC1 IS NULL AND :P703_EXC1 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC1 IS NOT NULL AND :P703_EXC1 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345756304593400991)
,p_event_id=>wwv_flow_imp.id(10345756248205400990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC1_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345756749202400995)
,p_name=>'P703_EXC2_CHANGE hide'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC2 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC2',
'      INTO V_EXC2',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC2 != :P703_EXC2 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC2 IS NULL AND :P703_EXC2 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC2 IS NOT NULL AND :P703_EXC2 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345756830104400996)
,p_event_id=>wwv_flow_imp.id(10345756749202400995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC2_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345756879661400997)
,p_name=>'P703_EXC3_CHANGE hide'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC3 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC3',
'      INTO V_EXC3',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC3 != :P703_EXC3 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC3 IS NULL AND :P703_EXC3 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC3 IS NOT NULL AND :P703_EXC3 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345757003539400998)
,p_event_id=>wwv_flow_imp.id(10345756879661400997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC3_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345757062879400999)
,p_name=>'P703_EXC4_CHANGE hide'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC4 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC4',
'      INTO V_EXC4',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC4 != :P703_EXC4 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC4 IS NULL AND :P703_EXC4 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC4 IS NOT NULL AND :P703_EXC4 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345757248567401000)
,p_event_id=>wwv_flow_imp.id(10345757062879400999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC4_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345757703193401005)
,p_name=>'P703_EXC5_CHANGE hide'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC5 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC5',
'      INTO V_EXC5',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC5 != :P703_EXC5 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC5 IS NULL AND :P703_EXC5 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC5 IS NOT NULL AND :P703_EXC5 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345757838424401006)
,p_event_id=>wwv_flow_imp.id(10345757703193401005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC5_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345757927922401007)
,p_name=>'P703_EXC6_CHANGE hide'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC6 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC6',
'      INTO V_EXC6',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC6 != :P703_EXC6 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC6 IS NULL AND :P703_EXC6 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC6 IS NOT NULL AND :P703_EXC6 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345757974464401008)
,p_event_id=>wwv_flow_imp.id(10345757927922401007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC6_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345758088719401009)
,p_name=>'P703_EXC7_CHANGE hide'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC7 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC7',
'      INTO V_EXC7',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC7 != :P703_EXC7 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC7 IS NULL AND :P703_EXC7 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC7 IS NOT NULL AND :P703_EXC7 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345758215462401010)
,p_event_id=>wwv_flow_imp.id(10345758088719401009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC7_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345758333785401011)
,p_name=>'P703_EXC8_CHANGE hide'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC8 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC8',
'      INTO V_EXC8',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC8 != :P703_EXC8 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC8 IS NULL AND :P703_EXC8 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC8 IS NOT NULL AND :P703_EXC8 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345758376828401012)
,p_event_id=>wwv_flow_imp.id(10345758333785401011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC8_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345758932068401017)
,p_name=>'P703_EXC9_CHANGE hide'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC9 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC9',
'      INTO V_EXC9',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC9 != :P703_EXC9 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC9 IS NULL AND :P703_EXC9 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC9 IS NOT NULL AND :P703_EXC9 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345759027864401018)
,p_event_id=>wwv_flow_imp.id(10345758932068401017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC9_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345759079295401019)
,p_name=>'P703_EXC10_CHANGE hide'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC10 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC10',
'      INTO V_EXC10',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC10 != :P703_EXC10 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC10 IS NULL AND :P703_EXC10 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC10 IS NOT NULL AND :P703_EXC10 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345759163190401020)
,p_event_id=>wwv_flow_imp.id(10345759079295401019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC10_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345759302039401021)
,p_name=>'P703_EXC11_CHANGE hide'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC11 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC11',
'      INTO V_EXC11',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC11 != :P703_EXC11 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC11 IS NULL AND :P703_EXC11 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC11 IS NOT NULL AND :P703_EXC11 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345759441809401022)
,p_event_id=>wwv_flow_imp.id(10345759302039401021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC11_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345759501684401023)
,p_name=>'P703_EXC12_CHANGE hide'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC12 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC12',
'      INTO V_EXC12',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC12 != :P703_EXC12 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC12 IS NULL AND :P703_EXC12 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC12 IS NOT NULL AND :P703_EXC12 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345759622297401024)
,p_event_id=>wwv_flow_imp.id(10345759501684401023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC12_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345759761989401026)
,p_name=>'P703_EXC13_CHANGE hide'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC13 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC13',
'      INTO V_EXC13',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC13 != :P703_EXC13 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC13 IS NULL AND :P703_EXC13 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC13 IS NOT NULL AND :P703_EXC13 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345759902759401027)
,p_event_id=>wwv_flow_imp.id(10345759761989401026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC13_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345760062599401029)
,p_name=>'P703_EXC14_CHANGE hide'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC14 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC14',
'      INTO V_EXC14',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC14 != :P703_EXC14 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC14 IS NULL AND :P703_EXC14 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC14 IS NOT NULL AND :P703_EXC14 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345760179043401030)
,p_event_id=>wwv_flow_imp.id(10345760062599401029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC14_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10345760438596401032)
,p_name=>'P703_EXC15_CHANGE hide'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_EXC15 VARCHAR2(200);',
'BEGIN',
'  IF :P703_EXC_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    SELECT EXC15',
'      INTO V_EXC15',
'      FROM EDC_CRF_EXC',
'     WHERE EXC_ID = :P703_EXC_ID;',
'',
'    IF V_EXC15 != :P703_EXC15 THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC15 IS NULL AND :P703_EXC15 IS NOT NULL THEN',
'      RETURN FALSE;',
'    ELSIF V_EXC15 IS NOT NULL AND :P703_EXC15 IS NULL THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
'  END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10345760461884401033)
,p_event_id=>wwv_flow_imp.id(10345760438596401032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P703_EXC15_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345591756001039529)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EDC_CRF_EXC'
,p_attribute_02=>'EDC_CRF_EXC'
,p_attribute_03=>'P703_EXC_ID'
,p_attribute_04=>'EXC_ID'
,p_internal_uid=>10345591756001039529
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345592165343039530)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EDC_CRF_EXC'
,p_attribute_02=>'EDC_CRF_EXC'
,p_attribute_03=>'P703_EXC_ID'
,p_attribute_04=>'EXC_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>10345592165343039530
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345742578447349265)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_VISIT_STATUS'
,p_process_sql_clob=>'EDC_WORKFLOW.update_visit_status(:APP_EDC_STUDY_ID,:APP_EDC_PATIENT_VISIT_ID);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''SAVE'',''CREATE'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>10345742578447349265
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345743051621351696)
,p_process_sequence=>50
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
,p_process_when_button_id=>wwv_flow_imp.id(10345640213369155031)
,p_process_success_message=>'Submitted for Monitoring.'
,p_internal_uid=>10345743051621351696
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345744116524353847)
,p_process_sequence=>60
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
,p_process_when_button_id=>wwv_flow_imp.id(10345640609817155031)
,p_process_success_message=>'Section Monitored.'
,p_internal_uid=>10345744116524353847
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345745053980355919)
,p_process_sequence=>70
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
,p_process_when_button_id=>wwv_flow_imp.id(10345640963894155031)
,p_process_success_message=>'Section reviewed.'
,p_internal_uid=>10345745053980355919
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345745317348357945)
,p_process_sequence=>80
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
,p_process_when_button_id=>wwv_flow_imp.id(10345641388654155032)
,p_process_success_message=>'Section Locked.'
,p_internal_uid=>10345745317348357945
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345746532063359809)
,p_process_sequence=>90
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
,p_process_when_button_id=>wwv_flow_imp.id(10345641811011155032)
,p_process_success_message=>'Section unlocked.'
,p_internal_uid=>10345746532063359809
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10345746789266361905)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10345642635531155032)
,p_internal_uid=>10345746789266361905
);
wwv_flow_imp.component_end;
end;
/
