prompt --application/pages/page_00147
begin
--   Manifest
--     PAGE: 00147
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
 p_id=>147
,p_name=>'Data / Table Mapping'
,p_alias=>'DATA-TABLE-MAPPING1'
,p_step_title=>'Data / Table Mapping'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.rc-content-main {height: 400px; overflow: auto !important;}'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(716461871682038702)
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
 p_id=>wwv_flow_imp.id(716462567642038702)
,p_plug_name=>'Data Load Wizard Progress'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(716440368181038694)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(11049665688071292267)
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(716462807707038702)
,p_plug_name=>'Data / Table Mapping'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_imp.id(11045181488778407888)
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'data_load_def_id', wwv_flow_imp.id(716440105213038694))).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(716464036028038702)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(716462807707038702)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(716463788046038702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(716462807707038702)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:146:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(716463235267038702)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(716462807707038702)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(716464863254038703)
,p_branch_action=>'f?p=&APP_ID.:150:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(716464036028038702)
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''KIT_RANDOM_LIST_UPLOAD'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''N'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(716465252481038703)
,p_branch_action=>'f?p=&APP_ID.:151:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(716464036028038702)
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''KIT_RANDOM_LIST_UPLOAD'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''Y'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(716464525239038703)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(716440105213038694)
,p_attribute_02=>'P151_INSERT_COUNT'
,p_attribute_03=>'P151_UPDATE_COUNT'
,p_attribute_04=>'P151_ERROR_COUNT'
,p_attribute_05=>'P151_REVIEW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(716464036028038702)
,p_internal_uid=>716464525239038703
);
wwv_flow_imp.component_end;
end;
/
